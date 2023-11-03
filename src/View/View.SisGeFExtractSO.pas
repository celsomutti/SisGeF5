unit View.SisGeFExtractSO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  System.Actions, Vcl.ActnList, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCustomListBox, cxMCListBox, dxLayoutControlAdapters,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Common.Utils, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, THread.SisGeFProcessExtractSO, Vcl.ExtCtrls, dxActivityIndicator, cxCurrencyEdit,
  THread.SisGeFCloseExtractSO;

type
  Tview_SisGeFExtractSO = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    cxLabel1: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    actionListExtractSO: TActionList;
    actionGroupsPanel: TAction;
    actionExpandGroup: TAction;
    actionRetractGroup: TAction;
    actionCloseForm: TAction;
    actionProcessExtract: TAction;
    actionClosedExtract: TAction;
    actionExportGrid: TAction;
    dxLayoutGroup3: TdxLayoutGroup;
    tipoOS: TcxComboBox;
    dxLayoutItem2: TdxLayoutItem;
    situacaoExtrato: TcxComboBox;
    dxLayoutItem3: TdxLayoutItem;
    layoutGroupClientes: TdxLayoutGroup;
    listaClientes: TcxMCListBox;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    layoutGroupTerceirizados: TdxLayoutGroup;
    listaTerceiros: TcxMCListBox;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    actionIncludeClients: TAction;
    actionDeleteClients: TAction;
    actionClearClientsList: TAction;
    actionIncludeOutsourced: TAction;
    actionDeleteOutsourced: TAction;
    actionClearOutsourcedList: TAction;
    cxButton1: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutItem9: TdxLayoutItem;
    cxButton5: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    cxButton6: TcxButton;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dataInicial: TcxDateEdit;
    dxLayoutItem12: TdxLayoutItem;
    dataFinal: TcxDateEdit;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutGroup7: TdxLayoutGroup;
    cxButton7: TcxButton;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    cxButton8: TcxButton;
    dxLayoutItem15: TdxLayoutItem;
    cxButton9: TcxButton;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    cxButton10: TcxButton;
    dxLayoutItem17: TdxLayoutItem;
    cxButton11: TcxButton;
    dxLayoutItem18: TdxLayoutItem;
    cxButton12: TcxButton;
    dxLayoutItem19: TdxLayoutItem;
    cxButton14: TcxButton;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    gridExtractSODBTableView1: TcxGridDBTableView;
    gridExtractSOLevel1: TcxGridLevel;
    gridExtractSO: TcxGrid;
    dxLayoutItem21: TdxLayoutItem;
    dsExtract: TDataSource;
    gridExtractSODBTableView1num_os: TcxGridDBColumn;
    gridExtractSODBTableView1data_os: TcxGridDBColumn;
    gridExtractSODBTableView1cod_cadastro: TcxGridDBColumn;
    gridExtractSODBTableView1nom_cadastro: TcxGridDBColumn;
    gridExtractSODBTableView1des_servico: TcxGridDBColumn;
    gridExtractSODBTableView1qtd_servico: TcxGridDBColumn;
    gridExtractSODBTableView1val_unitario: TcxGridDBColumn;
    gridExtractSODBTableView1val_servico: TcxGridDBColumn;
    gridExtractSODBTableView1des_placa: TcxGridDBColumn;
    labelInfo: TcxLabel;
    dxLayoutItem22: TdxLayoutItem;
    timer: TTimer;
    activityIndicator: TdxActivityIndicator;
    dxLayoutItem23: TdxLayoutItem;
    actionReopenExtract: TAction;
    cxButton13: TcxButton;
    dxLayoutItem24: TdxLayoutItem;
    procedure actionCloseFormExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tipoOSPropertiesChange(Sender: TObject);
    procedure actionGroupsPanelExecute(Sender: TObject);
    procedure actionExpandGroupExecute(Sender: TObject);
    procedure actionRetractGroupExecute(Sender: TObject);
    procedure actionExportGridExecute(Sender: TObject);
    procedure actionIncludeClientsExecute(Sender: TObject);
    procedure actionDeleteClientsExecute(Sender: TObject);
    procedure actionClearClientsListExecute(Sender: TObject);
    procedure actionIncludeOutsourcedExecute(Sender: TObject);
    procedure actionDeleteOutsourcedExecute(Sender: TObject);
    procedure actionClearOutsourcedListExecute(Sender: TObject);
    procedure situacaoExtratoPropertiesChange(Sender: TObject);
    procedure timerTimer(Sender: TObject);
    procedure actionProcessExtractExecute(Sender: TObject);
    procedure actionClosedExtractExecute(Sender: TObject);
    procedure actionReopenExtractExecute(Sender: TObject);
  private
    { Private declarations }
    procedure ExportGrid;
    procedure AddPersons;
    procedure ExcludePersons;
    procedure ClearPersons;
    procedure AddClients;
    procedure ExcludeClients;
    procedure ClearClients;
    procedure ExecuteCloseExtractOS;
    procedure ExecuteReopenExtractOS;
    function VaidateExtract(): boolean;
    procedure ProcessExtract;
    function GenerateFilter(): string;
    procedure ClearForm;
    function FilterClient(): string;
    function FilterCourier(): string;
    function InfortCreditDate(): string;
    function ConfirmUserPwd(): boolean;
  public
    { Public declarations }
  end;

var
  view_SisGeFExtractSO: Tview_SisGeFExtractSO;
  FExtract : TTHread_SisGeFProcessExtractSO;
  FCloseExtract: TTHread_SisGeFCloseExtractSO;
  FDateCredit: TDate;

implementation

{$R *.dfm}

uses Data.SisGeF, Global.Parametros, View.PesquisaClientes, View.PesquisarPessoas, View.SisGeFCalendar, View.SisGeFConfirmPassword,
View.SisGeFExpressExtract;

procedure Tview_SisGeFExtractSO.actionClearClientsListExecute(Sender: TObject);
begin
  ClearClients;
end;

procedure Tview_SisGeFExtractSO.actionClearOutsourcedListExecute(Sender: TObject);
begin
  ClearPersons;
end;

procedure Tview_SisGeFExtractSO.actionClosedExtractExecute(Sender: TObject);
begin
  ExecuteCloseExtractOS;
end;

procedure Tview_SisGeFExtractSO.actionCloseFormExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_SisGeFExtractSO.actionDeleteClientsExecute(Sender: TObject);
begin
  ExcludeClients;
end;

procedure Tview_SisGeFExtractSO.actionDeleteOutsourcedExecute(Sender: TObject);
begin
  ExcludePersons;
end;

procedure Tview_SisGeFExtractSO.actionExpandGroupExecute(Sender: TObject);
begin
  gridExtractSODBTableView1.ViewData.Expand(True);
end;

procedure Tview_SisGeFExtractSO.actionExportGridExecute(Sender: TObject);
begin
  ExportGrid;
end;

procedure Tview_SisGeFExtractSO.actionGroupsPanelExecute(Sender: TObject);
begin
  gridExtractSODBTableView1.OptionsView.GroupByBox := (not gridExtractSODBTableView1.OptionsView.GroupByBox);
end;

procedure Tview_SisGeFExtractSO.actionIncludeClientsExecute(Sender: TObject);
begin
  AddClients;
end;

procedure Tview_SisGeFExtractSO.actionIncludeOutsourcedExecute(Sender: TObject);
begin
  AddPersons;
end;

procedure Tview_SisGeFExtractSO.actionProcessExtractExecute(Sender: TObject);
begin
  ProcessExtract;
end;

procedure Tview_SisGeFExtractSO.actionReopenExtractExecute(Sender: TObject);
begin
  ExecuteReopenExtractOS;
end;

procedure Tview_SisGeFExtractSO.actionRetractGroupExecute(Sender: TObject);
begin
  gridExtractSODBTableView1.ViewData.Collapse(True);
end;

procedure Tview_SisGeFExtractSO.AddClients;
var
  FCode, FName, FItem: string;
begin
    if not Assigned(view_PesquisaClientes) then
  begin
    view_PesquisaClientes := Tview_PesquisaClientes.Create(Application);
  end;
  FItem := '';
  if view_PesquisaClientes.ShowModal = mrOk then
  begin
    if not view_PesquisaClientes.fdPesquisa.IsEmpty then
    begin
      FCode := view_PesquisaClientes.fdPesquisacod_cliente.AsString;
      FName := view_PesquisaClientes.fdPesquisanom_fantasia.AsString;
      FItem := Fcode + ';' + FName;
      if listaClientes.Items.IndexOf(FItem) <> -1 then
        Exit;
      listaClientes.Items.Add(FItem);
    end;
  end;
  view_PesquisaClientes.fdPesquisa.Connection.Connected := False;
  FreeAndNil(view_PesquisaClientes);
end;

procedure Tview_SisGeFExtractSO.ExcludeClients;
begin
  if listaClientes.Items.Count = 0 then
    Exit;
  listaClientes.DeleteSelected;
end;

procedure Tview_SisGeFExtractSO.ExcludePersons;
begin
  if listaClientes.Items.Count = 0 then
    Exit;
  listaTerceiros.DeleteSelected;
end;

procedure Tview_SisGeFExtractSO.ExecuteCloseExtractOS;
var
  sDatCredit, sMensagem: string;
begin
  if not Data_Sisgef.memTableExtractSO.Active then
    Exit;
  if Data_Sisgef.memTableExtractSO.IsEmpty then
    Exit;
  sDatCredit := FormatDateTime('dd/mm/yyyy', Now);
  if tipoOS.ItemIndex = 1 then
  begin
    sDatCredit := InfortCreditDate;
    if not sDatCredit.IsEmpty then
      sMensagem := 'Confirma ENCERRAR este extrato para crédito em ' + sDatCredit + ' ?';
  end
  else
  begin
    sMensagem := 'Confirma ENCERRAR este extrato ?';
  end;
  if sDatCredit.IsEmpty then
    Exit;
  if MessageDlg(sMensagem, mtConfirmation, [mbOK, mbCancel], 0) = mrCancel then
    Exit;
  labelInfo.Caption := 'Processando o enceramento do extrato extrato. Aguarde ...';
  dsExtract.Enabled := False;
  FCloseExtract := TTHread_SisGeFCloseExtractSO.Create(True);

  FCloseExtract.CreditDate := StrToDateDef(sDatCredit, Now);
  FCloseExtract.FlagClose := 'S';
  FCloseExtract.FlagClosed := 1;
  FCloseExtract.TypeOS := tipoOS.ItemIndex;
  FCloseExtract.Priority := tpNormal;
  timer.Tag := 1;
  timer.Enabled := True;
  activityIndicator.Active := True;
  FCloseExtract.Start;
end;

procedure Tview_SisGeFExtractSO.ExecuteReopenExtractOS;
begin
  if not Data_Sisgef.memTableExtractSO.Active then
    Exit;
  if Data_Sisgef.memTableExtractSO.IsEmpty then
    Exit;
  if MessageDlg('Confirma REABRIR este extrato ?', mtConfirmation, [mbOK, mbCancel], 0) = mrCancel then
    Exit;
  if not ConfirmUserPwd() then
  begin
    MessageDlg('Confirmação de usuário inválida!', mtWarning, [mbCancel],0);
    Exit;
  end;
  labelInfo.Caption := 'Processando o enceramento do extrato extrato. Aguarde ...';
  dsExtract.Enabled := False;
  FCloseExtract := TTHread_SisGeFCloseExtractSO.Create(True);
  FCloseExtract.CreditDate := StrToDateDef('30/12/1899', Now);
  FCloseExtract.FlagClose := 'N';
  FCloseExtract.FlagClosed := 0;
  FCloseExtract.TypeOS := tipoOS.ItemIndex;
  FCloseExtract.Priority := tpNormal;
  timer.Tag := 2;
  timer.Enabled := True;
  activityIndicator.Active := True;
  FCloseExtract.Start;
end;

procedure Tview_SisGeFExtractSO.ExportGrid;
var
  fnUtil : Common.Utils.TUtils;
  sMensagem: String;
begin
  try
    fnUtil := Common.Utils.TUtils.Create;

    if gridExtractSODBTableView1.ViewData.RowCount = 0 then Exit;

    if Data_Sisgef.SaveDialog.Execute() then
    begin
      if FileExists(Data_Sisgef.SaveDialog.FileName) then
      begin
        sMensagem := 'Arquivo ' + Data_Sisgef.SaveDialog.FileName + ' já existe! Sobrepor ?';
        if Application.MessageBox(PChar(sMensagem), 'Sobrepor', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit
      end;

      fnUtil.ExportarDados(gridExtractSO,Data_Sisgef.SaveDialog.FileName);

    end;
  finally
    fnUtil.Free;
  end;
end;

function Tview_SisGeFExtractSO.FilterClient: string;
var
  FResult : TStringList;
  sFilter: String;
  i : integer;
begin
  Result := '';
  sFilter := '';
  FResult := TStringList.Create;
  FResult.StrictDelimiter := True;
  FResult.Delimiter := ';';
  for i := 0 to Pred(listaClientes.Items.Count) do
  begin
    FResult.DelimitedText := listaClientes.Items[i];
    if not sFilter.IsEmpty then
      sFilter := sFilter + ', ';
    sFilter := sFilter + FResult[0];
  end;
  if not sFilter.IsEmpty then
    Result := 'cod_cadastro in (' + sFilter + ')';
  FResult.Free;
end;

function Tview_SisGeFExtractSO.FilterCourier: string;
var
  FResult : TStringList;
  sFilter: String;
  i : integer;
begin
  Result := '';
  sFilter := '';
  FResult := TStringList.Create;
  FResult.StrictDelimiter := True;
  FResult.Delimiter := ';';
  for i := 0 to Pred(listaTerceiros.Items.Count) do
  begin
    FResult.DelimitedText := listaTerceiros.Items[i];
    if not sFilter.IsEmpty then
      sFilter := sFilter + ', ';
    sFilter := sFilter + FResult[0];
  end;
  if not sFilter.IsEmpty then
    Result := 'cod_cadastro in (' + sFilter + ')';
  FResult.Free;
end;

procedure Tview_SisGeFExtractSO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Data_Sisgef.memTableExtractSO.Active := False;
  Action := caFree;
  view_SisGeFExtractSO := nil;
end;

function Tview_SisGeFExtractSO.GenerateFilter: string;
var
  sQuery, sFilter, sResult : String;
begin
  Result := '';
  sQuery := '';
  sFilter := '';
  sResult := '';
  sFilter := FilterClient();
  if not sFilter.IsEmpty then
  begin
    if not sQuery.IsEmpty then
      sQuery := sQuery + ' and ' + sFilter
    else
      sQuery := sFilter;
  end;
  sFilter := '';
  sFilter := FilterCourier();
  if not sFilter.IsEmpty then
  begin
    if not sQuery.IsEmpty then
      sQuery := sQuery + ' and ' + sFilter
    else
      sQuery := sFilter;
  end;
  if not sQuery.IsEmpty then
    sResult := sQuery;
  Result := sResult;
end;


function Tview_SisGeFExtractSO.InfortCreditDate: string;
var
  sReturn: string;
begin
  try
    Result := '';
    if not Assigned(view_SisGeFCalendar) then
      view_SisGeFCalendar := Tview_SisGeFCalendar.Create(Application);
    view_SisGeFExpressExtract.Caption := 'Calendário - INFORME A DATA DE PAGAMENTO';
    if view_SisGeFCalendar.ShowModal = mrCancel then
      Exit;
    sReturn := DateToStr(view_SisGeFCalendar.CalendarView1.Date);
    if sReturn.IsEmpty then
    begin
      MessageDlg('Data informada inválida! Encerramento cancelado.', mtError, [mbCancel], 0);
      Exit;
    end;
    if StrToDate(sReturn) < StrToDate(dataFinal.Text)  then
    begin
      MessageDlg('Data informada menor que a data base! Encerramento cancelado.', mtError, [mbCancel], 0);
      Exit;
    end;
    Result := sReturn;
  finally
    FreeAndNil(view_SisGeFCalendar);
  end;
end;

procedure Tview_SisGeFExtractSO.ProcessExtract;
begin
  if MessageDlg('Confirma processar este extrato ?', mtConfirmation, [mbOK, mbCancel], 0) = mrCancel then
    Exit;
  labelInfo.Caption := 'Processando extrato. Aguarde ...';
  dsExtract.Enabled := False;
  FExtract := TTHread_SisGeFProcessExtractSO.Create(True);
  FExtract.Filtro := GenerateFilter();
  FExtract.StartDate := dataInicial.Date;
  FExtract.EndDate := dataFinal.Date;
  FExtract.Tipo := tipoOS.ItemIndex;
  case situacaoExtrato.ItemIndex of
    1 : FExtract.Situacao := 'N';
    2 : FExtract.Situacao := 'S';
    else
      FExtract.Situacao := ' ';
  end;
  FExtract.Priority := tpNormal;
  timer.Tag := 0;
  timer.Enabled := True;
  activityIndicator.Active := True;
  FExtract.Start;
end;

procedure Tview_SisGeFExtractSO.situacaoExtratoPropertiesChange(Sender: TObject);
begin
  actionClosedExtract.Enabled := (situacaoExtrato.ItemIndex = 1);
  actionReopenExtract.Enabled := (situacaoExtrato.ItemIndex = 2);
end;

procedure Tview_SisGeFExtractSO.AddPersons;
var
  sSQL: String;
  sWhere: String;
  FCode, FName, FItem: string;
begin
  try
    sSQL := '';
    sWhere := '';
    if not Assigned(View_PesquisarPessoas) then
    begin
      View_PesquisarPessoas := TView_PesquisarPessoas.Create(Application);
    end;
    View_PesquisarPessoas.dxLayoutItem1.Visible := True;
    View_PesquisarPessoas.dxLayoutItem2.Visible := True;
    sSQL := 'select COD_CADASTRO as "Código", DES_RAZAO_SOCIAL as Nome, NUM_IE as "CNPJ / CPF", NUM_CNPJ as "CNPJ / CPF" ' +
            'from tbentregadores ';
    sWhere := 'where COD_CADASTRO like paraN or DES_RAZAO_SOCIAL like "%param%" or NUM_IE like "%param%" or ' +
              'NUM_CNPJ like "%param%"';
    View_PesquisarPessoas.sSQL := sSQL;
    View_PesquisarPessoas.sWhere := sWhere;
    View_PesquisarPessoas.bOpen := False;
    View_PesquisarPessoas.Caption := 'Pesquisa de Tabelas de Verbas';
    if View_PesquisarPessoas.ShowModal = mrOK then
    begin
      FCode := View_PesquisarPessoas.qryPesquisa.Fields[1].AsString;
      FName := View_PesquisarPessoas.qryPesquisa.Fields[2].AsString;
      FItem := Fcode + ';' + FName;
      if listaTerceiros.Items.IndexOf(FItem) <> -1 then
        Exit;
      listaTerceiros.Items.Add(FItem);
    end;
  finally
    View_PesquisarPessoas.qryPesquisa.Close;
    View_PesquisarPessoas.tvPesquisa.ClearItems;
    FreeAndNil(View_PesquisarPessoas);
  end;
end;

procedure Tview_SisGeFExtractSO.ClearClients;
begin
  listaClientes.Items.Clear;
end;

procedure Tview_SisGeFExtractSO.ClearForm;
begin
  Data_Sisgef.memTableExtractSO.Active := False;
  listaClientes.Clear;
  listaTerceiros.Clear;
  dataInicial.Clear;
  dataFinal.Clear;
  tipoOS.ItemIndex := 0;
  situacaoExtrato.ItemIndex := 0;
end;

procedure Tview_SisGeFExtractSO.ClearPersons;
begin
  listaTerceiros.Items.Clear;
end;

function Tview_SisGeFExtractSO.ConfirmUserPwd: boolean;
begin
  Result := False;
  if not Assigned(view_SisGeFConfirmPassword) then
    view_SisGeFConfirmPassword := Tview_SisGeFConfirmPassword.Create(Application);
  view_SisGeFConfirmPassword.username.Text := Global.Parametros.pUser_Name;
  view_SisGeFConfirmPassword.username.Properties.ReadOnly := True;
  Result := (view_SisGeFConfirmPassword.ShowModal = mrOk);
  FreeAndNil(view_SisGeFConfirmPassword);
end;

procedure Tview_SisGeFExtractSO.timerTimer(Sender: TObject);
begin
  if timer.Tag = 0 then
  begin
    if not FExtract.InProcess then
    begin
      timer.Enabled := False;
      if not FExtract.AbortProcess then
      begin
        dsExtract.Enabled := True;
        gridExtractSODBTableView1.ViewData.Expand(True);
      end
      else
      begin
        MessageDlg(FExtract.Mensagem, mtWarning, [mbOK], 0);
      end;
      FExtract.Free
    end ;
  end
  else if timer.Tag = 1 then
  begin
    if not FCloseExtract.InProcess then
    begin
      timer.Enabled := False;
      if not FCloseExtract.AbortProcess then
      begin
        dsExtract.Enabled := True;
        gridExtractSODBTableView1.ViewData.Expand(True);
        MessageDlg('Extrato fechado com sucesso!', mtInformation, [mbOK], 0);
        situacaoExtrato.ItemIndex := 2;
      end
      else
      begin
        MessageDlg(FCloseExtract.Mensagem, mtWarning, [mbOK], 0);
      end;
      FCloseExtract.Free
    end;
  end
  else if timer.Tag = 2 then
  begin
    if not FCloseExtract.InProcess then
    begin
      timer.Enabled := False;
      if not FCloseExtract.AbortProcess then
      begin
        dsExtract.Enabled := True;
        MessageDlg('Extrato reaberto com sucesso!', mtInformation, [mbOK], 0);
        ClearForm;
      end
      else
      begin
        MessageDlg(FCloseExtract.Mensagem, mtWarning, [mbOK], 0);
      end;
      FCloseExtract.Free
    end;
  end;
  labelInfo.Caption := '';
  activityIndicator.Active := False;
end;

procedure Tview_SisGeFExtractSO.tipoOSPropertiesChange(Sender: TObject);
begin
  if tipoOs.ItemIndex = 1 then
  begin
    layoutGroupClientes.Visible := False;
    layoutGroupTerceirizados.Visible := True;
  end
  else if tipoOs.ItemIndex = 2 then
  begin
    layoutGroupClientes.Visible := True;
    layoutGroupTerceirizados.Visible := False;
  end
  else
    begin
    layoutGroupClientes.Visible := False;
    layoutGroupTerceirizados.Visible := False;
  end;
end;

function Tview_SisGeFExtractSO.VaidateExtract: boolean;
begin
  Result := False;
  if tipoOS.ItemIndex <= 0 then
  begin
    MessageDlg('Informe o tipo de OS do extrato!', mtWarning, [mbCancel], 0);
    Exit;
  end;
  if tipoOS.ItemIndex <= 0 then
  begin
    MessageDlg('Informe a situação do extrato!', mtWarning, [mbCancel], 0);
    Exit;
  end;
  if dataInicial.Text = '' then
  begin
    MessageDlg('Informe a data inicial do período!', mtWarning, [mbCancel], 0);
    Exit;
  end;
  if dataFinal.Text = '' then
  begin
    MessageDlg('Informe a data final do período!', mtWarning, [mbCancel], 0);
    Exit;
  end;
  if dataFinal.Date < dataInicial.Date then
  begin
    MessageDlg('A data final do período não pode ser menor que data inicial!', mtWarning, [mbCancel], 0);
    Exit;
  end;
  Result := True;
end;

end.
