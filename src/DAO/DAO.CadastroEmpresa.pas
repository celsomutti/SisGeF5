unit DAO.CadastroEmpresa;

interface

uses FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Control.Sistema, Model.CadastroEmpresa;

type
  TCadastroEmpresaDAO = class
  private
    FConexao : TConexao;
  public
    constructor Create();
    function GetID(): Integer;
    function Insert(aCadastros: TCadastroEmpresa): Boolean;
    function Update(aCadastros: TCadastroEmpresa): Boolean;
    function Delete(aCadastros: TCadastroEmpresa): Boolean;
    function EmpresaExiste(aCadastros: TCadastroEmpresa): Boolean;
    function Localizar(aParam: Array of variant): TFDQuery;
  end;
const
  TABLENAME = 'cadastro_empresa';

implementation

function TCadastroEmpresaDAO.Insert(aCadastros: TCadastroEmpresa): Boolean;
var
  sSQL: String;
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    aCadastros.ID := GetID();
    sSQL := 'INSERT INTO ' + TABLENAME + '('+
    'ID_EMPRESA, NUM_CNPJ_MATRIZ, DES_TIPO_DOC, NOM_RAZAO_SOCIAL, NOM_FANTASIA, NUM_SUFRAMA, NUM_CRT, COD_CNAE, DOM_STATUS, ' +
    'DES_LOG) ' +
    'VALUES (' +
    ':pID_EMPRESA, :pNUM_CNPJ_MATRIZ, :pDES_TIPO_DOC, :pNOM_RAZAO_SOCIAL, :pNOM_FANTASIA, :pNUM_SUFRAMA, :pNUM_CRT, :pCOD_CNAE, ' +
    ':pDOM_STATUS, :pDES_LOG);';
    FDQuery.ExecSQL(sSQL,[aCadastros.ID,  aCadastros.CPFCNPJ, aCadastros.TipoDoc, aCadastros.Nome, aCadastros.Alias,
                        aCadastros.SUFRAMA, aCadastros.CRT, aCadastros.CNAE, aCadastros.Status, aCadastros.Log]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCadastroEmpresaDAO.Localizar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;

  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'ID' then
  begin
    FDQuery.SQL.Add('WHERE ID_EMPRESA = :ID_EMPRESA');
    FDQuery.ParamByName('ID_EMPRESA').AsInteger := aParam[1];
  end;
  if aParam[0] = 'CNPJ' then
  begin
    FDQuery.SQL.Add('WHERE NUM_CNPJ_MATRIZ = :NUM_CNPJ_MATRIZ');
    FDQuery.ParamByName('NUM_CNPJ_MATRIZ').AsString := aParam[1];
  end;
  if aParam[0] = 'NOME' then
  begin
    FDQuery.SQL.Add('WHERE NOM_NOME_RAZAO LIKE :NOM_NOME_RAZAO');
    FDQuery.ParamByName('NOM_NOME_RAZAO').AsString := aParam[1];
  end;
  if aParam[0] = 'ALIAS' then
  begin
    FDQuery.SQL.Add('WHERE NOM_FANTASIA LIKE :NOM_FANTASIA');
    FDQuery.ParamByName('NOM_FANTASIA').AsString := aParam[1];
  end;
  if aParam[0] = 'FILTRO' then
  begin
    FDQuery.SQL.Add('WHERE ' + aParam[1]);
  end;
  if aParam[0] = 'APOIO' then
  begin
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT  ' + aParam[1] + ' FROM ' + TABLENAME + ' ' + aParam[2]);
  end;
  FDQuery.Open();
  Result := FDQuery;
end;

function TCadastroEmpresaDAO.Update(aCadastros: TCadastroEmpresa): Boolean;
var
  sSQL: String;
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    sSQL := 'UPDATE ' + TABLENAME  + ' SET ' +
    'NUM_CNPJ_MATRIZ = :pNUM_CNPJ_MATRIZ, DES_TIPO_DOC = :pDES_TIPO_DOC, NOM_RAZAO_SOCIAL = :pNOM_RAZAO_SOCIAL, ' +
    'NOM_FANTASIA = :pNOM_FANTASIA, NUM_SUFRAMA = :pNUM_SUFRAMA, NUM_CRT = :pNUM_CRT, COD_CNAE = :pCOD_CNAE, DOM_STATUS = :pDOM_STATUS, ' +
    'DES_LOG = :pDES_LOG ' +
    'WHERE ID_EMPRESA = :pID_EMPRESA;';
    FDQuery.ExecSQL(sSQL,[aCadastros.CPFCNPJ, aCadastros.TipoDoc, aCadastros.Nome, aCadastros.Alias,
                        aCadastros.SUFRAMA, aCadastros.CRT, aCadastros.CNAE, aCadastros.Status, aCadastros.Log, aCadastros.ID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TCadastroEmpresaDAO.Create;
begin
  FConexao := TConexao.Create;
end;

function TCadastroEmpresaDAO.Delete(aCadastros: TCadastroEmpresa): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where ID_EMPRESA = :pID_EMPRESA', [ACadastros.ID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;


function TCadastroEmpresaDAO.EmpresaExiste(aCadastros: TCadastroEmpresa): Boolean;
var
  sSQL: String;
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    sSQL := 'select * ' + TABLENAME  +
    'WHERE num_cnpj_matriz = :pnum_cnpj_matriz;';
    FDQuery.ParamByName('pnum_cnpj_matriz').AsString := aCadastros.CPFCNPJ;
    FDQuery.Open;
    if FDQuery.IsEmpty then Exit;
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCadastroEmpresaDAO.GetID: Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(ID_EMPRESA),0) + 1 from ' + TABLENAME);
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

end.
