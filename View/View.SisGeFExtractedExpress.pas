unit View.SisGeFExtractedExpress;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, cxCustomListBox, cxMCListBox, dxLayoutControlAdapters,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, System.Actions, Vcl.ActnList, Control.Parametros, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, DAO.Conexao, System.DateUtils, cxCheckBox, Common.Utils, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Grids, Vcl.DBGrids, Vcl.WinXCtrls,
  Thread.SisGeFExpressExtract, Vcl.ExtCtrls, dxActivityIndicator;

type
  Tview_SisGeFExtractedExpress = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    tipoExtrato: TcxComboBox;
    dxLayoutItem1: TdxLayoutItem;
    tipoPeriodo: TcxComboBox;
    dxLayoutItem2: TdxLayoutItem;
    layoutGroupMain: TdxLayoutGroup;
    layoutGroupParameters: TdxLayoutGroup;
    layoutGroupExtract: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    layoutGroupCustomized: TdxLayoutGroup;
    layoutGroupParameterized: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dataInicialPeriodo: TcxDateEdit;
    dxLayoutItem3: TdxLayoutItem;
    dataFinalPeriodo: TcxDateEdit;
    dxLayoutItem4: TdxLayoutItem;
    anoPeriodo: TcxComboBox;
    dxLayoutItem5: TdxLayoutItem;
    mesPeriodo: TcxComboBox;
    dxLayoutItem6: TdxLayoutItem;
    periodoParametrizado: TcxComboBox;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    situacaoExtrato: TcxComboBox;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    listaClientes: TcxMCListBox;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    listaBases: TcxMCListBox;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutGroup10: TdxLayoutGroup;
    cxButton3: TcxButton;
    dxLayoutItem13: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    listaEntregadores: TcxMCListBox;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutGroup12: TdxLayoutGroup;
    cxButton5: TcxButton;
    dxLayoutItem16: TdxLayoutItem;
    cxButton6: TcxButton;
    dxLayoutItem17: TdxLayoutItem;
    cxButton7: TcxButton;
    dxLayoutItem18: TdxLayoutItem;
    cxButton8: TcxButton;
    dxLayoutItem19: TdxLayoutItem;
    cxButton9: TcxButton;
    dxLayoutItem20: TdxLayoutItem;
    actionListExtract: TActionList;
    actionIncludeClients: TAction;
    actionExcludeClients: TAction;
    actionClearClients: TAction;
    actionIncludeBases: TAction;
    actionExcludeBases: TAction;
    actionClearBases: TAction;
    actionIncludeCouriers: TAction;
    actionExcludeCouriers: TAction;
    actionClearCouriers: TAction;
    actionCloseForm: TAction;
    dxLayoutGroup13: TdxLayoutGroup;
    cxButton10: TcxButton;
    dxLayoutItem21: TdxLayoutItem;
    actionProcess: TAction;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutGroup15: TdxLayoutGroup;
    processaEntregasAnteriores: TcxCheckBox;
    dxLayoutItem23: TdxLayoutItem;
    calcularVolumeExtra: TcxCheckBox;
    dxLayoutItem24: TdxLayoutItem;
    considerarExtravios: TcxCheckBox;
    dxLayoutItem25: TdxLayoutItem;
    considerarLancamentos: TcxCheckBox;
    dxLayoutItem26: TdxLayoutItem;
    dsExtract: TDataSource;
    timer: TTimer;
    dxLayoutGroup16: TdxLayoutGroup;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutGroup18: TdxLayoutGroup;
    actionExpandGrid: TAction;
    actionRetractGrid: TAction;
    gridExtratoDBTableView1: TcxGridDBTableView;
    gridExtratoLevel1: TcxGridLevel;
    gridExtrato: TcxGrid;
    dxLayoutItem27: TdxLayoutItem;
    gridExtratoDBTableView1id_extrato: TcxGridDBColumn;
    gridExtratoDBTableView1dat_inicio: TcxGridDBColumn;
    gridExtratoDBTableView1dat_final: TcxGridDBColumn;
    gridExtratoDBTableView1num_ano: TcxGridDBColumn;
    gridExtratoDBTableView1num_mes: TcxGridDBColumn;
    gridExtratoDBTableView1num_quinzena: TcxGridDBColumn;
    gridExtratoDBTableView1cod_base: TcxGridDBColumn;
    gridExtratoDBTableView1cod_entregador: TcxGridDBColumn;
    gridExtratoDBTableView1num_extrato: TcxGridDBColumn;
    gridExtratoDBTableView1val_verba: TcxGridDBColumn;
    gridExtratoDBTableView1qtd_volumes: TcxGridDBColumn;
    gridExtratoDBTableView1qtd_volumes_extra: TcxGridDBColumn;
    gridExtratoDBTableView1val_volumes_extra: TcxGridDBColumn;
    gridExtratoDBTableView1qtd_entregas: TcxGridDBColumn;
    gridExtratoDBTableView1qtd_atraso: TcxGridDBColumn;
    gridExtratoDBTableView1val_performance: TcxGridDBColumn;
    gridExtratoDBTableView1val_producao: TcxGridDBColumn;
    gridExtratoDBTableView1val_creditos: TcxGridDBColumn;
    gridExtratoDBTableView1val_debitos: TcxGridDBColumn;
    gridExtratoDBTableView1val_extravios: TcxGridDBColumn;
    gridExtratoDBTableView1val_total_expressa: TcxGridDBColumn;
    gridExtratoDBTableView1val_total_empresa: TcxGridDBColumn;
    gridExtratoDBTableView1cod_cliente: TcxGridDBColumn;
    gridExtratoDBTableView1nom_cliente: TcxGridDBColumn;
    gridExtratoDBTableView1dat_credito: TcxGridDBColumn;
    gridExtratoDBTableView1nom_base: TcxGridDBColumn;
    gridExtratoDBTableView1nom_entregador: TcxGridDBColumn;
    gridExtratoDBTableView1des_unique_key: TcxGridDBColumn;
    dxLayoutGroup19: TdxLayoutGroup;
    activityIndicator: TdxActivityIndicator;
    dxLayoutItem28: TdxLayoutItem;
    actionComeBack: TAction;
    dxLayoutGroup20: TdxLayoutGroup;
    cxButton11: TcxButton;
    dxLayoutItem22: TdxLayoutItem;
    cxButton12: TcxButton;
    dxLayoutItem29: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionCloseFormExecute(Sender: TObject);
    procedure actionIncludeClientsExecute(Sender: TObject);
    procedure actionIncludeBasesExecute(Sender: TObject);
    procedure actionExcludeBasesExecute(Sender: TObject);
    procedure actionExcludeClientsExecute(Sender: TObject);
    procedure actionExcludeCouriersExecute(Sender: TObject);
    procedure actionClearBasesExecute(Sender: TObject);
    procedure actionClearClientsExecute(Sender: TObject);
    procedure actionClearCouriersExecute(Sender: TObject);
    procedure actionIncludeCouriersExecute(Sender: TObject);
    procedure tipoPeriodoPropertiesChange(Sender: TObject);
    procedure actionProcessExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure timerTimer(Sender: TObject);
    procedure actionExpandGridExecute(Sender: TObject);
    procedure actionRetractGridExecute(Sender: TObject);
    procedure actionComeBackExecute(Sender: TObject);
    procedure calcularVolumeExtraPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    procedure StartForm;
    procedure CloseForm;
    procedure ListYears;
    procedure AddClient;
    procedure AddBase;
    procedure AddCourier;
    procedure ExcludeClient;
    procedure ExcludeBase;
    procedure ExcludeCourier;
    procedure ClearClient;
    procedure ClearBase;
    procedure ClearCourier;
    procedure ProcessExtract;
    procedure ListFortnights;
    function RidePeriod(iYear, iMonth, iFortnight: Integer): String;
    function FilterClient(): string;
    function FilterBase(): string;
    function FilterCourier(): string;
    function GeneralFilter(): string;
    function ValidadeProcess(): boolean;
    function MountPeriodFilter(): string;
  public
    { Public declarations }
  end;

var
  view_SisGeFExtractedExpress: Tview_SisGeFExtractedExpress;
  FYear, FMounth, FPeriod: integer;
  FExtract : TTHead_ExpressExtract;
  FDataInicial, FDataFinal: String;
implementation

{$R *.dfm}

uses Data.SisGeF, View.PesquisaAgentes, View.PesquisaClientes, View.PesquisaEntregadoresExpressas;

{ Tview_SisGeFExtractedExpress }

procedure Tview_SisGeFExtractedExpress.actionClearBasesExecute(Sender: TObject);
begin
  ClearBase;
end;

procedure Tview_SisGeFExtractedExpress.actionClearClientsExecute(Sender: TObject);
begin
  ClearClient;
end;

procedure Tview_SisGeFExtractedExpress.actionClearCouriersExecute(Sender: TObject);
begin
  ClearCourier;
end;

procedure Tview_SisGeFExtractedExpress.actionCloseFormExecute(Sender: TObject);
begin
  CloseForm;
end;

procedure Tview_SisGeFExtractedExpress.actionComeBackExecute(Sender: TObject);
begin
  layoutGroupMain.ItemIndex := 0;
end;

procedure Tview_SisGeFExtractedExpress.actionExcludeBasesExecute(Sender: TObject);
begin
  ExcludeBase;
end;

procedure Tview_SisGeFExtractedExpress.actionExcludeClientsExecute(Sender: TObject);
begin
  ExcludeClient;
end;

procedure Tview_SisGeFExtractedExpress.actionExcludeCouriersExecute(Sender: TObject);
begin
  ExcludeCourier;
end;

procedure Tview_SisGeFExtractedExpress.actionExpandGridExecute(Sender: TObject);
begin
  gridExtratoDBTableView1.ViewData.Expand(True);
end;

procedure Tview_SisGeFExtractedExpress.actionIncludeBasesExecute(Sender: TObject);
begin
  AddBase;
end;

procedure Tview_SisGeFExtractedExpress.actionIncludeClientsExecute(Sender: TObject);
begin
  AddClient;
end;

procedure Tview_SisGeFExtractedExpress.actionIncludeCouriersExecute(Sender: TObject);
begin
  AddCourier;
end;

procedure Tview_SisGeFExtractedExpress.actionProcessExecute(Sender: TObject);
begin
  ProcessExtract;
end;

procedure Tview_SisGeFExtractedExpress.actionRetractGridExecute(Sender: TObject);
begin
  gridExtratoDBTableView1.ViewData.Expand(False);
end;

procedure Tview_SisGeFExtractedExpress.AddBase;
var
  FCode, FName, FItem: string;
begin
    if not Assigned(view_PesquisaPessoasAgentes) then
  begin
    view_PesquisaPessoasAgentes := Tview_PesquisaPessoasAgentes.Create(Application);
  end;
  FItem := '';
  if view_PesquisaPessoasAgentes.ShowModal = mrOk then
  begin
    FCode := view_PesquisaPessoasAgentes.fdPesquisacod_agente.AsString;
    FName := view_PesquisaPessoasAgentes.fdPesquisanom_fantasia.AsString;
    FItem := Fcode + ';' + FName;
  end;
  if listaBases.Items.IndexOf(FItem) <> -1 then
    Exit;
  listaBases.Items.Add(FItem);
  view_PesquisaPessoasAgentes.fdPesquisa.Connection.Connected := False;
  FreeAndNil(view_PesquisaPessoasAgentes);
end;

procedure Tview_SisGeFExtractedExpress.AddClient;
var
  FCode, FName, FItem: string;
begin
    if not Assigned(view_PesquisaClientes) then
  begin
    view_PesquisaClientes := Tview_PesquisaClientes.Create(Application);
  end;
  FItem := '';
  if view_PesquisaClientes.ShowModal = mrOk then
  begin
    FCode := view_PesquisaClientes.fdPesquisacod_cliente.AsString;
    FName := view_PesquisaClientes.fdPesquisanom_fantasia.AsString;
    FItem := Fcode + ';' + FName;
  end;
  if listaClientes.Items.IndexOf(FItem) <> -1 then
    Exit;
  listaClientes.Items.Add(FItem);
  view_PesquisaClientes.fdPesquisa.Connection.Connected := False;
  FreeAndNil(view_PesquisaClientes);
end;

procedure Tview_SisGeFExtractedExpress.AddCourier;
var
  FCode, FName, FItem: string;
begin
  if not Assigned(view_PesquisaEntregadoresExpressas) then
  begin
    view_PesquisaEntregadoresExpressas := Tview_PesquisaEntregadoresExpressas.Create(Application);
  end;
  FItem := '';
  if view_PesquisaEntregadoresExpressas.ShowModal = mrOk then
  begin
    FCode := view_PesquisaEntregadoresExpressas.fdPesquisacod_entregador.AsString;
    FName := view_PesquisaEntregadoresExpressas.fdPesquisanom_entregador.AsString;
    FItem := Fcode + ';' + FName;
  end;
  if listaEntregadores.Items.IndexOf(FItem) <> -1 then
    Exit;
  listaEntregadores.Items.Add(FItem);
  view_PesquisaEntregadoresExpressas.fdPesquisa.Active := False;
  Data_Sisgef.FDConnectionMySQL.Connected := False;
  FreeAndNil(view_PesquisaEntregadoresExpressas);
end;

procedure Tview_SisGeFExtractedExpress.calcularVolumeExtraPropertiesChange(Sender: TObject);
begin
  if calcularVolumeExtra.Checked then
  begin
    gridExtratoDBTableView1qtd_volumes_extra.Visible := True;
    gridExtratoDBTableView1val_volumes_extra.Visible := True;
  end
  else
  begin
    gridExtratoDBTableView1qtd_volumes_extra.Visible := False;
    gridExtratoDBTableView1val_volumes_extra.Visible := False;
  end;
end;

procedure Tview_SisGeFExtractedExpress.ClearBase;
begin
  listaBases.Items.Clear;
end;

procedure Tview_SisGeFExtractedExpress.ClearClient;
begin
  listaClientes.Items.Clear;
end;

procedure Tview_SisGeFExtractedExpress.ClearCourier;
begin
  listaEntregadores.Items.Clear
end;

procedure Tview_SisGeFExtractedExpress.CloseForm;
begin
  Close;
end;

procedure Tview_SisGeFExtractedExpress.ExcludeBase;
begin
  if listaBases.Items.Count = 0 then
    Exit;
  listaBases.DeleteSelected;
end;

procedure Tview_SisGeFExtractedExpress.ExcludeClient;
begin
  if listaClientes.Items.Count = 0 then
    Exit;
  listaClientes.DeleteSelected;
end;

procedure Tview_SisGeFExtractedExpress.ExcludeCourier;
begin
  if listaEntregadores.Items.Count = 0 then
    Exit;
  listaEntregadores.DeleteSelected;
end;

function Tview_SisGeFExtractedExpress.FilterBase: string;
var
  FResult : TStringList;
  sFilter: String;
  i : integer;
begin
  Result := '';
  sFilter := '';
  FResult := TStringList.Create;
  FResult.StrictDelimiter := True;
  FResult.Delimiter := ';';
  for i := 0 to Pred(listaBases.Items.Count) do
  begin
    FResult.DelimitedText := listaBases.Items[i];
    if not sFilter.IsEmpty then
      sFilter := sFilter + ', ';
    sFilter := sFilter + FResult[0];
  end;
  if not sFilter.IsEmpty then
    Result := 'cod_base in (' + sFilter + ')';
  FResult.Free;
end;

function Tview_SisGeFExtractedExpress.FilterClient: string;
var
  FResult : TStringList;
  sFilter: String;
  i : integer;
begin
  Result := '';
  sFilter := '';
  FResult := TStringList.Create;
  FResult.StrictDelimiter := True;
  FResult.Delimiter := ';';
  for i := 0 to Pred(listaClientes.Items.Count) do
  begin
    FResult.DelimitedText := listaClientes.Items[i];
    if not sFilter.IsEmpty then
      sFilter := sFilter + ', ';
    sFilter := sFilter + FResult[0];
  end;
  if not sFilter.IsEmpty then
    Result := 'cod_cliente_empresa in (' + sFilter + ')';
  FResult.Free;
end;

function Tview_SisGeFExtractedExpress.FilterCourier: string;
var
  FResult : TStringList;
  sFilter: String;
  i : integer;
begin
  Result := '';
  sFilter := '';
  FResult := TStringList.Create;
  FResult.StrictDelimiter := True;
  FResult.Delimiter := ';';
  for i := 0 to Pred(listaEntregadores.Items.Count) do
  begin
    FResult.DelimitedText := listaEntregadores.Items[i];
    if not sFilter.IsEmpty then
      sFilter := sFilter + ', ';
    sFilter := sFilter + FResult[0];
  end;
  if not sFilter.IsEmpty then
    Result := 'cod_entregador in (' + sFilter + ')';
  FResult.Free;
end;

procedure Tview_SisGeFExtractedExpress.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  view_SisGeFExtractedExpress := nil;
end;

procedure Tview_SisGeFExtractedExpress.FormShow(Sender: TObject);
begin
  StartForm;
end;

function Tview_SisGeFExtractedExpress.GeneralFilter: string;
var
  sQuery, sFilter, sResult : String;
begin
  Result := '';
  sQuery := '';
  sFilter := '';
  sResult := '';
  sFilter := FilterClient();
  if not sFilter.IsEmpty then
  begin
    if not sQuery.IsEmpty then
      sQuery := sQuery + ' and ' + sFilter
    else
      sQuery := sFilter;
  end;
  sFilter := '';
  sFilter := FilterBase();
  if not sFilter.IsEmpty then
  begin
    if not sQuery.IsEmpty then
      sQuery := sQuery + ' and ' + sFilter
    else
      sQuery := sFilter;
  end;
  sFilter := '';
  sFilter := FilterCourier();
  if not sFilter.IsEmpty then
  begin
    if not sQuery.IsEmpty then
      sQuery := sQuery + ' and ' + sFilter
    else
      sQuery := sFilter;
  end;
  sFilter := MountPeriodFilter();
//  if not sFilter.IsEmpty then
//  begin
//    if not sQuery.IsEmpty then
//      sQuery := sQuery + ' and ' + sFilter
//    else
//      sQuery := sFilter;
//  end;
  if not sQuery.IsEmpty then
    sResult := sQuery;
  Result := sResult;
end;

procedure Tview_SisGeFExtractedExpress.ListFortnights;
var
  parametros : TParametrosControl;
  fdquery : TFDQuery;
  FConexao : Tconexao;
  aParam: Array of variant;
  sTexto: String;
begin
  try
    parametros := TParametrosControl.Create;
    FConexao := TConexao.Create;
    fdQuery := Fconexao.ReturnQuery;
    SetLength(aParam,3);
    aParam[0] := 'APOIO';
    aParam[1] := '*';
    aParam[2] := 'order by id_parametro';
    fdQuery :=  parametros.Localizar(aParam);
    Finalize(aParam);
    periodoParametrizado.Properties.Items.Clear;
    periodoParametrizado.Properties.Items.Add('Selecione ...');
    sTexto := '';
    while not fdquery.Eof do
    begin
      sTexto := 'De ' + fdquery.FieldByName('dia_inicio_quinzena').AsString + ' a ';
      if fdquery.FieldByName('dia_final_quinzena').AsInteger = 31 then
      begin
        sTexto := sTexto + '28/29/30/31';
      end
      else
      begin
        sTexto := sTexto + fdquery.FieldByName('dia_final_quinzena').AsString;
      end;
      periodoParametrizado.Properties.Items.Add(sTexto);
      fdquery.Next;
    end;
    periodoParametrizado.ItemIndex := 0;
  finally
    parametros.Free;
    fdQuery.Connection.Connected := False;
    fdquery.Free;
    FConexao.Free;
  end;
end;

procedure Tview_SisGeFExtractedExpress.ListYears;
var
  i, iInicial, iTotalYears: integer;
begin
  iInicial := YearOf(Now) - 5;
  iTotalYears := YearOf(Now) + 5;
  anoPeriodo.Properties.Items.Clear;
  for i := iInicial to iTotalYears do
  begin
    anoPeriodo.Properties.Items.Add(i.ToString);
  end;
  anoPeriodo.Text := IntToStr(YearOf(now));
  mesPeriodo.ItemIndex := Pred(MonthOf(Now));
end;

function Tview_SisGeFExtractedExpress.MountPeriodFilter: string;
var
  sFilter, sField: string;
begin
  Result := '';
  sFilter :='';
  sField := '';
  if (tipoPeriodo.ItemIndex = 1) or (tipoPeriodo.ItemIndex = 3) then
  begin
    sField := ' dat_baixa';
  end
  else if (tipoPeriodo.ItemIndex = 2) or (tipoPeriodo.ItemIndex = 4) then
  begin
    sField := ' dat_expedicao';
  end;
  if (tipoPeriodo.ItemIndex = 3) or (tipoPeriodo.ItemIndex = 4) then
  begin
    sFilter := sField + RidePeriod(StrToInt(anoPeriodo.Text), mesPeriodo.ItemIndex, periodoParametrizado.ItemIndex);
    FYear := StrToInt(anoPeriodo.Text);
    FMounth := mesPeriodo.ItemIndex;
    FPeriod := periodoParametrizado.ItemIndex;
  end
  else if (tipoPeriodo.ItemIndex = 1) or (tipoPeriodo.ItemIndex = 2) then
  begin
    if processaEntregasAnteriores.Checked then
    begin
      sFilter := sField + ' between ' + QuotedStr(FormatDateTime('yyyy-mm-dd', 0)) + ' and ' +
                 QuotedStr(FormatDateTime('yyyy-mm-dd', dataFinalPeriodo.Date))
    end
    else
    begin
      sFilter := sField + ' between ' + QuotedStr(FormatDateTime('yyyy-mm-dd', dataInicialPeriodo.Date)) + ' and ' +
                 QuotedStr(FormatDateTime('yyyy-mm-dd', dataFinalPeriodo.Date));
    end;
    FYear := YearOf(dataFinalPeriodo.Date);
    FMounth := MonthOf(dataFinalPeriodo.Date);
    FPeriod := 0;
  end;
  Result := sFilter;
end;

procedure Tview_SisGeFExtractedExpress.ProcessExtract;
begin
  if not ValidadeProcess() then
    Exit;
  if Application.MessageBox('Confirma processar o extrato?', 'Processar', MB_YESNO + MB_ICONQUESTION) = IDNO then
    Exit;
  layoutGroupMain.ItemIndex := 1;
  dsExtract.Enabled := False;
  FExtract := TTHead_ExpressExtract.Create(True);
  FExtract.Filtro := GeneralFilter();
  FExtract.StartDate := StrToDate(FDataInicial);
  FExtract.EndDate := StrToDate(FDataFinal);
  FExtract.ExtraVolume := calcularVolumeExtra.EditValue;
//  FExtract.Cliente := iCliente;
//  FExtract.MemTab := memTab;
//  FExtract.Priority := tpNormal;
//  Timer.Enabled := True;
//  actionSelecionarArquivo.Enabled := False;
//  actionLimparCampo.Enabled := False;
//  actionImportar.Enabled := False;
//  actionCancelar.Enabled := True;
  timer.Enabled := True;
  activityIndicator.Active := True;
  FExtract.Start;
end;

function Tview_SisGeFExtractedExpress.RidePeriod(iYear, iMonth, iFortnight: Integer): string;
var
  parametros : TParametrosControl;
  FDQuery: TFDQuery;
  FConexao : TConexao;
  pParam: Array of variant;
  iMesData, iAnoData: Integer;
  sData: String;
  datData, datBase: TDate;
  iDiaInicio, iDiaFinal: Integer;
begin
  try
    Result := '';
    FConexao := TConexao.Create;
    FDquery := Fconexao.ReturnQuery;
    parametros := TParametrosControl.Create();
    SetLength(pParam,2);

    iAnoData := iYear;
    pParam[0] := 'QUINZENA';
    pParam[1] := iFortnight;
    FDQuery := parametros.Localizar(pParam);
    Finalize(pParam);
    if not FDQuery.IsEmpty then
    begin
      iDiaInicio := FDQuery.FieldByName('dia_inicio_quinzena').AsInteger;
      iDiaFinal := FDQuery.FieldByName('dia_final_quinzena').AsInteger;
    end
    else
    begin
      if iFortnight = 1 then
      begin
        iDiaInicio := 1;
        iDiaFinal := 15;
      end
      else
      begin
        iDiaInicio := 16;
        sData := '01/' + FormatFloat('00', iMonth) + '/' + IntToStr(iAnoData);
        iDiaFinal := DaysInMonth(StrToDate(sData));
      end;
    end;
    if iDiaInicio > iDiaFinal then
    begin
      if iMonth = 1 then
      begin
        iMesData := 12;
        iAnoData := iAnoData - 1;
        sData := FormatFloat('00', iDiaInicio) + '/' + FormatFloat('00', iMesData) + '/' + FormatFloat('0000', iAnoData);
      end
      else
      begin
        iMesData := iMonth - 1;
        iAnoData := iYear;
        sData := FormatFloat('00', iDiaInicio) + '/' + FormatFloat('00', iMesData) + '/' + FormatFloat('0000', iAnoData);
      end;
      FDataInicial := sData;
      iMesData := iMonth;
      iAnoData := iYear;
      sData := FormatFloat('00', iDiaFinal) + '/' + FormatFloat('00', iMesData) + '/' + FormatFloat('0000', iAnoData);
      FDataFinal := sData;
    end
    else
    begin
      iMesData := iMonth;
      iAnoData := iYear;
      sData := FormatFloat('00', iDiaInicio) + '/' + FormatFloat('00', iMesData) + '/' + FormatFloat('0000', iAnoData);
      FDataInicial := sData;
      iMesData := iMonth;
      iAnoData := iYear;
      if iDiaFinal = 31 then
      begin
        iDiaFinal := DaysInMonth(StrToDate(sData));
      end;
      sData := FormatFloat('00', iDiaFinal) + '/' + FormatFloat('00', iMesData) + '/' + FormatFloat('0000', iAnoData);
      FDataFinal := sData;
    end;
    FDQuery.Close;
    if processaEntregasAnteriores.Checked then
    begin
      FDataInicial := '0';
    end;
    Result := ' between ' + QuotedStr(FormatDateTime('yyyy-mm-dd', StrToDate(FDataInicial))) + ' and ' +
              QuotedStr(FormatDateTime('yyyy-mm-dd', StrToDate(FDataFinal)));
  finally
    FDQuery.Connection.Connected := False;
    FDQuery.Free;
    FConexao.Free;
    parametros.Free;
  end;
end;

procedure Tview_SisGeFExtractedExpress.StartForm;
begin
  ListYears;
  ListFortnights;
  tipoPeriodo.ItemIndex := 0;
end;

procedure Tview_SisGeFExtractedExpress.timerTimer(Sender: TObject);
begin
  if not FExtract.InProcess then
  begin
    dsExtract.Enabled := True;
    activityIndicator.Active := False;
    timer.Enabled := False;
    gridExtratoDBTableView1.ViewData.Expand(True);
  end;
end;

procedure Tview_SisGeFExtractedExpress.tipoPeriodoPropertiesChange(Sender: TObject);
begin
  case tipoPeriodo.ItemIndex of
    1 : dxLayoutGroup3.ItemIndex := 0;
    2 : dxLayoutGroup3.ItemIndex := 0;
    3 : dxLayoutGroup3.ItemIndex := 1;
    4 : dxLayoutGroup3.ItemIndex := 1;
    else
    dxLayoutGroup3.ItemIndex := 2;
  end;
end;

function Tview_SisGeFExtractedExpress.ValidadeProcess: boolean;
begin
  Result := False;
  if tipoPeriodo.ItemIndex = 2 then
  begin
    if anoPeriodo.ItemIndex = 0 then
    begin
      Application.MessageBox('Informe o ano do extrato!', 'Aten��o', MB_OK + MB_ICONWARNING);
      anoPeriodo.SetFocus;
      Exit;
    end;
    if mesPeriodo.ItemIndex = 0 then
    begin
      Application.MessageBox('Informe o m�s do extrato!', 'Aten��o', MB_OK + MB_ICONWARNING);
      mesPeriodo.SetFocus;
      Exit;
    end;
    if periodoParametrizado.ItemIndex = 0 then
    begin
      Application.MessageBox('Informe a quinzena do extrato!', 'Aten��o', MB_OK + MB_ICONWARNING);
      periodoParametrizado.SetFocus;
      Exit;
    end;
  end
  else if tipoPeriodo.ItemIndex = 1 then
  begin
    if dataInicialPeriodo.Text = '' then
    begin
      Application.MessageBox('Informe a data inicial do per�odo do extrato!', 'Aten��o', MB_OK + MB_ICONWARNING);
      dataInicialPeriodo.SetFocus;
      Exit;
    end;
    if dataFinalPeriodo.Text = '' then
    begin
      Application.MessageBox('Informe a data fnal do per�odo do extrato!', 'Aten��o', MB_OK + MB_ICONWARNING);
      dataFinalPeriodo.SetFocus;
      Exit;
    end;
    if dataFinalPeriodo.Date < dataInicialPeriodo.Date then
    begin
      Application.MessageBox('Data final do per�odo n�o pode ser menor que a data inicial!', 'Aten��o', MB_OK + MB_ICONWARNING);
      dataFinalPeriodo.SetFocus;
      Exit;
    end;
  end;
  if situacaoExtrato.ItemIndex = 0 then
  begin
    Application.MessageBox('Informe a situa��o do extrato!', 'Aten��o', MB_OK + MB_ICONWARNING);
    situacaoExtrato.SetFocus;
    Exit;
  end;
  Result := True;
end;

end.
