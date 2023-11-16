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

//function TControllerTravelControl.SetupFieldsClass
//  (aParam: array of variant): boolean;
//begin
//if (FTravel.Acao = tacIncluir) or (FTravel.Acao = tacAlterar)  then
//  begin
//    FTravel.ID := aParam[0];
//    FTravel.SM := aParam[1];
//    FTravel.Data := aParam[2];
//    FTravel.Cliente := aParam[3];
//    FTravel.Operacao := aParam[4];
//    FTravel.PlacaVeiculo := aParam[5];
//    FTravel.Motorista := aParam[6];;
//    FTravel.KMSaida := aParam[7];
//    FTravel.HoraSaida := aParam[8];
//    FTravel.KMRetorno := aParam[9];
//    FTravel.HoraRetorno := aParam[10];
//    FTravel.KMRodado := aParam[11];
//    FTravel.Servico := aParam[12];
//    FTravel.Observacao := aParam[13];
//    FTravel.ValorServico := aParam[14];
//    FTravel.Status := aParam[15];
//    FTravel.Log := aParam[16];
//  end
//  else
//  begin
//    FTravel.ID := FTravel.Query.FieldByName(FFieldsQuery[0]).Value;
//    FTravel.SM := FTravel.Query.FieldByName(FFieldsQuery[1]).Value;
//    FTravel.Data := FTravel.Query.FieldByName(FFieldsQuery[2]).Value;
//    FTravel.Cliente := FTravel.Query.FieldByName(FFieldsQuery[3]).Value;
//    FTravel.Operacao := FTravel.Query.FieldByName(FFieldsQuery[4]).Value;
//    FTravel.PlacaVeiculo := FTravel.Query.FieldByName(FFieldsQuery[5]).Value;
//    FTravel.Motorista := FTravel.Query.FieldByName(FFieldsQuery[6]).Value;
//    FTravel.KMSaida := FTravel.Query.FieldByName(FFieldsQuery[7]).Value;
//    FTravel.HoraSaida := FTravel.Query.FieldByName(FFieldsQuery[8]).Value;
//    FTravel.KMRetorno := FTravel.Query.FieldByName(FFieldsQuery[9]).Value;
//    FTravel.HoraRetorno := FTravel.Query.FieldByName(FFieldsQuery[10]).Value;
//    FTravel.KMRodado := FTravel.Query.FieldByName(FFieldsQuery[11]).Value;
//    FTravel.Servico := FTravel.Query.FieldByName(FFieldsQuery[12]).Value;
//    FTravel.Observacao := FTravel.Query.FieldByName(FFieldsQuery[13]).Value;
//    FTravel.ValorServico := FTravel.Query.FieldByName(FFieldsQuery[14]).Value;
//    FTravel.Status := FTravel.Query.FieldByName(FFieldsQuery[15]).Value;
//    FTravel.Log := FTravel.Query.FieldByName(FFieldsQuery[16]).Value;
//  end;
//end;

end.
