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
  Thread.SisGeFCreditWorksheet, Vcl.WinXCtrls, dxActivityIndicator, Vcl.ExtCtrls, Thread.SisGeFBIMERCP;

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
    actionDeleteRegister: TAction;
    cxButton9: TcxButton;
    dxLayoutItem16: TdxLayoutItem;
    procedure actionExpandGridExecute(Sender: TObject);
    procedure actionCollapseGridExecute(Sender: TObject);
    procedure actionPanelGridExecute(Sender: TObject);
    procedure timerTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionShowCalendarExecute(Sender: TObject);
    procedure actionProcessExecute(Sender: TObject);
    procedure actionCloseFormExecute(Sender: TObject);
    procedure actionExportGridExecute(Sender: TObject);
    procedure actionDeleteRegisterExecute(Sender: TObject);
    procedure tipoExtratoPropertiesChange(Sender: TObject);
    procedure actionSaveWorksheetExecute(Sender: TObject);
    procedure actionBIMERExecute(Sender: TObject);
    procedure planilhaSalvaPropertiesChange(Sender: TObject);
  private
    procedure ShowCalendar;
    procedure ProcessWorksheet;
    procedure ProcessCreditWorkshet;
    procedure ProcessSaveCreditWorksheet;
    procedure ProcessarBIMERWorksheet;
    procedure ShowWorksheetBIMER;
    procedure ExportGrid;
    procedure DeleteRegisters;
    procedure ClearWorksheet;
    function ValidadeProcess(): boolean;
  public
    { Public declarations }
  end;

var
  view_SisGeFCreditWorksheet: Tview_SisGeFCreditWorksheet;
  FWorksheet : TThead_SisGefCreditWorksheet;
  FBIMER: TThread_SisGeFBIMERCP;

implementation

{$R *.dfm}

uses Data.SisGeF, View.SisGeFCalendar, Common.Utils, View.SisGeFVehiclesRegistration, View.SisGeFWorksheetBIMERCP,
View.SisGeFSelectCompany;

{ Tview_SisGeFCreditWorksheet }

procedure Tview_SisGeFCreditWorksheet.actionDeleteRegisterExecute(Sender: TObject);
begin
  DeleteRegisters;
end;

procedure Tview_SisGeFCreditWorksheet.actionBIMERExecute(Sender: TObject);
begin
  ProcessarBIMERWorksheet;
end;

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

procedure Tview_SisGeFCreditWorksheet.actionSaveWorksheetExecute(Sender: TObject);
begin
  if Data_Sisgef.memTableCreditWorksheet.IsEmpty then
    Exit;
  if MessageDlg('Confirma gravar esta planilha?', mtConfirmation, [mbOK, mbCancel], 0) = mrCancel then
    Exit;
  ProcessSaveCreditWorksheet;
end;

procedure Tview_SisGeFCreditWorksheet.actionShowCalendarExecute(Sender: TObject);
begin
  ShowCalendar;
end;

procedure Tview_SisGeFCreditWorksheet.DeleteRegisters;
var
  i: integer;
  sCPFCNPJ: string;
begin
  with Data_Sisgef do
  begin
    if not memTableCreditWorksheet.Active then
      Exit;
    if memTableCreditWorksheet.IsEmpty then
      Exit;
    if gridCreditWorkssheetDBTableView1.Controller.SelectedRowCount = 0 then
    begin
      MessageDlg('Nenhum registro selecionado!', mtWarning, [mbCancel], 0);
      Exit;
    end;
    if MessageDlg('Confirma excluir os registros de crésditos secionados?', mtConfirmation, [mbOK, mbCancel], 0) = mrCancel then
      Exit;
    for i := 0 to Pred(gridCreditWorkssheetDBTableView1.Controller.SelectedRecordCount) do
    begin
      sCPFCNPJ := gridCreditWorkssheetDBTableView1.Controller.SelectedRows[i].DisplayTexts[10];
      if memTableCreditWorksheet.Locate('num_cpf_cnpj', sCPFCNPJ, [])  then
      begin
        memTableCreditWorksheet.Delete;
      end;
      if not memTableCreditWorksheet.IsEmpty then
        memTableCreditWorksheet.First;
    end;
  end;
end;

procedure Tview_SisGeFCreditWorksheet.ClearWorksheet;
begin
  if tipoExtrato.ItemIndex = -1 then
    Exit;
  if tipoExtrato.ItemIndex = 0 then
  begin

  end
  else
  begin

  end;
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
        sMensagem := 'Arquivo ' + Data_Sisgef.SaveDialog.FileName + ' já existe! Sobrepor ?';
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

procedure Tview_SisGeFCreditWorksheet.planilhaSalvaPropertiesChange(Sender: TObject);
begin
  actionBIMER.Enabled := planilhaSalva.Checked;
end;

procedure Tview_SisGeFCreditWorksheet.ProcessarBIMERWorksheet;
var
  iCompany: integer;
begin
  if not Data_Sisgef.memTableCreditWorksheet.Active then
    Exit;
  if not Assigned(view_SisGeFSelectCompany) then
    view_SisGeFSelectCompany := Tview_SisGeFSelectCompany.Create(Application);
  if view_SisGeFSelectCompany.ShowModal = mrOk then
    iCompany := view_SisGeFSelectCompany.company.EditValue
  else
    iCompany := 0;
  if iCompany = 0 then
    Exit;
  FreeAndNil(view_SisGeFSelectCompany);
  FBIMER := TThread_SisGeFBIMERCP.Create(True);
  dsCreditWorksheet.Enabled := False;
  FBIMER.Empresa := iCompany;
  FBimer.TipoExtrato := tipoExtrato.ItemIndex;
  labelInfo.Caption := 'Processando a planilha. Aguarde ...';
  FBIMER.Priority := tpNormal;
  timer.Tag := 2;
  timer.Enabled := True;
  activityIndicator.Active := True;
  FBIMER.Start;
end;

procedure Tview_SisGeFCreditWorksheet.ProcessCreditWorkshet;
begin
  dsCreditWorksheet.Enabled := False;
  FWorksheet := TThead_SisGefCreditWorksheet.Create(True);
  FWorksheet.DateCredit := StrToDate(dataCredito.Text);
  FWorksheet.TipoPlanilha := tipoExtrato.ItemIndex;
  FWorksheet.TypeProcess := 1;
  if planilhaSalva.Checked then
  begin
    FWorksheet.Situacao := 2;
    labelInfo.Caption := 'Recuperando a planilha. Aguarde ...';
  end
  else
  begin
    FWorksheet.Situacao := 1;
    labelInfo.Caption := 'Processando a planilha. Aguarde ...';
  end;
  FWorksheet.Priority := tpNormal;
  timer.Tag := 0;
  timer.Enabled := True;
  activityIndicator.Active := True;
  FWorksheet.Start;
end;


procedure Tview_SisGeFCreditWorksheet.ProcessSaveCreditWorksheet;
begin
  labelInfo.Caption := 'Gravando a planilha. Aguarde ...';
  dsCreditWorksheet.Enabled := False;
  FWorksheet := TThead_SisGefCreditWorksheet.Create(True);
  FWorksheet.DateCredit := StrToDate(dataCredito.Text);
  FWorksheet.TipoPlanilha := tipoExtrato.ItemIndex;
  FWorksheet.TypeProcess := 2;
  FWorksheet.Priority := tpNormal;
  timer.Tag := 1;
  timer.Enabled := True;
  activityIndicator.Active := True;
  FWorksheet.Start;
end;

procedure Tview_SisGeFCreditWorksheet.ProcessWorksheet;
begin
  if not ValidadeProcess() then
    Exit;
  if MessageDlg('Confirma processar a planilha de crédito?', mtConfirmation, [mbOK, mbCancel],0) = mrCancel then
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

procedure Tview_SisGeFCreditWorksheet.ShowWorksheetBIMER;
begin
  if not Assigned(view_SisGeFWorksheetBIMERCP) then
    view_SisGeFWorksheetBIMERCP := Tview_SisGeFWorksheetBIMERCP.Create(Application);
  view_SisGeFWorksheetBIMERCP.Show;
end;

procedure Tview_SisGeFCreditWorksheet.timerTimer(Sender: TObject);
begin
  if timer.Tag <= 1 then
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
      if timer.Tag = 1 then
      begin
        if not FWorksheet.AbortProcess then
          MessageDlg('Planilha gravada com sucesso!', mtInformation, [mbOK], 0);
      end;
    end;
  end
  else if timer.Tag = 2 then
  begin
    timer.Enabled := False;
    if not FBIMER.AbortProcess then
    begin
      dsCreditWorksheet.Enabled := True;
      gridCreditWorkssheetDBTableView1.ViewData.Expand(True);
    end
    else
    begin
      MessageDlg(FBIMER.Mensagem, mtWarning, [mbOK], 0);
    end;
    FBIMER.Free;
    labelInfo.Caption := '';
    activityIndicator.Active := False;
    ShowWorksheetBIMER;
  end;
end;

procedure Tview_SisGeFCreditWorksheet.tipoExtratoPropertiesChange(Sender: TObject);
begin
  if tipoExtrato.ItemIndex = 0 then
    actionSaveWorksheet.Enabled := False
  else
    actionSaveWorksheet.Enabled := True;
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
      MessageDlg('Informe uma data de crédito válida!', mtWarning, [mbCancel], 0);
      dataCredito.SetFocus;
      Exit;
    end;
    Result := True;
  finally
    FUtils.Free;
  end;
end;

end.
