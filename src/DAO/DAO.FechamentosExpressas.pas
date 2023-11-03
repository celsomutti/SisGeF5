unit DAO.FechamentosExpressas;

interface

uses Model.FechamentoExpressas, FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Control.Sistema;

type
  TFechamentoExpressasDAO = class
  private
    FConexao : TConexao;
  public
    constructor Create;
    function GetID(): Integer;
    function Insert(aFechamento: TFechamentoExpressas): Boolean;
    function Update(aFechamento: TFechamentoExpressas): Boolean;
    function Delete(aFechamento: TFechamentoExpressas): Boolean;
    function FindFechamento(aParam: array of Variant): TFDQuery;
    function RetornaFechamento(aParam: array of variant): TFDQuery;
    function CancelaFechamento(aParam: array of Variant): Boolean;
  end;
const
  TABLENAME = 'fin_fechamento_expressas';

implementation

{ TFechamentoExpressasDAO }

function TFechamentoExpressasDAO.CancelaFechamento(aParam: array of Variant): Boolean;
var
  sSQL : String;
  fdQuery: TFDQuery;
begin
  try
    Result := False;
    fdQuery := FConexao.ReturnQuery;
    sSQL := 'DELETE FROM ' + TABLENAME + ' WHERE DAT_INICIO <= :DATA1 AND DAT_FINAL <= :DATA2 AND DOM_FECHADO = :FECHADO';
    fdQuery.SQL.Text :=  sSQL;
    fdQuery.ParamByName('data1').AsDate := aparam[0];
    fdQuery.ParamByName('data2').AsDate := aparam[1];
    fdQuery.ParamByName('fechado').AsDate := aparam[2];
    fdQuery.ExecSQL;
    Result := True;
  finally
    fdQuery.Free;
  end;
end;

constructor TFechamentoExpressasDAO.Create;
begin
  FConexao := TSistemaControl.GetInstance().Conexao;
end;

function TFechamentoExpressasDAO.Delete(aFechamento: TFechamentoExpressas): Boolean;
var
  sSQL: String;
  fdQuery: TFDQuery;
begin
  try
    Result := False;
    fdQuery := FConexao.ReturnQuery;
    sSQL := 'DELETE FROM ' + TABLENAME + ' WHERE ID_FECHAMENTO = :ID_FECHAMENTO';
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(sSQL, [aFechamento.ID]);;
    Result := True;
  finally
    fdQuery.Free;
  end;
end;

function TFechamentoExpressasDAO.FindFechamento(aParam: array of Variant): TFDQuery;
var
  FDQuery : TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery;
  if Length(aParam) = 0 then Exit;
  FDQuery.SQL.Add('SELECT * FROM ' + TABLENAME);
  if aParam[0] = 'ID' then
  begin
    FDQuery.SQL.Add('WHERE ID_FECHAMENTO = :ID');
    FDQuery.ParamByName('ID').AsInteger := aParam[1];
  end
  else if aParam[0] = 'FECHADO' then
  begin
    FDQuery.SQL.Add('WHERE DOM_FECHADO = :FECHADO');
    FDQuery.ParamByName('FECHADO').AsInteger := aParam[1];
  end
  else if aParam[0] = 'PERIODO' then
  begin
    FDQuery.SQL.Add('WHERE DAT_INICIO >= :INICIO AND DAT_FINAL <= :FINAL AND DOM_FECHADO = :FECHADO');
    FDQuery.ParamByName('INICIO').AsDate := aParam[1];
    FDQuery.ParamByName('FINAL').AsDate := aParam[2];
    FDQuery.ParamByName('FECHADO').AsInteger := aParam[3];
  end
  else if aParam[0] = 'DATAS' then
  begin
    FDQuery.SQL.Add('WHERE DAT_INICIO >= :INICIO AND DAT_FINAL <= :FINAL');
    FDQuery.ParamByName('INICIO').AsDate := aParam[1];
    FDQuery.ParamByName('FINAL').AsDate := aParam[2];
  end
  else if aParam[0] = 'CODIGO' then
  begin
    FDQuery.SQL.Add('WHERE COD_TIPO = :TIPO AND COD_EXPRESSA = :CODIGO');
    FDQuery.ParamByName('TIPO').AsInteger := aParam[1];
    FDQuery.ParamByName('CODIGO').AsInteger := aParam[2];
  end
  else if aParam[0] = 'EXTRATO' then
  begin
    FDQuery.SQL.Add('WHERE DAT_INICIO >= :INICIO AND DAT_FINAL <= :FINAL AND COD_TIPO = :TIPO AND COD_EXPRESSA = :CODIGO');
    FDQuery.ParamByName('INICIO').AsDate := aParam[1];
    FDQuery.ParamByName('FINAL').asDate := aParam[2];
    FDQuery.ParamByName('TIPO').AsInteger := aParam[3];
    FDQuery.ParamByName('CODIGO').AsInteger := aParam[4];
  end
  else if aParam[0] = 'FECHAMENTO' then
  begin
    FDQuery.SQL.Add('WHERE DAT_INICIO >= :INICIO AND DAT_FINAL <= :FINAL AND COD_CLIENTE_EMPRESA = :CLIENTE');
    FDQuery.ParamByName('INICIO').AsDate := aParam[1];
    FDQuery.ParamByName('FINAL').asDate := aParam[2];
    FDQuery.ParamByName('CLIENTE').AsInteger := aParam[3];
  end;
  FDQuery.Open();
  Result := FDQuery;
end;

function TFechamentoExpressasDAO.GetID: Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(id_fechamento),0) + 1 from ' + TABLENAME);
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

function TFechamentoExpressasDAO.Insert(aFechamento: TFechamentoExpressas): Boolean;
var
  fdQuery: TFDQuery;
begin
  try
    Result := False;
    fdQuery := FConexao.ReturnQuery;
    aFechamento.Id := GetID;
    FDQuery.ExecSQL('INSERT INTO ' + TABLENAME +
                     '(ID_FECHAMENTO, DAT_INICIO, DAT_FINAL, COD_TIPO, COD_EXPRESSA, VAL_PRODUCAO, VAL_VERBA_ENTREGADOR, TOT_VERBA_FRANQUIA, VAL_SALDO_RESTRICAO, ' +
                     'VAL_RESTRICAO, VAL_EXTRAVIOS, VAL_CREDITOS, VAL_DEBITOS, VAL_FINANCIADO, VAL_TOTAL_DEBITOS, VAL_TOTAL_CREDITOS, VAL_TOTAL_GERAL, DOM_FECHADO, ' +
                     'DES_EXTRATOS, TOT_ENTREGAS,QTD_PFP, NOM_FAVORECIDO, NUM_CPF_CNPJ, COD_BANCO, COD_AGENCIA, DES_TIPO_CONTA, NUM_CONTA, DES_LOG, COD_CLIENTE_EMPRESA) ' +
                     'VALUE ' +
                     '(:PID_FECHAMENTO, :PDAT_INICIO, :PDAT_FINAL, :PCOD_TIPO, :PCOD_EXPRESSA, :PVAL_PRODUCAO, :PVAL_VERBA_ENTREGADOR, :PTOT_VERBA_FRANQUIA, ' +
                     ':PVAL_SALDO_RESTRICAO, :PVAL_RESTRICAO, :PVAL_EXTRAVIOS, :PVAL_CREDITOS, :PVAL_DEBITOS, :PVAL_FINANCIADO, :PVAL_TOTAL_DEBITOS, ' +
                     ':PVAL_TOTAL_CREDITOS, :PVAL_TOTAL_GERAL, :PDOM_FECHADO, :PDES_EXTRATOS, :PTOT_ENTREGAS, :pQTD_PFP, :NOM_FAVORECIDO, :NUM_CPF_CNPJ, :COD_BANCO, ' +
                     ':COD_AGENCIA, :DES_TIPO_CONTA, :NUM_CONTA, :PDES_LOG, :COD_CLIENTE_EMPRESA)', [aFechamento.Id, aFechamento.DataInicio, aFechamento.DataFinal,
                      aFechamento.Tipo, aFechamento.Codigo, aFechamento.ValorProducao,
                      aFechamento.VerbaEntregador, aFechamento.TotalVerbaFranquia, aFechamento.SaldoRestricao, aFechamento.ValorResticao, aFechamento.ValorExtravios,
                      aFechamento.ValorCreditos, aFechamento.ValorDebitos, aFechamento.ValorFinanciado, aFechamento.TotalDebitos, aFechamento.TotalCreditos,
                      aFechamento.TotalGeral, aFechamento.Fechado, aFechamento.Extratos, aFechamento.TotalEntregas, aFechamento.PFP, aFechamento.Favorecido,
                      aFechamento.CPFCNPJ, aFechamento.Banco, aFechamento.Agencia, aFechamento.TipoConta, aFechamento.Conta, aFechamento.Log, aFechamento.Cliente]);
    Result := True;
  finally
    fdQuery.Free;
  end;
end;

function TFechamentoExpressasDAO.RetornaFechamento(aParam: array of variant): TFDQuery;
var
  fdQuery : TFDQuery;
begin
  fdQuery := FConexao.ReturnQuery;
  fdQuery.SQL.Add('select cod_expressa as cod_expressa, tot_volumes as qtd_volumes, tot_entregas as qtd_entregas, qtd_extra as qtd_volumes_extra, ' +
                  'qtd_atraso as qtd_atraso, val_producao as val_producao, val_performance as val_performance, tot_verba_franquia as val_total_ticket, ' +
                  'cod_tipo as cod_tipo_expressa, nom_expressa as nom_expressa, cod_banco as cod_banco, nom_banco as nom_banco, des_tipo_conta as des_tipo_conta, ' +
                  'cod_agencia as num_agencia, num_conta as num_conta, nom_favorecido as nom_favorecido, num_cpf_cnpj as num_cpf_cnpj, ' +
                  'qtd_pfp as qtd_pfp, val_ticket_medio as val_ticket_medio, ' +
                  'val_extravios as val_extravios, val_debitos as val_debitos, val_creditos as val_creditos, val_total_geral as val_total from ' + TABLENAME +
                  ' where dat_inicio >= :data1 and dat_final <= :data2 and cod_cliente_empresa = :cliente');
  fdQuery.ParamByName('data1').AsDate := aParam[0];
  fdQuery.ParamByName('data2').asDate := aParam[1];
  fdQuery.ParamByName('cliente').AsInteger := aParam[2];
  fdQuery.Open();
  Result := fdQuery;
end;

function TFechamentoExpressasDAO.Update(aFechamento: TFechamentoExpressas): Boolean;
var
  fdQuery : TFDQuery;
begin
  Result := False;
  fdQuery := FConexao.ReturnQuery;
  FDQuery.ExecSQL( 'UPDATE ' + TABLENAME + ' SET ' +
                   'DAT_INICIO = :PDAT_INICIO, DAT_FINAL = :PDAT_FINAL, COD_TIPO = :PCOD_TIPO, COD_EXPRESSA = :PCOD_EXPRESSA, ' +
                   'VAL_PRODUCAO = :PVAL_PRODUCAO, VAL_VERBA_ENTREGADOR = :pVAL_VERBA_ENTREGADOR, TOT_VERBA_FRANQUIA = :pTOT_VERBA_FRANQUIA, ' +
                   'VAL_SALDO_RESTRICAO = :PVAL_SALDO_RESTRICAO, VAL_RESTRICAO = :PVAL_RESTRICAO, VAL_EXTRAVIOS = :PVAL_EXTRAVIOS, ' +
                   'VAL_CREDITOS = :PVAL_CREDITOS, VAL_DEBITOS = :PVAL_DEBITOS, VAL_FINANCIADO = :PVAL_FINANCIADO, VAL_TOTAL_DEBITOS = :PVAL_TOTAL_DEBITOS, ' +
                   'VAL_TOTAL_CREDITOS = :PVAL_TOTAL_CREDITOS, VAL_TOTAL_GERAL = :PVAL_TOTAL_GERAL, DOM_FECHADO = :PDOM_FECHADO, DES_EXTRATOS = :PDES_EXTRATOS, ' +
                   'TOT_ENTREGAS = :PTOT_ENTREGAS, QTD_PFP = :PQTD_PFP, NOM_FAVORECIDO = :NOM_FAVORECIDO, NUM_CPF_CNPJ = :NUM_CPF_CNPJ, ' +
                   'COD_BANCO = :COD_BANCO, COD_AGENCIA = :COD_AGENCIA, DES_TIPO_CONTA = :DES_TIPO_CONTA, NUM_CONTA = :NUM_CONTA, DES_LOG = :PDES_LOG, ' +
                   'COD_CLIENTE_EMPRESA = :COD_CLIENTE_CMPRESA ' +
                   'WHERE ID_FECHAMENTO = :PID_FECHAMENTO', [aFechamento.DataInicio, aFechamento.DataFinal, aFechamento.Tipo, aFechamento.Codigo, aFechamento.ValorProducao,
                    aFechamento.VerbaEntregador, aFechamento.TotalVerbaFranquia, aFechamento.SaldoRestricao, aFechamento.ValorResticao, aFechamento.ValorExtravios,
                    aFechamento.ValorCreditos, aFechamento.ValorDebitos, aFechamento.ValorFinanciado, aFechamento.TotalDebitos, aFechamento.TotalCreditos,
                    aFechamento.TotalGeral, aFechamento.Fechado, aFechamento.Extratos, aFechamento.TotalEntregas, aFechamento.PFP, aFechamento.Favorecido,
                    aFechamento.CPFCNPJ, aFechamento.Banco, aFechamento.Agencia, aFechamento.TipoConta, aFechamento.Conta,aFechamento.Log,
                    aFechamento.Cliente,aFechamento.Id]);
  Result := True;
end;

end.
