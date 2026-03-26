unit services.SisGeFSheetConfrontations;

interface
  uses Generics.Collections, System.Classes, System.SysUtils, Excel4Delphi, Excel4Delphi.Stream, Common.Utils;

  type
    TSheetConfrontations = class
      protected
      private
        FPlanilha     : TObjectList<TSheetConfrontations>;
        FIdTicket     : string;
        FAssignment   : string;
        FSPXTN        : string;
        FDriver       : string;
        FStation      : string;
        FSLA          : string;
        FAssignee     : string;
        FValue        : string;
        FRejection    : string;
        FCreatedTime  : string;
        FStatus       : string;
        FFileName     : string;
        FMensagem     : string;

        function ValidaPlanilha(): boolean;
      public
        property IdTicket     : string  read FIdTicket    write FIdTicket;
        property Assignment   : string  read FAssignment  write FAssignment;
        property SPXTN        : string  read FSPXTN       write FSPXTN;
        property Driver       : string  read FDriver      write FDriver;
        property Station      : string  read FStation     write FStation;
        property SLA          : string  read FSLA         write FSLA;
        property Assignee     : string  read FAssignee    write FAssignee;
        property Value        : string  read FValue       write FValue;
        property Rejection    : string  read FRejection   write FRejection;
        property CreatedTime  : string  read FCreatedTime write FCreatedTime;
        property Status       : string  read FStatus      write FStatus;

        property FileName     : string read FFileName     write FFileName;
        property Mensagem     : string read FMensagem     write FMensagem;

        property Planilha: TObjectList<TSheetConfrontations> read FPlanilha write FPlanilha;

        function GetSheet(): boolean;
    end;
implementation

{ TSheetConfrontations }

function TSheetConfrontations.GetSheet(): boolean;
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
    FPlanilha := TObjectList<TSheetConfrontations>.Create();
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
      FPlanilha.Add(TSheetConfrontations.Create);
      FPlanilha[Pred(iRow)].FIdTicket   := workBook.Sheets[iSheet].CellRef['A', iRow].AsString;
      FPlanilha[Pred(iRow)].FAssignment := workBook.Sheets[iSheet].CellRef['B', iRow].AsString;
      FPlanilha[Pred(iRow)].FSPXTN      := workBook.Sheets[iSheet].CellRef['C', iRow].AsString;
      FPlanilha[Pred(iRow)].FDriver     := workBook.Sheets[iSheet].CellRef['D', iRow].AsString;
      FPlanilha[Pred(iRow)].FStation    := workBook.Sheets[iSheet].CellRef['E', iRow].AsString;
      FPlanilha[Pred(iRow)].FSLA        := workBook.Sheets[iSheet].CellRef['F', iRow].AsString;
      FPlanilha[Pred(iRow)].FAssignee   := workBook.Sheets[iSheet].CellRef['G', iRow].AsString;
      FPlanilha[Pred(iRow)].Value       := workBook.Sheets[iSheet].CellRef['H', iRow].AsString;
      FPlanilha[Pred(iRow)].FRejection  := workBook.Sheets[iSheet].CellRef['I', iRow].AsString;
      FPlanilha[Pred(iRow)].CreatedTime := workBook.Sheets[iSheet].CellRef['J', iRow].AsString;
      FPlanilha[Pred(iRow)].FStatus     := workBook.Sheets[iSheet].CellRef['K', iRow].AsString;
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

function TSheetConfrontations.ValidaPlanilha: boolean;
var
  workBook  : TZWorkBook;
  sExt      : String;
begin
  workBook  :=  TZWorkBook.Create(nil);
  Result    :=  False;
  try
    workBook.LoadFromFile(FFileName);
    if workBook.Sheets[0].CellRef['A', 0].AsString <> 'IHS Ticket ID' then
      Exit;
    if workBook.Sheets[0].CellRef['B', 0].AsString <> 'Assignment Task ID' then
      Exit;
    if workBook.Sheets[0].CellRef['C', 0].AsString <> 'SPXTN' then
      Exit;
    if workBook.Sheets[0].CellRef['D', 0].AsString <> 'Driver' then
      Exit;
    if workBook.Sheets[0].CellRef['E', 0].AsString <> 'Station' then
      Exit;
    if workBook.Sheets[0].CellRef['F', 0].AsString <> 'SLA Deadline' then
      Exit;
    if workBook.Sheets[0].CellRef['G', 0].AsString <> 'Assignee' then
      Exit;
    if workBook.Sheets[0].CellRef['H', 0].AsString <> 'PNR Order Value' then
      Exit;
    if workBook.Sheets[0].CellRef['I', 0].AsString <> 'Rejection Reason' then
      Exit;
    if workBook.Sheets[0].CellRef['J', 0].AsString <> 'Created Time' then
      Exit;
    if workBook.Sheets[0].CellRef['K', 0].AsString <> 'Status' then
      Exit;
    Result := True;
  finally
    workBook.Free;
  end;
end;
end.
