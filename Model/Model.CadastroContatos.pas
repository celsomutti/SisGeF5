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
      FQuery: TFDQuery;

      function Insert(): Boolean;
      function Update(): Boolean;
      function Delete(): Boolean;

    public
      property ID: Integer read FID write FID;
      property Sequencia: Integer read FSequencia write FSequencia;
      property Descricao: String read FDescricao write FDescricao;
      property Telefone: String read FTelefone write FTelefone;
      property EMail: String read FEMail write FEMail;
      property Query: TFDQuery read FQuery write FQuery;
      property Acao: TAcao read FAcao write FAcao;

      constructor Create();
      function GetID(iID: Integer): Integer;
      function Localizar(aParam: array of variant): Boolean;
      function Gravar(): Boolean;
      function SaveBatch(memTable: TFDMemTable): Boolean;
      function SetupClass(FDQuery: TFDQuery): Boolean;
      function ClearClass(): Boolean;
    end;
const
  TABLENAME = 'tbcontatosentregadores';

implementation

{ TCadastroContatos }

function TCadastroContatos.ClearClass: Boolean;
begin
  Result := False;
  FID := 0;
  FSequencia := 0;
  FDescricao := '';
  FTelefone := '';
  FEMail := '';
  Result := True;
end;

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
              'where cod_cadastro = :pcod_cadastro;';
      FDQuery.ExecSQL(sSQL,[Self.ID]);
    end
    else
    begin
      sSQL := 'delete from ' + TABLENAME + ' ' +
              'where cod_cadastro = :pcod_cadastro and seq_contato = :seq_contato;';
      FDQuery.ExecSQL(sSQL,[Self.ID, Self.Sequencia]);
    end;
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCadastroContatos.GetID(iID: Integer): Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(seq_contato),0) + 1 from ' + TABLENAME + ' where cod_entregador = ' + iID.toString);
    Result := FDQuery.Fields[0].AsInteger;
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
    Self.Sequencia := GetID(Self.ID);
    sSQL := 'insert into ' + TABLENAME + '(' +
            'cod_entregador, seq_contato, des_contato, num_telefone, des_email) ' +
            'values (' +
            ':cod_entregador, :seq_contato, :des_contato, :num_telefone, :des_email);';
    FDQuery.ExecSQL(sSQL,[Self.ID, Self.Sequencia, Self.Descricao, Self.Telefone, Self.EMail]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCadastroContatos.Localizar(aParam: array of variant): Boolean;
begin
  Result := False;
  FQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FQuery.SQL.Clear;

  FQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'ID' then
  begin
    FQuery.SQL.Add('whew cod_entregador = :cod_entregador');
    FQuery.ParamByName('cod_entregador').AsInteger := aParam[1];
  end;
  if aParam[0] = 'SEQUENCIA' then
  begin
    FQuery.SQL.Add('where cod_entregador = :cod_entregador and seq_contato = :seq_contato');
    FQuery.ParamByName('id_cadastro').AsInteger := aParam[1];
    FQuery.ParamByName('seq_contato').AsInteger := aParam[2];
  end;
  if aParam[0] = 'DESCRICAO' then
  begin
    FQuery.SQL.Add('where des_contato like :des_contato');
    FQuery.ParamByName('des_contato').AsString := aParam[1];
  end;
  if aParam[0] = 'TELEFONE' then
  begin
    FQuery.SQL.Add('where num_telefone like :num_telefone');
    FQuery.ParamByName('num_telefone').AsString := aParam[1];
  end;
  if aParam[0] = 'EMAIL' then
  begin
    FQuery.SQL.Add('where des_email like :des_email');
    FQuery.ParamByName('des_email').AsString := aParam[1];
  end;
  if aParam[0] = 'FILTRO' then
  begin
    FQuery.SQL.Add('where ' + aParam[1]);
  end;
  if aParam[0] = 'APOIO' then
  begin
    FQuery.SQL.Clear;
    FQuery.SQL.Add('select  ' + aParam[1] + ' from ' + TABLENAME + ' ' + aParam[2]);
  end;
  FQuery.Open();
  if Fquery.IsEmpty then
  begin
    Exit;
  end;
  Result := True;
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
    Self.Sequencia := GetID(Self.ID);
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

function TCadastroContatos.SetupClass(FDQuery: TFDQuery): Boolean;
begin
  Result := False;
  FID := FDQuery.FieldByName('cod_cadastro').AsInteger;
  FSequencia := FDQuery.FieldByName('seq_contato').AsInteger;
  FDescricao := FDQuery.FieldByName('des_contato').AsString;
  FTelefone := FDQuery.FieldByName('des_telefone').AsString;
  FEMail := FDQuery.FieldByName('des_email').AsString;
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
            'where cod_cadastro = :pcod_cadastro and seq_contato = :pseq_contato;';
    FDQuery.ExecSQL(sSQL,[Self.Descricao, Self.Telefone, Self.EMail, Self.ID,Self.Sequencia]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

end.
