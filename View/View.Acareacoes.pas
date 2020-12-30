unit View.Acareacoes;

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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxClasses, dxLayoutContainer, dxLayoutControl, Control.Acareacao,
  Control.EntregadoresExpressas, Control.Sistema, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit,
  dxLayoutLookAndFeels, cxButtonEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxDropDownEdit, cxCalendar, cxCurrencyEdit, cxMemo,
  System.Actions, Vcl.ActnList, cxLabel, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxCheckBox, DAO.Conexao,
  Control.Bases, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, dxmdaset, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxBlobEdit, cxDBLookupComboBox, cxTimeEdit,
  Control.Entregas, Control.Clientes, FireDAC.Comp.Client, Control.ExtraviosMultas, frxClass, cxGridExportLink, ShellAPI, cxDBEdit,
  Data.SisGeF, Control.Acessos, Control.FilterData, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, Control.Cadastro, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  Tview_Acareacoes = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    mskCodigo: TcxMaskEdit;
    dxLayoutItem1: TdxLayoutItem;
    txtID: TcxTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    txtNN: TcxTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    edtCodigoEntregador: TcxButtonEdit;
    dxLayoutItem4: TdxLayoutItem;
    txtNomeEntregador: TcxTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    edtCodigoBase: TcxButtonEdit;
    dxLayoutItem6: TdxLayoutItem;
    txtNomeBase: TcxTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    datAcareacao: TcxDateEdit;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    cboMotivo: TcxComboBox;
    dxLayoutItem9: TdxLayoutItem;
    cboTratativa: TcxComboBox;
    dxLayoutItem10: TdxLayoutItem;
    cboApuracao: TcxComboBox;
    dxLayoutItem11: TdxLayoutItem;
    cboResultado: TcxComboBox;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    edtValorExtravio: TcxCurrencyEdit;
    dxLayoutItem13: TdxLayoutItem;
    edtValorMulta: TcxCurrencyEdit;
    dxLayoutItem14: TdxLayoutItem;
    cboEnvioCorrespondencia: TcxComboBox;
    dxLayoutItem15: TdxLayoutItem;
    cboRetornoCorrespondencia: TcxComboBox;
    dxLayoutItem16: TdxLayoutItem;
    memObs: TcxMemo;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    aclAcareacoes: TActionList;
    actIncluir: TAction;
    actEditar: TAction;
    actExcluir: TAction;
    actCancelar: TAction;
    actLocalizar: TAction;
    actFiltltrar: TAction;
    actExportar: TAction;
    actFinalizar: TAction;
    cxLabel1: TcxLabel;
    dxLayoutItem18: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem19: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxButton3: TcxButton;
    dxLayoutItem21: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutItem22: TdxLayoutItem;
    cxButton5: TcxButton;
    dxLayoutItem23: TdxLayoutItem;
    cxButton6: TcxButton;
    dxLayoutItem24: TdxLayoutItem;
    cxButton7: TcxButton;
    dxLayoutItem25: TdxLayoutItem;
    cxButton8: TcxButton;
    dxLayoutItem26: TdxLayoutItem;
    actFechar: TAction;
    actSalvar: TAction;
    cxButton9: TcxButton;
    dxLayoutItem27: TdxLayoutItem;
    actDeclaracao: TAction;
    cxButton10: TcxButton;
    dxLayoutItem28: TdxLayoutItem;
    chkStatus: TcxCheckBox;
    dxLayoutItem29: TdxLayoutItem;
    actPesquisaEntregador: TAction;
    actPesquisaBases: TAction;
    tvPesquisa: TcxGridDBTableView;
    lvPesquisa: TcxGridLevel;
    grdPesquisa: TcxGrid;
    dxLayoutItem30: TdxLayoutItem;
    dsPesquisa: TDataSource;
    mtbPesquisa: TdxMemData;
    txtParametro: TcxTextEdit;
    dxLayoutItem31: TdxLayoutItem;
    mtbPesquisaSEQ_ACAREACAO: TIntegerField;
    mtbPesquisaDAT_ACAREACAO: TDateTimeField;
    mtbPesquisaNUM_NOSSONUMERO: TStringField;
    mtbPesquisaCOD_ENTREGADOR: TIntegerField;
    mtbPesquisaCOD_BASE: TIntegerField;
    mtbPesquisaDES_MOTIVO: TStringField;
    mtbPesquisaDES_TRATATIVA: TStringField;
    mtbPesquisaDES_APURACAO: TStringField;
    mtbPesquisaDES_RESULTADO: TStringField;
    mtbPesquisaVAL_EXTRAVIO: TCurrencyField;
    mtbPesquisaVAL_MULTA: TCurrencyField;
    mtbPesquisaDES_ENVIO_CORRESPONDENCIA: TStringField;
    mtbPesquisaDES_RETORNO_CORRESPONDENCIA: TStringField;
    mtbPesquisaDES_OBSERVACOES: TMemoField;
    mtbPesquisaDOM_FINALIZAR: TBooleanField;
    mtbPesquisaDES_EXECUTOR: TStringField;
    mtbPesquisaDAT_MANUTENCAO: TDateTimeField;
    tvPesquisaRecId: TcxGridDBColumn;
    tvPesquisaSEQ_ACAREACAO: TcxGridDBColumn;
    tvPesquisaID_ACAREACAO: TcxGridDBColumn;
    tvPesquisaDAT_ACAREACAO: TcxGridDBColumn;
    tvPesquisaNUM_NOSSONUMERO: TcxGridDBColumn;
    tvPesquisaCOD_ENTREGADOR: TcxGridDBColumn;
    tvPesquisaCOD_BASE: TcxGridDBColumn;
    tvPesquisaDES_MOTIVO: TcxGridDBColumn;
    tvPesquisaDES_TRATATIVA: TcxGridDBColumn;
    tvPesquisaDES_APURACAO: TcxGridDBColumn;
    tvPesquisaDES_RESULTADO: TcxGridDBColumn;
    tvPesquisaVAL_EXTRAVIO: TcxGridDBColumn;
    tvPesquisaVAL_MULTA: TcxGridDBColumn;
    tvPesquisaDES_ENVIO_CORRESPONDENCIA: TcxGridDBColumn;
    tvPesquisaDES_RETORNO_CORRESPONDENCIA: TcxGridDBColumn;
    tvPesquisaDES_OBSERVACOES: TcxGridDBColumn;
    tvPesquisaDOM_FINALIZAR: TcxGridDBColumn;
    tvPesquisaDES_EXECUTOR: TcxGridDBColumn;
    tvPesquisaDAT_MANUTENCAO: TcxGridDBColumn;
    dxLayoutGroup7: TdxLayoutGroup;
    tvPesquisaNOM_ENTREGADOR: TcxGridDBColumn;
    tvPesquisaNOM_BASE: TcxGridDBColumn;
    actRetornar: TAction;
    actSelecionar: TAction;
    cxButton11: TcxButton;
    dxLayoutItem32: TdxLayoutItem;
    cxButton12: TcxButton;
    dxLayoutItem33: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    mtbEntregadores: TdxMemData;
    mtbBase: TdxMemData;
    dsEntregadores: TDataSource;
    dsBase: TDataSource;
    cxButton13: TcxButton;
    dxLayoutItem34: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    actPesquisarAcareacoes: TAction;
    mtbPesquisaID_ACAREACAO: TStringField;
    dxLayoutGroup8: TdxLayoutGroup;
    txtConsumidor: TcxTextEdit;
    dxLayoutItem35: TdxLayoutItem;
    txtNomeCliente: TcxTextEdit;
    dxLayoutItem37: TdxLayoutItem;
    txtPedido: TcxTextEdit;
    dxLayoutItem38: TdxLayoutItem;
    frxDeclaracao: TfrxReport;
    SaveDialog: TSaveDialog;
    datEntrega: TcxDateEdit;
    dxLayoutItem36: TdxLayoutItem;
    mtbPesquisaDAT_ENTREGA: TDateField;
    tvPesquisaDAT_ENTREGA: TcxGridDBColumn;
    datRetorno: TcxDateEdit;
    dxLayoutItem39: TdxLayoutItem;
    cboUnidade: TcxComboBox;
    dxLayoutItem40: TdxLayoutItem;
    mtbPesquisaDAT_RETORNO: TDateField;
    mtbPesquisaDES_UNIDADE: TStringField;
    mtbPesquisaNOM_CONSUMIDOR: TStringField;
    mtbPesquisaDES_ENDERECO: TStringField;
    mtbPesquisaNUM_ENDERECO: TStringField;
    mtbPesquisaDES_BAIRRO: TStringField;
    mtbPesquisaDES_CIDADE: TStringField;
    mtbPesquisaNUM_CEP: TStringField;
    mtbPesquisaDES_REMETENTE: TStringField;
    mtbPesquisaDES_PRODUTO: TStringField;
    mtbPesquisaNOM_RECEBEDOR: TStringField;
    mtbPesquisaDES_IDENTIFICACAO: TStringField;
    mtbPesquisaDES_DOCUMENTO: TStringField;
    textQuery: TcxTextEdit;
    layoutFilterText: TdxLayoutItem;
    memTableAcareacoes: TFDMemTable;
    memTableAcareacoesseq_acareacao: TIntegerField;
    memTableAcareacoesid_acareacao: TStringField;
    memTableAcareacoesdat_acareacao: TDateTimeField;
    memTableAcareacoesnum_nossonumero: TStringField;
    memTableAcareacoescod_entregador: TIntegerField;
    memTableAcareacoescod_base: TIntegerField;
    memTableAcareacoesdat_entrega: TDateField;
    memTableAcareacoesdes_motivo: TStringField;
    memTableAcareacoesdes_tratativa: TStringField;
    memTableAcareacoesdes_apuracao: TStringField;
    memTableAcareacoesdes_resultado: TStringField;
    memTableAcareacoesval_extravio: TFloatField;
    memTableAcareacoesval_multa: TFloatField;
    memTableAcareacoesdes_envio_correspondencia: TStringField;
    memTableAcareacoesdes_retorno_correspondencia: TStringField;
    memTableAcareacoesdes_observacoes: TMemoField;
    memTableAcareacoesdom_finalizar: TSmallintField;
    memTableAcareacoesdes_executor: TStringField;
    memTableAcareacoesdat_manutencao: TDateTimeField;
    memTableAcareacoesdat_retorno: TDateTimeField;
    memTableAcareacoesdes_unidade: TStringField;
    memTableAcareacoesnom_consumidor: TStringField;
    memTableAcareacoesdes_endereco: TStringField;
    memTableAcareacoesnum_endereco: TStringField;
    memTableAcareacoesdes_bairro: TStringField;
    memTableAcareacoesdes_cidade: TStringField;
    memTableAcareacoesnum_cep: TStringField;
    memTableAcareacoesdes_remetente: TStringField;
    memTableAcareacoesdes_produto: TStringField;
    des_identificacao: TStringField;
    memTableAcareacoesdes_identificacao: TStringField;
    memTableAcareacoesdes_documento: TStringField;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    textEditEndereco: TcxTextEdit;
    dxLayoutItem41: TdxLayoutItem;
    textEditNumero: TcxTextEdit;
    dxLayoutItem42: TdxLayoutItem;
    textEditBairro: TcxTextEdit;
    dxLayoutItem43: TdxLayoutItem;
    textEditCidade: TcxTextEdit;
    dxLayoutItem44: TdxLayoutItem;
    maskEditCEP: TcxMaskEdit;
    dxLayoutItem45: TdxLayoutItem;
    textEditRemetente: TcxTextEdit;
    dxLayoutItem46: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    textEditProduto: TcxTextEdit;
    dxLayoutItem47: TdxLayoutItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    textEditRecebedor: TcxTextEdit;
    dxLayoutItem48: TdxLayoutItem;
    textEditIdentificacao: TcxTextEdit;
    dxLayoutItem49: TdxLayoutItem;
    textEditDocumento: TcxTextEdit;
    dxLayoutItem50: TdxLayoutItem;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    procedure actFecharExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chkStatusPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPesquisaEntregadorExecute(Sender: TObject);
    procedure actIncluirExecute(Sender: TObject);
    procedure actPesquisaBasesExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actFinalizarExecute(Sender: TObject);
    procedure actLocalizarExecute(Sender: TObject);
    procedure actRetornarExecute(Sender: TObject);
    procedure actPesquisarAcareacoesExecute(Sender: TObject);
    procedure txtParametroEnter(Sender: TObject);
    procedure txtParametroExit(Sender: TObject);
    procedure grdPesquisaEnter(Sender: TObject);
    procedure grdPesquisaExit(Sender: TObject);
    procedure actSelecionarExecute(Sender: TObject);
    procedure tvPesquisaCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
      AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure txtNNPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure actDeclaracaoExecute(Sender: TObject);
    procedure actFiltltrarExecute(Sender: TObject);
    procedure tvPesquisaNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure aclAcareacoesExecute(Action: TBasicAction; var Handled: Boolean);
    procedure cboUnidadePropertiesChange(Sender: TObject);
    procedure edtCodigoEntregadorPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure edtCodigoBasePropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);

  private
    { Private declarations }
    FAcareacao : TAcareacaoControl;
    FBase : TBasesControl;
    FEntregadores : TEntregadoresExpressasControl;
    FEntregas : TEntregasControl;
    FClientes : TClientesControl;
    FExtravio: TExtraviosMultasControl;
    FAcessos : TAcessosControl;
    procedure StatusButton();
    procedure ClearFields();
    procedure AccessField(bFlag: Boolean);
    procedure LocalizarEntregadores();
    procedure LocalizarBases();
    procedure SetupAcareacoes();
    procedure PopulaCampos();
    function NomeBase(iCodigo: Integer): String;
    procedure NomeEntregador(iCodigo: Integer);
    procedure PopulaEntregadores();
    procedure PopulaBase();
    procedure LocalizarAcareacoes();
    procedure LocalizaAcareacao();
    procedure DadosEntrega(sNN: String);
    procedure Filtro;
    procedure PopulaPesquisa(FDQuery: TFDQuery);
    procedure GeraExtravio();
    procedure Declaracao();
    procedure Exportar();
    procedure ExecutarFiltro(sFiltro: String);
    procedure DeclaracaoDirect;
  public
    { Public declarations }
  end;

var
  view_Acareacoes: Tview_Acareacoes;
  dtDataBaixa: TDate;

implementation

{$R *.dfm}

uses Common.Utils, Global.Parametros, Common.ENum, View.PesquisarPessoas, View.Impressao, View.FilterData;

procedure Tview_Acareacoes.AccessField(bFlag: Boolean);
begin
  txtID.Properties.ReadOnly := not bFlag;
  if FAcareacao.Acareacoes.Acao <> Common.ENum.tacAlterar then txtNN.Properties.ReadOnly := not bFlag;
  datAcareacao.Properties.ReadOnly := not bFlag;
  edtCodigoEntregador.Properties.ReadOnly := not bFlag;
  edtCodigoBase.Properties.ReadOnly := not bFlag;
  datEntrega.Properties.ReadOnly := not bFlag;
  cboMotivo.Properties.ReadOnly := not bFlag;
  cboTratativa.Properties.ReadOnly := not bFlag;
  cboApuracao.Properties.ReadOnly := not bFlag;
  cboResultado.Properties.ReadOnly := not bFlag;
  edtValorExtravio.Properties.ReadOnly := not bFlag;
  edtValorMulta.Properties.ReadOnly := not bFlag;
  cboEnvioCorrespondencia.Properties.ReadOnly := not bFlag;
  cboRetornoCorrespondencia.Properties.ReadOnly := not bFlag;
  memObs.Properties.ReadOnly := not bFlag;
  datRetorno.Properties.ReadOnly := not bFlag;
  cboUnidade.Properties.ReadOnly := not bFlag;
  txtConsumidor.Properties.ReadOnly := not bFlag;
  txtNomeCliente.Properties.ReadOnly := not bFlag;
  datEntrega.Properties.ReadOnly := not bFlag;
  txtPedido.Properties.ReadOnly := not bFlag;
  textEditEndereco.Properties.ReadOnly := not bFlag;
  textEditNumero.Properties.ReadOnly := not bFlag;
  textEditBairro.Properties.ReadOnly := not bFlag;
  textEditCidade.Properties.ReadOnly := not bFlag;
  maskEditCEP.Properties.ReadOnly := not bFlag;
  textEditRemetente.Properties.ReadOnly := not bFlag;
  textEditProduto.Properties.ReadOnly := not bFlag;
  textEditRecebedor.Properties.ReadOnly := not bFlag;
  textEditIdentificacao.Properties.ReadOnly := not bFlag;
  textEditDocumento.Properties.ReadOnly := not bFlag;
end;

procedure Tview_Acareacoes.aclAcareacoesExecute(Action: TBasicAction; var Handled: Boolean);
begin
  Facessos.Acessos.Administrador := Global.Parametros.pAdmin;
  if not FAcessos.VerificaLogin(Action.Tag, Global.Parametros.pUser_ID) then
  begin
    Application.MessageBox('Usuário sem permissão à esta função!', 'Atenção', MB_OK + MB_ICONHAND);
    Handled := True;
    Exit;
  end;
end;

procedure Tview_Acareacoes.actCancelarExecute(Sender: TObject);
begin
  if Application.MessageBox('Confirma cancelar a operação?','Cancelar', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;
  FAcareacao.Acareacoes.Acao := Common.ENum.tacIndefinido;
  StatusButton;
  ClearFields;
  AccessField(False);
end;

procedure Tview_Acareacoes.actDeclaracaoExecute(Sender: TObject);
begin
  if cboUnidade.ItemIndex = 1 then
  begin
    Declaracao;
  end
  else if (cboUnidade.ItemIndex = 2) or (cboUnidade.ItemIndex = 3) then
  begin
    DeclaracaoDirect;
  end;
end;

procedure Tview_Acareacoes.actEditarExecute(Sender: TObject);
begin
  FAcareacao.Acareacoes.Acao := Common.ENum.tacAlterar;
  StatusButton;
  AccessField(True);
end;

procedure Tview_Acareacoes.actExcluirExecute(Sender: TObject);
begin
  if Application.MessageBox('Confirma excluir esta acareação?', 'Excluir', MB_YESNO + MB_ICONQUESTION) = ID_NO then Exit;
  SetupAcareacoes;
  FAcareacao.Acareacoes.Acao := Common.ENum.tacExcluir;
  StatusButton;
  if not FAcareacao.Gravar then
  begin
    FAcareacao.Acareacoes.Acao := Common.ENum.tacPesquisa;
    StatusButton;
    Exit;
  end;
  FAcareacao.Acareacoes.Acao := Common.ENum.tacIndefinido;
  StatusButton;
  ClearFields;
  AccessField(False);
end;

procedure Tview_Acareacoes.actFecharExecute(Sender: TObject);
begin
  Perform(WM_CLOSE, 0, 0);
end;

procedure Tview_Acareacoes.actFiltltrarExecute(Sender: TObject);
begin
  Filtro;
end;

procedure Tview_Acareacoes.actFinalizarExecute(Sender: TObject);
begin
  if Application.MessageBox('Confirma finalizar esta acareação?', 'Finalizar', MB_YESNO + MB_ICONQUESTION) = ID_NO then Exit;
  SetupAcareacoes;
  if not FAcareacao.ValidaFinalizar() then Exit;
  FAcareacao.Acareacoes.Finalizar := True;
  FAcareacao.Acareacoes.Acao := Common.ENum.tacAlterar;
  if FAcareacao.Gravar then
  begin
    if Copy(FAcareacao.Acareacoes.Resultado,1,2) <> '01' then GeraExtravio();
    Application.MessageBox('Acareação Finalizada!', 'Finalizar', MB_OK + MB_ICONINFORMATION);
    FAcareacao.Acareacoes.Acao := Common.ENum.tacIndefinido;
    StatusButton;
    AccessField(False);
    ClearFields;
  end;
end;

procedure Tview_Acareacoes.actIncluirExecute(Sender: TObject);
begin
  FAcareacao.Acareacoes.Acao := Common.ENum.tacIncluir;
  StatusButton;
  ClearFields;
  datAcareacao.Date := Now();
  AccessField(True);
  txtID.SetFocus;
end;

procedure Tview_Acareacoes.actLocalizarExecute(Sender: TObject);
begin
  dxLayoutGroup2.MakeVisible;
  txtParametro.SetFocus;
end;

procedure Tview_Acareacoes.actPesquisaBasesExecute(Sender: TObject);
begin
  if edtCodigoBase.Properties.ReadOnly then Exit;
  LocalizarBases;
end;

procedure Tview_Acareacoes.actPesquisaEntregadorExecute(Sender: TObject);
begin
  if edtCodigoEntregador.Properties.ReadOnly then Exit;
  LocalizarEntregadores;
end;

procedure Tview_Acareacoes.actPesquisarAcareacoesExecute(Sender: TObject);
begin
  LocalizarAcareacoes();
end;

procedure Tview_Acareacoes.actRetornarExecute(Sender: TObject);
begin
  dxLayoutGroup1.MakeVisible;
end;

procedure Tview_Acareacoes.actSalvarExecute(Sender: TObject);
begin
  SetupAcareacoes;
  if Application.MessageBox('Confirma salvar os dados?', 'Salvar', MB_YESNO + MB_ICONQUESTION) = ID_NO then Exit;
  if FAcareacao.Gravar then
  begin
    Application.MessageBox('Dados gravados com sucesso!', 'Salvar', MB_OK + MB_ICONINFORMATION);
    FAcareacao.Acareacoes.Acao := Common.ENum.tacPesquisa;
    StatusButton;
    AccessField(False);
  end;
end;

procedure Tview_Acareacoes.actSelecionarExecute(Sender: TObject);
begin
  LocalizaAcareacao();
end;

procedure Tview_Acareacoes.cboUnidadePropertiesChange(Sender: TObject);
begin
  if cboUnidade.ItemIndex = 1 then
  begin
    dxLayoutGroup9.Visible := False;
  end
  else if (cboUnidade.ItemIndex = 2) or (cboUnidade.ItemIndex = 3) then
  begin
    dxLayoutGroup9.Visible := True;
  end;
end;

procedure Tview_Acareacoes.chkStatusPropertiesChange(Sender: TObject);
begin
  if chkStatus.Checked then
  begin
    chkStatus.Caption := 'FINALIZADA';
  end
  else
  begin
    chkStatus.Caption := 'ABERTA';
  end;

end;

procedure Tview_Acareacoes.ClearFields;
begin
  mskCodigo.Text := '0';
  txtID.Clear;
  txtNN.Clear;
  datAcareacao.Clear;
  datRetorno.Clear;
  edtCodigoEntregador.Text := '0';
  txtNomeEntregador.Clear;
  edtCodigoBase.Text := '0';
  txtNomeBase.Clear;
  cboUnidade.ItemIndex := 0;
  txtConsumidor.Clear;
  txtNomeCliente.Clear;
  txtPedido.Clear;
  datEntrega.Clear;
  cboMotivo.ItemIndex := -1;
  cboTratativa.ItemIndex := -1;
  cboApuracao.ItemIndex := -1;
  cboResultado.ItemIndex := -1;
  edtValorExtravio.Value := 0;
  edtValorMulta.Value := 0;
  cboEnvioCorrespondencia.ItemIndex := -1;
  cboRetornoCorrespondencia.ItemIndex := -1;
  chkStatus.Checked := False;
  textEditEndereco.Clear;
  textEditNumero.Clear;
  textEditBairro.Clear;
  textEditCidade.Clear;
  maskEditCEP.Clear;
  textEditRemetente.Clear;
  textEditProduto.Clear;
  textEditRecebedor.Clear;
  textEditIdentificacao.Clear;
  textEditDocumento.Clear;
  memObs.Clear;
  dtDataBaixa := 0;
end;

procedure Tview_Acareacoes.DadosEntrega(sNN: String);
var
  aParam: array of Variant;
  FDQuery : TFDQuery;
  sConsumidor: String;
  sCliente: String;
  sPedido: String;
  iCliente: Integer;
  iClienteEmpresa: Integer;
  iAgente: Integer;
  iEntregador: Integer;
  dValor: Double;
  dVerbaFranquia: Double;
  sEndereco: String;
  sBairro: String;
  sCidade: String;
  sCEP: String;
begin
  try
    FEntregas := TEntregasControl.Create;
    FClientes := TClientesControl.Create;
    sConsumidor := '';
    sCliente := '';
    sPedido := '';
    sEndereco := '';
    sBairro := '';
    sCidade := '';
    sCEP := '';
    iCliente := 0;
    iClienteEmpresa := 0;
    dValor := 0;
    dVerbaFranquia := 0;
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    SetLength(aParam,2);
    aParam[0] := 'NN';
    aParam[1] := sNN;
    FDQuery := FEntregas.Localizar(aParam);
    Finalize(aParam);
    if not FDQuery.IsEmpty then
    begin
      sConsumidor := FDQuery.FieldByName('NOM_CONSUMIDOR').AsString;
      sPedido := FDQuery.FieldByName('NUM_PEDIDO').AsString;
      iCliente := FDQuery.FieldByName('COD_CLIENTE').AsInteger;
      iclienteEmpresa := FDQuery.FieldByName('COD_CLIENTE_EMPRESA').AsInteger;
      iAgente := FDQuery.FieldByName('COD_AGENTE').AsInteger;
      iEntregador := FDQuery.FieldByName('COD_ENTREGADOR').AsInteger;
      dVerbaFranquia := FDQuery.FieldByName('VAL_VERBA_FRANQUIA').AsFloat;
      sEndereco := FDQuery.FieldByName('DES_ENDERECO').AsString;
      sBairro := FDQuery.FieldByName('DES_BAIRRO').AsString;
      sCidade := FDQuery.FieldByName('NOM_CIDADE').AsString;
      sCEP := FDQuery.FieldByName('NUM_CEP').AsString;
      if FAcareacao.Acareacoes.Acao = Common.ENum.tacIncluir then
      begin
        dtDataBaixa := FDQuery.FieldByName('DAT_BAIXA').AsDateTime;
      end
      else
      begin
        dtDataBaixa := FAcareacao.Acareacoes.DataEntrega;
      end;
      dValor := FDQuery.FieldByName('VAL_PRODUTO').AsFloat;
    end;
    if sConsumidor.IsEmpty then sConsumidor := '';
    if sPedido.IsEmpty then sPedido := '0';
    FDQuery.Close;
    SetLength(aParam,3);
    aParam[0] := 'CODIGO';
    aParam[1] := iClienteEmpresa;
    aParam[2] := iCliente;
    FDQuery := FClientes.Localizar(aParam);
    Finalize(aParam);
    if not FDQuery.IsEmpty then
    begin
      sCliente := FDQuery.FieldByName('COD_CLIENTE').AsString + ' - ' + FDQuery.FieldByName('NOM_CLIENTE').AsString;
    end;
    FDQuery.Close;
    if sCliente.IsEmpty then sCliente := '';
    txtConsumidor.Text := sConsumidor;
    txtNomeCliente.Text := sCliente;
    txtPedido.Text := sPedido;
    edtCodigoBase.EditValue := iAgente;
    edtCodigoEntregador.EditValue := iEntregador;
    textEditEndereco.Text := sEndereco;
    textEditNumero.Text := '';
    textEditBairro.Text := sBairro;
    textEditCidade.Text := sCidade;
    maskEditCEP.EditValue := sCEP;
    if FAcareacao.Acareacoes.Acao = Common.ENum.tacIncluir then
    begin
      datEntrega.Date := dtDataBaixa;
    end;
    edtValorExtravio.Value := dValor;
  finally

    FEntregas.Free;
    FClientes.Free;
    FDQuery.Free;
  end;
end;

procedure Tview_Acareacoes.Declaracao;
var
  sImpressao: String;
  sData : String;
  sTitulo: String;
  sResultado : String;
  sPedido: String;
  sEmbalagem: String;
  sConsumidor: String;
  sCliente: String;
  sNN: String;
begin
  sResultado := '';
  sPedido := '';
  sConsumidor := '';
  sCliente := '';
  sNN := '';
  sEmbalagem := '';
  if (DateTimeToStr(datEntrega.Date).IsEmpty) or (datEntrega.Date = 0) then
  begin
    Application.MessageBox('Verifique a data da entrega.', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  with frxDeclaracao do begin
    if not Assigned(view_Impressao) then begin
      view_Impressao := Tview_Impressao.Create(Application);
    end;
    view_Impressao.cxLabel1.Caption := 'DECLARAÇÃO';
    view_Impressao.cxArquivo.Text := ExtractFilePath(Application.ExeName) + 'Reports\frxDeclaracaoAcareacaoExpressas.fr3';
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
    sData := FormatDateTime('dddd, dd " de " mmmm " de " yyyy ', Now);
    sTitulo := 'ENTREGA EXPRESSA';
    if FAcareacao.Acareacoes.Motivo = 'ITEM FALTANTE' then
    begin
      sTitulo := 'Falta de Item/ Volume';
      sEmbalagem := 'O consumidor possui a embalagem original do produto? (    ) Sim  (    ) Não';
    end;
    sPedido := Trim(txtPedido.Text);
    sConsumidor := Trim(txtConsumidor.Text);
    sCliente := Trim(txtNomeCliente.Text);
    sNN := FAcareacao.Acareacoes.Nossonumero;
    while (sPedido.IsEmpty) or (sPedido = '0') do
    begin
      sPedido := InputBox('Pedido', 'Informe o número do Pedido','');
      if (sPedido.IsEmpty) or (sPedido = '0') then
      begin
        Application.MessageBox('Iforme o número do pedido!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
      end;
    end;
    while sConsumidor.IsEmpty do
    begin
      sConsumidor := InputBox('Consumidor', 'Informe o nome do Consumidor','');
      if sConsumidor.IsEmpty then
      begin
        Application.MessageBox('Iforme o nome do consumidor!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
      end;
    end;
    while sCliente.IsEmpty do
    begin
      sCliente := InputBox('Cliente', 'Informe o código e o nome do Clente','');
      if sCliente.IsEmpty then
      begin
        Application.MessageBox('Iforme o código e o nome do Cliente!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
      end;
    end;
    Variables.Items[Variables.IndexOf('vTitulo')].Value :=  QuotedStr(sTitulo);
    Variables.Items[Variables.IndexOf('vPedido')].Value :=  QuotedStr(sPedido);
    Variables.Items[Variables.IndexOf('vData')].Value :=  QuotedStr(DateToStr(datEntrega.Date));
    Variables.Items[Variables.IndexOf('vEmbalagem')].Value :=  QuotedStr(sEmbalagem);
    Variables.Items[Variables.IndexOf('vConsumidor')].Value :=  QuotedStr(sConsumidor);
    Variables.Items[Variables.IndexOf('vCliente')].Value :=  QuotedStr(sCliente);
    Variables.Items[Variables.IndexOf('vNN')].Value :=  QuotedStr(sNN);

    if (not view_Impressao.bFlagImprimir) then
    begin
      ShowReport(True);
    end
    else
    begin
      PrepareReport;
      Print;
    end;
  end;
  FreeAndNil(view_Impressao);
end;

procedure Tview_Acareacoes.DeclaracaoDirect;
var
  sEntregador: String;
  cadastro: TCadastroControl;
  iEntregador: Integer;
  iCadastro: Integer;
begin
  if (DateTimeToStr(datEntrega.Date).IsEmpty) or (datEntrega.Date = 0) then
  begin
    Application.MessageBox('Verifique a data da entrega.', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  iEntregador := StrToIntDef(edtCodigoEntregador.Text,0);
  if iEntregador > 0 then
  begin
    iCadastro := StrToIntDef(FEntregadores.GetField('COD_CADASTRO','COD_ENTREGADOR', ientregador.ToString),0);
    cadastro := TCadastroControl.Create;
    if iCadastro > 0 then
    begin
      sEntregador := cadastro.GetField('DES_RAZAO_SOCIAL','COD_CADASTRO',iCadastro.ToString);
      if sEntregador.IsEmpty then sEntregador := txtNomeEntregador.Text;
    end
    else
    begin
      sEntregador := txtNomeEntregador.Text;
    end;
    cadastro.Free;
  end
  else
  begin
    sEntregador := txtNomeEntregador.Text;
  end;

  with frxDeclaracao do begin
    if not Assigned(view_Impressao) then begin
      view_Impressao := Tview_Impressao.Create(Application);
    end;
    view_Impressao.cxLabel1.Caption := 'DECLARAÇÃO';
    view_Impressao.cxArquivo.Text := ExtractFilePath(Application.ExeName) + 'Reports\frxDeclaracaoAcareacaoExpressasDirect.fr3';
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

    Variables.Items[Variables.IndexOf('vUnidade')].Value :=  QuotedStr(cboUnidade.Text);
    Variables.Items[Variables.IndexOf('vSolicitacao')].Value :=  QuotedStr(datAcareacao.Text);
    Variables.Items[Variables.IndexOf('vRetorno')].Value :=  QuotedStr(datRetorno.Text);
    Variables.Items[Variables.IndexOf('vMotorista')].Value :=  QuotedStr(sEntregador);
    Variables.Items[Variables.IndexOf('vRemessa')].Value :=  QuotedStr(txtNN.Text);
    Variables.Items[Variables.IndexOf('vCliente')].Value :=  QuotedStr(txtNomeCliente.Text);
    Variables.Items[Variables.IndexOf('vEndereco')].Value :=  QuotedStr(textEditEndereco.Text);
    Variables.Items[Variables.IndexOf('vNumero')].Value :=  QuotedStr(textEditNumero.Text);
    Variables.Items[Variables.IndexOf('vBairro')].Value :=  QuotedStr(textEditBairro.Text);
    Variables.Items[Variables.IndexOf('vCidade')].Value :=  QuotedStr(textEditCidade.Text);
    Variables.Items[Variables.IndexOf('vCEP')].Value :=  QuotedStr(maskEditCEP.Text);
    Variables.Items[Variables.IndexOf('vInformacao')].Value :=  QuotedStr(memObs.Text);
    Variables.Items[Variables.IndexOf('vProduto')].Value :=  QuotedStr(textEditProduto.Text);
    Variables.Items[Variables.IndexOf('vEntrega')].Value :=  QuotedStr(datEntrega.Text);
    Variables.Items[Variables.IndexOf('vRecebedor')].Value :=  QuotedStr(textEditRecebedor.Text);
    Variables.Items[Variables.IndexOf('vIdentificacao')].Value :=  QuotedStr(textEditIdentificacao.Text);
    Variables.Items[Variables.IndexOf('vDocumento')].Value :=  QuotedStr(textEditDocumento.Text);
    Variables.Items[Variables.IndexOf('vChamado')].Value :=  QuotedStr(txtID.Text);
    Variables.Items[Variables.IndexOf('vRemetente')].Value :=  QuotedStr(textEditRemetente.Text);


    if (not view_Impressao.bFlagImprimir) then
    begin
      ShowReport(True);
    end
    else
    begin
      PrepareReport;
      Print;
    end;
  end;
  FreeAndNil(view_Impressao);
end;

procedure Tview_Acareacoes.edtCodigoBasePropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  if DisplayValue = '' then DisplayValue := '0';
  if DisplayValue = '0' then Exit;
  txtNomeBase.Text := NomeBase(DisplayValue);
end;

procedure Tview_Acareacoes.edtCodigoEntregadorPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  if DisplayValue = '' then DisplayValue := '0';
  if DisplayValue = '0' then Exit;
  NomeEntregador(DisplayValue);
end;

procedure Tview_Acareacoes.ExecutarFiltro(sFiltro: String);
var
  fdFiltro : TFDQuery;
  aParam : Array of Variant;
begin
  try
    SetLength(aParam, 2);
    aParam := ['FILTRO', sFiltro];
    fdFiltro := FAcareacao.Localizar(aParam);
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
  end;end;

procedure Tview_Acareacoes.Exportar;
begin
  SaveDialog.Filter := '';
  SaveDialog.Filter := 'Excel (*.xls) |*.xls|XML (*.xml) |*.xml|Arquivo Texto (*.txt) |*.txt|Página Web (*.html)|*.html';
  SaveDialog.Title := 'Exportar Dados';
  SaveDialog.DefaultExt := 'xls';
  if SaveDialog.Execute then
  begin
    TUtils.ExportarDados(grdPesquisa, SaveDialog.FileName);
  end;
end;

procedure Tview_Acareacoes.Filtro;
var
  i: Integer;
  filtro : TFilterDataControl;
begin
  try
    filtro := TFilterDataControl.Create;
    textQuery.Text := '';
    if not Assigned(view_FilterData) then
    begin
      view_FilterData := Tview_FilterData.Create(Application);
    end;
    view_FilterData.mtbPesquisa := memTableAcareacoes;
    view_FilterData.filtro := filtro;
    if view_FilterData.ShowModal = mrOk then
    begin
      layoutFilterText.Visible := True;
      for i := 0 to Pred(filtro.Filtro.Params.Count) do
      begin
        textQuery.Text := textQuery.Text + ' ' + filtro.Filtro.Params[i];
      end;
      textQuery.Text := filtro.Filtro.TextFilter;
    end
    else
    begin
      textQuery.Clear;
      layoutFilterText.Visible := False;
    end;
    FreeAndNil(view_FilterData);
    if not filtro.Filtro.TextFilter.IsEmpty then
    begin
      ExecutarFiltro(filtro.Filtro.TextFilter);
      dxLayoutGroup2.MakeVisible;
    end;
  finally
    filtro.Free;
  end;
end;

procedure Tview_Acareacoes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FAcareacao.Acareacoes.Free;
  FBase.Free;
  FEntregadores.Free;
  Facessos.Free;
  mtbPesquisa.Close;
  Action := caFree;
  view_Acareacoes := nil;
end;

procedure Tview_Acareacoes.FormCreate(Sender: TObject);
begin
  TSistemaControl.GetInstance();
  FAcareacao := TAcareacaoControl.Create;
  FBase := TBasesControl.Create;
  FEntregadores := TEntregadoresExpressasControl.Create;
  FAcareacao.Acareacoes.Acao := Common.ENum.tacIndefinido;
  fAcessos := TAcessosControl.Create;
  dtDataBaixa := 0;
end;

procedure Tview_Acareacoes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  begin
    Key := #0;
    if memObs.IsFocused then Exit;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;
end;

procedure Tview_Acareacoes.FormShow(Sender: TObject);
begin
  StatusButton;
  AccessField(False);
  PopulaBase;
  PopulaEntregadores;
end;

procedure Tview_Acareacoes.GeraExtravio;
var
  iTipo: Integer;
  dVerba: Double;
  aParam: array of variant;
  FDQuery: TFDQuery;
begin
  try
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    FExtravio := TExtraviosMultasControl.Create;
    FEntregas := TEntregasControl.Create;
    dVerba := 0;
    iTipo := 0;
    iTipo :=  StrToIntDef(Copy(FAcareacao.Acareacoes.Resultado,1,2),0);
    FExtravio.Extravios.Descricao := FAcareacao.Acareacoes.Apuracao;
    FExtravio.Extravios.NN := FAcareacao.Acareacoes.Nossonumero;
    FExtravio.Extravios.Agente := FAcareacao.Acareacoes.Base;
    FExtravio.Extravios.Data := StrToDate(FormatDateTime('DD/MM/YYYY', FAcareacao.Acareacoes.Data));
    FExtravio.Extravios.ValorProduto := FAcareacao.Acareacoes.Extravio;
    FExtravio.Extravios.Multa := FAcareacao.Acareacoes.Multa;
    FExtravio.Extravios.Restricao := 'N';
    FExtravio.Extravios.Extrato := 'N';
    FExtravio.Extravios.Entregador := FAcareacao.Acareacoes.Entregador;
    if iTipo = 4 then
    begin
      FExtravio.Extravios.Tipo := 2;
    end
    else
    begin
      FExtravio.Extravios.Tipo := 0;
    end;
    SetLength(aParam,2);
    aParam[0] := 'NN';
    aParam[1] := FAcareacao.Acareacoes.Nossonumero;
    FDQuery := FEntregas.Localizar(aParam);
    Finalize(aParam);
    if not FDQuery.IsEmpty then
    begin
      dVerba := FDQuery.FieldByName('VAL_VERBA_ENTREGADOR').AsFloat;
    end;
    FDQuery.Free;
    if FExtravio.Extravios.Tipo = 0 then
    begin
      FExtravio.Extravios.Verba := dVerba;
    end
    else
    begin
      FExtravio.Extravios.ValorProduto := 0;
      FExtravio.Extravios.Verba := 0;
    end;
    FExtravio.Extravios.Total := FExtravio.Extravios.ValorProduto + FExtravio.Extravios.Multa + FExtravio.Extravios.Verba;
    FExtravio.Extravios.ValorFranquia := 0;
    FExtravio.Extravios.Extrato := '';
    FExtravio.Extravios.EnvioCorrespondencia := '';
    FExtravio.Extravios.RetornoCorrespondencia := '';
    FExtravio.Extravios.Obs := 'Extravio/Multa gerada pela Acareação #IDD ' + FAcareacao.Acareacoes.Id + ' por ' +
                               Global.Parametros.pUser_Name + ' em ' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now());
    FExtravio.Extravios.Percentual := 0;
    FExtravio.Extravios.IDExtrato := 0;
    FExtravio.Extravios.Sequencia := FAcareacao.Acareacoes.Sequencia;
    FExtravio.Extravios.Executor := Global.Parametros.pUser_Name;
    FExtravio.Extravios.Manutencao := Now();
    FExtravio.Extravios.Acao := Common.ENum.tacIncluir;
    if not FExtravio.Gravar() then Application.MessageBox('Extravio não foi gerado!', 'Atenção', MB_OK + MB_ICONWARNING);
  finally
    FExtravio.Free;
    FEntregas.Free;
  end;
end;

procedure Tview_Acareacoes.grdPesquisaEnter(Sender: TObject);
begin
   cxButton12.Default := True;
end;

procedure Tview_Acareacoes.grdPesquisaExit(Sender: TObject);
begin
  cxButton12.Default := False;
end;

procedure Tview_Acareacoes.LocalizaAcareacao;
var
  aParam: array of Variant;
  FDQuery : TFDQuery;
begin
  try
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    SetLength(aParam,2);
    aParam[0] := 'SEQUENCIA';
    aparam[1] := mtbPesquisaSEQ_ACAREACAO.AsString;
    FDQuery := FAcareacao.Localizar(aParam);
    Finalize(aParam);
    if not FDQuery.IsEmpty then
    begin
      FAcareacao.Acareacoes.Sequencia:= FDQuery.FieldByName('SEQ_ACAREACAO').AsInteger;
      FAcareacao.Acareacoes.Id := FDQuery.FieldByName('ID_ACAREACAO').AsString;
      FAcareacao.Acareacoes.Data := FDQuery.FieldByName('DAT_ACAREACAO').AsDateTime;
      FAcareacao.Acareacoes.DataRetorno := FDQuery.FieldByName('DAT_RETORNO').AsDateTime;
      FAcareacao.Acareacoes.Nossonumero := FDQuery.FieldByName('NUM_NOSSONUMERO').AsString;
      FAcareacao.Acareacoes.Entregador := FDQuery.FieldByName('COD_ENTREGADOR').AsInteger;
      FAcareacao.Acareacoes.Base := FDQuery.FieldByName('COD_BASE').AsInteger;
      FAcareacao.Acareacoes.DataEntrega := FDQuery.FieldByName('DAT_ENTREGA').AsDateTime;
      FAcareacao.Acareacoes.Motivo := FDQuery.FieldByName('DES_MOTIVO').AsString;
      FAcareacao.Acareacoes.Tratativa := FDQuery.FieldByName('DES_TRATATIVA').AsString;
      FAcareacao.Acareacoes.Apuracao := FDQuery.FieldByName('DES_APURACAO').AsString;
      FAcareacao.Acareacoes.Resultado := FDQuery.FieldByName('DES_RESULTADO').AsString;
      FAcareacao.Acareacoes.Extravio := FDQuery.FieldByName('VAL_EXTRAVIO').AsFloat;
      FAcareacao.Acareacoes.Multa := FDQuery.FieldByName('VAL_MULTA').AsFloat;
      FAcareacao.Acareacoes.Envio := FDQuery.FieldByName('DES_ENVIO_CORRESPONDENCIA').AsString;
      FAcareacao.Acareacoes.Retorno := FDQuery.FieldByName('DES_RETORNO_CORRESPONDENCIA').AsString;
      FAcareacao.Acareacoes.Finalizar := FDQuery.FieldByName('DOM_FINALIZAR').Value;
      FAcareacao.Acareacoes.Obs := FDQuery.FieldByName('DES_OBSERVACOES').AsString;
      FAcareacao.Acareacoes.Executor := FDQuery.FieldByName('DES_EXECUTOR').AsString;
      FAcareacao.Acareacoes.Manutencao := FDQuery.FieldByName('DAT_MANUTENCAO').AsDateTime;
      FAcareacao.Acareacoes.Endereco := FDQuery.FieldByName('DES_ENDERECO').AsString;
      FAcareacao.Acareacoes.Numero := FDQuery.FieldByName('NUM_ENDERECO').AsString;
      FAcareacao.Acareacoes.Bairro := FDQuery.FieldByName('DES_BAIRRO').AsString;
      FAcareacao.Acareacoes.Cidade := FDQuery.FieldByName('DES_CIDADE').AsString;
      FAcareacao.Acareacoes.CEP := FDQuery.FieldByName('NUM_CEP').AsString;
      FAcareacao.Acareacoes.Remetente := FDQuery.FieldByName('DES_REMETENTE').AsString;
      FAcareacao.Acareacoes.Produto := FDQuery.FieldByName('DES_PRODUTO').AsString;
      FAcareacao.Acareacoes.Recebedor := FDQuery.FieldByName('NOM_RECEBEDOR').AsString;
      FAcareacao.Acareacoes.Identificacao := FDQuery.FieldByName('DES_IDENTIFICACAO').AsString;
      FAcareacao.Acareacoes.Documento := FDQuery.FieldByName('DES_DOCUMENTO').AsString;
      FAcareacao.Acareacoes.Unidade := FDQuery.FieldByName('DES_UNIDADE').AsString;

      PopulaCampos;
      FAcareacao.Acareacoes.Acao := Common.ENum.tacPesquisa;
      StatusButton;
    end;
    FDQuery.Close;
    dxLayoutGroup1.MakeVisible;
  finally
    FDQuery.Free;
  end;
end;

procedure Tview_Acareacoes.LocalizarAcareacoes;
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
      sSQL := 'SEQ_ACAREACAO LIKE ' + txtParametro.Text + ' OR ID_ACAREACAO LIKE ' +
               QuotedStr('%' + txtParametro.Text + '%') + ' OR NUM_NOSSONUMERO LIKE '+ QuotedStr('%' + txtParametro.Text + '%') +
              ' OR COD_ENTREGADOR = ' + txtParametro.Text + ' OR COD_BASE = ' + txtParametro.Text;
    end
    else
    begin
      sSQL := 'ID_ACAREACAO LIKE ' + QuotedStr('%' + txtParametro.Text + '%') + ' OR NUM_NOSSONUMERO LIKE '+
              QuotedStr('%' + txtParametro.Text + '%');

    end;
    SetLength(aParam,2);
    iIndex := 0;
    aParam[0] := 'FILTRO';
    aparam[1] := sSQL;
    FDQuery := FAcareacao.Localizar(aParam);
    Finalize(aParam);
    if not FDQuery.IsEmpty then PopulaPesquisa(FDQuery);
    FDQuery.Close;
  finally
    FDQuery.Free;
    FreeAndNil(View_PesquisarPessoas);
  end;
end;

procedure Tview_Acareacoes.LocalizarBases;
var
  aParam: array of Variant;
  FDQuery : TFDQuery;
begin
  try
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    SetLength(aParam,3);
    aParam[0] := 'APOIO';
    aParam[1] := 'COD_AGENTE as Código, NOM_FANTASIA as Nome';
    aparam[2] := ' WHERE COD_STATUS = 1';
    FDQuery := FBase.Localizar(aParam);
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
    View_PesquisarPessoas.Caption := View_PesquisarPessoas.Caption + ' de Bases';
    if View_PesquisarPessoas.ShowModal = mrOk then
    begin
      edtCodigoBase.EditValue := View_PesquisarPessoas.qryPesquisa.Fields[2].AsInteger;
      txtNomeBase.Text := NomeBase(View_PesquisarPessoas.qryPesquisa.Fields[2].AsInteger);
    end;
  finally
    FDQuery.Free;
    FreeAndNil(View_PesquisarPessoas);
  end;
end;

procedure Tview_Acareacoes.LocalizarEntregadores;
var
  aParam: array of Variant;
  FDQuery : TFDQuery;
begin
  try
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    SetLength(aParam,3);
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
    if View_PesquisarPessoas.ShowModal = mrOk then
    begin
      edtCodigoEntregador.EditValue := View_PesquisarPessoas.qryPesquisa.Fields[1].AsInteger;
      txtNomeEntregador.Text := View_PesquisarPessoas.qryPesquisa.Fields[2].AsString;
      edtCodigoBase.EditValue := View_PesquisarPessoas.qryPesquisa.Fields[3].AsString;
      txtNomeBase.Text := NomeBase(edtCodigoEntregador.EditValue);
    end;
  finally
    FDQuery.Free;
    FreeAndNil(View_PesquisarPessoas);
  end;
end;

function Tview_Acareacoes.NomeBase(iCodigo: Integer): String;
var
  aParam: array of Variant;
begin
  Result := 'NONE';
  SetLength(aParam,2);
  aParam[0] := 'CODIGO';
  aParam[1] := iCodigo;
  if FBase.LocalizarExato(aParam) then
  begin
    Result := FBase.Bases.NomeFantasia;
  end;
  Finalize(aParam);
end;

procedure Tview_Acareacoes.NomeEntregador(iCodigo: Integer);
var
  aParam: array of Variant;
begin
  if iCodigo = 0 then
  begin
    Exit;
  end;
  SetLength(aParam,3);
  aParam[0] := 'ENTREGADOR';
  aParam[1] := iCodigo;
  if FEntregadores.LocalizarExato(aParam) then
  begin
    txtNomeEntregador.Text := FEntregadores.Entregadores.Fantasia;
    edtCodigoBase.EditValue := FEntregadores.Entregadores.Agente;
    txtNomeBase.Text := NomeBase(FEntregadores.Entregadores.Agente);
  end;
  Finalize(aParam);
end;

procedure Tview_Acareacoes.PopulaBase;
var
  aParam: array of Variant;
  FDQuery : TFDQuery;
begin
  try
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    SetLength(aParam,3);
    aParam[0] := 'APOIO';
    aParam[1] := 'COD_AGENTE, NOM_FANTASIA';
    aparam[2] := ' WHERE COD_STATUS = 1';
    FDQuery := FBase.Localizar(aParam);
    Finalize(aParam);
    mtbBase.CreateFieldsFromDataSet(FDQuery);
    mtbBase.LoadFromDataSet(FDQuery);
    mtbBase.Open;
  finally
    FDQuery.Free;
  end;
end;

procedure Tview_Acareacoes.PopulaCampos;
begin
  ClearFields;
  mskCodigo.EditValue := FAcareacao.Acareacoes.Sequencia;
  txtID.Text := FAcareacao.Acareacoes.Id;
  datAcareacao.Date := FAcareacao.Acareacoes.Data;
  txtNN.Text := FAcareacao.Acareacoes.Nossonumero;
  edtCodigoEntregador.EditValue := FAcareacao.Acareacoes.Entregador;
  NomeEntregador(FAcareacao.Acareacoes.Entregador);
  //edtCodigoBase.EditValue := FAcareacao.Acareacoes.Base;
  //txtNomeBase.Text := NomeBase(FAcareacao.Acareacoes.Base);
  DadosEntrega(FAcareacao.Acareacoes.Nossonumero);
  datEntrega.Date := FAcareacao.Acareacoes.DataEntrega;
  cboMotivo.Text := FAcareacao.Acareacoes.Motivo;
  cboTratativa.Text := FAcareacao.Acareacoes.Tratativa;
  cboApuracao.Text := FAcareacao.Acareacoes.Apuracao;
  cboResultado.Text := FAcareacao.Acareacoes.Resultado;
  edtValorExtravio.Value := FAcareacao.Acareacoes.Extravio;
  edtValorMulta.Value := FAcareacao.Acareacoes.Multa;
  cboEnvioCorrespondencia.Text := FAcareacao.Acareacoes.Envio;
  cboRetornoCorrespondencia.Text := FAcareacao.Acareacoes.Retorno;
  chkStatus.Checked := FAcareacao.Acareacoes.Finalizar;
  memObs.Text := FAcareacao.Acareacoes.Obs;
  textEditEndereco.Text := FAcareacao.Acareacoes.Endereco;
  textEditNumero.Text := FAcareacao.Acareacoes.Numero;
  textEditBairro.Text := FAcareacao.Acareacoes.Bairro;
  textEditCidade.Text := FAcareacao.Acareacoes.Cidade;
  maskEditCEP.EditValue := FAcareacao.Acareacoes.CEP;
  textEditRemetente.Text := FAcareacao.Acareacoes.Remetente;
  textEditProduto.Text := FAcareacao.Acareacoes.Produto;
  textEditRecebedor.Text := FAcareacao.Acareacoes.Recebedor;
  textEditIdentificacao.Text := FAcareacao.Acareacoes.Identificacao;
  textEditDocumento.Text := FAcareacao.Acareacoes.Documento;
  cboUnidade.Text := FAcareacao.Acareacoes.Unidade;
  datRetorno.Date := FAcareacao.Acareacoes.DataRetorno;
end;

procedure Tview_Acareacoes.PopulaEntregadores;
var
  aParam: array of Variant;
  FDQuery : TFDQuery;
begin
  try
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    SetLength(aParam,3);
    aParam[0] := 'APOIO';
    aParam[1] := 'COD_ENTREGADOR, NOM_FANTASIA';
    aparam[2] := ' WHERE COD_CADASTRO <> 0';
    FDQuery := FEntregadores.Localizar(aParam);
    Finalize(aParam);
    mtbEntregadores.CreateFieldsFromDataSet(FDQuery);
    mtbEntregadores.LoadFromDataSet(FDQuery);
    mtbEntregadores.Open;
  finally
    FDQuery.Free;
  end;
end;

procedure Tview_Acareacoes.PopulaPesquisa(FDQuery: TFDQuery);
var
  iIndex : Integer;
begin
    if mtbPesquisa.Active then mtbPesquisa.Close;
    mtbPesquisa.Open;
    if not FDQuery.IsEmpty then FDQuery.First;
    while not FDQuery.Eof do
    begin
      mtbPesquisa.Insert;
      for iIndex := 0 to FDQuery.FieldCount - 1 do
      begin
        mtbPesquisa.FieldByName(FDQuery.FieldList[iIndex].FieldName).Value :=
        FDQuery.FieldByName(FDQuery.FieldList[iIndex].FieldName).Value;
      end;
      mtbPesquisa.Post;
      FDQuery.Next;
    end;
    if not mtbPesquisa.IsEmpty then mtbPesquisa.First;
end;

procedure Tview_Acareacoes.SetupAcareacoes;
begin
  FAcareacao.Acareacoes.Sequencia:= StrToIntDef(mskCodigo.Text,0);
  FAcareacao.Acareacoes.Id := txtID.Text;
  FAcareacao.Acareacoes.Data := datAcareacao.Date;
  FAcareacao.Acareacoes.Nossonumero := txtNN.Text;
  FAcareacao.Acareacoes.Entregador := StrToIntDef(edtCodigoEntregador.Text,0);
  FAcareacao.Acareacoes.Base := StrToIntDef(edtCodigoBase.Text,0);
  FAcareacao.Acareacoes.DataEntrega := datEntrega.Date;
  FAcareacao.Acareacoes.Motivo := cboMotivo.Text;
  FAcareacao.Acareacoes.Tratativa := cboTratativa.Text;
  FAcareacao.Acareacoes.Apuracao := cboApuracao.Text;
  FAcareacao.Acareacoes.Resultado := cboResultado.Text;
  FAcareacao.Acareacoes.Extravio := edtValorExtravio.Value;
  FAcareacao.Acareacoes.Multa := edtValorMulta.Value;
  FAcareacao.Acareacoes.Envio := cboEnvioCorrespondencia.Text;
  FAcareacao.Acareacoes.Retorno := cboRetornoCorrespondencia.Text;
  FAcareacao.Acareacoes.Finalizar := chkStatus.Checked;
  FAcareacao.Acareacoes.Obs := memObs.Text;
  FAcareacao.Acareacoes.Executor := Global.Parametros.pUser_Name;
  FAcareacao.Acareacoes.Manutencao := Now();
  FAcareacao.Acareacoes.Endereco := textEditEndereco.Text;
  FAcareacao.Acareacoes.Numero:= textEditNumero.Text;
  FAcareacao.Acareacoes.Bairro := textEditBairro.Text;
  FAcareacao.Acareacoes.Cidade := textEditCidade.Text;
  FAcareacao.Acareacoes.CEP := maskEditCEP.EditValue;
  FAcareacao.Acareacoes.Remetente := textEditRemetente.Text;
  FAcareacao.Acareacoes.Produto := textEditProduto.Text;
  FAcareacao.Acareacoes.Recebedor := textEditRecebedor.Text;
  FAcareacao.Acareacoes.Identificacao := textEditIdentificacao.Text;
  FAcareacao.Acareacoes.Documento := textEditDocumento.Text;
  FAcareacao.Acareacoes.Unidade := cboUnidade.Text;
  FAcareacao.Acareacoes.DataRetorno := datRetorno.Date;
end;

procedure Tview_Acareacoes.StatusButton;
begin
  if FAcareacao.Acareacoes.Acao = Common.ENum.tacIndefinido then
  begin
    actIncluir.Enabled := True;
    actEditar.Enabled := False;
    actExcluir.Enabled := False;
    actCancelar.Enabled := False;
    actLocalizar.Enabled := True;
    actFiltltrar.Enabled := True;
    actFinalizar.Enabled := False;
    actFechar.Enabled := True;
    actSalvar.Enabled := False;
    actDeclaracao.Enabled := False;
  end else if FAcareacao.Acareacoes.Acao = Common.ENum.tacIncluir then
  begin
    actIncluir.Enabled := False;
    actEditar.Enabled := False;
    actExcluir.Enabled := False;
    actCancelar.Enabled := True;
    actLocalizar.Enabled := False;
    actFiltltrar.Enabled := False;
    actFinalizar.Enabled := False;
    actFechar.Enabled := True;
    actSalvar.Enabled := True;
    actDeclaracao.Enabled := False;
  end else if FAcareacao.Acareacoes.Acao = Common.ENum.tacAlterar then
  begin
    actIncluir.Enabled := False;
    actEditar.Enabled := False;
    actExcluir.Enabled := False;
    actCancelar.Enabled := True;
    actLocalizar.Enabled := False;
    actFiltltrar.Enabled := False;
    actFinalizar.Enabled := False;
    actFechar.Enabled := True;
    actSalvar.Enabled := True;
    actDeclaracao.Enabled := False;
  end else if FAcareacao.Acareacoes.Acao = Common.ENum.tacExcluir then
  begin
    actIncluir.Enabled := False;
    actEditar.Enabled := False;
    actExcluir.Enabled := False;
    actCancelar.Enabled := False;
    actLocalizar.Enabled := False;
    actFiltltrar.Enabled := False;
    actFinalizar.Enabled := False;
    actFechar.Enabled := True;
    actSalvar.Enabled := False;
    actDeclaracao.Enabled := False;
  end else if FAcareacao.Acareacoes.Acao = Common.ENum.tacPesquisa then
  begin
    actEditar.Enabled := not chkStatus.Checked;
    actExcluir.Enabled := not chkStatus.Checked;
    actCancelar.Enabled := True;
    actLocalizar.Enabled := True;
    actFiltltrar.Enabled := True;
    actFinalizar.Enabled := not chkStatus.Checked;
    actFechar.Enabled := True;
    actSalvar.Enabled := False;
    actDeclaracao.Enabled := True;
  end;
end;

procedure Tview_Acareacoes.tvPesquisaCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  actSelecionarExecute(Sender);
end;

procedure Tview_Acareacoes.tvPesquisaNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  case AButtonIndex of
    16: Exportar;
  end;
end;

procedure Tview_Acareacoes.txtNNPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  if DisplayValue = '' then Exit;
  DisplayValue := FormatFloat('0',StrToFloat(VarToStr(DisplayValue)));
  if FAcareacao.Acareacoes.Acao = Common.ENum.tacIncluir then
  begin
    DadosEntrega(DisplayValue);
  end;
end;

procedure Tview_Acareacoes.txtParametroEnter(Sender: TObject);
begin
  cxButton13.Default := True;
end;

procedure Tview_Acareacoes.txtParametroExit(Sender: TObject);
begin
  cxButton13.Default := False
end;

end.
