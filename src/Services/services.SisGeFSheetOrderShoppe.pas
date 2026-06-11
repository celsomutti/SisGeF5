unit services.SisGeFSheetOrderShoppe;

interface

  uses Generics.Collections, System.Classes, System.SysUtils, Excel4Delphi, Excel4Delphi.Stream, ComObj, System.Variants,
  FireDAC.Comp.Client;

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
        FTable        : TFDMemTable;
        FToTable      : boolean;
        FCliente      : integer;
        FDate         : string;

        function ValidaPlanilha(): boolean;
        function ValidaPlanilhaXLS(): boolean;
        function ValidaPlanilhaCSV(): boolean;
      public
        property HoraEntrega  : string      read FHoraEntrega   write FHoraEntrega;
        property Pedido       : string      read FPedido        write FPedido;
        property Origem       : string      read FOrigem        write FOrigem;
        property Destino      : string      read FDestino       write FDestino;
        property NumeroTO     : string      read FNumeroTO      write FNumeroTO;
        property RotaLH       : string      read FRotaLH        write FRotaLH;

        property ToTable      : boolean     read FToTable       write FToTable;
        property FileName     : string      read FFileName      write FFileName;
        property Mensagem     : string      read FMensagem      write FMensagem;
        property Table        : TFDMemTable read FTable         write FTable;
        property Cliente      : integer     read FCliente       write FCliente;

        property Planilha: TObjectList<TSheetOrdersShopee> read FPlanilha write FPlanilha;

        function GetSheet(): boolean;
        function GetSheetXLS(): boolean;
        function GetSheetCSV(): boolean;
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

    if FToTable then
    begin
      if FTable.FieldCount = 0 then
      begin
        FMensagem := 'Sheet : Tabela não está definida!';
        Exit;
      end;
    end;
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
    if not FToTable then
    begin
      FPlanilha := TObjectList<TSheetOrdersShopee>.Create();
      for iRow := iStart to iRows - 1 do
      begin
        FPlanilha.Add(TSheetOrdersShopee.Create);
        FPlanilha[Pred(iRow)].FHoraEntrega  := workBook.Sheets[iSheet].CellRef['A', iRow].AsString;
        FPlanilha[Pred(iRow)].FPedido       := workBook.Sheets[iSheet].CellRef['B', iRow].AsString;
        FPlanilha[Pred(iRow)].FOrigem       := workBook.Sheets[iSheet].CellRef['C', iRow].AsString;
        FPlanilha[Pred(iRow)].FDestino      := workBook.Sheets[iSheet].CellRef['D', iRow].AsString;
        FPlanilha[Pred(iRow)].FNumeroTO     := workBook.Sheets[iSheet].CellRef['E', iRow].AsString;
        FPlanilha[Pred(iRow)].FRotaLH       := workBook.Sheets[iSheet].CellRef['F', iRow].AsString;
        if FPlanilha.Count = 0 then
        begin
          FMensagem := 'Sheet : Nenhuma informação foi encontrada!';
          Exit;
        end;
      end;
    end
    else
    begin
      FTable.Active := False;
      FTable.Active := True;
      for iRow := iStart to iRows - 1 do
      begin
        FDate := Copy(workBook.Sheets[iSheet].CellRef['A', iRow].AsString,9,2) + '/' +
                 Copy(workBook.Sheets[iSheet].CellRef['A', iRow].AsString,6,2) + '/' +
                 Copy(workBook.Sheets[iSheet].CellRef['A', iRow].AsString,1,4) + ' ' +
                 Copy(workBook.Sheets[iSheet].CellRef['A', iRow].AsString,12,8);

        FTable.Insert;
        FTable.FieldByName('HoraEntrega').AsDateTime  := StrToDateTime(FDate);
        FTable.FieldByName('Pedido').AsString         := workBook.Sheets[iSheet].CellRef['B', iRow].AsString;
        FTable.FieldByName('Rastreio').AsString       := 'Origem: ' +  workBook.Sheets[iSheet].CellRef['C', iRow].AsString + chr(13) +
                                                         'Destino: ' + workBook.Sheets[iSheet].CellRef['D', iRow].AsString;
        FTable.FieldByName('NumeroTO').AsString       := workBook.Sheets[iSheet].CellRef['E', iRow].AsString;
        FTable.FieldByName('RotaLH').AsString         := workBook.Sheets[iSheet].CellRef['F', iRow].AsString;
        FTable.FieldByName('idCliente').AsInteger     := FCliente;
        FTable.Post;
      end;
      if FTable.RecordCount = 0 then
      begin
        FMensagem := 'Sheet : Nenhuma informação foi encontrada!';
        Exit;
      end;
    end;
    Result := True;
  finally
    workBook.Free;
  end;
end;

function TSheetOrdersShopee.GetSheetCSV: boolean;
var
  sLinhas: TStringList;
  sColunas: TStringList;
  i: Integer;
begin
  Result := False;
  sLinhas := TStringList.Create;
  sColunas := TStringList.Create;
   try
     if not ValidaPlanilhaCSV() then
      begin
        FMensagem := 'Sheet : Planilha informada não é válida!';
      end;
      sLinhas.LoadFromFile(FFileName);
      sColunas.Delimiter := ';';
      sColunas.StrictDelimiter := True;
      if FToTable then
      begin
        if FTable.FieldCount = 0 then
        begin
          FMensagem := 'Sheet : Tabela não está definida!';
          Exit;
        end;
      end;
      if sLinhas.Count < 2 then
      begin
        FMensagem := 'Sheet : Planilha está vazia!';
        Exit;
      end;
      if not FToTable then
      begin
        for i := 1 to Pred(sLinhas.Count) do
        begin
          sColunas.DelimitedText := sLinhas[i];
          FPlanilha.Add(TSheetOrdersShopee.Create);
          FPlanilha[i].FHoraEntrega  :=  sColunas[0];
          FPlanilha[i].FPedido       :=  sColunas[1];
          FPlanilha[i].FOrigem       :=  sColunas[2];
          FPlanilha[i].FDestino      :=  sColunas[3];
          FPlanilha[i].FNumeroTO     :=  sColunas[4];
          FPlanilha[i].FRotaLH       :=  sColunas[5];
        end;
      end
      else
      begin
        FTable.Active := False;
        FTable.Active := True;
        for i := 1 to Pred(sLinhas.Count) do
        begin
          FDate := Copy(sColunas[0],9,2) + '/' +
                   Copy(sColunas[0],6,2) + '/' +
                   Copy(sColunas[0],1,4) + ' ' +
                   Copy(sColunas[0],12,8);

          FTable.Insert;
          FTable.FieldByName('HoraEntrega').AsDateTime  := StrToDateTime(FDate);
          FTable.FieldByName('Pedido').AsString         := sColunas[1];
          FTable.FieldByName('Rastreio').AsString       := 'Origem: ' +  sColunas[2] + chr(13) +
                                                           'Destino: ' + sColunas[3];
          FTable.FieldByName('NumeroTO').AsString       := sColunas[4];
          FTable.FieldByName('RotaLH').AsString         := sColunas[5];
          FTable.FieldByName('idCliente').AsInteger     := FCliente;
          FTable.Post;
        end;
        if FTable.RecordCount = 0 then
        begin

          FMensagem := 'Sheet : Nenhuma informação foi encontrada!';
          Exit;
        end;
      end;
      Result := True;
   finally
    sLinhas.Free;
    sColunas.Free;
   end;
end;

function TSheetOrdersShopee.GetSheetXLS: boolean;
var
  ExcelApp, Workbook, Sheet: Variant;
  iRow, iRows, iSheet, iSheets, iCol, iCols, iStart: integer;
begin
  iCol      :=  0;
  iCols     :=  0;
  iRow      :=  0;
  iRows     :=  0;
  iSheet    :=  0;
  iSheets   :=  0;
  iStart    :=  0;
  Result    :=  False;
  try
    try
      if not ValidaPlanilhaXLS() then
      begin
        FMensagem := 'Sheet : Planilha informada não é válida!';
        Exit
      end;
      ExcelApp := CreateOleObject('Excel.Application');
      // ExcelApp.Visible := True; // Opcional: torna o Excel visível
      Workbook := ExcelApp.Workbooks.Open(FileName);
      iSheet := 1;
      Sheet := Workbook.WorkSheets[iSheet];
      iRows := Sheet.UsedRange.Rows.Count;
      if FToTable then
      begin
        if FTable.FieldCount = 0 then
        begin
          FMensagem := 'Sheet : Tabela não está definida!';
          Exit;
        end;
      end;
      if iRows < 2 then
      begin
        FMensagem := 'Sheet : Planilha está vazia!';
        Exit;
      end;
      if not FToTable then
      begin
        FPlanilha := TObjectList<TSheetOrdersShopee>.Create();
        iStart := 2;
        for iRow := iStart to iRows do
        begin
          FPlanilha.Add(TSheetOrdersShopee.Create);
          FPlanilha[iRow - 2].FHoraEntrega  :=  Sheet.Cells[iRow,1].Value;
          FPlanilha[iRow - 2].FPedido       :=  Sheet.Cells[iRow,2].Value;
          FPlanilha[iRow - 2].FOrigem       :=  Sheet.Cells[iRow,3].Value;
          FPlanilha[iRow - 2].FDestino      :=  Sheet.Cells[iRow,4].Value;
          FPlanilha[iRow - 2].FNumeroTO     :=  Sheet.Cells[iRow,5].Value;
          FPlanilha[iRow - 2].FRotaLH       :=  Sheet.Cells[iRow,6].Value;
        end;
        if FPlanilha.Count = 0 then
        begin
          FMensagem := 'Sheet : Nenhuma informação foi encontrada!';
          Exit;
        end;
      end
      else
      begin
        FTable.Active := False;
        FTable.Active := True;
         for iRow := iStart to iRows do
        begin
          FDate := Copy(Sheet.Cells[iRow,1].Value,9,2) + '/' +
                   Copy(Sheet.Cells[iRow,1].Value,6,2) + '/' +
                   Copy(Sheet.Cells[iRow,1].Value,1,4) + ' ' +
                   Copy(Sheet.Cells[iRow,1].Value,12,8);
          FTable.Insert;
          FTable.FieldByName('HoraEntrega').AsDateTime  := StrToDateTime(FDate);
          FTable.FieldByName('Pedido').AsString         := Sheet.Cells[iRow,2].Value;
          FTable.FieldByName('Rastreio').AsString       := 'Origem: ' +  Sheet.Cells[iRow,3].Value + chr(13) +
                                                           'Destino: ' + Sheet.Cells[iRow,4].Value;
          FTable.FieldByName('NumeroTO').AsString       := Sheet.Cells[iRow,5].Value;
          FTable.FieldByName('RotaLH').AsString         := Sheet.Cells[iRow,6].Value;
          FTable.FieldByName('idCliente').AsInteger     := FCliente;
          FTable.Post;
        end;
        if FTable.RecordCount = 0 then
        begin

          FMensagem := 'Sheet : Nenhuma informação foi encontrada!';
          Exit;
        end;
      end;
    except
      on E: Exception do
        FMensagem := 'Sheet : ' + E.Message;
    end;
    Result := True;
  finally
    Workbook.Close(False);
    ExcelApp.Quit;
    Workbook := Unassigned;
    ExcelApp := Unassigned;
    Sheet := Unassigned;
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

function TSheetOrdersShopee.ValidaPlanilhaCSV: boolean;
var
  sLinhas: TStringList;
  sColunas: TStringList;
begin
  Result := False;
  sLinhas := TStringList.Create;
  sColunas := TStringList.Create;
  try
    sLinhas.LoadFromFile(FFileName);
    sColunas.Delimiter := ';';
    sColunas.StrictDelimiter := True;
    sColunas.DelimitedText := sLinhas[0];

    if sColunas[0] <> 'Horario de entrega' then
      Exit;
    if sColunas[1] <> 'Pedido (TN)' then
      Exit;
    if sColunas[2] <> 'Origem' then
      Exit;
    if sColunas[3] <> 'Destino' then
      Exit;
    if sColunas[4] <> 'Número da TO' then
      Exit;
    if sColunas[5] <> 'Rota de LH' then
      Exit;
    Result := True;
  finally
    sLinhas.Free;
    sColunas.Free;
  end;
end;

function TSheetOrdersShopee.ValidaPlanilhaXLS: boolean;
var
  ExcelApp, Workbook, Sheet: Variant;
  iSheet : Integer;
begin
  Result    :=  False;
  try
    try
      iSheet := 1;
      ExcelApp := CreateOleObject('Excel.Application');
      Workbook := ExcelApp.Workbooks.Open(FileName);
      Sheet := Workbook.WorkSheets[iSheet];
      if Sheet.Cells[1,1].Value <> 'Horario de entrega' then
        Exit;
      if Sheet.Cells[1,2].Value <> 'Pedido (TN)' then
        Exit;
      if Sheet.Cells[1,3].Value <> 'Origem' then
        Exit;
      if Sheet.Cells[1,4].Value <> 'Destino' then
        Exit;
      if Sheet.Cells[1,5].Value <> 'Número da TO' then
        Exit;
      if Sheet.Cells[1,6].Value <> 'Rota de LH' then
        Exit;
    except
      on E: Exception do
        FMensagem := 'Sheet : ' + E.Message;
    end;
    Result := True;
  finally
    Workbook.Close(False);
    ExcelApp.Quit;
    Workbook := Unassigned;
    ExcelApp := Unassigned;
    Sheet := Unassigned;
  end;
end;

end.
