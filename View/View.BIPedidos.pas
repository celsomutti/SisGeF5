unit View.BIPedidos;

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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxClasses, dxLayoutContainer, dxLayoutControl, Common.ENum, Control.Bases,
  Control.Clientes, Control.EntregadoresExpressas, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel, System.Actions,
  Vcl.ActnList, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxImageComboBox, Control.Sistema, Control.Entregas, FireDAC.Comp.Client, cxDBLookupComboBox, cxBlobEdit,
  cxCurrencyEdit, cxTextEdit, cxCalendar, cxSpinEdit, cxCheckBox, cxMaskEdit, Control.FilterData, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, FireDAC.Comp.DataSet,
  cxButtonEdit, cxFilterControl, cxDBFilterControl, FireDAC.Stan.Async, FireDAC.DApt;

type
  Tview_BIPedidos = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    aclBIPedidos: TActionList;
    actFiltro: TAction;
    actlimparDados: TAction;
    actFechar: TAction;
    tvPesquisa: TcxGridDBTableView;
    lvPesquisa: TcxGridLevel;
    grdPesquisa: TcxGrid;
    dxLayoutItem3: TdxLayoutItem;
    ds: TDataSource;
    SaveDialog: TSaveDialog;
    parametrosLeitura: TcxButtonEdit;
    dxLayoutItem6: TdxLayoutItem;
    actionEditarFiltro: TAction;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    filtroBI: TcxDBFilterControl;
    dxLayoutItem1: TdxLayoutItem;
    actionSalvarFilro: TAction;
    actionCarregarFiltro: TAction;
    dxLayoutGroup3: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    fdQueryBI: TFDQuery;
    fdQueryBINUM_NOSSONUMERO: TStringField;
    fdQueryBICOD_AGENTE: TIntegerField;
    fdQueryBINOM_AGENTE: TStringField;
    fdQueryBICOD_ENTREGADOR: TIntegerField;
    fdQueryBINOM_ENTREGADOR: TStringField;
    fdQueryBICOD_CLIENTE: TIntegerField;
    fdQueryBINOM_CLIENTE: TStringField;
    fdQueryBINUM_NF: TStringField;
    fdQueryBINOM_CONSUMIDOR: TStringField;
    fdQueryBIDES_ENDERECO: TStringField;
    fdQueryBIDES_COMPLEMENTO: TStringField;
    fdQueryBIDES_BAIRRO: TStringField;
    fdQueryBINOM_CIDADE: TStringField;
    fdQueryBINUM_CEP: TStringField;
    fdQueryBINUM_TELEFONE: TStringField;
    fdQueryBIDAT_EXPEDICAO: TDateField;
    fdQueryBIDAT_PREV_DISTRIBUICAO: TDateField;
    fdQueryBIQTD_VOLUMES: TIntegerField;
    fdQueryBIDAT_ATRIBUICAO: TDateTimeField;
    fdQueryBIDAT_BAIXA: TDateField;
    fdQueryBIDOM_BAIXADO: TStringField;
    fdQueryBIDAT_PAGAMENTO: TDateField;
    fdQueryBIDOM_PAGO: TStringField;
    fdQueryBIDOM_FECHADO: TStringField;
    fdQueryBICOD_STATUS: TIntegerField;
    fdQueryBIDAT_ENTREGA: TDateField;
    fdQueryBIQTD_PESO_REAL: TFloatField;
    fdQueryBIQTD_PESO_FRANQUIA: TFloatField;
    fdQueryBIVAL_VERBA_FRANQUIA: TFloatField;
    fdQueryBIVAL_ADVALOREM: TFloatField;
    fdQueryBIVAL_PAGO_FRANQUIA: TFloatField;
    fdQueryBIVAL_VERBA_ENTREGADOR: TFloatField;
    fdQueryBINUM_EXTRATO: TStringField;
    fdQueryBIQTD_DIAS_ATRASO: TIntegerField;
    fdQueryBIQTD_VOLUMES_EXTRA: TSingleField;
    fdQueryBIVAL_VOLUMES_EXTRA: TFloatField;
    fdQueryBIQTD_PESO_COBRADO: TFloatField;
    fdQueryBIDES_TIPO_PESO: TStringField;
    fdQueryBIDAT_RECEBIDO: TDateField;
    fdQueryBIDOM_RECEBIDO: TStringField;
    fdQueryBINUM_CTRC: TIntegerField;
    fdQueryBINUM_MANIFESTO: TIntegerField;
    fdQueryBIDES_RASTREIO: TMemoField;
    fdQueryBINUM_LOTE_REMESSA: TIntegerField;
    fdQueryBIDES_RETORNO: TStringField;
    fdQueryBIDAT_CREDITO: TDateField;
    fdQueryBIDOM_CREDITO: TStringField;
    fdQueryBINUM_CONTAINER: TStringField;
    fdQueryBIVAL_PRODUTO: TSingleField;
    fdQueryBIQTD_ALTURA: TIntegerField;
    fdQueryBIQTD_LARGURA: TIntegerField;
    fdQueryBIQTD_COMPRIMENTO: TIntegerField;
    fdQueryBICOD_FEEDBACK: TIntegerField;
    fdQueryBIDAT_FEEDBACK: TDateTimeField;
    fdQueryBIDOM_CONFERIDO: TIntegerField;
    fdQueryBINUM_PEDIDO: TStringField;
    fdQueryBICOD_CLIENTE_EMPRESA: TIntegerField;
    labelTitle: TcxLabel;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxButton4: TcxButton;
    tvPesquisaNUM_NOSSONUMERO: TcxGridDBColumn;
    tvPesquisaNUM_PEDIDO: TcxGridDBColumn;
    tvPesquisaCOD_AGENTE: TcxGridDBColumn;
    tvPesquisaNOM_AGENTE: TcxGridDBColumn;
    tvPesquisaCOD_ENTREGADOR: TcxGridDBColumn;
    tvPesquisaNOM_ENTREGADOR: TcxGridDBColumn;
    tvPesquisaCOD_CLIENTE: TcxGridDBColumn;
    tvPesquisaNOM_CLIENTE: TcxGridDBColumn;
    tvPesquisaNUM_NF: TcxGridDBColumn;
    tvPesquisaDES_RETORNO: TcxGridDBColumn;
    tvPesquisaNOM_CONSUMIDOR: TcxGridDBColumn;
    tvPesquisaDES_ENDERECO: TcxGridDBColumn;
    tvPesquisaDES_COMPLEMENTO: TcxGridDBColumn;
    tvPesquisaDES_BAIRRO: TcxGridDBColumn;
    tvPesquisaNOM_CIDADE: TcxGridDBColumn;
    tvPesquisaNUM_CEP: TcxGridDBColumn;
    tvPesquisaNUM_TELEFONE: TcxGridDBColumn;
    tvPesquisaDAT_EXPEDICAO: TcxGridDBColumn;
    tvPesquisaDAT_PREV_DISTRIBUICAO: TcxGridDBColumn;
    tvPesquisaQTD_VOLUMES: TcxGridDBColumn;
    tvPesquisaDAT_ATRIBUICAO: TcxGridDBColumn;
    tvPesquisaDAT_BAIXA: TcxGridDBColumn;
    tvPesquisaDOM_BAIXADO: TcxGridDBColumn;
    tvPesquisaDAT_PAGAMENTO: TcxGridDBColumn;
    tvPesquisaDOM_PAGO: TcxGridDBColumn;
    tvPesquisaDOM_FECHADO: TcxGridDBColumn;
    tvPesquisaCOD_STATUS: TcxGridDBColumn;
    tvPesquisaDAT_ENTREGA: TcxGridDBColumn;
    tvPesquisaQTD_PESO_REAL: TcxGridDBColumn;
    tvPesquisaQTD_PESO_FRANQUIA: TcxGridDBColumn;
    tvPesquisaVAL_VERBA_FRANQUIA: TcxGridDBColumn;
    tvPesquisaVAL_ADVALOREM: TcxGridDBColumn;
    tvPesquisaVAL_PAGO_FRANQUIA: TcxGridDBColumn;
    tvPesquisaVAL_VERBA_ENTREGADOR: TcxGridDBColumn;
    tvPesquisaNUM_EXTRATO: TcxGridDBColumn;
    tvPesquisaQTD_DIAS_ATRASO: TcxGridDBColumn;
    tvPesquisaQTD_VOLUMES_EXTRA: TcxGridDBColumn;
    tvPesquisaVAL_VOLUMES_EXTRA: TcxGridDBColumn;
    tvPesquisaQTD_PESO_COBRADO: TcxGridDBColumn;
    tvPesquisaDES_TIPO_PESO: TcxGridDBColumn;
    tvPesquisaDAT_RECEBIDO: TcxGridDBColumn;
    tvPesquisaDOM_RECEBIDO: TcxGridDBColumn;
    tvPesquisaNUM_CTRC: TcxGridDBColumn;
    tvPesquisaNUM_MANIFESTO: TcxGridDBColumn;
    tvPesquisaDES_RASTREIO: TcxGridDBColumn;
    tvPesquisaNUM_LOTE_REMESSA: TcxGridDBColumn;
    tvPesquisaDAT_CREDITO: TcxGridDBColumn;
    tvPesquisaDOM_CREDITO: TcxGridDBColumn;
    tvPesquisaNUM_CONTAINER: TcxGridDBColumn;
    tvPesquisaVAL_PRODUTO: TcxGridDBColumn;
    tvPesquisaQTD_ALTURA: TcxGridDBColumn;
    tvPesquisaQTD_LARGURA: TcxGridDBColumn;
    tvPesquisaQTD_COMPRIMENTO: TcxGridDBColumn;
    tvPesquisaCOD_FEEDBACK: TcxGridDBColumn;
    tvPesquisaDAT_FEEDBACK: TcxGridDBColumn;
    tvPesquisaDOM_CONFERIDO: TcxGridDBColumn;
    tvPesquisaCOD_CLIENTE_EMPRESA: TcxGridDBColumn;
    procedure actFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure actFiltroExecute(Sender: TObject);
    procedure tvPesquisaNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
  private
    { Private declarations }
    procedure Filtro;
    procedure ExportarDados;
    procedure SaveLayout;
    procedure RestoreLayout;
  public
    { Public declarations }
  end;

var
  view_BIPedidos: Tview_BIPedidos;
  entregadores : TEntregadoresExpressasControl;
  bases : TBasesControl;
  clientes : TClientesControl;
  sFileLayout, sSQLOld: String;

implementation

{$R *.dfm}

uses Data.SisGeF, Global.Parametros, Common.Utils, View.Filtro, View.FilterData;

procedure Tview_BIPedidos.actFecharExecute(Sender: TObject);
begin
  Perform(WM_CLOSE, 0, 0);
end;

procedure Tview_BIPedidos.actFiltroExecute(Sender: TObject);
begin
  Filtro;
end;

procedure Tview_BIPedidos.ExportarDados;
var
  fnUtil : Common.Utils.TUtils;
  sMensagem: String;
begin
  try
    fnUtil := Common.Utils.TUtils.Create;

    if fdQueryBI.IsEmpty then Exit;

    if Data_Sisgef.SaveDialog.Execute() then
    begin
      if FileExists(Data_Sisgef.SaveDialog.FileName) then
      begin
        sMensagem := 'Arquivo ' + Data_Sisgef.SaveDialog.FileName + ' já existe! Sobrepor ?';
        if Application.MessageBox(PChar(sMensagem), 'Sobrepor', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit
      end;

      fnUtil.ExportarDados(grdPesquisa,Data_Sisgef.SaveDialog.FileName);

    end;
  finally
    fnUtil.Free;
  end;
end;

procedure Tview_BIPedidos.Filtro;
var
  sFiltro : String;
begin
  sFiltro := filtroBI.FilterText;
  parametrosLeitura.Text := filtroBI.FilterCaption;
  fdQueryBI.SQL.Text := sSQlOld + ' where ' + sFiltro;
  fdQueryBI.Active := true;
end;

procedure Tview_BIPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fdQueryBI.Active := False;
  Action := caFree;
  view_BIPedidos := nil;
end;

procedure Tview_BIPedidos.FormShow(Sender: TObject);
begin
  labelTitle.Caption := Self.Caption;
  sFileLayout := ExtractFilePath(Application.ExeName) + '\layoutBIRemessas' + Global.Parametros.pUser_ID.ToString + '.ini';
  SaveLayout;
  sSQLOld := fdQueryBI.SQL.Text;
end;

procedure Tview_BIPedidos.RestoreLayout;
begin
  tvPesquisa.RestoreFromIniFile(sFileLayout);
end;

procedure Tview_BIPedidos.SaveLayout;
begin
  tvPesquisa.StoreToIniFile(sFileLayout);
end;

procedure Tview_BIPedidos.tvPesquisaNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
case AButtonIndex of
    16 : ExportarDados;
    17 : tvPesquisa.ViewData.Expand(True);
    18 : tvPesquisa.ViewData.Collapse(True);
    19 : RestoreLayout;
  end;
end;

end.
