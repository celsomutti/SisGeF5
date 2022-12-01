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
  Vcl.StdCtrls, cxButtons, FireDAC.Stan.StorageBin, Controller.SisGeFVehiclesRegistration, Controller.APICEP, Controller.APICNPJ,
  System.StrUtils, cxButtonEdit;

type
  Tview_SisGeFContractedDetail = class(TForm)
    layoutControlPadraoGroup_Root: TdxLayoutGroup;
    layoutControlPadrao: TdxLayoutControl;
    maskEditID: TcxMaskEdit;
    layoutItemMaskID: TdxLayoutItem;
    comboBoxTipoPessoa: TcxComboBox;
    layoutItemComboBoxTipoPessoa: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
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
    memTableEnderecoscod_entregador: TIntegerField;
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
    memTableContatoscod_entregador: TIntegerField;
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
    layoutGroupVeiculos: TdxLayoutGroup;
    dsVeiculos: TDataSource;
    memTableVeiculos: TFDMemTable;
    memTableVeiculosCOD_VEICULO: TIntegerField;
    memTableVeiculosNUM_CNPJ: TStringField;
    memTableVeiculosNOM_PROPRIETARIO: TStringField;
    memTableVeiculosNUM_RG: TStringField;
    memTableVeiculosCOD_ENTREGADOR: TIntegerField;
    memTableVeiculosDES_RAZAO_SOCIAL: TStringField;
    memTableVeiculosDES_MARCA: TStringField;
    memTableVeiculosDES_MODELO: TStringField;
    memTableVeiculosDES_PLACA: TStringField;
    memTableVeiculosDES_TIPO: TStringField;
    memTableVeiculosNUM_CHASSIS: TStringField;
    memTableVeiculosDES_ANO: TStringField;
    memTableVeiculosDES_COR: TStringField;
    memTableVeiculosNUM_RENAVAN: TStringField;
    memTableVeiculosANO_EXERCICIO_CLRV: TStringField;
    layoutGroupGridVeiculos: TdxLayoutGroup;
    gridVeiculosDBTableView1: TcxGridDBTableView;
    gridVeiculosLevel1: TcxGridLevel;
    gridVeiculos: TcxGrid;
    dxLayoutItem4: TdxLayoutItem;
    gridVeiculosDBTableView1COD_VEICULO: TcxGridDBColumn;
    gridVeiculosDBTableView1NUM_CNPJ: TcxGridDBColumn;
    gridVeiculosDBTableView1NOM_PROPRIETARIO: TcxGridDBColumn;
    gridVeiculosDBTableView1NUM_RG: TcxGridDBColumn;
    gridVeiculosDBTableView1COD_ENTREGADOR: TcxGridDBColumn;
    gridVeiculosDBTableView1DES_RAZAO_SOCIAL: TcxGridDBColumn;
    gridVeiculosDBTableView1DES_MARCA: TcxGridDBColumn;
    gridVeiculosDBTableView1DES_MODELO: TcxGridDBColumn;
    gridVeiculosDBTableView1DES_PLACA: TcxGridDBColumn;
    gridVeiculosDBTableView1DES_TIPO: TcxGridDBColumn;
    gridVeiculosDBTableView1NUM_CHASSIS: TcxGridDBColumn;
    gridVeiculosDBTableView1DES_ANO: TcxGridDBColumn;
    gridVeiculosDBTableView1DES_COR: TcxGridDBColumn;
    gridVeiculosDBTableView1NUM_RENAVAN: TcxGridDBColumn;
    gridVeiculosDBTableView1ANO_EXERCICIO_CLRV: TcxGridDBColumn;
    actionNovoVeiculo: TAction;
    actionEditarVeiculo: TAction;
    dxLayoutGroup1: TdxLayoutGroup;
    cxButton4: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    cxButton5: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    checkBoxStatus: TcxCheckBox;
    dxLayoutItem7: TdxLayoutItem;
    layoutGroupMEI: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    textEditCodigoMEI: TcxTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    buttonEditCNPJMEI: TcxButtonEdit;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    textEditRazaoMEI: TcxTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    textEditFantasiaMEI: TcxTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    maskEditCPCNPJ: TcxButtonEdit;
    dxLayoutItem12: TdxLayoutItem;
    dbMaskEditCEP: TcxDBButtonEdit;
    dxLayoutItem13: TdxLayoutItem;
    actionPesquisaCNPJ: TAction;
    actionPesquisaCEP: TAction;
    actionPesquisaCNPJMEI: TAction;
    cxButton6: TcxButton;
    dxLayoutItem14: TdxLayoutItem;
    procedure comboBoxTipoPessoaPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actionIncluirExecute(Sender: TObject);
    procedure actionLocalizarExecute(Sender: TObject);
    procedure actionEditarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionCancelarExecute(Sender: TObject);
    procedure actionEditarVeiculoExecute(Sender: TObject);
    procedure actionNovoVeiculoExecute(Sender: TObject);
    procedure checkBoxStatusPropertiesChange(Sender: TObject);
    procedure actionPesquisaCNPJExecute(Sender: TObject);
    procedure actionPesquisaCEPExecute(Sender: TObject);
    procedure actionPesquisaCNPJMEIExecute(Sender: TObject);
  private
    FAcao: TAcao;
    FID: integer;
    { Private declarations }
    procedure ClearFields;
    procedure SetupFields(FCadastro: TCadastroControl);
    procedure SetupClassCadastro(FCadastro: TCadastroControl);
    procedure PopulaBancos;
    procedure PopulaEstados;
    procedure PesquisaCadastro;
    procedure PopulaEnderecos(iCadastro: Integer);
    procedure PopulaContatos(iCadastro: Integer);
    procedure PopulaVeiculos(iCadastro: integer);
    procedure Modo;
    function ValidaDados(): boolean;
    procedure IncluirVeículo(iCadastro: integer);
    procedure EditarVeiculo(iCadastro, iVeiculo: integer);
    function SalvarDados(): boolean;
    procedure SearchCEP(sCEP: String);
    procedure SearchCNPJ(sCNPJ: string);
    procedure SearchCNPJMEI(sCNPJ: string);
    procedure ImprimeContratoPF(sData: String);
    procedure ImprimeContratoPJ(sData: String);
    procedure EmiteContrato;
  public
    property Acao: TAcao read FAcao write FAcao;
    property ID: integer read FID write FID;
  end;

var
  view_SisGeFContractedDetail: Tview_SisGeFContractedDetail;
  FAcao : TAcao;

implementation

{$R *.dfm}

uses Data.SisGeF, View.SisaGeFAttachDocuments, View.SisGeFVehicleRegistrationDetail, View.ListaCEPs, View.ResultadoConsultaCNPJ,
     View.SisGeFContractEmission, View.Impressao;

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
  Modo;
  comboBoxTipoPessoa.SetFocus;
end;

procedure Tview_SisGeFContractedDetail.actionEditarVeiculoExecute(Sender: TObject);
begin
if not memTableVeiculos.IsEmpty then
    EditarVeiculo(memTableVeiculosCOD_ENTREGADOR.AsInteger, memTableVeiculosCOD_VEICULO.AsInteger);
end;

procedure Tview_SisGeFContractedDetail.actionIncluirExecute(Sender: TObject);
begin
  Modo;
  comboBoxTipoPessoa.SetFocus;
end;

procedure Tview_SisGeFContractedDetail.actionLocalizarExecute(Sender: TObject);
begin
  PesquisaCadastro;
end;

procedure Tview_SisGeFContractedDetail.actionNovoVeiculoExecute(Sender: TObject);
begin
  IncluirVeículo(maskEditID.EditValue);
end;

procedure Tview_SisGeFContractedDetail.actionPesquisaCEPExecute(Sender: TObject);
begin
  SearchCEP(dbMaskEditCEP.Text);
end;

procedure Tview_SisGeFContractedDetail.actionPesquisaCNPJExecute(Sender: TObject);
begin
  SearchCNPJ(maskEditCPCNPJ.Text);
end;

procedure Tview_SisGeFContractedDetail.actionPesquisaCNPJMEIExecute(Sender: TObject);
begin
  SearchCNPJMEI(buttonEditCNPJMEI.Text);
end;

procedure Tview_SisGeFContractedDetail.checkBoxStatusPropertiesChange(Sender: TObject);
begin
  if checkBoxStatus.Checked then
    checkBoxStatus.Caption := 'ATIVO'
  else
    checkBoxStatus.Caption := 'INATIVO';
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

procedure Tview_SisGeFContractedDetail.EditarVeiculo(iCadastro, iVeiculo: integer);
begin
  if not Assigned(view_SisGeFVehiclesRegistrationDetail) then
  begin
    view_SisGeFVehiclesRegistrationDetail := Tview_SisGeFVehiclesRegistrationDetail.Create(Application);
  end;
  view_SisGeFVehiclesRegistrationDetail.iID := iVeiculo;
  view_SisGeFVehiclesRegistrationDetail.fAcao := tacAlterar;
  view_SisGeFVehiclesRegistrationDetail.fRegistro := iCadastro;
  if view_SisGeFVehiclesRegistrationDetail.ShowModal() = mrOk then
  begin
    PopulaVeiculos(iCadastro);
  end;
  FreeAndNil(view_SisGeFVehiclesRegistrationDetail);
end;

procedure Tview_SisGeFContractedDetail.EmiteContrato;
var
  iTipo: integer;
  sData: String;
begin
  try
    if not Assigned(view_SisGeFContractEmission) then begin
      view_SisGeFContractEmission := Tview_SisGeFContractEmission(Application);
    end;
    if view_SisGeFContractEmission.ShowModal = mrCancel Then
      Exit;
    iTipo := view_SisGeFContractEmission.radioGroup.ItemIndex;
    sData := view_SisGeFContractEmission.dateContrato.Text;
    case iTipo of
      0 : ImprimeContratoPF(sData);
      1 : ImprimeContratoPJ(sData);
      else
        Exit;
    end;
  finally
    FreeAndNil(view_SisGeFContractEmission);
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
  Modo;
  case FAcao of
    tacIncluir : actionIncluir.Execute;
    tacAlterar : actionEditar.Execute;
    else
      Exit;
  end;
end;

procedure Tview_SisGeFContractedDetail.ImprimeContratoPF(sData: String);
var
  sEndereco: String;
  sDataExtenso: String;
  dtData: TDate;
begin
  sEndereco := '';
  dtData := StrToDateDef(sData,0);
  sDataExtenso := FormatDateTime('dd "de" mmmm "de" yyyy', dtData);
  with Data_Sisgef.frxReport do begin
    if not Assigned(view_Impressao) then begin
      view_Impressao := Tview_Impressao.Create(Application);
    end;
    view_Impressao.cxLabel1.Caption := 'CONTRATO DE PRESTAÇÃO DE SERVIÇO - PESSOA FÍSICA';
    view_Impressao.cxArquivo.Text := ExtractFilePath(Application.ExeName) + 'Reports\frxContratoServicopf.fr3';
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
    sEndereco := dbTextEditEndereco.Text + ', ' + dbTextEditNumero.Text;
    if dbTextEditComplemento.Text = '' then
    begin
      sEndereco := sEndereco + ', ' + dbTextEditComplemento.Text;
    end;
    sEndereco := sEndereco + ', ' + dbTextEditBairro.Text;
    sEndereco := sEndereco + ', ' + dbTextEditCidade.Text + '/' + dbLookupComboBoxUFEndereco.Text;
    LoadFromFile(view_Impressao.cxArquivo.Text);
    Variables.Items[Variables.IndexOf('parNome')].Value :=  QuotedStr(textEditNome.Text);
    Variables.Items[Variables.IndexOf('parIdentidade')].Value :=  QuotedStr(textEditRG.Text);
    Variables.Items[Variables.IndexOf('parCPF')].Value :=  QuotedStr(maskEditCPCNPJ.Text);
    Variables.Items[Variables.IndexOf('parEndereco')].Value :=  QuotedStr(sEndereco);
    Variables.Items[Variables.IndexOf('parRazaoSocial')].Value :=  QuotedStr(textEditRazaoMEI.Text);
    Variables.Items[Variables.IndexOf('parCNPJ')].Value :=  QuotedStr(buttonEditCNPJMEI.Text);
    Variables.Items[Variables.IndexOf('parData')].Value :=  QuotedStr(sDataExtenso);
    FreeAndNil(view_Impressao);
    ShowReport(True);
  end;
end;

procedure Tview_SisGeFContractedDetail.ImprimeContratoPJ(sData: String);
var
  sEndereco: String;
  sDataExtenso: String;
  dtData: TDate;
begin
  sEndereco := '';
  dtData := StrToDateDef(sData,0);
  sDataExtenso := FormatDateTime('dd "de" mmmm "de" yyyy', dtData);
  with Data_Sisgef.frxReport do begin
    if not Assigned(view_Impressao) then begin
      view_Impressao := Tview_Impressao.Create(Application);
    end;
    view_Impressao.cxLabel1.Caption := 'CONTRATO DE PRESTAÇÃO DE SERVIÇO - PESSOA FÍSICA';
    view_Impressao.cxArquivo.Text := ExtractFilePath(Application.ExeName) + 'Reports\Reports\frxContratoServico.fr3';
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
    sEndereco := dbTextEditEndereco.Text + ', ' + dbTextEditNumero.Text;
    if dbTextEditComplemento.Text = '' then
    begin
      sEndereco := sEndereco + ', ' + dbTextEditComplemento.Text;
    end;
    sEndereco := sEndereco + ', ' + dbTextEditBairro.Text;
    sEndereco := sEndereco + ', ' + dbTextEditCidade.Text + '/' + dbLookupComboBoxUFEndereco.Text;
    LoadFromFile(view_Impressao.cxArquivo.Text);
    Variables.Items[Variables.IndexOf('parNome')].Value :=  QuotedStr(textEditNome.Text);
    Variables.Items[Variables.IndexOf('parIdentidade')].Value :=  QuotedStr(textEditRG.Text);
    Variables.Items[Variables.IndexOf('parCPF')].Value :=  QuotedStr(maskEditCPCNPJ.Text);
    Variables.Items[Variables.IndexOf('parEndereco')].Value :=  QuotedStr(sEndereco);
    Variables.Items[Variables.IndexOf('parRazaoSocial')].Value :=  QuotedStr(textEditRazaoMEI.Text);
    Variables.Items[Variables.IndexOf('parCNPJ')].Value :=  QuotedStr(buttonEditCNPJMEI.Text);
    Variables.Items[Variables.IndexOf('parData')].Value :=  QuotedStr(sDataExtenso);
    FreeAndNil(view_Impressao);
    ShowReport(True);
  end;
end;

procedure Tview_SisGeFContractedDetail.IncluirVeículo(iCadastro: integer);
begin
  if not Assigned(view_SisGeFVehiclesRegistrationDetail) then
  begin
    view_SisGeFVehiclesRegistrationDetail := Tview_SisGeFVehiclesRegistrationDetail.Create(Application);
  end;
  view_SisGeFVehiclesRegistrationDetail.iID := 0;
  view_SisGeFVehiclesRegistrationDetail.fAcao := tacIncluir;
  view_SisGeFVehiclesRegistrationDetail.fRegistro := iCadastro;
  if view_SisGeFVehiclesRegistrationDetail.ShowModal() = mrOk then
  begin
    PopulaVeiculos(iCadastro);
  end;
  FreeAndNil(view_SisGeFVehiclesRegistrationDetail);
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
    actionNovoVeiculo.Enabled := False;
    actionEditarVeiculo.Enabled := False;
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
    actionNovoVeiculo.Enabled := False;
    actionEditarVeiculo.Enabled := False;
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
    actionNovoVeiculo.Enabled := True;
    actionEditarVeiculo.Enabled := True;
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
    actionAnexarDocumentos.Enabled := False;
    actionNovoVeiculo.Enabled := False;
    actionEditarVeiculo.Enabled := False;
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
  aParam: array of variant;
  cadastro : TCadastroControl;
begin
  try
    cadastro := TCadastroControl.Create;
    SetLength(aParam,2);
    aparam := ['CADASTRO', FID];
    if cadastro.Localizar(aParam) then
    begin
      if not cadastro.SetupModel(cadastro.Cadastro.Query) then
      begin
        Application.MessageBox('Ocorreu um problema ao exibir as informações!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
        Exit;
      end
      else
      begin
        SetupFields(cadastro);
      end;
    end
    else
    begin
      Application.MessageBox('Cadastro não localizado!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
      Exit;
    end;
    Finalize(aParam);
  finally
    cadastro.Free;
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

procedure Tview_SisGeFContractedDetail.PopulaVeiculos(iCadastro: integer);
var
  sMensagem: String;
  FVeiculos: TControllerSisGeFVehiclesRegistration;
begin
  try
    memTableVeiculos.Active := False;
    FVeiculos := TControllerSisGeFVehiclesRegistration.Create;
    if FVeiculos.SearchVehicle(1, '', iCadastro.ToString) then
    begin
      memTableVeiculos.Data := FVeiculos.Veiculos.Query.Data;
      FVeiculos.Veiculos.Query.Connection.Connected := False;
      if not memTableVeiculos.IsEmpty then
        gridVeiculosDBTableView1.DataController.DataSource.DataSet.First;
    end;
  finally
    FVeiculos.Free;
  end;
end;

function Tview_SisGeFContractedDetail.SalvarDados: boolean;
var
  FCadastro : TCadastroControl;
  FEnderecos : TCadastroEnderecosControl;
  FContatos : TCadastroContatosControl;
  FVeiculos : TControllerSisGeFVehiclesRegistration;
begin
  try
    FCadastro := TCadastroControl.Create;
    FEnderecos := TCadastroEnderecosControl.Create;
    FContatos := TCadastroContatosControl.Create;
    FVeiculos := TControllerSisGeFVehiclesRegistration.Create;
    Result := False;
    if not ValidaDados() then
    begin
      Exit;
    end;
   SetupClassCadastro(FCadastro);
   FCadastro.Cadastro.Acao := FAcao;
   if not FCadastro.Gravar() then
    begin
      MessageDlg('Ocorreu um problema ao tentar gravar o cadastro!', mtError, [mbCancel], 0);
      Exit;
    end;
    maskEditID.EditValue := FCadastro.Cadastro.Cadastro;
    fenderecos.Enderecos.ID := FCadastro.Cadastro.Cadastro;
    fenderecos.Enderecos.Acao := tacExcluir;
    if not fenderecos.Gravar then
    begin
     MessageDlg('Ocorreu um problema ao preparar a gravação dos endereços!', mtError, [mbCancel], 0);
      Exit;
    end;
    if not fenderecos.SaveBatch(memTableEnderecos) then
    begin
       MessageDlg('Ocorreu um problema ao tentar gravar o(s) endereço(s)!', mtError, [mbCancel], 0);
       Exit;
    end;
    fcontatos.Contatos.ID := FCadastro.Cadastro.Cadastro;
    fcontatos.Contatos.Sequencia := 0;
    fcontatos.Contatos.Acao := tacExcluir;
    if not fcontatos.Gravar then
    begin
      MessageDlg('Ocorreu um problema ao preparar a gravação dos contatos!', mtError, [mbCancel], 0);
      Exit;
    end;
    if not fcontatos.SaveBatch(memTableContatos) then
    begin
      MessageDlg('Ocorreu um problema ao tentar gravar o(s) contato(s)!',mtError, [mbCancel], 0);
      Exit;
    end;
    MessageDlg('Dados gravados com sucesso.', mtInformation, [mbOK], 0);
    if FAcao = tacIncluir then
    begin
      FAcao := tacAlterar;
      Modo;
    end;
    Result := True;
  finally
    FCadastro.DisposeOf;
    FEnderecos.DisposeOf;
    FContatos.DisposeOf;
    FVeiculos.DisposeOf;
  end;
end;

procedure Tview_SisGeFContractedDetail.SearchCEP(sCEP: String);
var
  APICEP : TAPICEPController;
begin
  try
    APICEP := TAPICEPController.Create;
    sCEP := ReplaceStr(sCEP,'-','');
    sCEP := ReplaceStr(sCEP,' ','');
    if not APICEP.GetAdressByCEP(sCEP) then
    begin
      MessageDlg(APICEP.APICEP.Mensagem, mtWarning, [mbCancel], 0);
      Exit;
    end;
    if Data_Sisgef.memTableCEP.Active then
    begin
      if not Data_Sisgef.memTableCEP.IsEmpty then
      begin
        if not Assigned(view_ListaCEPs) then
        begin
          view_ListaCEPs := Tview_ListaCEPs.Create(Application);
        end;
        if view_ListaCEPs.ShowModal = mrOK then
        begin
          memTableEnderecosdes_logradouro.AsString := Data_Sisgef.memTableCEPlogradouro.AsString;
          memTableEnderecosdes_complemento.AsString := Data_Sisgef.memTableCEPcomplemento.AsString;
          memTableEnderecosnom_bairro.AsString := Data_Sisgef.memTableCEPbairro.AsString;
          memTableEnderecosnom_cidade.AsString := Data_Sisgef.memTableCEPlocalidade.AsString;
          memTableEnderecosuf_estado.AsString := Data_Sisgef.memTableCEPuf.AsString;
          memTableEnderecosnum_cep.AsString := Data_Sisgef.memTableCEPcep.AsString;
        end;
        Data_Sisgef.memTableCEP.Active := False;
        FreeAndNil(view_ListaCEPs);
      end;
    end
    else
    begin
      memTableEnderecosdes_logradouro.AsString := APICEP.APICEP.Enderecos.Logradouro;
      memTableEnderecosdes_complemento.AsString := APICEP.APICEP.Enderecos.Complemento;
      memTableEnderecosnom_bairro.AsString := APICEP.APICEP.Enderecos.Bairro;
      memTableEnderecosnom_cidade.AsString := APICEP.APICEP.Enderecos.Cidade;
      memTableEnderecosuf_estado.AsString := APICEP.APICEP.Enderecos.UF;
      memTableEnderecosnum_cep.AsString := Data_Sisgef.memTableCEPcep.AsString;
    end;
  finally
    APICEP.Free;
  end;
end;

procedure Tview_SisGeFContractedDetail.SearchCNPJ(sCNPJ: string);
var
  APICNPJ : TAPICNPJController;
begin
  try
    APICNPJ := TAPICNPJController.Create;
    sCNPJ := ReplaceStr(sCNPJ,'-','');
    sCNPJ := ReplaceStr(sCNPJ,' ','');
    sCNPJ := ReplaceStr(sCNPJ,'/','');
    sCNPJ := ReplaceStr(sCNPJ,'.','');

    if not APICNPJ.GetCNPJ(sCNPJ) then
    begin
      MessageDlg(APICNPJ.APICNPJ.Mensagem, mtWarning, [mbCancel], 0);
      Exit;
    end;

    if not Assigned(view_ResultadoConsultaCNPJ) then
    begin
      view_ResultadoConsultaCNPJ := Tview_ResultadoConsultaCNPJ.Create(Application);
    end;
    if view_ResultadoConsultaCNPJ.ShowModal = mrCancel then
    begin
      FreeAndNil(view_ResultadoConsultaCNPJ);
      Exit;
    end;
    if not view_ResultadoConsultaCNPJ.memTableAP.IsEmpty then
    begin
      view_ResultadoConsultaCNPJ.memTableAP.First;
      textEditCNAE.Text := view_ResultadoConsultaCNPJ.memTableAPcod_cnae.AsString;
    end;

    FreeAndNil(view_ResultadoConsultaCNPJ);

    textEditNome.Text := APICNPJ.APICNPJ.Pessoas.Nome;
    textEditNomeFantasia.Text := APICNPJ.APICNPJ.Pessoas.Fantasia;
//    memTableCadastrocod_status.AsInteger := 1;

    memTableEnderecos.Insert;
    memTableEnderecosdes_tipo_endereco.AsString := APICNPJ.APICNPJ.Enderecos.Tipo;
    memTableEnderecosnum_cep.AsString := APICNPJ.APICNPJ.Enderecos.CEP;
    memTableEnderecosdes_logradouro.AsString := APICNPJ.APICNPJ.Enderecos.Logradouro;
    memTableEnderecosnum_logradouro.AsString := APICNPJ.APICNPJ.Enderecos.Numero;
    memTableEnderecosdes_complemento.AsString := APICNPJ.APICNPJ.Enderecos.Complemento;
    memTableEnderecosnom_bairro.AsString := APICNPJ.APICNPJ.Enderecos.Bairro;
    memTableEnderecosnom_cidade.AsString := APICNPJ.APICNPJ.Enderecos.Cidade;
    memTableEnderecosuf_estado.AsString := APICNPJ.APICNPJ.Enderecos.UF;
    memTableEnderecos.Post;

    if APICNPJ.APICNPJ.Contatos.Descricao <> '' then
    begin
      memTableContatos.Insert;
      memTableContatosdes_contato.AsString := APICNPJ.APICNPJ.Contatos.Descricao;
      memTableContatosnum_telefone.AsString := APICNPJ.APICNPJ.Contatos.Telefone;
      memTableContatosdes_email.AsString := APICNPJ.APICNPJ.Contatos.EMail;
      memTableContatos.Post;
    end;

  finally
    if Data_Sisgef.memTableCNPJ.Active then
      Data_Sisgef.memTableCNPJ.Active := False;
    APICNPJ.DisposeOf;
  end;
end;

procedure Tview_SisGeFContractedDetail.SearchCNPJMEI(sCNPJ: string);
var
  APICNPJ : TAPICNPJController;
begin
  try
    APICNPJ := TAPICNPJController.Create;
    sCNPJ := ReplaceStr(sCNPJ,'-','');
    sCNPJ := ReplaceStr(sCNPJ,' ','');
    sCNPJ := ReplaceStr(sCNPJ,'/','');
    sCNPJ := ReplaceStr(sCNPJ,'.','');

    if not APICNPJ.GetCNPJ(sCNPJ) then
    begin
      MessageDlg(APICNPJ.APICNPJ.Mensagem, mtWarning, [mbCancel], 0);
      Exit;
    end;

    if not Assigned(view_ResultadoConsultaCNPJ) then
    begin
      view_ResultadoConsultaCNPJ := Tview_ResultadoConsultaCNPJ.Create(Application);
    end;
    if view_ResultadoConsultaCNPJ.ShowModal = mrCancel then
    begin
      FreeAndNil(view_ResultadoConsultaCNPJ);
      Exit;
    end;
    if not view_ResultadoConsultaCNPJ.memTableAP.IsEmpty then
    begin
      view_ResultadoConsultaCNPJ.memTableAP.First;
    end;

    FreeAndNil(view_ResultadoConsultaCNPJ);

    textEditRazaoMEI.Text := APICNPJ.APICNPJ.Pessoas.Nome;
    textEditFantasiaMEI.Text := APICNPJ.APICNPJ.Pessoas.Fantasia;

  finally
    if Data_Sisgef.memTableCNPJ.Active then
      Data_Sisgef.memTableCNPJ.Active := False;
    APICNPJ.DisposeOf;
  end;
end;

procedure Tview_SisGeFContractedDetail.SetupClassCadastro(FCadastro: TCadastroControl);
begin
  FCadastro.Cadastro.Cadastro := maskEditID.EditValue;
  FCadastro.Cadastro.Doc := comboBoxTipoPessoa.Text;
  FCadastro.Cadastro.CPFCNPJ := maskEditCPCNPJ.EditValue;
  FCadastro.Cadastro.Nome := textEditNome.Text;
  FCadastro.Cadastro.IERG := textEditRG.Text;
  FCadastro.Cadastro.EmissorRG := textEditExpedidor.Text;
  FCadastro.Cadastro.EMissaoRG := dateEditDataRG.Date;
  FCadastro.Cadastro.Nascimento := dateEditNascimento.Date;
  FCadastro.Cadastro.Pai := textEditNomePai.Text;
  FCadastro.Cadastro.Mae := textEditNomeMae.Text;
  FCadastro.Cadastro.CidadeNascimento := textEditNaturalidade.Text;
  FCadastro.Cadastro.UFNascimento := lookupComboBoxNaturalidade.EditValue;
  FCadastro.Cadastro.CodigoCNH := textEditSegurancaCNH.Text;
  FCadastro.Cadastro.NumeroCNH := textEditNumeroCNH.Text;
  FCadastro.Cadastro.RegistroCNH := textEditRegistroCNH.Text;
  FCadastro.Cadastro.CategoriaCNH := textEditCategoriaCNH.Text;
  FCadastro.Cadastro.EmissaoCNH := dateEditEmissaoCNH.Date;
  FCadastro.Cadastro.ValidadeCNH := dateEditValidadeCNH.Date;
  FCadastro.Cadastro.DataPrimeiraCNH := dateEditPrimeiraCNH.Date;
  FCadastro.Cadastro.UFCNH := lookupComboBoxUFCNH.EditValue;
  FCadastro.Cadastro.Fantasia := textEditNomeFantasia.Text;
  FCadastro.Cadastro.IERG := textEditIE.Text;
  FCadastro.Cadastro.IEST := textEditIEST.Text;
  FCadastro.Cadastro.IM := textEditIM.Text;
  FCadastro.Cadastro.CNAE := textEditCNAE.Text;
  FCadastro.Cadastro.CRT := comboBoxCRT.ItemIndex;
  FCadastro.Cadastro.FormaPagamento := comboBoxFormaPagamento.Text;
  FCadastro.Cadastro.TipoConta := comboBoxTipoConta.Text;
  FCadastro.Cadastro.Banco := lookupComboBoxBanco.EditValue;
  FCadastro.Cadastro.AgenciaConta := textEditAgencia.Text;
  FCadastro.Cadastro.NumeroConta := textEditConta.Text;
  FCadastro.Cadastro.NomeFavorecido := textEditFavorecido.Text;
  FCadastro.Cadastro.CPFCNPJFavorecido := maskEditCPFCNPJFavorecido.Text;
  FCadastro.Cadastro.Chave := textEditChavePIX.Text;
  FCadastro.Cadastro.GV := checkBoxStatusGR.EditValue;
  FCadastro.Cadastro.EmpresaGR := textEditEmpresaGR.Text;
  FCadastro.Cadastro.DataGV := dateEditValidadeGR.Date;
  FCadastro.Cadastro.NumeroConsultaGR := textEditNumeroConsultaGR.Text;
  FCadastro.Cadastro.Obs := memoObservacoes.Text;
  FCadastro.Cadastro.Status := checkBoxStatus.EditValue;
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
  if (FCadastro.Cadastro.Status = 0) or (FCadastro.Cadastro.Status = 1) or (FCadastro.Cadastro.Status = 5)then
    checkBoxStatus.Checked := True
  else
    checkBoxStatus.Checked := False;
  if memTableEnderecos.Active then memTableEnderecos.Close;
  PopulaEnderecos(FCadastro.Cadastro.Cadastro);
  if memTableContatos.Active then memTableContatos.Close;
  PopulaContatos(FCadastro.Cadastro.Cadastro);
  PopulaVeiculos(FCadastro.Cadastro.Cadastro);
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
