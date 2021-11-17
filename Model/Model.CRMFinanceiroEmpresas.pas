unit Model.CRMFinanceiroEmpresas;

interface

uses Common.ENum, FireDAC.Comp.Client, System.SysUtils, DAO.Conexao;

type
  TCRMFinanceiroEmpresas = class
  private
    FID: Integer;
    FCadastro: Integer;
    FBanco: String;
    FAgencia: String;
    FConta: String;
    FConexao: TConexao;
    FAcao: TAcao;
    FQuery: TFDQuery;



    function Insert(): Boolean;
    function Update(): Boolean;
    function Delete(): Boolean;

  public
    property ID: Integer read FID write FID;
    property Cadastro: Integer read FCadastro write FCadastro;
    property Banco: String read FBanco write FBanco;
    property Agencia: String read FAgencia write FAgencia;
    property Conta: String read FConta write FConta;
    property Query: TFDQuery read FQuery write FQuery;
    property Acao: TAcao read FAcao write FAcao;


    constructor Create();
    function Localizar(aParam: array of variant): boolean;
    function Gravar(): Boolean;
    function ClearClass: boolean;
    function SaveBatch(memTable: TFDMemTable): Boolean;
    function SetupClass(FDQuery: TFDQuery): Boolean;

  end;

  const

  TABLENAME = 'crm_empresas_financeiro';

  SQLSELECT = 'select id_financeiro, cod_empresa, cod_banco, cod_agencia, num_conta ' +
              'from ' + TABLENAME + ' ';

  SQLINSERT = 'insert into ' + TABLENAME +
              '(id_financeiro, cod_empresa, cod_banco, cod_agencia, num_conta) ' +
              'values ' +
              '(:id_financeiro, :cod_empresa, :cod_banco, :cod_agencia, :num_conta);';

  SQLUPDATE = 'update ' + TABLENAME + ' set ' +
              'cod_empresa = :cod_empresa, cod_banco = :cod_banco, cod_agencia = :cod_agencia, num_conta = :num_conta ' +
              'where ' +
              'id_financeiro = :id_financeiro;';

implementation

{ TCRMFinanceiroEmpresas }


function TCRMFinanceiroEmpresas.ClearClass: boolean;
begin
    FID := 0;
    FCadastro := 0;
    FBanco := '';
    FAgencia := '';
    FConta := '';
end;

constructor TCRMFinanceiroEmpresas.Create;
begin
  FConexao := TConexao.Create;
end;

function TCRMFinanceiroEmpresas.Delete: Boolean;
var
  sSQL: String;
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    sSQL := 'delete from ' + TABLENAME + ' ' +
            'where cod_empresa = :pcod_empresa;';
    FDQuery.ExecSQL(sSQL,[FCadastro]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCRMFinanceiroEmpresas.Gravar: Boolean;
begin
  case FAcao of
    tacIncluir: Result := Insert();
    tacAlterar: Result := Update();
    tacExcluir: Result := Delete();
  end;
end;

function TCRMFinanceiroEmpresas.Insert: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL(SQLINSERT, [FID,
                                FCadastro,
                                FBanco,
                                FAgencia,
                                FConta]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;end;

function TCRMFinanceiroEmpresas.Localizar(aParam: array of variant): boolean;
begin
  Result := False;
  FQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FQuery.SQL.Clear;

  FQuery.SQL.Add(SQLSELECT);
  if aParam[0] = 'EMPRESA' then
  begin
    FQuery.SQL.Add('where cod_empresa = :cod_empresa');
    FQuery.ParamByName('cod_empresa').AsInteger := aParam[1];
  end;
  if aParam[0] = 'ID' then
  begin
    FQuery.SQL.Add('where id_financeiro = :id_financeiro');
    FQuery.ParamByName('id_financeiro').AsInteger := aParam[1];
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
    FQuery.Close;
    FQuery.Connection.Connected := False;
    Exit;
  end;
  Result := True;
end;

function TCRMFinanceiroEmpresas.SaveBatch(memTable: TFDMemTable): Boolean;
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
    FCadastro := memTable.FieldByName('cod_empresa').AsInteger;
    FBanco := memTable.FieldByName('cod_banco').AsString;
    FAgencia := memTable.FieldByName('cod_agencia').AsString;
    FConta := memTable.FieldByName('num_conta').AsString;
    Self.Acao := tacIncluir;
    if not Self.Gravar then
    begin
      Exit;
    end;
    memTable.Next;
  end;
  Result := True;
end;

function TCRMFinanceiroEmpresas.SetupClass(FDQuery: TFDQuery): Boolean;
begin
  FId :=  FDQuery.FieldByName('id_financeiro').AsInteger;
  FCadastro := FDQuery.FieldByName('cod_empresa').AsInteger;
  FBanco := FDQuery.FieldByName('cod_banco').AsString;
  FAgencia := FDQuery.FieldByName('cod_agencia').AsString;
  FConta := FDQuery.FieldByName('num_conta').AsString;
end;

function TCRMFinanceiroEmpresas.Update: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL(SQLUPDATE, [FCadastro,
                                FBanco,
                                FAgencia,
                                FConta,
                                FID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

end.
