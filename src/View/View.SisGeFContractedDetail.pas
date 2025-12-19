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
  Vcl.ActnList, dxBar, cxMemo, Common.ENum, Common.Utils, Control.Bancos, Control.Estados,
  System.DateUtils, dxLayoutLookAndFeels, dxLayoutControlAdapters, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, FireDAC.Stan.StorageBin, Controller.APICEP, Controller.APICNPJ,
  System.StrUtils, cxButtonEdit, Global.Parametros, cxImageComboBox, cxCurrencyEdit, Vcl.ExtCtrls,
  Controller.SisGeFCadastroContratados, Controller.SisGeFContratadosContatos, Controller.SisGeFContratadosEnderecos,
  Controller.SisGeFContratadosCNAE, Controller.SisGeFContratadosFinanceiro, Controller.SisGeFContratadosRepresentantes,
  Controller.SisGeFContratadosRH;

type
  Tview_SisGeFContractedDetail = class(TForm)
    layoutControlPadraoGroup_Root: TdxLayoutGroup;
    layoutControlPadrao: TdxLayoutControl;
    maskEditID: TcxMaskEdit;
    layoutItemMaskID: TdxLayoutItem;
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
    textEditIM: TcxTextEdit;
    layoutItemIM: TdxLayoutItem;
    comboBoxCRT: TcxComboBox;
    layoutItemCRT: TdxLayoutItem;
    layoutControlComplementoGroup_Root: TdxLayoutGroup;
    layoutControlComplemento: TdxLayoutControl;
    layoutItemComplemento: TdxLayoutItem;
    layoutGroupEnderecos: TdxLayoutGroup;
    layoutGroupContatos: TdxLayoutGroup;
    layoutGroupDadosBancarios: TdxLayoutGroup;
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
    memTableContatosseq_contato: TIntegerField;
    memTableContatosid_contratados: TIntegerField;
    memTableContatosdes_contato: TStringField;
    memTableContatosnum_telefone: TStringField;
    memTableContatosdes_email: TStringField;
    dsContatos: TDataSource;
    LayoutGroupDadosBancarios1: TdxLayoutGroup;
    comboBoxFormaPagamento: TcxComboBox;
    layoutItemFormaPagamento: TdxLayoutItem;
    layoutGroupDadosBancarios2: TdxLayoutGroup;
    lookupComboBoxBanco: TcxLookupComboBox;
    layoutItemBanco: TdxLayoutItem;
    textEditAgencia: TcxTextEdit;
    layoutItemAgencia: TdxLayoutItem;
    textEditConta: TcxTextEdit;
    layoutItemConta: TdxLayoutItem;
    layoutGroupDadosBancarios3: TdxLayoutGroup;
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
    layoutGroupOptions: TdxLayoutGroup;
    cxButton2: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    actionAnexarDocumentos: TAction;
    layoutGroupCNAE: TdxLayoutGroup;
    layoutGroupGridVeiculos: TdxLayoutGroup;
    actionNovoVeiculo: TAction;
    actionEditarVeiculo: TAction;
    dxLayoutGroup1: TdxLayoutGroup;
    checkBoxStatus: TcxCheckBox;
    dxLayoutItem7: TdxLayoutItem;
    maskEditCPCNPJ: TcxButtonEdit;
    dxLayoutItem12: TdxLayoutItem;
    dbMaskEditCEP: TcxDBButtonEdit;
    dxLayoutItem13: TdxLayoutItem;
    actionPesquisaCNPJ: TAction;
    actionPesquisaCEP: TAction;
    actionPesquisaCNPJMEI: TAction;
    cxButton6: TcxButton;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    cedSalario: TcxCurrencyEdit;
    dxLayoutItem16: TdxLayoutItem;
    cboBase: TcxComboBox;
    dxLayoutItem17: TdxLayoutItem;
    Image1: TImage;
    Image2: TImage;
    icbFuncao: TcxImageComboBox;
    dxLayoutItem18: TdxLayoutItem;
    memTableEnderecos: TFDMemTable;
    memTableEnderecos_id_endereco: TIntegerField;
    memTableEnderecos_id_contratados: TIntegerField;
    memTableEnderecos_des_tipo: TStringField;
    memTableEnderecosnum_cep: TStringField;
    memTableEnderecosdes_logradouro: TStringField;
    memTableEnderecosnum_logradouro: TStringField;
    memTableEnderecosdes_complemento: TStringField;
    memTableEnderecos_des_bairro: TStringField;
    memTableEnderecosnom_cidade: TStringField;
    memTableEnderecosuf_estado: TStringField;
    memTableEnderecosdes_referencia: TStringField;
    memTableCNAE: TFDMemTable;
    memTableCNAEid_cnae: TIntegerField;
    memTableCNAEid_contratados: TIntegerField;
    memTableCNAEcod_cnae: TStringField;
    memTableCNAEdes_cnae: TStringField;
    dsCNAE: TDataSource;
    cboTipoPessoa: TcxComboBox;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    datAdmissao: TcxDateEdit;
    dxLayoutItem6: TdxLayoutItem;
    datDEmissao: TcxDateEdit;
    dxLayoutItem8: TdxLayoutItem;
    cboCategoria: TcxComboBox;
    dxLayoutItem9: TdxLayoutItem;
    cboSexo: TcxComboBox;
    lyiSexo: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    gridCNAEDBTableView1: TcxGridDBTableView;
    gridCNAELevel1: TcxGridLevel;
    gridCNAE: TcxGrid;
    dxLayoutItem1: TdxLayoutItem;
    gridCNAEDBTableView1id_cnae: TcxGridDBColumn;
    gridCNAEDBTableView1id_contratados: TcxGridDBColumn;
    gridCNAEDBTableView1cod_tipo_cnae: TcxGridDBColumn;
    gridCNAEDBTableView1cod_cnae: TcxGridDBColumn;
    gridCNAEDBTableView1des_cnae: TcxGridDBColumn;
    txtRepresentante: TcxTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    mskCPFRepresentante: TcxMaskEdit;
    dxLayoutItem10: TdxLayoutItem;
    memTableCNAEdes_tipo_cnae: TStringField;
    gridContatosDBTableView1seq_contato: TcxGridDBColumn;
    gridContatosDBTableView1id_contratados: TcxGridDBColumn;
    gridContatosDBTableView1des_contato: TcxGridDBColumn;
    gridContatosDBTableView1num_telefone: TcxGridDBColumn;
    gridContatosDBTableView1des_email: TcxGridDBColumn;
    //procedure comboBoxTipoPessoaPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actionLocalizarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionCancelarExecute(Sender: TObject);
    procedure actionNovoVeiculoExecute(Sender: TObject);
    procedure checkBoxStatusPropertiesChange(Sender: TObject);
    procedure actionPesquisaCNPJExecute(Sender: TObject);
    procedure actionPesquisaCEPExecute(Sender: TObject);
    procedure actionGravarExecute(Sender: TObject);
    procedure actionFecharExecute(Sender: TObject);
    procedure actionAnexarDocumentosExecute(Sender: TObject);
    procedure actionContratoExecute(Sender: TObject);
    procedure cboTipoPessoaPropertiesChange(Sender: TObject);
  private
    FAcao: TAcao;
    FID: integer;
    { Private declarations }
    procedure ClearFields;
    procedure SetupFields(FCadastro: TCadastroContratadosController);
    procedure SetupClassCadastro(FCadastro: TCadastroContratadosController);
    procedure PopulaBancos;
    procedure PopulaEstados;
    function PesquisaCadastro(): boolean;
    procedure PopulaEnderecos(iCadastro: Integer);
    procedure PopulaContatos(iCadastro: Integer);
    procedure PopulaVeiculos(iCadastro: integer);
    procedure PopulaCNAE(iCadastro: Integer);
    procedure PopulaFinanceiro(iCadastro: integer);
    procedure PopulaRepresentante(iCadastro: integer);
    procedure PopulaRH(iCadastro: Integer);
    procedure Modo;
    function ValidaDados(): boolean;
    procedure IncluirVeículo(iCadastro: integer);
    procedure EditarVeiculo(iCadastro, iVeiculo: integer);
    function SalvarDados(): boolean;
    procedure SearchCEP(sCEP: String);
    procedure SearchCNPJ(sCNPJ: string);
    procedure SearchCNPJMEI(sCNPJ: string);
    procedure ImprimeContratoColaborador(sData, sAtividade, sLocal: String);
    procedure ImprimeContratoAutonomo(sData, sAtividade, sLocal: String);
    procedure ImprimeContratoEntregador(sData, sLocal: String);

    procedure EmiteContrato;
    procedure EditarCadastro;
    Procedure NovoCadastro;
    procedure AnexarDocumento;
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

procedure Tview_SisGeFContractedDetail.actionAnexarDocumentosExecute(Sender: TObject);
begin
  AnexarDocumento;
end;

procedure Tview_SisGeFContractedDetail.actionCancelarExecute(Sender: TObject);
begin
  if FAcao <> tacIndefinido then
  begin
    FAcao := tacIndefinido;
    Modo;
  end;
end;

procedure Tview_SisGeFContractedDetail.actionContratoExecute(Sender: TObject);
begin
  EmiteContrato;
end;

procedure Tview_SisGeFContractedDetail.actionFecharExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tview_SisGeFContractedDetail.actionGravarExecute(Sender: TObject);
begin
  if SalvarDados then
  begin
    if FAcao = tacIncluir then
    begin
      FAcao := tacAlterar;
      Modo;
    end
    else
    begin
      ModalResult := mrOk;
    end;
  end;
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

procedure Tview_SisGeFContractedDetail.AnexarDocumento;
var
  sPast : string;
  FFunctions: TUtils;
begin
  FFunctions := TUtils.Create;
  Global.Parametros.pPasta := FFunctions.LeIni(ExtractFilePath(Application.ExeName) + 'database.ini', 'Database', 'Folder');
  sPast := Global.Parametros.pPasta + '\' + maskEditID.Text;
  if not Assigned(view_SisgeFAttachDocuments) then
    view_SisgeFAttachDocuments := Tview_SisgeFAttachDocuments.Create(Application);
  view_SisgeFAttachDocuments.FPasta := sPast;
  view_SisgeFAttachDocuments.Show;
  FFunctions.Free;
end;

procedure Tview_SisGeFContractedDetail.cboTipoPessoaPropertiesChange(Sender: TObject);
begin
  if cboTipoPessoa.ItemIndex = 2 then
  begin
    maskEditCPCNPJ.Properties.Buttons[0].Enabled := True;
    maskEditCPCNPJ.Properties.EditMask := '!00\.000\.000\/0000\-00;0; ';
    cboSexo.ItemIndex := 3;
    lyiSexo.Visible := False;
    layoutGroupPessoaFisica.Visible := False;
    layoutGroupPessoaJuridica.Visible := True;
  end
  else
  begin
    maskEditCPCNPJ.Properties.Buttons[0].Enabled := False;
    maskEditCPCNPJ.Properties.EditMask := '!000\.000\.000\-00;0; ';
    layoutGroupPessoaJuridica.Visible := False;
    layoutGroupPessoaFisica.Visible := True;
    cboSexo.ItemIndex := 0;
    lyiSexo.Visible := True;
  end;
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
  cboTipoPessoa.ItemIndex := 2;
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
  cboSexo.ItemIndex := 3;
  cboBase.ItemIndex := 0;
  icbFuncao.ItemIndex := 0;
  cboCategoria.ItemIndex := 0;
  textEditIM.Clear;
  comboBoxCRT.ItemIndex := 0;
  if memTableEnderecos.Active then memTableEnderecos.Close;
  if memTableContatos.Active then memTableContatos.Close;
  comboBoxFormaPagamento.ItemIndex := 0;
  lookupComboBoxBanco.Clear;
  textEditAgencia.Clear;
  textEditConta.Clear;
  textEditChavePIX.Clear;
  memoObservacoes.Lines.Clear;
end;

procedure Tview_SisGeFContractedDetail.EditarCadastro;
begin
  if not PesquisaCadastro() then
    ModalResult := mrOk;
    Exit;
  Modo;
  cboTipoPessoa.SetFocus;
end;

procedure Tview_SisGeFContractedDetail.EditarVeiculo(iCadastro, iVeiculo: integer);
begin
//  if not Assigned(view_SisGeFVehiclesRegistrationDetail) then
//  begin
//    view_SisGeFVehiclesRegistrationDetail := Tview_SisGeFVehiclesRegistrationDetail.Create(Application);
//  end;
//  view_SisGeFVehiclesRegistrationDetail.iID := iVeiculo;
//  view_SisGeFVehiclesRegistrationDetail.fAcao := tacAlterar;
//  view_SisGeFVehiclesRegistrationDetail.fRegistro := iCadastro;
//  if view_SisGeFVehiclesRegistrationDetail.ShowModal() = mrOk then
//  begin
//    PopulaVeiculos(iCadastro);
//  end;
//  FreeAndNil(view_SisGeFVehiclesRegistrationDetail);
end;

procedure Tview_SisGeFContractedDetail.EmiteContrato;
var
  iTipo: integer;
  sData, sValor, sAtividade, sFuncao, sLocal: String;
begin
  try
    if not Assigned(view_SisGeFContractEmission) then begin
      view_SisGeFContractEmission := Tview_SisGeFContractEmission.Create(Application);
    end;
    if view_SisGeFContractEmission.ShowModal = mrCancel Then
      Exit;
    iTipo := view_SisGeFContractEmission.radioGroup.ItemIndex;
    sData := view_SisGeFContractEmission.dateContrato.Text;
    sValor := Self.cedSalario.Text;
    sAtividade := view_SisGeFContractEmission.memoAtividades.Text;
    sLocal := view_SisGeFContractEmission.txtLocal.Text;
    sFuncao := icbFuncao.Text;
    case iTipo of
      0 : ImprimeContratoColaborador(sData, sAtividade, sLocal);
      1 : ImprimeContratoEntregador(sData, sLocal);
      2 : ImprimeContratoAutonomo(sData, sAtividade, sLocal);
      else
        Exit;
    end;
  finally
    FreeAndNil(view_SisGeFContractEmission);
  end;
end;

procedure Tview_SisGeFContractedDetail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  memTableEnderecos.Active := False;
  memTableContatos.Active := False;
  memTableBancos.Active := False;
  memTableEstados.Active := False;
  memTableCNAE.Active := False;
  Action := caFree;
  view_SisGeFContractedDetail := nil;
end;

procedure Tview_SisGeFContractedDetail.FormShow(Sender: TObject);
begin
  PopulaBancos;
  PopulaEstados;
  Modo;
  case FAcao of
    tacIncluir : NovoCadastro;
    tacAlterar : EditarCadastro;
    else
      Exit;
  end;
end;

procedure Tview_SisGeFContractedDetail.ImprimeContratoAutonomo(sData, sAtividade, sLocal: String);
var
  sEndereco: String;
  sDataExtenso: String;
  dtData: TDate;
  sExtenco: String;
  sValor: string;
  sFuncao : string;
  FFuncao: TUtils;
begin
  FFuncao := TUtils.Create;
  sEndereco := '';
  dtData := StrToDateDef(sData,0);
  sDataExtenso :=  sLocal + ', ' + FormatDateTime('dd "de" mmmm "de" yyyy', dtData);
  with Data_Sisgef.frxReport do begin
    if not Assigned(view_Impressao) then begin
      view_Impressao := Tview_Impressao.Create(Application);
    end;
    view_Impressao.cxLabel1.Caption := 'CONTRATO DE PRESTAÇÃO DE SERVIÇO - AUTÔNOMO';
    view_Impressao.cxArquivo.Text := ExtractFilePath(Application.ExeName) + 'Reports\contratoAutonomo.fr3';
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
    sValor := cedSalario.Text;
    sExtenco := FFuncao.valorPorExtenso(StrToFloatDef(ReplaceStr(sValor,'.',''),0));
    sEndereco := dbTextEditEndereco.Text + ', ' + dbTextEditNumero.Text;
    if dbTextEditComplemento.Text = '' then
    begin
      sEndereco := sEndereco + ', ' + dbTextEditComplemento.Text;
    end;
    sEndereco := sEndereco + ', bairro ' + dbTextEditBairro.Text;
    sEndereco := sEndereco + ', cidade ' + dbTextEditCidade.Text + '/' + dbLookupComboBoxUFEndereco.Text;
    sEndereco := sEndereco + ', CEP: ' + dbMaskEditCEP.Text;
    sFuncao := icbFuncao.Text;
    LoadFromFile(view_Impressao.cxArquivo.Text);
    Variables.Items[Variables.IndexOf('pNomeContratado')].Value :=  QuotedStr(textEditNome.Text);
    Variables.Items[Variables.IndexOf('pDocContratado')].Value :=  QuotedStr(maskEditCPCNPJ.Text);
    Variables.Items[Variables.IndexOf('pEnderecoContratado')].Value :=  QuotedStr(sEndereco);
    Variables.Items[Variables.IndexOf('pFuncao')].Value :=  QuotedStr(sFuncao);
    Variables.Items[Variables.IndexOf('pAtividades')].Value :=  QuotedStr(sAtividade);
    Variables.Items[Variables.IndexOf('pDataInicio')].Value :=  QuotedStr(sData);
    Variables.Items[Variables.IndexOf('pValorNumeral')].Value :=  QuotedStr(sValor);
    Variables.Items[Variables.IndexOf('pValorExtencao')].Value :=  QuotedStr(sExtenco);
    Variables.Items[Variables.IndexOf('pDataExtenco')].Value :=  QuotedStr(sDataExtenso);

    FFuncao.Free;
    FreeAndNil(view_Impressao);
    ShowReport(True);
  end;

end;

procedure Tview_SisGeFContractedDetail.ImprimeContratoColaborador(sData, sAtividade, sLocal: String);
var
  sEndereco: String;
  sDataExtenso: String;
  dtData: TDate;
  sExtenco: String;
  sValor: string;
  sFuncao : string;
  FFuncao: TUtils;
begin
  FFuncao := TUtils.Create;
  sEndereco := '';
  dtData := StrToDateDef(sData,0);
  sDataExtenso :=  sLocal + ', ' + FormatDateTime('dd "de" mmmm "de" yyyy', dtData);
  with Data_Sisgef.frxReport do begin
    if not Assigned(view_Impressao) then begin
      view_Impressao := Tview_Impressao.Create(Application);
    end;
    view_Impressao.cxLabel1.Caption := 'CONTRATO DE PRESTAÇÃO DE SERVIÇO - CONTRATADO';
    view_Impressao.cxArquivo.Text := ExtractFilePath(Application.ExeName) + 'Reports\contratoColaborador.fr3';
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
    sValor := cedSalario.Text;
    sExtenco := FFuncao.valorPorExtenso(StrToFloatDef(ReplaceStr(sValor,'.',''),0));
    sEndereco := dbTextEditEndereco.Text + ', ' + dbTextEditNumero.Text;
    if dbTextEditComplemento.Text = '' then
    begin
      sEndereco := sEndereco + ', ' + dbTextEditComplemento.Text;
    end;
    sEndereco := sEndereco + ', bairro ' + dbTextEditBairro.Text;
    sEndereco := sEndereco + ', cidade ' + dbTextEditCidade.Text + '/' + dbLookupComboBoxUFEndereco.Text;
    sEndereco := sEndereco + ', CEP: ' + dbMaskEditCEP.Text;
    sFuncao := icbFuncao.Text;
    LoadFromFile(view_Impressao.cxArquivo.Text);
    Variables.Items[Variables.IndexOf('pNomeContratado')].Value :=  QuotedStr(textEditNome.Text);
    Variables.Items[Variables.IndexOf('pDocContratado')].Value :=  QuotedStr(maskEditCPCNPJ.Text);
    Variables.Items[Variables.IndexOf('pEnderecoContratado')].Value :=  QuotedStr(sEndereco);
    Variables.Items[Variables.IndexOf('pNomeRepresentante')].Value :=  QuotedStr(txtRepresentante.Text);
    Variables.Items[Variables.IndexOf('pDocRepresentante')].Value :=  QuotedStr(mskCPFRepresentante.Text);
    Variables.Items[Variables.IndexOf('pFuncao')].Value :=  QuotedStr(sFuncao);
    Variables.Items[Variables.IndexOf('pAtividades')].Value :=  QuotedStr(sAtividade);
    Variables.Items[Variables.IndexOf('pDataInicio')].Value :=  QuotedStr(sData);
    Variables.Items[Variables.IndexOf('pValorNumeral')].Value :=  QuotedStr(sValor);
    Variables.Items[Variables.IndexOf('pValorExtencao')].Value :=  QuotedStr(sExtenco);
    Variables.Items[Variables.IndexOf('pDataExtenco')].Value :=  QuotedStr(sDataExtenso);

    FFuncao.Free;
    FreeAndNil(view_Impressao);
    ShowReport(True);
  end;
end;

procedure Tview_SisGeFContractedDetail.ImprimeContratoEntregador(sData, sLocal: String);
var
  sEndereco: String;
  sDataExtenso: String;
  dtData: TDate;
begin
  sEndereco := '';
  dtData := StrToDateDef(sData,0);
  sDataExtenso := sLocal + ',' + FormatDateTime('dd "de" mmmm "de" yyyy', dtData);
  with Data_Sisgef.frxReport do begin
    if not Assigned(view_Impressao) then begin
      view_Impressao := Tview_Impressao.Create(Application);
    end;
    view_Impressao.cxLabel1.Caption := 'CONTRATO DE PRESTAÇÃO DE SERVIÇO - MOTORISTA / ENTREGADOR';
    view_Impressao.cxArquivo.Text := ExtractFilePath(Application.ExeName) + 'Reports\contratoEntregador.fr3';
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
    sEndereco := sEndereco + ', CEP: ' + dbMaskEditCEP.Text;
    LoadFromFile(view_Impressao.cxArquivo.Text);
   Variables.Items[Variables.IndexOf('pNomeContratado')].Value :=  QuotedStr(textEditNome.Text);
    Variables.Items[Variables.IndexOf('pDocContratado')].Value :=  QuotedStr(maskEditCPCNPJ.Text);
    Variables.Items[Variables.IndexOf('pEnderecoContratado')].Value :=  QuotedStr(sEndereco);
    Variables.Items[Variables.IndexOf('pNomeRepresentante')].Value :=  QuotedStr(txtRepresentante.Text);
    Variables.Items[Variables.IndexOf('pDocRepresentante')].Value :=  QuotedStr(mskCPFRepresentante.Text);
    Variables.Items[Variables.IndexOf('pDocRepresentante')].Value :=  QuotedStr(maskEditCPCNPJ.Text);
    Variables.Items[Variables.IndexOf('pDataInicio')].Value :=  QuotedStr(sData);
    Variables.Items[Variables.IndexOf('pDataExtenco')].Value :=  QuotedStr(sDataExtenso);
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
    maskEditID.Properties.ReadOnly := True;
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
    textEditIM.Properties.ReadOnly := True;
    comboBoxCRT.Properties.ReadOnly := True;
    comboBoxFormaPagamento.Properties.ReadOnly := True;
    lookupComboBoxBanco.Properties.ReadOnly := True;
    textEditAgencia.Properties.ReadOnly := True;
    textEditConta.Properties.ReadOnly := True;
    textEditChavePIX.Properties.ReadOnly := True;
    memoObservacoes.Properties.ReadOnly := True;
    dsEnderecos.AutoEdit := False;
    dsContatos.AutoEdit := False;
    cboSexo.Properties.ReadOnly := True;
    cboTipoPessoa.Properties.ReadOnly := True;
    cedSalario.Properties.ReadOnly := True;
    cboBase.Properties.ReadOnly := True;
    icbFuncao.Properties.ReadOnly := True;
    datAdmissao.Properties.ReadOnly := True;
    datDEmissao.Properties.ReadOnly := True;
    cboCategoria.Properties.ReadOnly := True;
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
    actionNovoVeiculo.Enabled := False;
    actionEditarVeiculo.Enabled := False;
    maskEditID.Properties.ReadOnly := True;
    maskEditCPCNPJ.Properties.ReadOnly := False;
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
    textEditIM.Properties.ReadOnly := False;
    comboBoxCRT.Properties.ReadOnly := False;
    comboBoxFormaPagamento.Properties.ReadOnly := False;
    lookupComboBoxBanco.Properties.ReadOnly := False;
    textEditAgencia.Properties.ReadOnly := False;
    textEditConta.Properties.ReadOnly := False;
    textEditChavePIX.Properties.ReadOnly := False;
    memoObservacoes.Properties.ReadOnly := False;
    memTableEnderecos.Active := True;
    memTableContatos.Active := True;
    dsEnderecos.AutoEdit := True;
    dsContatos.AutoEdit := True;
    cboSexo.Properties.ReadOnly := False;
    cboTipoPessoa.Properties.ReadOnly := False;
    cedSalario.Properties.ReadOnly := False;
    cboBase.Properties.ReadOnly := False;
    icbFuncao.Properties.ReadOnly := False;
    datAdmissao.Properties.ReadOnly := False;
    datDEmissao.Properties.ReadOnly := False;
    cboCategoria.Properties.ReadOnly := False;
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
    actionContrato.Enabled := True;
    actionNovoVeiculo.Enabled := True;
    actionEditarVeiculo.Enabled := True;
    maskEditID.Properties.ReadOnly := True;
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
    textEditIM.Properties.ReadOnly := False;
    comboBoxCRT.Properties.ReadOnly := False;
    comboBoxFormaPagamento.Properties.ReadOnly := False;
    lookupComboBoxBanco.Properties.ReadOnly := False;
    textEditAgencia.Properties.ReadOnly := False;
    textEditConta.Properties.ReadOnly := False;
    textEditChavePIX.Properties.ReadOnly := False;
    memoObservacoes.Properties.ReadOnly := False;
    dsEnderecos.AutoEdit := True;
    dsContatos.AutoEdit := True;
    cboSexo.Properties.ReadOnly := False;
    cboTipoPessoa.Properties.ReadOnly := False;
    cedSalario.Properties.ReadOnly := False;
    cboBase.Properties.ReadOnly := False;
    icbFuncao.Properties.ReadOnly := False;
    datAdmissao.Properties.ReadOnly := False;
    datDEmissao.Properties.ReadOnly := False;
    cboCategoria.Properties.ReadOnly := False;
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
    actionNovoVeiculo.Enabled := False;
    actionEditarVeiculo.Enabled := False;
    maskEditID.Properties.ReadOnly := True;
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
    textEditIM.Properties.ReadOnly := True;
    comboBoxCRT.Properties.ReadOnly := True;
    comboBoxFormaPagamento.Properties.ReadOnly := True;
    lookupComboBoxBanco.Properties.ReadOnly := True;
    textEditAgencia.Properties.ReadOnly := True;
    textEditConta.Properties.ReadOnly := True;
    textEditChavePIX.Properties.ReadOnly := True;
    memoObservacoes.Properties.ReadOnly := True;
    dsEnderecos.AutoEdit := False;
    dsContatos.AutoEdit := False;
    cboSexo.Properties.ReadOnly := True;
    cboTipoPessoa.Properties.ReadOnly := True;
    cedSalario.Properties.ReadOnly := True;
    cboBase.Properties.ReadOnly := True;
    icbFuncao.Properties.ReadOnly := True;
    datAdmissao.Properties.ReadOnly := True;
    datDEmissao.Properties.ReadOnly := True;
    cboCategoria.Properties.ReadOnly := True;

  end;
end;

procedure Tview_SisGeFContractedDetail.NovoCadastro;
begin
  Modo;
  cboTipoPessoa.SetFocus;
end;

function Tview_SisGeFContractedDetail.PesquisaCadastro: boolean;
var
  aParam: array of string;
  cadastro : TCadastroContratadosController;
begin
  try
    cadastro := TCadastroContratadosController.Create;
    Result := False;
    SetLength(aParam,2);
    aparam := ['ID', FID.ToString];
    if cadastro.Search(aParam) then
    begin
      if not cadastro.SetupRecord then
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
    Result := True;
  finally
    Finalize(aParam);
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

procedure Tview_SisGeFContractedDetail.PopulaCNAE(iCadastro: Integer);
var
  FCNAE : TCadastroContratadosCNAEController;
  aParam: array of string;
begin
  try
    FCNAE := TCadastroContratadosCNAEController.Create;
    if memTableContatos.Active then
    begin
      memTableContatos.Close;
    end;
    SetLength(aParam,2);
    aParam := ['CONTRATADO',iCadastro.ToString];
    if FCNAE.Search(aParam) then
    begin
      memTableCNAE.CopyDataSet(FCNAE.FCNAE.Query);
    end;
    FCNAE.FCNAE.Query.Connection.Close;
    if not memTableCNAE.Active then
      memTableCNAE.Active := True
  finally
    FCNAE.Free;
  end;
end;

procedure Tview_SisGeFContractedDetail.PopulaContatos(iCadastro: Integer);
var
  FContatos : TContratadosContatosController;
  aParam: array of string;
begin
  try
    FContatos := TContratadosContatosController.Create;
    if memTableContatos.Active then
    begin
      memTableContatos.Close;
    end;
    SetLength(aParam,2);
    aParam := ['CONTRATADO',iCadastro.ToString];
    if FContatos.Search(aParam) then
    begin
      memTableContatos.CopyDataSet(FContatos.FContatos.Query);
    end;
    FContatos.FContatos.Query.Connection.Close;
    if not memTableContatos.Active then
      memTableContatos.Active := True;
  finally
    FContatos.Free;
  end;
end;

procedure Tview_SisGeFContractedDetail.PopulaEnderecos(iCadastro: Integer);
var
  FEnderecos : TContratadosEnderecosController;
  aParam: array of string;
begin
  try
    FEnderecos := TContratadosEnderecosController.Create;
    if memTableEnderecos.Active then
    begin
      memTableEnderecos.Close;
    end;
    SetLength(aParam,2);
    aParam := ['CONTRATADO',iCadastro.ToString];
    if FEnderecos.Search(aParam) then
    begin
      memTableEnderecos.CopyDataSet(FEnderecos.FEnderecos.Query);
    end;
    FEnderecos.FEnderecos.Query.Connection.Close;
    if not memTableEnderecos.Active then
      memTableEnderecos.Active := True;
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

procedure Tview_SisGeFContractedDetail.PopulaFinanceiro(iCadastro: integer);
var
  FFinanceiro : TContratadosFinanceiroController;
  aParam: array of string;
begin
  try
    FFinanceiro := TContratadosFinanceiroController.Create;
    SetLength(aParam,2);
    aParam := ['CONTRATADO',iCadastro.ToString];
    if FFinanceiro.Search(aParam) then
    begin
      if FFinanceiro.SetupRecord then
      begin
        comboBoxFormaPagamento.Text := FFinanceiro.FFinanceiro.ARecord.des_forma_pagamento;
        lookupComboBoxBanco.EditValue := FFinanceiro.FFinanceiro.ARecord.cod_banco;
        textEditAgencia.Text := FFinanceiro.FFinanceiro.ARecord.cod_agencia;
        textEditConta.Text := FFinanceiro.FFinanceiro.ARecord.num_conta;
        textEditChavePIX.Text := FFinanceiro.FFinanceiro.ARecord.chave_pix;
      end
      else
      begin
        MessageDlg(FFinanceiro.FFinanceiro.Mensagem, mtError, [mbCancel], 0)
      end;
    end;
    FFinanceiro.FFinanceiro.Query.Connection.Close;
  finally
    FFinanceiro.Free;
  end;
end;

procedure Tview_SisGeFContractedDetail.PopulaRepresentante(iCadastro: integer);
var
  FRepresentante : TContratadosRepresentanteController;
  aParam: array of string;
begin
  try
    FRepresentante := TContratadosRepresentanteController.Create;
    SetLength(aParam,2);
    aParam := ['CONTRATADO',iCadastro.ToString];
    if FRepresentante.Search(aParam) then
    begin
      if FRepresentante.SetupRecord then
      begin
        txtRepresentante.Text := FRepresentante.FRepresentante.ARecord.nom_representante;
        mskCPFRepresentante.EditValue := FRepresentante.FRepresentante.ARecord.cpf_representante;
      end
      else
      begin
        MessageDlg(FRepresentante.FRepresentante.Mensagem, mtError, [mbCancel], 0)
      end;
    end;
    FRepresentante.FRepresentante.Query.Connection.Close;
  finally
    FRepresentante.Free;
  end;
end;

procedure Tview_SisGeFContractedDetail.PopulaRH(iCadastro: Integer);
var
  FRH : TContratadosRHController;
  aParam: array of string;
begin
  try
    FRH := TContratadosRHController.Create;
    SetLength(aParam,2);
    aParam := ['CONTRATADO',iCadastro.ToString];
    if FRH.Search(aParam) then
    begin
      if FRH.SetupRecord then
      begin
        cedSalario.Value    := FRH.FRH.ARecord.val_salario;
        cboBase.ItemIndex   := FRH.FRH.ARecord.id_departamento;
        icbFuncao.EditValue := FRH.FRH.ARecord.id_funcao;
        datAdmissao.Date    := FRH.FRH.ARecord.dat_admissao;
        datDemissao.Date    := FRH.FRH.ARecord.dat_demissao;
      end
      else
      begin
        MessageDlg(FRH.FRH.Mensagem, mtError, [mbCancel], 0)
      end;
    end;
    FRH.FRH.Query.Connection.Close;
  finally
    FRH.Free;
  end;
end;

procedure Tview_SisGeFContractedDetail.PopulaVeiculos(iCadastro: integer);
//var
//  sMensagem: String;
//  FVeiculos: TControllerSisGeFVehiclesRegistration;
//  aParam : array of variant;
begin
//  try
//    memTableVeiculos.Active := False;
//    FVeiculos := TControllerSisGeFVehiclesRegistration.Create;
//    SetLength(aParam,2);
//    aParam := ['CADASTRO',iCadastro];
//    if FVeiculos.Search(aParam) then
//    begin
//      memTableVeiculos.Active := True;
//      memTableVeiculos.CopyDataSet(FVeiculos.Veiculos.Query);
//      FVeiculos.Veiculos.Query.Connection.Connected := False;
//      if not memTableVeiculos.IsEmpty then
//        gridVeiculosDBTableView1.DataController.DataSource.DataSet.First;
//    end;
//  finally
//    FVeiculos.Free;
//  end;
end;

function Tview_SisGeFContractedDetail.SalvarDados: boolean;
var
  FCadastro       : TCadastroContratadosController;
  FEnderecos      : TContratadosEnderecosController;
  FContatos       : TContratadosContatosController;
  FFinanceiro     : TContratadosFinanceiroController;
  FRepresentante  : TContratadosRepresentanteController;
  FRH             : TContratadosRHController;
  FCNAE           : TCadastroContratadosCNAEController;
begin
  FCadastro       :=  TCadastroContratadosController.Create;
  FEnderecos      :=  TContratadosEnderecosController.Create;
  FContatos       :=  TContratadosContatosController.Create;
  FFinanceiro     :=  TContratadosFinanceiroController.Create;
  FRepresentante  :=  TContratadosRepresentanteController.Create;
  FRH             :=  TContratadosRHController.Create;
  FCNAE           :=  TCadastroContratadosCNAEController.Create;
  try
    Result := False;
    if not ValidaDados() then
    begin
      Exit;
    end;
   if MessageDlg('Confirma salvar os dados ?', mtConfirmation, [mbOK, mbCancel], 0) = mrCancel then
     Exit;

   //Cadastro

   FCadastro.FContratados.Acao := FAcao;
   SetupClassCadastro(FCadastro);
   if not FCadastro.SaveRecord() then
    begin
      MessageDlg(FCadastro.FContratados.Mensagem, mtError, [mbCancel], 0);
      Exit;
    end;
    maskEditID.EditValue := FCadastro.FContratados.ARecord.id;

    //Endereços

    FEnderecos.FEnderecos.ARecord.id_contratados := FCadastro.FContratados.ARecord.id;
    FEnderecos.FEnderecos.Acao := tacExcluir;
    if not FEnderecos.SaveRecord then
    begin
      MessageDlg('Ocorreu um problema ao preparar a gravação dos endereços!', mtError, [mbCancel], 0);
      Exit;
    end;
    while not memTableEnderecos.Eof do
    begin
      FEnderecos.FEnderecos.ARecord.des_tipo := memTableEnderecos_des_tipo.AsString;
      FEnderecos.FEnderecos.ARecord.num_cep := memTableEnderecosnum_cep.AsString;
      FEnderecos.FEnderecos.ARecord.des_logradouro := memTableEnderecosdes_logradouro.AsString;
      FEnderecos.FEnderecos.ARecord.num_logradouro := memTableEnderecosnum_logradouro.AsString;
      FEnderecos.FEnderecos.ARecord.des_complemento := memTableEnderecosdes_complemento.AsString;
      FEnderecos.FEnderecos.ARecord.des_bairro := memTableEnderecos_des_bairro.AsString;
      FEnderecos.FEnderecos.ARecord.nom_cidade := memTableEnderecosnom_cidade.AsString;
      FEnderecos.FEnderecos.ARecord.uf_estado := memTableEnderecosuf_estado.AsString;
      FEnderecos.FEnderecos.ARecord.des_referencia := memTableEnderecosdes_referencia.AsString;
      FEnderecos.FEnderecos.Acao := tacIncluir;
      if not FEnderecos.FEnderecos.SaveRecord then
      begin
        MessageDlg(FEnderecos.FEnderecos.Mensagem, mtError, [mbCancel], 0);
        Exit;
      end;
      memTableEnderecos.Next;
    end;

    //Contatos

    FContatos.FContatos.ARecord.id_contratados := FCadastro.FContratados.ARecord.id;
    FContatos.FContatos.ARecord.seq_contato := -1;
    FContatos.FContatos.Acao := tacExcluir;
    if not FContatos.SaveRecord then
    begin
      MessageDlg(FContatos.FContatos.Mensagem, mtError, [mbCancel], 0);
      Exit;
    end;
    while not memTableContatos.Eof do
    begin
      FContatos.FContatos.ARecord.des_contato := memTableContatosdes_contato.AsString;
      FContatos.FContatos.ARecord.num_telefone := memTableContatosnum_telefone.AsString;
      FContatos.FContatos.ARecord.des_email := memTableContatosdes_email.AsString;
      FContatos.FContatos.Acao := tacIncluir;
      if not FContatos.FContatos.SaveRecord then
      begin
        MessageDlg(FContatos.FContatos.Mensagem, mtError, [mbCancel], 0);
        Exit;
      end;
      memTableContatos.Next;
    end;

    // Financeiro

    FFinanceiro.FFinanceiro.ARecord.id_contratados  :=  FCadastro.FContratados.ARecord.id;
    FFinanceiro.FFinanceiro.ARecord.id_financeiro   :=  -1;
    FFinanceiro.FFinanceiro.Acao                    :=  tacExcluir;
    if not FFinanceiro.SaveRecord then
    begin
      MessageDlg(FFinanceiro.FFinanceiro.Mensagem, mtError, [mbCancel], 0);
      Exit;
    end;
    FFinanceiro.FFinanceiro.ARecord.cod_banco           :=  lookupComboBoxBanco.Text;
    FFinanceiro.FFinanceiro.ARecord.cod_agencia         :=  textEditAgencia.Text;
    FFinanceiro.FFinanceiro.ARecord.num_conta           :=  textEditConta.Text;
    FFinanceiro.FFinanceiro.ARecord.chave_pix           :=  textEditChavePIX.Text;
    FFinanceiro.FFinanceiro.ARecord.des_forma_pagamento :=  comboBoxFormaPagamento.Text;
    FFinanceiro.FFinanceiro.Acao                        :=  tacIncluir;
    if not FFinanceiro.FFinanceiro.SaveRecord then
    begin
      MessageDlg(FFinanceiro.FFinanceiro.Mensagem, mtError, [mbCancel], 0);
    Exit;
    end;

    // Representante

    FRepresentante.FRepresentante.ARecord.id_contratados    :=  FCadastro.FContratados.ARecord.id;
    FRepresentante.FRepresentante.ARecord.id_REpresentante  :=  -1;
    FRepresentante.FRepresentante.Acao                      :=  tacExcluir;
    if not FRepresentante.SaveRecord then
    begin
      MessageDlg(FRepresentante.FRepresentante.Mensagem, mtError, [mbCancel], 0);
      Exit;
    end;
    FRepresentante.FRepresentante.ARecord.nom_representante :=  txtRepresentante.Text;
    FRepresentante.FRepresentante.ARecord.cpf_representante :=  mskCPFRepresentante.Text;
    FRepresentante.FRepresentante.Acao                      :=  tacIncluir;
    if not FRepresentante.FRepresentante.SaveRecord then
    begin
      MessageDlg(FRepresentante.FRepresentante.Mensagem, mtError, [mbCancel], 0);
      Exit;
    end;

    // RH

    FRH.FRH.ARecord.id_contratados  :=  FCadastro.FContratados.ARecord.id;
    FRH.FRH.ARecord.id_RH           :=  -1;
    FRH.FRH.Acao                    :=  tacExcluir;
    if not FRH.SaveRecord then
    begin
      MessageDlg(FRH.FRH.Mensagem, mtError, [mbCancel], 0);
      Exit;
    end;
    FRH.FRH.ARecord.val_salario     :=  cedSalario.Value;
    if datAdmissao.Text = '' then
      FRH.FRH.ARecord.dat_admissao    :=  0
    else
      FRH.FRH.ARecord.dat_admissao    :=  datAdmissao.Date;
    if datDEmissao.Text = '' then
      FRH.FRH.ARecord.dat_demissao  :=  0
    else
      FRH.FRH.ARecord.dat_demissao  :=  datDEmissao.Date;
    FRH.FRH.ARecord.id_departamento :=  cboBase.ItemIndex;
    FRH.FRH.ARecord.id_funcao       :=  icbFuncao.EditValue;
    FRH.FRH.Acao                    :=  tacIncluir;
    if not FRH.FRH.SaveRecord then
    begin
      MessageDlg(FRH.FRH.Mensagem, mtError, [mbCancel], 0);
      Exit;
    end;

    // CNAE

    FCNAE.FCNAE.ARecord.id_contratados  :=  FCadastro.FContratados.ARecord.id;
    FCNAE.FCNAE.ARecord.id_CNAE         :=  -1;
    FCNAE.FCNAE.Acao                    :=  tacExcluir;
    if not FCNAE.SaveRecord then
    begin
      MessageDlg(FCNAE.FCNAE.Mensagem, mtError, [mbCancel], 0);
      Exit;
    end;
    while not memTableCNAE.Eof do
    begin
      FCNAE.FCNAE.ARecord.des_tipo_cnae :=  memTableCNAEdes_tipo_cnae.AsString;
      FCNAE.FCNAE.ARecord.cod_cnae      :=  memTableCNAEcod_cnae.AsString;
      FCNAE.FCNAE.ARecord.des_cnae      :=  memTableCNAEdes_cnae.AsString;
      FCNAE.FCNAE.Acao                  :=  tacIncluir;
      if not FCNAE.FCNAE.SaveRecord then
      begin
        MessageDlg(FCNAE.FCNAE.Mensagem, mtError, [mbCancel], 0);
      Exit;
      end;
      memTableCNAE.Next;
    end;
    MessageDlg('Dados gravados com sucesso.', mtInformation, [mbOK], 0);
    Result := True;
  finally
    FCadastro.Free;
    FEnderecos.Free;
    FContatos.Free;
    FFinanceiro.Free;
    FRepresentante.Free;
    FRH.Free;
    FCNAE.Free;
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
          memTableEnderecos_des_bairro.AsString := Data_Sisgef.memTableCEPbairro.AsString;
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
      memTableEnderecos_des_bairro.AsString := APICEP.APICEP.Enderecos.Bairro;
      memTableEnderecosnom_cidade.AsString := APICEP.APICEP.Enderecos.Cidade;
      memTableEnderecosuf_estado.AsString := APICEP.APICEP.Enderecos.UF;
      //memTableEnderecosnum_cep.AsString := Data_Sisgef.memTableCEPcep.AsString;
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
      memTableCNAE.Active := False;
      memTableCNAE.Active := True;
      view_ResultadoConsultaCNPJ.memTableAP.First;
      while not view_ResultadoConsultaCNPJ.memTableAP.Eof do
      begin
        memTableCNAE.Insert;
        memTableCNAEdes_tipo_cnae.AsString := view_ResultadoConsultaCNPJ.memTableAPdes_tipo.AsString;
        memTableCNAEcod_cnae.AsString := view_ResultadoConsultaCNPJ.memTableAPcod_cnae.AsString;
        memTableCNAEdes_cnae.AsString := view_ResultadoConsultaCNPJ.memTableAPdes_cnae.AsString;
        memTableCNAE.Post;
        view_ResultadoConsultaCNPJ.memTableAP.Next;
      end;

    end;

    FreeAndNil(view_ResultadoConsultaCNPJ);

    textEditNome.Text := APICNPJ.APICNPJ.Pessoas.Nome;
    textEditNomeFantasia.Text := APICNPJ.APICNPJ.Pessoas.Fantasia;

    memTableEnderecos.Insert;
    memTableEnderecos_des_tipo.AsString := APICNPJ.APICNPJ.Enderecos.Tipo;
    memTableEnderecosnum_cep.AsString := APICNPJ.APICNPJ.Enderecos.CEP;
    memTableEnderecosdes_logradouro.AsString := APICNPJ.APICNPJ.Enderecos.Logradouro;
    memTableEnderecosnum_logradouro.AsString := APICNPJ.APICNPJ.Enderecos.Numero;
    memTableEnderecosdes_complemento.AsString := APICNPJ.APICNPJ.Enderecos.Complemento;
    memTableEnderecos_des_bairro.AsString := APICNPJ.APICNPJ.Enderecos.Bairro;
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

    //textEditRazaoMEI.Text := APICNPJ.APICNPJ.Pessoas.Nome;
    //textEditFantasiaMEI.Text := APICNPJ.APICNPJ.Pessoas.Fantasia;

  finally
    if Data_Sisgef.memTableCNPJ.Active then
      Data_Sisgef.memTableCNPJ.Active := False;
    APICNPJ.DisposeOf;
  end;
end;

procedure Tview_SisGeFContractedDetail.SetupClassCadastro(FCadastro: TCadastroContratadosController);
begin
  FCadastro.FContratados.ARecord.id := maskEditId.EditValue;
  FCadastro.FContratados.ARecord.cod_erp_contratados := '0';
  FCadastro.FContratados.ARecord.id_categoria := cboCategoria.ItemIndex;
  FCadastro.FContratados.ARecord.cod_pessoa := cboSexo.ItemIndex;
  if cboTipoPessoa.ItemIndex = 1 then
    FCadastro.FContratados.ARecord.des_tipo_doc := 'CPF'
  else if cboTipoPessoa.ItemIndex = 2 then
    FCadastro.FContratados.ARecord.des_tipo_doc := 'CNPJ'
  else
    FCadastro.FContratados.ARecord.des_tipo_doc := 'NONE';
  FCadastro.FContratados.ARecord.nom_razao_social := textEditNome.Text;
  FCadastro.FContratados.ARecord.nom_fantasia_alias := textEditNomeFantasia.Text;
  FCadastro.FContratados.ARecord.num_cpf_cnpj := maskEditCPCNPJ.EditValue;
  if cboTipoPessoa.ItemIndex = 1 then
    FCadastro.FContratados.ARecord.num_rg_ie := textEditRG.Text
  else if cboTipoPessoa.ItemIndex = 2 then
    FCadastro.FContratados.ARecord.num_rg_ie := textEditIE.Text;
  if FCadastro.FContratados.ARecord.num_rg_ie = '' then
    FCadastro.FContratados.ARecord.num_rg_ie := 'ISENTO';
  if dateEditDataRG.Text = '' then
    FCadastro.FContratados.ARecord.dat_emissao_rg := 0
  else
    FCadastro.FContratados.ARecord.dat_emissao_rg := dateEditDataRG.Date;
  FCadastro.FContratados.ARecord.nom_emissor_rg := textEditExpedidor.Text;
  FCadastro.FContratados.ARecord.uf_emissor_rg := lookupComboBoxUFRG.Text;
  if dateEditNascimento.Text = '' then
    FCadastro.FContratados.ARecord.dat_nascimento := 0
  else
    FCadastro.FContratados.ARecord.dat_nascimento := dateEditNascimento.Date;
  FCadastro.FContratados.ARecord.des_nacionalidade := 'BRASIL';
  FCadastro.FContratados.ARecord.des_naturalidade := textEditNaturalidade.Text;
  FCadastro.FContratados.ARecord.uf_naturalidade := lookupComboBoxNaturalidade.Text;
  FCadastro.FContratados.ARecord.nom_pai := textEditNomePai.Text;
  FCadastro.FContratados.ARecord.nom_mae := textEditNomeMae.Text;
  FCadastro.FContratados.ARecord.cod_crt  := comboBoxCRT.ItemIndex;
  FCadastro.FContratados.ARecord.num_cnh := textEditNumeroCNH.Text;
  FCadastro.FContratados.ARecord.num_registro_cnh := textEditRegistroCNH.Text;
  FCadastro.FContratados.ARecord.des_categoria_cnh := textEditCategoriaCNH.Text;
  if dateEditEmissaoCNH.Text = '' then
    FCadastro.FContratados.ARecord.dat_emissao_cnh := 0
  else
    FCadastro.FContratados.ARecord.dat_emissao_cnh := dateEditEmissaoCNH.Date;
  if dateEditValidadeCNH.Text = '' then
    FCadastro.FContratados.ARecord.dat_validade_cnh := 0
  else
    FCadastro.FContratados.ARecord.dat_validade_cnh := dateEditValidadeCNH.Date;
  if dateEditPrimeiraCNH.Text = '' then
    FCadastro.FContratados.ARecord.dat_primeira_cnh := 0
  else
    FCadastro.FContratados.ARecord.dat_primeira_cnh := dateEditPrimeiraCNH.Date;
  FCadastro.FContratados.ARecord.uf_cnh := lookupComboBoxUFCNH.Text;
  FCadastro.FContratados.ARecord.num_im := textEditIM.Text;
  FCadastro.FContratados.ARecord.des_obs := memoObservacoes.Text;
  FCadastro.FContratados.ARecord.cod_status := checkBoxStatus.EditValue;
  if FCadastro.FContratados.Acao = tacIncluir then
    FCadastro.FContratados.ARecord.dat_cadastro := Now();

end;

procedure Tview_SisGeFContractedDetail.SetupFields(FCadastro: TCadastroContratadosController);
begin
  maskEditID.EditValue := FCadastro.FContratados.ARecord.id;
  cboSexo.ItemIndex := FCadastro.FContratados.ARecord.cod_pessoa;
  if FCadastro.FContratados.ARecord.des_tipo_doc = 'CPF' then
    cboTipoPessoa.ItemIndex := 1
  else if FCadastro.FContratados.ARecord.des_tipo_doc = 'CNPJ' then
    cboTipoPessoa.ItemIndex := 2
  else
    cboTipoPessoa.ItemIndex := 0;
  maskEditCPCNPJ.EditValue := FCadastro.FContratados.ARecord.num_cpf_cnpj;
  textEditNome.Text := FCadastro.FContratados.ARecord.nom_razao_social;
  textEditRG.Text := FCadastro.FContratados.ARecord.num_rg_ie;
  textEditExpedidor.Text := FCadastro.FContratados.ARecord.nom_emissor_rg;
  dateEditDataRG.Date := FCadastro.FContratados.ARecord.dat_emissao_rg;
  dateEditNascimento.Date := FCadastro.FContratados.ARecord.dat_nascimento;
  lookupComboBoxUFRG.EditValue := FCadastro.FContratados.ARecord.uf_emissor_rg;
  textEditNomePai.Text := FCadastro.FContratados.ARecord.nom_pai;
  textEditNomeMae.Text := FCadastro.FContratados.ARecord.nom_mae;
  textEditNaturalidade.Text := FCadastro.FContratados.ARecord.des_naturalidade;
  lookupComboBoxNaturalidade.EditValue := FCadastro.FContratados.ARecord.uf_naturalidade;
  textEditNumeroCNH.Text := FCadastro.FContratados.ARecord.num_cnh;
  textEditRegistroCNH.Text := FCadastro.FContratados.ARecord.num_registro_cnh;
  textEditCategoriaCNH.Text := FCadastro.FContratados.ARecord.des_categoria_cnh;
  dateEditEmissaoCNH.Date := FCadastro.FContratados.ARecord.dat_emissao_cnh;
  dateEditValidadeCNH.Date := FCadastro.FContratados.ARecord.dat_validade_cnh;
  dateEditPrimeiraCNH.Date := FCadastro.FContratados.ARecord.dat_primeira_cnh;
  lookupComboBoxUFCNH.EditValue := FCadastro.FContratados.ARecord.uf_cnh;
  textEditNomeFantasia.Text := FCadastro.FContratados.ARecord.nom_fantasia_alias;
  textEditIE.Text := FCadastro.FContratados.ARecord.num_rg_ie;
  textEditIM.Text := FCadastro.FContratados.ARecord.num_im;
  comboBoxCRT.ItemIndex := FCadastro.FContratados.ARecord.cod_crt;
  memoObservacoes.Text := FCadastro.FContratados.ARecord.des_obs;
  checkBoxStatus.EditValue := FCadastro.FContratados.ARecord.cod_status;
  memTableEnderecos.Active := False;
  PopulaEnderecos(FCadastro.FContratados.ARecord.id);
  memTableContatos.Active := False;
  PopulaContatos(FCadastro.FContratados.ARecord.id);
  memTableCNAE.Active := False;
  PopulaCNAE(FCadastro.FContratados.ARecord.id);
  cboCategoria.ItemIndex := FCadastro.FContratados.ARecord.id_categoria;
  PopulaFinanceiro(FCadastro.FContratados.ARecord.id);
  PopulaRepresentante(FCadastro.FContratados.ARecord.id);
  PopulaRH(FCadastro.FContratados.ARecord.id);

end;

function Tview_SisGeFContractedDetail.ValidaDados: boolean;
var
  FCadastro : TCadastroContratadosController;
  sCPF: string;
begin
  try
    Result := False;
    FCadastro := TCadastroContratadosController.Create;
//    if FAcao = tacIncluir then
//    begin
//      if not Common.Utils.TUtils.CPF(maskEditCPCNPJ.Text) then
//      begin
//        Application.MessageBox('CPF incorreto!','Atenção',MB_OK + MB_ICONEXCLAMATION);
//        maskEditCPCNPJ.SetFocus;
//        Exit;
//      end;
//    end;

    if textEditNome.Text = '' then
    begin
      Application.MessageBox('Informe o nome ou razão social!','Atenção',MB_OK + MB_ICONEXCLAMATION);
      textEditNome.SetFocus;
      Exit;
    end;

    if cboTipoPessoa.ItemIndex = 2 then
    begin
      if textEditNomeFantasia.Text = '' then
      begin
        Application.MessageBox('Informe o nome fantasia!','Atenção',MB_OK + MB_ICONEXCLAMATION);
        textEditNomeFantasia.SetFocus;
        Exit;
      end;
      sCPF := Common.Utils.TUtils.DesmontaCPFCNPJ(maskEditCPCNPJ.Text);
      if Length(Trim(sCPF)) = 11 then
      begin
        if not Common.Utils.TUtils.CPF(maskEditCPCNPJ.Text) then
        begin
          Application.MessageBox('CPF do Contratado incorreto!','Atenção',MB_OK + MB_ICONEXCLAMATION);
          maskEditCPCNPJ.SetFocus;
          Exit;
        end;
      end
      else if Length(Trim(sCPF)) >= 14 then
      begin
        if not Common.Utils.TUtils.CNPJ(maskEditCPCNPJ.Text) then
        begin
          Application.MessageBox('CNPJ do Contratado incorreto!','Atenção',MB_OK + MB_ICONEXCLAMATION);
          maskEditCPCNPJ.SetFocus;
          Exit;
        end;
      end;
    end;

    if cboTipoPessoa.ItemIndex = 1 then
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
          if lookupComboBoxUFRG.EditText = '' then
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
        if dateEditNascimento.Text <> '' then
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
      if Length(Trim(sCPF)) = 11 then
      begin
        if not Common.Utils.TUtils.CPF(maskEditCPCNPJ.Text) then
        begin
          Application.MessageBox('CPF do Contratado incorreto!','Atenção',MB_OK + MB_ICONEXCLAMATION);
          maskEditCPCNPJ.SetFocus;
          Exit;
        end;
      end
      else if Length(Trim(sCPF)) >= 14 then
      begin
        if not Common.Utils.TUtils.CNPJ(maskEditCPCNPJ.Text) then
        begin
          Application.MessageBox('CNPJ do Contratado incorreto!','Atenção',MB_OK + MB_ICONEXCLAMATION);
          maskEditCPCNPJ.SetFocus;
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
