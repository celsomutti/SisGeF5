unit View.SisGeFCreditWorksheet;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxImageComboBox, cxMaskEdit, cxTextEdit, cxCurrencyEdit, cxDropDownEdit, cxButtonEdit,
  System.Actions, Vcl.ActnList, cxCheckBox, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  Thread.SisGeFCreditWorksheet, Vcl.WinXCtrls, dxActivityIndicator, Vcl.ExtCtrls;

type
  Tview_SisGeFCreditWorksheet = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    cxLabel1: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    gridCreditWorkssheetDBTableView1: TcxGridDBTableView;
    gridCreditWorkssheetLevel1: TcxGridLevel;
    gridCreditWorkssheet: TcxGrid;
    dxLayoutItem2: TdxLayoutItem;
    dsCreditWorksheet: TDataSource;
    gridCreditWorkssheetDBTableView1id_registro: TcxGridDBColumn;
    gridCreditWorkssheetDBTableView1cod_tipo_extrato: TcxGridDBColumn;
    gridCreditWorkssheetDBTableView1cod_cadastro: TcxGridDBColumn;
    gridCreditWorkssheetDBTableView1nom_cadastro: TcxGridDBColumn;
    gridCreditWorkssheetDBTableView1cod_banco: TcxGridDBColumn;
    gridCreditWorkssheetDBTableView1nom_banco: TcxGridDBColumn;
    gridCreditWorkssheetDBTableView1des_tipo_conta: TcxGridDBColumn;
    gridCreditWorkssheetDBTableView1num_agencia: TcxGridDBColumn;
    gridCreditWorkssheetDBTableView1num_conta: TcxGridDBColumn;
    gridCreditWorkssheetDBTableView1nom_favorecido: TcxGridDBColumn;
    gridCreditWorkssheetDBTableView1num_cpf_cnpj: TcxGridDBColumn;
    gridCreditWorkssheetDBTableView1val_total: TcxGridDBColumn;
    gridCreditWorkssheetDBTableView1des_unique_key: TcxGridDBColumn;
    gridCreditWorkssheetDBTableView1dat_credito: TcxGridDBColumn;
    gridCreditWorkssheetDBTableView1num_extrato: TcxGridDBColumn;
    gridCreditWorkssheetDBTableView1des_forma_pagamento: TcxGridDBColumn;
    gridCreditWorkssheetDBTableView1cod_modalidade_pagamento: TcxGridDBColumn;
    gridCreditWorkssheetDBTableView1cod_forma_pagamento: TcxGridDBColumn;
    dxLayoutGroup3: TdxLayoutGroup;
    tipoExtrato: TcxComboBox;
    dxLayoutItem3: TdxLayoutItem;
    dataCredito: TcxButtonEdit;
    dxLayoutItem4: TdxLayoutItem;
    actionListCrwditWorksheet: TActionList;
    actionShowCalendar: TAction;
    actionProcess: TAction;
    planilhaSalva: TcxCheckBox;
    dxLayoutItem5: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    cxButton2: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutItem9: TdxLayoutItem;
    actionExpandGrid: TAction;
    actionCollapseGrid: TAction;
    actionPanelGrid: TAction;
    dxLayoutGroup5: TdxLayoutGroup;
    actionSaveWorksheet: TAction;
    actionExportGrid: TAction;
    actionCloseForm: TAction;
    cxButton5: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    cxButton6: TcxButton;
    dxLayoutItem11: TdxLayoutItem;
    cxButton7: TcxButton;
    dxLayoutItem12: TdxLayoutItem;
    labelInfo: TcxLabel;
    dxLayoutItem14: TdxLayoutItem;
    actionBIMER: TAction;
    cxButton8: TcxButton;
    dxLayoutItem15: TdxLayoutItem;
    activityIndicator: TdxActivityIndicator;
    dxLayoutItem13: TdxLayoutItem;
    timer: TTimer;
    gridCreditWorkssheetDBTableView1dom_bloqueio: TcxGridDBColumn;
    procedure actionExpandGridExecute(Sender: TObject);
    procedure actionCollapseGridExecute(Sender: TObject);
    procedure actionPanelGridExecute(Sender: TObject);
    procedure timerTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionShowCalendarExecute(Sender: TObject);
    procedure actionProcessExecute(Sender: TObject);
    procedure actionCloseFormExecute(Sender: TObject);
    procedure actionExportGridExecute(Sender: TObject);
  private
    procedure ShowCalendar;
    procedure ProcessWorksheet;
    procedure ProcessCreditWorkshet;
    procedure ExportGrid;
    function ValidadeProcess(): boolean;
  public
    { Public declarations }
  end;

var
  view_SisGeFCreditWorksheet: Tview_SisGeFCreditWorksheet;
  FWorksheet : TThead_SisGefCreditWorksheet;

implementation

{$R *.dfm}

uses Data.SisGeF, View.SisGeFCalendar, Common.Utils;

{ Tview_SisGeFCreditWorksheet }

procedure Tview_SisGeFCreditWorksheet.actionCloseFormExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_SisGeFCreditWorksheet.actionCollapseGridExecute(Sender: TObject);
begin
  gridCreditWorkssheetDBTableView1.ViewData.Collapse(True);
end;

procedure Tview_SisGeFCreditWorksheet.actionExpandGridExecute(Sender: TObject);
begin
  gridCreditWorkssheetDBTableView1.ViewData.Expand(True);
end;

procedure Tview_SisGeFCreditWorksheet.actionExportGridExecute(Sender: TObject);
begin
  ExportGrid;
end;

procedure Tview_SisGeFCreditWorksheet.actionPanelGridExecute(Sender: TObject);
begin
  gridCreditWorkssheetDBTableView1.OptionsView.GroupByBox := (not gridCreditWorkssheetDBTableView1.OptionsView.GroupByBox);
end;

procedure Tview_SisGeFCreditWorksheet.actionProcessExecute(Sender: TObject);
begin
  ProcessWorksheet;
end;

procedure Tview_SisGeFCreditWorksheet.actionShowCalendarExecute(Sender: TObject);
begin
  ShowCalendar;
end;

procedure Tview_SisGeFCreditWorksheet.ExportGrid;
var
  fnUtil : Common.Utils.TUtils;
  sMensagem: String;
begin
  try
    fnUtil := Common.Utils.TUtils.Create;

    if gridCreditWorkssheetDBTableView1.ViewData.RowCount = 0 then Exit;

    if Data_Sisgef.SaveDialog.Execute() then
    begin
      if FileExists(Data_Sisgef.SaveDialog.FileName) then
      begin
        sMensagem := 'Arquivo ' + Data_Sisgef.SaveDialog.FileName + ' j� existe! Sobrepor ?';
        if Application.MessageBox(PChar(sMensagem), 'Sobrepor', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit
      end;

      fnUtil.ExportarDados(gridCreditWorkssheet,Data_Sisgef.SaveDialog.FileName);

    end;
  finally
    fnUtil.Free;
  end;
end;

procedure Tview_SisGeFCreditWorksheet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Data_Sisgef.memTableCreditWorksheet.Active := false;
  Action := caFree;
  view_SisGeFCreditWorksheet := nil;
end;

procedure Tview_SisGeFCreditWorksheet.ProcessCreditWorkshet;
begin
  labelInfo.Caption := 'Processando a planilha. Aguarde ...';
  dsCreditWorksheet.Enabled := False;
  FWorksheet := TThead_SisGefCreditWorksheet.Create(True);
  FWorksheet.DateCredit := StrToDate(dataCredito.Text);
  FWorksheet.TipoPlanilha := tipoExtrato.ItemIndex;
  if planilhaSalva.Checked then
    FWorksheet.Situacao := 2
  else
    FWorksheet.Situacao := 1;
  FWorksheet.Priority := tpNormal;
  timer.Tag := 0;
  timer.Enabled := True;
  activityIndicator.Active := True;
  FWorksheet.Start;
end;

procedure Tview_SisGeFCreditWorksheet.ProcessWorksheet;
begin
  if not ValidadeProcess() then
    Exit;
  if MessageDlg('Confirma processar a planilha de cr�dito?', mtConfirmation, [mbOK, mbCancel],0) = mrCancel then
    Exit;
  ProcessCreditWorkshet;
end;

procedure Tview_SisGeFCreditWorksheet.ShowCalendar;
begin
  if not Assigned(view_SisGeFCalendar) then
    view_SisGeFCalendar := Tview_SisGeFCalendar.Create(Application);
  if view_SisGeFCalendar.ShowModal = mrOK then
  begin
    dataCredito.Text := FormatDateTime('dd/mm/yyyy', view_SisGeFCalendar.CalendarView1.Date);
  end;
  FreeAndNil(view_SisGeFCalendar);
end;

procedure Tview_SisGeFCreditWorksheet.timerTimer(Sender: TObject);
begin
  if timer.Tag = 0 then
  begin
    if not FWorksheet.InProcess then
    begin
      timer.Enabled := False;
      if not FWorksheet.AbortProcess then
      begin
        dsCreditWorksheet.Enabled := True;
        gridCreditWorkssheetDBTableView1.ViewData.Expand(True);
      end
      else
      begin
        MessageDlg(FWorksheet.Mensagem, mtWarning, [mbOK], 0);
      end;
      FWorksheet.Free;
      labelInfo.Caption := '';
      activityIndicator.Active := False;
    end;
  end
  else if timer.Tag = 1 then
  begin
//    if not FClosing.InProcess then
//    begin
//      timer.Enabled := False;
//      if not FClosing.AbortProcess then
//      begin
//        dsExtract.Enabled := True;
//        layoutGroupMain.ItemIndex := 0;
//      end
//      else
//      begin
//        MessageDlg(FClosing.Mensagem, mtWarning, [mbOK], 0);
//      end;
//      FClosing.Free;
//      Data_Sisgef.memTableExtracts.Active := False;
//      activityIndicatorClose.Active := False;
//      labelInfo.Caption := '';
//      MessageDlg('Extrato do per�odo entre ' + FDataInicial  + ' e ' + FDataFinal + ' ENCERRADO.', mtInformation, [mbOK], 0);
//    end;
  end;
end;

function Tview_SisGeFCreditWorksheet.ValidadeProcess: boolean;
var
  FUtils : Common.Utils.TUtils;
begin
  try
    Result := False;
    FUtils := Common.Utils.TUtils.Create;
    if tipoExtrato.ItemIndex = -1 then
    begin
      MessageDlg('Selecione o tipo de extrato!', mtWarning, [mbCancel], 0);
      tipoExtrato.SetFocus;
      Exit;
    end;
    if not FUtils.DataOk(dataCredito.Text) then
    begin
      MessageDlg('Informe uma data de cr�dito v�lida!', mtWarning, [mbCancel], 0);
      dataCredito.SetFocus;
      Exit;
    end;
    Result := True;
  finally
    FUtils.Free;
  end;
end;

end.
