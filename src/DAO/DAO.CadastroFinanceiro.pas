unit DAO.CadastroFinanceiro;

interface

uses FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Model.CadastroFinanceiro;

type
  TCadastroFinanceiroDAO = class
  private
    FConexao: TConexao;
  public
    constructor Create();
    function GetID(iID: Integer): Integer;
    function Insert(aFinanceiros: TCadastroFinanceiro): Boolean;
    function Update(aFinanceiros: TCadastroFinanceiro): Boolean;
    function Delete(aFinanceiros: TCadastroFinanceiro): Boolean;
    function Localizar(aParam: Array of variant): TFDQuery;
  end;
const
  TABLENAME = 'cadastro_financeiro';

implementation

function TCadastroFinanceiroDAO.Insert(aFinanceiros: TCadastroFinanceiro): Boolean;
var
  sSQL: String;
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    aFinanceiros.Sequencia := GetID(aFinanceiros.ID);
    sSQL := 'INSERT INTO ' + TABLENAME + '(ID_CADASTRO, SEQ_FINANCEIRO, DES_TIPO_CONTA, COD_BANCO, ' +
            'NUM_AGENCIA, DES_CONTA, COD_OPERACAO, DOM_ATIVO) ' +
            'VALUES (:pID_CADASTRO, :pSEQ_FINANCEIRO, :pDES_TIPO_CONTA, :pCOD_BANCO, :pNUM_AGENCIA, ' +
            ':pDES_CONTA, :pCOD_OPERACAO, :pDOM_ATIVO);';
    FDQuery.ExecSQL(sSQL,[aFinanceiros.ID, aFinanceiros.Sequencia, aFinanceiros.TipoConta,
                        aFinanceiros.Banco, aFinanceiros.Agencia, aFinanceiros.Conta, aFinanceiros.Operacao, aFinanceiros.Ativo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCadastroFinanceiroDAO.Localizar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;

  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'ID' then
  begin
    FDQuery.SQL.Add('WHERE ID_CADASTRO = :ID_CADASTRO');
    FDQuery.ParamByName('ID_CADASTRO').AsInteger := aParam[1];
  end;
  if aParam[0] = 'SEQUENCIA' then
  begin
    FDQuery.SQL.Add('WHERE ID_CADASTRO = :ID_CADASTRO AND SEQ_FINANCEIRO = :SEQ_FINANCEIRO');
    FDQuery.ParamByName('ID_CADASTRO').AsInteger := aParam[1];
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
    FDQuery.SQL.Add('WHERE DES_CONTA = :DES_CONTA');
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

function TCadastroFinanceiroDAO.Update(aFinanceiros: TCadastroFinanceiro): Boolean;
var
  sSQL: String;
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    sSQL := 'UPDATE ' + TABLENAME  + 'SET ' +
    'DES_TIPO_CONTA = :pDES_TIPO_CONTA, ' +
    'COD_BANCO = :pCOD_BANCO, NUM_AGENCIA = :pNUM_AGENCIA, NUM_CONTA = :pNUM_CONTA, COD_OPERACAO = :pCOD_OPERACAO, ' +
    'DOM_ATIVO = :pDOM_ATIVO ' +
    'WHERE ID_CADASTRO = :pID_CADASTRO AND SEQ_FINANCEIRO = :pSEQ_FINANCEIRO;';
    FDQuery.ExecSQL(sSQL,[aFinanceiros.TipoConta, aFinanceiros.Banco, aFinanceiros.Agencia, aFinanceiros.Conta,
                             aFinanceiros.Operacao, aFinanceiros.Ativo, aFinanceiros.ID, aFinanceiros.Sequencia]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TCadastroFinanceiroDAO.Create;
begin
  FConexao := TConexao.Create;
end;

function TCadastroFinanceiroDAO.Delete(aFinanceiros: TCadastroFinanceiro): Boolean;
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
              'WHERE ID_CADASTRO = :pID_CADASTRO';
      FDQuery.ExecSQL(sSQL,[aFinanceiros.ID]);
    end
    else
    begin
      sSQL := 'DELETE FROM ' + TABLENAME + ' ' +
              'WHERE ID_CADASTRO = :pID_CADASTRO AND SEQ_FINANCEIRO = :pSEQ_FINANCEIRO';
      FDQuery.ExecSQL(sSQL,[aFinanceiros.ID, aFinanceiros.Sequencia]);
    end;
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;

end;

function TCadastroFinanceiroDAO.GetID(iID: Integer): Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(SEQ_FINANCEIRO),0) + 1 from ' + TABLENAME + ' WHERE ID_CADASTRO = ' + iID.toString);
    try
      Result := FDQuery.Fields[0].AsInteger;
    finally
      FDQuery.Close;
    end;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;end;

end.
