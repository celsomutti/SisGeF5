unit Model.CadastroContatos;

interface

uses Common.ENum, FireDAC.Comp.Client, System.SysUtils, DAO.Conexao;

  type
    TCadastroContatos = class
    private
      FID: Integer;
      FSequencia: Integer;
      FDescricao: String;
      FTelefone: String;
      FEMail: String;
      FAcao: TAcao;
      FConexao : TConexao;
      FTipoCadastro: Integer;

      function Insert(): Boolean;
      function Update(): Boolean;
      function Delete(): Boolean;

    public
      property ID: Integer read FID write FID;
      property TipoCadastro: Integer read FTipoCadastro write FTipoCadastro;
      property Sequencia: Integer read FSequencia write FSequencia;
      property Descricao: String read FDescricao write FDescricao;
      property Telefone: String read FTelefone write FTelefone;
      property EMail: String read FEMail write FEMail;
      property Acao: TAcao read FAcao write FAcao;

      constructor Create();
      function GetID(iID: Integer; iTipo: Integer ): Integer;
      function Localizar(aParam: array of variant): TFDQuery;
      function Gravar(): Boolean;
      function SaveBatch(memTable: TFDMemTable): Boolean;
    end;
const
  TABLENAME = 'cadastro_contatos';

implementation

{ TCadastroContatos }

constructor TCadastroContatos.Create;
begin
  FConexao := TConexao.Create;
end;

function TCadastroContatos.Delete: Boolean;
var
  sSQL: String;
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    if Self.Sequencia = -1 then
    begin
      sSQL := 'delete drom ' + TABLENAME + ' ' +
              'where id_cadastro = :pid_cadastro and cod_tipo_cadastro = :cod_tipo_cadastro;';
      FDQuery.ExecSQL(sSQL,[Self.ID]);
    end
    else
    begin
      sSQL := 'delete from ' + TABLENAME + ' ' +
              'where id_cadastro = :pid_cadastro and cod_tipo_cadastro = :cod_tipo_cadastro and seq_contato = :seq_contato;';
      FDQuery.ExecSQL(sSQL,[Self.ID, Self.Sequencia]);
    end;
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCadastroContatos.GetID(iID: Integer; iTipo: Integer): Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(seq_contato),0) + 1 from ' + TABLENAME + ' where id_cadastro = ' + iID.toString +
                 'and cod_tipo_cadastro = ' +  iTipo.toString);
    try
      Result := FDQuery.Fields[0].AsInteger;
    finally
      FDQuery.Close;
    end;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCadastroContatos.Gravar: Boolean;
begin
  case FAcao of
    tacIncluir: Result := Self.Insert();
    tacAlterar: Result := Self.Update();
    tacExcluir: Result := Self.Delete();
  end;
end;

function TCadastroContatos.Insert: Boolean;
var
  sSQL: String;
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    Self.Sequencia := GetID(Self.ID, Self.TipoCadastro);
    sSQL := 'insert into ' + TABLENAME + '(' +
            'id_cadastro, cod_tipo_cadastro, seq_contato, des_contato, des_telefone, des_email) ' +
            'values (' +
            ':id_cadastro, :cod_tipo_cadastro, :seq_contato, :des_contato, :des_telefone, :des_email);';
    FDQuery.ExecSQL(sSQL,[Self.ID, Self.TipoCadastro, Self.Sequencia, Self.Descricao, Self.Telefone, Self.EMail]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCadastroContatos.Localizar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;

  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'ID' then
  begin
    FDQuery.SQL.Add('whew id_cadastro = :id_cadastro and cod_tipo_cadastro = :cod_tipo_cadastro');
    FDQuery.ParamByName('id_cadastro').AsInteger := aParam[1];
    FDQuery.ParamByName('cod_tipo_cadastro').AsInteger := aParam[2];
  end;
  if aParam[0] = 'SEQUENCIA' then
  begin
    FDQuery.SQL.Add('where id_cadastro = :id_cadastro and cod_tipo_cadastro = :cod_tipo_cadastro and seq_contato = :seq_contato');
    FDQuery.ParamByName('id_cadastro').AsInteger := aParam[1];
    FDQuery.ParamByName('cod_tipo_cadastro').AsInteger := aParam[2];
    FDQuery.ParamByName('seq_contato').AsInteger := aParam[3];
  end;
  if aParam[0] = 'DESCRICAO' then
  begin
    FDQuery.SQL.Add('where des_contato like :des_contato');
    FDQuery.ParamByName('des_contato').AsString := aParam[1];
  end;
  if aParam[0] = 'TELEFONE' then
  begin
    FDQuery.SQL.Add('where num_telefone like :num_telefone');
    FDQuery.ParamByName('num_telefone').AsString := aParam[1];
  end;
  if aParam[0] = 'EMAIL' then
  begin
    FDQuery.SQL.Add('where des_email like :des_email');
    FDQuery.ParamByName('des_email').AsString := aParam[1];
  end;
  if aParam[0] = 'FILTRO' then
  begin
    FDQuery.SQL.Add('where ' + aParam[1]);
  end;
  if aParam[0] = 'APOIO' then
  begin
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('select  ' + aParam[1] + ' from ' + TABLENAME + ' ' + aParam[2]);
  end;
  FDQuery.Open();
  Result := FDQuery;
end;

function TCadastroContatos.SaveBatch(memTable: TFDMemTable): Boolean;
begin
  Result := False;
  Self.Acao := tacExcluir;
  if not Self.Gravar then
  begin
    Exit;
  end;
  memTable.First;
  while not memTable.Eof do
  begin
    Self.Sequencia := GetID(Self.ID, Self.TipoCadastro);
    Self.TipoCadastro := memTable.FieldByName('cod_tipo_cadastro').AsInteger;
    Self.Descricao := memTable.FieldByName('des_contato').AsString;
    Self.Telefone := memTable.FieldByName('num_telefone').AsString;
    Self.EMail := memTable.FieldByName('des_logradouro').AsString;
    Self.Acao := tacIncluir;
    if not Self.Gravar then
    begin
      Exit;
    end;
    memTable.Next;
  end;
  Result := True;
end;

function TCadastroContatos.Update: Boolean;
var
  sSQL: String;
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    sSQL := 'update ' + TABLENAME + ' set ' +
            'des_contato = :pdes_contato,num_telefone = :pnum_telefone, des_email = :pdes_email ' +
            'where id_cadastro = :pid_cadastro and cod_tipo_cadastro = :cod_tipo_cadastro and seq_contato = :pseq_contato;';
    FDQuery.ExecSQL(sSQL,[Self.Descricao, Self.Telefone, Self.EMail, Self.ID, Self.TipoCadastro,Self.Sequencia]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

end.
