unit Controller.SisGeFConsumptionInputs;

interface

uses System.Classes, Common.ENum, System.Sysutils, Dialogs, Model.SisGeFConsumptionInputs;

type
  TControllerConsumptionInputs = class
private
      FInputs : TConsumptionInputs;
      FFieldsQuery: array of variant;
    public
      constructor Create;
      destructor Destroy;

      property Inputs: TConsumptionInputs read FInputs write FInputs;

      function Save(): boolean;
      function Search(aParam: array of variant): boolean;
      function SetupFieldsClass(): boolean;
      function GetFieldsParam(var aParam: array of variant): boolean;
      function SetupFieldsData(aParam: array of variant): boolean;
    end;

implementation

{ TControllerConsumptionInputs }

constructor TControllerConsumptionInputs.Create;
begin
  FFieldsQuery := ['ID_CONSUMO', 'ID_INSUMO', 'DES_PLACA', 'DAT_CONSUMO', 'QTD_KM_CONSUMO', 'ID_CONTROLE',
  'QTD_CONSUMO', 'VAL_CONSUMO', 'DOM_ESTOQUE', 'DES_LOG'];
  FInputs := TConsumptionInputs.Create;
end;

destructor TControllerConsumptionInputs.Destroy;
begin
  FInputs.Free;
end;

function TControllerConsumptionInputs.GetFieldsParam(var aParam: array of variant): boolean;
var
  i: integer;
begin
  for i := 0 to Pred(FInputs.Query.FieldCount) do
  begin
    aParam[i] := FInputs.Query.FieldByName(FFieldsQuery[i]).Value;
  end;
end;

function TControllerConsumptionInputs.Save: boolean;
begin
  Result := FInputs.Save;
end;

function TControllerConsumptionInputs.Search(aParam: array of variant): boolean;
begin
  Result := FInputs.Search(aPAram);
end;

function TControllerConsumptionInputs.SetupFieldsClass(): boolean;
begin
  Result := FInputs.SetupFieldsClass;
end;

function TControllerConsumptionInputs.SetupFieldsData(aParam: array of variant): boolean;
begin
  Result := FInputs.SetupFieldsData(aParam);
end;

end.
