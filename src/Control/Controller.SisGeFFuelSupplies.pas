unit Controller.SisGeFFuelSupplies;

interface

uses System.Classes, Model.SisGeFFuelSupplies, Common.ENum, System.Sysutils,
  Dialogs;

type
  TControllerFuelSupplies = class
  private
    FFuel: TFuelSupplies;
    FFieldsQuery: array of variant;
  public
    constructor Create;
    destructor Destroy;

    property FuelSuplies: TFuelSupplies read FFuel write FFuel;

    function Save(): boolean;
    function Search(aParam: array of variant): boolean;
    function SetupFieldsClass(): boolean;
    function GetFieldsParam(var aParam: array of variant): boolean;
    function SetupFieldsData(aParam: array of variant): boolean;
  end;

implementation

{ TControllerFuelSupplies }

constructor TControllerFuelSupplies.Create;
begin
  FFuel := TFuelSupplies.Create;
end;

destructor TControllerFuelSupplies.Destroy;
begin
  FFuel.Free;
end;

function TControllerFuelSupplies.GetFieldsParam
  (var aParam: array of variant): boolean;
var
  i: integer;
begin
  for i := 0 to Pred(FFuel.Query.FieldCount) do
  begin
    aParam[i] := FFuel.Query.FieldByName(FFieldsQuery[i]).Value;
  end;
end;

function TControllerFuelSupplies.Save: boolean;
begin
  Result := FFuel.Save;
end;

function TControllerFuelSupplies.Search(aParam: array of variant): boolean;
begin
  Result := FFuel.Search(aParam);
end;

function TControllerFuelSupplies.SetupFieldsClass: boolean;
begin
  Result := FFuel.SetupFieldsClass;
end;

function TControllerFuelSupplies.SetupFieldsData
  (aParam: array of variant): boolean;
begin
  Result := FFuel.SetupFieldsData(aParam);
end;

end.
