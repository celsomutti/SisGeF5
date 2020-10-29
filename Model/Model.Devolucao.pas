unit Model.Devolucao;

interface

uses Common.ENum, FireDAC.Comp.Client;

type
  TDevolucao = class
  private
    FObjeto: Integer;
    FContainer: Integer;
    FExpedicao: TDateTime;
    FLacre: String;
    FNossoNumero: String;
    FVolumes: Integer;
    FAgente: Integer;
    FMotorista: String;
    FRetirada: TDateTime;
    FRecebedor: String;
    FRecepcao: TDateTime;
    FConferente: String;
    FConferencia: TDateTime;
    FPesoContainer: Double;
    FStatusContainer: Integer;
    FDivergencia: String;
    FDescricao: String;
    FStatusobjeto: Integer;
    FProtocolo: String;
    FDescoberto: String;
    FOcorrencia: String;
    FUsuario: String;
    FManutencao: TDateTime;
    FAcao: TAcao;
  public
    property Objeto: Integer read FObjeto write FObjeto;
    property Container: Integer read FContainer write FContainer;
    property Expedicao: TDateTime read FExpedicao write FExpedicao;
    property Lacre: String read FLacre write FLacre;
    property NossoNumero: String read FNossoNumero write FNossoNumero;
    property Volumes: Integer read FVolumes write FVolumes;
    property Agente: Integer read FAgente write FAgente;
    property Motorista: String read FMotorista write FMotorista;
    property Retirada: TDateTime read FRetirada write FRetirada;
    property Recebedor: String read FRecebedor write FRecebedor;
    property Recepcao: TDateTime read FRecepcao write FRecepcao;
    property Conferente: String read FConferente write FConferente;
    property Conferencia: TDateTime read FConferencia write FConferencia;
    property PesoContainer: Double read FPesoContainer write FPesoContainer;
    property StatusContainer: Integer read FStatusContainer write FStatusContainer;
    property Divergencia: String read FDivergencia write FDivergencia;
    property Descricao: String read FDescricao write FDescricao;
    property Statusobjeto: Integer read FStatusobjeto write FStatusobjeto;
    property Protocolo: String read FProtocolo write FProtocolo;
    property Descoberto: String read FDescoberto write FDescoberto;
    property Ocorrencia: String read FOcorrencia write FOcorrencia;
    property Usuario: String read FUsuario write FUsuario;
    property Manutencao: TDateTime read FManutencao write FManutencao;
    property Acao: TAcao read FAcao write FAcao;

    function GetID(): Integer;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;

  end;

implementation

{ TDevolucao }

uses DAO.Devolucao;

function TDevolucao.GetID: Integer;
var
  devolucaoDAO : TDevolucaoDAO;
begin
  try
    devolucaoDAO := TDevolucaoDAO.Create;
    Result := devolucaoDAO.GetID;
  finally
    devolucaoDAO.Free;
  end;
end;

function TDevolucao.Gravar: Boolean;
var
  devolucaoDAO: TDevolucaoDAO;
begin
  try
    devolucaoDAO := TDevolucaoDAO.Create;
    case FAcao of
      Common.ENum.tacIncluir : Result := devolucaoDAO.Inserir(Self);
      Common.ENum.tacAlterar : Result := devolucaoDAO.Alterar(Self);
      Common.ENum.tacExcluir : Result := devolucaoDAO.Excluir(Self);
    end;
  finally
    devolucaoDAO.Free;
  end;
end;

function TDevolucao.Localizar(aParam: array of variant): TFDQuery;
var
  devolucaoDAO: TDevolucaoDAO;
begin
  try
    devolucaoDAO := TDevolucaoDAO.Create;
    Result := devolucaoDAO.Pesquisar(aParam);
  finally
    devolucaoDAO.Free;
  end;
end;

end.
