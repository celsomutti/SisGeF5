unit View.CadastroEntregadores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, Common.ENum, Common.Utils, Global.Parametros, cxContainer,
  cxEdit, dxLayoutcxEditAdapters, cxLabel, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxDBLookupComboBox, cxSpinEdit,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxCurrencyEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, Control.VerbasExpressas,
  Control.TiposVerbasExpressas, System.Actions, Vcl.ActnList, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxCheckBox, Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, Control.EntregadoresExpressas, Control.Bases, Control.Cadastro, cxDBEdit, cxImageComboBox, cxBlobEdit,
  Control.ExtraviosMultas, Control.Lancamentos, Control.Entregas, Vcl.Bind.Navigator;

type
  Tview_CadastroEntregadores = class(TForm)
    layoutControlPadraoGroup_Root: TdxLayoutGroup;
    layoutControlPadrao: TdxLayoutControl;
    labelTitle: TcxLabel;
    layoutItemLabelTitle: TdxLayoutItem;
    memTableEntregadores: TFDMemTable;
    memTableEntregadorescod_cadastro: TIntegerField;
    memTableEntregadorescod_entregador: TIntegerField;
    memTableEntregadoresnom_fantasia: TStringField;
    memTableEntregadorescod_agente: TIntegerField;
    memTableEntregadoresdes_chave: TStringField;
    memTableEntregadorescod_grupo: TIntegerField;
    memTableEntregadoresval_verba: TFloatField;
    memTableEntregadoresnom_executante: TStringField;
    memTableEntregadoresdom_ativo: TIntegerField;
    memTableEntregadorescod_tabela: TIntegerField;
    dsEntregadores: TDataSource;
    layoutControlCadastroGroup_Root: TdxLayoutGroup;
    layoutControlCadastro: TdxLayoutControl;
    layoutItemCadastro: TdxLayoutItem;
    buttonEditPessoa: TcxButtonEdit;
    layoutItemCodigoCadastro: TdxLayoutItem;
    textEditNomePessoa: TcxTextEdit;
    layoutItemNomePessoa: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    maskEditCodigo: TcxMaskEdit;
    layoutItemCodigo: TdxLayoutItem;
    textEditNomeFantasia: TcxTextEdit;
    layoutItemNomeFantasia: TdxLayoutItem;
    buttonEditCodigoAgente: TcxButtonEdit;
    layoutItemCodigoAgente: TdxLayoutItem;
    textEditNomeAgente: TcxTextEdit;
    layoutItemNomeAgente: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    textEditCodigoERP: TcxTextEdit;
    layoutItemCodigoERP: TdxLayoutItem;
    currencyEditTicketMedio: TcxCurrencyEdit;
    layoutItemTicketMedio: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    layoutControlFooterGroup_Root: TdxLayoutGroup;
    layoutControlFooter: TdxLayoutControl;
    layoutItemFooter: TdxLayoutItem;
    actionListEntregadores: TActionList;
    actionLocalizar: TAction;
    actionFechar: TAction;
    buttonNovo: TcxButton;
    layoutItemButtonNovo: TdxLayoutItem;
    buttonLocalizar: TcxButton;
    layoutItemButtonLocalizar: TdxLayoutItem;
    buttonCancelar: TcxButton;
    layoutItemButtonCancelar: TdxLayoutItem;
    buttonGravar: TcxButton;
    layoutItemButtonGravar: TdxLayoutItem;
    checkBoxAtivo: TcxCheckBox;
    layoutItemCheckBoxAtivo: TdxLayoutItem;
    buttonFechar: TcxButton;
    layoutItemButtonFechar: TdxLayoutItem;
    actionLocalizarAgentes: TAction;
    actionLocalizarPessoas: TAction;
    buttonEditCodigoTabela: TcxButtonEdit;
    layoutItemButtonEditCodigoTabela: TdxLayoutItem;
    textEditDescricaoTabela: TcxTextEdit;
    layoutItemTextEditDescricaoTabela: TdxLayoutItem;
    buttonEditCodigoFaixa: TcxButtonEdit;
    layoutItemButtonEditCodigoFaixa: TdxLayoutItem;
    memTableEntregadorescod_cliente: TIntegerField;
    actionPesquisarTabelas: TAction;
    memTableEntregadoresdat_manutencao: TSQLTimeStampField;
    buttonEditar: TcxButton;
    layoutItemButtonEditar: TdxLayoutItem;
    layoutGroupHistorico: TdxLayoutGroup;
    memTableExtravios: TFDMemTable;
    memTableExtravioscod_extravio: TIntegerField;
    memTableExtraviosdes_extravio: TStringField;
    memTableExtraviosnum_nossonumero: TStringField;
    memTableExtravioscod_agente: TIntegerField;
    memTableExtraviosval_produto: TFloatField;
    memTableExtraviosdat_extravio: TDateField;
    memTableExtraviosval_multa: TFloatField;
    memTableExtraviosval_verba: TFloatField;
    memTableExtraviosval_total: TFloatField;
    memTableExtraviosdom_restricao: TStringField;
    memTableExtravioscod_entregador: TIntegerField;
    memTableExtravioscod_tipo: TIntegerField;
    memTableExtraviosval_verba_franquia: TFloatField;
    memTableExtraviosval_extrato_franquia: TFloatField;
    memTableExtraviosdom_extrato_franquia: TStringField;
    memTableExtraviosdat_extravio_franquia: TDateField;
    memTableExtraviosdes_envio_correspondencia: TStringField;
    memTableExtraviosdes_retorno_correspondencia: TStringField;
    memTableExtraviosdes_observacoes: TMemoField;
    memTableExtraviosval_percentual_pago: TFloatField;
    memTableExtraviosid_extrato: TIntegerField;
    memTableExtraviosseq_acareacao: TIntegerField;
    memTableExtraviosnom_executor: TStringField;
    memTableExtraviosdat_manutencao: TDateTimeField;
    memTableExtraviosnum_extrato: TStringField;
    gridExtraviosDBTableViewExtravios: TcxGridDBTableView;
    gridExtraviosLevelExtavios: TcxGridLevel;
    gridExtravios: TcxGrid;
    layoutItemExtravios: TdxLayoutItem;
    dsExtravios: TDataSource;
    gridExtraviosDBTableViewExtravioscod_extravio: TcxGridDBColumn;
    gridExtraviosDBTableViewExtraviosdes_extravio: TcxGridDBColumn;
    gridExtraviosDBTableViewExtraviosnum_nossonumero: TcxGridDBColumn;
    gridExtraviosDBTableViewExtravioscod_agente: TcxGridDBColumn;
    gridExtraviosDBTableViewExtraviosval_produto: TcxGridDBColumn;
    gridExtraviosDBTableViewExtraviosdat_extravio: TcxGridDBColumn;
    gridExtraviosDBTableViewExtraviosval_multa: TcxGridDBColumn;
    gridExtraviosDBTableViewExtraviosval_verba: TcxGridDBColumn;
    gridExtraviosDBTableViewExtraviosval_total: TcxGridDBColumn;
    gridExtraviosDBTableViewExtraviosdom_restricao: TcxGridDBColumn;
    gridExtraviosDBTableViewExtravioscod_entregador: TcxGridDBColumn;
    gridExtraviosDBTableViewExtravioscod_tipo: TcxGridDBColumn;
    gridExtraviosDBTableViewExtraviosval_verba_franquia: TcxGridDBColumn;
    gridExtraviosDBTableViewExtraviosval_extrato_franquia: TcxGridDBColumn;
    gridExtraviosDBTableViewExtraviosdom_extrato_franquia: TcxGridDBColumn;
    gridExtraviosDBTableViewExtraviosdat_extravio_franquia: TcxGridDBColumn;
    gridExtraviosDBTableViewExtraviosdes_envio_correspondencia: TcxGridDBColumn;
    gridExtraviosDBTableViewExtraviosdes_retorno_correspondencia: TcxGridDBColumn;
    gridExtraviosDBTableViewExtraviosdes_observacoes: TcxGridDBColumn;
    gridExtraviosDBTableViewExtraviosval_percentual_pago: TcxGridDBColumn;
    gridExtraviosDBTableViewExtraviosid_extrato: TcxGridDBColumn;
    gridExtraviosDBTableViewExtraviosseq_acareacao: TcxGridDBColumn;
    gridExtraviosDBTableViewExtraviosnom_executor: TcxGridDBColumn;
    gridExtraviosDBTableViewExtraviosdat_manutencao: TcxGridDBColumn;
    gridExtraviosDBTableViewExtraviosnum_extrato: TcxGridDBColumn;
    memTableLancamentos: TFDMemTable;
    memTableLancamentoscod_lancamento: TIntegerField;
    memTableLancamentosdes_lancamento: TStringField;
    memTableLancamentosdat_lancamento: TDateField;
    memTableLancamentoscod_entregador: TIntegerField;
    memTableLancamentoscod_entregador_: TIntegerField;
    memTableLancamentosdes_tipo: TStringField;
    memTableLancamentosval_lancamento: TFloatField;
    memTableLancamentosdat_desconto: TDateField;
    memTableLancamentosnum_extrato: TStringField;
    memTableLancamentosdom_persistir: TStringField;
    gridLancamentosDBTableViewLancamentos: TcxGridDBTableView;
    gridLancamentosLevelLancamentos: TcxGridLevel;
    gridLancamentos: TcxGrid;
    layoutItemLancamentos: TdxLayoutItem;
    dsLancamentos: TDataSource;
    gridLancamentosDBTableViewLancamentoscod_lancamento: TcxGridDBColumn;
    gridLancamentosDBTableViewLancamentosdes_lancamento: TcxGridDBColumn;
    gridLancamentosDBTableViewLancamentosdat_lancamento: TcxGridDBColumn;
    gridLancamentosDBTableViewLancamentoscod_entregador: TcxGridDBColumn;
    gridLancamentosDBTableViewLancamentoscod_entregador_: TcxGridDBColumn;
    gridLancamentosDBTableViewLancamentosdes_tipo: TcxGridDBColumn;
    gridLancamentosDBTableViewLancamentosval_lancamento: TcxGridDBColumn;
    gridLancamentosDBTableViewLancamentosdom_desconto: TcxGridDBColumn;
    gridLancamentosDBTableViewLancamentosdat_desconto: TcxGridDBColumn;
    gridLancamentosDBTableViewLancamentosnum_extrato: TcxGridDBColumn;
    gridLancamentosDBTableViewLancamentosdom_persistir: TcxGridDBColumn;
    gridRemessasDBTableViewRemessas: TcxGridDBTableView;
    gridRemessasLevelRemessas: TcxGridLevel;
    gridRemessas: TcxGrid;
    layoutItemREmessas: TdxLayoutItem;
    memTableExpressas: TFDMemTable;
    memTableExpressasval_verba_entregador: TCurrencyField;
    memTableExpressasqtd_volumes: TIntegerField;
    memTableExpressasqtd_entregas: TIntegerField;
    memTableExpressasval_producao: TCurrencyField;
    memTableExpressasdat_baixa: TDateField;
    dsExpressas: TDataSource;
    gridRemessasDBTableViewRemessasdat_baixa: TcxGridDBColumn;
    gridRemessasDBTableViewRemessasqtd_entregas: TcxGridDBColumn;
    gridRemessasDBTableViewRemessasqtd_volumes: TcxGridDBColumn;
    gridRemessasDBTableViewRemessasval_verba: TcxGridDBColumn;
    gridRemessasDBTableViewRemessasval_producao: TcxGridDBColumn;
    memTableLancamentosdom_desconto: TStringField;
    actionPesquisarFaixas: TAction;
    SaveDialog: TSaveDialog;
    actionNovo: TAction;
    actionEditar: TAction;
    actionCancelar: TAction;
    actionGravar: TAction;
    memTableEntregadoresdat_codigo: TDateTimeField;
    memTableLancamentoscod_referencia: TIntegerField;
    memTableLancamentosdat_cadastro: TDateTimeField;
    memTableLancamentosnom_usuario: TStringField;
    memTableExpressascod_cliente: TIntegerField;
    memTableExpressascod_base: TIntegerField;
    dsBases: TDataSource;
    dsClientes: TDataSource;
    textEditID: TcxTextEdit;
    layoutItemID: TdxLayoutItem;
    lookupComboBoxCliente: TcxLookupComboBox;
    layoutItemCliente: TdxLayoutItem;
    memTableEntregadoresid_entregador: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure actionFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionLocalizarAgentesExecute(Sender: TObject);
    procedure actionLocalizarPessoasExecute(Sender: TObject);
    procedure buttonEditCodigoAgentePropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure buttonEditPessoaPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure actionPesquisarTabelasExecute(Sender: TObject);
    procedure actionLocalizarExecute(Sender: TObject);
    procedure buttonEditCodigoTabelaPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure memTableExpressasCalcFields(DataSet: TDataSet);
    procedure actionPesquisarFaixasExecute(Sender: TObject);
    procedure gridExtraviosDBTableViewExtraviosNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer;
      var ADone: Boolean);
    procedure gridLancamentosDBTableViewLancamentosNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer;
      var ADone: Boolean);
    procedure gridRemessasDBTableViewRemessasNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer;
      var ADone: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure LiveBindingsBindNavigateCancel1Execute(Sender: TObject);
    procedure actionNovoExecute(Sender: TObject);
    procedure actionEditarExecute(Sender: TObject);
    procedure actionCancelarExecute(Sender: TObject);
    procedure actionGravarExecute(Sender: TObject);
  private
    { Private declarations }
    procedure PesquisaAgente;
    procedure PesquisaPessoas;
    procedure PesquisaTabelas;
    procedure PesquisaFaixas;
    procedure PesquisaEntregadores;
    procedure PopulaExtravios(iEntregador: integer);
    procedure PopulaLancamentos(iCadastro: integer);
    procedure PopulaExpressas(iEntregador: integer);
    procedure PopulaCampos;
    procedure LimpaCampos;
    procedure Gravar;
    procedure ExportarExtravios;
    procedure ExportaLancamentos;
    procedure ExportaExpressas;
    function RetornaNomeAgente(iCodigo: integer): String;
    function RetornaNomePessoa(iCodigo: integer): String;
    function RetornaDescricaoTabela(iCodigo: integer): string;
    function RetornaValorFaixa(iCliente,iTabela,iFaixa: Integer): String;
    function ValidaDados(): boolean;

    procedure Modo;
  public
    { Public declarations }
  end;

var
  view_CadastroEntregadores: Tview_CadastroEntregadores;
  FAcao: TAcao;
  dataCodigo: TDateTime;
implementation

{$R *.dfm}

uses Data.SisGeF, View.PesquisarPessoas;

procedure Tview_CadastroEntregadores.actionCancelarExecute(Sender: TObject);
begin
  FAcao := tacIndefinido;
  LimpaCampos;
  Modo;
end;

procedure Tview_CadastroEntregadores.actionEditarExecute(Sender: TObject);
begin
  FAcao := tacAlterar;
  Modo;
  textEditNomeFantasia.SetFocus;
end;

procedure Tview_CadastroEntregadores.actionFecharExecute(Sender: TObject);
begin
  FAcao := tacIndefinido;
  if memTableEntregadores.Active then memTableEntregadores.Close;
  Close;
end;

procedure Tview_CadastroEntregadores.actionGravarExecute(Sender: TObject);
begin
  if not ValidaDados() then
  begin
    Exit;
  end;
  if Application.MessageBox('Confirma gravar os dados?', 'Gravar', MB_YESNO + MB_ICONQUESTION) = IDNO then
  begin
    exit;
  end;
  Gravar;
end;

procedure Tview_CadastroEntregadores.actionLocalizarAgentesExecute(Sender: TObject);
begin
   PesquisaAgente;
end;

procedure Tview_CadastroEntregadores.actionLocalizarExecute(Sender: TObject);
begin
  PesquisaEntregadores;
end;

procedure Tview_CadastroEntregadores.actionLocalizarPessoasExecute(Sender: TObject);
begin
  PesquisaPessoas;
end;

procedure Tview_CadastroEntregadores.actionNovoExecute(Sender: TObject);
begin
  LimpaCampos;
  FAcao := tacIncluir;
  Modo;
  maskEditCodigo.SetFocus;
end;

procedure Tview_CadastroEntregadores.actionPesquisarFaixasExecute(Sender: TObject);
begin
  PesquisaFaixas;
end;

procedure Tview_CadastroEntregadores.actionPesquisarTabelasExecute(Sender: TObject);
begin
  PesquisaTabelas;
end;

procedure Tview_CadastroEntregadores.buttonEditCodigoAgentePropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  if (Facao =  tacIncluir) or (FAcao = tacAlterar) then
  begin
    textEditNomeAgente.Text := RetornaNomeAgente(StrToIntDef(buttonEditCodigoAgente.Text,0));
  end;
end;

procedure Tview_CadastroEntregadores.buttonEditCodigoTabelaPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  if (Facao =  tacIncluir) or (FAcao = tacAlterar) then
  begin
    textEditDescricaoTabela.Text := RetornaDescricaoTabela(StrToIntDef(buttonEditCodigoTabela.Text,0));
  end;
end;

procedure Tview_CadastroEntregadores.buttonEditPessoaPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  if (Facao =  tacIncluir) or (FAcao = tacAlterar) then
  begin
    textEditNomePessoa.Text := RetornaNomePessoa(StrToIntDef(buttonEditPessoa.Text,0));
  end;
end;

procedure Tview_CadastroEntregadores.ExportaExpressas;
begin
  SaveDialog.Filter := '';
  SaveDialog.Filter := 'Excel (*.xls) |*.xls|XML (*.xml) |*.xml|Arquivo Texto (*.txt) |*.txt|Página Web (*.html)|*.html|Arquivo separado por virgulas (*.csv)|*.csv';
  SaveDialog.Title := 'Exportar Dados';
  SaveDialog.DefaultExt := 'xls';
  if SaveDialog.Execute then
  begin
    TUtils.ExportarDados(gridRemessas, SaveDialog.FileName);
  end;
end;

procedure Tview_CadastroEntregadores.ExportaLancamentos;
begin
  SaveDialog.Filter := '';
  SaveDialog.Filter := 'Excel (*.xls) |*.xls|XML (*.xml) |*.xml|Arquivo Texto (*.txt) |*.txt|Página Web (*.html)|*.html|Arquivo separado por virgulas (*.csv)|*.csv';
  SaveDialog.Title := 'Exportar Dados';
  SaveDialog.DefaultExt := 'xls';
  if SaveDialog.Execute then
  begin
    TUtils.ExportarDados(gridLancamentos, SaveDialog.FileName);
  end;
end;

procedure Tview_CadastroEntregadores.ExportarExtravios;
begin
  SaveDialog.Filter := '';
  SaveDialog.Filter := 'Excel (*.xls) |*.xls|XML (*.xml) |*.xml|Arquivo Texto (*.txt) |*.txt|Página Web (*.html)|*.html|Arquivo separado por virgulas (*.csv)|*.csv';
  SaveDialog.Title := 'Exportar Dados';
  SaveDialog.DefaultExt := 'xls';
  if SaveDialog.Execute then
  begin
    TUtils.ExportarDados(gridExtravios, SaveDialog.FileName);
  end;
end;

procedure Tview_CadastroEntregadores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if memTableExtravios.Active then memTableExtravios.Close;
  if memTableLancamentos.Active then memTableLancamentos.Close;
  if memTableExpressas.Active then memTableExpressas.Close;
  if memTableEntregadores.Active then memTableEntregadores.Close;
  Action := caFree;
  view_CadastroEntregadores := nil;
end;

procedure Tview_CadastroEntregadores.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if gridExtravios.IsFocused then Exit;
  if gridLancamentos.IsFocused then Exit;
  if gridRemessas.IsFocused then Exit;
  If Key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;
end;

procedure Tview_CadastroEntregadores.FormShow(Sender: TObject);
begin
  labelTitle.Caption := Self.Caption;
  LimpaCampos;
  Data_Sisgef.PopulaClientesEmpresa;
  Data_Sisgef.PopulaBases;
  FAcao := tacIndefinido;
  Modo;
end;

procedure Tview_CadastroEntregadores.Gravar;
var
  entregadores : TEntregadoresExpressasControl;
begin
  try
    entregadores := TEntregadoresExpressasControl.Create;
    entregadores.Entregadores.ID := StrToIntDef(textEditID.Text,0);
    entregadores.Entregadores.Cadastro := buttonEditPessoa.EditValue;
    entregadores.Entregadores.Entregador := maskEditCodigo.EditValue;
    entregadores.Entregadores.Fantasia := textEditNomeFantasia.Text;
    entregadores.Entregadores.Agente := buttonEditCodigoAgente.EditValue;
    if memTableEntregadoresdat_codigo.Value = 0 then
    begin
      entregadores.Entregadores.Data := Now();
    end
    else
    begin
      entregadores.Entregadores.Data := dataCodigo;
    end;
    entregadores.Entregadores.Chave := textEditCodigoERP.Text;
    entregadores.Entregadores.Grupo := buttonEditCodigoFaixa.EditValue;
    entregadores.Entregadores.Verba := currencyEditTicketMedio.Value;
    entregadores.Entregadores.Executor := Global.Parametros.pUser_Name;
    entregadores.Entregadores.Tabela := buttonEditCodigoTabela.EditValue;
    entregadores.Entregadores.Cliente := lookupComboBoxCliente.EditValue;
    entregadores.Entregadores.Manutencao := Now();
    entregadores.Entregadores.Ativo := checkBoxAtivo.EditValue;
    entregadores.Entregadores.Acao := FAcao;
    if not entregadores.Gravar() then
    begin
      Application.MessageBox('Ocorreu um problema ao tentar gravar os dados!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
      Exit;
    end
    else
    begin
      Application.MessageBox('Dados gravados com sucesso!', 'Atenção', MB_OK + MB_ICONINFORMATION);
      FAcao := tacIndefinido;
      LimpaCampos;
      Modo;
      Exit;
    end;
  finally
    entregadores.Free;
  end;
end;

procedure Tview_CadastroEntregadores.gridExtraviosDBTableViewExtraviosNavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  case AButtonIndex of
    16: ExportarExtravios;
  end;
end;

procedure Tview_CadastroEntregadores.gridLancamentosDBTableViewLancamentosNavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
    case AButtonIndex of
    16: ExportaLancamentos;
  end;
end;

procedure Tview_CadastroEntregadores.gridRemessasDBTableViewRemessasNavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
    case AButtonIndex of
    16: ExportaExpressas;
  end;
end;

procedure Tview_CadastroEntregadores.LimpaCampos;
begin
  textEditID.Text := '0';
  buttonEditPessoa.EditValue := 0;
  textEditNomePessoa.Text := '';
  maskEditCodigo.EditValue := 0;
  textEditNomeFantasia.Text := '';
  buttonEditCodigoAgente.EditValue := 0;
  textEditNomeAgente.Text := '';
  dataCodigo := Now();
  textEditCodigoERP.Text := '';
  buttonEditCodigoFaixa.EditValue := 0;
  currencyEditTicketMedio.Value := 0;
  buttonEditCodigoTabela.EditValue := 0;
  textEditDescricaoTabela.Text := '';
  lookupComboBoxCliente.ItemIndex := -1;
  checkBoxAtivo.EditValue := 1;
end;

procedure Tview_CadastroEntregadores.LiveBindingsBindNavigateCancel1Execute(Sender: TObject);
begin
  Facao := tacIndefinido;
  Modo;
end;

procedure Tview_CadastroEntregadores.memTableExpressasCalcFields(DataSet: TDataSet);
begin
  memTableExpressasval_producao.AsFloat := memTableExpressasval_verba_entregador.AsFloat * memTableExpressasqtd_entregas.AsInteger;
end;

procedure Tview_CadastroEntregadores.Modo;
begin
  if FAcao = tacIndefinido then
  begin
    actionNovo.Enabled := True;
    actionEditar.Enabled := False;
    actionLocalizar.Enabled := True;
    actionCancelar.Enabled := False;
    actionGravar.Enabled := False;
    maskEditCodigo.Properties.ReadOnly := True;
    actionLocalizarPessoas.Enabled := False;
    buttonEditPessoa.Properties.ReadOnly := True;
    actionLocalizarAgentes.Enabled := False;
    buttonEditCodigoAgente.Properties.ReadOnly := True;
    textEditCodigoERP.Properties.ReadOnly := True;
    lookupComboBoxCliente.Properties.ReadOnly := True;
    actionPesquisarTabelas.Enabled := False;
    buttonEditCodigoTabela.Properties.ReadOnly := True;
    actionPesquisarFaixas.Enabled := False;
    buttonEditCodigoFaixa.Properties.ReadOnly := True;
    currencyEditTicketMedio.Properties.ReadOnly := True;
    checkBoxAtivo.Properties.ReadOnly := True;
    layoutGroupHistorico.Visible := False;
    if memTableExtravios.Active then memTableExtravios.Close;
    if memTableLancamentos.Active then memTableLancamentos.Close;
    if memTableExpressas.Active then memTableExpressas.Close;
    if memTableEntregadores.Active then memTableEntregadores.Close;
  end
  else if FAcao = tacIncluir then
  begin
    actionNovo.Enabled := False;
    actionEditar.Enabled := False;
    actionLocalizar.Enabled := False;
    actionCancelar.Enabled := True;
    actionGravar.Enabled := True;
    maskEditCodigo.Properties.ReadOnly := False;
    actionLocalizarPessoas.Enabled := True;
    buttonEditPessoa.Properties.ReadOnly := False;
    actionLocalizarAgentes.Enabled:= True;
    buttonEditCodigoAgente.Properties.ReadOnly := False;
    textEditCodigoERP.Properties.ReadOnly := False;
    lookupComboBoxCliente.Properties.ReadOnly := False;
    actionPesquisarTabelas.Enabled := True;
    buttonEditCodigoTabela.Properties.ReadOnly := False;
    actionPesquisarFaixas.Enabled := True;
    buttonEditCodigoFaixa.Properties.ReadOnly := False;
    currencyEditTicketMedio.Properties.ReadOnly := False;
    checkBoxAtivo.Properties.ReadOnly := False;
    layoutGroupHistorico.Visible := False;
  end
  else if FAcao = tacAlterar then
  begin
    actionNovo.Enabled := False;
    actionEditar.Enabled := False;
    actionLocalizar.Enabled := False;
    actionCancelar.Enabled := True;
    actionGravar.Enabled := True;
    maskEditCodigo.Properties.ReadOnly := True;
    actionLocalizarPessoas.Enabled := True;
    buttonEditPessoa.Properties.ReadOnly := False;
    actionLocalizarAgentes.Enabled := True;
    buttonEditCodigoAgente.Properties.ReadOnly := False;
    textEditCodigoERP.Properties.ReadOnly := False;
    lookupComboBoxCliente.Properties.ReadOnly := False;
    actionPesquisarTabelas.Enabled := True;
    buttonEditCodigoTabela.Properties.ReadOnly := False;
    actionPesquisarFaixas.Enabled := True;
    buttonEditCodigoFaixa.Properties.ReadOnly := False;
    currencyEditTicketMedio.Properties.ReadOnly := False;
    checkBoxAtivo.Properties.ReadOnly := False;
    layoutGroupHistorico.Visible := True;
    maskEditCodigo.Properties.ReadOnly := True;
  end
  else if FAcao = tacPesquisa then
  begin
    actionNovo.Enabled := True;
    actionEditar.Enabled := True;
    actionLocalizar.Enabled := True;
    actionCancelar.Enabled := True;
    actionGravar.Enabled := False;
    maskEditCodigo.Properties.ReadOnly := True;
    actionLocalizarPessoas.Enabled := False;
    buttonEditPessoa.Properties.ReadOnly := True;
    actionLocalizarAgentes.Enabled:= False;
    buttonEditCodigoAgente.Properties.ReadOnly := True;
    textEditCodigoERP.Properties.ReadOnly := True;
    lookupComboBoxCliente.Properties.ReadOnly := True;
    actionPesquisarTabelas.Enabled := False;
    buttonEditCodigoTabela.Properties.ReadOnly := True;
    actionPesquisarFaixas.Enabled := False;
    buttonEditCodigoFaixa.Properties.ReadOnly := True;
    currencyEditTicketMedio.Properties.ReadOnly := True;
    checkBoxAtivo.Properties.ReadOnly := True;
    layoutGroupHistorico.Visible := True;
  end;
end;

procedure Tview_CadastroEntregadores.PesquisaAgente;
var
  sSQL: String;
  sWhere: String;
begin
  try
    sSQL := '';
    sWhere := '';
    if not Assigned(View_PesquisarPessoas) then
    begin
      View_PesquisarPessoas := TView_PesquisarPessoas.Create(Application);
    end;
    View_PesquisarPessoas.dxLayoutItem1.Visible := True;
    View_PesquisarPessoas.dxLayoutItem2.Visible := True;
    sSQL := 'select COD_AGENTE as "Código", DES_RAZAO_SOCIAL as Nome, NOM_FANTASIA as Alias, NUM_CNPJ as "CNPJ / CPF" ' +
            'from tbagentes ';
    sWhere := 'where COD_AGENTE like paraN or DES_RAZAO_SOCIAL like "%param%" or NOM_FANTASIA like "%param%" or ' +
              'NUM_CNPJ like "%param%"';
    View_PesquisarPessoas.sSQL := sSQL;
    View_PesquisarPessoas.sWhere := sWhere;
    View_PesquisarPessoas.bOpen := False;
    View_PesquisarPessoas.Caption := 'Pesquisa de Agentes';
    if View_PesquisarPessoas.ShowModal = mrOK then
    begin
      buttonEditCodigoAgente.EditValue := View_PesquisarPessoas.qryPesquisa.Fields[1].AsString;
      textEditNomeAgente.Text := View_PesquisarPessoas.qryPesquisa.Fields[2].AsString;
    end;
  finally
    View_PesquisarPessoas.qryPesquisa.Close;
    View_PesquisarPessoas.tvPesquisa.ClearItems;
    FreeAndNil(View_PesquisarPessoas);
  end;
end;

procedure Tview_CadastroEntregadores.PesquisaEntregadores;
var
  sSQL: String;
  sWhere: String;
  aParam: array of variant;
  sQuery: String;
  entregadores : TEntregadoresExpressasControl;
begin
  try
    sSQL := '';
    sWhere := '';
    entregadores := TEntregadoresExpressasControl.Create;
    if not Assigned(View_PesquisarPessoas) then
    begin
      View_PesquisarPessoas := TView_PesquisarPessoas.Create(Application);
    end;
    View_PesquisarPessoas.dxLayoutItem1.Visible := True;
    View_PesquisarPessoas.dxLayoutItem2.Visible := True;


    sSQL := 'select tbcodigosentregadores.cod_entregador as "Cód. Entregador", ' +
            'tbcodigosentregadores.nom_fantasia as "Nome Entregador", tbcodigosentregadores.des_chave as "Cód. ERP", ' +
            'tbcodigosentregadores.cod_cadastro as "Cód. Cadastro", tbentregadores.des_razao_social as "Nome Cadastro", ' +
            'tbcodigosentregadores.cod_agente as "Cód. Agente" ' +
            'from tbcodigosentregadores ' +
            'left join tbentregadores ' +
            'on tbentregadores.cod_cadastro = tbcodigosentregadores.cod_cadastro ';

    sWhere := 'where tbcodigosentregadores.cod_entregador like paraN or tbcodigosentregadores.nom_fantasia like "%param%" or ' +
              'tbcodigosentregadores.des_chave like "%param%" or tbcodigosentregadores.cod_cadastro like paraN or ' +
              'tbcodigosentregadores.cod_agente like paraN order by tbcodigosentregadores.cod_cadastro desc;';
    View_PesquisarPessoas.sSQL := sSQL;
    View_PesquisarPessoas.sWhere := sWhere;
    View_PesquisarPessoas.bOpen := False;
    View_PesquisarPessoas.Caption := 'Localizar Entregadores';
    if View_PesquisarPessoas.ShowModal = mrOK then
    begin
      sQuery := 'cod_cadastro = ' + View_PesquisarPessoas.qryPesquisa.Fields[4].AsString + ' and ' +
                'cod_entregador = ' + View_PesquisarPessoas.qryPesquisa.Fields[1].AsString;
      SetLength(aParam,2);
      aparam := ['FILTRO', sQuery];
      if memTableEntregadores.Active then
      begin
        memTableEntregadores.Close;
      end;
      memTableEntregadores.CopyDataSet(entregadores.Localizar(aParam));
      Finalize(aParam);
      if not memTableEntregadores.IsEmpty then
      begin
        FAcao := tacPesquisa;
        PopulaCampos;
        PopulaExtravios(memTableEntregadorescod_entregador.AsInteger);
        PopulaLancamentos(memTableEntregadorescod_cadastro.AsInteger);
        PopulaExpressas(memTableEntregadorescod_entregador.AsInteger);
        Modo;
      end;
    end;
  finally
    entregadores.Free;
    View_PesquisarPessoas.qryPesquisa.Close;
    View_PesquisarPessoas.tvPesquisa.ClearItems;
    FreeAndNil(View_PesquisarPessoas);
  end;
end;

procedure Tview_CadastroEntregadores.PesquisaFaixas;
var
  sSQL: String;
  sWhere: String;
begin
  try
    sSQL := '';
    sWhere := '';
    if not Assigned(View_PesquisarPessoas) then
    begin
      View_PesquisarPessoas := TView_PesquisarPessoas.Create(Application);
    end;
    if lookupComboBoxCliente.EditValue= 0 then
    begin
      Application.MessageBox('Informe o Cliente!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if StrToIntDef(buttonEditCodigoTabela.EditText, 0) = 0 then
    begin
      Application.MessageBox('Informe a Tabela de Verbas!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    View_PesquisarPessoas.dxLayoutItem1.Visible := True;
    View_PesquisarPessoas.dxLayoutItem2.Visible := True;
    sSQL := 'select id_grupo as "Faixa", format(val_verba,2,"de_DE") as "Ticket Médio", ' +
            'num_cep_inicial as "CEP Inicial", num_cep_final as "CEP Final", format(qtd_peso_inicial,3,"de_DE") as "Peso Inicial", ' +
            'format(qtd_peso_final,3,"de_DE") as "Peso Final" ' +
            'from expressas_verbas where cod_cliente = ' + VarToStr(lookupComboBoxCliente.EditValue) +
            ' and cod_tipo = ' + VarToStr(buttonEditCodigoTabela.EditValue);
    sWhere := '';
    View_PesquisarPessoas.dxLayoutItem1.Visible := False;
    View_PesquisarPessoas.sSQL := sSQL;
    View_PesquisarPessoas.sWhere := sWhere;
    View_PesquisarPessoas.bOpen := True;
    View_PesquisarPessoas.Caption := 'Pesquisa de Faixas';
    if View_PesquisarPessoas.ShowModal = mrOK then
    begin
      buttonEditCodigoFaixa.EditValue := View_PesquisarPessoas.qryPesquisa.Fields[1].AsInteger;
    end;
  finally
    if View_PesquisarPessoas.qryPesquisa.Active then
    begin
      View_PesquisarPessoas.qryPesquisa.Close;
      View_PesquisarPessoas.tvPesquisa.ClearItems;
    end;
    FreeAndNil(View_PesquisarPessoas);
  end;
end;

procedure Tview_CadastroEntregadores.PesquisaPessoas;
var
  sSQL: String;
  sWhere: String;
begin
  try
    sSQL := '';
    sWhere := '';
    if not Assigned(View_PesquisarPessoas) then
    begin
      View_PesquisarPessoas := TView_PesquisarPessoas.Create(Application);
    end;
    View_PesquisarPessoas.dxLayoutItem1.Visible := True;
    View_PesquisarPessoas.dxLayoutItem2.Visible := True;
    sSQL := 'select COD_CADASTRO as "Código", DES_RAZAO_SOCIAL as Nome, NUM_IE as "CNPJ / CPF", NUM_CNPJ as "CNPJ / CPF" ' +
            'from tbentregadores ';
    sWhere := 'where COD_CADASTRO like paraN or DES_RAZAO_SOCIAL like "%param%" or NUM_IE like "%param%" or ' +
              'NUM_CNPJ like "%param%"';
    View_PesquisarPessoas.sSQL := sSQL;
    View_PesquisarPessoas.sWhere := sWhere;
    View_PesquisarPessoas.bOpen := False;
    View_PesquisarPessoas.Caption := 'Pesquisa de Tabelas de Verbas';
    if View_PesquisarPessoas.ShowModal = mrOK then
    begin
      buttonEditPessoa.EditValue := View_PesquisarPessoas.qryPesquisa.Fields[1].AsString;
      textEditNomePessoa.Text := View_PesquisarPessoas.qryPesquisa.Fields[2].AsString;
    end;
  finally
    View_PesquisarPessoas.qryPesquisa.Close;
    View_PesquisarPessoas.tvPesquisa.ClearItems;
    FreeAndNil(View_PesquisarPessoas);
  end;
end;

procedure Tview_CadastroEntregadores.PesquisaTabelas;
var
  sSQL: String;
  sWhere: String;
begin
  try
    sSQL := '';
    sWhere := '';
    if not Assigned(View_PesquisarPessoas) then
    begin
      View_PesquisarPessoas := TView_PesquisarPessoas.Create(Application);
    end;
    View_PesquisarPessoas.dxLayoutItem1.Visible := True;
    View_PesquisarPessoas.dxLayoutItem2.Visible := True;
    sSQL := 'select cod_tipo as "Código", des_tipo as "Descrição" ' +
            'from expressas_tipos_verbas ';
    sWhere := 'where cod_tipo like paraN or des_tipo like "%param%"';

    View_PesquisarPessoas.sSQL := sSQL;
    View_PesquisarPessoas.sWhere := sWhere;
    View_PesquisarPessoas.bOpen := True;
    View_PesquisarPessoas.Caption := 'Pesquisa de Tabelas';
    if View_PesquisarPessoas.ShowModal = mrOK then
    begin
      buttonEditCodigoTabela.EditValue := View_PesquisarPessoas.qryPesquisa.Fields[1].AsString;
      textEditDescricaoTabela.Text := View_PesquisarPessoas.qryPesquisa.Fields[2].AsString;
    end;
  finally
    View_PesquisarPessoas.qryPesquisa.Close;
    View_PesquisarPessoas.tvPesquisa.ClearItems;
    FreeAndNil(View_PesquisarPessoas);
  end;
end;

procedure Tview_CadastroEntregadores.PopulaCampos;
begin
  textEditID.Text := memTableEntregadoresid_entregador.AsString;
  buttonEditPessoa.EditValue := memTableEntregadorescod_cadastro.AsInteger;
  textEditNomePessoa.Text := RetornaNomePessoa(memTableEntregadorescod_cadastro.AsInteger);
  maskEditCodigo.EditValue := memTableEntregadorescod_entregador.AsInteger;
  textEditNomeFantasia.Text := memTableEntregadoresnom_fantasia.AsString;
  buttonEditCodigoAgente.EditValue := memTableEntregadorescod_agente.AsInteger;
  textEditNomeAgente.Text := RetornaNomeAgente(memTableEntregadorescod_agente.AsInteger);
  dataCodigo := memTableEntregadoresdat_codigo.AsDateTime;
  textEditCodigoERP.Text := memTableEntregadoresdes_chave.AsString;
  buttonEditCodigoFaixa.EditValue := memTableEntregadorescod_grupo.AsInteger;
  currencyEditTicketMedio.Value := memTableEntregadoresval_verba.AsFloat;
  buttonEditCodigoTabela.EditValue := memTableEntregadorescod_tabela.AsInteger;
  textEditDescricaoTabela.Text := RetornaDescricaoTabela(memTableEntregadorescod_tabela.AsInteger);
  lookupComboBoxCliente.EditValue := memTableEntregadorescod_cliente.AsInteger;
  checkBoxAtivo.EditValue := memTableEntregadoresdom_ativo.AsInteger;
end;

procedure Tview_CadastroEntregadores.PopulaExpressas(iEntregador: integer);
var
  entregas : TEntregasControl;
begin
  try
    entregas := TEntregasControl.Create;
    if memTableExpressas.Active then
    begin
      memTableExpressas.Close;
    end;
    memTableExpressas.CopyDataSet(entregas.GetAReceber(iEntregador));
  finally
    entregas.Free;
  end;
end;

procedure Tview_CadastroEntregadores.PopulaExtravios(iEntregador: integer);
var
  extravios : TExtraviosMultasControl;
  aParam: array of variant;
begin
  try
    extravios := TExtraviosMultasControl.Create;
    SetLength(aParam,1);
    aParam := ['ENTREGADOR', iEntregador];
    if memTableExtravios.Active then
    begin
      memTableExtravios.Close;
    end;
    memTableExtravios.CopyDataSet(extravios.Localizar(aParam));
    Finalize(aParam);
  finally
    extravios.Free;
  end;
end;

procedure Tview_CadastroEntregadores.PopulaLancamentos(iCadastro: integer);
var
  lancamentos : TLancamentosControl;
  aParam : array of Variant;
begin
  try
    lancamentos := TLancamentosControl.Create;
    if iCadastro = 0 then
    begin
      Exit;
    end;
    SetLength(aParam,2);
    aParam := ['CADASTRO', iCadastro];
    if memTableLancamentos.Active then
    begin
      memTableLancamentos.Close;
    end;
    memTableLancamentos.Data := lancamentos.Localizar(aParam).Data;
    Finalize(aParam);
  finally
    lancamentos.Free;
  end;
end;

function Tview_CadastroEntregadores.RetornaDescricaoTabela(iCodigo: integer): string;
var
  tabela : TTiposVerbasExpressasControl;
  sRetorno: String;
begin
  try
    Result := '';
    sRetorno := '';
    tabela := TTiposVerbasExpressasControl.Create;
    if icodigo <> 0 then
    begin
      sRetorno := tabela.GetField('des_tipo', 'cod_tipo', iCodigo.ToString)
    end;
    if sRetorno.IsEmpty then
    begin
      sRetorno := 'NONE';
    end;
    Result := sRetorno;
  finally
    tabela.free;
  end;
end;

function Tview_CadastroEntregadores.RetornaNomeAgente(iCodigo: integer): String;
var
  base : TBasesControl;
  sRetorno: String;
begin
  try
    Result := '';
    sRetorno := '';
    base := TBasesControl.Create;
    if icodigo <> 0 then
    begin
      sRetorno := base.GetField('NOM_FANTASIA', 'COD_AGENTE', iCodigo.ToString)
    end;
    if sRetorno.IsEmpty then
    begin
      sRetorno := 'NONE';
    end;
    Result := sRetorno;
  finally
    base.free;
  end;
end;

function Tview_CadastroEntregadores.RetornaNomePessoa(iCodigo: integer): String;
var
  cadastro : TCadastroControl;
  sRetorno: String;
begin
  try
    Result := '';
    sRetorno := '';
    cadastro := TCadastroControl.Create;
    if icodigo <> 0 then
    begin
      sRetorno := cadastro.GetField('DES_RAZAO_SOCIAL', 'COD_CADASTRO', iCodigo.ToString)
    end;
    if sRetorno.IsEmpty then
    begin
      sRetorno := 'NONE';
    end;
    Result := sRetorno;
  finally
    cadastro.free;
  end;
end;

function Tview_CadastroEntregadores.RetornaValorFaixa(iCliente,iTabela,iFaixa: Integer): String;
var
  verba : TVerbasExpressasControl;
  sRetorno: String;
begin
  try
    Result := '';
    sRetorno := '';
    verba := TVerbasExpressasControl.Create;
    sRetorno := verba.RetornaValorFaixa(iCliente,iTabela,iFaixa);
    if sRetorno.IsEmpty then
    begin
      sRetorno := '0,00';
    end;
    Result := sRetorno;
  finally
    verba.Free
  end;
end;

function Tview_CadastroEntregadores.ValidaDados: boolean;
var
  entregadores: TEntregadoresExpressasControl;
  tipos: TTiposVerbasExpressasControl;
  verbas : TVerbasExpressasControl;
  aParam : array of variant;
begin
  try
    Result := False;
    entregadores := TEntregadoresExpressasControl.Create;
    tipos := TTiposVerbasExpressasControl.Create;
    verbas := TVerbasExpressasControl.Create;
    if maskEditCodigo.EditValue = 0 then
    begin
      Application.MessageBox('Informe o código do entregador!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if textEditNomeFantasia.Text = '' then
    begin
      Application.MessageBox('Informe o noe Fantasia!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if buttonEditPessoa.EditValue = 0 then
    begin
      if Application.MessageBox('Código da Pessoa não informado. Continuar?', 'Atenção', MB_YESNO + MB_ICONQUESTION) = IDNO then
      begin
        Exit;
      end;
    end;
    if buttonEditCodigoAgente.EditValue = 0 then
    begin
      Application.MessageBox('Informe o código do Agente!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if textEditCodigoERP.Text = '' then
    begin
      Application.MessageBox('Informe o código ERP!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if lookupComboBoxCliente.ItemIndex = -1 then
    begin
      Application.MessageBox('Informe o código do cliente!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if Facao = tacIncluir then
    begin
      if entregadores.EntregadorExiste(1,maskEditCodigo.EditValue, lookupComboBoxCliente.EditValue, '') then
      begin
        Application.MessageBox('Código de entregador já cadastrado!', 'Atenção', MB_OK + MB_ICONWARNING);
        Exit;
      end;
      if entregadores.GetField('nom_fantasia','nom_fantasia',QuotedStr(textEditNomeFantasia.Text)) <> '' then
      begin
        if Application.MessageBox('Nome fantasia já existe. Continuar com este mesmo?', 'Atenção', MB_YESNO + MB_ICONQUESTION) = IDNO then
        begin
          Exit;
        end;
      end;
      if entregadores.EntregadorExiste(2,maskEditCodigo.EditValue, 0, textEditCodigoERP.Text) then
      begin
        Application.MessageBox('Código ERP já cadastrado!', 'Atenção', MB_OK + MB_ICONWARNING);
        Exit;
      end;
    end;
    if FAcao = tacAlterar then
    begin
      SetLength(aParam,2);
      aParam := ['ID',StrTOIntDef(textEditID.Text, 0)];
      if entregadores.LocalizarExato(aParam) then
      begin
        if entregadores.Entregadores.Cadastro <> buttonEditPessoa.EditValue then
        begin
          if buttonEditPessoa.EditValue <> 0 then
          begin
            if Application.MessageBox('Entregador já está vinculado a outra pessoa. Conrtinuar ?', 'Atenção', MB_YESNO + MB_ICONQUESTION) = IDNO then
            begin
              Exit;
            end;
          end;
        end;
      end;
    end;
    if buttonEditCodigoTabela.EditValue <> 0 then
    begin
      if tipos.GetField('cod_tipo','cod_tipo',VarToStr(buttonEditCodigoTabela.EditValue)) = '' then
      begin
        Application.MessageBox('Código de tabela não cadastrado!', 'Atenção', MB_OK + MB_ICONWARNING);
        Exit;
      end;
      if buttonEditCodigoFaixa.EditValue <> 0 then
      begin
        SetLength(aParam,2);
        aParam := ['FILTRO', 'cod_cliente = ' + VarToStr(lookupComboBoxCliente.EditValue) + ' and cod_tipo = ' +
                  buttonEditCodigoTabela.EditText + ' and id_grupo = ' + buttonEditCodigoFaixa.EditText];
        if verbas.Localizar(aParam).IsEmpty then
        begin
          Application.MessageBox('Faixa de tabela inexistente!', 'Atenção', MB_OK + MB_ICONWARNING);
          Exit;
        end;
      end;
    end;
    if (buttonEditCodigoTabela.EditValue = 0) and (buttonEditCodigoFaixa.EditValue = 0) and (currencyEditTicketMedio.Value = 0) then
    begin
      if Application.MessageBox('Nenhum tipo de verba foi informada. Continuar?','Atenção', MB_YESNO + MB_ICONQUESTION) = IDNO then
      begin
        Exit;
      end;
    end;
    Result := True;
  finally
    if Length(aParam) <> 0 then
    begin
      Finalize(aParam);
    end;
    entregadores.Free;
    tipos.Free;
    verbas.Free;
  end;
end;

end.
