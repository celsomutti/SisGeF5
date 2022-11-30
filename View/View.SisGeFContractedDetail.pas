unit View.SisGeFContractedDetail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxDBEdit, cxCheckBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxNavigator, cxDBNavigator,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, System.Actions,
  Vcl.ActnList, dxBar, cxMemo, Common.ENum, Common.Utils, Control.Bancos, Control.Cadastro, Control.Estados,
  Control.CadastroEnderecos, Control.CadastroContatos, System.DateUtils, dxLayoutLookAndFeels, dxLayoutControlAdapters, Vcl.Menus,
  Vcl.StdCtrls, cxButtons ;

type
  Tview_SisGeFContractedDetail = class(TForm)
    layoutControlPadraoGroup_Root: TdxLayoutGroup;
    layoutControlPadrao: TdxLayoutControl;
    maskEditID: TcxMaskEdit;
    layoutItemMaskID: TdxLayoutItem;
    comboBoxTipoPessoa: TcxComboBox;
    layoutItemComboBoxTipoPessoa: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    maskEditCPCNPJ: TcxMaskEdit;
    layoutItemCPFCNPJ: TdxLayoutItem;
    textEditNome: TcxTextEdit;
    layoutItemTextEditNome: TdxLayoutItem;
    layoutControlDadosGroup_Root: TdxLayoutGroup;
    layoutControlDados: TdxLayoutControl;
    layoutItemDadosGeral: TdxLayoutItem;
    layoutGroupPessoaFisica: TdxLayoutGroup;
    textEditRG: TcxTextEdit;
    layoutItemRG: TdxLayoutItem;
    textEditExpedidor: TcxTextEdit;
    layoutItemExpedidorRG: TdxLayoutItem;
    dateEditDataRG: TcxDateEdit;
    layoutItemDataRG: TdxLayoutItem;
    lookupComboBoxUFRG: TcxLookupComboBox;
    layoutItemUFRG: TdxLayoutItem;
    dateEditNascimento: TcxDateEdit;
    layoutItemNascimento: TdxLayoutItem;
    layoutGroupFisica1: TdxLayoutGroup;
    layoutGroupFisica2: TdxLayoutGroup;
    textEditNomePai: TcxTextEdit;
    layoutItemNomePai: TdxLayoutItem;
    textEditNomeMae: TcxTextEdit;
    layoutItemNomeMae: TdxLayoutItem;
    layoutGroupFisica3: TdxLayoutGroup;
    textEditNaturalidade: TcxTextEdit;
    layoutItemNaturalidade: TdxLayoutItem;
    lookupComboBoxNaturalidade: TcxLookupComboBox;
    layoutItemUFNaturalidade: TdxLayoutItem;
    layoutGroupFisica4: TdxLayoutGroup;
    textEditSegurancaCNH: TcxTextEdit;
    layoutItemCodigoSeguranca: TdxLayoutItem;
    textEditNumeroCNH: TcxTextEdit;
    layoutItemNumeroCNH: TdxLayoutItem;
    textEditRegistroCNH: TcxTextEdit;
    layoutItemRegistroCNH: TdxLayoutItem;
    textEditCategoriaCNH: TcxTextEdit;
    layoutItemCategoriaCNH: TdxLayoutItem;
    layoutGroupFisica5: TdxLayoutGroup;
    dateEditEmissaoCNH: TcxDateEdit;
    layoutItemDataEmissao: TdxLayoutItem;
    dateEditValidadeCNH: TcxDateEdit;
    layoutItemValidadeCNH: TdxLayoutItem;
    dateEditPrimeiraCNH: TcxDateEdit;
    layoutItemPrimeiraCNH: TdxLayoutItem;
    lookupComboBoxUFCNH: TcxLookupComboBox;
    layoutItemUFCNH: TdxLayoutItem;
    layoutGroupPessoaJuridica: TdxLayoutGroup;
    layoutGroupJuridica1: TdxLayoutGroup;
    textEditNomeFantasia: TcxTextEdit;
    layoutItemNomeFantasia: TdxLayoutItem;
    layoutGroupJuridica2: TdxLayoutGroup;
    textEditIE: TcxTextEdit;
    layoutItemIE: TdxLayoutItem;
    textEditIEST: TcxTextEdit;
    layoutItemIEST: TdxLayoutItem;
    textEditIM: TcxTextEdit;
    layoutItemIM: TdxLayoutItem;
    textEditCNAE: TcxTextEdit;
    layoutItemCNAE: TdxLayoutItem;
    comboBoxCRT: TcxComboBox;
    layoutItemCRT: TdxLayoutItem;
    layoutControlComplementoGroup_Root: TdxLayoutGroup;
    layoutControlComplemento: TdxLayoutControl;
    layoutItemComplemento: TdxLayoutItem;
    layoutGroupEnderecos: TdxLayoutGroup;
    layoutGroupContatos: TdxLayoutGroup;
    layoutGroupDadosBancarios: TdxLayoutGroup;
    memTableEnderecos: TFDMemTable;
    memTableEnderecosid_cadastro: TIntegerField;
    memTableEnderecosdes_tipo_endereco: TStringField;
    memTableEnderecosnum_cep: TStringField;
    memTableEnderecosdes_logradouro: TStringField;
    memTableEnderecosnum_logradouro: TStringField;
    memTableEnderecosdes_complemento: TStringField;
    memTableEnderecosnom_bairro: TStringField;
    memTableEnderecosnom_cidade: TStringField;
    memTableEnderecosuf_estado: TStringField;
    dsEnderecos: TDataSource;
    layoutGroupEndereco1: TdxLayoutGroup;
    dbComboBoxTipoEndereco: TcxDBComboBox;
    layoutItemTipoEndereco: TdxLayoutItem;
    LayoutGroupEndereco2: TdxLayoutGroup;
    dbMaskEditCEP: TcxDBMaskEdit;
    layoutItemCEP: TdxLayoutItem;
    dbTextEditEndereco: TcxDBTextEdit;
    layoutItemEndereco: TdxLayoutItem;
    dbTextEditNumero: TcxDBTextEdit;
    layoutItemNumero: TdxLayoutItem;
    dbTextEditComplemento: TcxDBTextEdit;
    layoutItemComplementoEndewreco: TdxLayoutItem;
    layoutGroupEndereco3: TdxLayoutGroup;
    dbTextEditBairro: TcxDBTextEdit;
    layoutItemBairro: TdxLayoutItem;
    dbTextEditCidade: TcxDBTextEdit;
    layoutItemCidade: TdxLayoutItem;
    dbLookupComboBoxUFEndereco: TcxDBLookupComboBox;
    layoutItemUFEndereco: TdxLayoutItem;
    memTableEnderecosseq_endereco: TIntegerField;
    memTableEnderecosdom_correspondencia: TIntegerField;
    memTableEnderecosdes_referencia: TStringField;
    layoutGroupEndereco4: TdxLayoutGroup;
    dbTextEditReferencia: TcxDBTextEdit;
    layoutItemReferencia: TdxLayoutItem;
    dbNavigatorEnderecos: TcxDBNavigator;
    layoutItemNavegadorEndereco: TdxLayoutItem;
    gridContatosDBTableView1: TcxGridDBTableView;
    gridContatosLevel1: TcxGridLevel;
    gridContatos: TcxGrid;
    layoutItemContatos: TdxLayoutItem;
    memTableContatos: TFDMemTable;
    memTableContatosid: TIntegerField;
    memTableContatosseq_contato: TIntegerField;
    memTableContatosdes_contato: TStringField;
    memTableContatosnum_telefone: TStringField;
    memTableContatosdes_email: TStringField;
    dsContatos: TDataSource;
    gridContatosDBTableView1id: TcxGridDBColumn;
    gridContatosDBTableView1seq_contato: TcxGridDBColumn;
    gridContatosDBTableView1des_contato: TcxGridDBColumn;
    gridContatosDBTableView1num_telefone: TcxGridDBColumn;
    gridContatosDBTableView1des_email: TcxGridDBColumn;
    LayoutGroupDadosBancarios1: TdxLayoutGroup;
    comboBoxFormaPagamento: TcxComboBox;
    layoutItemFormaPagamento: TdxLayoutItem;
    comboBoxTipoConta: TcxComboBox;
    layoutItemTipoConta: TdxLayoutItem;
    layoutGroupDadosBancarios2: TdxLayoutGroup;
    lookupComboBoxBanco: TcxLookupComboBox;
    layoutItemBanco: TdxLayoutItem;
    textEditAgencia: TcxTextEdit;
    layoutItemAgencia: TdxLayoutItem;
    textEditConta: TcxTextEdit;
    layoutItemConta: TdxLayoutItem;
    layoutGroupDadosBancarios3: TdxLayoutGroup;
    textEditFavorecido: TcxTextEdit;
    layoutItemFavorecido: TdxLayoutItem;
    maskEditCPFCNPJFavorecido: TcxMaskEdit;
    layoutItemCPFCNPJFavorecido: TdxLayoutItem;
    LayoutGrouPDadosBancarios4: TdxLayoutGroup;
    textEditChavePIX: TcxTextEdit;
    layoutItemChavePIX: TdxLayoutItem;
    actionListCadastro: TActionList;
    actionIncluir: TAction;
    actionEditar: TAction;
    actionLocalizar: TAction;
    actionCancelar: TAction;
    actionGravar: TAction;
    actionDocumentosVencidos: TAction;
    actionVencimentoGR: TAction;
    actionFechar: TAction;
    layoutGroupMaster: TdxLayoutGroup;
    layoutGroupCadastro: TdxLayoutGroup;
    actionFichaDIRECT: TAction;
    actionSolicitarGR: TAction;
    actionContrato: TAction;
    layoutGroupComplementos: TdxLayoutGroup;
    layoutGroupGR: TdxLayoutGroup;
    checkBoxStatusGR: TcxCheckBox;
    layoutItemStatusGR: TdxLayoutItem;
    textEditEmpresaGR: TcxTextEdit;
    layoutItemEmpresaGR: TdxLayoutItem;
    dateEditValidadeGR: TcxDateEdit;
    layoutItemValidadeGR: TdxLayoutItem;
    textEditNumeroConsultaGR: TcxTextEdit;
    layoutItemNumeroConsultaGR: TdxLayoutItem;
    layoutGroupObs: TdxLayoutGroup;
    memoObservacoes: TcxMemo;
    layoutItemObservacoes: TdxLayoutItem;
    memTableEstados: TFDMemTable;
    memTableEstadosuf_estado: TStringField;
    memTableEstadosnom_estado: TStringField;
    memTableBancos: TFDMemTable;
    memTableBancoscod_banco: TStringField;
    memTableBancosnom_banco: TStringField;
    dsEstados: TDataSource;
    dsBancos: TDataSource;
    dbCheckBoxCorrespondencia: TcxDBCheckBox;
    layoutItemCorrespondencia: TdxLayoutItem;
    layoutGroupOptions: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    actionAnexarDocumentos: TAction;
    procedure comboBoxTipoPessoaPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actionIncluirExecute(Sender: TObject);
    procedure actionLocalizarExecute(Sender: TObject);
    procedure actionEditarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionCancelarExecute(Sender: TObject);
  private
    { Private declarations }
    procedure ClearFields;
    procedure SetupFields(FCadastro: TCadastroControl);
    procedure PopulaBancos;
    procedure PopulaEstados;
    procedure PesquisaCadastro;
    procedure PopulaEnderecos(iCadastro: Integer);
    procedure PopulaContatos(iCadastro: Integer);
    procedure Modo;
    function ValidaDados(): boolean;
  public
    { Public declarations }
  end;

var
  view_SisGeFContractedDetail: Tview_SisGeFContractedDetail;
  FAcao : TAcao;

implementation

{$R *.dfm}

uses View.PesquisarPessoas, Data.SisGeF;

procedure Tview_SisGeFContractedDetail.actionCancelarExecute(Sender: TObject);
begin
  if FAcao <> tacIndefinido then
  begin
    FAcao := tacIndefinido;
    Modo;
  end;
end;

procedure Tview_SisGeFContractedDetail.actionEditarExecute(Sender: TObject);
begin
  Facao := tacAlterar;
  Modo;
  comboBoxTipoPessoa.SetFocus;
end;

procedure Tview_SisGeFContractedDetail.actionIncluirExecute(Sender: TObject);
begin
  FAcao := tacIncluir;
  Modo;
  comboBoxTipoPessoa.SetFocus;
end;

procedure Tview_SisGeFContractedDetail.actionLocalizarExecute(Sender: TObject);
begin
  PesquisaCadastro;
end;

procedure Tview_SisGeFContractedDetail.ClearFields;
begin
  maskEditID.EditValue := 0;
  comboBoxTipoPessoa.ItemIndex := 0;
  maskEditCPCNPJ.Clear;
  textEditNome.Clear;
  textEditRG.Clear;
  textEditExpedidor.Clear;
  dateEditDataRG.Clear;
  lookupComboBoxUFRG.Clear;
  dateEditNascimento.Clear;
  textEditNomePai.Clear;
  textEditNomeMae.Clear;
  textEditNaturalidade.Clear;
  lookupComboBoxNaturalidade.Clear;
  textEditSegurancaCNH.Clear;
  textEditNumeroCNH.Clear;
  textEditRegistroCNH.Clear;
  textEditCategoriaCNH.Clear;
  dateEditEmissaoCNH.Clear;
  dateEditValidadeCNH.Clear;
  dateEditPrimeiraCNH.Clear;
  lookupComboBoxUFCNH.Clear;
  textEditNomeFantasia.Clear;
  textEditIE.Clear;
  textEditIEST.Clear;
  textEditIM.Clear;
  textEditCNAE.Clear;
  comboBoxCRT.ItemIndex := 0;
  if memTableEnderecos.Active then memTableEnderecos.Close;
  if memTableContatos.Active then memTableContatos.Close;
  comboBoxFormaPagamento.ItemIndex := 0;
  comboBoxTipoConta.ItemIndex := 0;
  lookupComboBoxBanco.Clear;
  textEditAgencia.Clear;
  textEditConta.Clear;
  textEditFavorecido.Clear;
  maskEditCPFCNPJFavorecido.Clear;
  textEditChavePIX.Clear;
  checkBoxStatusGR.Checked := False;
  textEditEmpresaGR.Clear;
  dateEditValidadeGR.Clear;
  textEditNumeroConsultaGR.Clear;
  memoObservacoes.Lines.Clear;
end;

procedure Tview_SisGeFContractedDetail.comboBoxTipoPessoaPropertiesChange(Sender: TObject);
begin
  if comboBoxTipoPessoa.ItemIndex = 1 then
  begin
    layoutGroupPessoaFisica.MakeVisible;
    maskEditCPFCNPJFavorecido.Properties.ReadOnly := False;
    maskEditCPCNPJ.Properties.EditMask := '!000\.000\.000\-00;1; ';
    maskEditCPCNPJ.Properties.IgnoreMaskBlank := True;
    maskEditCPFCNPJFavorecido.Properties.EditMask := '!000\.000\.000\-00;1; ';
    maskEditCPFCNPJFavorecido.Properties.IgnoreMaskBlank := True;
  end
  else if comboBoxTipoPessoa.ItemIndex = 2 then
  begin
    layoutGroupPessoaJuridica.MakeVisible;
    maskEditCPFCNPJFavorecido.Properties.ReadOnly := False;
    maskEditCPCNPJ.Properties.EditMask := '!00\.000\.000\/0000\-00;1; ';
    maskEditCPCNPJ.Properties.IgnoreMaskBlank := True;
    maskEditCPFCNPJFavorecido.Properties.EditMask := '!000\.000\.000\-00;1; ';
    maskEditCPFCNPJFavorecido.Properties.IgnoreMaskBlank := True;
  end
  else
  begin
    layoutGroupPessoaFisica.MakeVisible;
    maskEditCPFCNPJFavorecido.Properties.ReadOnly := True;
    maskEditCPCNPJ.Properties.EditMask := '!000\.000\.000\-00;1; ';
    maskEditCPCNPJ.Properties.IgnoreMaskBlank := True;
    maskEditCPFCNPJFavorecido.Properties.EditMask := '!000\.000\.000\-00;1; ';
    maskEditCPFCNPJFavorecido.Properties.IgnoreMaskBlank := True;
  end;

end;

procedure Tview_SisGeFContractedDetail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if memTableEnderecos.Active then memTableEnderecos.Close;
  if memTableContatos.Active then memTableContatos.Close;
  Action := caFree;
  view_SisGeFContractedDetail := nil;
end;

procedure Tview_SisGeFContractedDetail.FormShow(Sender: TObject);
begin
  PopulaBancos;
  PopulaEstados;
  FAcao := tacIndefinido;
  Modo;
end;

procedure Tview_SisGeFContractedDetail.Modo;
begin

  if FAcao = tacIndefinido then
  begin
    ClearFields;
    actionIncluir.Enabled := True;
    actionEditar.Enabled := False;
    actionLocalizar.Enabled := True;
    actionCancelar.Enabled := False;
    actionGravar.Enabled := False;
    actionDocumentosVencidos.Enabled := True;
    actionVencimentoGR.Enabled := True;
    actionFichaDIRECT.Enabled := False;
    actionSolicitarGR.Enabled := False;
    actionContrato.Enabled := False;
    actionAnexarDocumentos.Enabled := False;
    maskEditID.Properties.ReadOnly := True;
    comboBoxTipoPessoa.Properties.ReadOnly := True;
    maskEditCPCNPJ.Properties.ReadOnly := True;
    textEditNome.Properties.ReadOnly := True;
    textEditRG.Properties.ReadOnly := True;
    textEditExpedidor.Properties.ReadOnly := True;
    dateEditDataRG.Properties.ReadOnly := True;
    dateEditNascimento.Properties.ReadOnly := True;
    textEditNomePai.Properties.ReadOnly := True;
    textEditNomeMae.Properties.ReadOnly := True;
    textEditNaturalidade.Properties.ReadOnly := True;
    lookupComboBoxNaturalidade.Properties.ReadOnly := True;
    textEditSegurancaCNH.Properties.ReadOnly := True;
    textEditNumeroCNH.Properties.ReadOnly := True;
    textEditRegistroCNH.Properties.ReadOnly := True;
    textEditCategoriaCNH.Properties.ReadOnly := True;
    dateEditEmissaoCNH.Properties.ReadOnly := True;
    dateEditValidadeCNH.Properties.ReadOnly := True;
    dateEditPrimeiraCNH.Properties.ReadOnly := True;
    lookupComboBoxUFCNH.Properties.ReadOnly := True;
    textEditNomeFantasia.Properties.ReadOnly := True;
    textEditIE.Properties.ReadOnly := True;
    textEditIEST.Properties.ReadOnly := True;
    textEditIM.Properties.ReadOnly := True;
    textEditCNAE.Properties.ReadOnly := True;
    comboBoxCRT.Properties.ReadOnly := True;
    comboBoxFormaPagamento.Properties.ReadOnly := True;
    comboBoxTipoConta.Properties.ReadOnly := True;
    lookupComboBoxBanco.Properties.ReadOnly := True;
    textEditAgencia.Properties.ReadOnly := True;
    textEditConta.Properties.ReadOnly := True;
    textEditFavorecido.Properties.ReadOnly := True;
    maskEditCPFCNPJFavorecido.Properties.ReadOnly := True;
    textEditChavePIX.Properties.ReadOnly := True;
    checkBoxStatusGR.Properties.ReadOnly := True;
    textEditEmpresaGR.Properties.ReadOnly := True;
    dateEditValidadeGR.Properties.ReadOnly := True;
    textEditNumeroConsultaGR.Properties.ReadOnly := True;
    memoObservacoes.Properties.ReadOnly := True;
    dsEnderecos.AutoEdit := False;
    dsContatos.AutoEdit := False;
  end
  else if FAcao = tacIncluir then
  begin
    ClearFields;
    actionIncluir.Enabled := False;
    actionEditar.Enabled := False;
    actionLocalizar.Enabled := False;
    actionCancelar.Enabled := True;
    actionGravar.Enabled := True;
    actionDocumentosVencidos.Enabled := False;
    actionVencimentoGR.Enabled := False;
    actionFichaDIRECT.Enabled := False;
    actionSolicitarGR.Enabled := False;
    actionContrato.Enabled := False;
    actionAnexarDocumentos.Enabled := False;
    maskEditID.Properties.ReadOnly := True;
    comboBoxTipoPessoa.Properties.ReadOnly := False;
    maskEditCPCNPJ.Properties.ReadOnly := True;
    textEditNome.Properties.ReadOnly := False;
    textEditRG.Properties.ReadOnly := False;
    textEditExpedidor.Properties.ReadOnly := False;
    dateEditDataRG.Properties.ReadOnly := False;
    dateEditNascimento.Properties.ReadOnly := False;
    textEditNomePai.Properties.ReadOnly := False;
    textEditNomeMae.Properties.ReadOnly := False;
    textEditNaturalidade.Properties.ReadOnly := False;
    lookupComboBoxNaturalidade.Properties.ReadOnly := False;
    textEditSegurancaCNH.Properties.ReadOnly := False;
    textEditNumeroCNH.Properties.ReadOnly := False;
    textEditRegistroCNH.Properties.ReadOnly := False;
    textEditCategoriaCNH.Properties.ReadOnly := False;
    dateEditEmissaoCNH.Properties.ReadOnly := False;
    dateEditValidadeCNH.Properties.ReadOnly := False;
    dateEditPrimeiraCNH.Properties.ReadOnly := False;
    lookupComboBoxUFCNH.Properties.ReadOnly := False;
    textEditNomeFantasia.Properties.ReadOnly := False;
    textEditIE.Properties.ReadOnly := False;
    textEditIEST.Properties.ReadOnly := False;
    textEditIM.Properties.ReadOnly := False;
    textEditCNAE.Properties.ReadOnly := False;
    comboBoxCRT.Properties.ReadOnly := False;
    comboBoxFormaPagamento.Properties.ReadOnly := False;
    comboBoxTipoConta.Properties.ReadOnly := False;
    lookupComboBoxBanco.Properties.ReadOnly := False;
    textEditAgencia.Properties.ReadOnly := False;
    textEditConta.Properties.ReadOnly := False;
    textEditFavorecido.Properties.ReadOnly := False;
    maskEditCPFCNPJFavorecido.Properties.ReadOnly := False;
    textEditChavePIX.Properties.ReadOnly := False;
    checkBoxStatusGR.Properties.ReadOnly := False;
    textEditEmpresaGR.Properties.ReadOnly := False;
    dateEditValidadeGR.Properties.ReadOnly := False;
    textEditNumeroConsultaGR.Properties.ReadOnly := False;
    memoObservacoes.Properties.ReadOnly := False;
    dsEnderecos.AutoEdit := True;
    dsContatos.AutoEdit := True;
  end
  else if FAcao = tacAlterar then
  begin
    actionIncluir.Enabled := False;
    actionEditar.Enabled := False;
    actionLocalizar.Enabled := False;
    actionCancelar.Enabled := True;
    actionGravar.Enabled := True;
    actionDocumentosVencidos.Enabled := False;
    actionVencimentoGR.Enabled := False;
    actionFichaDIRECT.Enabled := False;
    actionSolicitarGR.Enabled := False;
    actionContrato.Enabled := False;
    actionAnexarDocumentos.Enabled := True;
    maskEditID.Properties.ReadOnly := True;
    comboBoxTipoPessoa.Properties.ReadOnly := True;
    maskEditCPCNPJ.Properties.ReadOnly := True;
    textEditNome.Properties.ReadOnly := False;
    textEditRG.Properties.ReadOnly := False;
    textEditExpedidor.Properties.ReadOnly := False;
    dateEditDataRG.Properties.ReadOnly := False;
    dateEditNascimento.Properties.ReadOnly := False;
    textEditNomePai.Properties.ReadOnly := False;
    textEditNomeMae.Properties.ReadOnly := False;
    textEditNaturalidade.Properties.ReadOnly := False;
    lookupComboBoxNaturalidade.Properties.ReadOnly := False;
    textEditSegurancaCNH.Properties.ReadOnly := False;
    textEditNumeroCNH.Properties.ReadOnly := False;
    textEditRegistroCNH.Properties.ReadOnly := False;
    textEditCategoriaCNH.Properties.ReadOnly := False;
    dateEditEmissaoCNH.Properties.ReadOnly := False;
    dateEditValidadeCNH.Properties.ReadOnly := False;
    dateEditPrimeiraCNH.Properties.ReadOnly := False;
    lookupComboBoxUFCNH.Properties.ReadOnly := False;
    textEditNomeFantasia.Properties.ReadOnly := False;
    textEditIE.Properties.ReadOnly := False;
    textEditIEST.Properties.ReadOnly := False;
    textEditIM.Properties.ReadOnly := False;
    textEditCNAE.Properties.ReadOnly := False;
    comboBoxCRT.Properties.ReadOnly := False;
    comboBoxFormaPagamento.Properties.ReadOnly := False;
    comboBoxTipoConta.Properties.ReadOnly := False;
    lookupComboBoxBanco.Properties.ReadOnly := False;
    textEditAgencia.Properties.ReadOnly := False;
    textEditConta.Properties.ReadOnly := False;
    textEditFavorecido.Properties.ReadOnly := False;
    maskEditCPFCNPJFavorecido.Properties.ReadOnly := False;
    textEditChavePIX.Properties.ReadOnly := False;
    checkBoxStatusGR.Properties.ReadOnly := False;
    textEditEmpresaGR.Properties.ReadOnly := False;
    dateEditValidadeGR.Properties.ReadOnly := False;
    textEditNumeroConsultaGR.Properties.ReadOnly := False;
    memoObservacoes.Properties.ReadOnly := False;
    dsEnderecos.AutoEdit := True;
    dsContatos.AutoEdit := True;
  end
  else if FAcao = tacPesquisa then
  begin
    actionIncluir.Enabled := False;
    actionEditar.Enabled := True;
    actionLocalizar.Enabled := False;
    actionCancelar.Enabled := True;
    actionGravar.Enabled := False;
    actionDocumentosVencidos.Enabled := True;
    actionVencimentoGR.Enabled := True;
    actionFichaDIRECT.Enabled := True;
    actionSolicitarGR.Enabled := True;
    actionContrato.Enabled := True;
    actionAnexarDocumentos.Enabled := True;
    maskEditID.Properties.ReadOnly := True;
    comboBoxTipoPessoa.Properties.ReadOnly := True;
    maskEditCPCNPJ.Properties.ReadOnly := True;
    textEditNome.Properties.ReadOnly := True;
    textEditRG.Properties.ReadOnly := True;
    textEditExpedidor.Properties.ReadOnly := True;
    dateEditDataRG.Properties.ReadOnly := True;
    dateEditNascimento.Properties.ReadOnly := True;
    textEditNomePai.Properties.ReadOnly := True;
    textEditNomeMae.Properties.ReadOnly := True;
    textEditNaturalidade.Properties.ReadOnly := True;
    lookupComboBoxNaturalidade.Properties.ReadOnly := True;
    textEditSegurancaCNH.Properties.ReadOnly := True;
    textEditNumeroCNH.Properties.ReadOnly := True;
    textEditRegistroCNH.Properties.ReadOnly := True;
    textEditCategoriaCNH.Properties.ReadOnly := True;
    dateEditEmissaoCNH.Properties.ReadOnly := True;
    dateEditValidadeCNH.Properties.ReadOnly := True;
    dateEditPrimeiraCNH.Properties.ReadOnly := True;
    lookupComboBoxUFCNH.Properties.ReadOnly := True;
    textEditNomeFantasia.Properties.ReadOnly := True;
    textEditIE.Properties.ReadOnly := True;
    textEditIEST.Properties.ReadOnly := True;
    textEditIM.Properties.ReadOnly := True;
    textEditCNAE.Properties.ReadOnly := True;
    comboBoxCRT.Properties.ReadOnly := True;
    comboBoxFormaPagamento.Properties.ReadOnly := True;
    comboBoxTipoConta.Properties.ReadOnly := True;
    lookupComboBoxBanco.Properties.ReadOnly := True;
    textEditAgencia.Properties.ReadOnly := True;
    textEditConta.Properties.ReadOnly := True;
    textEditFavorecido.Properties.ReadOnly := True;
    maskEditCPFCNPJFavorecido.Properties.ReadOnly := True;
    textEditChavePIX.Properties.ReadOnly := True;
    checkBoxStatusGR.Properties.ReadOnly := True;
    textEditEmpresaGR.Properties.ReadOnly := True;
    dateEditValidadeGR.Properties.ReadOnly := True;
    textEditNumeroConsultaGR.Properties.ReadOnly := True;
    memoObservacoes.Properties.ReadOnly := True;
    dsEnderecos.AutoEdit := False;
    dsContatos.AutoEdit := False;
  end;
end;

procedure Tview_SisGeFContractedDetail.PesquisaCadastro;
var
  sSQL: String;
  sWhere: String;
  aParam: array of variant;
  sQuery: String;
  cadastro : TCadastroControl;
begin
  try
    sSQL := '';
    sWhere := '';
    cadastro := TCadastroControl.Create;
    if not Assigned(View_PesquisarPessoas) then
    begin
      View_PesquisarPessoas := TView_PesquisarPessoas.Create(Application);
    end;
    View_PesquisarPessoas.dxLayoutItem1.Visible := True;
    View_PesquisarPessoas.dxLayoutItem2.Visible := True;


    sSQL := 'select ' +
            'num_cnpj as "CPF/CNPJ", cod_cadastro as ID, des_nome_razao as Nome, nom_fantasia as Alias, num_rg_ie as "RG/IE", ' +
            'num_registro_cnh as "Registro CNH" ' +
            'from ' + cadastro.Cadastro.NomeTabela + ';';

    sWhere := 'where num_cpf_cnpj like "%param%" or cod_cadastro like "paraN" or ' +
              'des_nome_razao like "%param%" or nom_fantasia like "%param%" or ' +
              'num_registro_cnh like "%param%";';
    View_PesquisarPessoas.sSQL := sSQL;
    View_PesquisarPessoas.sWhere := sWhere;
    View_PesquisarPessoas.bOpen := False;
    View_PesquisarPessoas.Caption := 'Localizar Cadastros';
    if View_PesquisarPessoas.ShowModal = mrOK then
    begin
      sQuery := 'cod_cadastro = ' + View_PesquisarPessoas.qryPesquisa.Fields[1].AsString;
      SetLength(aParam,2);
      aparam := ['FILTRO', sQuery];
      if cadastro.Localizar(aParam) then
      begin
        if not cadastro.SetupModel(cadastro.Cadastro.Query) then
        begin
          Application.MessageBox('Ocorreu um problema ao exibir as informações!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
          Exit;
        end
        else
        begin
          FAcao := tacPesquisa;
          SetupFields(cadastro);
          //Modo;
        end;
      end
      else
      begin
        Application.MessageBox('Cadastro não localizado!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
        Exit;
      end;
      Finalize(aParam);
    end;
  finally
    cadastro.Free;
    View_PesquisarPessoas.qryPesquisa.Close;
    View_PesquisarPessoas.tvPesquisa.ClearItems;
    FreeAndNil(View_PesquisarPessoas);
  end;
end;

procedure Tview_SisGeFContractedDetail.PopulaBancos;
var
  FBancos : TBancosControl;
  aParam : array of variant;
begin
  try
    FBancos := TBancosControl.Create;
    SetLength(aParam,3);
    aParam := ['APOIO','*',''];
    if FBancos.LocalizarExt(aParam)  then
    begin
      if memTableBancos.Active then
      begin
        memTableBancos.Close;
      end;
      memTableBancos.Data := FBancos.Bancos.Query;
      FBancos.Bancos.Query.Close;
      FBancos.Bancos.Query.Connection.Close;
    end;
    Finalize(aParam);
  finally
    FBancos.Free;
  end;

end;

procedure Tview_SisGeFContractedDetail.PopulaContatos(iCadastro: Integer);
var
  FContatos : TCadastroContatosControl;
  aParam: array of variant;
begin
  try
    FContatos := TCadastroContatosControl.Create;
    if memTableContatos.Active then
    begin
      memTableContatos.Close;
    end;
    SetLength(aParam,2);
    aParam := ['ID',iCadastro];
    if FContatos.Localizar(aParam) then
    begin
      memTableContatos.CopyDataSet(FContatos.Contatos.Query);
    end;
    FContatos.Contatos.Query.Close;
    FContatos.Contatos.Query.Connection.Close;
  finally
    FContatos.Free;
  end;
end;

procedure Tview_SisGeFContractedDetail.PopulaEnderecos(iCadastro: Integer);
var
  FEnderecos : TCadastroEnderecosControl;
  aParam: array of variant;
begin
  try
    FEnderecos := TCadastroEnderecosControl.Create;
    if memTableEnderecos.Active then
    begin
      memTableEnderecos.Close;
    end;
    SetLength(aParam,2);
    aParam := ['ID',iCadastro];
    if FEnderecos.Localizar(aParam) then
    begin
      memTableEnderecos.CopyDataSet(Fenderecos.Enderecos.Query);
    end;
    Fenderecos.Enderecos.Query.Close;
    Fenderecos.Enderecos.Query.Connection.Close;
  finally
    FEnderecos.Free;
  end;
end;

procedure Tview_SisGeFContractedDetail.PopulaEstados;
var
  FEstados : TEstadosControl;
  aParam : array of variant;
begin
  try
    FEstados := TEstadosControl.Create;
    SetLength(aParam,3);
    aParam := ['APOIO','*',''];
    if FEstados.PesquisarExt(aParam)  then
    begin
      if memTableEstados.Active then
      begin
        memTableEstados.Close;
      end;
      memTableEstados.Data := FEstados.Estados.Query;
      FEstados.Estados.Query.Close;
      FEstados.Estados.Query.Connection.Close;
    end;
    Finalize(aParam);
  finally
    FEstados.Free;
  end;
end;

procedure Tview_SisGeFContractedDetail.SetupFields(FCadastro: TCadastroControl);
begin
  maskEditID.EditValue := FCadastro.Cadastro.Cadastro;
  comboBoxTipoPessoa.Text := FCadastro.Cadastro.Doc;
  maskEditCPCNPJ.EditValue := FCadastro.Cadastro.CPFCNPJ;
  textEditNome.Text := FCadastro.Cadastro.Nome;
  textEditRG.Text := FCadastro.Cadastro.IERG;
  textEditExpedidor.Text := FCadastro.Cadastro.EmissorRG;
  dateEditDataRG.Date := FCadastro.Cadastro.EMissaoRG;
  dateEditNascimento.Date := FCadastro.Cadastro.Nascimento;
  textEditNomePai.Text := FCadastro.Cadastro.Pai;
  textEditNomeMae.Text := FCadastro.Cadastro.Mae;
  textEditNaturalidade.Text := FCadastro.Cadastro.CidadeNascimento;
  lookupComboBoxNaturalidade.EditValue := FCadastro.Cadastro.UFNascimento;
  textEditSegurancaCNH.Text := FCadastro.Cadastro.CodigoCNH;
  textEditNumeroCNH.Text := FCadastro.Cadastro.NumeroCNH;
  textEditRegistroCNH.Text := FCadastro.Cadastro.RegistroCNH;
  textEditCategoriaCNH.Text := FCadastro.Cadastro.CategoriaCNH;
  dateEditEmissaoCNH.Date := FCadastro.Cadastro.EmissaoCNH;
  dateEditValidadeCNH.Date := FCadastro.Cadastro.ValidadeCNH;
  dateEditPrimeiraCNH.Date := FCadastro.Cadastro.DataPrimeiraCNH;
  lookupComboBoxUFCNH.EditValue := FCadastro.Cadastro.UFCNH;
  textEditNomeFantasia.Text := FCadastro.Cadastro.Fantasia;
  textEditIE.Text := FCadastro.Cadastro.IERG;
  textEditIEST.Text := FCadastro.Cadastro.IEST;
  textEditIM.Text := FCadastro.Cadastro.IM;
  textEditCNAE.Text := FCadastro.Cadastro.CNAE;
  comboBoxCRT.ItemIndex := FCadastro.Cadastro.CRT;
  comboBoxFormaPagamento.Text := FCadastro.Cadastro.FormaPagamento;
  comboBoxTipoConta.Text := FCadastro.Cadastro.TipoConta;
  lookupComboBoxBanco.EditValue := FCadastro.Cadastro.Banco;
  textEditAgencia.Text := FCadastro.Cadastro.AgenciaConta;
  textEditConta.Text := FCadastro.Cadastro.NumeroConta;
  textEditFavorecido.Text := FCadastro.Cadastro.NomeFavorecido;
  maskEditCPFCNPJFavorecido.Text := FCadastro.Cadastro.CPFCNPJFavorecido;
  textEditChavePIX.Text := FCadastro.Cadastro.Chave;
  checkBoxStatusGR.EditValue := FCadastro.Cadastro.GV;
  textEditEmpresaGR.Text := FCadastro.Cadastro.EmpresaGR;
  dateEditValidadeGR.Date := FCadastro.Cadastro.DataGV;
  textEditNumeroConsultaGR.Text := FCadastro.Cadastro.NumeroConsultaGR;
  memoObservacoes.Text := FCadastro.Cadastro.Obs;
  if memTableEnderecos.Active then memTableEnderecos.Close;
  PopulaEnderecos(FCadastro.Cadastro.Cadastro);
  if memTableContatos.Active then memTableContatos.Close;
  PopulaContatos(FCadastro.Cadastro.Cadastro);
end;

function Tview_SisGeFContractedDetail.ValidaDados: boolean;
var
  FCadastro : TCadastroControl;
begin
  try
    Result := False;
    FCadastro := TCadastroControl.Create;
    if FAcao = tacIncluir then
    begin
      if comboBoxTipoPessoa.ItemIndex = 1 then
      begin
        if not Common.Utils.TUtils.CPF(maskEditCPCNPJ.Text) then
        begin
          Application.MessageBox('CPF incorreto!','Atenção',MB_OK + MB_ICONEXCLAMATION);
          maskEditCPCNPJ.SetFocus;
          Exit;
        end;
      end
      else if comboBoxTipoPessoa.ItemIndex = 2 then
      begin
        if not Common.Utils.TUtils.CNPJ(maskEditCPCNPJ.Text) then
        begin
          Application.MessageBox('CNPJ incorreto!','Atenção',MB_OK + MB_ICONEXCLAMATION);
          maskEditCPCNPJ.SetFocus;
          Exit;
        end;
      end
      else
      begin
        Application.MessageBox('Informe o tipo de pessoa!','Atenção',MB_OK + MB_ICONEXCLAMATION);
        comboBoxTipoPessoa.SetFocus;
        Exit;
      end;
    end;

    if textEditNome.Text = '' then
    begin
      Application.MessageBox('Informe o nome ou razão social!','Atenção',MB_OK + MB_ICONEXCLAMATION);
      textEditNome.SetFocus;
      Exit;
    end;
    if comboBoxTipoPessoa.ItemIndex = 2 then
    begin
      if textEditNomeFantasia.Text = '' then
      begin
        Application.MessageBox('Informe o nome fantasia!','Atenção',MB_OK + MB_ICONEXCLAMATION);
        textEditNomeFantasia.SetFocus;
        Exit;
      end;
      if maskEditCPFCNPJFavorecido.Text <> '' then
      begin
        if not Common.Utils.TUtils.CPF(maskEditCPFCNPJFavorecido.Text) then
        begin
          Application.MessageBox('CPF do Favorecido incorreto!','Atenção',MB_OK + MB_ICONEXCLAMATION);
          maskEditCPFCNPJFavorecido.SetFocus;
          Exit;
        end;
      end;
    end;
    if comboBoxTipoPessoa.ItemIndex = 1 then
    begin
      if Facao = tacIncluir then
      begin
        if textEditRG.Text <> '' then
        begin
          if textEditExpedidor.Text = '' then
          begin
            Application.MessageBox('Informe o orgão expedidor do RG!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
            textEditExpedidor.SetFocus;
            Exit;
          end;
          if dateEditDataRG.Date = 0 then
          begin
            Application.MessageBox('Informe o data da emissão do RG!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
            dateEditDataRG.SetFocus;
            Exit;
          end;
          if dateEditDataRG.Date > Now then
          begin
            Application.MessageBox('Data da emissão do RG inválida!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
            dateEditDataRG.SetFocus;
            Exit;
          end;
          if lookupComboBoxUFRG.Text = '' then
          begin
            Application.MessageBox('Informe a UF do RG!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
            lookupComboBoxUFRG.SetFocus;
            Exit;
          end;
        end
        else
        begin
          textEditExpedidor.Clear;
          dateEditDataRG.Clear;
          lookupComboBoxUFRG.Clear;
        end;
        if dateEditNascimento.Date <> 0 then
        begin
          if dateEditNascimento.Date >= Now then
          begin
            Application.MessageBox('Data de nascimento inválida!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
            dateEditNascimento.SetFocus;
            Exit;
          end;
          if YearsBetween(Now,dateEditNascimento.Date) < 18 then
          begin
            if Application.MessageBox('Data de nascimento indica que pessoa é menor! Ignorar?', 'Atenção', MB_YESNO + MB_ICONEXCLAMATION + MB_DEFBUTTON2) = IDNO then
            begin
              dateEditNascimento.SetFocus;
              Exit;
            end;
          end;
        end;
      end;
      if maskEditCPFCNPJFavorecido.Text <> '' then
      begin
        if not Common.Utils.TUtils.CNPJ(maskEditCPFCNPJFavorecido.Text) then
        begin
          Application.MessageBox('CNPJ do Favorecido incorreto!','Atenção',MB_OK + MB_ICONEXCLAMATION);
          maskEditCPFCNPJFavorecido.SetFocus;
          Exit;
        end;
      end;
      if textEditNaturalidade.Text <> '' then
      begin
        if lookupComboBoxNaturalidade.Text = '' then
        begin
          Application.MessageBox('Informe a UF da naturalidade da Pessoa!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
          lookupComboBoxNaturalidade.SetFocus;
          Exit;
        end;
      end;
      if textEditRegistroCNH.Text <> '' then
      begin
        if Length(textEditRegistroCNH.Text) <> 11 then
        begin
          Application.MessageBox('Quantidade de caracteres do número do registro da CNH incorreto!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
          textEditRegistroCNH.SetFocus;
          Exit;
        end;
        if Length(textEditNumeroCNH.Text) <> 10 then
        begin
          Application.MessageBox('Quantidade de caracteres do número da cédula da CNH incorreto!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
          textEditNumeroCNH.SetFocus;
          Exit;
        end;
        if Length(textEditSegurancaCNH.Text) <> 11 then
        begin
          Application.MessageBox('Quantidade de caracteres do código de segurança da CNH incorreto!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
          textEditSegurancaCNH.SetFocus;
          Exit;
        end;
        if textEditCategoriaCNH.Text = '' then
        begin
          Application.MessageBox('Informe a categoria da CNH!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
          textEditCategoriaCNH.SetFocus;
          Exit;
        end;
        if lookupComboBoxUFCNH.Text = '' then
        begin
          Application.MessageBox('Informe UF da CNH!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
          lookupComboBoxUFRG.SetFocus;
          Exit;
        end;
        if dateEditEmissaoCNH.Date = 0  then
        begin
          Application.MessageBox('Informe a data da emissão da CNH!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
          dateEditEmissaoCNH.SetFocus;
          Exit;
        end;
        if dateEditValidadeCNH.Date < Now  then
        begin
          Application.MessageBox('Data da validade da CNH inválida!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
          dateEditValidadeCNH.SetFocus;
          Exit;
        end;
        if dateEditPrimeiraCNH.Date = 0  then
        begin
          Application.MessageBox('Informe a data da primeira da CNH!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
          dateEditPrimeiraCNH.SetFocus;
          Exit;
        end;
        if dateEditPrimeiraCNH.Date > Now  then
        begin
          Application.MessageBox('Data da primeira da CNH inválida!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
          dateEditPrimeiraCNH.SetFocus;
          Exit;
        end;
      end
      else
      begin
        textEditSegurancaCNH.Clear;
        textEditNumeroCNH.Clear;
        textEditRegistroCNH.Clear;
        textEditCategoriaCNH.Clear;
        dateEditEmissaoCNH.Clear;
        dateEditValidadeCNH.Clear;
        dateEditPrimeiraCNH.Clear;
        lookupComboBoxUFCNH.Clear;
      end;
    end;
    Result := True;
  finally
    FCadastro.Free;
  end;
end;

end.
