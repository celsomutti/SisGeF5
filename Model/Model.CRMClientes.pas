unit Model.CRMClientes;

interface

uses Common.ENum, FireDAC.Comp.Client, DAO.Conexao, FireDAC.Stan.Option, System.SysUtils;

type
  TCRMClientes= class
  private
    FAcao: TAcao;
    FCPF: String;
    FCodigo: Integer;
    FDataCadastro: TDateTime;
    FNome: String;
    FConexao: TConexao;
    FCNAE: String;
    FAlias: String;
    FCRT: Integer;
    FObs: String;
    FStatus: Integer;
    FTipoDoc: String;
    FQuery: TFDQuery;

    function Inserir(): Boolean;
    function Alterar(): Boolean;
    function Excluir(): Boolean;

  public
    Constructor Create();
    property Codigo: Integer read FCodigo write FCodigo;
    property TipoDoc: String read FTipoDoc write FTipoDoc;
    property Nome: String read FNome write FNome;
    property Alias: String read FAlias write FAlias;
    property CPF: String read FCPF write FCPF;
    property CNAE: String read FCNAE write FCNAE;
    property CRT: Integer read FCRT write FCRT;
    property DataCadastro: TDateTime read FDataCadastro write FDataCadastro;
    property Status: Integer read FStatus write FStatus;
    property Obs: String read FObs write FObs;
    property Query: TFDQuery read FQuery write FQuery;
    property Acao: TAcao read FAcao write FAcao;

    function GetID(): Integer;
    function Localizar(aParam: array of variant): Boolean;
    function Gravar(): Boolean;
    procedure SetupClass(FDquery: TFDQuery);
    procedure SetupClassMem(memTable: TFDMemTable);
  end;
  const

    TABLENAME = 'crm_clientes';

    SQLINSERT = 'insert into ' + TABLENAME +
                '(cod_cliente, des_razao_social, nom_fantasia, des_tipo_doc, num_cnpj, cod_cnae, cod_crt, cod_status, ' +
                'des_observacao, dat_cadastro) ' +
                'values ' +
                '(:cod_cliente, :des_razao_social, :nom_fantasia, :des_tipo_doc, :num_cnpj, :cod_cnae, :cod_crt, :cod_status, ' +
                ':des_observacao, :dat_cadastro);';

    SQLUPDATE = 'update ' + TABLENAME + ' set ' +
                'des_razao_social = :des_razao_social, nom_fantasia = :nom_fantasia, des_tipo_doc = :des_tipo_doc, ' +
                'num_cnpj = :num_cnpj, cod_cnae = :cod_cnae, cod_crt = :cod_crt, cod_status = :cod_status, ' +
                'des_observacao = :des_observacao, dat_cadastro = :dat_cadastro ' +
                'where ' +
                'cod_cliente = :cod_cliente';

    SQLQUERY =  'select ' +
                'cod_cliente, des_razao_social, nom_fantasia, des_tipo_doc, num_cnpj, cod_cnae, cod_crt, cod_status, ' +
                'des_observacao, dat_cadastro ' +
                'from ' + TABLENAME + ' ';

implementation

{ TCRMClientes }

function TCRMClientes.Alterar: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(SQLUPDATE,
                   [FNome, FAlias, FTipoDoc, FCPF, FCNAE, FCRT, FStatus, FObs, FDataCadastro, FCodigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;


constructor TCRMClientes.Create;
begin
  Fconexao := TConexao.Create;
end;

function TCRMClientes.Excluir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where cod_cliente = :cod_cliente', [FCodigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;

end;

function TCRMClientes.GetID: Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(cod_cliente),0) + 1 from ' + TABLENAME);
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

function TCRMClientes.Gravar: Boolean;
begin
  case FAcao of
    tacIncluir: Result := Self.Inserir();
    tacAlterar: Result := Self.Alterar();
    tacExcluir: Result := Self.Excluir();
  end;
end;

function TCRMClientes.Inserir: Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FCodigo := GetId();
    FDQuery.ExecSQL(SQLINSERT,
                    [FCodigo, FNome, FAlias, FTipoDoc, FCPF, FCNAE, FCRT, FStatus, FObs, FDataCadastro]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCRMClientes.Localizar(aParam: array of variant): Boolean;
var
  sfields: String;
begin
  Result := False;
  FQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FQuery.SQL.Clear;

  FQuery.SQL.Add(SQLQUERY);
  if aParam[0] = 'CODIGO' then
  begin
    FQuery.SQL.Add('where cod_cliente = :cod_cliente');
    FQuery.ParamByName('cod_cliente').AsInteger := aParam[1];
  end
  else if aParam[0] = 'CNPJ' then
  begin
    FQuery.SQL.Add('where num_cnpj = :num_cnpj');
    FQuery.ParamByName('num_cnpj').AsString := aParam[1];
  end
  else if aParam[0] = 'NOME' then
  begin
    FQuery.SQL.Add('where des_nome_razao LIKE :des_nome_razao');
    FQuery.ParamByName('des_nome_razao').AsString := aParam[1];
  end;
  if aParam[0] = 'ALIAS' then
  begin
    FQuery.SQL.Add('where nom_fantasia LIKE :nom_fantasia');
    FQuery.ParamByName('nom_fantasia').AsString := aParam[1];
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
  if aParam[0] = 'MACRO' then
  begin
    if aParam[1] = '*' then
    begin
      sFields :=  'cod_cliente, des_razao_social, nom_fantasia, des_tipo_doc, num_cnpj, cod_cnae, cod_crt, ' +
                  'cod_status, des_observacao, dat_cadastro';
    end
    else
    begin
      sFields := aParam[1];
    end;
    FQuery.SQL.Clear;
    FQuery.SQL.Add('select !colums from !table {if !where } where !where {fi}');
    FQuery.MacroByName('colums').AsRaw := sFields;
    FQuery.MacroByName('table').AsRaw := TABLENAME;
    FQuery.MacroByName('where').AsRaw := aParam[2];
  end;
  FQuery.Open();
  if FQuery.IsEmpty then
  begin
    Exit;
  end;
  Result := True;
end;

procedure TCRMClientes.SetupClass(FDquery: TFDQuery);
begin
  FCPF := FDquery.FieldByName('num_cnpj').AsString;
  FDataCadastro := FDquery.FieldByName('dat_cadastro').AsDateTime;
  FNome := FDquery.FieldByName('des_razao_social').AsString;
  FCNAE := FDquery.FieldByName('cod_cnae').AsString;
  FAlias := FDquery.FieldByName('nom_fantasia').AsString;
  FCRT := FDquery.FieldByName('cod_crt').AsInteger;
  FObs := FDquery.FieldByName('des_observacao').AsString;
  FStatus := FDquery.FieldByName('cod_status').AsInteger;
  FCodigo := FDquery.FieldByName('cod_cliente').AsInteger;
  FTipoDoc := FDquery.FieldByName('des_tipo_doc').AsString;
end;


procedure TCRMClientes.SetupClassMem(memTable: TFDMemTable);
begin
  FCPF := memTable.FieldByName('num_cnpj').AsString;
  FDataCadastro := memTable.FieldByName('dat_cadastro').AsDateTime;
  FNome := memTable.FieldByName('des_razao_social').AsString;
  FCNAE := memTable.FieldByName('cod_cnae').AsString;
  FAlias := memTable.FieldByName('nom_fantasia').AsString;
  FCRT := memTable.FieldByName('cod_crt').AsInteger;
  FObs := memTable.FieldByName('des_observacao').AsString;
  FStatus := memTable.FieldByName('cod_status').AsInteger;
  FCodigo := memTable.FieldByName('cod_cliente').AsInteger;
  FTipoDoc := memTable.FieldByName('des_tipo_doc').AsString;
end;

End.
