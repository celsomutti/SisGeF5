unit Model.DestinosTransportes;

interface

uses Common.ENum, FireDAC.Comp.Client;

  type
    TDestinosTransporte = class
    private
    var
      FDestino: Integer;
      FDescricao: String;
      FLog: String;
      FAcao: TAcao;
    public
      property Destino: Integer read FDestino write FDestino;
      property Descricao: String read FDescricao write FDescricao;
      property Log : String read FLog write FLog;
      property Acao: TAcao read FAcao write FAcao;

      function Localizar(aParam: array of variant): TFDQuery;
      function Gravar(): Boolean;
    end;

implementation

{ TDestinosTransportes }

uses DAO.DestinosTransporte;

function TDestinosTransporte.Gravar: Boolean;
var
  destinosDAO : TDestinosTransporteDAO;
begin
  try
    Result := False;
    destinosDAO := TDestinosTransporteDAO.Create;
    case FAcao of
      Common.ENum.tacIncluir: Result := destinosDAO.Insert(Self);
      Common.ENum.tacAlterar: Result := destinosDAO.Update(Self);
      Common.ENum.tacExcluir: Result := destinosDAO.Delete(Self);
    end;
  finally
    destinosDAO.Free;
  end;end;

function TDestinosTransporte.Localizar(aParam: array of variant): TFDQuery;
var
  destinosDAO : TDestinosTransporteDAO;
begin
  try
    destinosDAO := TDestinosTransporteDAO.Create;
    Result := destinosDAO.Find(aParam);
  finally
    destinosDAO.Free;
  end;
end;

end.
