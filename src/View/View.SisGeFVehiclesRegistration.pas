unit View.SisGeFVehiclesRegistration;

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
  Control.EntregadoresExpressas, Global.Parametros, frxClass, cxImageComboBox, cxProgressBar, Controller.APICEP, Controller.APICNPJ,
  Controller.SisGeFVehiclesRegistration;

type
  Tview_SisGeFVehicleRegistration = class(TForm)
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
    memTableVeiculos: TFDMemTable;
    dsVeiculos: TDataSource;
    actionPainelGrupos: TAction;
    pageControlPesquisa: TcxPageControl;
    tabResultado: TcxTabSheet;
    gridVeiculos: TcxGrid;
    gridVeiculosDBTableView1: TcxGridDBTableView;
    gridVeiculosLevel1: TcxGridLevel;
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
    memTableVeiculosCOD_VEICULO: TIntegerField;
    memTableVeiculosNUM_CNPJ: TStringField;
    memTableVeiculosNOM_PROPRIETARIO: TStringField;
    memTableVeiculosNUM_RG: TStringField;
    memTableVeiculosCOD_ENTREGADOR: TIntegerField;
    memTableVeiculosDES_RAZAO_SOCIAL: TStringField;
    memTableVeiculosDES_MARCA: TStringField;
    memTableVeiculosDES_MODELO: TStringField;
    memTableVeiculosDES_PLACA: TStringField;
    memTableVeiculosDES_TIPO: TStringField;
    memTableVeiculosNUM_CHASSIS: TStringField;
    memTableVeiculosDES_ANO: TStringField;
    memTableVeiculosDES_COR: TStringField;
    memTableVeiculosNUM_RENAVAN: TStringField;
    memTableVeiculosANO_EXERCICIO_CLRV: TStringField;
    gridVeiculosDBTableView1COD_VEICULO: TcxGridDBColumn;
    gridVeiculosDBTableView1NUM_CNPJ: TcxGridDBColumn;
    gridVeiculosDBTableView1NOM_PROPRIETARIO: TcxGridDBColumn;
    gridVeiculosDBTableView1NUM_RG: TcxGridDBColumn;
    gridVeiculosDBTableView1COD_ENTREGADOR: TcxGridDBColumn;
    gridVeiculosDBTableView1DES_RAZAO_SOCIAL: TcxGridDBColumn;
    gridVeiculosDBTableView1DES_MARCA: TcxGridDBColumn;
    gridVeiculosDBTableView1DES_MODELO: TcxGridDBColumn;
    gridVeiculosDBTableView1DES_PLACA: TcxGridDBColumn;
    gridVeiculosDBTableView1DES_TIPO: TcxGridDBColumn;
    gridVeiculosDBTableView1NUM_CHASSIS: TcxGridDBColumn;
    gridVeiculosDBTableView1DES_ANO: TcxGridDBColumn;
    gridVeiculosDBTableView1DES_COR: TcxGridDBColumn;
    gridVeiculosDBTableView1NUM_RENAVAN: TcxGridDBColumn;
    gridVeiculosDBTableView1ANO_EXERCICIO_CLRV: TcxGridDBColumn;
    procedure actionFecharExecute(Sender: TObject);
    procedure actionPainelGruposExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionPesquisarExecute(Sender: TObject);
    procedure actionFiltroExecute(Sender: TObject);
    procedure actionFiltrarExecute(Sender: TObject);
    procedure actionLimparFiltroExecute(Sender: TObject);
    procedure actionCancelarFiltroExecute(Sender: TObject);
    procedure actionCancelarExecute(Sender: TObject);
    procedure dsVeiculosStateChange(Sender: TObject);
    procedure memTableVeiculosAfterClose(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure actionEditarExecute(Sender: TObject);
    procedure actionNovoExecute(Sender: TObject);
    procedure gridVeiculosDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
      AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actionExportarExecute(Sender: TObject);
    procedure pageControlPesquisaChange(Sender: TObject);
    procedure gridVeiculosDBTableView1NavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
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
  view_SisGeFVehicleRegistration: Tview_SisGeFVehicleRegistration;
  bFilter: boolean;
implementation

{$R *.dfm}

uses Data.SisGeF, View.SisGeFConfirmPassword, View.SisGeFVehicleRegistrationDetail;

procedure Tview_SisGeFVehicleRegistration.actionCancelarExecute(Sender: TObject);
begin
  CancelarPesquisa;
end;

procedure Tview_SisGeFVehicleRegistration.actionCancelarFiltroExecute(Sender: TObject);
begin
  CancelaFiltro;
end;

procedure Tview_SisGeFVehicleRegistration.actionEditarExecute(Sender: TObject);
begin
  EditData;
end;

procedure Tview_SisGeFVehicleRegistration.actionExportarExecute(Sender: TObject);
begin
  Exportar;
end;

procedure Tview_SisGeFVehicleRegistration.actionFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_SisGeFVehicleRegistration.actionFiltrarExecute(Sender: TObject);
begin
  Filtro;
end;

procedure Tview_SisGeFVehicleRegistration.actionFiltroExecute(Sender: TObject);
begin
  MostraFiltro;
end;

procedure Tview_SisGeFVehicleRegistration.actionLimparFiltroExecute(Sender: TObject);
begin
  filtroVeiculos.Clear;
end;

procedure Tview_SisGeFVehicleRegistration.actionNovoExecute(Sender: TObject);
begin
  InsertData;
end;

procedure Tview_SisGeFVehicleRegistration.actionPainelGruposExecute(Sender: TObject);
begin
  gridVeiculosDBTableView1.OptionsView.GroupByBox := checkBoxGrupo.Checked;
end;

procedure Tview_SisGeFVehicleRegistration.actionPesquisarExecute(Sender: TObject);
begin
  if not Formulafilro(comboBoxCampos.ItemIndex, pesquisar.Text) then
  begin
    Application.MessageBox('Nenhum registro encontrado!', 'Atenção', MB_OK + MB_ICONWARNING);
  end;
end;

procedure Tview_SisGeFVehicleRegistration.CancelaFiltro;
begin
  filtroVeiculos.Clear;
  pageControlPesquisa.ActivePageIndex := 0;
end;

procedure Tview_SisGeFVehicleRegistration.CancelarPesquisa;
begin
  memTableVeiculos.Active := False;
  pesquisar.Clear;
  comboBoxCampos.ItemIndex := 0;
  filtroVeiculos.Clear;
end;

function Tview_SisGeFVehicleRegistration.ConfirmPassword: boolean;
begin
  Result := False;
  if not Assigned(view_SisGeFConfirmPassword) then
    view_SisGeFConfirmPassword := Tview_SisGeFConfirmPassword.Create(Application);
  Result := (view_SisGeFConfirmPassword.ShowModal = mrOk);
  FreeAndNil(view_SisGeFConfirmPassword);
end;

procedure Tview_SisGeFVehicleRegistration.dsVeiculosStateChange(Sender: TObject);
begin
  if dsVeiculos.State = dsBrowse then
  begin
    actionEditar.Enabled := not memTableVeiculos.IsEmpty;
    actionCancelar.Enabled := not memTableVeiculos.IsEmpty;
  end
end;

procedure Tview_SisGeFVehicleRegistration.EditData;
begin
  MostraCadastro(tacAlterar, memTableveiculosCOD_VEICULO.AsInteger);
end;

procedure Tview_SisGeFVehicleRegistration.Exportar;
var
  fnUtil : Common.Utils.TUtils;
  sMensagem: String;
begin
  try
    fnUtil := Common.Utils.TUtils.Create;

    if memTableVeiculos.IsEmpty then Exit;

    if Data_Sisgef.SaveDialog.Execute() then
    begin
      if FileExists(Data_Sisgef.SaveDialog.FileName) then
      begin
        sMensagem := 'Arquivo ' + Data_Sisgef.SaveDialog.FileName + ' já existe! Sobrepor ?';
        if MessageDlg(sMensagem, mtConfirmation, [mbYes,mbNo], 0) = mrNo then Exit
      end;
      fnUtil.ExportarDados(gridVeiculos,Data_Sisgef.SaveDialog.FileName);
    end;
  finally
    fnUtil.Free;
  end;end;

procedure Tview_SisGeFVehicleRegistration.Filtro;
var
  FVeiculos: TControllerSisGeFVehiclesRegistration;
  sFiltro: string;
begin
  try
    FVeiculos := TControllerSisGeFVehiclesRegistration.Create;
    sFiltro := filtroVeiculos.FilterText;
    memTableVeiculos.Active := False;
    if FVeiculos.SearchVehicle(0, '', sFiltro) then
    begin
      memTableVeiculos.Data := FVeiculos.Veiculos.Query.Data;
      FVeiculos.Veiculos.Query.Connection.Connected := False;
    end;
    actionFiltro.Enabled := True;
    bFilter := True;
    pageControlPesquisa.ActivePageIndex := 0;
  finally
    FVeiculos.Free;
  end;
end;

procedure Tview_SisGeFVehicleRegistration.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  memTableVeiculos.Active := False;
  Action:= caFree;
  view_SisGeFVehicleRegistration := nil;
end;

procedure Tview_SisGeFVehicleRegistration.FormShow(Sender: TObject);
begin
  StartForm;
end;

function Tview_SisGeFVehicleRegistration.Formulafilro(iIndex: integer; sTexto: string): boolean;
var
  sMensagem: String;
  FVeiculos: TControllerSisGeFVehiclesRegistration;
begin
  try
  Result := False;
  memTableVeiculos.Active := False;
  FVeiculos := TControllerSisGeFVehiclesRegistration.Create;
  if sTexto = '' then
  begin
    sMensagem := 'O campo de texto a pesquisar não foi preenchido!. ' +
    'Caso deseje visualizar todos os registros clique OK, porém, esse processo pode ser lento.';
    if Application.MessageBox(PChar(sMensagem), 'Atenção!', MB_OKCANCEL + MB_ICONWARNING) = IDCANCEL then
    begin
      Exit;
    end;
  end;
  if FVeiculos.SearchVehicle(iIndex, sTexto, '') then
  begin
    memTableVeiculos.Data := FVeiculos.Veiculos.Query.Data;
    FVeiculos.Veiculos.Query.Connection.Connected := False;
  end;
  bFilter := False;
  Result := True;
  finally
    FVeiculos.Free;
  end;
end;

procedure Tview_SisGeFVehicleRegistration.gridVeiculosDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if memTableVeiculos.IsEmpty then
    Exit;
  EditData;
end;

procedure Tview_SisGeFVehicleRegistration.gridVeiculosDBTableView1NavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  case AButtonIndex of
    16: gridVeiculosDBTableView1.ViewData.Expand(True);
    17: gridVeiculosDBTableView1.ViewData.Collapse(True);
  end;
end;

procedure Tview_SisGeFVehicleRegistration.InsertData;
begin
  MostraCadastro(tacIncluir, 0);
end;

procedure Tview_SisGeFVehicleRegistration.memTableVeiculosAfterClose(DataSet: TDataSet);
begin
  actionEditar.Enabled := False;
  actionCancelar.Enabled := False;
end;

procedure Tview_SisGeFVehicleRegistration.MostraCadastro(FAcao: TAcao; iNumero: integer);
begin
  if not Assigned(view_SisGeFVehiclesRegistrationDetail) then
  begin
    view_SisGeFVehiclesRegistrationDetail := Tview_SisGeFVehiclesRegistrationDetail.Create(Application);
  end;
  view_SisGeFVehiclesRegistrationDetail.iID := iNumero;
  view_SisGeFVehiclesRegistrationDetail.fAcao := FAcao;
  if view_SisGeFVehiclesRegistrationDetail.ShowModal() = mrOk then
    Application.MessageBox('Dados gravados com sucesso!', 'Atenção', MB_OK + MB_ICONINFORMATION);
  FreeAndNil(view_SisGeFVehiclesRegistrationDetail);
end;

procedure Tview_SisGeFVehicleRegistration.MostraFiltro;
begin
  pageControlPesquisa.ActivePageIndex := 1;
end;

procedure Tview_SisGeFVehicleRegistration.pageControlPesquisaChange(Sender: TObject);
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

procedure Tview_SisGeFVehicleRegistration.RefreshGrid(iCode: integer);
begin
  if bFilter then
  begin
    Filtro;
  end
  else
  begin
    Formulafilro(comboBoxCampos.ItemIndex, pesquisar.Text);
  end;
  memTableVeiculos.Locate('COD_VEICULO',iCode, []);
end;

procedure Tview_SisGeFVehicleRegistration.StartForm;
begin
end;

end.
