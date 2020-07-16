unit Model.ExpressasExtratos;

interface

uses
  Common.ENum, FireDAC.Comp.Client,System.SysUtils, DAO.Conexao, System.DateUtils, System.Classes;
type
  TExpressasExtratos = class
  private
    FTotalEmpresa: Double;
    FEntregas: Integer;
    FQuinzena: Integer;
    FCliente: Integer;
    FVolumesExtra: Double;
    FMes: Integer;
    FPerformance: Double;
    FVolumes: Integer;
    FID: Integer;
    FVerba: Double;
    FEntregador: Integer;
    FAno: Integer;
    FDataInicio: TDate;
    FCreditos: Double;
    FProducao: Double;
    FExtravios: Double;
    FBase: Integer;
    FDataCredito: TDate;
    FTotalExpressas: Double;
    FAtrasos: Integer;
    FDebitos: Double;
    FDataFinal: TDate;
    FExtrato: String;
    FConexao : TConexao;
    FAcao: TAcao;
    FUniqueKey: String;
    function Inserir(): Boolean;
    function Alterar(): Boolean;
    function Excluir(): Boolean;
    function GenerateNumeroExtrato(): String;
  public
    property ID: Integer read FID write FID;
    property DataInicio: TDate read FDataInicio write FDataInicio;
    property DataFinal: TDate read FDataFinal write FDataFinal;
    property Ano: Integer read FAno write FAno;
    property Mes: Integer read FMes write FMes;
    property Quinzena: Integer read FQuinzena write FQuinzena;
    property Base: Integer read FBase write FBase;
    property Entregador: Integer read FEntregador write FEntregador;
    property Extrato: String read FExtrato write FExtrato;
    property Verba: Double read FVerba write FVerba;
    property Volumes: Integer read FVolumes write FVolumes;
    property VolumesExtra: Double read FVolumesExtra write FVolumesExtra;
    property Entregas: Integer read FEntregas write FEntregas;
    property Atrasos: Integer read FAtrasos write FAtrasos;
    property Performance: Double read FPerformance write FPerformance;
    property Producao: Double read FProducao write FProducao;
    property Creditos: Double read FCreditos write FCreditos;
    property Debitos: Double read FDebitos write FDebitos;
    property Extravios: Double read FExtravios write FExtravios;
    property TotalExpressas: Double read FTotalExpressas write FTotalExpressas;
    property TotalEmpresa: Double read FTotalEmpresa write FTotalEmpresa;
    property Cliente: Integer read FCliente write FCliente;
    property DataCredito: TDate read FDataCredito write FDataCredito;
    property UniqueKey: String read FUniqueKey write FUniqueKey;

    constructor Create();
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
    function DatasPagamentos(iBase: integer): TStringList;

  end;
const
  TABLENAME = 'expressas_extrato';
  SQLUPDATE = 'update ' + TABLENAME + ' set dat_inicio = :dat_inicio, dat_final = :dat_final, num_ano = :num_ano, ' +
              'num_mes = :num_mes, num_quinzena = :num_quinzena, cod_base = :cod_base, cod_entregador = :cod_entregador, ' +
              'num_extrato= :num_extrato, val_verba = :val_verba, qtd_volumes = :qtd_volumes, ' +
              'qtd_volumes_extra = :qtd_volumes_extra, val_volumes_extra = :val_volumes_extra, qtd_entregas = :qtd_entregas, ' +
              'qtd_atraso = :qtd_atraso, val_performance = :val_performance, val_producao :val_producao, ' +
              'val_creditos = :val_creditos, val_debitos = :val_debitos, val_extravios = :val_extravios, ' +
              'val_total_expressa = :val_total_expressa, val_total_empresa = :val_total_empresa, cod_cliente = :cod_cliente, ' +
              'dat_credito = :dat_credito, des_unique_key = :des_unique_key ' +
              'where id_extrato = :id_extrato';
  SQLINSERT = 'insert into '+ TABLENAME +'(id_extrato, dat_inicio, dat_final, num_ano, num_mes, num_quinzena, cod_base, ' +
              'cod_entregador, num_extrato, val_verba,qtd_volumes,qtd_volumes_extra,val_volumes_extra, qtd_entregas, qtd_atraso, ' +
              'val_performance, val_producao, val_creditos, val_debitos, val_extravios, val_total_expressa, val_total_empresa, ' +
              'cod_cliente, dat_credito, des_unique_key) ' +
              'values (:id_extrato, :dat_inicio, :dat_final, :num_ano, :num_mes, :num_quinzena, :cod_base, ' +
              ':cod_entregador, :num_extrato, :val_verba, :qtd_volumes, :qtd_volumes_extra, :val_volumes_extra, :qtd_entregas, ' +
              ':qtd_atraso, :val_performance, :val_producao, :val_creditos, :val_debitos, :val_extravios, :val_total_expressa, ' +
              ':val_total_empresa, :cod_cliente, :dat_credito, :des_unique_key)';
  SQLQUERY  = 'select id_extrato, dat_inicio, dat_final, num_ano, num_mes, num_quinzena, cod_base, cod_entregador, ' +
              'num_extrato, val_verba, qtd_volumes, qtd_volumes_extra, val_volumes_extra, qtd_entregas, qtd_atraso, ' +
              'val_performance, val_producao, val_creditos, val_debitos, val_extravios, val_total_expressa, val_total_empresa, ' +
              'cod_cliente, dat_credito, des_unique_key ' +
              'from ' + TABLENAME;

implementation

{ TExpressasExtratos }

function TExpressasExtratos.Alterar: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(SQLUPDATE,[Self.DataInicio, Self.DataFinal, Self.Ano, Self.Mes, Self.Quinzena, Self.Base, Self.Entregador,
                    Self.Extrato, Self.Verba, Self.Volumes, Self.VolumesExtra, Self.Entregas, Self.Atrasos, Self.Performance,
                    Self.Producao, Self.Creditos, Self.Debitos, Self.Extravios, Self.TotalExpressas, Self.TotalEmpresa,
                    Self.Cliente, Self.DataCredito, Self.UniqueKey, Self.ID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TExpressasExtratos.Create;
begin
  fConexao := TConexao.Create;
end;

function TExpressasExtratos.DatasPagamentos(iBase: integer): TStringList;
var
  sSQL : String;
  FDQuery : TFDQuery;
  sLista: TStringList;
begin
  try
    sLista := TStringList.Create;
    FDQuery := FConexao.ReturnQuery;
    sSQL := 'select distinct(dat_credito) from ' + TABLENAME + ' where cod_base = :base order by dat_credito desc';
    FDQuery.SQL.Add(sSQL);
    FDQuery.ParamByName('base').AsInteger := iBase;
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

function TExpressasExtratos.Excluir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where id_extrato = :id_extrato', [Self.ID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TExpressasExtratos.GenerateNumeroExtrato: String;
var
  iDias : Integer;
  sExtrato: String;
begin
  Result := '0';
  iDias := DaysBetween(Self.DataFinal, StrToDate('1899-12-31'));
  sExtrato := IntToStr(iDias) + IntToStr(Self.Base) + IntToStr(Self.Entregador);
  Result := sExtrato;
end;

function TExpressasExtratos.Gravar: Boolean;
begin
  Result := False;
  case FAcao of
    Common.ENum.tacIncluir: Result := Inserir();
    Common.ENum.tacAlterar: Result := Alterar();
    Common.ENum.tacExcluir: Result := Excluir();
  end;
end;

function TExpressasExtratos.Inserir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    Self.Extrato := GenerateNumeroExtrato;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(SQLINSERT,[Self.ID,Self.DataInicio,Self.DataFinal,Self.Ano,Self.Mes, Self.Quinzena, Self.Base, Self.Entregador,
                    Self.Extrato, Self.Verba, Self.Volumes, Self.VolumesExtra, Self.Entregas, Self.Atrasos, Self.Performance,
                    Self.Producao, Self.Creditos, Self.Debitos, Self.Extravios, Self.TotalExpressas, Self.TotalEmpresa,
                    Self.Cliente, Self.DataCredito, Self.UniqueKey]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TExpressasExtratos.Localizar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;

  FDQuery.SQL.Add(SQLQUERY);
  if aParam[0] = 'ID' then
  begin
    FDQuery.SQL.Add('where id_extrato = :id_extrato');
    FDQuery.ParamByName('id_extrato').AsInteger := aParam[1];
  end;
  if aParam[0] = 'DATAS' then
  begin
    FDQuery.SQL.Add('where dat_inicio >= :dat_inicio and dat_final <= :dat_final');
    FDQuery.ParamByName('dat_inicio').AsDate := aParam[1];
    FDQuery.ParamByName('dat_final').AsDate := aParam[2];
  end;
  if aParam[0] = 'QUINZENA' then
  begin
    FDQuery.SQL.Add('where num_ano = :num_ano and num_mes = :num_mes and num_quinzena = :num_quinzena');
    FDQuery.ParamByName('num_ano').AsInteger := aParam[1];
    FDQuery.ParamByName('num_mes').AsInteger := aParam[2];
    FDQuery.ParamByName('num_quinzena').AsInteger := aParam[3];
  end;
  if aParam[0] = 'EXTRATO' then
  begin
    FDQuery.SQL.Add('where num_extrato = :num_extrato');
    FDQuery.ParamByName('num_extrato').AsString := aParam[1];
  end;
  if aParam[0] = 'CREDITO' then
  begin
    FDQuery.SQL.Add('where dat_credito = :dat_credito');
    FDQuery.ParamByName('dat_credito').AsDate := aParam[1];
  end;
  if aParam[0] = 'BASECREDITO' then
  begin
    FDQuery.SQL.Add('where cod_base = :cod_base and dat_credito = :dat_credito');
    FDQuery.ParamByName('cod_base').AsInteger := aParam[1];
    FDQuery.ParamByName('dat_credito').AsDate := aParam[2];
  end;
  if aParam[0] = 'FILTRO' then
  begin
    FDQuery.SQL.Add('WHERE ' + aParam[1]);
  end;
  FDQuery.Open;
  Result := FDQuery;
end;

end.
