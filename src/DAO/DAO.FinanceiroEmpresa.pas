unit DAO.FinanceiroEmpresa;

interface

uses FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Model.FinanceiroEmpresa;

type
  TFinanceiroEmpresaDAO = class
  private
    FConexao: TConexao;
  public
    constructor Create();
    function GetID(iID: Integer): Integer;
    function Insert(aFinanceiros: TFinanceiroEmpresa): Boolean;
    function Update(aFinanceiros: TFinanceiroEmpresa): Boolean;
    function Delete(aFinanceiros: TFinanceiroEmpresa): Boolean;
    function Localizar(aParam: Array of variant): TFDQuery;
  end;
const
  TABLENAME = 'cadastro_financeiro_empresa';

implementation

function TFinanceiroEmpresaDAO.Insert(aFinanceiros: TFinanceiroEmpresa): Boolean;
var
  sSQL: String;
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    aFinanceiros.Sequencia := GetID(aFinanceiros.ID);
    sSQL := 'INSERT INTO ' + TABLENAME + '(ID_EMPRESA, SEQ_FINANCEIRO, DES_TIPO_CONTA, COD_BANCO, ' +
            'NUM_AGENCIA, NUM_CONTA, COD_OPERACAO) ' +
    'VALUES (:pID_EMPRESA, :pSEQ_FINANCEIRO, :pDES_TIPO_CONTA, :pCOD_BANCO, :pNUM_AGENCIA, ' +
            ':pNUM_CONTA, :pCOD_OPERACAO);';
    FDQuery.ExecSQL(sSQL,[aFinanceiros.ID, aFinanceiros.Sequencia, aFinanceiros.TipoConta,
                        aFinanceiros.Banco, aFinanceiros.Agencia, aFinanceiros.Conta, aFinanceiros.Operacao]);
    Result := True;
  finally
    FDQuery.Free;
  end;
end;

function TFinanceiroEmpresaDAO.Localizar(aParam: array of variant): TFDQuery;
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
  if aParam[0] = 'SEQUENCIA' then
  begin
    FDQuery.SQL.Add('WHERE ID_EMPRESA = :ID_EMPRESA AND SEQ_FINANCEIRO = :SEQ_FINANCEIRO');
    FDQuery.ParamByName('ID_EMPRESA').AsInteger := aParam[1];
    FDQuery.ParamByName('SEQ_FINANCEIRO').AsInteger := aParam[2];
  end;
  if aParam[0] = 'TIPO' then
  begin
    FDQuery.SQL.Add('WHERE DES_TIPO_CONTA LIKE :DES_TIPO_CONTA');
    FDQuery.ParamByName('DES_TIPO_CONTA').AsString := aParam[1];
  end;
  if aParam[0] = 'BANCO' then
  begin
    FDQuery.SQL.Add('WHERE COD_BANCO = :COD_BANCO');
    FDQuery.ParamByName('COD_BANCO').AsString := aParam[1];
  end;
  if aParam[0] = 'AGENCIA' then
  begin
    FDQuery.SQL.Add('WHERE COD_AGENCIA = :COD_AGENCIA');
    FDQuery.ParamByName('COD_AGENCIA').AsString := aParam[1];
  end;
  if aParam[0] = 'CONTA' then
  begin
    FDQuery.SQL.Add('WHERE NUM_CONTA = :NUM_CONTA');
    FDQuery.ParamByName('NUM_CONTA').AsString := aParam[1];
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
  Result := FDQuery;end;

function TFinanceiroEmpresaDAO.Update(aFinanceiros: TFinanceiroEmpresa): Boolean;
var
  sSQL: String;
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    sSQL := 'UPDATE ' + TABLENAME  + 'SET ' +
    'DES_TIPO_CONTA = :pDES_TIPO_CONTA, ' +
    'COD_BANCO = :pCOD_BANCO, NUM_AGENCIA = :pNUM_AGENCIA, NUM_CONTA = :pNUM_CONTA, COD_OPERACAO = :pCOD_OPERACAO ' +
    'WHERE ID_EMPRESA = :pID_EMPRESA AND SEQ_FINANCEIRO = :pSEQ_FINANCEIRO;';
    FDQuery.ExecSQL(sSQL,[aFinanceiros.TipoConta, aFinanceiros.Banco, aFinanceiros.Agencia, aFinanceiros.Conta,
                             aFinanceiros.Operacao, aFinanceiros.ID, aFinanceiros.Sequencia]);
    Result := True;
  finally
    FDQuery.Free;
  end;
end;

constructor TFinanceiroEmpresaDAO.Create;
begin
  FConexao := TConexao.Create;
end;

function TFinanceiroEmpresaDAO.Delete(aFinanceiros: TFinanceiroEmpresa): Boolean;
var
  sSQL : String;
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    if aFinanceiros.Sequencia = -1 then
    begin
      sSQL := 'DELETE FROM ' + TABLENAME + ' ' +
              'WHERE ID_EMPRESA = :pID_EMPRESA';
      FDQuery.ExecSQL(sSQL,[aFinanceiros.ID]);
    end
    else
    begin
      sSQL := 'DELETE FROM ' + TABLENAME + ' ' +
              'WHERE ID_EMPRESA = :pID_EMPRESA AND SEQ_FINANCEIRO = :pSEQ_FINANCEIRO';
      FDQuery.ExecSQL(sSQL,[aFinanceiros.ID, aFinanceiros.Sequencia]);
    end;
    Result := True;
  finally
    FDQuery.Free;
  end;

end;

function TFinanceiroEmpresaDAO.GetID(iID: Integer): Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(SEQ_FINANCEIRO),0) + 1 from ' + TABLENAME + ' WHERE ID_EMPRESA = ' + iID.toString);
    try
      Result := FDQuery.Fields[0].AsInteger;
    finally
      FDQuery.Close;
    end;
  finally
    FDQuery.Free;
  end;end;

end.
