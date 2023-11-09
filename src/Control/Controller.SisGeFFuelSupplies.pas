unit Controller.SisGeFFuelSupplies;

interface

uses System.Classes, Model.SisGeFFuelSupplies, Common.ENum, System.Sysutils, Dialogs;

  type
    TControllerFuelSupplies = class
    private
      FFuel : TFuelSupplies;
      FFieldsQuery: array of variant;
    public
      constructor Create;
      destructor Destroy;

      property FuelSuplies: TFuelSupplies read FFuel write FFuel;

      function Save(): boolean;
      function Search(aParam: array of variant): boolean;
      function SetupFieldsClass(aParam: array of variant): boolean;
      function GetFieldsParam(var aParam: array of variant): boolean;
    end;

implementation

{ TControllerFuelSupplies }


constructor TControllerFuelSupplies.Create;
begin
  FFieldsQuery := ['NUM_ABASTECIMENTO', 'NUM_CUPOM', 'COD_ENTREGADOR', 'DES_PLACA', 'DAT_ABASTECIMENTO', 'DES_PRODUTO',
  'QTD_ABASTECIMENTO', 'VAL_UNITARIO', 'VAL_TOTAL', 'NOM_EXECUTANTE', 'DAT_MANUTENCAO', 'DOM_DESCONTO', 'NUM_EXTRATO',
  'VAL_VERBA_COMBUSTIVEL', 'VAL_DESCONTO', 'DAT_BASE', 'NOM_ENTREGADOR', 'ID_CONTROLE'];
  FFuel := TFuelSupplies.Create;
end;

destructor TControllerFuelSupplies.Destroy;
begin
  FFuel.Free;
end;

function TControllerFuelSupplies.GetFieldsParam(var aParam: array of variant): boolean;
var
  i: integer;
begin
    for i := 0 to Pred(FFuel.Query.FieldCount) do
    begin
      aParam[i] := FFuel.Query.FieldByName(FFieldsQuery[i]).Value;
    end;
//  try
//    aParam[0] := FFuel.Query.FieldByName(FFieldsQuery[0]).Value;
//    aParam[1] := FFuel.Query.FieldByName(FFieldsQuery[1]).Value;
//    aParam[2] := FFuel.Query.FieldByName(FFieldsQuery[2]).Value;
//    aParam[3] := FFuel.Query.FieldByName(FFieldsQuery[3]).Value;
//    aParam[4] := FFuel.Query.FieldByName(FFieldsQuery[4]).Value;
//    aParam[5] := FFuel.Query.FieldByName(FFieldsQuery[5]).Value;
//    aParam[6] := FFuel.Query.FieldByName(FFieldsQuery[6]).Value;
//    aParam[7] := FFuel.Query.FieldByName(FFieldsQuery[7]).Value;
//    aParam[8] := FFuel.Query.FieldByName(FFieldsQuery[8]).Value;
//    aParam[9] := FFuel.Query.FieldByName(FFieldsQuery[9]).Value;
//    aParam[10] := FFuel.Query.FieldByName(FFieldsQuery[10]).Value;
//    aParam[11] := FFuel.Query.FieldByName(FFieldsQuery[11]).Value;
//    aParam[12] := FFuel.Query.FieldByName(FFieldsQuery[12]).Value;
//    aParam[13] := FFuel.Query.FieldByName(FFieldsQuery[13]).Value;
//    aParam[14] := FFuel.Query.FieldByName(FFieldsQuery[14]).Value;
//    aParam[15] := FFuel.Query.FieldByName(FFieldsQuery[15]).Value;
//    aParam[16] := FFuel.Query.FieldByName(FFieldsQuery[16]).Value;
//    aParam[17] := FFuel.Query.FieldByName(FFieldsQuery[17]).Value;
//  except on E: Exception do
//    ShowMessage(E.Message);
//  end;
end;

function TControllerFuelSupplies.Save: boolean;
begin
  Result := FFuel.Save;
end;

function TControllerFuelSupplies.Search(aParam: array of variant): boolean;
begin
  Result := FFuel.Search(aParam);
end;

function TControllerFuelSupplies.SetupFieldsClass(aParam: array of variant): boolean;
begin
  if (FFuel.Acao = tacIncluir) or (FFuel.Acao = tacAlterar)  then
  begin
    FFuel.ID := aParam[0];
    FFuel.Cupom := aParam[1];
    FFuel.Entregador := aParam[2];
    FFuel.Placa := aParam[3];
    FFuel.Data := aParam[4];
    FFuel.Produto := aParam[5];
    FFuel.Quantidade := aParam[6];;
    FFuel.ValorUnitario := aParam[7];
    FFuel.ValorTotal := aParam[8];
    FFuel.Executante := aParam[9];
    FFuel.DataManutencao := aParam[10];
    FFuel.FlagDesconto := aParam[11];
    FFuel.NumeroExtrato := aParam[12];
    FFuel.ValorVerba := aParam[13];
    FFuel.ValorDesconto := aParam[14];
    FFuel.DataBase := aParam[15];
    FFuel.NomeEntregador := aParam[16];
    FFuel.Viagem := aParam[17];
  end
  else
  begin
    FFuel.ID := FFuel.Query.FieldByName(FFieldsQuery[0]).Value;
    FFuel.Cupom := FFuel.Query.FieldByName(FFieldsQuery[1]).Value;
    FFuel.Entregador := FFuel.Query.FieldByName(FFieldsQuery[2]).Value;
    FFuel.Placa := FFuel.Query.FieldByName(FFieldsQuery[3]).Value;
    FFuel.Data := FFuel.Query.FieldByName(FFieldsQuery[4]).Value;
    FFuel.Produto := FFuel.Query.FieldByName(FFieldsQuery[5]).Value;
    FFuel.Quantidade := FFuel.Query.FieldByName(FFieldsQuery[6]).Value;;
    FFuel.ValorUnitario := FFuel.Query.FieldByName(FFieldsQuery[7]).Value;
    FFuel.ValorTotal := FFuel.Query.FieldByName(FFieldsQuery[8]).Value;
    FFuel.Executante := FFuel.Query.FieldByName(FFieldsQuery[9]).Value;
    FFuel.DataManutencao := FFuel.Query.FieldByName(FFieldsQuery[10]).Value;
    FFuel.FlagDesconto := FFuel.Query.FieldByName(FFieldsQuery[11]).Value;
    FFuel.NumeroExtrato := FFuel.Query.FieldByName(FFieldsQuery[12]).Value;
    FFuel.ValorVerba := FFuel.Query.FieldByName(FFieldsQuery[13]).Value;
    FFuel.ValorDesconto := FFuel.Query.FieldByName(FFieldsQuery[14]).Value;
    FFuel.DataBase := FFuel.Query.FieldByName(FFieldsQuery[15]).Value;
    FFuel.NomeEntregador := FFuel.Query.FieldByName(FFieldsQuery[16]).Value;
    FFuel.Viagem := FFuel.Query.FieldByName(FFieldsQuery[17]).Value;
  end;
end;

end.
