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
  cxCurrencyEdit, cxTextEdit, cxCalendar, cxSpinEdit, cxCheckBox, cxMaskEdit, Control.FilterData;

type
  Tview_BIPedidos = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxLabel1: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    aclBIPedidos: TActionList;
    actFiltro: TAction;
    actlimparDados: TAction;
    actFechar: TAction;
    cxButton1: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    tvPesquisa: TcxGridDBTableView;
    lvPesquisa: TcxGridLevel;
    grdPesquisa: TcxGrid;
    dxLayoutItem3: TdxLayoutItem;
    ds: TDataSource;
    tvPesquisaNUM_NOSSONUMERO: TcxGridDBColumn;
    tvPesquisaCOD_AGENTE: TcxGridDBColumn;
    tvPesquisaCOD_ENTREGADOR: TcxGridDBColumn;
    tvPesquisaCOD_CLIENTE: TcxGridDBColumn;
    tvPesquisaNUM_NF: TcxGridDBColumn;
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
    tvPesquisaDES_RETORNO: TcxGridDBColumn;
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
    tvPesquisaNUM_PEDIDO: TcxGridDBColumn;
    tvPesquisaCOD_CLIENTE_EMPRESA: TcxGridDBColumn;
    cxButton2: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxButton3: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    dsBases: TDataSource;
    dsEntregadores: TDataSource;
    dsEmbarcadores: TDataSource;
    SaveDialog: TSaveDialog;
    textQuery: TcxTextEdit;
    layoutFilterText: TdxLayoutItem;
    tvPesquisaColumnCOD_AGENTE_NUMERO: TcxGridDBColumn;
    tvPesquisaColumnCOD_ENTREGADOR_NUMERO: TcxGridDBColumn;
    procedure actFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure actlimparDadosExecute(Sender: TObject);
    procedure actFiltroExecute(Sender: TObject);
    procedure tvPesquisaNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
  private
    { Private declarations }
    procedure PopulaBases;
    procedure Populaentregadores;
    procedure PopulaClientes;
    procedure Filtro;
    procedure ExecutaFiltro(sFiltro: String);
    procedure PopulaPesquisa(FDQuery: TFDQuery);
    procedure ExportarDados;
  public
    { Public declarations }
  end;

var
  view_BIPedidos: Tview_BIPedidos;
  entregadores : TEntregadoresExpressasControl;
  bases : TBasesControl;
  clientes : TClientesControl;

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

procedure Tview_BIPedidos.actlimparDadosExecute(Sender: TObject);
begin
  if Application.MessageBox('Confirma limpar os dados da tela?', 'Atenção', MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    if Data_Sisgef.mtbEntregas.Active then Data_Sisgef.mtbEntregas.Close;
    actlimparDados.Enabled := False;
    layoutFilterText.Visible := False;
    textQuery.Clear;
  end;
end;

procedure Tview_BIPedidos.ExecutaFiltro(sFiltro: String);
var
  entregas : TEntregasControl;
  fdEntregas : TFDQuery;
  aParam : Array of Variant;
begin
  try
    entregas := TEntregasControl.Create();
    fdEntregas := TSistemaControl.GetInstance.Conexao.ReturnQuery();
    if Data_Sisgef.mtbEntregas.Active then Data_Sisgef.mtbEntregas.Close;
    SetLength(aParam, 2);
    aParam := ['FILTRO','where ' + sFiltro];
    fdEntregas := entregas.Localizar(aParam);
    if not fdEntregas.IsEmpty then
    begin
      PopulaPesquisa(fdEntregas);
    end
    else
    begin
      Application.MessageBox('Nenhum registro encontrado!', 'Atenção', MB_OK + MB_ICONWARNING);
    end;
    fdEntregas.Close
  finally
    fdEntregas.Free;
    entregas.Free;
  end;
end;

procedure Tview_BIPedidos.ExportarDados;
begin
  SaveDialog.Filter := '';
  SaveDialog.Filter := 'Excel (*.xls) |*.xls|XML (*.xml) |*.xml|Arquivo Texto (*.txt) |*.txt|Página Web (*.html)|*.html|Arquivo separado por virgulas (*.csv)|*.csv';
  SaveDialog.Title := 'Exportar Dados';
  SaveDialog.DefaultExt := 'xls';
  if SaveDialog.Execute then
  begin
    TUtils.ExportarDados(grdPesquisa, SaveDialog.FileName);
  end;
end;

procedure Tview_BIPedidos.Filtro;
var
  filtro : TFilterDataControl;
  i: Integer;
begin
  try
    filtro := TFilterDataControl.Create;
    textQuery.Text := '';
    if not Assigned(view_FilterData) then
    begin
      view_FilterData := Tview_FilterData.Create(Application);
    end;
    view_FilterData.mtbPesquisa := Data_Sisgef.mtbEntregas;
    view_FilterData.filtro := filtro;
    if view_FilterData.ShowModal = mrOk then
    begin
      layoutFilterText.Visible := True;
      for i := 0 to Pred(filtro.Filtro.Params.Count) do
      begin
        textQuery.Text := textQuery.Text + ' ' + filtro.Filtro.Params[i];
      end;
      //textQuery.Text := filtro.Filtro.TextFilter;
    end
    else
    begin
      textQuery.Clear;
      layoutFilterText.Visible := False;
    end;
    FreeAndNil(view_FilterData);
    if not filtro.Filtro.TextFilter.IsEmpty then
    begin
      ExecutaFiltro(filtro.Filtro.TextFilter);
    end;
  finally
    filtro.Free;
  end;
end;

procedure Tview_BIPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Data_Sisgef.mtbentregadores.Active:= False;
  Data_Sisgef.mtbBases.Active := False;
  Data_Sisgef.mtbEmbarcadores.Active := False;
  Data_Sisgef.mtbEntregas.Active := False;
  Action := caFree;
  view_BIPedidos := nil;
end;

procedure Tview_BIPedidos.FormShow(Sender: TObject);
begin
  PopulaBases;
  Populaentregadores;
  PopulaClientes;
end;

procedure Tview_BIPedidos.PopulaBases;
var
  FDQuery : TFDQuery;
  aParam : Array of variant;
begin
  try
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    bases := TBasesControl.Create;
    SetLength(aParam,3);
    aParam[0] := 'APOIO';
    aParam[1] := '0 as dom_check, cod_agente as cod_base, nom_fantasia as nom_base';
    aParam[2] := 'WHERE COD_STATUS = 1';
    FDQuery := bases.Localizar(aParam);
    if not FDQuery.IsEmpty then
    begin
      Data_Sisgef.mtbBases.Data := FDQuery.Data;
    end;
    FDQuery.Close;
  finally
    bases.Free;
    FDquery.Free;
  end;
end;

procedure Tview_BIPedidos.PopulaClientes;
var
  FDQuery : TFDQuery;
  aParam : Array of variant;
begin
  try
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    clientes := TClientesControl.Create;
    SetLength(aParam,3);
    aParam[0] := 'APOIO';
    aParam[1] := '*';
    aParam[2] := '';
    FDQuery := clientes.Localizar(aParam);
    if not FDQuery.IsEmpty then
    begin
      Data_Sisgef.mtbEmbarcadores.Data := FDQuery.Data;
    end;
    FDQuery.Close;
  finally
    clientes.Free;
    FDquery.Free;
  end;
end;

procedure Tview_BIPedidos.Populaentregadores;
var
  FDQuery : TFDQuery;
  aParam : Array of variant;
begin
  try
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    entregadores := TEntregadoresExpressasControl.Create;
    SetLength(aParam,3);
    aParam[0] := 'APOIO';
    aParam[1] := '*';
    aParam[2] := 'WHERE COD_CADASTRO <> 0';
    FDQuery := entregadores.Localizar(aParam);
    Data_Sisgef.mtbEntregadores.Data := FDQuery.Data;
    FDQuery.Close;
  finally
    entregadores.Free;
    FDquery.Free;
  end;
end;

procedure Tview_BIPedidos.PopulaPesquisa(FDQuery: TFDQuery);
begin
  if Data_Sisgef.mtbEntregas.Active then Data_Sisgef.mtbEntregas.Close;
  if not FDQuery.IsEmpty then
  begin
    Data_Sisgef.mtbEntregas.Data := FDQuery.Data;
    actlimparDados.Enabled := True;
  end;
end;

procedure Tview_BIPedidos.tvPesquisaNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
case AButtonIndex of
    16: ExportarDados;
  end;
end;

end.
