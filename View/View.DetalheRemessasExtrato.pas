unit View.DetalheRemessasExtrato;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutContainer, cxLabel, cxClasses,
  dxLayoutControl, System.Actions, Vcl.ActnList, dxLayoutControlAdapters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGridExportLink, ShellAPI, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxCurrencyEdit, System.StrUtils, cxCheckBox, cxImageComboBox, cxBlobEdit, cxProgressBar, cxDBLookupComboBox;

type
  Tview_DetalheRemessasExtrato = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxLabel1: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    aclVisualizacao: TActionList;
    actFechar: TAction;
    tvPlanilha: TcxGridDBTableView;
    lvPlanilha: TcxGridLevel;
    grdPlanilha: TcxGrid;
    dxLayoutItem2: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    ds: TDataSource;
    SaveDialog: TSaveDialog;
    fdQueryDetalhe: TFDQuery;
    tvPlanilhaNUM_NOSSONUMERO: TcxGridDBColumn;
    tvPlanilhaCOD_CLIENTE_EMPRESA: TcxGridDBColumn;
    tvPlanilhaCOD_AGENTE: TcxGridDBColumn;
    tvPlanilhaCOD_ENTREGADOR: TcxGridDBColumn;
    tvPlanilhaNUM_CEP: TcxGridDBColumn;
    tvPlanilhaDAT_EXPEDICAO: TcxGridDBColumn;
    tvPlanilhaDAT_PREV_DISTRIBUICAO: TcxGridDBColumn;
    tvPlanilhaQTD_VOLUMES: TcxGridDBColumn;
    tvPlanilhaDAT_ATRIBUICAO: TcxGridDBColumn;
    tvPlanilhaDAT_BAIXA: TcxGridDBColumn;
    tvPlanilhaQTD_PESO_REAL: TcxGridDBColumn;
    tvPlanilhaVAL_VERBA_FRANQUIA: TcxGridDBColumn;
    tvPlanilhaVAL_VERBA_ENTREGADOR: TcxGridDBColumn;
    tvPlanilhaDES_TIPO_PESO: TcxGridDBColumn;
    tvPlanilhaVAL_PRODUTO: TcxGridDBColumn;
    tvPlanilhaQTD_ALTURA: TcxGridDBColumn;
    tvPlanilhaQTD_LARGURA: TcxGridDBColumn;
    tvPlanilhaQTD_COMPRIMENTO: TcxGridDBColumn;
    tvPlanilhaNOM_FANTASIA: TcxGridDBColumn;
    fdQueryLancamentos: TFDQuery;
    dsLancamentos: TDataSource;
    dxLayoutGroup2: TdxLayoutGroup;
    gridExtraviosDBTableView1: TcxGridDBTableView;
    gridExtraviosLevel1: TcxGridLevel;
    gridExtravios: TcxGrid;
    dxLayoutItem6: TdxLayoutItem;
    gridLancamentosDBTableView1: TcxGridDBTableView;
    gridLancamentosLevel1: TcxGridLevel;
    gridLancamentos: TcxGrid;
    dxLayoutItem7: TdxLayoutItem;
    gridLancamentosDBTableView1COD_LANCAMENTO: TcxGridDBColumn;
    gridLancamentosDBTableView1DES_LANCAMENTO: TcxGridDBColumn;
    gridLancamentosDBTableView1DAT_LANCAMENTO: TcxGridDBColumn;
    gridLancamentosDBTableView1COD_CADASTRO: TcxGridDBColumn;
    gridLancamentosDBTableView1COD_ENTREGADOR: TcxGridDBColumn;
    gridLancamentosDBTableView1DES_TIPO: TcxGridDBColumn;
    gridLancamentosDBTableView1VAL_LANCAMENTO: TcxGridDBColumn;
    gridLancamentosDBTableView1DOM_DESCONTO: TcxGridDBColumn;
    gridLancamentosDBTableView1DAT_DESCONTO: TcxGridDBColumn;
    gridLancamentosDBTableView1NUM_EXTRATO: TcxGridDBColumn;
    gridLancamentosDBTableView1DOM_PERSISTIR: TcxGridDBColumn;
    gridLancamentosDBTableView1COD_REFERENCIA: TcxGridDBColumn;
    gridLancamentosDBTableView1DAT_CADASTRO: TcxGridDBColumn;
    gridLancamentosDBTableView1NOM_USUARIO: TcxGridDBColumn;
    fdQueryExtravios: TFDQuery;
    dsExtravios: TDataSource;
    gridExtraviosDBTableView1COD_EXTRAVIO: TcxGridDBColumn;
    gridExtraviosDBTableView1COD_ENTREGADOR: TcxGridDBColumn;
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
    gridExtraviosDBTableView1NOM_EXECUTOR: TcxGridDBColumn;
    gridExtraviosDBTableView1DAT_MANUTENCAO: TcxGridDBColumn;
    gridExtraviosDBTableView1NUM_EXTRATO: TcxGridDBColumn;
    gridConsolidadoDBTableView1: TcxGridDBTableView;
    gridConsolidadoLevel1: TcxGridLevel;
    gridConsolidado: TcxGrid;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    fdQueryConsolidado: TFDQuery;
    dsConsolidado: TDataSource;
    gridConsolidadoDBTableView1cod_cliente: TcxGridDBColumn;
    gridConsolidadoDBTableView1qtd_entregas: TcxGridDBColumn;
    gridConsolidadoDBTableView1val_verba: TcxGridDBColumn;
    gridConsolidadoDBTableView1val_total: TcxGridDBColumn;
    dsCliente: TDataSource;
    actConsolidado: TAction;
    cxButton2: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actFecharExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tvPlanilhaNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure gridExtraviosDBTableView1NavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure gridLancamentosDBTableView1NavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure gridConsolidadoDBTableView1NavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure actConsolidadoExecute(Sender: TObject);
  private
    { Private declarations }
    procedure ExportarDados;
    procedure Pesquisa;
    procedure Consolidado;
  public
    { Public declarations }
    FCliente: Integer;
    FAgente: Integer;
    FEntregador: Integer;
    FDataInicial: TDate;
    FDataFinal: TDate;
    FValor: Double;
    FExtrato: String;
  end;

var
  view_DetalheRemessasExtrato: Tview_DetalheRemessasExtrato;
  sFileExt : String;
  sSQLOld, sSQLOldExtravios, sSQLOldLancamentos, sSQLOldConsolidado: String;

implementation

{$R *.dfm}

uses Data.SisGeF, Common.Utils;

procedure Tview_DetalheRemessasExtrato.actConsolidadoExecute(Sender: TObject);
begin
  Consolidado;
end;

procedure Tview_DetalheRemessasExtrato.actFecharExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure Tview_DetalheRemessasExtrato.Consolidado;
var
  sQuery: String;
begin
  if dxLayoutItem4.Visible then
  begin
    dxLayoutItem4.Visible := False;
    fdQueryConsolidado.Active := False;
    fdQueryConsolidado.SQL.Text := sSQLOldConsolidado;
  end
  else
  begin
    dxLayoutItem4.Visible := True;
    sQuery := ' where cod_cliente_empresa = ' + FCliente.ToString + ' and ' +
    'cod_agente = ' + FAgente.ToString + ' and cod_entregador = ' + FEntregador.ToString +
    ' and dat_baixa between "' + FormatDateTime('yyyy-mm-dd', FDataInicial) + '" and "' +
    FormatDateTime('yyyy-mm-dd', FDataFinal) + '" ' +
    'group by cod_cliente_empresa, val_verba';
    fdQueryConsolidado.SQL.Text := sSQLOldConsolidado + sQuery;
    fdQueryConsolidado.Active := True;
  end;
end;

procedure Tview_DetalheRemessasExtrato.ExportarDados;
begin
  SaveDialog.DefaultExt := 'xlsx';
  if grdPlanilha.IsFocused then
  begin
    if SaveDialog.Execute then
    begin
      TUtils.ExportarDados(grdPlanilha, SaveDialog.FileName);
    end;
  end
  else if gridExtravios.IsFocused then
  begin
    if SaveDialog.Execute then
    begin
      TUtils.ExportarDados(gridExtravios, SaveDialog.FileName);
    end;
  end
  else if gridLancamentos.IsFocused then
  begin
    if SaveDialog.Execute then
    begin
      TUtils.ExportarDados(gridLancamentos, SaveDialog.FileName);
    end;
  end
  else if gridConsolidado.IsFocused then
  begin
    if SaveDialog.Execute then
    begin
      TUtils.ExportarDados(gridConsolidado, SaveDialog.FileName);
    end;
  end;
end;

procedure Tview_DetalheRemessasExtrato.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fdQueryDetalhe.Active := False;
  fdQueryExtravios.Active := False;
  fdQueryLancamentos.Active := False;
  Data_Sisgef.FDConnectionMySQL.Connected := False;
  fdQueryDetalhe.SQL.Text := sSQLOld;
  fdQueryExtravios.SQL.Text := sSQLOldExtravios;
  fdQueryLancamentos.SQL.Text := sSQLOldLancamentos;
end;

procedure Tview_DetalheRemessasExtrato.FormShow(Sender: TObject);
begin
  sSQLOld := fdQueryDetalhe.SQL.Text;
  sSQLOldExtravios := fdQueryExtravios.SQL.Text;
  sSQLOldLancamentos := fdQueryLancamentos.SQL.Text;
  sSQLOldConsolidado := fdQueryConsolidado.SQL.Text;
  if FValor = 0 then
  begin
    Self.Top := Screen.WorkAreaTop;
    Self.Left := Screen.WorkAreaLeft;
    Self.Width := Screen.WorkAreaWidth;
    Self.Height := Screen.WorkAreaHeight;
  end;
  Pesquisa;
end;

procedure Tview_DetalheRemessasExtrato.gridConsolidadoDBTableView1NavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  case AButtonIndex of
    16: ExportarDados;
  end;
end;

procedure Tview_DetalheRemessasExtrato.gridExtraviosDBTableView1NavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer;
  var ADone: Boolean);
begin
  case AButtonIndex of
    16: ExportarDados;
  end;
end;

procedure Tview_DetalheRemessasExtrato.gridLancamentosDBTableView1NavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  case AButtonIndex of
    16: ExportarDados;
  end;
end;

procedure Tview_DetalheRemessasExtrato.Pesquisa;
var
  sQuery, sQueryExtravios, sQueryLancamentos: String;
  sValor: String;
begin
  dxLayoutItem4.Visible := False;
  if FValor <> 0 then
  begin
    dxLayoutGroup2.Visible := False;
    sQuery := ' where cod_cliente_empresa = ' + FCliente.ToString + ' and ' +
    'cod_agente = ' + FAgente.ToString + ' and cod_entregador = ' + FEntregador.ToString +
    ' and dat_baixa between "' + FormatDateTime('yyyy-mm-dd', FDataInicial) + '" and "' +
    FormatDateTime('yyyy-mm-dd', FDataFinal) + '"';
    sValor := ReplaceStr(FValor.ToString,'.','');
    sValor := ReplaceStr(sValor,',','.');
    sQuery := sQuery + ' and val_verba_entregador = ' + sValor;
    fdQueryDetalhe.SQL.Text := sSQLOld + sQuery;
    fdQueryDetalhe.Active := True;
  end
  else
  begin
    dxLayoutGroup2.Visible := True;
    sQuery := ' where cod_cliente_empresa = ' + FCliente.ToString + ' and ' +
    'cod_agente = ' + FAgente.ToString + ' and cod_entregador = ' + FEntregador.ToString +
    ' and dat_baixa between "' + FormatDateTime('yyyy-mm-dd', FDataInicial) + '" and "' +
    FormatDateTime('yyyy-mm-dd', FDataFinal) + '"';
    fdQueryDetalhe.SQL.Text := sSQLOld + sQuery;
    fdQueryDetalhe.Active := True;
    sQueryExtravios := ' where num_extrato = "' + FExtrato + '"';
    fdQueryExtravios.SQL.Text := sSQLOldExtravios + sQueryExtravios;
    fdQueryExtravios.Active := True;
    sQueryLancamentos := ' where cod_entregador = ' + FEntregador.ToString +
    ' and dat_lancamento between "' + FormatDateTime('yyyy-mm-dd', FDataInicial) + '" and "' +
    FormatDateTime('yyyy-mm-dd', FDataFinal) + '"';
    fdQueryLancamentos.SQL.Text := sSQLOldLancamentos + sQueryLancamentos;
    fdQueryLancamentos.Active := True;
  end;
end;

procedure Tview_DetalheRemessasExtrato.tvPlanilhaNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer;
  var ADone: Boolean);
begin
  case AButtonIndex of
    16: ExportarDados;
    17: tvPlanilha.ViewData.Expand(True);
    18: tvPlanilha.ViewData.Collapse(True);
  end;
end;

end.
