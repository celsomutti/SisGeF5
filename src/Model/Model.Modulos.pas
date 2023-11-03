unit Model.Modulos;

interface

uses Common.ENum, FireDAC.Comp.Client;

type
  TModulos = class
  private
    FAcao: TAcao;
    FDescricao: String;
    FCodigo: Integer;
    FSistema: Integer;
  public
    property Sistema: Integer read FSistema write FSistema;
    property Codigo: Integer read FCodigo write FCodigo;
    property Descricao: String read FDescricao write FDescricao;
    property Acao: TAcao read FAcao write FAcao;

    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;

  end;

implementation

{ TModulos }

uses DAO.Modulos;

function TModulos.Gravar: Boolean;
var
  modulosdDAO : TModulosDAO;
begin
  try
    Result := False;
    modulosdDAO := TModulosDAO.Create;
    case FAcao of
      Common.ENum.tacIncluir: Result := modulosdDAO.Inserir(Self);
      Common.ENum.tacAlterar: Result := modulosdDAO.Alterar(Self);
      Common.ENum.tacExcluir: Result := modulosdDAO.Excluir(Self);
    end;
  finally
    modulosdDAO.Free;
  end;
end;

function TModulos.Localizar(aParam: array of variant): TFDQuery;
var
  modulosDAO : TModulosDAO;
begin
  try
    modulosDAO := TModulosDAO.Create;
    Result := modulosDAO.Pesquisar(aParam);
  finally
    modulosDAO.Free;
  end;
end;

end.
