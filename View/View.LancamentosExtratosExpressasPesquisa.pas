unit View.LancamentosExtratosExpressasPesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxCurrencyEdit, cxCheckBox, System.Actions, Vcl.ActnList,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, FireDAC.Stan.StorageBin, Control.Lancamentos;

type
  Tview_LancamentosExtratosExpressasPesquisa = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    labelTitle: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dsLancamnentos: TDataSource;
    gridLancamentosDBTableView1: TcxGridDBTableView;
    gridLancamentosLevel1: TcxGridLevel;
    gridLancamentos: TcxGrid;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    actionListLancamentos: TActionList;
    actionFiltroAvancado: TAction;
    actionNovoLancamento: TAction;
    actionEditarLancamento: TAction;
    actionExluirLancamento: TAction;
    actionExportarDados: TAction;
    actionPainelGrupo: TAction;
    actionExpandir: TAction;
    actionRetrair: TAction;
    actionRestaurar: TAction;
    actionFecharTela: TAction;
    actionCancelarFiltro: TAction;
    cxButton1: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    cxButton5: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    cxButton6: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    memTableLancamentos: TFDMemTable;
    fdLancamentos: TFDQuery;
    fdLancamentosCOD_LANCAMENTO: TIntegerField;
    fdLancamentosDES_LANCAMENTO: TStringField;
    fdLancamentosDAT_LANCAMENTO: TDateField;
    fdLancamentosCOD_CADASTRO: TIntegerField;
    fdLancamentosNOM_CADASTRO: TStringField;
    fdLancamentosCOD_ENTREGADOR: TIntegerField;
    fdLancamentosNOM_ENTREGADOR: TStringField;
    fdLancamentosDES_TIPO: TStringField;
    fdLancamentosVAL_LANCAMENTO: TFloatField;
    fdLancamentosDOM_DESCONTO: TStringField;
    fdLancamentosDAT_DESCONTO: TDateField;
    fdLancamentosNUM_EXTRATO: TStringField;
    fdLancamentosDOM_PERSISTIR: TStringField;
    fdLancamentosCOD_REFERENCIA: TIntegerField;
    fdLancamentosDAT_CADASTRO: TDateTimeField;
    fdLancamentosNOM_USUARIO: TStringField;
    memTableLancamentosCOD_LANCAMENTO: TIntegerField;
    memTableLancamentosDES_LANCAMENTO: TStringField;
    memTableLancamentosDAT_LANCAMENTO: TDateField;
    memTableLancamentosCOD_CADASTRO: TIntegerField;
    memTableLancamentosNOM_CADASTRO: TStringField;
    memTableLancamentosCOD_ENTREGADOR: TIntegerField;
    memTableLancamentosNOM_ENTREGADOR: TStringField;
    memTableLancamentosDES_TIPO: TStringField;
    memTableLancamentosVAL_LANCAMENTO: TFloatField;
    memTableLancamentosDOM_DESCONTO: TStringField;
    memTableLancamentosDAT_DESCONTO: TDateField;
    memTableLancamentosNUM_EXTRATO: TStringField;
    memTableLancamentosDOM_PERSISTIR: TStringField;
    memTableLancamentosCOD_REFERENCIA: TIntegerField;
    memTableLancamentosDAT_CADASTRO: TDateTimeField;
    memTableLancamentosNOM_USUARIO: TStringField;
    gridLancamentosDBTableView1COD_LANCAMENTO: TcxGridDBColumn;
    gridLancamentosDBTableView1DES_LANCAMENTO: TcxGridDBColumn;
    gridLancamentosDBTableView1DAT_LANCAMENTO: TcxGridDBColumn;
    gridLancamentosDBTableView1COD_CADASTRO: TcxGridDBColumn;
    gridLancamentosDBTableView1NOM_CADASTRO: TcxGridDBColumn;
    gridLancamentosDBTableView1COD_ENTREGADOR: TcxGridDBColumn;
    gridLancamentosDBTableView1NOM_ENTREGADOR: TcxGridDBColumn;
    gridLancamentosDBTableView1DES_TIPO: TcxGridDBColumn;
    gridLancamentosDBTableView1VAL_LANCAMENTO: TcxGridDBColumn;
    gridLancamentosDBTableView1DOM_DESCONTO: TcxGridDBColumn;
    gridLancamentosDBTableView1DAT_DESCONTO: TcxGridDBColumn;
    gridLancamentosDBTableView1NUM_EXTRATO: TcxGridDBColumn;
    gridLancamentosDBTableView1DOM_PERSISTIR: TcxGridDBColumn;
    gridLancamentosDBTableView1COD_REFERENCIA: TcxGridDBColumn;
    gridLancamentosDBTableView1DAT_CADASTRO: TcxGridDBColumn;
    gridLancamentosDBTableView1NOM_USUARIO: TcxGridDBColumn;
    procedure actionFiltroAvancadoExecute(Sender: TObject);
    procedure actionFecharTelaExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure fdLancamentosAfterClose(DataSet: TDataSet);
  private
    { Private declarations }
    procedure AbreFiltroAvancado;
    procedure StartForm;
    procedure PopulaLancamentos;
  public
    { Public declarations }
  end;

var
  view_LancamentosExtratosExpressasPesquisa: Tview_LancamentosExtratosExpressasPesquisa;
  sSQLOld, sFilter: String;

implementation

{$R *.dfm}

uses Data.SisGeF, View.FiltroGenerico;

procedure Tview_LancamentosExtratosExpressasPesquisa.AbreFiltroAvancado;
begin
  if not Assigned(view_FiltroGenerico) then
    view_FiltroGenerico := Tview_FiltroGenerico.Create(Application);

  view_FiltroGenerico.filtro.DataSet := memTableLancamentos;

  if view_FiltroGenerico.ShowModal = mrOK then
  begin
    sFilter := view_FiltroGenerico.sFiltro;
    ShowMessage(sFilter);
  end;

end;

procedure Tview_LancamentosExtratosExpressasPesquisa.actionFecharTelaExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_LancamentosExtratosExpressasPesquisa.actionFiltroAvancadoExecute(Sender: TObject);
begin
  AbreFiltroAvancado;
end;

procedure Tview_LancamentosExtratosExpressasPesquisa.fdLancamentosAfterClose(DataSet: TDataSet);
begin
  Data_Sisgef.FDConnectionMySQL.Connected := False;
end;

procedure Tview_LancamentosExtratosExpressasPesquisa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(view_FiltroGenerico);
  memTableLancamentos.Active := False;
  Action := caFree;
  view_LancamentosExtratosExpressasPesquisa := nil;
end;

procedure Tview_LancamentosExtratosExpressasPesquisa.FormShow(Sender: TObject);
begin
  StartForm;
end;

procedure Tview_LancamentosExtratosExpressasPesquisa.PopulaLancamentos;
begin
  fdLancamentos.Active := True;
  memTableLancamentos.Active := False;
  memTableLancamentos.Data := fdLancamentos.Data;
  fdLancamentos.Active := False;
end;

procedure Tview_LancamentosExtratosExpressasPesquisa.StartForm;
begin
  labelTitle.Caption := Self.Caption;
  sFilter := '';
  PopulaLancamentos;
  gridLancamentosDBTableView1.Controller.FocusedRowIndex := 0;
end;

end.
