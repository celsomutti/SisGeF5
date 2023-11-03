unit Model.Menus;

interface

uses Common.ENum, FireDAC.Comp.Client;

type
  TMenus = class
  private
    FCodigo: Integer;
    FSistema: Integer;
    Fmodulo: Integer;
    FDescricao: String;
    FAcao: TAcao;
  public
    property Sistema: Integer read FSistema write FSistema;
    property Modulo: Integer read Fmodulo write FModulo;
    property Codigo: Integer read FCodigo write FCodigo;
    property Descricao: String read FDescricao write FDescricao;
    property Acao: TAcao read FAcao write FAcao;

    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;

  end;

implementation

{ TMenus }

uses DAO.Menus;

function TMenus.Gravar: Boolean;
var
  menusDAO : TMenusDAO;
begin
  try
    Result := False;
    menusDAO := TMenusDAO.Create;
    case FAcao of
      Common.ENum.tacIncluir: Result := menusDAO.Inserir(Self);
      Common.ENum.tacAlterar: Result := menusDAO.Alterar(Self);
      Common.ENum.tacExcluir: Result := menusDAO.Excluir(Self);
    end;
  finally
    menusDAO.Free;
  end;
end;

function TMenus.Localizar(aParam: array of variant): TFDQuery;
var
  menusDAO : TMenusDAO;
begin
  try
    menusDAO := TMenusDAO.Create;
    Result := menusDAO.Pesquisar(aParam);
  finally
    menusDAO.Free;
  end;
end;

end.
