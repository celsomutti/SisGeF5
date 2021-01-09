unit View.ExtraviosMultas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Control.Entregas, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxCalendar, cxButtonEdit, cxCurrencyEdit, cxMemo, cxCheckBox, Data.DB, dxmdaset, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, dxSkinsdxStatusBarPainter, dxStatusBar, cxProgressBar,
  System.Actions, Vcl.ActnList, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Control.ExtraviosMultas, frxClass, Control.EntregadoresExpressas, Control.Bases,
  cxDBLookupComboBox, cxImageComboBox, cxBlobEdit, TFO.Barras, Control.Sistema, Control.Lancamentos, FireDAC.Comp.Client,
  Control.Cadastro, dxDateTimeWheelPicker, Data.SisGeF, Control.Acessos, cxGridExportLink, ShellAPI, Control.FilterData,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  Tview_ExtraviosMultas = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxLabel1: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    txtNossoNumero: TcxTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cboTipo: TcxComboBox;
    dxLayoutItem3: TdxLayoutItem;
    cboMotivo: TcxComboBox;
    dxLayoutItem4: TdxLayoutItem;
    datExtravio: TcxDateEdit;
    dxLayoutItem5: TdxLayoutItem;
    txtNomeEntregador: TcxTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    txtCodigoEntregador: TcxButtonEdit;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dblValorProduto: TcxCurrencyEdit;
    dxLayoutItem8: TdxLayoutItem;
    dblMulta: TcxCurrencyEdit;
    dxLayoutItem9: TdxLayoutItem;
    dblVerba: TcxCurrencyEdit;
    dxLayoutItem10: TdxLayoutItem;
    dblTotalExtravio: TcxCurrencyEdit;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cboCorrespondencia: TcxComboBox;
    dxLayoutItem12: TdxLayoutItem;
    cboRetorno: TcxComboBox;
    dxLayoutItem13: TdxLayoutItem;
    memObservacoes: TcxMemo;
    dxLayoutItem14: TdxLayoutItem;
    chkRestricao: TcxCheckBox;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    chkFranquia: TcxCheckBox;
    dxLayoutItem16: TdxLayoutItem;
    dblValorDebitado: TcxCurrencyEdit;
    dxLayoutItem17: TdxLayoutItem;
    datDebitoFranquia: TcxDateEdit;
    dxLayoutItem18: TdxLayoutItem;
    aclExtravios: TActionList;
    actIncluir: TAction;
    actEstornar: TAction;
    actEditar: TAction;
    actPesquisar: TAction;
    actFiltrar: TAction;
    actCancelar: TAction;
    actImportar: TAction;
    actGravar: TAction;
    actFinalizar: TAction;
    actFechar: TAction;
    cxButton1: TcxButton;
    dxLayoutItem21: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxButton3: TcxButton;
    dxLayoutItem23: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutItem24: TdxLayoutItem;
    cxButton5: TcxButton;
    dxLayoutItem25: TdxLayoutItem;
    cxButton6: TcxButton;
    dxLayoutItem26: TdxLayoutItem;
    cxButton7: TcxButton;
    dxLayoutItem27: TdxLayoutItem;
    cxButton8: TcxButton;
    dxLayoutItem28: TdxLayoutItem;
    cxButton9: TcxButton;
    dxLayoutItem29: TdxLayoutItem;
    cxButton10: TcxButton;
    dxLayoutItem30: TdxLayoutItem;
    actPesquisaEntregador: TAction;
    actDeclaracao: TAction;
    frxDeclaracao: TfrxReport;
    pbPercentual: TcxProgressBar;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    txtParametro: TcxTextEdit;
    dxLayoutItem31: TdxLayoutItem;
    cxButton11: TcxButton;
    dxLayoutItem32: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutItem33: TdxLayoutItem;
    grdExtravios: TcxGrid;
    tvExtravios: TcxGridDBTableView;
    lvExtravios: TcxGridLevel;
    dsExtravios: TDataSource;
    mskCodigo: TcxMaskEdit;
    dxLayoutItem20: TdxLayoutItem;
    dsBase: TDataSource;
    dsEntregadores: TDataSource;
    actRetornar: TAction;
    cxButton12: TcxButton;
    dxLayoutItem34: TdxLayoutItem;
    cxButton13: TcxButton;
    dxLayoutItem35: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    actSelecionar: TAction;
    actPesquisarParametros: TAction;
    tvExtraviosRecId: TcxGridDBColumn;
    tvExtraviosCOD_EXTRAVIO: TcxGridDBColumn;
    tvExtraviosDES_EXTRAVIO: TcxGridDBColumn;
    tvExtraviosNUM_NOSSONUMERO: TcxGridDBColumn;
    tvExtraviosCOD_AGENTE: TcxGridDBColumn;
    tvExtraviosVAL_PRODUTO: TcxGridDBColumn;
    tvExtraviosDAT_EXTRAVIO: TcxGridDBColumn;
    tvExtraviosVAL_MULTA: TcxGridDBColumn;
    tvExtraviosVAL_VERBA: TcxGridDBColumn;
    tvExtraviosVAL_TOTAL: TcxGridDBColumn;
    tvExtraviosDOM_RESTRICAO: TcxGridDBColumn;
    tvExtraviosCOD_ENTREGADOR: TcxGridDBColumn;
    tvExtraviosCOD_TIPO: TcxGridDBColumn;
    tvExtraviosVAL_EXTRATO_FRANQUIA: TcxGridDBColumn;
    tvExtraviosDOM_EXTRATO_FRANQUIA: TcxGridDBColumn;
    tvExtraviosDAT_EXTRAVIO_FRANQUIA: TcxGridDBColumn;
    tvExtraviosDES_ENVIO_CORRESPONDENCIA: TcxGridDBColumn;
    tvExtraviosDES_RETORNO_CORRESPONDENCIA: TcxGridDBColumn;
    tvExtraviosDES_OBSERVACOES: TcxGridDBColumn;
    tvExtraviosVAL_PERCENTUAL_PAGO: TcxGridDBColumn;
    tvExtraviosID_EXTRATO: TcxGridDBColumn;
    tvExtraviosSEQ_ACAREACAO: TcxGridDBColumn;
    tvExtraviosNOM_EXECUTOR: TcxGridDBColumn;
    tvExtraviosDAT_MANUTENCAO: TcxGridDBColumn;
    tvExtraviosColumn1: TcxGridDBColumn;
    tvExtraviosColumn2: TcxGridDBColumn;
    actFinalizarGrade: TAction;
    cxButton14: TcxButton;
    dxLayoutItem36: TdxLayoutItem;
    cxButton15: TcxButton;
    dxLayoutItem37: TdxLayoutItem;
    SaveDialog: TSaveDialog;
    textQuery: TcxTextEdit;
    layoutFilterText: TdxLayoutItem;
    mtbEntregadores: TFDMemTable;
    mtbBases: TFDMemTable;
    mtbBasesdom_check: TLargeintField;
    mtbBasescod_base: TIntegerField;
    mtbBasesnom_base: TStringField;
    mtbExtravios: TFDMemTable;
    mtbExtravioscod_extravio: TIntegerField;
    mtbExtraviosdes_extravio: TStringField;
    mtbExtraviosnum_nossonumero: TStringField;
    mtbExtravioscod_agente: TIntegerField;
    mtbExtraviosval_produto: TFloatField;
    mtbExtraviosdat_extravio: TDateField;
    mtbExtraviosval_multa: TFloatField;
    mtbExtraviosval_verba: TFloatField;
    mtbExtraviosval_total: TFloatField;
    mtbExtraviosdom_restricao: TStringField;
    mtbExtravioscod_entregador: TIntegerField;
    mtbExtravioscod_tipo: TIntegerField;
    mtbExtraviosval_verba_franquia: TFloatField;
    mtbExtraviosval_extrato_franquia: TFloatField;
    mtbExtraviosdom_extrato_franquia: TStringField;
    mtbExtraviosdat_extravio_franquia: TDateField;
    mtbExtraviosdes_envio_correspondencia: TStringField;
    mtbExtraviosdes_retorno_correspondencia: TStringField;
    mtbExtraviosdes_observacoes: TMemoField;
    mtbExtraviosval_percentual_pago: TFloatField;
    mtbExtraviosid_extrato: TIntegerField;
    mtbExtraviosseq_acareacao: TIntegerField;
    mtbExtraviosnom_executor: TStringField;
    mtbExtraviosdat_manutencao: TDateTimeField;
    mtbExtraviosnum_extrato: TStringField;
    procedure actFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actFiltrarExecute(Sender: TObject);
    procedure actEstornarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actDeclaracaoExecute(Sender: TObject);
    procedure actFinalizarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actIncluirExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure actPesquisarParametrosExecute(Sender: TObject);
    procedure actRetornarExecute(Sender: TObject);
    procedure actSelecionarExecute(Sender: TObject);
    procedure txtNossoNumeroPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure FormShow(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actPesquisaEntregadorExecute(Sender: TObject);
    procedure dblValorProdutoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure dblMultaPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure dblVerbaPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure txtParametroEnter(Sender: TObject);
    procedure txtParametroExit(Sender: TObject);
    procedure actFinalizarGradeExecute(Sender: TObject);
    procedure tvExtraviosCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
      AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure grdExtraviosEnter(Sender: TObject);
    procedure grdExtraviosExit(Sender: TObject);
    procedure actImportarExecute(Sender: TObject);
    procedure aclExtraviosExecute(Action: TBasicAction; var Handled: Boolean);
    procedure tvExtraviosNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure txtCodigoEntregadorPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
  private
    { Private declarations }
    procedure SomaExtravio;
    procedure Finalizar;
    procedure ImprimirDeclaracao;
    procedure LocalizaEntrega(sNN: String; iTipo: Integer);
    procedure Estornar;
    procedure Filtro;
    procedure ClearFields();
    procedure AccessField(bFlag: Boolean);
    procedure SetupClass();
    procedure SetupCampos();
    procedure Setupbuttons();
    procedure PopulaBases();
    procedure PopulaEntregadores();
    procedure PesquisarExtravios(sParametro: String);
    procedure PopulaPesquisa(FDQuery: TFDQuery);
    procedure SetupClassRestuladoPesquisa();
    procedure Gravar;
    procedure PesquisaEntregador;
    procedure FinalizaGrade;
    procedure ImportarDados;
    procedure ExportarDados;
    procedure ExecutaFiltro(sFiltro: String);
    function NomeBase(iCodigo: Integer): String;
    function NomeEntregador(iCodigo: Integer): String;

    var
      bFiltro: Boolean;
      FExtravios : TExtraviosMultasControl;
      FEntregadores : TEntregadoresExpressasControl;
      FEntrega : TEntregasControl;
      FLancamento: TLancamentosControl;
      FBases: TBasesControl;
      FCadastro: TCadastroControl;
      FAcessos : TAcessosControl;
      sEntregador: String;
      sAgente: String;
      sCPF: String;
      sFantasia: String;
      iExtrato: Integer;
      dVerbaFranquia: Double;
  public
    { Public declarations }
  end;

var
  view_ExtraviosMultas: Tview_ExtraviosMultas;
implementation

{$R *.dfm}

uses Common.Utils, Global.Parametros, Common.ENum, View.PesquisarPessoas, View.Impressao,
  View.ImportacaoPlanilhaExtravios, View.FilterData;


procedure Tview_ExtraviosMultas.aclExtraviosExecute(Action: TBasicAction; var Handled: Boolean);
begin
  if not FAcessos.VerificaLogin(Action.Tag, Global.Parametros.pUser_ID) then
  begin
    Application.MessageBox('Usuário sem permissão à esta função!', 'Atenção', MB_OK + MB_ICONHAND);
    Handled := True;
    Exit;
  end;
end;

procedure Tview_ExtraviosMultas.actCancelarExecute(Sender: TObject);
begin
  if Application.MessageBox('Confirma cancelar a operação atual?', 'Cancelar', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then Exit;
  FExtravios.Extravios.Acao := Common.ENum.tacIndefinido;
  ClearFields;
  Setupbuttons;
  AccessField(False);
end;

procedure Tview_ExtraviosMultas.actDeclaracaoExecute(Sender: TObject);
begin
  ImprimirDeclaracao;
end;

procedure Tview_ExtraviosMultas.actEditarExecute(Sender: TObject);
begin
  FExtravios.Extravios.Acao := Common.ENum.tacAlterar;
  Setupbuttons;
  AccessField(True);
end;

procedure Tview_ExtraviosMultas.actEstornarExecute(Sender: TObject);
begin
  Estornar;
end;

procedure Tview_ExtraviosMultas.actFecharExecute(Sender: TObject);
begin
  Perform(WM_CLOSE, 0, 0);
end;


procedure Tview_ExtraviosMultas.Filtro;
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
    view_FilterData.mtbPesquisa := mtbExtravios;
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
      dxLayoutGroup7.MakeVisible;
    end;
  finally
    filtro.Free;
  end;
end;

procedure Tview_ExtraviosMultas.FinalizaGrade;
begin
  SetupClassRestuladoPesquisa;
  Finalizar;
end;

procedure Tview_ExtraviosMultas.Finalizar;
var
  lLog : TStringList;
begin
  try
    if Application.MessageBox('Confirma finalizar este Extravio/Multa?', 'Finalizar', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;
    lLog := TStringList.Create;
    lLog.Text := FExtravios.Extravios.Obs;
    lLog.Add('Extravio finalizado em ' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now()) + ' por ' + Global.Parametros.pNameUser);
    FExtravios.Extravios.Restricao := 'S';
    FExtravios.Extravios.Percentual := 0;
    FExtravios.Extravios.Executor := Global.Parametros.pUser_Name;
    FExtravios.Extravios.Manutencao := Now();
    FExtravios.Extravios.Obs := lLog.Text;
    FExtravios.Extravios.Acao := Common.ENum.tacAlterar;
    if not FExtravios.Gravar() then
    begin
      application.MessageBox('Erro ao finalizar o extravio!', 'Erro', MB_OK + MB_ICONERROR);
      Exit;
    end;
    if not mtbExtravios.IsEmpty then
    begin
      if mtbExtravios.Locate('COD_EXTRAVIO',FExtravios.Extravios.ID,[]) then
      begin
        mtbExtravios.Edit;
        mtbExtraviosDOM_RESTRICAO.AsString := 'S';
        mtbExtraviosDES_OBSERVACOES.Text := lLog.Text;
        mtbExtraviosNOM_EXECUTOR.AsString := Global.Parametros.pUser_Name;
        mtbExtraviosDAT_MANUTENCAO.AsDateTime := Now();
        mtbExtravios.Post;
      end;
    end;

    application.MessageBox(PChar('Extravio/Multa NN ' + FExtravios.Extravios.NN + ' finalizado com sucesso.'), 'Finalizar',
                           MB_OK + MB_ICONINFORMATION);
    FExtravios.Extravios.Acao := Common.ENum.tacIndefinido;
    ClearFields;
    AccessField(False);
    Setupbuttons;
  finally
    lLog.Free;
  end;

end;

procedure Tview_ExtraviosMultas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FExtravios.Free;
  FAcessos.Free;
  mtbExtravios.Close;
  mtbBases.Close;
  mtbEntregadores.Close;
  Action := caFree;
  view_ExtraviosMultas := Nil;
end;

procedure Tview_ExtraviosMultas.FormCreate(Sender: TObject);
begin
  TSistemaControl.GetInstance();
  FExtravios := TExtraviosMultasControl.Create;
  FAcessos := TAcessosControl.Create;
  FExtravios.Extravios.Acao := Common.ENum.tacIndefinido;
end;

procedure Tview_ExtraviosMultas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if memObservacoes.IsFocused then Exit;
  if grdExtravios.IsFocused then Exit;
  If Key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;
end;

procedure Tview_ExtraviosMultas.FormShow(Sender: TObject);
begin
  ClearFields;
  AccessField(False);
  Setupbuttons;
  FAcessos.Acessos.Administrador := Global.Parametros.pAdmin;
  PopulaBases;
  PopulaEntregadores;
end;

procedure Tview_ExtraviosMultas.Gravar;
begin
  SetupClass;
  if not FExtravios.ValidaCampos() then Exit;
  if Application.MessageBox('Confirma Salvar os dados?', 'Gravar', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;
  if not FExtravios.Gravar then
  begin
    Application.MessageBox('Erro ao Gravar!', 'Erro', MB_OK + MB_ICONERROR);
    Exit;
  end;
  Application.MessageBox('Gravação efetuada.', 'Gravar', MB_OK + MB_ICONINFORMATION);
  FExtravios.Extravios.Acao := Common.ENum.tacIndefinido;
  ClearFields;
  AccessField(False);
  Setupbuttons;
end;

procedure Tview_ExtraviosMultas.grdExtraviosEnter(Sender: TObject);
begin
  cxButton13.Default := True;
end;

procedure Tview_ExtraviosMultas.grdExtraviosExit(Sender: TObject);
begin
  cxButton13.Default := False;
end;

procedure Tview_ExtraviosMultas.ImportarDados;
begin
    if not Assigned(view_ImportacaoPlanilhaExtravios) then
    begin
      view_ImportacaoPlanilhaExtravios := Tview_ImportacaoPlanilhaExtravios.Create(Application);
    end;
    view_ImportacaoPlanilhaExtravios.ShowModal;
end;

procedure Tview_ExtraviosMultas.ImprimirDeclaracao;
var
  sImpressao: String;
  sData : String;

begin
  with frxDeclaracao do begin
    if not Assigned(view_Impressao) then begin
      view_Impressao := Tview_Impressao.Create(Application);
    end;
    view_Impressao.cxLabel1.Caption := 'DECLARAÇÃO';
    view_Impressao.cxArquivo.Text := ExtractFilePath(Application.ExeName) + 'Reports\frxDeclaracaoExtravioExpressas.fr3';
    if view_Impressao.ShowModal <> mrOk then
    begin
      FreeAndNil(view_Impressao);
      Exit;
    end
    else begin
      if (not FileExists(view_Impressao.cxArquivo.Text)) then begin
        Application.MessageBox(PChar('Arquivo ' + view_Impressao.cxArquivo.Text +
                               ' não foi encontrado!'), 'Atenção', MB_OK + MB_ICONWARNING);
        Exit;
      end;
    end;
    LoadFromFile(view_Impressao.cxArquivo.Text);
    sImpressao := 'Impresso pelo ' + Application.Title + ' Versão ' + Common.Utils.TUtils.VersaoExe + ' por ' +
                  Global.Parametros.pNameUser + ' em ' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now);
    if sEntregador = 'NONE' then
    begin
      sEntregador := txtCodigoEntregador.Text + '-' + txtNomeEntregador.Text;
    end
    else
    begin
      sEntregador := sEntregador + ' (' +  txtNomeEntregador.Text+ ')';
    end;
    sData := FormatDateTime('dddd, dd " de " mmmm " de " yyyy ', Now);
    Variables.Items[Variables.IndexOf('vAgente')].Value :=  QuotedStr(sAgente);
    Variables.Items[Variables.IndexOf('vEntregador')].Value :=  QuotedStr(sEntregador);
    Variables.Items[Variables.IndexOf('vFantasia')].Value :=  QuotedStr(sFantasia);
    Variables.Items[Variables.IndexOf('vNN')].Value :=  QuotedStr(txtNossoNumero.Text);
    Variables.Items[Variables.IndexOf('vValor')].Value :=  QuotedStr(dblValorProduto.Text);
    Variables.Items[Variables.IndexOf('vMulta')].Value :=  QuotedStr(dblMulta.Text);
    Variables.Items[Variables.IndexOf('vVerba')].Value :=  QuotedStr(dblVerba.Text);
    Variables.Items[Variables.IndexOf('vData')].Value :=  QuotedStr(sData);
    Variables.Items[Variables.IndexOf('vCPF')].Value :=  QuotedStr(sCPF);
    Variables.Items[Variables.IndexOf('vImpressao')].Value :=  QuotedStr(sImpressao);
    if (not vieW_Impressao.bFlagImprimir) then
    begin
      ShowReport(True);
    end
    else
    begin
      PrepareReport;
      Print;
    end;
    FreeAndNil(vieW_Impressao);
  end;
end;

procedure Tview_ExtraviosMultas.LocalizaEntrega(sNN: String; iTipo: Integer);
var
  pParam: array of Variant;
  iId: Integer;
  FDQuery: TFDQuery;
  iEntregador: Integer;
  iBase: Integer;
  dValor: Double;
  dVerba: Double;
begin
  try
    // procura extravio;
    sNN := FormatFloat('0',StrToFloatDef(sNN,0));
    FExtravios.Extravios.NN := sNN;
    FExtravios.Extravios.Tipo := iTipo;
    if FExtravios.ExtravioExiste() > 0  then
    begin
      Application.MessageBox('Extravio/Multa já cadastrado!', 'Atenção', MB_OK + MB_ICONASTERISK);
      FExtravios.Extravios.Acao := Common.ENum.tacIndefinido;
      ClearFields;
      AccessField(False);
      Setupbuttons;
      FDQuery.Free;
      Exit;
    end;

    // procura entrega
    iEntregador := 0;
    iBase := 0;
    dValor := 0;
    dVerba := 0;
    sAgente := 'NONE';

    {apanha os dados da entrega para lançamento do extravio}
    FBases := TBasesControl.Create;
    FEntregadores := TEntregadoresExpressasControl.Create;
    FEntregas := TEntregasControl.Create;

    SetLength(pParam,2);
    pParam := ['NN', sNN];
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery();
    FDQuery := FEntregas.Localizar(pParam);
    Finalize(pParam);
    if not FDQuery.IsEmpty then
    begin
      iEntregador := FDQuery.FieldByName('COD_ENTREGADOR').AsInteger;
      iBase := FDQuery.FieldByName('COD_AGENTE').AsInteger;
      dValor := FDQuery.FieldByName('VAL_PRODUTO').AsFloat;
      dVerba := FDQuery.FieldByName('VAL_VERBA_ENTREGADOR').AsFloat;
      dVerbaFranquia := FDQuery.FieldByName('VAL_VERBA_FRANQUIA').AsFloat;
    end;
    FDQuery.Close;
    FDQuery.Free;
    dblValorProduto.Value := dValor;
    dblVerba.Value := dVerba;

    //encontra os nomes do entregador e agente
    sAgente := FBases.GetField('NOM_FANTASIA','COD_AGENTE',iBase.ToString);
    txtCodigoEntregador.EditValue := iEntregador;
    txtNomeEntregador.Text := FEntregadores.GetField('NOM_FANTASIA','COD_ENTREGADOR',iEntregador.ToString);

    //se não encontrou os nomes, atribui o padrão

    if sAgente.IsEmpty then sAgente := 'NONE';
    if txtNomeEntregador.Text = ''then txtNomeEntregador.Text := 'NONE';

    //prepara os campos para ainclusão do extravio

    dblMulta.Value := 0;
    memObservacoes.Text := '';
    chkFranquia.EditValue := 'N';
    dblValorDebitado.Value := 0;
    datDebitoFranquia.Clear;
    cboCorrespondencia.ItemIndex := -1;
    cboRetorno.ItemIndex := -1;

    if cboTipo.ItemIndex = 2 then {Se o tipo for MULTA, zera o valor do produto}
    begin
      dblValorProduto.Value := 0;
    end;

    if cboTipo.ItemIndex = 1 then {Se o tipo for SINISTRO, finaliza o extravio e atribui percentual de desconto para 100%
                                   e padroniza s campos de envio correspondência}
    begin
      chkRestricao.EditValue := 'S';
      pbPercentual.Position := 100;
      cboMotivo.ItemIndex := 24;
      cboCorrespondencia.ItemIndex := 0;
      cboRetorno.ItemIndex := 0;
    end
    else
    begin {sendo extravio ou multa, deixa o lançamento em aberto e o percentual zerado}
      chkRestricao.EditValue := 'N';
      pbPercentual.Position := 0;
    end;

    // totaliza o extravio
    dblTotalExtravio.Value := dblValorProduto.Value + dblMulta.Value + dblVerba.Value;

  finally
    FBases.Free;
    FEntregadores.Free;
    FEntrega.Free
  end;
end;

function Tview_ExtraviosMultas.NomeBase(iCodigo: Integer): String;
var
  aParam: array of Variant;
  FBase: TBasesControl;
begin
  try
    Result := 'NONE';
    FBase := TBasesControl.Create;
    SetLength(aParam,2);
    aParam[0] := 'CODIGO';
    aParam[1] := iCodigo;
    if FBase.LocalizarExato(aParam) then
    begin
      Result := FBase.Bases.NomeFantasia;
    end;
  finally
    FBase.Free;
    Finalize(aParam);
  end;
end;

function Tview_ExtraviosMultas.NomeEntregador(iCodigo: Integer): String;
var
  aParam: array of Variant;
  FEntregadores: TEntregadoresExpressasControl;
begin
  try
    Result := 'NONE';
    FEntregadores := TEntregadoresExpressasControl.Create;
    if iCodigo = 0 then
    begin
      Exit;
    end;
    SetLength(aParam,3);
    aParam[0] := 'ENTREGADOR';
    aParam[1] := iCodigo;
    if FEntregadores.LocalizarExato(aParam) then
    begin
      Result := FEntregadores.Entregadores.Fantasia;
    end;
  finally
    FEntregadores.Free;
    Finalize(aParam);
  end;
end;

procedure Tview_ExtraviosMultas.PesquisarExtravios(sParametro: String);
var
  aParam: array of Variant;
  FDQuery : TFDQuery;
  iIndex: Integer;
  sSQL : String;
begin
  try
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    sSQL := '';
    if Common.Utils.TUtils.ENumero(txtParametro.Text) then
    begin
      sSQL := 'COD_EXTRAVIO LIKE ' + sParametro +  ' OR NUM_NOSSONUMERO LIKE '+ QuotedStr('%' + sParametro + '%') +
              ' OR COD_ENTREGADOR = ' + sParametro + ' OR COD_AGENTE = ' + sParametro;
    end
    else
    begin
      sSQL := 'NUM_NOSSONUMERO LIKE ' + QuotedStr('%' + sParametro + '%');
    end;
    SetLength(aParam,2);
    iIndex := 0;
    aParam[0] := 'FILTRO';
    aparam[1] := sSQL;
    FDQuery := FExtravios.Localizar(aParam);
    Finalize(aParam);
    if not FDQuery.IsEmpty then PopulaPesquisa(FDQuery);
    FDQuery.Close;
  finally
    FDQuery.Free;
    FreeAndNil(View_PesquisarPessoas);
  end;
end;

procedure Tview_ExtraviosMultas.PesquisaEntregador;
var
  aParam: array of Variant;
  FDQuery : TFDQuery;
  iBase: Integer;
begin
  try
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    SetLength(aParam,3);
    FBases := TBasesControl.Create;
    FEntregadores := TEntregadoresExpressasControl.Create;
    aParam[0] := 'APOIO';
    aParam[1] := 'COD_ENTREGADOR as Código, NOM_FANTASIA as Nome, COD_AGENTE as Base';
    aparam[2] := '';
    FDQuery := FEntregadores.Localizar(aParam);
    Finalize(aParam);
    if not Assigned(View_PesquisarPessoas) then
    begin
      View_PesquisarPessoas := TView_PesquisarPessoas.Create(Application);
    end;
    View_PesquisarPessoas.qryPesquisa.CreateFieldsFromDataSet(FDQuery);
    View_PesquisarPessoas.qryPesquisa.LoadFromDataSet(FDQuery);
    if not FDQuery.IsEmpty then View_PesquisarPessoas.qryPesquisa.First;
    FDQuery.Close;
    View_PesquisarPessoas.tvPesquisa.ClearItems;
    View_PesquisarPessoas.tvPesquisa.DataController.CreateAllItems;
    View_PesquisarPessoas.Caption := View_PesquisarPessoas.Caption + ' de Entregadores';
    iBase := 0;
    if View_PesquisarPessoas.ShowModal = mrOk then
    begin
      iBase := View_PesquisarPessoas.qryPesquisa.FieldByName('Base').AsInteger;
      txtCodigoEntregador.EditValue := View_PesquisarPessoas.qryPesquisa.FieldByName('Código').AsInteger;
      txtNomeEntregador.Text := View_PesquisarPessoas.qryPesquisa.FieldByName('Nome').AsString;
      sAgente := FBases.GetField('NOM_FANTASIA', 'COD_AGENTE', iBase.ToString);
    end;
  finally
    FDQuery.Free;
    FBases.Free;
    FEntregadores.Free;
    FreeAndNil(View_PesquisarPessoas);
  end;
end;

procedure Tview_ExtraviosMultas.PopulaBases;
var
  aParam: array of Variant;
  FDQuery : TFDQuery;
begin
  try
    FBases := TBasesControl.Create;
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    SetLength(aParam,3);
    aParam[0] := 'APOIO';
    aParam[1] := '0 as dom_check, COD_AGENTE as cod_base, NOM_FANTASIA as nom_base';
    aparam[2] := ' WHERE COD_STATUS = 1';
    FDQuery := FBases.Localizar(aParam);
    Finalize(aParam);
    if mtbBases.Active then mtbBases.Close;
    mtbBases.Data := FDQuery.Data;
  finally
    FBases.Free;
    FDQuery.Free;
  end;
end;

procedure Tview_ExtraviosMultas.PopulaEntregadores;
var
  aParam: array of Variant;
  FDQuery : TFDQuery;
begin
  try
    FEntregadores := TEntregadoresExpressasControl.Create;
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    SetLength(aParam,3);
    aParam[0] := 'APOIO';
    aParam[1] := 'COD_ENTREGADOR, NOM_FANTASIA';
    aparam[2] := 'WHERE COD_CADASTRO  <> 0';
    FDQuery := FEntregadores.Localizar(aParam);
    Finalize(aParam);
    mtbEntregadores.FieldDefs.Assign(FDQuery.FieldDefs);
    mtbEntregadores.Data := FDQuery.Data;
  finally
    FEntregadores.Free;
    FDQuery.Free;
  end;
end;

procedure Tview_ExtraviosMultas.PopulaPesquisa(FDQuery: TFDQuery);
var
  iIndex : Integer;
  sCampo: String;
begin
    if mtbExtravios.Active then mtbExtravios.Close;
    mtbExtravios.Open;
    sCampo := '';
    if not FDQuery.IsEmpty then FDQuery.First;
    while not FDQuery.Eof do
    begin
      mtbExtravios.Insert;
      for iIndex := 0 to FDQuery.FieldCount - 1 do
      begin
        sCampo := FDQuery.FieldList[iIndex].FieldName;
        mtbExtravios.FieldByName(sCampo).Value := FDQuery.FieldByName(sCampo).Value;
      end;
      mtbExtravios.Post;
      FDQuery.Next;
    end;
    if not mtbExtravios.IsEmpty then mtbExtravios.First;
end;

procedure Tview_ExtraviosMultas.ClearFields();
begin
  txtNossoNumero.Text := '';
  cboTipo.ItemIndex := -1;
  cboMotivo.ItemIndex := -1;
  datExtravio.Clear;
  txtCodigoEntregador.Text := '';
  txtNomeEntregador.Clear;
  dblValorProduto.Value := 0;
  dblMulta.Value := 0;
  dblVerba.Value := 0;
  dblTotalExtravio.Value := 0;
  chkRestricao.EditValue := 'N';
  cboCorrespondencia.ItemIndex := -1;
  cboRetorno.ItemIndex := -1;
  memObservacoes.Clear;
  chkFranquia.EditValue := '';
  dblValorDebitado.Value := 0;
  datDebitoFranquia.Clear;
  iExtrato := 0;
  sAgente := '';
  pbPercentual.Position := 0;
  dVerbaFranquia := 0;
end;

procedure Tview_ExtraviosMultas.dblMultaPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  if (FExtravios.Extravios.Acao = Common.ENum.tacIncluir) or (FExtravios.Extravios.Acao = Common.ENum.tacAlterar) then
  begin
    SomaExtravio;
  end;
end;

procedure Tview_ExtraviosMultas.dblValorProdutoPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  if (FExtravios.Extravios.Acao = Common.ENum.tacIncluir) or (FExtravios.Extravios.Acao = Common.ENum.tacAlterar) then
  begin
    SomaExtravio;
  end;
end;

procedure Tview_ExtraviosMultas.dblVerbaPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  if (FExtravios.Extravios.Acao = Common.ENum.tacIncluir) or (FExtravios.Extravios.Acao = Common.ENum.tacAlterar) then
  begin
    SomaExtravio;
  end;
end;

procedure Tview_ExtraviosMultas.actFiltrarExecute(Sender: TObject);
begin
  Filtro;
end;

procedure Tview_ExtraviosMultas.actFinalizarExecute(Sender: TObject);
begin
  if chkRestricao.Checked then Exit;
  Finalizar;
end;

procedure Tview_ExtraviosMultas.actFinalizarGradeExecute(Sender: TObject);
begin
  FinalizaGrade;
end;

procedure Tview_ExtraviosMultas.actGravarExecute(Sender: TObject);
begin
  Gravar;
end;

procedure Tview_ExtraviosMultas.actImportarExecute(Sender: TObject);
begin
  ImportarDados;
end;

procedure Tview_ExtraviosMultas.actIncluirExecute(Sender: TObject);
begin
  FExtravios.Extravios.Acao := Common.ENum.tacIncluir;
  ClearFields;
  Setupbuttons;
  AccessField(True);
  cboTipo.SetFocus;
end;

procedure Tview_ExtraviosMultas.actPesquisaEntregadorExecute(Sender: TObject);
begin
  PesquisaEntregador;
end;

procedure Tview_ExtraviosMultas.actPesquisarExecute(Sender: TObject);
begin
  dxLayoutGroup7.MakeVisible;
  txtParametro.SetFocus;
end;

procedure Tview_ExtraviosMultas.actPesquisarParametrosExecute(Sender: TObject);
begin
 PesquisarExtravios(txtParametro.Text);
end;

procedure Tview_ExtraviosMultas.actRetornarExecute(Sender: TObject);
begin
  dxLayoutGroup5.MakeVisible;
end;

procedure Tview_ExtraviosMultas.actSelecionarExecute(Sender: TObject);
begin
  if not mtbExtravios.IsEmpty then
  begin
    SetupClassRestuladoPesquisa;
    FExtravios.Extravios.Acao := Common.ENum.tacPesquisa;
    SetupCampos;
    Setupbuttons;
  end;
  dxLayoutGroup5.MakeVisible;
end;

procedure Tview_ExtraviosMultas.AccessField(bFlag: Boolean);
begin
  if FExtravios.Extravios.Acao = Common.ENum.tacIncluir then
  begin
    txtNossoNumero.Properties.ReadOnly := not bFlag;
    cboTipo.Properties.ReadOnly := not bFlag;
  end
  else
  begin
    txtNossoNumero.Properties.ReadOnly := True;
    cboTipo.Properties.ReadOnly := True;
  end;
  cboMotivo.Properties.ReadOnly := not bFlag;
  datExtravio.Properties.ReadOnly := not bFlag;
  txtCodigoEntregador.Properties.ReadOnly := not bFlag;
  dblValorProduto.Properties.ReadOnly := not bFlag;
  dblMulta.Properties.ReadOnly :=  not bFlag;
  dblVerba.Properties.ReadOnly := not bFlag;
  cboCorrespondencia.Properties.ReadOnly := not bFlag;;
  cboRetorno.Properties.ReadOnly := not bFlag;;
  memObservacoes.Properties.ReadOnly := not bFlag;
end;

procedure Tview_ExtraviosMultas.Estornar;
var
  bFlagReembolso : Boolean;
  pParam: array of Variant;
  dValor: Double;
  sObs: String;
  FDQuery : TFDQuery;
  iCadastro : Integer;
begin
  bFlagReembolso := False;
  dValor := 0;
  sObs := '';
  iCadastro := 0;
  if Application.MessageBox('Estornar este Extravio/Multa?', 'Estornor', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;
  FExtravios.Extravios.Acao := Common.ENum.tacExcluir;
  Setupbuttons;
  if not FExtravios.ValidaEstorno() then Exit;
  if FExtravios.Extravios.Percentual > 0 then
  begin
    bFlagReembolso := (Application.MessageBox('Ressarcir débito efetuado?', 'Atenção', MB_YESNO + MB_ICONQUESTION) = IDYES);
  end;
  SetLength(pParam,2);
  pParam[0] := 'ENTREGADOR';
  pParam[1] := FExtravios.Extravios.Entregador;
  FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
  FDQuery := FEntregadores.Entregadores.Localizar(pParam);
  if not FDQuery.IsEmpty then
  begin
    iCadastro := FDQuery.FieldByName('COD_CADASTRO').AsInteger
  end;
  FDQuery.Free;
  sObs := FExtravios.Extravios.Obs;
  sObs := sObs + #13 + 'Estorno efetuado por ' + Global.Parametros.pNameUser + ' em  ' +
          FormatDateTime('dd/mm/yyyy hh:mm:ss', Now());
  FExtravios.Extravios.Restricao := 'E';
  FExtravios.Extravios.Obs := sObs;
  FExtravios.Extravios.Acao := Common.ENum.tacAlterar;
  if not FExtravios.Extravios.Gravar then
  begin
    Application.MessageBox('Erro ao gravar o estorno!', 'Erro', MB_OK + MB_ICONERROR);
    Exit;
  end;
  if bFlagReembolso then
  begin
    dValor := (FExtravios.Extravios.Total * (FExtravios.Extravios.Percentual / 100));
    // Gerar ressarcimento;
    FLancamento := TLancamentosControl.Create;
    if dValor > 0 then
    begin
      FLancamento.Lancamentos.Codigo := 0;
      FLancamento.Lancamentos.Descricao := 'Ressarcimento debito extravio/multa NN' + FExtravios.Extravios.NN;
      FLancamento.Lancamentos.Data := Now();
      FLancamento.Lancamentos.Cadastro := iCadastro;
      FLancamento.Lancamentos.Entregador := FExtravios.Extravios.Entregador;
      FLancamento.Lancamentos.Tipo := 'CREDITO';
      FLancamento.Lancamentos.Valor := dValor;
      FLancamento.Lancamentos.Desconto := 'N';
      FLancamento.Lancamentos.DataDesconto := 0;
      FLancamento.Lancamentos.Extrato := '';
      FLancamento.Lancamentos.Persistir := 'N';
      FLancamento.Lancamentos.Acao := Common.ENum.tacIncluir;
      dValor := 0;
      if not FLancamento.Gravar then
      begin
        Application.MessageBox('Erro ao gravar o lançamento de crédito!', 'Erro', MB_OK + MB_ICONERROR);
      end;
      sObs := sObs + #13 + 'Lançamento de crédido de R$ ' + FloatToStr(dValor);
      FLancamento.Free;
    end;
    Application.MessageBox('Estorno efetuado!', 'Atenção', MB_OK + MB_ICONINFORMATION);
    FExtravios.Extravios.Acao := Common.ENum.tacIndefinido;
    Setupbuttons;
    ClearFields;
    AccessField(False);
  end;
end;

procedure Tview_ExtraviosMultas.ExecutaFiltro(sFiltro: String);
var
  fdFiltro : TFDQuery;
  aParam : Array of Variant;
begin
  try
    SetLength(aParam, 2);
    aParam := ['FILTRO', sFiltro];
    fdFiltro := FExtravios.Localizar(aParam);
    if not fdFiltro.IsEmpty then
    begin
      PopulaPesquisa(fdFiltro);
    end
    else
    begin
      Application.MessageBox('Nenhum registro encontrado!', 'Atenção', MB_OK + MB_ICONWARNING);
    end;

    fdFiltro.Close
  finally
    fdFiltro.Free;
  end;
end;

procedure Tview_ExtraviosMultas.ExportarDados;
begin
  SaveDialog.Filter := '';
  SaveDialog.Filter := 'Excel (*.xls) |*.xls|XML (*.xml) |*.xml|Arquivo Texto (*.txt) |*.txt|Página Web (*.html)|*.html|Arquivo separado por virgulas (*.csv)|*.csv';
  SaveDialog.Title := 'Exportar Dados';
  SaveDialog.DefaultExt := 'xls';
  if SaveDialog.Execute then
  begin
    TUtils.ExportarDados(grdExtravios, SaveDialog.FileName);
  end;
end;

procedure Tview_ExtraviosMultas.Setupbuttons;
begin
  if FExtravios.Extravios.Acao = Common.ENum.tacIndefinido then
  begin
    actIncluir.Enabled := True;
    actEditar.Enabled := False;
    actEstornar.Enabled := False;
    actCancelar.Enabled := False;
    actPesquisar.Enabled := True;
    actFiltrar.Enabled := True;
    actFinalizar.Enabled := False;
    actFechar.Enabled := True;
    actGravar.Enabled := False;
    actDeclaracao.Enabled := False;
    actImportar.Enabled := True;
  end else if FExtravios.Extravios.Acao = Common.ENum.tacIncluir then
  begin
    actIncluir.Enabled := False;
    actEditar.Enabled := False;
    actEstornar.Enabled := False;
    actCancelar.Enabled := True;
    actPesquisar.Enabled := False;
    actFiltrar.Enabled := False;
    actFinalizar.Enabled := False;
    actFechar.Enabled := True;
    actGravar.Enabled := True;
    actDeclaracao.Enabled := False;
    actImportar.Enabled := False;
  end else if FExtravios.Extravios.Acao = Common.ENum.tacAlterar then
  begin
    actIncluir.Enabled := False;
    actEditar.Enabled := False;
    actEstornar.Enabled := False;
    actCancelar.Enabled := True;
    actPesquisar.Enabled := False;
    actFiltrar.Enabled := False;
    actFinalizar.Enabled := False;
    actFechar.Enabled := True;
    actGravar.Enabled := True;
    actDeclaracao.Enabled := False;
    actImportar.Enabled := False;
  end else if FExtravios.Extravios.Acao = Common.ENum.tacExcluir then
  begin
    actIncluir.Enabled := False;
    actEditar.Enabled := False;
    actEstornar.Enabled := False;
    actCancelar.Enabled := False;
    actPesquisar.Enabled := False;
    actFiltrar.Enabled := False;
    actFinalizar.Enabled := False;
    actFechar.Enabled := True;
    actGravar.Enabled := False;
    actDeclaracao.Enabled := False;
    actImportar.Enabled := False;
  end else if FExtravios.Extravios.Acao = Common.ENum.tacPesquisa then
  begin
    actIncluir.Enabled := True;
    actEditar.Enabled := True;
    actEstornar.Enabled := True;
    actCancelar.Enabled := True;
    actPesquisar.Enabled := True;
    actFiltrar.Enabled := True;
    actFinalizar.Enabled := not chkRestricao.Checked;
    actFechar.Enabled := True;
    actGravar.Enabled := False;
    actDeclaracao.Enabled := True;
    actImportar.Enabled := True;
  end;
end;

procedure Tview_ExtraviosMultas.SetupCampos;
var
  pParam: array of Variant;
  FDQuery : TFDQuery;
  iCadastro: Integer;
begin
  try

    FBases := TBasesControl.Create;
    FEntregadores := TEntregadoresExpressasControl.Create;
    FCadastro := TCadastroControl.Create;

    mskCodigo.EditValue := FExtravios.Extravios.ID;
    txtNossoNumero.Text := FExtravios.Extravios.NN;
    cboTipo.ItemIndex := FExtravios.Extravios.Tipo;
    cboMotivo.Text := FExtravios.Extravios.Descricao;
    datExtravio.Date := FExtravios.Extravios.Data;
    txtCodigoEntregador.EditValue := FExtravios.Extravios.Entregador;

    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    SetLength(pParam,2);
    pParam[0] := 'ENTREGADOR';
    pParam[1] := FExtravios.Extravios.Entregador;
    FDQuery := FEntregadores.Localizar(pParam);
    Finalize(pParam);
    iCadastro := 0;
    if not FDQuery.IsEmpty then
    begin
      txtNomeEntregador.Text := FDQuery.FieldByName('NOM_FANTASIA').AsString;
      sFantasia := FDQuery.FieldByName('NOM_FANTASIA').AsString;
      iCadastro := FDQuery.FieldByName('COD_CADASTRO').AsInteger;
    end;
    FDQuery.Free;

    SetLength(pParam,2);
    pParam[0] := 'CODIGO';
    pParam[1] := FExtravios.Extravios.Agente;
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    FDQuery := FBases.Localizar(pParam);
    Finalize(pParam);
    if not FDQuery.IsEmpty then
    begin
      sAgente := FDQuery.FieldByName('DES_RAZAO_SOCIAL').AsString;
    end
    else
    begin
      sAgente := 'NONE';
    end;
    FDQuery.Free;

    sEntregador := FCadastro.Cadastro.GetField('des_razao_social','cod_cadastro',iCadastro.toString);
    sCPF := 'CPF: ' + FCadastro.Cadastro.GetField('num_cnpj','cod_cadastro',iCadastro.toString);

    dblValorProduto.Value := FExtravios.Extravios.ValorProduto;
    dblMulta.Value := FExtravios.Extravios.Multa;
    dblVerba.Value := FExtravios.Extravios.Verba;
    dblTotalExtravio.Value := FExtravios.Extravios.ValorProduto + FExtravios.Extravios.Multa + FExtravios.Extravios.Verba;
    chkRestricao.EditValue := FExtravios.Extravios.Restricao;
    cboCorrespondencia.Text := FExtravios.Extravios.EnvioCorrespondencia;
    cboRetorno.Text := FExtravios.Extravios.RetornoCorrespondencia;
    memObservacoes.Text := FExtravios.Extravios.Obs;
    chkFranquia.EditValue := FExtravios.Extravios.Extrato;
    dVerbaFranquia := FExtravios.Extravios.VerbaFranquia;
    dblValorDebitado.Value := FExtravios.Extravios.ValorFranquia;
    if FExtravios.Extravios.DataFranquia > StrToDate('30/12/1899') then datDebitoFranquia.Date := FExtravios.Extravios.DataFranquia;
    pbPercentual.Position := FExtravios.Extravios.Percentual;
  finally
    FCadastro.Free;
    FBases.Free;
  end;
end;

procedure Tview_ExtraviosMultas.SetupClass;
var
  aParam : array of variant;
  FDQuery: TFDQuery;
begin
  FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
  FEntregadores := TEntregadoresExpressasControl.Create;
  if FExtravios.Extravios.Acao = Common.ENum.tacIncluir then
  begin
    FExtravios.Extravios.ID := FExtravios.GetId;
  end
  else
  begin
    FExtravios.Extravios.ID := mskCodigo.EditValue;
  end;
  FExtravios.Extravios.Descricao := cboMotivo.Text;
  FExtravios.Extravios.NN := txtNossoNumero.Text;
  FExtravios.Extravios.Entregador := txtCodigoEntregador.EditValue;
  SetLength(aParam,2);
  aParam[0] := 'ENTREGADOR';
  aParam[1]:= FExtravios.Extravios.Entregador;
  FDQuery := FEntregadores.Localizar(aParam);
  if not FDQuery.IsEmpty then
  begin
    FExtravios.Extravios.Agente := FDQuery.FieldByName('COD_AGENTE').AsInteger;
  end
  else
  begin
    FExtravios.Extravios.Agente := 1;
  end;
  Finalize(aParam);
  FExtravios.Extravios.ValorProduto := dblValorProduto.Value;
  FExtravios.Extravios.Data := datExtravio.Date;
  FExtravios.Extravios.Multa := dblMulta.Value;
  FExtravios.Extravios.Verba := dblVerba.Value;
  FExtravios.Extravios.Total := FExtravios.Extravios.ValorProduto + FExtravios.Extravios.Multa + FExtravios.Extravios.Verba;
  if chkRestricao.Checked then
  begin
    FExtravios.Extravios.Restricao := 'S';
  end
  else
  begin
    FExtravios.Extravios.Restricao := 'N';
  end;
  FExtravios.Extravios.Tipo := cboTipo.ItemIndex;
  FExtravios.Extravios.VerbaFranquia := dVerbaFranquia;
  FExtravios.Extravios.ValorFranquia := dblValorDebitado.Value;
  if chkFranquia.Checked then
  begin
    FExtravios.Extravios.Extrato := 'S';
  end
  else
  begin
    FExtravios.Extravios.Extrato := 'N';
  end;
  if datDebitoFranquia.Text <> '' then FExtravios.Extravios.DataFranquia := datDebitoFranquia.Date;
  FExtravios.Extravios.EnvioCorrespondencia := cboCorrespondencia.Text;
  FExtravios.Extravios.RetornoCorrespondencia := cboRetorno.Text;
  FExtravios.Extravios.Obs := memObservacoes.Text;
  FExtravios.Extravios.Percentual := pbPercentual.Position;
  FExtravios.Extravios.IDExtrato := iExtrato;
  FExtravios.Extravios.Executor := Global.Parametros.pUser_Name;
  FExtravios.Extravios.Manutencao := Now();
  FDQuery.Free;
  FEntregadores.Free;
end;

procedure Tview_ExtraviosMultas.SetupClassRestuladoPesquisa;
var
  aParam: array of Variant;
  FDQuery : TFDQuery;
begin
  try
    if mtbExtravios.IsEmpty then Exit;
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    SetLength(aParam,2);
    aParam[0] := 'CODIGO';
    aparam[1] := mtbExtraviosCOD_EXTRAVIO.AsString;
    FDQuery := FExtravios.Localizar(aParam);
    Finalize(aParam);
    if not FDQuery.IsEmpty then
    begin
      FExtravios.Extravios.ID := FDQuery.FieldByName('COD_EXTRAVIO').AsInteger;
      FExtravios.Extravios.Descricao := FDQuery.FieldByName('DES_EXTRAVIO').AsString;
      FExtravios.Extravios.NN := FDQuery.FieldByName('NUM_NOSSONUMERO').AsString;
      FExtravios.Extravios.Entregador := FDQuery.FieldByName('COD_ENTREGADOR').AsInteger;
      FExtravios.Extravios.Agente := FDQuery.FieldByName('COD_AGENTE').AsInteger;
      FExtravios.Extravios.ValorProduto := FDQuery.FieldByName('VAL_PRODUTO').AsFloat;
      FExtravios.Extravios.Data := FDQuery.FieldByName('DAT_EXTRAVIO').AsDateTime;
      FExtravios.Extravios.Multa := FDQuery.FieldByName('VAL_MULTA').AsFloat;
      FExtravios.Extravios.Verba := FDQuery.FieldByName('VAL_VERBA').AsFloat;
      FExtravios.Extravios.Total := FDQuery.FieldByName('VAL_TOTAL').AsFloat;
      FExtravios.Extravios.Restricao := FDQuery.FieldByName('DOM_RESTRICAO').AsString;
      FExtravios.Extravios.Tipo := FDQuery.FieldByName('COD_TIPO').AsInteger;
      FExtravios.Extravios.VerbaFranquia := FDQuery.FieldByName('VAL_VERBA_FRANQUIA').AsFloat;
      dVerbaFranquia := FExtravios.Extravios.VerbaFranquia;
      FExtravios.Extravios.ValorFranquia := FDQuery.FieldByName('VAL_EXTRATO_FRANQUIA').AsFloat;
      FExtravios.Extravios.Extrato := FDQuery.FieldByName('DOM_EXTRATO_FRANQUIA').AsString;
      FExtravios.Extravios.DataFranquia := FDQuery.FieldByName('DAT_EXTRAVIO_FRANQUIA').AsDateTime;
      FExtravios.Extravios.EnvioCorrespondencia := FDQuery.FieldByName('DES_ENVIO_CORRESPONDENCIA').AsString;
      FExtravios.Extravios.RetornoCorrespondencia := FDQuery.FieldByName('DES_RETORNO_CORRESPONDENCIA').AsString;
      FExtravios.Extravios.Obs := FDQuery.FieldByName('DES_OBSERVACOES').AsString;;
      FExtravios.Extravios.Percentual := FDQuery.FieldByName('VAL_PERCENTUAL_PAGO').AsFloat;
      FExtravios.Extravios.IDExtrato := FDQuery.FieldByName('ID_EXTRATO').AsInteger;
      FExtravios.Extravios.Sequencia := FDQuery.FieldByName('SEQ_ACAREACAO').AsInteger;
      FExtravios.Extravios.Executor := FDQuery.FieldByName('NOM_EXECUTOR').AsString;
      FExtravios.Extravios.Manutencao := FDQuery.FieldByName('DAT_MANUTENCAO').AsDateTime;
      FExtravios.Extravios.NumeroExtrato := FDQuery.FieldByName('NUM_EXTRATO').AsString;
    end;
    FDQuery.Close;
  finally
    FDQuery.Free;
  end;
end;

procedure Tview_ExtraviosMultas.SomaExtravio;
begin
  dblTotalExtravio.Value := dblValorProduto.Value + dblMulta.Value + dblVerba.Value;
end;

procedure Tview_ExtraviosMultas.tvExtraviosCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if mtbExtravios.IsEmpty then Exit;
  actSelecionarExecute(Sender);
end;

procedure Tview_ExtraviosMultas.tvExtraviosNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  case AButtonIndex of
    16: ExportarDados;
  end;
end;

procedure Tview_ExtraviosMultas.txtCodigoEntregadorPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  if DisplayValue = '' then DisplayValue := '0';
  if DisplayValue = '0' then Exit;
  txtNomeEntregador.Text :=  NomeEntregador(DisplayValue);
end;

procedure Tview_ExtraviosMultas.txtNossoNumeroPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  if DisplayValue = '' then Exit;
  DisplayValue := FormatFloat('0',StrToFloat(VarToStr(DisplayValue)));
  if cboTipo.Text = '' then
  begin
    Application.MessageBox('Informe o tipo (EXTRAVIO, SINISTRO OU MULTA) !', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  if FExtravios.Extravios.Acao = Common.ENum.tacIncluir then
  begin
    LocalizaEntrega(txtNossoNumero.Text, cboTipo.ItemIndex);
  end;
end;

procedure Tview_ExtraviosMultas.txtParametroEnter(Sender: TObject);
begin
  cxButton11.Default := True;
end;

procedure Tview_ExtraviosMultas.txtParametroExit(Sender: TObject);
begin
  cxButton11.Default := False;
end;

end.
