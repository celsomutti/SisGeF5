unit View.SisGeFEmployeeRegistration;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList, dxSkinsCore, dxSkinsDefaultPainters, cxClasses, dxBar,
  Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxLabel, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, cxCheckBox, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.StorageBin, Common.Utils, Control.ExtraviosMultas, cxCalendar,
  cxCurrencyEdit, cxBlobEdit, dxBarBuiltInMenu, cxPC, cxFilterControl, cxDBFilterControl, cxDBLookupComboBox, Common.ENum,
  Global.Parametros, frxClass, cxImageComboBox, cxProgressBar, Controller.APICEP, Controller.APICNPJ, Control.Cadastro;

type
  Tview_SisGeFEmployeeRegistration = class(TForm)
    actionListVeiculos: TActionList;
    actionNovo: TAction;
    actionEditar: TAction;
    actionCancelar: TAction;
    actionFiltro: TAction;
    actionExportar: TAction;
    actionFechar: TAction;
    barManager: TdxBarManager;
    barManagerBar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    actionPesquisar: TAction;
    dsEmployees: TDataSource;
    actionPainelGrupos: TAction;
    pageControlPesquisa: TcxPageControl;
    tabResultado: TcxTabSheet;
    gridEmployees: TcxGrid;
    gridEmployeesDBTableView1: TcxGridDBTableView;
    gridEmployeesLevel1: TcxGridLevel;
    tabFiltro: TcxTabSheet;
    actionFiltrar: TAction;
    actionCancelarFiltro: TAction;
    panelFooterFiltro: TPanel;
    filtroVeiculos: TcxDBFilterControl;
    actionLimparFiltro: TAction;
    dxBarLargeButton12: TdxBarLargeButton;
    panelPesquisa: TPanel;
    cxLabel1: TcxLabel;
    pesquisar: TcxTextEdit;
    cxButton1: TcxButton;
    cxLabel2: TcxLabel;
    comboBoxCampos: TcxComboBox;
    checkBoxGrupo: TcxCheckBox;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    gridEmployeesDBTableView1COD_CADASTRO: TcxGridDBColumn;
    gridEmployeesDBTableView1NUM_CNPJ: TcxGridDBColumn;
    gridEmployeesDBTableView1DES_RAZAO_SOCIAL: TcxGridDBColumn;
    gridEmployeesDBTableView1NOM_FANTASIA: TcxGridDBColumn;
    gridEmployeesDBTableView1NUM_IE: TcxGridDBColumn;
    gridEmployeesDBTableView1NUM_IEST: TcxGridDBColumn;
    gridEmployeesDBTableView1des_funcao: TcxGridDBColumn;
    gridEmployeesDBTableView1NUM_CNH: TcxGridDBColumn;
    gridEmployeesDBTableView1NUM_REGISTRO_CNH: TcxGridDBColumn;
    gridEmployeesDBTableView1DES_STATUS: TcxGridDBColumn;
    memTableEmployees: TFDMemTable;
    memTableEmployeesCOD_CADASTRO: TIntegerField;
    memTableEmployeesDOM_FUNCIONARIO: TStringField;
    memTableEmployeesNUM_CNPJ: TStringField;
    memTableEmployeesDES_RAZAO_SOCIAL: TStringField;
    memTableEmployeesNOM_FANTASIA: TStringField;
    memTableEmployeesNUM_IE: TStringField;
    memTableEmployeesNUM_IEST: TStringField;
    memTableEmployeesdes_funcao: TStringField;
    memTableEmployeesNUM_CNH: TStringField;
    memTableEmployeesNUM_REGISTRO_CNH: TStringField;
    memTableEmployeesDES_STATUS: TStringField;
    procedure actionFecharExecute(Sender: TObject);
    procedure actionPainelGruposExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionPesquisarExecute(Sender: TObject);
    procedure actionFiltroExecute(Sender: TObject);
    procedure actionFiltrarExecute(Sender: TObject);
    procedure actionLimparFiltroExecute(Sender: TObject);
    procedure actionCancelarFiltroExecute(Sender: TObject);
    procedure actionCancelarExecute(Sender: TObject);
    procedure dsEmployeesStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actionEditarExecute(Sender: TObject);
    procedure actionNovoExecute(Sender: TObject);
    procedure gridEmployeesDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
      AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actionExportarExecute(Sender: TObject);
    procedure pageControlPesquisaChange(Sender: TObject);
    procedure gridVeiculosDBTableView1NavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure memTableEmployeesAfterClose(DataSet: TDataSet);
  private
    { Private declarations }
    function Formulafilro(iIndex: integer; sTexto: string): boolean;
    procedure MostraFiltro;
    procedure Filtro;
    procedure CancelarPesquisa;
    procedure CancelaFiltro;
    procedure StartForm;
    procedure MostraCadastro(FAcao: TAcao; iNumero: integer);
    procedure InsertData;
    procedure EditData;
    procedure Exportar;
    procedure RefreshGrid(iCode: integer);
    function ConfirmPassword(): boolean;
  public
    { Public declarations }
  end;

var
  view_SisGeFEmployeeRegistration: Tview_SisGeFEmployeeRegistration;
  bFilter: boolean;
implementation

{$R *.dfm}

uses Data.SisGeF, View.SisGeFConfirmPassword, View.SisGeFEmployeeRegistrationDetail;

procedure Tview_SisGeFEmployeeRegistration.actionCancelarExecute(Sender: TObject);
begin
  CancelarPesquisa;
end;

procedure Tview_SisGeFEmployeeRegistration.actionCancelarFiltroExecute(Sender: TObject);
begin
  CancelaFiltro;
end;

procedure Tview_SisGeFEmployeeRegistration.actionEditarExecute(Sender: TObject);
begin
  EditData;
end;

procedure Tview_SisGeFEmployeeRegistration.actionExportarExecute(Sender: TObject);
begin
  Exportar;
end;

procedure Tview_SisGeFEmployeeRegistration.actionFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_SisGeFEmployeeRegistration.actionFiltrarExecute(Sender: TObject);
begin
  Filtro;
end;

procedure Tview_SisGeFEmployeeRegistration.actionFiltroExecute(Sender: TObject);
begin
  MostraFiltro;
end;

procedure Tview_SisGeFEmployeeRegistration.actionLimparFiltroExecute(Sender: TObject);
begin
  filtroVeiculos.Clear;
end;

procedure Tview_SisGeFEmployeeRegistration.actionNovoExecute(Sender: TObject);
begin
  InsertData;
end;

procedure Tview_SisGeFEmployeeRegistration.actionPainelGruposExecute(Sender: TObject);
begin
  gridEmployeesDBTableView1.OptionsView.GroupByBox := checkBoxGrupo.Checked;
end;

procedure Tview_SisGeFEmployeeRegistration.actionPesquisarExecute(Sender: TObject);
begin
  if not Formulafilro(comboBoxCampos.ItemIndex, pesquisar.Text) then
  begin
    Application.MessageBox('Nenhum registro encontrado!', 'Atenção', MB_OK + MB_ICONWARNING);
  end;
end;

procedure Tview_SisGeFEmployeeRegistration.CancelaFiltro;
begin
  filtroVeiculos.Clear;
  pageControlPesquisa.ActivePageIndex := 0;
end;

procedure Tview_SisGeFEmployeeRegistration.CancelarPesquisa;
begin
  memTableEmployees.Active := False;
  pesquisar.Clear;
  comboBoxCampos.ItemIndex := 0;
  filtroVeiculos.Clear;
end;

function Tview_SisGeFEmployeeRegistration.ConfirmPassword: boolean;
begin
  Result := False;
  if not Assigned(view_SisGeFConfirmPassword) then
    view_SisGeFConfirmPassword := Tview_SisGeFConfirmPassword.Create(Application);
  Result := (view_SisGeFConfirmPassword.ShowModal = mrOk);
  FreeAndNil(view_SisGeFConfirmPassword);
end;

procedure Tview_SisGeFEmployeeRegistration.dsEmployeesStateChange(Sender: TObject);
begin
  if dsEmployees.State = dsBrowse then
  begin
    actionEditar.Enabled := not memTableEmployees.IsEmpty;
    actionCancelar.Enabled := not memTableEmployees.IsEmpty;
  end
end;

procedure Tview_SisGeFEmployeeRegistration.EditData;
begin
  MostraCadastro(tacPesquisa, memTableEmployeesCOD_CADASTRO.AsInteger);
end;

procedure Tview_SisGeFEmployeeRegistration.Exportar;
var
  fnUtil : Common.Utils.TUtils;
  sMensagem: String;
begin
  try
    fnUtil := Common.Utils.TUtils.Create;

    if memTableEmployees.IsEmpty then Exit;

    if Data_Sisgef.SaveDialog.Execute() then
    begin
      if FileExists(Data_Sisgef.SaveDialog.FileName) then
      begin
        sMensagem := 'Arquivo ' + Data_Sisgef.SaveDialog.FileName + ' já existe! Sobrepor ?';
        if MessageDlg(sMensagem, mtConfirmation, [mbYes,mbNo], 0) = mrNo then Exit
      end;
      fnUtil.ExportarDados(gridEmployees,Data_Sisgef.SaveDialog.FileName);
    end;
  finally
    fnUtil.Free;
  end;end;

procedure Tview_SisGeFEmployeeRegistration.Filtro;
var
  FFuncionarios: TCadastroControl;
  sFiltro: string;
begin
  try
    FFuncionarios := TCadastroControl.Create;
    sFiltro := filtroVeiculos.FilterText;
    memTableEmployees.Active := False;
    if FFuncionarios.SearchEmployee(0, '', sFiltro) then
    begin
      memTableEmployees.Data := FFuncionarios.Cadastro.Query.Data;
      FFuncionarios.Cadastro.Query.Connection.Connected := False;
    end;
    bFilter := True;
    actionFiltro.Enabled := True;
    pageControlPesquisa.ActivePageIndex := 0;
    gridEmployees.SetFocus;
  finally
    FFuncionarios.Free;
  end;
end;

procedure Tview_SisGeFEmployeeRegistration.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  memTableEmployees.Active := False;
  Action:= caFree;
  view_SisGeFEmployeeRegistration := nil;
end;

procedure Tview_SisGeFEmployeeRegistration.FormShow(Sender: TObject);
begin
  StartForm;
end;

function Tview_SisGeFEmployeeRegistration.Formulafilro(iIndex: integer; sTexto: string): boolean;
var
  sMensagem: String;
  FFuncionarios: TCadastroControl;
begin
  try
  Result := False;
  memTableEmployees.Active := False;
  FFuncionarios := TCadastroControl.Create;
  if sTexto = '' then
  begin
    sMensagem := 'O campo de texto a pesquisar não foi preenchido!. ' +
    'Caso deseje visualizar todos os registros clique OK, porém, esse processo pode ser lento.';
    if Application.MessageBox(PChar(sMensagem), 'Atenção!', MB_OKCANCEL + MB_ICONWARNING) = IDCANCEL then
    begin
      Exit;
    end;
  end;
  if FFuncionarios.SearchEmployee(iIndex, sTexto, '') then
  begin
    memTableEmployees.Data := FFuncionarios.Cadastro.Query.Data;;
    FFuncionarios.Cadastro.Query.Connection.Connected := False;
  end;
  gridEmployees.SetFocus;
  bFilter := False;
  Result := True;
  finally
    FFuncionarios.Free;
  end;
end;

procedure Tview_SisGeFEmployeeRegistration.gridEmployeesDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if memTableEmployees.IsEmpty then
    Exit;
  EditData;
end;

procedure Tview_SisGeFEmployeeRegistration.gridVeiculosDBTableView1NavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  case AButtonIndex of
    16: gridEmployeesDBTableView1.ViewData.Expand(True);
    17: gridEmployeesDBTableView1.ViewData.Collapse(True);
  end;
end;

procedure Tview_SisGeFEmployeeRegistration.InsertData;
begin
  MostraCadastro(tacIncluir, 0);
end;

procedure Tview_SisGeFEmployeeRegistration.memTableEmployeesAfterClose(DataSet: TDataSet);
begin
  actionEditar.Enabled := False;
  actionCancelar.Enabled := False;
end;

procedure Tview_SisGeFEmployeeRegistration.MostraCadastro(FAcao: TAcao; iNumero: integer);
begin
  if not Assigned(view_SisGeFEmployeeRegistrationDetail) then
    view_SisGeFEmployeeRegistrationDetail := Tview_SisGeFEmployeeRegistrationDetail.Create(Application);
  view_SisGeFEmployeeRegistrationDetail.iID := iNumero;
  view_SisGeFEmployeeRegistrationDetail.fAcao := FAcao;
  if view_SisGeFEmployeeRegistrationDetail.ShowModal() = mrOk then
  begin
    if FAcao = tacPesquisa then
      RefreshGrid(iNumero);
  end;
  FreeAndNil(view_SisGeFEmployeeRegistrationDetail);
end;

procedure Tview_SisGeFEmployeeRegistration.MostraFiltro;
begin
  pageControlPesquisa.ActivePageIndex := 1;
end;

procedure Tview_SisGeFEmployeeRegistration.pageControlPesquisaChange(Sender: TObject);
begin
  if pageControlPesquisa.ActivePageIndex = 1 then
  begin
    actionFiltro.Enabled := False;
    actionFiltrar.Visible := True;
    actionLimparFiltro.Visible := True;
    actionCancelarFiltro.Visible := True;
    actionCancelar.Enabled := False;
    actionNovo.Enabled := False;
  end
  else
  begin
    actionFiltro.Enabled := True;
    actionFiltrar.Visible := False;
    actionLimparFiltro.Visible := False;
    actionCancelarFiltro.Visible := False;
    actionCancelar.Enabled := True;
    actionNovo.Enabled := True;
  end;
end;

procedure Tview_SisGeFEmployeeRegistration.RefreshGrid(iCode: integer);
begin
  if bFilter then
  begin
    Filtro;
  end
  else
  begin
    Formulafilro(comboBoxCampos.ItemIndex, pesquisar.Text);
  end;
  memTableEmployees.Locate('COD_CADASTRO',iCode, []);
end;

procedure Tview_SisGeFEmployeeRegistration.StartForm;
begin
end;

end.
