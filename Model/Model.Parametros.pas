unit Model.Parametros;

interface

uses Common.ENum, FireDAC.Comp.Client;

type
  TParametros = class
  private
    FQuinzena: Integer;
    FDiaInicio: Integer;
    FID: Integer;
    FRaioX: Integer;
    FDiaFinal: Integer;
    FAcao: TAcao;
  public
    property ID: Integer read FID write FID;
    property Quinzena: Integer read FQuinzena write FQuinzena;
    property DiaInicio: Integer read FDiaInicio write FDiaInicio;
    property DiaFinal: Integer read FDiaFinal write FDiaFinal;
    property RaioX: Integer read FRaioX write FRaioX;
    property Acao: TAcao read FAcao write FAcao;

    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
  end;

implementation

{ TParametros }

uses DAO.Parametros;

function TParametros.Gravar: Boolean;
var
  parameroDAO : TParametrosDAO;
begin
  try
    Result := False;
    parameroDAO := TParametrosDAO.Create;
    case FAcao of
      Common.ENum.tacIncluir: Result := parameroDAO.Inserir(Self);
      Common.ENum.tacAlterar: Result := parameroDAO.Alterar(Self);
      Common.ENum.tacExcluir: Result := parameroDAO.Excluir(Self);
    end;
  finally
    parameroDAO.Free;
  end;
end;

function TParametros.Localizar(aParam: array of variant): TFDQuery;
var
  parametroDAO: TParametrosDAO;
begin
  try
    parametroDAO := TParametrosDAO.Create;
    Result := parametroDAO.Pesquisar(aParam);
  finally
    parametroDAO.Free;
  end;
end;

end.
