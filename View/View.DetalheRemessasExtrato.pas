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
  FireDAC.Comp.Client, cxCurrencyEdit, System.StrUtils;

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
    cxButton2: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    actExpandir: TAction;
    actRetrair: TAction;
    cxButton3: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actFecharExecute(Sender: TObject);
    procedure tvPlanilhaNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure FormShow(Sender: TObject);
    procedure actExpandirExecute(Sender: TObject);
    procedure actRetrairExecute(Sender: TObject);
  private
    { Private declarations }
    procedure ExportarDados;
    procedure Pesquisa;
  public
    { Public declarations }
    FCliente: Integer;
    FAgente: Integer;
    FEntregador: Integer;
    FDataInicial: TDate;
    FDataFinal: TDate;
    FValor: Double;
  end;

var
  view_DetalheRemessasExtrato: Tview_DetalheRemessasExtrato;
  sFileExt : String;
  sSQLOld: String;

implementation

{$R *.dfm}

uses Data.SisGeF, Common.Utils;

procedure Tview_DetalheRemessasExtrato.actExpandirExecute(Sender: TObject);
begin
  tvPlanilha.ViewData.Expand(True);
end;

procedure Tview_DetalheRemessasExtrato.actFecharExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure Tview_DetalheRemessasExtrato.actRetrairExecute(Sender: TObject);
begin
  tvPlanilha.ViewData.Collapse(True);
end;

procedure Tview_DetalheRemessasExtrato.ExportarDados;
begin
  SaveDialog.DefaultExt := 'xlsx';
  if SaveDialog.Execute then
  begin
    TUtils.ExportarDados(grdPlanilha, SaveDialog.FileName);
  end;
end;

procedure Tview_DetalheRemessasExtrato.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fdQueryDetalhe.Active := False;
  Data_Sisgef.FDConnectionMySQL.Connected := False;
  fdQueryDetalhe.SQL.Text := sSQLOld;
end;

procedure Tview_DetalheRemessasExtrato.FormShow(Sender: TObject);
begin
  sSQLOld := fdQueryDetalhe.SQL.Text;
  Pesquisa;
end;

procedure Tview_DetalheRemessasExtrato.Pesquisa;
var
  sQuery: String;
  sValor: String;
begin
  sQuery := '';
  sQuery := ' where cod_cliente_empresa = ' + FCliente.ToString + ' and ' +
  'cod_agente = ' + FAgente.ToString + ' and cod_entregador = ' + FEntregador.ToString +
  ' and dat_baixa between "' + FormatDateTime('yyyy-mm-dd', FDataInicial) + '" and "' +
  FormatDateTime('yyyy-mm-dd', FDataFinal) + '"';
  if FValor <> 0 then
  begin
    sValor := ReplaceStr(FValor.ToString,'.','');
    sValor := ReplaceStr(sValor,',','.');
    sQuery := sQuery + ' and val_verba_entregador = ' + sValor;
  end;
  fdQueryDetalhe.SQL.Text := sSQLOld + sQuery;
  fdQueryDetalhe.Active := True;
end;

procedure Tview_DetalheRemessasExtrato.tvPlanilhaNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer;
  var ADone: Boolean);
begin
  case AButtonIndex of
    16: ExportarDados;
  end;
end;

end.
