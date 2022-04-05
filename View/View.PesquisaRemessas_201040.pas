unit View.PesquisaRemessas_201040;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, System.Actions, Vcl.ActnList, Vcl.Buttons, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxBar, dxBarBuiltInMenu, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxFilterControl,
  cxDBFilterControl, cxContainer, cxEdit, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxMemo, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData, cxCheckBox,
  cxCurrencyEdit, cxBlobEdit, cxDBLookupComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, cxButtonEdit, cxCalendar;

type
  Tview_PesquisaRemessas = class(TForm)
    ationListPesquisa: TActionList;
    actionNovoCenario: TAction;
    actionCarregarCenario: TAction;
    actionExcluirCenario: TAction;
    actionSalvarCenario: TAction;
    actionExecutarFiltro: TAction;
    actionFecharTela: TAction;
    actionExportarDados: TAction;
    barManagerBIRemessas: TdxBarManager;
    barManagerBIRemessasBar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    fdQueryBI: TFDQuery;
    fdQueryBINUM_NOSSONUMERO: TStringField;
    fdQueryBINUM_PEDIDO: TStringField;
    fdQueryBICOD_AGENTE: TIntegerField;
    fdQueryBINOM_AGENTE: TStringField;
    fdQueryBICOD_ENTREGADOR: TIntegerField;
    fdQueryBINOM_ENTREGADOR: TStringField;
    fdQueryBICOD_CLIENTE: TIntegerField;
    fdQueryBINOM_CLIENTE: TStringField;
    fdQueryBINUM_NF: TStringField;
    fdQueryBIDES_RETORNO: TStringField;
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
    fdQueryBICOD_CLIENTE_EMPRESA: TIntegerField;
    dbFilterControl: TcxDBFilterControl;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    campos: TcxComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    lote: TcxMemo;
    grdPesquisa: TcxGrid;
    tvPesquisa: TcxGridDBTableView;
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
    tvPesquisaQTD_PESO_COBRADO: TcxGridDBColumn;
    tvPesquisaVAL_VERBA_FRANQUIA: TcxGridDBColumn;
    tvPesquisaVAL_ADVALOREM: TcxGridDBColumn;
    tvPesquisaVAL_PAGO_FRANQUIA: TcxGridDBColumn;
    tvPesquisaVAL_VERBA_ENTREGADOR: TcxGridDBColumn;
    tvPesquisaNUM_EXTRATO: TcxGridDBColumn;
    tvPesquisaQTD_DIAS_ATRASO: TcxGridDBColumn;
    tvPesquisaQTD_VOLUMES_EXTRA: TcxGridDBColumn;
    tvPesquisaVAL_VOLUMES_EXTRA: TcxGridDBColumn;
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
    lvPesquisa: TcxGridLevel;
    ds: TDataSource;
    dsEmpresas: TDataSource;
    SaveDialogLayout: TSaveDialog;
    OpenDialogLayout: TOpenDialog;
    codigoCliente: TcxButtonEdit;
    cxLabel3: TcxLabel;
    actionPesquisaClientes: TAction;
    nomeCliente: TcxButtonEdit;
    actionLimparCliente: TAction;
    fdQueryBIcod_awb: TStringField;
    fdQueryBIdes_produto: TStringField;
    tvPesquisacod_awb: TcxGridDBColumn;
    tvPesquisades_produto: TcxGridDBColumn;
    procedure actionFecharTelaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tvPesquisaNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure actionCarregarCenarioExecute(Sender: TObject);
    procedure actionSalvarCenarioExecute(Sender: TObject);
    procedure actionExecutarFiltroExecute(Sender: TObject);
    procedure actionNovoCenarioExecute(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure actionExportarDadosExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actionLimparClienteExecute(Sender: TObject);
    procedure actionPesquisaClientesExecute(Sender: TObject);
    procedure codigoClientePropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
  private
    { Private declarations }
    procedure StartForm;
    procedure SaveLayout(sLayout: string);
    procedure PopulateFieldsCombo;
    procedure RestoreLayout;
    procedure PainelGroup;
    procedure OpenLayout;
    procedure SaveFilter;
    procedure LoadFilter;
    procedure NewScenery;
    procedure ApplyFilter;
    procedure FilterBath;
    procedure FilterDetailed;
    procedure DataExport;
    procedure LocateClient(iCodigo: integer);
    procedure SearchClient;
  public
    { Public declarations }
  end;

var
  view_PesquisaRemessas: Tview_PesquisaRemessas;
  sLayoutDefaut, sSQLOLd : string;
  alValores: array of TFieldType;
  alFields: array of string;

implementation

{$R *.dfm}

uses Data.SisGeF, Common.Utils, View.PesquisarGeral;

procedure Tview_PesquisaRemessas.actionCarregarCenarioExecute(Sender: TObject);
begin
  LoadFilter;
end;

procedure Tview_PesquisaRemessas.actionExecutarFiltroExecute(Sender: TObject);
begin
  ApplyFilter;
end;

procedure Tview_PesquisaRemessas.actionExportarDadosExecute(Sender: TObject);
begin
  DataExport;
end;

procedure Tview_PesquisaRemessas.actionFecharTelaExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_PesquisaRemessas.actionLimparClienteExecute(Sender: TObject);
begin
  codigoCliente.EditValue := 0;
  nomeCliente.Text := '';
  codigoCliente.SetFocus;
end;

procedure Tview_PesquisaRemessas.actionNovoCenarioExecute(Sender: TObject);
begin
  NewScenery;
end;

procedure Tview_PesquisaRemessas.actionPesquisaClientesExecute(Sender: TObject);
begin
   SearchClient;
end;

procedure Tview_PesquisaRemessas.actionSalvarCenarioExecute(Sender: TObject);
begin
  SaveFilter;
end;

procedure Tview_PesquisaRemessas.ApplyFilter;
begin
  if cxPageControl1.ActivePageIndex = 0 then
  begin
    FilterDetailed;
  end
  else if cxPageControl1.ActivePageIndex = 1 then
  begin
    FilterBath;
  end;
end;

procedure Tview_PesquisaRemessas.codigoClientePropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  if (DisplayValue = 0) or (DisplayValue = '') then
    Exit;
  LocateClient(DisplayValue);
end;

procedure Tview_PesquisaRemessas.cxPageControl1Change(Sender: TObject);
begin
if cxPageControl1.ActivePageIndex = 0 then
  begin
    actionNovoCenario.Enabled := True;
    actionCarregarCenario.Enabled := True;
    actionExcluirCenario.Enabled := False;
    actionSalvarCenario.Enabled := True;
    actionExecutarFiltro.Enabled := True;
    actionExportarDados.Enabled := False;
  end
  else if cxPageControl1.ActivePageIndex = 1 then
  begin
    actionNovoCenario.Enabled := True;
    actionCarregarCenario.Enabled := False;
    actionExcluirCenario.Enabled := False;
    actionSalvarCenario.Enabled := False;
    actionExecutarFiltro.Enabled := True;
    actionExportarDados.Enabled := False;
  end
  else if cxPageControl1.ActivePageIndex = 2 then
  begin
    actionNovoCenario.Enabled := True;
    actionCarregarCenario.Enabled := False;
    actionExcluirCenario.Enabled := False;
    actionSalvarCenario.Enabled := False;
    actionExecutarFiltro.Enabled := False;
    actionExportarDados.Enabled := True;
  end;
end;

procedure Tview_PesquisaRemessas.DataExport;
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

procedure Tview_PesquisaRemessas.FilterBath;
var
  sOperacao, sEm, sLinha, sItem, sCliente: String;
  i: integer;
  aValores: Array of variant;
begin
  if campos.ItemIndex = -1 then
    Exit;
  sOperacao := ' IN ';
  sEm := '';
  sLinha := alFields[campos.ItemIndex] + ' ';
  sLinha := sLinha + sOperacao + ' (';
  SetLength(aValores,lote.Lines.Count);
  if codigoCliente.EditValue <> 0 then
  begin
    sCliente := ' and cod_cliente_empresa = ' + codigoCliente.Text;
  end
  else
  begin
    sCliente := '';
  end;
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
  finalize(aValores);
  fdQueryBI.Active := false;
  fdQueryBI.SQL.Text := sSQlOld + ' where ' + sLinha + ')' + sCliente;
  fdQueryBI.Active := true;
  if fdQueryBI.IsEmpty then
    MessageDlg('Nenhum registro encontrado!', mtInformation, [mbOK], 0)
  else
    cxPageControl1.ActivePageIndex := 2;
end;

procedure Tview_PesquisaRemessas.FilterDetailed;
var
  sFiltro, sMessage: String;
begin
  if dbFilterControl.FilterText.IsEmpty then
  begin
    sMessage := 'Devido a grande quantidade de registros da tabela de pedidos, esse filtro somente ' +
                'pode ser realizado com critérios de consulta!';
    MessageDlg(sMessage, mtWarning, [mbCancel], 0);
    Exit;
  end;
  sFiltro := dbFilterControl.FilterText;
  fdQueryBI.Active := false;
  fdQueryBI.SQL.Text := sSQlOld + ' where ' + sFiltro;
  fdQueryBI.Active := true;
  if fdQueryBI.IsEmpty then
    MessageDlg('Nenhum registro encontrado!', mtInformation, [mbOK], 0)
  else
    cxPageControl1.ActivePageIndex := 2;
end;

procedure Tview_PesquisaRemessas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fdQueryBI.Active then
  begin
    fdQueryBI.Active := False;
    Data_Sisgef.FDConnectionMySQL.Connected := False;
  end;
  Data_Sisgef.mtbClientesEmpresa.Close;
  Action := caFree;
  view_PesquisaRemessas := nil;
end;

procedure Tview_PesquisaRemessas.FormShow(Sender: TObject);
begin
  StartForm;
end;

procedure Tview_PesquisaRemessas.LoadFilter;
begin
  if OpenDialog.Execute then
  begin
    if not FileExists(OpenDialog.FileName) then
    begin
        MessageDlg('Arquivo ' + OpenDialog.FileName + ' não foi encontrado', mtWarning, [mbCancel], 0);
        Exit;
    end;
    dbFilterControl.LoadFromFile(OpenDialog.FileName);
  end;
end;

procedure Tview_PesquisaRemessas.LocateClient(iCodigo: integer);
begin
  if Data_Sisgef.mtbClientesEmpresa.Locate('cod_cliente', iCodigo, []) then
  begin
    nomeCliente.Text := Data_Sisgef.mtbClientesEmpresanom_cliente.AsString;
  end
  else
  begin
    nomeCliente.Text := '';
  end;
end;

procedure Tview_PesquisaRemessas.NewScenery;
begin
  if not fdQueryBI.IsEmpty then
  begin
    if MessageDlg('O cenário atual será perdido se ainda não foi salvo. Deseja continuar?', mtConfirmation, [mbOK, mbCancel], 0) = mrCancel then
      Exit;
  end;
  fdQueryBI.Active := False;
  fdQueryBI.SQL.Text := sSQLOld;
  campos.ItemIndex := -1;
  dbFilterControl.Clear;
  lote.Clear;
  tvPesquisa.RestoreFromIniFile(sLayoutDefaut);
  cxPageControl1.ActivePageIndex := 0;
end;

procedure Tview_PesquisaRemessas.OpenLayout;
begin
  if OpenDialogLayout.Execute then
  begin
    tvPesquisa.RestoreFromIniFile(OpenDialogLayout.FileName);
  end;
end;

procedure Tview_PesquisaRemessas.PainelGroup;
begin
  if tvPesquisa.OptionsView.GroupByBox then
    tvPesquisa.OptionsView.GroupByBox := False
  else
    tvPesquisa.OptionsView.GroupByBox := True;
end;

procedure Tview_PesquisaRemessas.PopulateFieldsCombo;
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

procedure Tview_PesquisaRemessas.RestoreLayout;
begin
  tvPesquisa.RestoreFromIniFile(sLayoutDefaut);
end;

procedure Tview_PesquisaRemessas.SaveFilter;
begin
  if fdQueryBI.IsEmpty then
    Exit;

  if SaveDialog.Execute then
  begin
    if FileExists(SaveDialog.FileName) then
    begin
      if MessageDlg('Arquivo ' + SaveDialog.FileName + ' já existe. Sobrepor ?', mtConfirmation, [mbYes,mbNo], 0) = mrNo then
        Exit;
    end;
    dbFilterControl.SaveToFile(SaveDialog.FileName);
  end;
end;

procedure Tview_PesquisaRemessas.SaveLayout(sLayout: string);
begin
  if not sLayout.IsEmpty then
  begin
    tvPesquisa.StoreToIniFile(sLayout);
    sLayoutDefaut := sLayout;
  end
  else
  begin
    if SaveDialogLayout.Execute then
    begin
      if FileExists(sLayout) then
      begin
        if Application.MessageBox('Arquivo já existe. Sobrepor ?', 'Salvar', MB_YESNO + MB_ICONQUESTION) = IDNO then
          Exit;
      end;
      tvPesquisa.StoreToIniFile(SaveDialogLayout.FileName);
    end;
  end;
end;

procedure Tview_PesquisaRemessas.SearchClient;
begin
  if not Assigned(View_PesquisarGeral) then
  begin
    View_PesquisarGeral := TView_PesquisarGeral.Create(Application);
  end;
  View_PesquisarGeral.Caption := 'Pesquisa de Clientes';
  View_PesquisarGeral.qryPesquisa.CreateFieldsFromDataSet(Data_Sisgef.mtbClientesEmpresa);
  View_PesquisarGeral.qryPesquisa.LoadFromDataSet(Data_Sisgef.mtbClientesEmpresa);
  View_PesquisarGeral.tvPesquisa.ClearItems;
  View_PesquisarGeral.tvPesquisa.DataController.CreateAllItems;
  View_PesquisarGeral.tvPesquisa.Columns[1].Visible := False;
  if View_PesquisarGeral.ShowModal = mrOk then
  begin
    codigoCliente.EditValue := View_PesquisarGeral.qryPesquisa.FieldByName('cod_cliente').AsInteger;
    nomeCliente.EditValue := View_PesquisarGeral.qryPesquisa.FieldByName('nom_cliente').AsString;
  end;
  View_PesquisarGeral.qryPesquisa.Active := False;
  FreeAndNil(View_PesquisarGeral);
end;

procedure Tview_PesquisaRemessas.StartForm;
begin
  Data_Sisgef.PopulaClientesEmpresa;
  sLayoutDefaut := ExtractFilePath(Application.ExeName) + '\layoutPesquisaRemessasDefault.ini';
  SaveLayout(sLayoutDefaut);
  sSQLOld := fdQueryBI.SQL.Text;
  PopulateFieldsCombo;
end;

procedure Tview_PesquisaRemessas.tvPesquisaNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
case AButtonIndex of
    16 : tvPesquisa.ViewData.Expand(True);
    17 : tvPesquisa.ViewData.Collapse(True);
    18 : RestoreLayout;
    19 : PainelGroup;
    20 : OpenLayout;
    21 : SaveLayout('');
  end;
end;

end.
