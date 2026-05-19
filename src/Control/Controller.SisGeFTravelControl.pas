unit Controller.SisGeFTravelControl;

interface

uses System.Classes, Common.ENum, System.Sysutils, Dialogs,
  Model.SisGeFTravelControl;

type
  TControllerTravelControl = class
  private
    FTravel: TTravelControl;
    FFieldsQuery: array of variant;
  public
    constructor Create;
    destructor Destroy;

    property Travel: TTravelControl read FTravel write FTravel;

    function Save(): boolean;
    function Search(aParam: array of variant): boolean;
    function SetupFieldsClass: boolean;
    function GetFieldsParam(var aParam: array of variant): boolean;
    function GetValueField(aParam: array of variant): string;
    function ValidateData(): boolean;
    function ValidateFinalization(): boolean;
    function SetupFieldsData(aParam: array of variant): boolean;

  end;

implementation

{ TControllerTravelControl }

constructor TControllerTravelControl.Create;
begin
  FTravel := TTravelControl.Create;
end;

destructor TControllerTravelControl.Destroy;
begin
  FTravel.Free;
end;

function TControllerTravelControl.GetFieldsParam
  (var aParam: array of variant): boolean;
var
  i: integer;
begin
  for i := 0 to Pred(FTravel.Query.FieldCount) do
  begin
    aParam[i] := FTravel.Query.FieldByName(FFieldsQuery[i]).Value;
  end;
end;

function TControllerTravelControl.GetValueField(aParam: array of variant): string;
begin
  Result := FTravel.GetValueField(aParam)
end;

function TControllerTravelControl.Save: boolean;
begin
  Result := FTravel.Save;
end;

function TControllerTravelControl.Search(aParam: array of variant): boolean;
begin
  Result := FTravel.Search(aParam);
end;

function TControllerTravelControl.SetupFieldsClass: boolean;
begin
  Result := FTravel.SetupFieldsClass;
end;


function TControllerTravelControl.SetupFieldsData(aParam: array of variant): boolean;
begin
  Result := FTravel.SetupFieldsData(aPAram);
end;

function TControllerTravelControl.ValidateData: boolean;
begin
  Result := False;
  if FTravel.Data = 0 then
  begin
    FTravel.Mensagem := 'Informe a data da viagem.';
    Exit;
  end;
  if Pos('Selecione', FTravel.Operacao) <> 0 then
  begin
    FTravel.Mensagem := 'Selecione o tipo de operação.';
    Exit;
  end;
  if FTravel.Cliente = 0 then
  begin
    FTravel.Mensagem := 'Informe o Cliente / Tomador.';
    Exit;
  end;
  if FTravel.Motorista = 0 then
  begin
    FTravel.Mensagem := 'Informe o motorista.';
    Exit;
  end;
  if FTravel.PlacaVeiculo.IsEmpty then
  begin
    FTravel.Mensagem := 'Informe o veículo.';
    Exit;
  end;
  if FTravel.KMRetorno > 0 then
  begin
    if FTravel.KMRetorno < FTravel.KMSaida then
    begin
      FTravel.Mensagem := 'KM Final menor que KM inicial.';
      Exit;
    end;
  end;
  Result := True;
end;

function TControllerTravelControl.ValidateFinalization: boolean;
begin
  Result := false;
  if FTravel.HoraSaida = 0 then
  begin
    FTravel.Mensagem := 'Informe a hora de saída.';
    Exit;
  end;
  if FTravel.HoraRetorno = 0 then
  begin
    FTravel.Mensagem := 'Informe a hora de retorno.';
    Exit;
  end;
  if FTravel.HoraRetorno < FTravel.HoraSaida then
  begin
    FTravel.Mensagem := 'Hora de retorno menor que hora de saída.';
    Exit;
  end;
  if FTravel.KMSaida = 0 then
  begin
    FTravel.Mensagem := 'Informe KM de saída.';
    Exit;
  end;
  if FTravel.KMRetorno = 0 then
  begin
    FTravel.Mensagem := 'Informe KM de chegada.';
    Exit;
  end;
  if FTravel.KMRetorno < FTravel.KMSaida then
  begin
    FTravel.Mensagem := 'KM de chegada menor que KM de saída.';
    Exit;
  end;
  FTravel.KMRodado := FTravel.KMRetorno - FTravel.KMSaida;
  Result := true;
end;

end.
