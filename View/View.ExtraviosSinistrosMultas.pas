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
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.StorageBin;

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
    panelPesquisa: TPanel;
    cxLabel1: TcxLabel;
    pesquisar: TcxTextEdit;
    actionPesquisar: TAction;
    cxButton1: TcxButton;
    cxLabel2: TcxLabel;
    cxComboBox1: TcxComboBox;
    checkBoxGrupo: TcxCheckBox;
    gridExtraviosDBTableView1: TcxGridDBTableView;
    gridExtraviosLevel1: TcxGridLevel;
    gridExtravios: TcxGrid;
    memTableExtravios: TFDMemTable;
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
    dsExtravios: TDataSource;
    gridExtraviosDBTableView1COD_EXTRAVIO: TcxGridDBColumn;
    gridExtraviosDBTableView1COD_AGENTE: TcxGridDBColumn;
    gridExtraviosDBTableView1NOM_AGENTE: TcxGridDBColumn;
    gridExtraviosDBTableView1COD_ENTREGADOR: TcxGridDBColumn;
    gridExtraviosDBTableView1COD_CADASTRO: TcxGridDBColumn;
    gridExtraviosDBTableView1NOM_ENTREGADOR: TcxGridDBColumn;
    gridExtraviosDBTableView1NUM_CNPJ: TcxGridDBColumn;
    gridExtraviosDBTableView1DES_RAZAO_SOCIAL: TcxGridDBColumn;
    gridExtraviosDBTableView1DAT_EXTRAVIO: TcxGridDBColumn;
    gridExtraviosDBTableView1DES_EXTRAVIO: TcxGridDBColumn;
    gridExtraviosDBTableView1NUM_NOSSONUMERO: TcxGridDBColumn;
    gridExtraviosDBTableView1VAL_PRODUTO: TcxGridDBColumn;
    gridExtraviosDBTableView1VAL_MULTA: TcxGridDBColumn;
    gridExtraviosDBTableView1VAL_VERBA: TcxGridDBColumn;
    gridExtraviosDBTableView1VAL_TOTAL: TcxGridDBColumn;
    gridExtraviosDBTableView1DOM_RESTRICAO: TcxGridDBColumn;
    gridExtraviosDBTableView1COD_TIPO: TcxGridDBColumn;
    gridExtraviosDBTableView1DES_OBSERVACOES: TcxGridDBColumn;
    gridExtraviosDBTableView1VAL_PERCENTUAL_PAGO: TcxGridDBColumn;
    gridExtraviosDBTableView1SEQ_ACAREACAO: TcxGridDBColumn;
    gridExtraviosDBTableView1NUM_EXTRATO: TcxGridDBColumn;
    gridExtraviosDBTableView1cod_awb: TcxGridDBColumn;
    gridExtraviosDBTableView1des_produto: TcxGridDBColumn;
    actionPainelGrupos: TAction;
    procedure actionFecharExecute(Sender: TObject);
    procedure actionPainelGruposExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridExtraviosDBTableView1NavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  view_ExtraviosSinistrosMultas: Tview_ExtraviosSinistrosMultas;

implementation

{$R *.dfm}

uses Data.SisGeF;

procedure Tview_ExtraviosSinistrosMultas.actionFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_ExtraviosSinistrosMultas.actionPainelGruposExecute(Sender: TObject);
begin
  gridExtraviosDBTableView1.OptionsView.GroupByBox := checkBoxGrupo.Checked;
end;

procedure Tview_ExtraviosSinistrosMultas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
  view_ExtraviosSinistrosMultas := null;
end;

procedure Tview_ExtraviosSinistrosMultas.gridExtraviosDBTableView1NavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  case AButtonIndex of
    16: gridExtraviosDBTableView1.ViewData.Expand(True);
    17: gridExtraviosDBTableView1.ViewData.Collapse(True);
  end;
end;

end.
