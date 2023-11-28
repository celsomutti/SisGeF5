unit Controller.SisGeFDestinationTravel;

interface

uses System.Classes, Common.ENum, System.Sysutils, Dialogs, Model.SisGeFDestinationTravel;

  type
    TControllerDestinationTravel = class
    private
      FDestination : TDestinationTravel;
      FFieldsQuery: array of variant;
    public
      constructor Create;
      destructor Destroy;

      property Destination: TDestinationTravel read FDestination write FDestination;

      function Save(): boolean;
      function Search(aParam: array of variant): boolean;
      function SetupFieldsClass(aParam: array of variant): boolean;
      function GetFieldsParam(var aParam: array of variant): boolean;
      function SetupFieldsData(aParam: array of variant): boolean;

    end;

implementation

{ TControllerDestinationTravel }

constructor TControllerDestinationTravel.Create;
begin
  FFieldsQuery := ['COD_DESTINO', 'DES_DESTINO', 'COD_AGENTE', 'DES_LOG', 'ID_CONTROLE'];
  FDestination := TDestinationTravel.Create;
end;

destructor TControllerDestinationTravel.Destroy;
begin
  FDestination.Free;
end;

function TControllerDestinationTravel.GetFieldsParam(var aParam: array of variant): boolean;
var
  i: integer;
begin
  for i := 0 to Pred(FDestination.Query.FieldCount) do
  begin
    aParam[i] := FDestination.Query.FieldByName(FFieldsQuery[i]).Value;
  end;
end;

function TControllerDestinationTravel.Save: boolean;
begin
  Result := FDestination.Save;
end;

function TControllerDestinationTravel.Search(aParam: array of variant): boolean;
begin
  Result := FDestination.Search(aParam);
end;

function TControllerDestinationTravel.SetupFieldsClass(aParam: array of variant): boolean;
begin
  Result := FDestination.SetupFieldsData(aParam);
end;

function TControllerDestinationTravel.SetupFieldsData(aParam: array of variant): boolean;
begin
  Result := FDestination.SetupFieldsData(aParam);
end;

end.
