unit Controller.SisGeFTransportInputs;

interface

uses System.Classes, Common.ENum, System.Sysutils, Dialogs, Model.SisGeFTransportInputs;


type
  TControllerTransportInputs = class
  private
    FInputs: TTransportInputs;
    FFieldsQuery: array of variant;
  public
    constructor Create;
    destructor Destroy;

    property Inputs: TTransportInputs read FInputs write FInputs;

    function Save(): boolean;
    function Search(aParam: array of variant): boolean;
    function SetupFieldsClass: boolean;
    function GetFieldsParam(var aParam: array of variant): boolean;
    function SetupFieldsData(aParam: array of variant): boolean;

  end;

implementation

{ TControllerTransportInputs }

constructor TControllerTransportInputs.Create;
begin
  FInputs := TTransportInputs.Create;
end;

destructor TControllerTransportInputs.Destroy;
begin
  FInputs.Free;
end;

function TControllerTransportInputs.GetFieldsParam(var aParam: array of variant): boolean;
var
  i: integer;
begin
  for i := 0 to Pred(FInputs.Query.FieldCount) do
  begin
    aParam[i] := FInputs.Query.FieldByName(FFieldsQuery[i]).Value;
  end;
end;

function TControllerTransportInputs.Save: boolean;
begin
  Result := FInputs.Save;
end;

function TControllerTransportInputs.Search(aParam: array of variant): boolean;
begin
  Result := FInputs.Search(aParam);
end;

function TControllerTransportInputs.SetupFieldsClass: boolean;
begin
  Result := FInputs.SetupFieldsClass;
end;

function TControllerTransportInputs.SetupFieldsData(aParam: array of variant): boolean;
begin

end;

end.
