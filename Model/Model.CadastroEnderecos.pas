unit Model.CadastroEnderecos;

interface

uses Common.ENum, FireDAC.Comp.Client, Dialogs, Control.Sistema, DAO.Conexao, System.SysUtils, Data.DB;

  type
    TCadastroEnderecos = class
    private
      FID: Integer;
      FTipo: String;
      FCEP: String;
      FLogradouro: String;
      FNumero: String;
      FComplemento: String;
      FBairro: String;
      FCidade: String;
      FUF: String;
      FAcao: TAcao;
      Fconexao : TConexao;
      FQuery: TFDQuery;

      function Insert(): Boolean;
      function Update(): Boolean;
      function Delete(): Boolean;

    public
      property ID: Integer read FID write FID;
      property Tipo: String read FTipo write FTipo;
      property CEP: String read FCEP write FCEP;
      property Logradouro: String read FLogradouro write FLogradouro;
      property Numero: String read FNumero write FNumero;
      property Complemento: String read FComplemento write FComplemento;
      property Bairro: String read FBairro write FBairro;
      property Cidade: String read FCidade write FCidade;
      property UF: String read FUF write FUF;
      property Query: TFDQuery read FQuery write FQuery;
      property Acao: TAcao read FAcao write FAcao;

      constructor Create();
      function Localizar(aParam: array of variant): Boolean;
      function Gravar(): Boolean;
      function SaveBatch(memTable: TFDMemTable): Boolean;
      function SetupClass(FDQuery: TFDQuery): boolean;
      function ClearClass(): boolean;
    end;
const
  TABLENAME = 'cadastro_enderecos';

implementation


{ TEnderecosEmpresa }

uses Common.Utils;

function TCadastroEnderecos.ClearClass: boolean;
begin
  Result := False;
  FID := 0;
  FTipo := '';
  FCEP := '';
  FLogradouro := '';
  FNumero := '';
  FComplemento := '';
  FBairro := '';
  FCidade := '';
  FUF := '';
end;

constructor TCadastroEnderecos.Create;
begin
  FConexao := TConexao.Create;
end;

function TCadastroEnderecos.Delete: Boolean;
var
  FDQuery: TFDQuery;
  sSQL: String;
begin
  try
    Result := False;
    sSQL := '';
    FDQuery := FConexao.ReturnQuery();
    sSQL := 'delete from ' + TABLENAME + ' ' +
            'where id_cadastro = :pIid_cadastro and ' +
            'des_tipo_endereco = :pdes_tipo_endereco;';
    FDQuery.ExecSQL(sSQL,[Self.ID, Self.FTipo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;


function TCadastroEnderecos.Gravar: Boolean;
begin
  case FAcao of
    tacIncluir: Result := Self.Insert();
    tacAlterar: Result := Self.Update();
    tacExcluir: Result := Self.Delete();
  end;
end;

function TCadastroEnderecos.Insert: Boolean;
var
  sSQL: String;
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    sSQL := 'insert into ' + TABLENAME + ' (' +
    'id_cadastro, des_tipo_endereco, ' +
    'num_cep, des_logradouro, num_endereco, des_complemento, nom_bairro, '+
    'nom_cidade, uf_endereco) ' +
    'values (' +
    ':pid_cadastro, :pseq_endereco, :pdes_tipo_endereco, ' +
    ':pnum_cep, :pdes_logradouro, :pnum_endereco, :pes_complemento, ' +
    ':pnom_bairro, nom_cidade, uf_endereco);';
    FDQuery.ExecSQL(sSQL,[Self.ID, Self.Tipo, Self.CEP,
                    Self.Logradouro, Self.Numero, Self.Complemento,
                    Self.Bairro, Self.Cidade, Self.UF]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;end;

function TCadastroEnderecos.Localizar(aParam: array of variant): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    if Length(aParam) < 2 then Exit;
    FDQuery.SQL.Clear;

    FDQuery.SQL.Add('select id_cadastro, cod_tipo_cadastro, des_tipo_endereco, ' +
                    'num_cep, des_logradouro, num_logradouro, des_complemento, ' +
                    'nom_bairro, nom_cidade, uf_estado from ' + TABLENAME);
    if aParam[0] = 'ID' then
    begin
      FDQuery.SQL.Add('where id_cadastro = :id_cadastro and ' +
                      'cod_tipo_cadastro = :cod_tipo_cadastro');
      FDQuery.ParamByName('id_cadastro').AsInteger := aParam[1];
      FDQuery.ParamByName('cod_tipo_cadastro').AsInteger := aParam[2];
    end;
    if aParam[0] = 'TIPO' then
    begin
      FDQuery.SQL.Add('where id_cadastro = :id_cadastro and  cod_tipo_cadastro = :cod_tipo_cadastro and ' +
                      'des_tipo_endereco = :des_tipo_endereco');
      FDQuery.ParamByName('id_cadastro').AsInteger := aParam[1];
      FDQuery.ParamByName('cod_tipo_cadastro').AsInteger := aParam[2];
      FDQuery.ParamByName('des_tipo_endereco').AsString := aParam[3];
    end;
    if aParam[0] = 'CEP' then
    begin
      FDQuery.SQL.Add('where num_cep like :num_cep');
      FDQuery.ParamByName('NUM_CEP').AsString := aParam[1];
    end;
    if aParam[0] = 'ENDERECO' then
    begin
      FDQuery.SQL.Add('where des_logradouro like :des_logradouro');
      FDQuery.ParamByName('des_logradouro').AsString := aParam[1];
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
    if not FDQuery.IsEmpty then
    begin
      FQuery := FDQuery;
    end;
    Result := True;
  finally
    FDquery.Connection.Close;
    FDquery.Free;
  end;
end;

function TCadastroEnderecos.SaveBatch(memTable: TFDMemTable): Boolean;
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
    Self.Tipo := memTable.FieldByName('des_tipo_endereco').AsString;
    Self.CEP := memTable.FieldByName('num_cep.AsString').AsString;
    Self.Logradouro := memTable.FieldByName('des_logradouro').AsString;
    Self.Numero := memTable.FieldByName('num_logradouro').AsString;
    Self.Complemento := memTable.FieldByName('des_complemento').AsString;
    Self.Bairro := memTable.FieldByName('nom_bairro').AsString;
    Self.Cidade := memTable.FieldByName('nom_cidade').AsString;
    Self.UF := memTable.FieldByName('uf_estado').AsString;
    Self.Acao := tacIncluir;
    if not Self.Gravar then
    begin
      Exit;
    end;
    memTable.Next;
  end;
  Result := True;
end;

function TCadastroEnderecos.SetupClass(FDQuery: TFDQuery): boolean;
begin
  Result := False;
  Self.Tipo := FDQuery.FieldByName('des_tipo_endereco').AsString;
  Self.CEP := FDQuery.FieldByName('num_cep.AsString').AsString;
  Self.Logradouro := FDQuery.FieldByName('des_logradouro').AsString;
  Self.Numero := FDQuery.FieldByName('num_logradouro').AsString;
  Self.Complemento := FDQuery.FieldByName('des_complemento').AsString;
  Self.Bairro := FDQuery.FieldByName('nom_bairro').AsString;
  Self.Cidade := FDQuery.FieldByName('nom_cidade').AsString;
  Self.UF := FDQuery.FieldByName('uf_estado').AsString;
  Result := True;
end;

function TCadastroEnderecos.Update: Boolean;
var
  sSQL: String;
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    sSQL := 'update '  + TABLENAME + ' set ' +
    'num_cep = :pnum_cep, des_logradouro := :pdes_logradouro, num_logradouro = :pnum_logradouro, ' +
    'des_complemento = :pdes_complemento, nom_bairro = :pnom_bairro, nom_cidade = :pnom_cidade, uf_estado = :puf_estado ' +
    'where id_cadastro = :pid_cadastro and des_tipo_endereco = :pdes_tipo_endereco;';
    FDQuery.ExecSQL(sSQL,[Self.CEP, Self.Logradouro, Self.Numero, Self.Complemento, Self.Bairro, Self.Cidade, Self.UF, Self.ID,
                          Self.Tipo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

end.
