unit View.CadastroGeral;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxDBEdit, cxCheckBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tview_CadastroGeral = class(TForm)
    layoutControlPadraoGroup_Root: TdxLayoutGroup;
    layoutControlPadrao: TdxLayoutControl;
    labelTitle: TcxLabel;
    layoutItemLabelTitle: TdxLayoutItem;
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
    textEditNacionalidade: TcxTextEdit;
    layoutItemNacionalidade: TdxLayoutItem;
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
    comboBoxSexo: TcxComboBox;
    layoutItemSexo: TdxLayoutItem;
    comboBoxEstadoCivil: TcxComboBox;
    layoutItemEstadoCivil: TdxLayoutItem;
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
    layoutGroupRH: TdxLayoutGroup;
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
    procedure FormShow(Sender: TObject);
    procedure checkBoxStatusPropertiesChange(Sender: TObject);
    procedure comboBoxTipoPessoaPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  view_CadastroGeral: Tview_CadastroGeral;

implementation

{$R *.dfm}

procedure Tview_CadastroGeral.checkBoxStatusPropertiesChange(Sender: TObject);
begin
  if checkBoxStatus.Checked then
  begin
    checkBoxStatus.Caption := 'Ativo';
  end
  else
  begin
    checkBoxStatus.Caption := 'Inativo';
  end;
end;

procedure Tview_CadastroGeral.comboBoxTipoPessoaPropertiesChange(Sender: TObject);
begin
  if comboBoxTipoPessoa.ItemIndex = 1 then
  begin
    layoutGroupPessoaFisica.MakeVisible;
  end
  else if comboBoxTipoPessoa.ItemIndex = 2 then
  begin
    layoutGroupPessoaJuridica.MakeVisible;
  end
  else
  begin
    layoutGroupPessoaFisica.MakeVisible;
  end;

end;

procedure Tview_CadastroGeral.FormShow(Sender: TObject);
begin
  labelTitle.Caption := Self.Caption;
end;

end.
