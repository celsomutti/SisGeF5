unit Model.ExtratosExpressas;

interface

uses Common.ENum, FireDAC.Comp.Client, System.Classes;

type
  TExtratosExpressas = class
  private
  var
    FId: Integer;
    FAgente: Integer;
    FEntregador: Integer;
    FDataInicio: TDate;
    FDataFinal: TDate;
    FDataPagamento: TDate;
    FVolumes: Integer;
    FEntregas: Integer;
    FAtrasos: Integer;
    FVolumesExtra: Double;
    FSLA: Double;
    FVerba: Double;
    FValorEntregas: Double;
    FValorVolumesExtra: Double;
    FValorProducao: Double;
    FValorCreditos: Double;
    FValorRestricao: Double;
    FValorExtravio: Double;
    FValorDebitos: Double;
    FValorTotalCreditos: Double;
    FValorTotalDebitos: Double;
    FValorTotalGeral: Double;
    FFechado: Integer;
    FTotalVerbaFranquia: Double;
    FLog: String;
    FPFP: Integer;
    FAcao: TAcao;
    FExtrato: String;
    FNomeEntregador: String;
    FNomeAgente: String;
  public
    property Id: Integer read FId write FId;
    property Agente: Integer read FAgente write FAgente;
    property Entregador: Integer read FEntregador write FEntregador;
    property DataInicio: TDate read FDataInicio write FDataInicio;
    property DataFinal: TDate read FDataFinal write FDataFinal;
    property DataPagamento: TDate read FDataPagamento write FDataPagamento;
    property Volumes: Integer read FVolumes write FVolumes;
    property Entregas: Integer read FEntregas write FEntregas;
    property Atrasos: Integer read FAtrasos write FAtrasos;
    property VolumesExtra: Double read FVolumesExtra write FVolumesExtra;
    property SLA: Double read FSLA write FSLA;
    property Verba: Double read FVerba write FVerba;
    property ValorEntregas: Double read FValorEntregas write FValorEntregas;
    property ValorVolumesExtra: Double read FValorVolumesExtra write FValorVolumesExtra;
    property ValorProducao: Double read FValorProducao write FValorProducao;
    property ValorCreditos: Double read FValorCreditos write FValorCreditos;
    property ValorRestricao: Double read FValorRestricao write FValorRestricao;
    property ValorExtravio: Double read FValorExtravio write FValorExtravio;
    property ValorDebitos: Double read FValorDebitos write FValorDebitos;
    property ValorTotalCreditos: Double read FValorTotalCreditos write FValorTotalCreditos;
    property ValorTotalDebitos: Double read FValorTotalDebitos write FValorTotalDebitos;
    property ValorTotalGeral: Double read FValorTotalGeral write FValorTotalGeral;
    property Fechado: Integer read FFechado write FFechado;
    property TotalVerbaFranquia: Double read FTotalVerbaFranquia write FTotalVerbaFranquia;
    property PFP: Integer read FPFP write FPFP;
    property Log: String read FLog write FLog;
    property Extrato: String read FExtrato write FExtrato;
    property NomeAgente: String read FNomeAgente write FNomeAgente;
    property NomeEntregador: String read FNomeEntregador write FNomeEntregador;
    property Acao: TAcao read FAcao write FAcao;

    function GetID(): Integer;
    function Gravar(): Boolean;
    function CancelaExtrato(aParam: array of Variant): Boolean;
    function Localizar(aParam: array of Variant): TFDQuery;
    function DatasPagamentos(iBase: Integer): TStringList;

  end;

implementation

{ TExtratosExpressas }

uses DAO.ExtratosExpressas;


function TExtratosExpressas.CancelaExtrato(aParam: array of Variant): Boolean;
var
  extratosDAO : TExtratosExpressasDAO;
begin
  try
    extratosDAO := TExtratosExpressasDAO.Create;
    Result := extratosDAO.CancelaExtrato(aParam);
  finally
    extratosDAO.Free;
  end;
end;


function TExtratosExpressas.DatasPagamentos(iBase: Integer): TStringList;
var
  extratosDAO : TExtratosExpressasDAO;
begin
  try
    extratosDAO := TExtratosExpressasDAO.Create;
    Result := extratosDAO.DatasPagamentos(iBase);
  finally
    extratosDAO.Free;
  end;
end;

function TExtratosExpressas.GetID: Integer;
var
  extratosDAO : TExtratosExpressasDAO;
begin
  try
    extratosDAO := TExtratosExpressasDAO.Create;
    Result := extratosDAO.GetID;
  finally
    extratosDAO.Free;
  end;
end;

function TExtratosExpressas.Gravar: Boolean;
var
  extratosDAO : TExtratosExpressasDAO;
begin
  try
    Result := False;
    extratosDAO := TExtratosExpressasDAO.Create;
    case FAcao of
      Common.ENum.tacIncluir: Result := extratosDAO.Insert(Self);
      Common.ENum.tacAlterar: Result := extratosDAO.Update(Self);
      Common.ENum.tacExcluir: Result := extratosDAO.Delete(Self);
    end;
  finally
    extratosDAO.Free;
  end;
end;

function TExtratosExpressas.Localizar(aParam: array of Variant): TFDQuery;
var
  extratosDAO : TExtratosExpressasDAO;
begin
  try
    extratosDAO := TExtratosExpressasDAO.Create;
    Result := extratosDAO.FindExtrato(aParam);
  finally
    extratosDAO.Free;
  end;
end;

end.
