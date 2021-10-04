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
  cxButtonEdit, cxFilterControl, cxDBFilterControl, FireDAC.Stan.Async, FireDAC.DApt, cxMemo, cxDropDownEdit, Vcl.Clipbrd;

type
  TcxDBFilterControlAccess = class(TcxDBFilterControl);
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
    actionEditarFiltro: TAction;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    filtroBI: TcxDBFilterControl;
    dxLayoutItem1: TdxLayoutItem;
    actionSalvarFilro: TAction;
    actionCarregarFiltro: TAction;
    cxButton1: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    fdQueryBI: TFDQuery;
    fdQueryBINUM_NOSSONUMERO: TStringField;
    fdQueryBICOD_AGENTE: TIntegerField;
    fdQueryBICOD_ENTREGADOR: TIntegerField;
    fdQueryBICOD_CLIENTE: TIntegerField;
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
    tvPesquisaNUM_NOSSONUMERO: TcxGridDBColumn;
    tvPesquisaNUM_PEDIDO: TcxGridDBColumn;
    tvPesquisaCOD_AGENTE: TcxGridDBColumn;
    tvPesquisaCOD_ENTREGADOR: TcxGridDBColumn;
    tvPesquisaCOD_CLIENTE: TcxGridDBColumn;
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
    OpenDialog: TOpenDialog;
    fdQueryBINOM_AGENTE: TStringField;
    fdQueryBINOM_ENTREGADOR: TStringField;
    fdQueryBINOM_CLIENTE: TStringField;
    tvPesquisaNOM_AGENTE: TcxGridDBColumn;
    tvPesquisaNOM_ENTREGADOR: TcxGridDBColumn;
    tvPesquisaNOM_CLIENTE: TcxGridDBColumn;
    dsEmpresas: TDataSource;
    dxLayoutGroup4: TdxLayoutGroup;
    mtbClientesEmpresa: TFDMemTable;
    mtbClientesEmpresadom_check: TIntegerField;
    mtbClientesEmpresacod_cliente: TIntegerField;
    mtbClientesEmpresanom_cliente: TStringField;
    cxButton4: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    actionRetornar: TAction;
    cxButton6: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutGroup7: TdxLayoutGroup;
    lote: TcxMemo;
    dxLayoutItem9: TdxLayoutItem;
    actionAdicionarFiltro: TAction;
    dxLayoutGroup8: TdxLayoutGroup;
    actionLimparLote: TAction;
    cxButton7: TcxButton;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    campos: TcxComboBox;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutGroup11: TdxLayoutGroup;
    cxButton2: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    actionAuxilioLote: TAction;
    cxButton3: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    cxButton5: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    cxButton8: TcxButton;
    dxLayoutItem11: TdxLayoutItem;
    procedure actFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure actFiltroExecute(Sender: TObject);
    procedure tvPesquisaNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure actionEditarFiltroExecute(Sender: TObject);
    procedure actlimparDadosExecute(Sender: TObject);
    procedure actionSalvarFilroExecute(Sender: TObject);
    procedure actionCarregarFiltroExecute(Sender: TObject);
    procedure actionRetornarExecute(Sender: TObject);
    procedure actionLimparLoteExecute(Sender: TObject);
    procedure actionAdicionarFiltroExecute(Sender: TObject);
    procedure actionAuxilioLoteExecute(Sender: TObject);
  private
    { Private declarations }
    procedure StartForm;
    procedure CloseForm;
    procedure Filtro;
    procedure ExportarDados;
    procedure SaveLayout;
    procedure RestoreLayout;
    procedure SaveFilter;
    procedure LoadFilter;
    procedure PainelGroup;
    procedure PopulateFieldsCombo;
    function AplicaFiltro(): Boolean;
    function VerifyColumnsView(): boolean;
  public
    { Public declarations }
  end;

var
  view_BIPedidos: Tview_BIPedidos;
  entregadores : TEntregadoresExpressasControl;
  bases : TBasesControl;
  clientes : TClientesControl;
  sFileLayout, sSQLOld, sCriterioGeral: String;
  alValores: array of TFieldType;
  alFields: array of string;
  lValores: TStringList;
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

procedure Tview_BIPedidos.actionAdicionarFiltroExecute(Sender: TObject);
begin
   if AplicaFiltro then
   begin
     lote.Clear;
     campos.ItemIndex := -1;
     dxLayoutGroup8.Visible := False;
   end;
end;

procedure Tview_BIPedidos.actionAuxilioLoteExecute(Sender: TObject);
begin
  if not dxLayoutGroup8.Visible then
    dxLayoutGroup8.Visible := True
  else
    dxLayoutGroup8.Visible := False;
end;

procedure Tview_BIPedidos.actionCarregarFiltroExecute(Sender: TObject);
begin
  LoadFilter;
end;

procedure Tview_BIPedidos.actionEditarFiltroExecute(Sender: TObject);
begin
  dxLayoutGroup2.MakeVisible;
end;

procedure Tview_BIPedidos.actionLimparLoteExecute(Sender: TObject);
begin
  lote.Clear;
end;

procedure Tview_BIPedidos.actionRetornarExecute(Sender: TObject);
begin
  dxLayoutGroup2.MakeVisible;
end;

procedure Tview_BIPedidos.actionSalvarFilroExecute(Sender: TObject);
begin
  SaveFilter;
end;

procedure Tview_BIPedidos.actlimparDadosExecute(Sender: TObject);
begin
  fdQueryBI.Active := False;
  fdQueryBI.SQL.Text := sSQLOld;
  campos.ItemIndex := -1;
  filtroBI.Clear;
  lote.Clear;
  dxLayoutGroup2.MakeVisible;
end;

function Tview_BIPedidos.AplicaFiltro: boolean;
var
  sOperacao, sEm, sLinha, sItem: String;
  i: integer;
  aValores: Array of variant;
begin
  Result := False;
  if campos.ItemIndex = -1 then
    Exit;
  //sOperacao := ' IN ';
  sOperacao := '';
  sEm := '';
  //sLinha := '(' + alFields[campos.ItemIndex] + ' ';
  //sLinha := sLinha + sOperacao + ' (';
  SetLength(aValores,lote.Lines.Count);
  for i := 0 to Pred(lote.Lines.Count) do
  begin
    if (alValores[campos.ItemIndex] = ftString) or (alValores[campos.ItemIndex] = ftDateTime) then
    begin
      sItem := lote.Lines[i];
      if not sItem.IsEmpty then
      begin
        if Common.Utils.TUtils.Empty(sEm) then
        begin
          sEm := QuotedStr(Trim(sItem));
        end
        else
        begin
          sEm := sEm + ',' + QuotedStr(Trim(sItem));
        end;
      end;
      aValores[i] := QuotedStr(Trim(sItem));
    end
    else
    begin
      sItem := lote.Lines[i];
      if not sItem.IsEmpty then
      begin
        if Common.Utils.TUtils.Empty(sEm) then
        begin
          sEm := Trim(sItem);
        end
        else
        begin
          sEm := sEm + ',' + Trim(sItem);
        end;
      end;
      aValores[i] := QuotedStr(Trim(sItem));
    end;
  end;
  sLinha := sLinha + sEm;
  with TcxDBFilterControlAccess(filtroBI) do
  begin
    //Criteria.AddItem(nil, fdQueryBI.FieldByName(alFields[campos.ItemIndex]).Value, foInList, aValores, sLinha);
    BuildFromCriteria;
  end;
  finalize(aValores);
  Result := True
end;

procedure Tview_BIPedidos.CloseForm;
begin
  fdQueryBI.Active := False;
  mtbClientesEmpresa.Active := False;
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
        if MessageDlg(sMensagem, mtConfirmation, [mbYes,mbNo], 0) = mrNo then Exit
      end;

      fnUtil.ExportarDados(grdPesquisa,Data_Sisgef.SaveDialog.FileName);

    end;
  finally
    fnUtil.Free;
  end;
end;

procedure Tview_BIPedidos.Filtro;
var
  sFiltro, sLote, sMessage: String;
begin
  sLote := '';
  if filtroBI.FilterText.IsEmpty then
  begin
    if campos.ItemIndex = -1 then
    begin
      sMessage := 'Devido a grande quantidade de registros da tabela de pedidos, esse filtro somente ' +
                  'pode ser realizado com critérios de consulta!';
      MessageDlg(sMessage, mtWarning, [mbCancel], 0);
      Exit;
    end
    else if sLote.IsEmpty then
    begin
      MessageDlg('Informe os valores a serem pesquisados!', mtWarning, [mbCancel], 0);
      Exit;
    end;
  end;
  dxLayoutGroup1.MakeVisible;
  if not VerifyColumnsView() then
  begin
    MessageDlg('Selecione as colunas que deseja visualizar.', mtWarning, [mbCancel], 0);
    Exit;
  end;
  sFiltro := filtroBI.FilterText;
  if not sFiltro.IsEmpty then
  begin
    if not sLote.IsEmpty then
      sFiltro := sFiltro + ' and ' + sLote;
  end
  else
  begin
    sFiltro := sLote;
  end;
  fdQueryBI.Active := false;
  fdQueryBI.SQL.Text := sSQlOld + ' where ' + sFiltro;
  fdQueryBI.Active := true;
  dxLayoutGroup1.MakeVisible;
  if fdQueryBI.IsEmpty then
    Application.MessageBox('Nenhum registro encontrado!', 'Atenção!', MB_OK + MB_ICONWARNING);
end;

procedure Tview_BIPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CloseForm;
  Action := caFree;
  view_BIPedidos := nil;
end;

procedure Tview_BIPedidos.FormShow(Sender: TObject);
begin
  StartForm;
end;

procedure Tview_BIPedidos.LoadFilter;
begin
  if OpenDialog.Execute then
  begin
    if not FileExists(OpenDialog.FileName) then
    begin
        MessageDlg('Arquivo ' + OpenDialog.FileName + ' não foi encontrado', mtWarning, [mbCancel], 0);
        Exit;
    end;
    FiltroBI.LoadFromFile(OpenDialog.FileName);
  end;
end;

procedure Tview_BIPedidos.PainelGroup;
begin
  if tvPesquisa.OptionsView.GroupByBox then
    tvPesquisa.OptionsView.GroupByBox := False
  else
    tvPesquisa.OptionsView.GroupByBox := True;
end;

procedure Tview_BIPedidos.PopulateFieldsCombo;
var
  i, iTotal: integer;
begin
  iTotal := fdQueryBI.Fields.Count;
  SetLength(alValores, iTotal);
  SetLength(alFields, iTotal);
  for i  := 0 to Pred(iTotal) do
  begin
    campos.Properties.Items.Add(fdQueryBI.Fields[i].DisplayLabel);
    alValores[i] := fdQueryBI.Fields[i].DataType;
    alFields[i] := fdQueryBI.Fields[i].FieldName;
  end;
end;

procedure Tview_BIPedidos.RestoreLayout;
begin
  tvPesquisa.RestoreFromIniFile(sFileLayout);
end;

procedure Tview_BIPedidos.SaveFilter;
begin
  if SaveDialog.Execute then
  begin
    if FileExists(SaveDialog.FileName) then
    begin
      if MessageDlg('Arquivo ' + SaveDialog.FileName + ' já existe. Sobrepor ?', mtConfirmation, [mbYes,mbNo], 0) = mrNo then
        Exit;
    end;
    FiltroBI.SaveToFile(SaveDialog.FileName);
  end;
end;

procedure Tview_BIPedidos.SaveLayout;
begin
  tvPesquisa.StoreToIniFile(sFileLayout);
end;

procedure Tview_BIPedidos.StartForm;
begin
  labelTitle.Caption := Self.Caption;
  Data_Sisgef.PopulaClientesEmpresa;
  mtbClientesEmpresa.Data := Data_Sisgef.mtbClientesEmpresa.Data;
  Data_Sisgef.mtbClientesEmpresa.Close;
  sFileLayout := ExtractFilePath(Application.ExeName) + '\layoutBIRemessas' + Global.Parametros.pUser_ID.ToString + '.ini';
  SaveLayout;
  sSQLOld := fdQueryBI.SQL.Text;
  PopulateFieldsCombo;
end;

procedure Tview_BIPedidos.tvPesquisaNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
case AButtonIndex of
    16 : ExportarDados;
    17 : tvPesquisa.ViewData.Expand(True);
    18 : tvPesquisa.ViewData.Collapse(True);
    19 : RestoreLayout;
    20 : PainelGroup;
  end;
end;

function Tview_BIPedidos.VerifyColumnsView: boolean;
begin
  Result := False;
  if tvPesquisa.VisibleColumnCount > 0 then
    Result := True;
end;

end.
