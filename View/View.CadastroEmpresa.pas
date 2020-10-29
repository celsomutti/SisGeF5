unit View.CadastroEmpresa;

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
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  Vcl.StdCtrls, Vcl.Mask, cxGroupBox, cxDBEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxNavigator, cxDBNavigator,
  cxCheckBox, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxMemo;

type
  Tview_CadastroEmpresas = class(TForm)
    layoutControlGroup_Root: TdxLayoutGroup;
    layoutControl: TdxLayoutControl;
    labelTitle: TcxLabel;
    layoutTitle: TdxLayoutItem;
    dsEnderecos: TDataSource;
    dsContatos: TDataSource;
    maskEditCodigo: TcxMaskEdit;
    layoutCodigo: TdxLayoutItem;
    comboBoxTipoPessoa: TcxComboBox;
    layoutTipoPessoa: TdxLayoutItem;
    layoutAutoCreatedGroupID: TdxLayoutAutoCreatedGroup;
    maskEditCNPJ: TcxMaskEdit;
    layoutCNPJ: TdxLayoutItem;
    textEditRazaoSocial: TcxTextEdit;
    layoutRazaoSocial: TdxLayoutItem;
    textEditNomeFantasia: TcxTextEdit;
    layoutNomeFantasia: TdxLayoutItem;
    textEditRGIE: TcxTextEdit;
    layoutTextEditRGIE: TdxLayoutItem;
    textEditIEST: TcxTextEdit;
    layoutTextEditIEST: TdxLayoutItem;
    layoutAutoCreatedGroupDocumentos: TdxLayoutAutoCreatedGroup;
    textEditIM: TcxTextEdit;
    layoutTextEditIM: TdxLayoutItem;
    comboBoxCRT: TcxComboBox;
    layoutComboBoxCRT: TdxLayoutItem;
    maskEditNascimento: TcxMaskEdit;
    layoutMaskEditNascimento: TdxLayoutItem;
    layoutControlGroupEnderecos_Root: TdxLayoutGroup;
    LayoutControlEnderecos: TdxLayoutControl;
    layoutEnderecos: TdxLayoutItem;
    dxLayoutControlFinanceiroGroup_Root: TdxLayoutGroup;
    layoutControlFinanceiro: TdxLayoutControl;
    layoutFinanceiro: TdxLayoutItem;
    dbComboBoxTipoEndereco: TcxDBComboBox;
    layoutDbComboBoxTipoEndereco: TdxLayoutItem;
    dbMaskEditCEP: TcxDBMaskEdit;
    layoutDBMaskEditCEP: TdxLayoutItem;
    dbTextEditLogradouro: TcxDBTextEdit;
    layoutDBTextEditLogradouro: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dbTextEditNumero: TcxDBTextEdit;
    layoutDBTextEditNumero: TdxLayoutItem;
    dbTextEditComplementoEndereco: TcxDBTextEdit;
    layoutDBTextEditComplementoEndereco: TdxLayoutItem;
    dbTextEditBairro: TcxDBTextEdit;
    layoutDBTextEditBairro: TdxLayoutItem;
    dbTextEditCidade: TcxDBTextEdit;
    layoutDBtextEditCidade: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dbLookupComboBoxUF: TcxDBLookupComboBox;
    layoutDBLookupComboBoxUF: TdxLayoutItem;
    dbNavigatorEnderecos: TcxDBNavigator;
    layoutDBNavigatorEnderecos: TdxLayoutItem;
    dsFinanceiro: TDataSource;
    dbComboBoxFormaCredito: TcxDBComboBox;
    layoutDBComboBoxFormaCredito: TdxLayoutItem;
    dbComboBoxTipoConta: TcxDBComboBox;
    layoutDBComboBoxTipoConta: TdxLayoutItem;
    dbLookupComboBoxBanco: TcxDBLookupComboBox;
    LAYOUTDBLookupComboBoxBanco: TdxLayoutItem;
    dsBancos: TDataSource;
    dsEstados: TDataSource;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dbTextBoxAgencia: TcxDBTextEdit;
    layoutDBTextBoxAgencia: TdxLayoutItem;
    dbTextEditConta: TcxDBTextEdit;
    layoutDbtextEditConta: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    bTextEditOperacao: TcxDBTextEdit;
    layoutDBTextEditOperacao: TdxLayoutItem;
    dbNavigatorDadosBancarios: TcxDBNavigator;
    layoutDBNavigatorDadosBancarios: TdxLayoutItem;
    dbCheckBoxAtivo: TcxDBCheckBox;
    layoutDBCheckBoxAtivo: TdxLayoutItem;
    layoutControlContatosGroup_Root: TdxLayoutGroup;
    layoutControlContatos: TdxLayoutControl;
    layoutContatos: TdxLayoutItem;
    gridContatosDBTableView: TcxGridDBTableView;
    gridContatosLevel: TcxGridLevel;
    gridContatos: TcxGrid;
    dxLayoutItem1: TdxLayoutItem;
    gridContatosDBTableViewdes_contato: TcxGridDBColumn;
    gridContatosDBTableViewnum_telefone: TcxGridDBColumn;
    gridContatosDBTableViewdes_email: TcxGridDBColumn;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    memoObservacoes: TcxMemo;
    layoutmemoObservacoes: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    procedure FormShow(Sender: TObject);
    procedure comboBoxTipoPessoaPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  view_CadastroEmpresas: Tview_CadastroEmpresas;

implementation

{$R *.dfm}

uses Data.SisGeF;

procedure Tview_CadastroEmpresas.comboBoxTipoPessoaPropertiesChange(Sender: TObject);
begin
  if comboBoxTipoPessoa.ItemIndex = 1 then
  begin
    maskEditCNPJ.Properties.EditMask := '999\.999\.999\-99;1; ';
    layoutCNPJ.CaptionOptions.Text := 'CNPJ';
    layoutRazaoSocial.CaptionOptions.Text := 'Razão Social';
    layoutNomeFantasia.Visible := True;
    layoutTextEditRGIE.CaptionOptions.Text := 'Inst. Estadual';
    layoutMaskEditNascimento.Visible := False;
    layoutTextEditIEST.Visible := True;
    layoutTextEditIM.Visible := True;
    layoutComboBoxCRT.Visible := True;
  end
  else if comboBoxTipoPessoa.ItemIndex = 2 then
  begin
    maskEditCNPJ.Properties.EditMask := '99\.999\.999\/9999\-99;1; ';
    layoutCNPJ.CaptionOptions.Text := 'CPF';
    layoutRazaoSocial.CaptionOptions.Text := 'Nome Completo';
    layoutNomeFantasia.Visible := False;
    layoutTextEditRGIE.CaptionOptions.Text := 'RG';
    layoutMaskEditNascimento.Visible := True;
    layoutTextEditIEST.Visible := False;
    layoutTextEditIM.Visible := False;
    layoutComboBoxCRT.Visible := False;
  end
  else
  begin
    maskEditCNPJ.Properties.EditMask := '99999999999999;1; ';
    layoutCNPJ.CaptionOptions.Text := 'CNPJ';
    layoutRazaoSocial.CaptionOptions.Text := 'Razão Social';
    layoutNomeFantasia.Visible := True;
    layoutTextEditRGIE.CaptionOptions.Text := 'Inst. Estadual';
    layoutMaskEditNascimento.Visible := False;
    layoutTextEditIEST.Visible := True;
    layoutTextEditIM.Visible := True;
    layoutComboBoxCRT.Visible := True;
  end;
end;

procedure Tview_CadastroEmpresas.FormShow(Sender: TObject);
begin
  labeltitle.Caption := Self.Caption;
end;

end.
