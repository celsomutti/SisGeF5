unit View.ExtraviosSinistrosMultas;

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
  View.CadastroExtravios;

type
  Tview_ExtraviosSinistrosMultas = class(TForm)
    actionListExtravios: TActionList;
    actionNovo: TAction;
    actionEditar: TAction;
    actionEstornar: TAction;
    actionCancelar: TAction;
    actionFiltro: TAction;
    actionFinalizar: TAction;
    actionExportar: TAction;
    actionFechar: TAction;
    barManager: TdxBarManager;
    barManagerBar1: TdxBar;
    actionImprimirDeclaracao: TAction;
    actionImprimirRecibo: TAction;
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
    actionImprimir: TAction;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    actionPesquisar: TAction;
    memTableExtravios: TFDMemTable;
    dsExtravios: TDataSource;
    actionPainelGrupos: TAction;
    memTableExtraviosCOD_EXTRAVIO: TIntegerField;
    memTableExtraviosCOD_AGENTE: TIntegerField;
    memTableExtraviosNOM_AGENTE: TStringField;
    memTableExtraviosCOD_ENTREGADOR: TIntegerField;
    memTableExtraviosCOD_CADASTRO: TIntegerField;
    memTableExtraviosNOM_ENTREGADOR: TStringField;
    memTableExtraviosNUM_CNPJ: TStringField;
    memTableExtraviosDES_RAZAO_SOCIAL: TStringField;
    memTableExtraviosDAT_EXTRAVIO: TDateField;
    memTableExtraviosDES_EXTRAVIO: TStringField;
    memTableExtraviosNUM_NOSSONUMERO: TStringField;
    memTableExtraviosVAL_PRODUTO: TFloatField;
    memTableExtraviosVAL_MULTA: TFloatField;
    memTableExtraviosVAL_VERBA: TFloatField;
    memTableExtraviosVAL_TOTAL: TFloatField;
    memTableExtraviosDOM_RESTRICAO: TStringField;
    memTableExtraviosCOD_TIPO: TStringField;
    memTableExtraviosDES_OBSERVACOES: TMemoField;
    memTableExtraviosVAL_PERCENTUAL_PAGO: TStringField;
    memTableExtraviosSEQ_ACAREACAO: TIntegerField;
    memTableExtraviosNUM_EXTRATO: TStringField;
    memTableExtravioscod_awb: TStringField;
    memTableExtraviosdes_produto: TStringField;
    pageControlPesquisa: TcxPageControl;
    tabResultado: TcxTabSheet;
    gridExtravios: TcxGrid;
    gridExtraviosDBTableView1: TcxGridDBTableView;
    gridExtraviosDBTableView1COD_EXTRAVIO: TcxGridDBColumn;
    gridExtraviosDBTableView1COD_TIPO: TcxGridDBColumn;
    gridExtraviosDBTableView1DES_EXTRAVIO: TcxGridDBColumn;
    gridExtraviosDBTableView1DAT_EXTRAVIO: TcxGridDBColumn;
    gridExtraviosDBTableView1NUM_NOSSONUMERO: TcxGridDBColumn;
    gridExtraviosDBTableView1DOM_RESTRICAO: TcxGridDBColumn;
    gridExtraviosDBTableView1VAL_PERCENTUAL_PAGO: TcxGridDBColumn;
    gridExtraviosDBTableView1VAL_PRODUTO: TcxGridDBColumn;
    gridExtraviosDBTableView1VAL_MULTA: TcxGridDBColumn;
    gridExtraviosDBTableView1VAL_VERBA: TcxGridDBColumn;
    gridExtraviosDBTableView1VAL_TOTAL: TcxGridDBColumn;
    gridExtraviosDBTableView1cod_awb: TcxGridDBColumn;
    gridExtraviosDBTableView1des_produto: TcxGridDBColumn;
    gridExtraviosDBTableView1SEQ_ACAREACAO: TcxGridDBColumn;
    gridExtraviosDBTableView1NUM_EXTRATO: TcxGridDBColumn;
    gridExtraviosDBTableView1COD_AGENTE: TcxGridDBColumn;
    gridExtraviosDBTableView1NOM_AGENTE: TcxGridDBColumn;
    gridExtraviosDBTableView1COD_ENTREGADOR: TcxGridDBColumn;
    gridExtraviosDBTableView1NOM_ENTREGADOR: TcxGridDBColumn;
    gridExtraviosDBTableView1COD_CADASTRO: TcxGridDBColumn;
    gridExtraviosDBTableView1NUM_CNPJ: TcxGridDBColumn;
    gridExtraviosDBTableView1DES_RAZAO_SOCIAL: TcxGridDBColumn;
    gridExtraviosDBTableView1DES_OBSERVACOES: TcxGridDBColumn;
    gridExtraviosLevel1: TcxGridLevel;
    panelPesquisa: TPanel;
    cxLabel1: TcxLabel;
    pesquisar: TcxTextEdit;
    cxButton1: TcxButton;
    cxLabel2: TcxLabel;
    comboBoxCampos: TcxComboBox;
    checkBoxGrupo: TcxCheckBox;
    tabFiltro: TcxTabSheet;
    actionFiltrar: TAction;
    actionCancelarFiltro: TAction;
    panelFooterFiltro: TPanel;
    filtroExtravios: TcxDBFilterControl;
    actionLimparFiltro: TAction;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    memTableExtravioscod_cliente: TIntegerField;
    gridExtraviosDBTableView1cod_cliente: TcxGridDBColumn;
    dsClientes: TDataSource;
    procedure actionFecharExecute(Sender: TObject);
    procedure actionPainelGruposExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridExtraviosDBTableView1NavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure actionPesquisarExecute(Sender: TObject);
    procedure actionFiltroExecute(Sender: TObject);
    procedure actionFiltrarExecute(Sender: TObject);
    procedure actionLimparFiltroExecute(Sender: TObject);
    procedure actionCancelarFiltroExecute(Sender: TObject);
    procedure actionCancelarExecute(Sender: TObject);
    procedure dsExtraviosStateChange(Sender: TObject);
    procedure memTableExtraviosAfterClose(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function Formulafilro(iIndex: integer; sTexto: string): boolean;
    procedure MostraFiltro;
    procedure Filtro;
    procedure CancelarPesquisa;
    procedure CancelaFiltro;
    procedure StartForm;
    procedure MostraCadastro(FAcao: TAcao; iNumero: integer);
  public
    { Public declarations }
  end;

var
  view_ExtraviosSinistrosMultas: Tview_ExtraviosSinistrosMultas;

implementation

{$R *.dfm}

uses Data.SisGeF;

procedure Tview_ExtraviosSinistrosMultas.actionCancelarExecute(Sender: TObject);
begin
  CancelarPesquisa;
end;

procedure Tview_ExtraviosSinistrosMultas.actionCancelarFiltroExecute(Sender: TObject);
begin
  CancelaFiltro;
end;

procedure Tview_ExtraviosSinistrosMultas.actionFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_ExtraviosSinistrosMultas.actionFiltrarExecute(Sender: TObject);
begin
  Filtro;
end;

procedure Tview_ExtraviosSinistrosMultas.actionFiltroExecute(Sender: TObject);
begin
  MostraFiltro;
end;

procedure Tview_ExtraviosSinistrosMultas.actionLimparFiltroExecute(Sender: TObject);
begin
  filtroExtravios.Clear;
end;

procedure Tview_ExtraviosSinistrosMultas.actionPainelGruposExecute(Sender: TObject);
begin
  gridExtraviosDBTableView1.OptionsView.GroupByBox := checkBoxGrupo.Checked;
end;

procedure Tview_ExtraviosSinistrosMultas.actionPesquisarExecute(Sender: TObject);
begin
  if not Formulafilro(comboBoxCampos.ItemIndex, pesquisar.Text) then
  begin
    Application.MessageBox('Nenhum registro encontrado!', 'Atenção', MB_OK + MB_ICONWARNING);
  end;
end;

procedure Tview_ExtraviosSinistrosMultas.CancelaFiltro;
begin
  filtroExtravios.Clear;
  pageControlPesquisa.ActivePageIndex := 0;
  actionFiltro.Enabled := True;
end;

procedure Tview_ExtraviosSinistrosMultas.CancelarPesquisa;
begin
  memTableExtravios.Active := False;
  pesquisar.Clear;
  comboBoxCampos.ItemIndex := 0;
  filtroExtravios.Clear;
end;

procedure Tview_ExtraviosSinistrosMultas.dsExtraviosStateChange(Sender: TObject);
begin
  if dsExtravios.State = dsBrowse then
  begin
    actionEditar.Enabled := not memTableExtravios.IsEmpty;
    actionCancelar.Enabled := not memTableExtravios.IsEmpty;
  end
  else if dsExtravios.State = dsBrowse then
  begin
    actionEditar.Enabled := not memTableExtravios.IsEmpty;
    actionCancelar.Enabled := not memTableExtravios.IsEmpty;
  end
end;

procedure Tview_ExtraviosSinistrosMultas.Filtro;
var
  FExtravios: TExtraviosMultasControl;
  sFiltro: string;
begin
  try
    FExtravios := TExtraviosMultasControl.Create;
    sFiltro := filtroExtravios.FilterText;
    memTableExtravios.Active := False;
    if FExtravios.PesquisaExtraviosMultas(0, '', sFiltro) then
    begin
      memTableExtravios.Data := FExtravios.Extravios.Query.Data;
      FExtravios.Extravios.Query.Connection.Connected := False;
    end;
    actionFiltro.Enabled := True;
    pageControlPesquisa.ActivePageIndex := 0;
  finally
    FExtravios.Free;
  end;
end;

procedure Tview_ExtraviosSinistrosMultas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
  view_ExtraviosSinistrosMultas := nil;
end;

procedure Tview_ExtraviosSinistrosMultas.FormShow(Sender: TObject);
begin
  StartForm;
end;

function Tview_ExtraviosSinistrosMultas.Formulafilro(iIndex: integer; sTexto: string): boolean;
var
  sMensagem: String;
  FExtravios: TExtraviosMultasControl;
begin
  try
  Result := False;
  memTableExtravios.Active := False;
  FExtravios := TExtraviosMultasControl.Create;
  if sTexto = '' then
  begin
    sMensagem := 'O campo de texto a pesquisar não foi preenchido!. ' +
    'Caso deseje visualizar todos os registros clique OK, porém, esse processo pode ser lento.';
    if Application.MessageBox(PChar(sMensagem), 'Atenção!', MB_OKCANCEL + MB_ICONWARNING) = IDCANCEL then
    begin
      Exit;
    end;
  end;
  if FExtravios.PesquisaExtraviosMultas(iIndex, sTexto, '') then
  begin
    memTableExtravios.Data := FExtravios.Extravios.Query.Data;
    FExtravios.Extravios.Query.Connection.Connected := False;
  end;
  Result := True;
  finally
    FExtravios.Free;
  end;
end;

procedure Tview_ExtraviosSinistrosMultas.gridExtraviosDBTableView1NavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  case AButtonIndex of
    16: gridExtraviosDBTableView1.ViewData.Expand(True);
    17: gridExtraviosDBTableView1.ViewData.Collapse(True);
  end;
end;

procedure Tview_ExtraviosSinistrosMultas.memTableExtraviosAfterClose(DataSet: TDataSet);
begin
  actionEditar.Enabled := False;
  actionCancelar.Enabled := False;
end;

procedure Tview_ExtraviosSinistrosMultas.MostraCadastro(FAcao: TAcao; iNumero: integer);
begin
  if not Assigned(view_CadastroExtravios) then
  begin
    view_CadastroExtravios := Tview_CadastroExtravios.Create(Application);
  end;
  view_CadastroExtravios.iNumero := iNumero;
  view_CadastroExtravios.FAcao := FAcao;

end;

procedure Tview_ExtraviosSinistrosMultas.MostraFiltro;
begin
  pageControlPesquisa.ActivePageIndex := 1;
  actionFiltro.Enabled := False;
end;

procedure Tview_ExtraviosSinistrosMultas.StartForm;
begin
  Data_Sisgef.mtbClientesEmpresa.Active := False;
  Data_Sisgef.mtbClientesEmpresa.Active := True;
  Data_Sisgef.PopulaClientesEmpresa;
end;

end.
