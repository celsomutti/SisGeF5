unit View.CadastroEmpresas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  cxTextEdit, cxDBEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxImageComboBox, cxCheckBox, FireDAC.Stan.StorageBin, FireDAC.Stan.Async, FireDAC.DApt, dxBar, System.Actions, Vcl.ActnList,
  dxBarDBNav, cxButtonEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxDBNavigator;

type
  Tview_CadastroEmpresas = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    codigoEmpresa: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    memTableCadastro: TFDMemTable;
    dsCadastro: TDataSource;
    tipoDoc: TcxDBComboBox;
    dxLayoutItem3: TdxLayoutItem;
    nomeRazao: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    nomeFantasia: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    crt: TcxDBImageComboBox;
    dxLayoutItem8: TdxLayoutItem;
    dataCadastro: TcxDBDateEdit;
    dxLayoutItem9: TdxLayoutItem;
    status: TcxDBCheckBox;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    memTableEnderecos: TFDMemTable;
    memTableCadastrocod_empresa: TIntegerField;
    memTableCadastrodes_razao_social: TStringField;
    memTableCadastronom_fantasia: TStringField;
    memTableCadastrodes_tipo_doc: TStringField;
    memTableCadastronum_cnpj: TStringField;
    memTableCadastrocod_cnae: TStringField;
    memTableCadastrocod_crt: TIntegerField;
    memTableCadastrocod_status: TIntegerField;
    memTableCadastrodes_observacao: TMemoField;
    memTableCadastrodat_cadastro: TDateField;
    memTableEnderecosseq_endereco: TFDAutoIncField;
    memTableEnderecoscod_empresa: TIntegerField;
    memTableEnderecosdes_tipo: TStringField;
    memTableEnderecosdes_logradouro: TStringField;
    memTableEnderecosnum_logradouro: TStringField;
    memTableEnderecosdes_complemento: TStringField;
    memTableEnderecosdes_bairro: TStringField;
    memTableEnderecosnom_cidade: TStringField;
    memTableEnderecosuf_estado: TStringField;
    memTableEnderecosnum_cep: TStringField;
    memTableEnderecosnum_cnpj: TStringField;
    memTableEnderecosnum_ie: TStringField;
    memTableEnderecosnum_im: TStringField;
    memTableEnderecosdes_referencia: TStringField;
    memTableContatos: TFDMemTable;
    memTableContatosseq_contato: TFDAutoIncField;
    memTableContatoscod_empresa: TIntegerField;
    memTableContatosdes_contato: TStringField;
    memTableContatosnum_telefone: TStringField;
    memTableContatosdes_email: TStringField;
    memTableFinanceiro: TFDMemTable;
    memTableFinanceiroid_financeiro: TFDAutoIncField;
    memTableFinanceirocod_empresa: TIntegerField;
    memTableFinanceirocod_banco: TStringField;
    memTableFinanceirocod_agencia: TStringField;
    memTableFinanceironum_conta: TStringField;
    memTableCNAE: TFDMemTable;
    memTableCNAEid_cnae: TFDAutoIncField;
    memTableCNAEcod_empresa: TIntegerField;
    memTableCNAEcod_tipo: TIntegerField;
    memTableCNAEcod_cnae: TStringField;
    memTableCNAEdes_cnae: TStringField;
    barManager: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    actionListMenu: TActionList;
    actionLocalizar: TAction;
    actionFechar: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    actionNovo: TAction;
    actionEditar: TAction;
    actionExcluir: TAction;
    actionCancelar: TAction;
    actionGravar: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dsEnderecos: TDataSource;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    cnpjEmpresa: TcxDBButtonEdit;
    dxLayoutItem1: TdxLayoutItem;
    actionConsultaCNPJ: TAction;
    dxLayoutGroup8: TdxLayoutGroup;
    gridContatosDBTableView1: TcxGridDBTableView;
    gridContatosLevel1: TcxGridLevel;
    gridContatos: TcxGrid;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    tipoEndereco: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cepEndereco: TcxDBButtonEdit;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutGroup10: TdxLayoutGroup;
    logradouroEndereco: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    numeroEndereco: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    complementoEndereco: TcxDBTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    bairroEndereco: TcxDBTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutGroup12: TdxLayoutGroup;
    cidadeEndereco: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    ufEndereco: TcxDBComboBox;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutGroup13: TdxLayoutGroup;
    cnpjEndereco: TcxDBMaskEdit;
    dxLayoutItem18: TdxLayoutItem;
    ieEndereco: TcxDBTextEdit;
    dxLayoutItem19: TdxLayoutItem;
    imEndereco: TcxDBTextEdit;
    dxLayoutItem20: TdxLayoutItem;
    dsContatos: TDataSource;
    gridContatosDBTableView1seq_contato: TcxGridDBColumn;
    gridContatosDBTableView1cod_empresa: TcxGridDBColumn;
    gridContatosDBTableView1des_contato: TcxGridDBColumn;
    gridContatosDBTableView1num_telefone: TcxGridDBColumn;
    gridContatosDBTableView1des_email: TcxGridDBColumn;
    actionPesquisarCEP: TAction;
    dxLayoutGroup14: TdxLayoutGroup;
    cxDBNavigator1: TcxDBNavigator;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutGroup15: TdxLayoutGroup;
    dxLayoutGroup16: TdxLayoutGroup;
    gridCNAEDBTableView1: TcxGridDBTableView;
    gridCNAELevel1: TcxGridLevel;
    gridCNAE: TcxGrid;
    dxLayoutItem22: TdxLayoutItem;
    gridFinanceiroDBTableView1: TcxGridDBTableView;
    gridFinanceiroLevel1: TcxGridLevel;
    gridFinanceiro: TcxGrid;
    dxLayoutItem23: TdxLayoutItem;
    dsCNAE: TDataSource;
    gridCNAEDBTableView1id_cnae: TcxGridDBColumn;
    gridCNAEDBTableView1cod_empresa: TcxGridDBColumn;
    gridCNAEDBTableView1cod_tipo: TcxGridDBColumn;
    gridCNAEDBTableView1cod_cnae: TcxGridDBColumn;
    gridCNAEDBTableView1des_cnae: TcxGridDBColumn;
    dsFinanceiro: TDataSource;
    gridFinanceiroDBTableView1id_financeiro: TcxGridDBColumn;
    gridFinanceiroDBTableView1cod_empresa: TcxGridDBColumn;
    gridFinanceiroDBTableView1cod_banco: TcxGridDBColumn;
    gridFinanceiroDBTableView1cod_agencia: TcxGridDBColumn;
    gridFinanceiroDBTableView1num_conta: TcxGridDBColumn;
    memTableFinanceironom_banco: TStringField;
    gridFinanceiroDBTableView1nom_banco: TcxGridDBColumn;
    actionPesquisarBancos: TAction;
    procedure FormShow(Sender: TObject);
    procedure statusPropertiesChange(Sender: TObject);
    procedure dsCadastroStateChange(Sender: TObject);
  private
    { Private declarations }
    procedure StartForm;
    procedure EndingForm;
  public
    { Public declarations }
  end;

var
  view_CadastroEmpresas: Tview_CadastroEmpresas;

implementation

{$R *.dfm}

uses Data.SisGeF;

{ Tview_CadastroEmpresas }

procedure Tview_CadastroEmpresas.dsCadastroStateChange(Sender: TObject);
begin
  if dsCadastro.State = dsInactive then
  begin
    actionNovo.Enabled := True;
    actionLocalizar.Enabled := True;
    actionEditar.Enabled := False;
    actionExcluir.Enabled := False;
    actionCancelar.Enabled := False;
    actionGravar.Enabled := False;
    actionFechar.Enabled := True;
  end
  else if dsCadastro.State = dsBrowse then
  begin
    actionNovo.Enabled := True;
    actionLocalizar.Enabled := True;
    actionEditar.Enabled := True;
    actionExcluir.Enabled := True;
    actionCancelar.Enabled := False;
    actionGravar.Enabled := False;
    actionFechar.Enabled := True;
  end
  else if dsCadastro.State = dsEdit then
  begin
    actionNovo.Enabled := False;
    actionLocalizar.Enabled := False;
    actionEditar.Enabled := False;
    actionExcluir.Enabled := False;
    actionCancelar.Enabled := True;
    actionGravar.Enabled := True;
    actionFechar.Enabled := True;
  end
  else if dsCadastro.State = dsInsert then
  begin
    actionNovo.Enabled := False;
    actionLocalizar.Enabled := False;
    actionEditar.Enabled := False;
    actionExcluir.Enabled := False;
    actionCancelar.Enabled := True;
    actionGravar.Enabled := True;
    actionFechar.Enabled := True;
  end;



end;

procedure Tview_CadastroEmpresas.EndingForm;
begin
  Self.Free;
  Self := Nil;
end;

procedure Tview_CadastroEmpresas.FormShow(Sender: TObject);
begin
  StartForm;
end;

procedure Tview_CadastroEmpresas.StartForm;
begin
  // teste
end;

procedure Tview_CadastroEmpresas.statusPropertiesChange(Sender: TObject);
begin
  if status.Checked then
    status.Caption := 'ATIVO'
  else
    status.Caption := 'INATIVO';
end;

end.
