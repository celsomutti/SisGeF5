unit Controller.SisGeFFuelSupplies;

interface

uses System.Classes, Model.SisGeFFuelSupplies;

  type
    TControllerFuelSupplies = class
    private
      FFuel : TFuelSupplies;
      FFieldsQuery: TStringlist;
    public
      constructor Create;
      destructor Destroy;

      property FuelSuplies: TFuelSupplies read FFuel write FFuel;

      function Save(): boolean;
      function Search(aParam: array of variant): boolean;
      function SetupFieldsClass(): boolean;
    end;

implementation

{ TControllerFuelSupplies }

constructor TControllerFuelSupplies.Create;
begin
  FFieldsQuery := TStringList.Create;
  FFieldsQuery := ['NUM_ABASTECIMENTO', 'NUM_CUPOM', 'COD_ENTREGADOR', 'DES_PLACA', 'DAT_ABASTECIMENTO', 'DES_PRODUTO',
  'QTD_ABASTECIMENTO', 'VAL_UNITARIO', 'VAL_TOTAL', 'NOM_EXECUTANTE', 'DAT_MANUTENCAO', 'DOM_DESCONTO', 'NUM_EXTRATO',
  'VAL_VERBA_COMBUSTIVEL', 'VAL_DESCONTO', 'DAT_BASE', 'NOM_ENTREGADOR', 'ID_CONTROLE'];
  FFuel := TFuelSupplies.Create;
end;

destructor TControllerFuelSupplies.Destroy;
begin
  FFuel.Free;
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

end.
