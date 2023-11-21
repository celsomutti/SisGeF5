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


end.
