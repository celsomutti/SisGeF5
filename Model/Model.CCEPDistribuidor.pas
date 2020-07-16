unit Model.CCEPDistribuidor;

interface

uses Common.ENum, FireDAC.Comp.Client;

  type
    TCCEPDistribuidor = class
  private
    FAcao: TAcao;
    FFaixa: Integer;
    FLOG: String;
    FCCEP: String;
    FCodigoDistribuidor: Integer;
    FGrupo: Integer;
  public
    property CodigoDistribuidor: Integer  read FCodigoDistribuidor write FCodigoDistribuidor;
    property CCEP: String read FCCEP write FCCEP;
    property Grupo: Integer read FGrupo write FGrupo;
    property Faixa: Integer read FFaixa write FFaixa;
    property LOG: String read FLOG write FLOG;
    property Acao: TAcao read FAcao write FAcao;

    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;

  end;

implementation

{ TCCEPDistribuidor }

uses DAO.CCEPDistribuidor;

function TCCEPDistribuidor.Gravar: Boolean;
var
  CCEPDAO : TCCEPDistribuidorDAO;
begin
  try
    Result := False;
    CCEPDAO := TCCEPDistribuidorDAO.Create;
    case FAcao of
      Common.ENum.tacIncluir: Result := CCEPDAO.Inserir(Self);
      Common.ENum.tacAlterar: Result := CCEPDAO.Alterar(Self);
      Common.ENum.tacExcluir: Result := CCEPDAO.Excluir(Self);
    end;
  finally
    CCEPDAO.Free;
  end;end;

function TCCEPDistribuidor.Localizar(aParam: array of variant): TFDQuery;
var
  CCEPDAO: TCCEPDistribuidorDAO;
begin
  try
    CCEPDAO := TCCEPDistribuidorDAO.Create;
    Result := CCEPDAO.Pesquisar(aParam);
  finally
    CCEPDAO.Free;
  end;
end;

end.
