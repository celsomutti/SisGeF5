unit View.CadastroGeral;

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
  Vcl.ActnList, dxBar, cxMemo, Common.ENum, Common.Utils, Control.Bancos, Control.Cadastro, Control.Estados;

type
  Tview_CadastroGeral = class(TForm)
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
    barManagerCadastro: TdxBarManager;
    barManagerCadastroBar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
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
    layoutGroupMEI: TdxLayoutGroup;
    textEditCodigoIMEI: TcxTextEdit;
    layoutItemCodigoIMEI: TdxLayoutItem;
    maskEditCNPJIMEI: TcxMaskEdit;
    layoutItemCNPJIMEI: TdxLayoutItem;
    textEditNomeMEI: TcxTextEdit;
    layoutItemNomeMEI: TdxLayoutItem;
    textEditNomeFantasiaMEI: TcxTextEdit;
    layoutItemFantasiaMEI: TdxLayoutItem;
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
    procedure comboBoxTipoPessoaPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure ClearFields;
    procedure SetupFields(FCadastro: TCadastroControl);
    procedure PopulaBancos;
    procedure PopulaEstados;
  public
    { Public declarations }
  end;

var
  view_CadastroGeral: Tview_CadastroGeral;

implementation

{$R *.dfm}

procedure Tview_CadastroGeral.ClearFields;
begin
  maskEditID.EditingValue := 0;
  comboBoxTipoPessoa.ItemIndex := 0;
  maskEditCPCNPJ.Clear;
  textEditNome.Clear;
  textEditRG.Clear;
  textEditExpedidor.Clear;
  dateEditDataRG.Clear;
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
  textEditCodigoIMEI.Clear;
  maskEditCNPJIMEI.Clear;
  textEditNomeMEI.Clear;
  textEditNomeFantasiaMEI.Clear;
  memoObservacoes.Lines.Clear;
end;

procedure Tview_CadastroGeral.comboBoxTipoPessoaPropertiesChange(Sender: TObject);
begin
  if comboBoxTipoPessoa.ItemIndex = 1 then
  begin
    layoutGroupPessoaFisica.MakeVisible;
    maskEditCPCNPJ.Properties.EditMask := '!000\.000\.000\-00;1; ';
    maskEditCPCNPJ.Properties.IgnoreMaskBlank := True;
    maskEditCPFCNPJFavorecido.Properties.EditMask := '!000\.000\.000\-00;1; ';
    maskEditCPFCNPJFavorecido.Properties.IgnoreMaskBlank := True;
  end
  else if comboBoxTipoPessoa.ItemIndex = 2 then
  begin
    layoutGroupPessoaJuridica.MakeVisible;
    maskEditCPCNPJ.Properties.EditMask := '!00\.000\.000\/0000\-00;1; ';
    maskEditCPCNPJ.Properties.IgnoreMaskBlank := True;
    maskEditCPFCNPJFavorecido.Properties.EditMask := '!000\.000\.000\-00;1; ';
    maskEditCPFCNPJFavorecido.Properties.IgnoreMaskBlank := True;
  end
  else
  begin
    layoutGroupPessoaFisica.MakeVisible;
    maskEditCPCNPJ.Properties.EditMask := '!000\.000\.000\-00;1; ';
    maskEditCPCNPJ.Properties.IgnoreMaskBlank := True;
    maskEditCPFCNPJFavorecido.Properties.EditMask := '!000\.000\.000\-00;1; ';
    maskEditCPFCNPJFavorecido.Properties.IgnoreMaskBlank := True;
  end;

end;

procedure Tview_CadastroGeral.FormShow(Sender: TObject);
begin
  PopulaBancos;
  PopulaEstados;
end;

procedure Tview_CadastroGeral.PopulaBancos;
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

procedure Tview_CadastroGeral.PopulaEstados;
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

procedure Tview_CadastroGeral.SetupFields(FCadastro: TCadastroControl);
begin
  maskEditID.EditingValue := FCadastro.Cadastro.Cadastro;
  comboBoxTipoPessoa.Text := FCadastro.Cadastro.Doc;
  maskEditCPCNPJ.EditingValue := FCadastro.Cadastro.CPFCNPJ;
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
  textEditCodigoIMEI.Text := FCadastro.Cadastro.MEI;
  maskEditCNPJIMEI.Text := FCadastro.Cadastro.CNPJMEI;
  textEditNomeMEI.Text := FCadastro.Cadastro.RazaoMEI;
  textEditNomeFantasiaMEI.Text := FCadastro.Cadastro.FantasiaMEI;
  memoObservacoes.Text := FCadastro.Cadastro.Obs;
  if memTableEnderecos.Active then memTableEnderecos.Close;
  if memTableContatos.Active then memTableContatos.Close;

end;

end.
