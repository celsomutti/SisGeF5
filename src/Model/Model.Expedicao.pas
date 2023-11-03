unit Model.Expedicao;

interface

uses Common.ENum, FireDAC.Comp.Client;

type
  TExpedicao = class
  private
    FAcao: Tacao;
    FContainer: Integer;
    FPeso: Double;
    FUnitizador: Integer;
    FConferencia: TDateTime;
    FNN: String;
    FExecucao: TDateTime;
    FExecutor: String;
    FVolumes: Integer;
    FID: Integer;
    FEmbarcador: Integer;
    FBase: Integer;
    FCCEP: String;
    FRecebedor: String;
    FConferente: String;
    FRecebimento: TDateTime;
    FData: TDateTime;
  public
    property ID: Integer read FID write FID;
    property Data: TDateTime read FData write FData;
    property CCEP: String read FCCEP write FCCEP;
    property Base: Integer read FBase write FBase;
    property Container: Integer read FContainer write FContainer;
    property Unitizador: Integer read FUnitizador write FUnitizador;
    property NN: String read FNN write FNN;
    property Embarcador: Integer read FEmbarcador write FEmbarcador;
    property Volumes: Integer read FVolumes write FVolumes;
    property Peso: Double read FPeso write FPeso;
    property Executor: String read FExecutor write FExecutor;
    property Execucao: TDateTime read FExecucao write FExecucao;
    property Conferente: String read FConferente write FConferente;
    property Conferencia: TDateTime read FConferencia write FConferencia;
    property Recebedor: String read FRecebedor write FRecebedor;
    property Recebimento: TDateTime read FRecebimento write FRecebimento;
    property Acao: Tacao read FAcao write FAcao;

    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
  end;

implementation

{ TExpedicao }

function TExpedicao.Gravar: Boolean;
begin

end;

function TExpedicao.Localizar(aParam: array of variant): TFDQuery;
begin

end;

end.
