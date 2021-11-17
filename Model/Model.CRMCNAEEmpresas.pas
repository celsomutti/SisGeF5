unit Model.CRMCNAEEmpresas;

interface

uses Common.ENum, FireDAC.Comp.Client, System.SysUtils, DAO.Conexao;

type
  TCRMCNAEEmpresas = class
  private
    FCNAE: string;
    FDescricao: string;
    FID: integer;
    FCadastro: integer;
    FTipo: integer;
    FAcao: TAcao;
    FConexao : TConexao;
    FQuery: TFDQuery;

    function Insert(): Boolean;
    function Update(): Boolean;
    function Delete(): Boolean;

  public
    property ID: integer read FID write FID;
    property Cadastro: integer read FCadastro write FCadastro;
    property Tipo: integer read FTipo write FTipo;
    property CNAE: string read FCNAE write FCNAE;
    property Descricao: string read FDescricao write FDescricao;
    property Query: TFDQuery read FQuery write FQuery;
    property Acao: TAcao read FAcao write FAcao;

    constructor Create();
    function Localizar(aParam: array of variant): Boolean;
    function Gravar(): Boolean;
    function SaveBatch(memTable: TFDMemTable): Boolean;
    function SetupClass(FDQuery: TFDQuery): Boolean;
    function ClearClass(): Boolean;

  end;

  const

  TABLENAME = 'crm_empresas_cnae';

  SQLSELECT = 'select id_cnae, cod_empresa, cod_tipo, cod_cnae, des_cnae ' +
              'from ' + TABLENAME + ' ';

  SQLINSERT = 'insert into ' + TABLENAME +
              '(id_cnae, cod_empresa, cod_tipo, cod_cnae, des_cnae) ' +
              'values ' +
              '(:id_cnae, :cod_empresa, :cod_tipo, :cod_cnae, :des_cnae);';

  SQLUPDATE = 'update ' + TABLENAME + ' set ' +
              'cod_empresa = :cod_empresa, cod_tipo = :cod_tipo, cod_cnae = :cod_cnae, des_cnae = :des_cnae ' +
              'where ' +
              'id_cnae = :id_cnae;';

implementation

{ TCRMCNAEEmpresas }

function TCRMCNAEEmpresas.ClearClass: Boolean;
begin
  Result := False;
  FCNAE := '';
  FDescricao := '';
  FID := 0;
  FCadastro := 0;
  FTipo := 0;
  Result := True;
end;

constructor TCRMCNAEEmpresas.Create;
begin
  FConexao := TConexao.Create;
end;

function TCRMCNAEEmpresas.Delete: Boolean;
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

function TCRMCNAEEmpresas.Gravar: Boolean;
begin
  case FAcao of
    tacIncluir: Result := Self.Insert();
    tacAlterar: Result := Self.Update();
    tacExcluir: Result := Self.Delete();
  end;
end;

function TCRMCNAEEmpresas.Insert: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL(SQLINSERT, [FID,
                                FCadastro,
                                FTipo,
                                FCNAE,
                                FDescricao]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCRMCNAEEmpresas.Localizar(aParam: array of variant): Boolean;
begin
  Result := False;
  FQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FQuery.SQL.Clear;

  FQuery.SQL.Add(SQLSELECT);
  if aParam[0] = 'CODIGO' then
  begin
    FQuery.SQL.Add('where cod_cnae = :cod_cnae');
    FQuery.ParamByName('cod_cnae').AsString := aParam[1];
  end;
  if aParam[0] = 'EMPRESA' then
  begin
    FQuery.SQL.Add('where cod_empresa = :cod_empresa');
    FQuery.ParamByName('cod_empresa').AsInteger := aParam[1];
  end;
  if aParam[0] = 'ID' then
  begin
    FQuery.SQL.Add('where id_cnae = :id_cnae');
    FQuery.ParamByName('id_cnae').AsInteger := aParam[1];
  end;
  if aParam[0] = 'DESCRICAO' then
  begin
    FQuery.SQL.Add('where des_cnae like :des_cnae');
    FQuery.ParamByName('des_cnae').AsString := aParam[1];
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

function TCRMCNAEEmpresas.SaveBatch(memTable: TFDMemTable): Boolean;
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
    FDescricao := memTable.FieldByName('des_contato').AsString;
    FCNAE := memTable.FieldByName('num_telefone').AsString;
    FTipo := memTable.FieldByName('cod_tipo').AsInteger;
    Self.Acao := tacIncluir;
    if not Self.Gravar then
    begin
      Exit;
    end;
    memTable.Next;
  end;
  Result := True;
end;

function TCRMCNAEEmpresas.SetupClass(FDQuery: TFDQuery): Boolean;
begin
  FCadastro := FDQuery.FieldByName('cod_empresa').AsInteger;
  FDescricao := FDQuery.FieldByName('des_contato').AsString;
  FCNAE := FDQuery.FieldByName('num_telefone').AsString;
  FTipo := FDQuery.FieldByName('cod_tipo').AsInteger;
  FId := FDQuery.FieldByName('id_cnae').AsInteger;
end;

function TCRMCNAEEmpresas.Update: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL(SQLUPDATE, [FCadastro,
                                FTipo,
                                FCNAE,
                                FDescricao,
                                FId]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

end.
