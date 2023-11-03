unit Model.Sistemas;

interface

uses Common.ENum, FireDAC.Comp.Client;

type
  TSistemas = class
  private
    FAcao: TAcao;
    FDescricao: String;
    FCodigo: Integer;
  public
    property Codigo: Integer read FCodigo write FCodigo;
    property Descricao: String read FDescricao write FDescricao;
    property Acao: TAcao read FAcao write FAcao;

    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
  end;

implementation

{ TSistemas }

uses DAO.Sistemas;

function TSistemas.Gravar: Boolean;
var
  sistemasDAO : TSistemasDAO;
begin
  try
    Result := False;
    sistemasDAO := TSistemasDAO.Create;
    case FAcao of
      Common.ENum.tacIncluir: Result := sistemasDAO.Inserir(Self);
      Common.ENum.tacAlterar: Result := sistemasDAO.Alterar(Self);
      Common.ENum.tacExcluir: Result := sistemasDAO.Excluir(Self);
    end;
  finally
    sistemasDAO.Free;
  end;
end;

function TSistemas.Localizar(aParam: array of variant): TFDQuery;
var
  sistemasDAO : TSistemasDAO;
begin
  try
    sistemasDAO := TSistemasDAO.Create;
    Result := sistemasDAO.Pesquisar(aParam);
  finally
    sistemasDAO.Free;
  end;
end;

end.
