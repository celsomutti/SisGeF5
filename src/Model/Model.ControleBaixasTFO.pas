unit Model.ControleBaixasTFO;

interface

uses Common.ENum, FireDAC.Comp.Client;
  type
    TControleBaixasTFO = class
    private
      FId : Integer;
      FData: TDateTime;
      FStatus: Integer;
      FLog: String;
    FAcao: TAcao;
    public
      property Id : Integer read FId write FId;
      property Data: TDateTime read FData write FData;
      property Status: Integer  read FStatus write FStatus;
      property Log: String read FLog write FLog;
      property Acao: TAcao read FAcao write FAcao;

      function Localizar(aParam: array of variant): TFDQuery;
      function Gravar(): Boolean;

    end;

implementation

{ TControleBaixasTFO }

uses DAO.ControleBaixasTFO;

function TControleBaixasTFO.Gravar: Boolean;
var
  controleDAO : TControleBaixaTFODAO;
begin
  try
    Result := False;
    controleDAO := TControleBaixaTFODAO.Create;
    case FAcao of
      Common.ENum.tacIncluir: Result := controleDAO.Insert(Self);
      Common.ENum.tacAlterar: Result := controleDAO.Update(Self);
      Common.ENum.tacExcluir: Result := controleDAO.Detele(Self);
    end;
  finally
    controleDAO.Free;
  end;
end;

function TControleBaixasTFO.Localizar(aParam: array of variant): TFDQuery;
var
  controleDAO : TControleBaixaTFODAO;
begin
  try
    controleDAO := TControleBaixaTFODAO.Create;
    Result := controleDAO.Find(aParam);
  finally
    controleDAO.Free;
  end;

end;

end.
