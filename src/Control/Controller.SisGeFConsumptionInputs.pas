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
      function SetupFieldsClass(aParam: array of variant): boolean;
      function GetFieldsParam(var aParam: array of variant): boolean;
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

function TControllerConsumptionInputs.SetupFieldsClass(aParam: array of variant): boolean;
begin
if (FInputs.Acao = tacIncluir) or (FInputs
.Acao = tacAlterar)  then
  begin
    FInputs.ID := aParam[0];
    FInputs.IDInsumo := aParam[1];
    FInputs.PlacaVeiculo := aParam[2];
    FInputs.Data := aParam[3];
    FInputs.KMConsumo := aParam[4];
    FInputs.Viagem := aParam[5];
    FInputs.Quantidade := aParam[6];;
    FInputs.ValorConsumo := aParam[7];
    FInputs.FlagEstoque := aParam[8];
    FInputs.Log := aParam[9];
  end
  else
  begin
    FInputs.ID := FInputs.Query.FieldByName(FFieldsQuery[0]).Value;
    FInputs.IDInsumo := FInputs.Query.FieldByName(FFieldsQuery[1]).Value;
    FInputs.PlacaVeiculo := FInputs.Query.FieldByName(FFieldsQuery[2]).Value;
    FInputs.Data := FInputs.Query.FieldByName(FFieldsQuery[3]).Value;
    FInputs.KMConsumo := FInputs.Query.FieldByName(FFieldsQuery[4]).Value;
    FInputs.Viagem := FInputs.Query.FieldByName(FFieldsQuery[5]).Value;
    FInputs.Quantidade := FInputs.Query.FieldByName(FFieldsQuery[6]).Value;
    FInputs.ValorConsumo := FInputs.Query.FieldByName(FFieldsQuery[7]).Value;
    FInputs.FlagEstoque := FInputs.Query.FieldByName(FFieldsQuery[8]).Value;
    FInputs.Log := FInputs.Query.FieldByName(FFieldsQuery[9]).Value;
  end;

end;

end.
