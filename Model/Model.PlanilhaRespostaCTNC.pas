unit Model.PlanilhaRespostaCTNC;

interface

uses Generics.Collections;

type
  TPlanilhaRespostaCTNC = class
  private
    FPrevisao: String;
    FCodigoEmbarcador: String;
    FSequencia: String;
    FNN: String;
    FFlag: String;
    FPedido: String;
    FLeitura: String;
    FEntregador: String;
    FNomeEmbarcador: String;
    FConsumidor: String;
    FResposta: String;
    FUsuario: String;
    FCidade: String;
    FAtribuicao: String;
    FTelefone: String;
    FData: String;
  public
    property Flag: String read FFlag write FFlag;
    property Data: String read FData write FData;
    property NN: String read FNN write FNN;
    property Resposta: String read FResposta write FResposta;
    property CodigoEmbarcador: String read FCodigoEmbarcador write FCodigoEmbarcador;
    property NomeEmbarcador: String read FNomeEmbarcador write FNomeEmbarcador;
    property Pedido: String read FPedido write FPedido;
    property Consumidor: String read FConsumidor write FConsumidor;
    property Telefone: String read FTelefone write FTelefone;
    property Atribuicao: String read FAtribuicao write FAtribuicao;
    property Entregador: String read FEntregador write FEntregador;
    property Previsao: String read FPrevisao write FPrevisao;
    property Leitura: String read FLeitura write FLeitura;
    property Usuario: String read FUsuario write FUsuario;
    property Sequencia: String read FSequencia write FSequencia;
    property Cidade: String read FCidade write FCidade;

    function GetPlanilha(sFile: String): TObjectList<TPlanilhaRespostaCTNC>;

  end;

implementation

{ TPlanilhaRespostaCTNC }

uses DAO.PlanilhaRespostaCTNC;

function TPlanilhaRespostaCTNC.GetPlanilha(sFile: String): TObjectList<TPlanilhaRespostaCTNC>;
var
  planilha : TPlanilhaRespostaCTNCDAO;
begin
  try
    planilha := TPlanilhaRespostaCTNCDAO.Create;
    Result := planilha.GetPlanilha(sFile);
  finally
    planilha.Free;
  end;end;

end.
