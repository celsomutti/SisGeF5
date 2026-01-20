unit services.SisGeFSheetOrderShoppe;

interface

  uses Generics.Collections, System.Classes, System.SysUtils, Excel4Delphi, Excel4Delphi.Stream, Common.Utils;

  type
    TSheetOrdersShopee = class
      protected
      private
        FPlanilha     : TObjectList<TSheetOrdersShopee>;
        FPedido       : string;
        FRotaLH       : string;
        FHoraEntrega  : string;
        FNumeroTO     : string;
        FDestino      : string;
        FOrigem       : string;
        FFileName     : string;
        FMensagem     : string;

        function ValidaPlanilha(): boolean;
      public
        property HoraEntrega  : string  read FHoraEntrega write FHoraEntrega;
        property Pedido       : string  read FPedido      write FPedido;
        property Origem       : string  read FOrigem      write FOrigem;
        property Destino      : string  read FDestino     write FDestino;
        property NumeroTO     : string  read FNumeroTO    write FNumeroTO;
        property RotaLH       : string  read FRotaLH      write FRotaLH;

        property FileName     : string read FFileName     write FFileName;
        property Mensagem     : string read FMensagem     write FMensagem;

        property Planilha: TObjectList<TSheetOrdersShopee> read FPlanilha write FPlanilha;

        function GetSheet(): boolean;
    end;
implementation

{ TSheetOrdersShopee }

function TSheetOrdersShopee.GetSheet(): boolean;
var
  workBook: TZWorkBook;
  iRow, iRows, iSheet, iSheets, iCol, iCols, iStart: integer;
begin
  workBook  :=  TZWorkBook.Create(nil);
  iCol      :=  0;
  iCols     :=  0;
  iRow      :=  0;
  iRows     :=  0;
  iSheet    :=  0;
  iSheets   :=  0;
  iStart    :=  0;
  Result    :=  False;
  try
    workBook.LoadFromFile(FFileName);
    iRows := workBook.Sheets[iSheet].RowCount -1;
    FPlanilha := TObjectList<TSheetOrdersShopee>.Create();
    if iRows < 2 then
    begin
      FMensagem := 'Sheet : Planilha está vazia!';
      Exit;
    end;
    if not ValidaPlanilha() then
    begin
      FMensagem := 'Sheet : Planilha informada não é válida!';
    end;
    iStart := 1;
    for iRow := iStart to iRows - 1 do
    begin
      FPlanilha.Add(TSheetOrdersShopee.Create);
      FPlanilha[Pred(iRow)].FHoraEntrega  := workBook.Sheets[iSheet].CellRef['A', iRow].AsString;
      FPlanilha[Pred(iRow)].FPedido       := workBook.Sheets[iSheet].CellRef['B', iRow].AsString;
      FPlanilha[Pred(iRow)].FOrigem       := workBook.Sheets[iSheet].CellRef['C', iRow].AsString;
      FPlanilha[Pred(iRow)].FDestino      := workBook.Sheets[iSheet].CellRef['D', iRow].AsString;
      FPlanilha[Pred(iRow)].FNumeroTO     := workBook.Sheets[iSheet].CellRef['E', iRow].AsString;
      FPlanilha[Pred(iRow)].FRotaLH       := workBook.Sheets[iSheet].CellRef['F', iRow].AsString;

    end;
    if FPlanilha.Count = 0 then
    begin
      FMensagem := 'Sheet : Nenhuma informação foi encontrada!';
      Exit;
    end;
    Result := True;
  finally
    workBook.Free;
  end;
end;

function TSheetOrdersShopee.ValidaPlanilha: boolean;
var
  workBook  : TZWorkBook;
  sExt      : String;
begin
  workBook  :=  TZWorkBook.Create(nil);
  Result    :=  False;
  try
    workBook.LoadFromFile(FFileName);
    if workBook.Sheets[0].CellRef['A', 0].AsString <> 'Horario de entrega' then
      Exit;
    if workBook.Sheets[0].CellRef['B', 0].AsString <> 'Pedido (TN)' then
      Exit;
    if workBook.Sheets[0].CellRef['C', 0].AsString <> 'Origem' then
      Exit;
    if workBook.Sheets[0].CellRef['D', 0].AsString <> 'Destino' then
      Exit;
    if workBook.Sheets[0].CellRef['E', 0].AsString <> 'Número da TO' then
      Exit;
    if workBook.Sheets[0].CellRef['F', 0].AsString <> 'Rota de LH' then
      Exit;
    Result := True;
  finally
    workBook.Free;
  end;
end;

end.
