unit View.CadastroEmpresas;

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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxLabel, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxBarBuiltInMenu, cxPC, System.Actions,
  Vcl.ActnList, cxTextEdit, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxCheckBox, cxDBEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxDBNavigator, Control.FilterData, Control.Estados, Control.Bancos, Control.CadastroContatos, Control.CadastroFinanceiro,
  Control.CadastroEnderecos, Control.CadastroGeral, Common.ENum, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  Tview_CadastroEmpresas = class(TForm)
    actionListCadastroEmpresas: TActionList;
    actionPesquisar: TAction;
    layoutControlHeaderGroup_Root: TdxLayoutGroup;
    layoutControlHeader: TdxLayoutControl;
    labelTitle: TcxLabel;
    layoutLabelTitle: TdxLayoutItem;
    actionFechar: TAction;
    buttonFechar: TcxButton;
    layoutButtonFechar: TdxLayoutItem;
    layoutControlBodyGroup_Root: TdxLayoutGroup;
    layoutControlBody: TdxLayoutControl;
    layoutControlPesquisaGroup_Root: TdxLayoutGroup;
    layoutControlPesquisa: TdxLayoutControl;
    layoutPesquisa: TdxLayoutItem;
    layoutControlCadastroGroup_Root: TdxLayoutGroup;
    layoutControlCadastro: TdxLayoutControl;
    layoutCadastro: TdxLayoutItem;
    textEditParametro: TcxTextEdit;
    layoutParametro: TdxLayoutItem;
    gridPesquisaDBTableView: TcxGridDBTableView;
    gridPesquisaLevel: TcxGridLevel;
    gridPesquisa: TcxGrid;
    layoutGridPesquisa: TdxLayoutItem;
    actionSelecionar: TAction;
    buttonSelecionar: TcxButton;
    layoutButtonSelecionar: TdxLayoutItem;
    dataSourcePesquisa: TDataSource;
    buttonPesquisar: TcxButton;
    layoutButtonPesquisar: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    actionFiltro: TAction;
    buttonFiltro: TcxButton;
    layoutButtonFiltro: TdxLayoutItem;
    textEditCodigo: TcxTextEdit;
    layoutTextEditCodigo: TdxLayoutItem;
    imageComboBoxPessoa: TcxImageComboBox;
    layoutImageComboBoxPessoa: TdxLayoutItem;
    maskEditCNPJCPF: TcxMaskEdit;
    layoutMaskEditCNPJCPF: TdxLayoutItem;
    textEditNome: TcxTextEdit;
    layoutTextEditNome: TdxLayoutItem;
    textEditAlias: TcxTextEdit;
    layoutTextEditAlias: TdxLayoutItem;
    imageComboboxSexo: TcxImageComboBox;
    layoutImageComboboxSexo: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    textEditIERG: TcxTextEdit;
    layoutTextEditIIERG: TdxLayoutItem;
    textEditIEST: TcxTextEdit;
    layouttextEditIEST: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    textEditIM: TcxTextEdit;
    layoutTextEditIM: TdxLayoutItem;
    textEditCNAE: TcxTextEdit;
    layoutTextEditCNAE: TdxLayoutItem;
    imageComboBoxCRT: TcxImageComboBox;
    layoutImageComboBoxCRT: TdxLayoutItem;
    checkBoxStatus: TcxCheckBox;
    layoutCheckBoxStatus: TdxLayoutItem;
    layoutGroupComplementos: TdxLayoutGroup;
    layoutGroupEnderecos: TdxLayoutGroup;
    layoutGroupContatos: TdxLayoutGroup;
    layoutGroupDadosBancarios: TdxLayoutGroup;
    dataSourceEnderecos: TDataSource;
    dbComboBoxTipoEndereco: TcxDBComboBox;
    layoutDBComboBoxTipoEndereco: TdxLayoutItem;
    dbMaskEditCEP: TcxDBMaskEdit;
    layoutDBMaskEditCEP: TdxLayoutItem;
    dataSourceUF: TDataSource;
    dbTextEditLogradouro: TcxDBTextEdit;
    layoutDBTextEditLogradouro: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dbTextEditNumero: TcxDBTextEdit;
    layoutDBTextEditNumero: TdxLayoutItem;
    dbTextEditComplemento: TcxDBTextEdit;
    layoutDBTextEditComplemento: TdxLayoutItem;
    dbTextEditBairro: TcxDBTextEdit;
    layoutDBTextEditBairro: TdxLayoutItem;
    dbTextEditCidade: TcxDBTextEdit;
    layoutDBTextEditCidade: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dbLookupComboBoxUF: TcxDBLookupComboBox;
    layoutDBLookupComboBoxUF: TdxLayoutItem;
    dbNavigatorEndereco: TcxDBNavigator;
    layoutDBNavigatorEnderecos: TdxLayoutItem;
    gridContatosDBTableView: TcxGridDBTableView;
    gridContatosLevel: TcxGridLevel;
    gridContatos: TcxGrid;
    layoutGridContatos: TdxLayoutItem;
    dataSourceContatos: TDataSource;
    gridContatosDBTableViewid_cadastro: TcxGridDBColumn;
    gridContatosDBTableViewseq_contato: TcxGridDBColumn;
    gridContatosDBTableViewdes_contato: TcxGridDBColumn;
    gridContatosDBTableViewnum_telefone: TcxGridDBColumn;
    gridContatosDBTableViewdes_email: TcxGridDBColumn;
    gridDadosBancariosDBTableView: TcxGridDBTableView;
    gridDadosBancariosLevel: TcxGridLevel;
    gridDadosBancarios: TcxGrid;
    layoutGridDadosBancarios: TdxLayoutItem;
    dataSourceDadosBancarios: TDataSource;
    gridDadosBancariosDBTableViewid_cadastro: TcxGridDBColumn;
    gridDadosBancariosDBTableViewseq_financeiro: TcxGridDBColumn;
    gridDadosBancariosDBTableViewdes_forma_credito: TcxGridDBColumn;
    gridDadosBancariosDBTableViewdes_tipo_conta: TcxGridDBColumn;
    gridDadosBancariosDBTableViewcod_banco: TcxGridDBColumn;
    gridDadosBancariosDBTableViewnum_agencia: TcxGridDBColumn;
    gridDadosBancariosDBTableViewdes_conta: TcxGridDBColumn;
    gridDadosBancariosDBTableViewcod_operacao: TcxGridDBColumn;
    gridDadosBancariosDBTableViewdom_ativo: TcxGridDBColumn;
    dataSourceBancos: TDataSource;
    gridPesquisaDBTableViewid_cadastro: TcxGridDBColumn;
    gridPesquisaDBTableViewcod_tipo_cadastro: TcxGridDBColumn;
    gridPesquisaDBTableViewcod_pessoa: TcxGridDBColumn;
    gridPesquisaDBTableViewnom_nome_razao: TcxGridDBColumn;
    gridPesquisaDBTableViewnom_fantasia: TcxGridDBColumn;
    gridPesquisaDBTableViewnum_cpf_cnpj: TcxGridDBColumn;
    gridPesquisaDBTableViewnum_rg_ie: TcxGridDBColumn;
    gridPesquisaDBTableViewdes_expedidor: TcxGridDBColumn;
    gridPesquisaDBTableViewdat_emissao_rg: TcxGridDBColumn;
    gridPesquisaDBTableViewuf_expedidor_rg: TcxGridDBColumn;
    gridPesquisaDBTableViewdat_nascimento: TcxGridDBColumn;
    gridPesquisaDBTableViewnom_pai: TcxGridDBColumn;
    gridPesquisaDBTableViewnom_mae: TcxGridDBColumn;
    gridPesquisaDBTableViewdes_nacionalidade: TcxGridDBColumn;
    gridPesquisaDBTableViewdes_naturalidade: TcxGridDBColumn;
    gridPesquisaDBTableViewuf_naturalidade: TcxGridDBColumn;
    gridPesquisaDBTableViewnum_suframa: TcxGridDBColumn;
    gridPesquisaDBTableViewnum_cnae: TcxGridDBColumn;
    gridPesquisaDBTableViewnum_crt: TcxGridDBColumn;
    gridPesquisaDBTableViewcod_seguranca_cnh: TcxGridDBColumn;
    gridPesquisaDBTableViewcod_cnh: TcxGridDBColumn;
    gridPesquisaDBTableViewnum_registro_cnh: TcxGridDBColumn;
    gridPesquisaDBTableViewdat_validade_cnh: TcxGridDBColumn;
    gridPesquisaDBTableViewdes_categoria_cnh: TcxGridDBColumn;
    gridPesquisaDBTableViewdat_emissao_cnh: TcxGridDBColumn;
    gridPesquisaDBTableViewdat_primeira_cnh: TcxGridDBColumn;
    gridPesquisaDBTableViewuf_cnh: TcxGridDBColumn;
    gridPesquisaDBTableViewcod_sexo: TcxGridDBColumn;
    gridPesquisaDBTableViewdes_estado_civil: TcxGridDBColumn;
    gridPesquisaDBTableViewdat_cadastro: TcxGridDBColumn;
    gridPesquisaDBTableViewcod_usuario: TcxGridDBColumn;
    gridPesquisaDBTableViewdes_imagem: TcxGridDBColumn;
    gridPesquisaDBTableViewid_status: TcxGridDBColumn;
    gridPesquisaDBTableViewdes_obs: TcxGridDBColumn;
    gridPesquisaDBTableViewnum_im: TcxGridDBColumn;
    gridPesquisaDBTableViewdes_iest: TcxGridDBColumn;
    buttonGravar: TcxButton;
    layoutButtonGravar: TdxLayoutItem;
    actionGravar: TAction;
    buttonCancelar: TcxButton;
    layoutButtonCancelar: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    actionCancelar: TAction;
    actionIncluir: TAction;
    buttonInserir: TcxButton;
    layoutButonInserir: TdxLayoutItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
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
    memTableDadosBancarios: TFDMemTable;
    memTableDadosBancariosid_cadastro: TIntegerField;
    memTableDadosBancariosseq_financeiro: TIntegerField;
    memTableDadosBancariosdes_forma_credito: TStringField;
    memTableDadosBancariosdes_tipo_conta: TStringField;
    memTableDadosBancarioscod_banco: TStringField;
    memTableDadosBancariosnum_agencia: TStringField;
    memTableDadosBancariosdes_conta: TStringField;
    dom: TStringField;
    memTableDadosBancariosdom_ativo: TSmallintField;
    memTableDadosBancariosnom_favorecido: TStringField;
    memTableDadosBancariosnum_cnpj_cpf_favorecido: TStringField;
    memTableContatos: TFDMemTable;
    memTableContatosid_cadastro: TIntegerField;
    memTableContatosseq_contato: TIntegerField;
    memTableContatosdes_contato: TStringField;
    memTableContatosnum_telefone: TStringField;
    memTableContatosdes_email: TStringField;
    memTableCadastro: TFDMemTable;
    memTableCadastroid_cadastro: TIntegerField;
    memTableCadastrocod_tipo_cadastro: TIntegerField;
    memTableCadastrocod_pessoa: TSmallintField;
    memTableCadastronom_nome_razao: TStringField;
    memTableCadastronom_fantasia: TStringField;
    memTableCadastronum_cpf_cnpj: TStringField;
    memTableCadastronum_rg_ie: TStringField;
    memTableCadastrodes_expedidor: TStringField;
    memTableCadastrodat_emissao_rg: TDateField;
    memTableCadastrouf_expedidor_rg: TStringField;
    memTableCadastrodat_nascimento: TDateField;
    memTableCadastronom_pai: TStringField;
    memTableCadastronom_mae: TStringField;
    memTableCadastrodes_nacionalidade: TStringField;
    memTableCadastrodes_naturalidade: TStringField;
    memTableCadastrouf_naturalidade: TStringField;
    memTableCadastronum_suframa: TStringField;
    memTableCadastronum_cnae: TStringField;
    memTableCadastronum_crt: TIntegerField;
    memTableCadastrocod_seguranca_cnh: TStringField;
    memTableCadastrocod_cnh: TStringField;
    memTableCadastronum_registro_cnh: TStringField;
    memTableCadastrodat_validade_cnh: TDateField;
    memTableCadastrodes_categoria: TStringField;
    memTableCadastrodat_emissao_cnh: TDateField;
    memTableCadastrodat_primeira_cnh: TDateField;
    memTableCadastrouf_cnh: TStringField;
    memTableCadastrocod_sexo: TSmallintField;
    memTableCadastrodes_estado_civil: TStringField;
    memTableCadastrodat_cadastro: TDateField;
    memTableCadastrocod_usuario: TIntegerField;
    memTableCadastrodes_imagem: TStringField;
    memTableCadastroid_status: TIntegerField;
    memTableCadastrodes_obs: TMemoField;
    memTableCadastronum_im: TStringField;
    memTableCadastronum_iest: TStringField;
    memTableEnderecoscod_tipo_cadastro: TIntegerField;
    memTableContatoscod_tipo_cadastro: TIntegerField;
    memTableDadosBancarioscod_tipo_cadastro: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure actionFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionPesquisarExecute(Sender: TObject);
    procedure actionIncluirExecute(Sender: TObject);
    procedure actionSelecionarExecute(Sender: TObject);
    procedure actionGravarExecute(Sender: TObject);
  private
    { Private declarations }
    procedure StartForm;
    procedure PopularEstados;
    procedure PopulaBancos;
    procedure SetupForm;
    procedure SetupEnderecos;
    procedure SetupContatos;
    procedure SetupDadosBancarios;
    procedure SetupClassCadastro(cadastro: TCadastrosControl);
    procedure SaveCadastro;
    procedure SaveEnderecos;
    procedure SaveContatos;
    procedure SaveFinanceiro;
    procedure ProcessPesquisa(sParametro: String);
    procedure ClearFields;
    procedure SetInsert;
    procedure SetResultadoPesquisa;
  public
    { Public declarations }
  end;

var
  view_CadastroEmpresas: Tview_CadastroEmpresas;
  cadastro : TCadastrosControl;
  datCadastro: TDateTime;
  iUsuario: Integer;
  sImagem: String;

implementation

{$R *.dfm}

uses Data.SisGeF, View.FilterData, Global.Parametros;

{ Tview_CadastroEmpresas }

procedure Tview_CadastroEmpresas.actionFecharExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure Tview_CadastroEmpresas.actionGravarExecute(Sender: TObject);
begin
  if Application.MessageBox('Confirma salvar os dados ?', 'Salvar', MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    SaveCadastro;
  end;
end;

procedure Tview_CadastroEmpresas.actionIncluirExecute(Sender: TObject);
begin
  SetInsert;
end;

procedure Tview_CadastroEmpresas.actionPesquisarExecute(Sender: TObject);
begin
  ProcessPesquisa(textEditParametro.Text);
end;

procedure Tview_CadastroEmpresas.actionSelecionarExecute(Sender: TObject);
begin
  layoutCadastro.MakeVisible;
end;

procedure Tview_CadastroEmpresas.ClearFields;
begin
  textEditCodigo.Text := '0';
  imageComboBoxPessoa.ItemIndex := 2;
  maskEditCNPJCPF.Clear;
  textEditNome.Clear;
  textEditAlias.Clear;
  imageComboboxSexo.ItemIndex := 0;
  textEditIERG.Clear;
  textEditIEST.Clear;
  textEditIM.Clear;
  textEditCNAE.Clear;
  imageComboBoxCRT.ItemIndex := 0;
  checkBoxStatus.Checked := True;
  if memTableEnderecos.Active then memTableEnderecos.Close;
  if memTableContatos.Active then memTableContatos.Close;
  if memTableDadosBancarios.Active then memTableDadosBancarios.Close;
end;

procedure Tview_CadastroEmpresas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if memTableCadastro.Active then memTableCadastro.Close;
  if memTableEnderecos.Active then memTableEnderecos.Close;
  if memTableContatos.Active then memTableContatos.Close;
  if memTableDadosBancarios.Active then memTableDadosBancarios.Close;
  if Data_Sisgef.memTableBancos.Active then Data_Sisgef.memTableBancos.Close;
  if Data_Sisgef.memTableEstados.Active then Data_Sisgef.memTableEstados.Close;
  Action := caFree;
  view_CadastroEmpresas := Nil;
end;

procedure Tview_CadastroEmpresas.FormShow(Sender: TObject);
begin
  StartForm;
  ProcessPesquisa('');
end;

procedure Tview_CadastroEmpresas.PopulaBancos;
var
  bancos : TBancosControl;
  aParam: Array of variant;
begin
  try
    bancos := TBancosControl.Create;
    SetLength(aParam,3);
    aParam := ['APOIO', '*', ''];
    Data_Sisgef.memTableBancos.Data := bancos.Localizar(aParam);
    Finalize(aParam);
  finally
    bancos.Free;
  end;
end;

procedure Tview_CadastroEmpresas.PopularEstados;
var
  estados : TEstadosControl;
  aParam: Array of variant;
begin
  try
    estados := TEstadosControl.Create;
    SetLength(aParam,3);
    aParam := ['APOIO', '*', ''];
    Data_Sisgef.memTableEstados.Data := estados.Localizar(aParam);
    Finalize(aParam);
  finally
    estados.Free;
  end;
end;

procedure Tview_CadastroEmpresas.ProcessPesquisa(sParametro: String);
var
  aParam: Array of variant;
  sSQL : String;
begin
  try
    sSQL := '';
    cadastro := TCadastrosControl.Create;
    if not sParametro.IsEmpty then
    begin
      sSQL := 'num_cpf_cnpj like ' + QuotedStr('%' + sParametro + '%') + ' or ' +
      'nom_nome_razao like ' + QuotedStr('%' + sParametro + '%') + ' or ' +
      'nom_fantasia like ' + QuotedStr('%' + sParametro + '%') + ' or ' +
      'num_rg_ie like ' + QuotedStr('%' + sParametro + '%') + ' or ' +
      'num_im like ' + QuotedStr('%' + sParametro + '%');
    end;
    SetLength(aParam,3);
    aParam := ['MACRO', '*', sSQL];
    memTableCadastro.CopyDataSet(cadastro.Localizar(aParam));
    Finalize(aParam);
  finally
    cadastro.Free;
  end;
end;

procedure Tview_CadastroEmpresas.SaveCadastro;
begin
  try
    cadastro := TCadastrosControl.Create;
    SetupClassCadastro(cadastro);
    if not cadastro.Gravar then
    begin
      Application.MessageBox('Erro ao gravar a empresa no banco de dados!','Atenção', MB_OK + MB_ICONASTERISK);
      Exit;
    end;
  finally
    cadastro.Free;
  end;
end;

procedure Tview_CadastroEmpresas.SaveContatos;
var
  contatos : TCadastroContatosControl;
begin
  try
    contatos := TCadastroContatosControl.Create;
    if memTableContatos.IsEmpty then Exit;
    contatos.Contatos.ID := cadastro.Cadastro.ID;
    if not contatos.SaveBatch(memTableEnderecos) then
    begin
      Application.MessageBox('Erro ao gravar os contatos no banco de dados!','Atenção', MB_OK + MB_ICONASTERISK);
      Exit;
    end;
  finally
    contatos.Free;
  end;
end;

procedure Tview_CadastroEmpresas.SaveEnderecos;
var
  endereco : TCadastroEnderecosControl;
begin
  try
    endereco := TCadastroEnderecosControl.Create;
    if memTableEnderecos.IsEmpty then Exit;
    endereco.Enderecos.ID := cadastro.Cadastro.ID;
    if not endereco.SaveBatch(memTableEnderecos) then
    begin
      Application.MessageBox('Erro ao gravar os endereços no banco de dados!','Atenção', MB_OK + MB_ICONASTERISK);
      Exit;
    end;
  finally
    endereco.Free;
  end;
end;

procedure Tview_CadastroEmpresas.SaveFinanceiro;
var
  financeiro : TCadastroFinanceiroControl;
begin
  try
    financeiro := TCadastroFinanceiroControl.Create;
    if memTableDadosBancarios.IsEmpty then Exit;
    financeiro.Financeiro.ID := cadastro.Cadastro.ID;
    if not financeiro.SaveBatch(memTableDadosBancarios) then
    begin
      Application.MessageBox('Erro ao gravar os dads bancários no banco de dados!','Atenção', MB_OK + MB_ICONASTERISK);
      Exit;
    end;
  finally
    financeiro.Free;
  end;
end;

procedure Tview_CadastroEmpresas.SetInsert;
begin
  layoutCadastro.MakeVisible;
  ClearFields;
  if memTableEnderecos.Active then memTableEnderecos.Close;
  memTableEnderecos.Open;
  if memTableContatos.Active then memTableContatos.Close;
  memTableContatos.Open;
  if memTableDadosBancarios.Active then memTableDadosBancarios.Close;
  memTableDadosBancarios.Open;
  maskEditCNPJCPF.SetFocus;
  cadastro.Cadastro.Acao := tacIncluir;
end;

procedure Tview_CadastroEmpresas.SetResultadoPesquisa;
begin
  if memTableCadastro.IsEmpty then Exit;
  layoutCadastro.MakeVisible;
  ClearFields;
  SetupForm;
  SetupEnderecos;
  SetupContatos;
  SetupDadosBancarios;
end;

procedure Tview_CadastroEmpresas.SetupClassCadastro(cadastro: TCadastrosControl);
begin
  cadastro.Cadastro.ID := StrToIntDef(textEditCodigo.Text,0);
  cadastro.Cadastro.TipoCadastro := Self.Tag;
  cadastro.Cadastro.Pessoa := imageComboBoxPessoa.ItemIndex;
  cadastro.Cadastro.Nome := textEditNome.Text;
  cadastro.Cadastro.Alias := textEditAlias.Text;
  cadastro.Cadastro.CPF := maskEditCNPJCPF.Text;
  cadastro.Cadastro.RG := textEditIERG.Text;
  cadastro.Cadastro.Expedidor := '';
  cadastro.Cadastro.DataRG := 0;
  cadastro.Cadastro.UFRG := '';
  cadastro.Cadastro.Nascimento := 0;
  cadastro.Cadastro.NomePai := '';
  cadastro.Cadastro.NomeMae := '';
  cadastro.Cadastro.Nacionalidade := '';
  cadastro.Cadastro.Naturalidade := '';
  cadastro.Cadastro.UFNaturalidade := '';
  cadastro.Cadastro.Suframa := '';
  cadastro.Cadastro.CNAE := textEditCNAE.Text;
  cadastro.Cadastro.CRT := imageComboBoxCRT.ItemIndex;
  cadastro.Cadastro.CodigoSegurancaCNH := '';
  cadastro.Cadastro.NumeroCNH := '';
  cadastro.Cadastro.RegistroCNH := '';
  cadastro.Cadastro.ValidadeCNH := 0;
  cadastro.Cadastro.CategoriaCNH := '';
  cadastro.Cadastro.DataEmissaoCNH := 0;
  cadastro.Cadastro.PrimeiraCNH := 0;
  cadastro.Cadastro.UFCNH := '';
  cadastro.Cadastro.Sexo := 0;
  cadastro.Cadastro.EstadoCivil := '';
  cadastro.Cadastro.DataCadastro := datCadastro;
  cadastro.Cadastro.Imagem := sImagem;
  cadastro.Cadastro.Status := checkBoxStatus.EditValue;
  cadastro.Cadastro.Obs := '';
  cadastro.Cadastro.InscricaoMunicipal := textEditIM.Text;
  cadastro.Cadastro.IEST := textEditIEST.Text;
end;

procedure Tview_CadastroEmpresas.SetupContatos;
var
  contatos : TCadastroContatosControl;
  aParam: Array of variant;
begin
  try
    contatos := TCadastroContatosControl.Create;
    SetLength(aParam,3);
    aParam := ['APOIO', '*', ''];
    memTableContatos.Data := contatos.Localizar(aParam);
    Finalize(aParam);
  finally
    contatos.Free;
  end;
end;

procedure Tview_CadastroEmpresas.SetupDadosBancarios;
var
  financeiro : TCadastroFinanceiroControl;
  aParam: Array of variant;
begin
  try
    financeiro := TCadastroFinanceiroControl.Create;
    SetLength(aParam,3);
    aParam := ['APOIO', '*', ''];
    memTableDadosBancarios.Data := financeiro.Localizar(aParam);
    Finalize(aParam);
  finally
    financeiro.Free;
  end;
end;

procedure Tview_CadastroEmpresas.SetupEnderecos;
var
  endereco : TCadastroEnderecosControl;
  aParam: Array of variant;
begin
  try
    endereco := TCadastroEnderecosControl.Create;
    SetLength(aParam,3);
    aParam := ['APOIO', '*', ''];
    memTableEnderecos.Data := endereco.Localizar(aParam);
    Finalize(aParam);
  finally
    endereco.Free;
  end;
end;

procedure Tview_CadastroEmpresas.SetupForm;
begin
  textEditCodigo.Text := memTableCadastroid_cadastro.AsString;
  imageComboBoxPessoa.ItemIndex := memTableCadastrocod_tipo_cadastro.AsInteger;
  maskEditCNPJCPF.Text := memTableCadastronum_cpf_cnpj.AsString;
  textEditNome.Text := memTableCadastronom_nome_razao.AsString;
  textEditAlias.Text := memTableCadastronom_fantasia.AsString;
  imageComboboxSexo.ItemIndex := memTableCadastrocod_sexo.Value;
  textEditIERG.Text := memTableCadastronum_rg_ie.Text;
  textEditIEST.Text := memTableCadastronum_iest.AsString;
  textEditIM.Text := memTableCadastronum_im.Text;
  textEditCNAE.Text := memTableCadastronum_cnae.Text;
  imageComboBoxCRT.ItemIndex := memTableCadastronum_crt.AsInteger;
  checkBoxStatus.EditValue := memTableCadastroid_status.AsInteger;
  datCadastro := memTableCadastrodat_cadastro.AsDateTime;
  iUsuario := memTableCadastrocod_usuario.AsInteger;
  sImagem := memTableCadastrodes_imagem.AsString;
end;

procedure Tview_CadastroEmpresas.StartForm;
begin
  labelTitle.Caption := Self.Caption;
  PopularEstados;
  PopulaBancos;
  datCadastro := Now;
  iUsuario := Global.Parametros.pUser_ID;
  sImagem := '';
  layoutPesquisa.MakeVisible;
end;

end.
