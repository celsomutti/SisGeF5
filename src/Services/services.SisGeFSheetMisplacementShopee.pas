unit services.SisGeFSheetMisplacementShopee;

interface

  uses Generics.Collections, System.Classes, System.SysUtils, Excel4Delphi, Excel4Delphi.Stream, Common.Utils;

  type
    TSheetMisplacement = class
      private
        FDataRetorno: string;
        FDataEmail: string;
        FSoc: string;
        FCanal: string;
        FRetorno: String;
        FMilhaResponsavel: string;
        FDataPedido: string;
        FRazaoRecuperacao: string;
        FRastreioCorreios: string;
        FResponsavel: string;
        FValorRecuperacao: string;
        FNumeroRastreio: string;
        FUltimoXpt: string;
        FFmHub: string;
        FNumeroAT: string;
        FJustificativa: string;
        FOrderId: string;
        FDataExtravio: string;
        FPl3Responsaval: string;
        FDataVencimento: string;
        FNotaDebito: string;
        FRows : integer;

        FFileName: string;
        FMensagem: string;
        FPlanilha: TObjectList<TSheetMisplacement>;

        function ValidaPlanilha(): boolean;
      public
        property Retorno          : string read FRetorno          write FRetorno;
        property Justificativa    : string read FJustificativa    write FJustificativa;
        property DataExtravio     : string read FDataExtravio     write FDataExtravio;
        property DataPedido       : string read FDataPedido       write FDataPedido;
        property Canal            : string read FCanal            write FCanal;
        property OrderId          : string read FOrderId          write FOrderId;
        property NumeroRastreio   : string read FNumeroRastreio   write FNumeroRastreio;
        property RastreioCorreios : string read FRastreioCorreios write FRastreioCorreios;
        property Pl3Responsaval   : string read FPl3Responsaval   write FPl3Responsaval;
        property RazaoRecuperacao : string read FRazaoRecuperacao write FRazaoRecuperacao;
        property ValorRecuperacao : string read FValorRecuperacao write FValorRecuperacao;
        property MilhaResponsavel : string read FMilhaResponsavel write FMilhaResponsavel;
        property Responsavel      : string read FResponsavel      write FResponsavel;
        property NumeroAT         : string read FNumeroAT         write FNumeroAT;
        property FmHub            : string read FFmHub            Write FFmHub;
        property Soc              : string read FSoc              write FSoc;
        property UltimoXpt        : string read FUltimoXpt        write FUltimoXpt;
        property DataEmail        : string read FDataEmail        write FDataEmail;
        property DataRetorno      : string read FDataRetorno      write FDataRetorno;
        property NotaDebito       : string read FNotaDebito       write FNotaDebito;
        property DataVencimento   : string read FDataVencimento   write FDataVencimento;

        property FileName         : string read FFileName         write FFileName;
        property Mensagem         : string read FMensagem         write FMensagem;

        property Planilha: TObjectList<TSheetMisplacement> read FPlanilha write FPlanilha;

        function GetSheet(): boolean;
    end;
implementation

{ TSheetMisplacement }

function TSheetMisplacement.GetSheet: boolean;
var
  workBook: TZWorkBook;
  iRow, iSheet, iSheets, iCol, iCols, iStart: integer;
begin
  workBook  :=  TZWorkBook.Create(nil);
  iCol      :=  0;
  iCols     :=  0;
  iRow      :=  0;
  iSheet    :=  0;
  iSheets   :=  0;
  iStart    :=  0;
  Result    :=  False;
  try
//    workBook.LoadFromFile(FFileName);
//    iRows := workBook.Sheets[iSheet].RowCount -1;
    FPlanilha := TObjectList<TSheetMisplacement>.Create();
    if not ValidaPlanilha() then
    begin
      FMensagem := 'Sheet : Planilha informada não é válida!';
    end;
    if FRows < 2 then
    begin
      FMensagem := 'Sheet : Planilha está vazia!';
      Exit;
    end;
    workBook.LoadFromFile(FFileName);
    iStart := 3;
    for iRow := iStart to FRows - 1 do
    begin
      FPlanilha.Add(TSheetMisplacement.Create);
      FPlanilha[iRow - 3].FRetorno          := workBook.Sheets[iSheet].CellRef['A', iRow].AsString;
      FPlanilha[iRow - 3].FJustificativa    := workBook.Sheets[iSheet].CellRef['B', iRow].AsString;
      FPlanilha[iRow - 3].FDataExtravio     := workBook.Sheets[iSheet].CellRef['C', iRow].AsString;
      FPlanilha[iRow - 3].FDataPedido       := workBook.Sheets[iSheet].CellRef['D', iRow].AsString;
      FPlanilha[iRow - 3].FCanal            := workBook.Sheets[iSheet].CellRef['E', iRow].AsString;
      FPlanilha[iRow - 3].FOrderId          := workBook.Sheets[iSheet].CellRef['F', iRow].AsString;
      FPlanilha[iRow - 3].FNumeroRastreio   := workBook.Sheets[iSheet].CellRef['G', iRow].AsString;
      FPlanilha[iRow - 3].FRastreioCorreios := workBook.Sheets[iSheet].CellRef['H', iRow].AsString;
      FPlanilha[iRow - 3].FPl3Responsaval   := workBook.Sheets[iSheet].CellRef['I', iRow].AsString;
      FPlanilha[iRow - 3].FRazaoRecuperacao := workBook.Sheets[iSheet].CellRef['J', iRow].AsString;
      FPlanilha[iRow - 3].FValorRecuperacao := workBook.Sheets[iSheet].CellRef['K', iRow].AsString;
      FPlanilha[iRow - 3].FMilhaResponsavel := workBook.Sheets[iSheet].CellRef['L', iRow].AsString;
      FPlanilha[iRow - 3].FResponsavel      := workBook.Sheets[iSheet].CellRef['M', iRow].AsString;
      FPlanilha[iRow - 3].FNumeroAT         := workBook.Sheets[iSheet].CellRef['N', iRow].AsString;
      FPlanilha[iRow - 3].FFmHub            := workBook.Sheets[iSheet].CellRef['O', iRow].AsString;
      FPlanilha[iRow - 3].FSoc              := workBook.Sheets[iSheet].CellRef['P', iRow].AsString;
      FPlanilha[iRow - 3].FUltimoXpt        := workBook.Sheets[iSheet].CellRef['Q', iRow].AsString;
      FPlanilha[iRow - 3].FDataEmail        := workBook.Sheets[iSheet].CellRef['R', iRow].AsString;
      FPlanilha[iRow - 3].FDataRetorno      := workBook.Sheets[iSheet].CellRef['S', iRow].AsString;
      FPlanilha[iRow - 3].FNotaDebito       := workBook.Sheets[iSheet].CellRef['T', iRow].AsString;
      FPlanilha[iRow - 3].FDataVencimento   := workBook.Sheets[iSheet].CellRef['U', iRow].AsString;
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

function TSheetMisplacement.ValidaPlanilha: boolean;
var
  workBook  : TZWorkBook;
  sExt      : String;
  bFlag     : Boolean;
  iRow      : Integer;
begin
  workBook  :=  TZWorkBook.Create(nil);
  Result    :=  False;
  bFlag     :=  False;
  iRow      :=  2;
  try
    workBook.LoadFromFile(FFileName);
    while not bFlag do
    begin
      if workBook.Sheets[0].CellRef['G', iRow].AsString <> '' then
      begin
        Inc(iRow, 1);
      end
      else
      begin
        FRows := iRow;
        bFlag := True;
      end;
    end;
    if workBook.Sheets[0].CellRef['A', 2].AsString <> 'retorno 3pl' then
      Exit;
    if workBook.Sheets[0].CellRef['B', 2].AsString <> 'justificativa 3pl' then
      Exit;
    if workBook.Sheets[0].CellRef['C', 2].AsString <> 'data do extravio' then
      Exit;
    if workBook.Sheets[0].CellRef['D', 2].AsString <> 'data de criacao do pedido' then
      Exit;
    if workBook.Sheets[0].CellRef['E', 2].AsString <> 'canal logístico' then
      Exit;
    if workBook.Sheets[0].CellRef['F', 2].AsString <> 'order id' then
      Exit;
    Result := True;
  finally
    workBook.Free;
  end;
end;

end.
