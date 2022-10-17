unit View.SisGeFExtractPeriodicals;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, System.Actions, Vcl.ActnList, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Controller.SisGeFTiragens, Common.Utils, cxCurrencyEdit;

type
  Tview_SisGeFExtractPeriodicals = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dataInicial: TcxDateEdit;
    dxLayoutItem1: TdxLayoutItem;
    dataFinal: TcxDateEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    cxButton2: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    gridExtractDBTableView1: TcxGridDBTableView;
    gridExtractLevel1: TcxGridLevel;
    gridExtract: TcxGrid;
    dxLayoutItem6: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    actionList: TActionList;
    actionRunProcess: TAction;
    actionExportDataGrid: TAction;
    actionClearDataGrid: TAction;
    actionCloseForm: TAction;
    memTableExtract: TFDMemTable;
    memTableExtractcod_macro: TIntegerField;
    memTableExtractdes_macro: TStringField;
    ds: TDataSource;
    gridExtractDBTableView1cod_macro: TcxGridDBColumn;
    gridExtractDBTableView1des_macro: TcxGridDBColumn;
    gridExtractDBTableView1qtd_tiragem: TcxGridDBColumn;
    memTableExtractqtd_tiragem: TFMTBCDField;
    procedure dsStateChange(Sender: TObject);
    procedure actionRunProcessExecute(Sender: TObject);
    procedure actionExportDataGridExecute(Sender: TObject);
    procedure actionClearDataGridExecute(Sender: TObject);
    procedure actionCloseFormExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure RunProcess;
    procedure ExportGrid;
    procedure ClearGrid;
  public
    { Public declarations }
  end;

var
  view_SisGeFExtractPeriodicals: Tview_SisGeFExtractPeriodicals;

implementation

{$R *.dfm}

uses Data.SisGeF;

{ Tview_SisGeFExtractPeriodicals }

procedure Tview_SisGeFExtractPeriodicals.actionClearDataGridExecute(Sender: TObject);
begin
  ClearGrid;
end;

procedure Tview_SisGeFExtractPeriodicals.actionCloseFormExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_SisGeFExtractPeriodicals.actionExportDataGridExecute(Sender: TObject);
begin
  ExportGrid;
end;

procedure Tview_SisGeFExtractPeriodicals.actionRunProcessExecute(Sender: TObject);
begin
  RunProcess;
end;

procedure Tview_SisGeFExtractPeriodicals.ClearGrid;
begin
  dataInicial.Clear;
  dataFinal.Clear;
  memTableExtract.Active := False;
  dataInicial.SetFocus;
end;

procedure Tview_SisGeFExtractPeriodicals.dsStateChange(Sender: TObject);
begin
  if ds.State = dsBrowse then
  begin
    actionExportDataGrid.Enabled := True;
    actionClearDataGrid.Enabled := True;
  end
  else
  begin
    actionExportDataGrid.Enabled := False;
    actionClearDataGrid.Enabled := False;
  end;
end;

procedure Tview_SisGeFExtractPeriodicals.ExportGrid;
var
  fnUtil : Common.Utils.TUtils;
  sMensagem: String;
begin
  try
    fnUtil := Common.Utils.TUtils.Create;

    if gridExtractDBTableView1.ViewData.RowCount = 0 then Exit;

    if Data_Sisgef.SaveDialog.Execute() then
    begin
      if FileExists(Data_Sisgef.SaveDialog.FileName) then
      begin
        sMensagem := 'Arquivo ' + Data_Sisgef.SaveDialog.FileName + ' já existe! Sobrepor ?';
        if Application.MessageBox(PChar(sMensagem), 'Sobrepor', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit
      end;

      fnUtil.ExportarDados(gridExtract,Data_Sisgef.SaveDialog.FileName);

    end;
  finally
    fnUtil.Free;
  end;
end;

procedure Tview_SisGeFExtractPeriodicals.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  memTableExtract.Active := False;
  Action := caFree;
  view_SisGeFExtractPeriodicals := nil;
end;

procedure Tview_SisGeFExtractPeriodicals.RunProcess;
var
  FTiragem : TControllerSisGeFTiragens;
begin
  try
    FTiragem := TControllerSisGeFTiragens.Create;
    if not FTiragem.ReturnExtract(dataInicial.Date, dataFinal.Date) then
    begin
      MessageDlg(FTiragem.Tiragens.Mensagem, mtWarning, [mbCancel], 0);
      Exit;
    end;
    memTableExtract.Active := False;
    memTableExtract.Data := FTiragem.Tiragens.Query;
    FTiragem.Tiragens.Query.Active := False;
    FTiragem.Tiragens.Query.Connection.Connected := False;
  finally
    FTiragem.Free;
  end;
end;

end.
