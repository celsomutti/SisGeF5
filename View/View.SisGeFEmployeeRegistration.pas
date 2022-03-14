unit View.SisGeFEmployeeRegistration;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList, dxSkinsCore, dxSkinsDefaultPainters, cxClasses, dxBar,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxGroupBox, cxTextEdit, cxMaskEdit, cxLabel,
  cxDropDownEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxBarBuiltInMenu,
  cxPC, cxButtonEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxMemo, Common.ENum, Global.Parametros,
  Control.Cadastro, Control.CadastroEnderecos, Control.CadastroContatos, Control.Bancos, Control.Estados, dxStatusBar;

type
  TViewSisGeFEmployeeRegistration = class(TForm)
    actionListRegister: TActionList;
    actionNew: TAction;
    actionLocate: TAction;
    actionEdit: TAction;
    actionDelete: TAction;
    actionSave: TAction;
    actionCancel: TAction;
    actionAttach: TAction;
    actionCloseForm: TAction;
    barManager: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    codigo: TcxMaskEdit;
    cpf: TcxMaskEdit;
    cxLabel2: TcxLabel;
    nomeCompleto: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    alias: TcxTextEdit;
    cxGroupBox2: TcxGroupBox;
    cxLabel5: TcxLabel;
    numeroRG: TcxTextEdit;
    ufRG: TcxComboBox;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    emissorRG: TcxTextEdit;
    dataRG: TcxDateEdit;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    naturalidade: TcxTextEdit;
    cxLabel10: TcxLabel;
    ufNaturalidade: TcxComboBox;
    cxLabel12: TcxLabel;
    nomePai: TcxTextEdit;
    cxLabel13: TcxLabel;
    nomeMae: TcxTextEdit;
    cxLabel14: TcxLabel;
    numeroPIS: TcxTextEdit;
    nascimento: TcxDateEdit;
    cxLabel11: TcxLabel;
    cxLabel15: TcxLabel;
    numeroCNH: TcxMaskEdit;
    cxLabel16: TcxLabel;
    registroCNH: TcxMaskEdit;
    cxLabel17: TcxLabel;
    ufCNH: TcxComboBox;
    cxLabel18: TcxLabel;
    categoriaCNH: TcxTextEdit;
    cxLabel19: TcxLabel;
    primeiraCNH: TcxDateEdit;
    cxLabel20: TcxLabel;
    emissaoCNH: TcxDateEdit;
    cxLabel21: TcxLabel;
    validadeCNH: TcxDateEdit;
    cxLabel22: TcxLabel;
    codigoCNH: TcxMaskEdit;
    funcao: TcxLookupComboBox;
    cxLabel23: TcxLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxLabel24: TcxLabel;
    cepEndereco: TcxButtonEdit;
    actionSearchCEP: TAction;
    cxLabel25: TcxLabel;
    logradouroEndereco: TcxTextEdit;
    cxLabel26: TcxLabel;
    numeroLogradouro: TcxTextEdit;
    cxLabel27: TcxLabel;
    complementoLogradouro: TcxTextEdit;
    cxLabel28: TcxLabel;
    bairroLogradouro: TcxTextEdit;
    cxLabel29: TcxLabel;
    cidadeLogradouro: TcxTextEdit;
    cxLabel30: TcxLabel;
    ufLogradouro: TcxComboBox;
    cxLabel31: TcxLabel;
    referenciaLogradouro: TcxTextEdit;
    memTableContatos: TFDMemTable;
    memTableContatoscod_entregador: TIntegerField;
    memTableContatosseq_contato: TIntegerField;
    memTableContatosdes_contato: TStringField;
    memTableContatosnum_telefone: TStringField;
    memTableContatosdes_email: TStringField;
    gridContatosDBTableView1: TcxGridDBTableView;
    gridContatosLevel1: TcxGridLevel;
    gridContatos: TcxGrid;
    dsContatos: TDataSource;
    gridContatosDBTableView1cod_entregador: TcxGridDBColumn;
    gridContatosDBTableView1seq_contato: TcxGridDBColumn;
    gridContatosDBTableView1des_contato: TcxGridDBColumn;
    gridContatosDBTableView1num_telefone: TcxGridDBColumn;
    gridContatosDBTableView1des_email: TcxGridDBColumn;
    formaPagamento: TcxComboBox;
    cxLabel32: TcxLabel;
    cxLabel33: TcxLabel;
    tipoConta: TcxComboBox;
    cxLabel34: TcxLabel;
    banco: TcxLookupComboBox;
    cxLabel35: TcxLabel;
    agencia: TcxTextEdit;
    cxLabel36: TcxLabel;
    numeroConta: TcxTextEdit;
    cxLabel37: TcxLabel;
    nomeFavorecido: TcxTextEdit;
    cxLabel38: TcxLabel;
    cpfFavorecido: TcxMaskEdit;
    observacoes: TcxMemo;
    memTableBancos: TFDMemTable;
    memTableBancoscod_banco: TStringField;
    memTableBancosnom_banco: TStringField;
    dsBancos: TDataSource;
    statusBar: TdxStatusBar;
  private
    { Private declarations }
    procedure StartForm;
    procedure Mode;
    procedure ClearFieldsForm;
    procedure PopulateBanks;
    procedure PopulateCountry;
    procedure PopulateContacts(iID: integer);
    procedure BlockUnblockFieldsForm(bValue: boolean);
    procedure SetupFieldsForm;
    procedure SetupClass;
    procedure Insert;
    Procedure Edit;
  public
    { Public declarations }
  end;

var
  ViewSisGeFEmployeeRegistration: TViewSisGeFEmployeeRegistration;
  FAcao : TAcao;
  FCadastro: TCadastroControl;
  FEnderecos : TCadastroEnderecosControl;
  FContatos : TCadastroContatosControl;
  FBancos : TBancosControl;
  FEstados: TEstadosControl;

implementation

{$R *.dfm}

uses Data.SisGeF;

{ TViewSisGeFEmployeeRegistration }

procedure TViewSisGeFEmployeeRegistration.BlockUnblockFieldsForm(bValue: boolean);
begin
  cpf.Properties.ReadOnly := bValue;
  nomeCompleto.Properties.ReadOnly := bValue;
  alias.Properties.ReadOnly := bValue;
  numeroRG.Properties.ReadOnly := bValue;
  ufRG.Properties.ReadOnly := bValue;
  emissorRG.Properties.ReadOnly := bValue;
  dataRG.Properties.ReadOnly := bValue;
  naturalidade.Properties.ReadOnly := bValue;
  ufNaturalidade.Properties.ReadOnly := bValue;
  nomePai.Properties.ReadOnly := bValue;
  nomeMae.Properties.ReadOnly := bValue;
  numeroPIS.Properties.ReadOnly := bValue;
  nascimento.Properties.ReadOnly := bValue;
  numeroCNH.Properties.ReadOnly := bValue;
  registroCNH.Properties.ReadOnly := bValue;
  ufCNH.Properties.ReadOnly := bValue;
  categoriaCNH.Properties.ReadOnly := bValue;
  primeiraCNH.Properties.ReadOnly := bValue;
  emissaoCNH.Properties.ReadOnly := bValue;
  validadeCNH.Properties.ReadOnly := bValue;
  codigoCNH.Properties.ReadOnly := bValue;
  funcao.Properties.ReadOnly := bValue;
  cepEndereco.Properties.ReadOnly := bValue;
  logradouroEndereco.Properties.ReadOnly := bValue;
  numeroLogradouro.Properties.ReadOnly := bValue;
  complementoLogradouro.Properties.ReadOnly := bValue;
  bairroLogradouro.Properties.ReadOnly := bValue;
  cidadeLogradouro.Properties.ReadOnly := bValue;
  ufLogradouro.Properties.ReadOnly := bValue;
  referenciaLogradouro.Properties.ReadOnly := bValue;
  dsContatos.Enabled := not bValue;
  formaPagamento.Properties.ReadOnly := bValue;
  tipoConta.Properties.ReadOnly := bValue;
  banco.Properties.ReadOnly := bValue;
  agencia.Properties.ReadOnly := bValue;
  numeroConta.Properties.ReadOnly := bValue;
  nomeFavorecido.Properties.ReadOnly := bValue;
  cpfFavorecido.Properties.ReadOnly := bValue;
  observacoes.Properties.ReadOnly := bValue;
end;

procedure TViewSisGeFEmployeeRegistration.ClearFieldsForm;
begin
  codigo.EditValue := 0;
  cpf.Clear;
  nomeCompleto.Clear;
  alias.Clear;
  numeroRG.Clear;
  ufRG.ItemIndex := -1;
  emissorRG.Clear;
  dataRG.Clear;
  naturalidade.Clear;
  ufNaturalidade.ItemIndex := -1;
  nomePai.Clear;
  nomeMae.Clear;
  numeroPIS.Clear;
  nascimento.Clear;
  numeroCNH.EditValue := 0;
  registroCNH.EditValue := 0;
  ufCNH.ItemIndex := -1;
  categoriaCNH.Clear;
  primeiraCNH.Clear;
  emissaoCNH.Clear;
  validadeCNH.Clear;
  codigoCNH.EditValue := 0;
  funcao.Clear;
  cepEndereco.Clear;
  logradouroEndereco.Clear;
  numeroLogradouro.Clear;
  complementoLogradouro.Clear;
  bairroLogradouro.Clear;
  cidadeLogradouro.Clear;
  ufLogradouro.ItemIndex := -1;
  referenciaLogradouro.Clear;
  memTableContatos.Active := False;
  formaPagamento.ItemIndex := 0;
  tipoConta.ItemIndex := 0;
  banco.Clear;
  agencia.Clear;
  numeroConta.Clear;
  nomeFavorecido.Clear;
  cpfFavorecido.Clear;
  observacoes.Clear;
end;

procedure TViewSisGeFEmployeeRegistration.Edit;
begin
  FAcao := tacAlterar;
  Mode;
  nomeCompleto.SetFocus;
end;

procedure TViewSisGeFEmployeeRegistration.Insert;
begin
  FAcao := tacIncluir;
  Mode;
  ClearFieldsForm;
  cpf.SetFocus;
end;

procedure TViewSisGeFEmployeeRegistration.Mode;
begin
  if FAcao = tacIndefinido then
  begin
    actionNew.Enabled := True;
    actionLocate.Enabled := True;
    actionEdit.Enabled := False;
    actionAttach.Enabled := False;
    actionCancel.Enabled := False;
    actionSave.Enabled := False;
    actionCloseForm.Enabled := True;
    statusBar.Panels[0].Text := '';
    BlockUnblockFieldsForm(True);
  end
  else if FAcao = tacIncluir then
  begin
    actionNew.Enabled := False;
    actionLocate.Enabled := False;
    actionEdit.Enabled := False;
    actionAttach.Enabled := True;
    actionCancel.Enabled := True;
    actionSave.Enabled := True;
    actionCloseForm.Enabled := False;
    statusBar.Panels[0].Text := 'INCLUIR';
    BlockUnblockFieldsForm(False);
  end
  else if FAcao = tacAlterar then
  begin
    actionNew.Enabled := False;
    actionLocate.Enabled := False;
    actionEdit.Enabled := False;
    actionAttach.Enabled := True;
    actionCancel.Enabled := True;
    actionSave.Enabled := True;
    actionCloseForm.Enabled := False;
    statusBar.Panels[0].Text := 'EDITAR';
    BlockUnblockFieldsForm(False);
    cpf.Properties.ReadOnly := True;
  end
  else if FAcao = tacPesquisa then
  begin
    actionNew.Enabled := True;
    actionLocate.Enabled := True;
    actionEdit.Enabled := True;
    actionAttach.Enabled := True;
    actionCancel.Enabled := True;
    actionSave.Enabled := True;
    actionCloseForm.Enabled := True;
    statusBar.Panels[0].Text := '';
    BlockUnblockFieldsForm(True);
  end;


end;

procedure TViewSisGeFEmployeeRegistration.PopulateBanks;
var
  aParam : array of variant;
begin
  FBancos := TBancosControl.Create;
  SetLength(aParam, 3);
  aParam := ['APOIO', '*', ''];
  if FBancos.LocalizarExt(aParam) then
  begin
    memTableBancos.Data := FBancos.Bancos.Query.Data;
  end;
  Finalize(aParam);
  FBancos.Bancos.Query.Connection.Connected := False;
  FBancos.Free;
end;

procedure TViewSisGeFEmployeeRegistration.PopulateContacts(iID: integer);
var
  aParam : array of variant;
begin
  SetLength(aParam, 2);
  aParam := ['ID', iID];
  memTableContatos.Active := False;
  if FContatos.Localizar(aParam) then
  begin
    memTableContatos.Data := FContatos.Contatos.Query.Data;
  end;
  Finalize(aParam);
  FContatos.Contatos.Query.Connection.Connected := False;
  FContatos.Free;
  if not memTableContatos.Active then
    memTableContatos.Active := True;
end;

procedure TViewSisGeFEmployeeRegistration.PopulateCountry;
var
  aParam : array of variant;
  lEstados : TStrings;
begin
  FEstados := TEstadosControl.Create;
  lEstados := TStringList.Create;
  SetLength(aParam, 3);
  aParam := ['APOIO', '*', ''];
  if FEstados.PesquisarExt(aParam) then
  begin
    while not FEstados.Estados.Query.Eof do
    begin
      lEstados.Add(FEstados.Estados.Query.FieldByName('uf_estado').AsString);
      FEstados.Estados.Query.Next
    end;
  end;
  ufRG.Properties.Items := lEstados;
  ufNaturalidade.Properties.Items := lEstados;
  ufCNH.Properties.Items := lEstados;
  ufLogradouro.Properties.Items := lEstados;
  Finalize(aParam);
  FEstados.Estados.Query.Connection.Connected := False;
  FEstados.Free;
end;

procedure TViewSisGeFEmployeeRegistration.SetupClass;
begin
  FCadastro.Cadastro.Cadastro := codigo.EditValue;
  FCadastro.Cadastro.CPFCNPJ := cpf.EditValue;
  FCadastro.Cadastro.Nome := nomeCompleto.Text;
  FCadastro.Cadastro.Fantasia := alias.Text;
  FCadastro.Cadastro.IERG := numeroRG.Text;
  FCadastro.Cadastro.UFRG := ufRG.Text;
  FCadastro.Cadastro.EmissorRG := emissorRG.Text;
  FCadastro.Cadastro.EMissaoRG := dataRG.Date;
  FCadastro.Cadastro.CidadeNascimento := naturalidade.Text;
  FCadastro.Cadastro.UFNascimento := ufNaturalidade.Text;
  FCadastro.Cadastro.Pai := nomePai.Text;
  FCadastro.Cadastro.Mae := nomeMae.Text;
  FCadastro.Cadastro.IEST := numeroPIS.Text;
  FCadastro.Cadastro.Nascimento := nascimento.Date;
  FCadastro.Cadastro.NumeroCNH := numeroCNH.EditValue;
  FCadastro.Cadastro.RegistroCNH := registroCNH.EditValue;
  FCadastro.Cadastro.UFCNH := ufCNH.Text;
  FCadastro.Cadastro.CategoriaCNH := categoriaCNH.Text;
  FCadastro.Cadastro.DataPrimeiraCNH := primeiraCNH.Date;
  FCadastro.Cadastro.EmissaoCNH := emissaoCNH.Date;
  FCadastro.Cadastro.ValidadeCNH := validadeCNH.Date;
  FCadastro.Cadastro.CodigoCNH := codigoCNH.EditValue;
  FCadastro.Cadastro.CRT := funcao.EditValue;
  FEnderecos.Enderecos.ID := FCadastro.Cadastro.Cadastro;
  FEnderecos.Enderecos.CEP := cepEndereco.EditValue;
  FEnderecos.Enderecos.Logradouro := logradouroEndereco.Text;
  FEnderecos.Enderecos.Numero := numeroLogradouro.Text;
  FEnderecos.Enderecos.Complemento := complementoLogradouro.Text;
  FEnderecos.Enderecos.Bairro := bairroLogradouro.Text;
  FEnderecos.Enderecos.Cidade := cidadeLogradouro.Text;
  FEnderecos.Enderecos.UF := ufLogradouro.Text;
  FEnderecos.Enderecos.Referencia := referenciaLogradouro.Text;
  FCadastro.Cadastro.FormaPagamento := formaPagamento.Text;
  FCadastro.Cadastro.TipoConta := tipoConta.Text;
  FCadastro.Cadastro.Banco := banco.EditValue;
  FCadastro.Cadastro.AgenciaConta := agencia.Text;
  FCadastro.Cadastro.NumeroConta := numeroConta.Text;
  FCadastro.Cadastro.NomeFavorecido := nomeFavorecido.Text;
  FCadastro.Cadastro.CPFCNPJFavorecido := cpfFavorecido.EditValue;
  FCadastro.Cadastro.Obs := observacoes.Text;
end;

procedure TViewSisGeFEmployeeRegistration.SetupFieldsForm;
begin
  codigo.EditValue := FCadastro.Cadastro.Cadastro;
  cpf.EditValue := FCadastro.Cadastro.CPFCNPJ;
  nomeCompleto.Text := FCadastro.Cadastro.Nome;
  alias.Text := FCadastro.Cadastro.Fantasia;
  numeroRG.Text := FCadastro.Cadastro.IERG;
  ufRG.Text := FCadastro.Cadastro.UFRG;
  emissorRG.Text := FCadastro.Cadastro.EmissorRG;
  dataRG.Date := FCadastro.Cadastro.EMissaoRG;
  naturalidade.Text := FCadastro.Cadastro.CidadeNascimento;
  ufNaturalidade.Text := FCadastro.Cadastro.UFNascimento;
  nomePai.Text := FCadastro.Cadastro.Pai;
  nomeMae.Text := FCadastro.Cadastro.Mae;
  numeroPIS.Text := FCadastro.Cadastro.IEST;
  nascimento.Date := FCadastro.Cadastro.Nascimento;
  numeroCNH.EditValue :=FCadastro.Cadastro.NumeroCNH;
  registroCNH.EditValue := FCadastro.Cadastro.RegistroCNH;
  ufCNH.Text := FCadastro.Cadastro.UFCNH;
  categoriaCNH.Text := FCadastro.Cadastro.CategoriaCNH;
  primeiraCNH.Date := FCadastro.Cadastro.DataPrimeiraCNH;
  emissaoCNH.Date := FCadastro.Cadastro.EmissaoCNH;
  validadeCNH.Date := FCadastro.Cadastro.ValidadeCNH;
  codigoCNH.EditValue := FCadastro.Cadastro.CodigoCNH;
  funcao.EditValue := FCadastro.Cadastro.CRT;
  cepEndereco.EditValue := FEnderecos.Enderecos.CEP;
  logradouroEndereco.Text := FEnderecos.Enderecos.Logradouro;
  numeroLogradouro.Text := FEnderecos.Enderecos.Numero;
  complementoLogradouro.Text := FEnderecos.Enderecos.Complemento;
  bairroLogradouro.Text := FEnderecos.Enderecos.Bairro;
  cidadeLogradouro.Text := FEnderecos.Enderecos.Cidade;
  ufLogradouro.Text := FEnderecos.Enderecos.UF;
  referenciaLogradouro.Text := FEnderecos.Enderecos.Referencia;
  PopulateContacts(FCadastro.Cadastro.Cadastro);
  formaPagamento.Text := FCadastro.Cadastro.FormaPagamento;
  tipoConta.Text := FCadastro.Cadastro.TipoConta;
  banco.EditValue := FCadastro.Cadastro.Banco;
  agencia.Text := FCadastro.Cadastro.AgenciaConta;
  numeroConta.Text := FCadastro.Cadastro.NumeroConta;
  nomeFavorecido.Text := FCadastro.Cadastro.NomeFavorecido;
  cpfFavorecido.EditValue := FCadastro.Cadastro.CPFCNPJFavorecido;
  observacoes.Text := FCadastro.Cadastro.Obs;
end;

procedure TViewSisGeFEmployeeRegistration.StartForm;
begin
  FAcao := tacIndefinido;
  Mode;
  PopulateBanks;
  PopulateCountry;
end;

end.
