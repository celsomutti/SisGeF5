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
    function SetupFieldsClass(aParam: array of variant): boolean;
    function GetFieldsParam(var aParam: array of variant): boolean;
  end;

implementation

{ TControllerTransportInputs }

constructor TControllerTransportInputs.Create;
begin
  FFieldsQuery := ['ID_INSUMO', 'DES_INSUMO', 'DES_UNIDADE', 'DES_LOG'];
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
  for i := 0 to Pred(Inputs.Query.FieldCount) do
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
  Result := Search(aParam);
end;

function TControllerTransportInputs.SetupFieldsClass(aParam: array of variant): boolean;
begin
  if (FInputs.Acao = tacIncluir) or (FInputs.Acao = tacAlterar)  then
  begin
    FInputs.ID := aParam[0];
    FInputs.Descricao := aParam[1];
    FInputs.Unidade := aParam[2];
    FInputs.Log := aParam[3];
  end
  else
  begin
    FInputs.ID := FInputs.Query.FieldByName(FFieldsQuery[0]).Value;
    FInputs.Descricao := FInputs.Query.FieldByName(FFieldsQuery[1]).Value;
    FInputs.Unidade := FInputs.Query.FieldByName(FFieldsQuery[2]).Value;
    FInputs.Log := FInputs.Query.FieldByName(FFieldsQuery[3]).Value;
  end;

end;

end.
