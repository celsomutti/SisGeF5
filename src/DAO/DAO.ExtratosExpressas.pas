unit DAO.ExtratosExpressas;

interface

uses FireDAC.Comp.Client, DAO.Conexao, Control.Sistema, System.DateUtils, System.Classes, Model.ExtratosExpressas;

type
  TExtratosExpressasDAO = class
  private
    FConexao : TConexao;
  public
    constructor Create;
    function GetID(): Integer;
    function Insert(aExtrato: TExtratosExpressas): Boolean;
    function Update(aExtrato: TExtratosExpressas): Boolean;
    function Delete(aExtrato: TExtratosExpressas): Boolean;
    function CancelaExtrato(aParam: array of Variant): Boolean;
    function FindExtrato(aParam: array of Variant): TFDQuery;
    function DatasPagamentos(iBase: Integer): TStringList;
  end;
const
  TABLENAME = 'fin_extrato_expressas';

implementation

uses System.SysUtils, Data.DB;

{ TExtratosExpressasDAO }

function TExtratosExpressasDAO.CancelaExtrato(aParam: array of Variant): Boolean;
var
  sSQL : String;
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    sSQL := 'DELETE FROM ' + TABLENAME + ' WHERE DAT_INICIO <= :DATA1 AND DAT_FINAL <= :DATA2 AND DOM_FECHADO = :FECHADO';
    FDQuery.ExecSQL(sSQL,[aParam[0], aParam[1], aParam[2]]);
    Result := True;
  finally
    FDQuery.Free;
  end;
end;

constructor TExtratosExpressasDAO.Create;
begin
  FConexao := TSistemaControl.GetInstance().Conexao;
end;

function TExtratosExpressasDAO.DatasPagamentos(iBase: Integer): TStringList;
var
  sSQL : String;
  FDQuery : TFDQuery;
  sLista: TStringList;
begin
  try
    sLista := TStringList.Create;
    FDQuery := FConexao.ReturnQuery;
    sSQL := 'select distinct(dat_pagamento) from ' + TABLENAME + ' where cod_agente = :base and dom_fechado = :fechado order by dat_pagamento desc';
    FDQuery.SQL.Add(sSQL);
    FDQuery.ParamByName('base').AsInteger := iBase;
    FDQuery.ParamByName('fechado').AsInteger := 1;
    FDQuery.Open();
    if not FDQuery.IsEmpty then FDQuery.First;
    while not FDQuery.Eof do
    begin
      sLista.Add(FormatDateTime('dd/mm/yyyy', FDQuery.Fields[0].Value));
      FDQuery.Next;
    end;
    Result := sLista;
  finally
    FDQuery.Free;
  end;
end;

function TExtratosExpressasDAO.Delete(aExtrato: TExtratosExpressas): Boolean;
var
  sSQL : String;
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    sSQL := 'DELETE FROM ' + TABLENAME + ' WHERE ID_EXTRATO = :ID';
    FDQuery.ExecSQL(sSQL,[aExtrato.Id]);
    Result := True;
  finally
    FDQuery.Free;
  end;
end;

function TExtratosExpressasDAO.FindExtrato(aParam: array of Variant): TFDQuery;
var
  FdQuery : TFDQuery;
begin
  FdQuery := FConexao.ReturnQuery;
  if Length(aParam) = 0 then Exit;
  FdQuery.SQL.Add('SELECT * FROM ' + TABLENAME);
  if aParam[0] = 'ID' then
  begin
    FdQuery.SQL.Add('WHERE ID_EXTRATO = :ID');
    FdQuery.ParamByName('ID').AsInteger := aParam[1];
  end
  else if aParam[0] = 'AGENTE' then
  begin
    FdQuery.SQL.Add('WHERE COD_AGENTE = :AGENTE');
    FdQuery.ParamByName('AGENTE').AsInteger := aParam[1];
  end
  else if aParam[0] = 'ENTREGADOR' then
  begin
    FdQuery.SQL.Add('WHERE COD_ENTREGADOR = :ENTREGADOR');
    FdQuery.ParamByName('ENTREGADOR').AsInteger := aParam[1];
  end
  else if aParam[0] = 'EXTRATO' then
  begin
    FdQuery.SQL.Add('WHERE num_extrato = :extrato');
    FdQuery.ParamByName('extrato').AsString := aParam[1];
  end
  else if aParam[0] = 'REFERENCIA' then
  begin
    FdQuery.SQL.Add('WHERE DAT_INICIO >= :INICIO AND DAT_FINAL <= :FINAL AND COD_ENTREGADOR = :ENTREGADOR');
    FdQuery.ParamByName('INICIO').AsDate := aParam[1];
    FdQuery.ParamByName('FINAL').AsDate := aParam[2];
    FdQuery.ParamByName('ENTREGADOR').AsInteger := aParam[3];
  end
  else if aParam[0] = 'CLIENTE' then
  begin
    FdQuery.SQL.Add('WHERE DAT_INICIO >= :INICIO AND DAT_FINAL <= :FINAL AND COD_CLIENTE_EMPRESA = :CLIENTE');
    FdQuery.ParamByName('INICIO').AsDate := aParam[1];
    FdQuery.ParamByName('FINAL').AsDate := aParam[2];
    FdQuery.ParamByName('CLIENTE').AsInteger := aParam[3];
  end
  else if aParam[0] = 'REFERENCIAAG' then
  begin
    FdQuery.SQL.Add('WHERE DAT_INICIO >= :INICIO AND DAT_FINAL <= :FINAL AND COD_AGENTE = :AGENTE');
    FdQuery.ParamByName('INICIO').AsDate := aParam[1];
    FdQuery.ParamByName('FINAL').AsDate := aParam[2];
    FdQuery.ParamByName('AGENTE').AsInteger := aParam[3];
  end
  else if aParam[0] = 'DATA' then
  begin
    FdQuery.SQL.Add('WHERE DAT_INICIO >= :INICIO AND DAT_FINAL <= :FINAL');
    FdQuery.ParamByName('INICIO').AsDate := aParam[1];
    FdQuery.ParamByName('FINAL').AsDate := aParam[2];
  end
  else if aParam[0] = 'PGTOAGENTE' then
  begin
    FdQuery.SQL.Add('WHERE DAT_PAGAMENTO = :DATA AND COD_AGENTE = :AGENTE AND DOM_FECHADO = 1');
    FdQuery.ParamByName('DATA').AsDate := aParam[1];
    FdQuery.ParamByName('AGENTE').AsInteger := aParam[2];
  end
  else if aParam[0] = 'PERIODO' then
  begin
    FdQuery.SQL.Add('WHERE DAT_INICIO >= :INICIO AND DAT_FINAL <= :FINAL AND DOM_FECHADO = :FECHADO');
    FdQuery.ParamByName('INICIO').AsDate := aParam[1];
    FdQuery.ParamByName('FINAL').AsDate := aParam[2];
    FdQuery.ParamByName('FECHADO').AsInteger := aParam[3];
  end
  else if aParam[0] = 'PAGAMENTO' then
  begin
    if Length(aParam) = 2 then
    begin
      FdQuery.SQL.Add('WHERE DAT_PAGAMENTO BETWEEN :INICIO AND :FINAL AND DOM_FECHADO = :FECHADO');
      FdQuery.ParamByName('INICIO').AsDate := aParam[1];
      FdQuery.ParamByName('FINAL').AsDate := aParam[2];
      FdQuery.ParamByName('FECHADO').AsInteger := 1;
    end
    else
    begin
      FdQuery.SQL.Add('WHERE DAT_PAGAMENTO = :DATA');
      FdQuery.ParamByName('DATA').AsDate := aParam[1];
    end;
  end
  else if aParam[0] = 'FILTRO' then
  begin
    FdQuery.SQL.Add('WHERE ' + aParam[1]);
  end;
  FdQuery.Open();
  Result := FDQuery;
end;

function TExtratosExpressasDAO.GetID: Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(ID_EXTRATO),0) + 1 from ' + TABLENAME);
    try
      Result := FDQuery.Fields[0].AsInteger;
    finally
      FDQuery.Close;
    end;
  finally
    FDQuery.Free;
  end;
end;

function TExtratosExpressasDAO.Insert(aExtrato: TExtratosExpressas): Boolean;
var
  sSQL: String;
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    aExtrato.Id := GetID();
    sSQL := 'INSERT INTO ' + TABLENAME +
            '(ID_EXTRATO, COD_AGENTE, COD_ENTREGADOR, DAT_INICIO, DAT_FINAL, DAT_PAGAMENTO, QTD_VOLUMES, QTD_ENTREGAS, QTD_ITENS_ATRASO, QTD_VOLUMES_EXTRA, ' +
            'VAL_PERCENTUAL_SLA, VAL_VERBA, VAL_ENTREGAS, VAL_VOLUMES_EXTRA, VAL_PRODUCAO, VAL_CREDITOS, VAL_RESTRICAO, VAL_EXTRAVIOS, VAL_DEBITOS, VAL_TOTAL_CREDITOS, ' +
            'VAL_TOTAL_DEBITOS, VAL_TOTAL_GERAL, DOM_FECHADO, TOT_VERBA_FRANQUIA, QTD_PFP, DES_LOG, num_extrato, nom_agente, nom_entregador) ' +
            'VALUE ' +
            '(:PID_EXTRATO, :PCOD_AGENTE, :PCOD_ENTREGADOR, :PDAT_INICIO, :PDAT_FINAL, :PDAT_PAGAMENTO, :PQTD_VOLUMES, :PQTD_ENTREGAS, :PQTD_ITENS_ATRASO, ' +
            ':PQTD_VOLUMES_EXTRA, :PVAL_PERCENTUAL_SLA, :PVAL_VERBA, :PVAL_ENTREGAS, :PVAL_VOLUMES_EXTRA, :PVAL_PRODUCAO, :PVAL_CREDITOS, :PVAL_RESTRICAO, :PVAL_EXTRAVIOS, ' +
            ':PVAL_DEBITOS, :PVAL_TOTAL_CREDITOS, :PVAL_TOTAL_DEBITOS, :PVAL_TOTAL_GERAL, :PDOM_FECHADO, :PTOT_VERBA_FRANQUIA, :PQTD_PFP, :PDES_LOG, :num_extrato, '+
            ':nom_agente, :nom_entregador)';
    FDQuery.ExecSQL(sSQL, [aExtrato.Id, aExtrato.Agente, aExtrato.Entregador, aExtrato.DataInicio, aExtrato.DataFinal, aExtrato.DataPagamento,
                             aExtrato.Volumes, aExtrato.Entregas, aExtrato.Atrasos, aExtrato.VolumesExtra, aExtrato.SLA, aExtrato.Verba, aExtrato.ValorEntregas,
                             aExtrato.ValorVolumesExtra, aExtrato.ValorProducao, aExtrato.ValorCreditos, aExtrato.ValorRestricao, aExtrato.ValorExtravio, aExtrato.ValorDebitos,
                             aExtrato.ValorTotalCreditos, aExtrato.ValorTotalDebitos, aExtrato.ValorTotalGeral, aExtrato.Fechado, aExtrato.TotalVerbaFranquia, AeXTRATO.PFP,
                             aExtrato.Log, aExtrato.Extrato, aExtrato.NomeAgente, aExtrato.NomeEntregador]);
    Result := True;
  finally
    FDQuery.Free;
  end;
end;

function TExtratosExpressasDAO.Update(aExtrato: TExtratosExpressas): Boolean;
var
  sSQL: String;
  FDQuery : TFDQuery;
begin
  Try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    sSQL := 'UPDATE ' + TABLENAME + ' SET ' +
            'COD_AGENTE = :PCOD_AGENTE, COD_ENTREGADOR = :PCOD_ENTREGADOR, DAT_INICIO = :PDAT_INICIO, DAT_FINAL = :PDAT_FINAL, DAT_PAGAMENTO = :PDAT_PAGAMENTO, ' +
            'QTD_VOLUMES = :PQTD_VOLUMES, QTD_ENTREGAS = :PQTD_ENTREGAS, QTD_ITENS_ATRASO = :PQTD_ITENS_ATRASO, QTD_VOLUMES_EXTRA = :PQTD_VOLUMES_EXTRA, ' +
            'VAL_PERCENTUAL_SLA = :PVAL_PERCENTUAL_SLA, VAL_VERBA = :PVAL_VERBA, VAL_ENTREGAS = :PVAL_ENTREGAS, VAL_VOLUMES_EXTRA = :PVAL_VOLUMES_EXTRA, ' +
            'VAL_PRODUCAO = :PVAL_PRODUCAO, VAL_CREDITOS = :PVAL_CREDITOS, VAL_RESTRICAO = :PVAL_RESTRICAO, VAL_EXTRAVIOS = :PVAL_EXTRAVIOS, ' +
            'VAL_DEBITOS = :PVAL_DEBITOS, VAL_TOTAL_CREDITOS = :PVAL_TOTAL_CREDITOS, VAL_TOTAL_DEBITOS = :PVAL_TOTAL_DEBITOS, VAL_TOTAL_GERAL = :PVAL_TOTAL_GERAL, ' +
            'DOM_FECHADO = :PDOM_FECHADO, TOT_VERBA_FRANQUIA = :PTOT_VERBA_FRANQUIA, QTD_PFP = :pQTD_PFP, DES_LOG = :PDES_LOG, num_extrato = :num_extrato, ' +
            'nom_agente = :nom_agente, nom_entregador = :nom_entregador' +
            'WHERE ID_EXTRATO = :PID_EXTRATO';
    FDQuery.ExecSQL(sSQL,[aExtrato.Agente, aExtrato.Entregador, aExtrato.DataInicio, aExtrato.DataFinal, aExtrato.DataPagamento,
                             aExtrato.Volumes, aExtrato.Entregas, aExtrato.Atrasos, aExtrato.VolumesExtra, aExtrato.SLA, aExtrato.Verba, aExtrato.ValorEntregas,
                             aExtrato.ValorVolumesExtra, aExtrato.ValorProducao, aExtrato.ValorCreditos, aExtrato.ValorRestricao, aExtrato.ValorExtravio, aExtrato.ValorDebitos,
                             aExtrato.ValorTotalCreditos, aExtrato.ValorTotalDebitos, aExtrato.ValorTotalGeral, aExtrato.Fechado, aExtrato.TotalVerbaFranquia, aExtrato.PFP, aExtrato.Log,
                             aExtrato.Extrato, aExtrato.NomeAgente, aExtrato.NomeEntregador, aExtrato.Id]);
    Result := True;
  Finally
    FDQuery.Free;
  End;
end;

end.
