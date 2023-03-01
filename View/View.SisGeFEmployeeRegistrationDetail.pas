unit View.SisGeFEmployeeRegistrationDetail;

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
  Control.Cadastro, Control.CadastroEnderecos, Control.CadastroContatos, Control.Bancos, Control.Estados, dxStatusBar,
  Control.SisGeFRHFuncoes, cxCheckBox, View.SisGeFPesquisaPessoasV1, Controller.APICEP, system.StrUtils, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, FireDAC.Stan.StorageBin, Controller.SisGeFVehiclesRegistration;

type
  Tview_SisGeFEmployeeRegistrationDetail = class(TForm)
    actionListRegister: TActionList;
    actionNew: TAction;
    actionLocate: TAction;
    actionEdit: TAction;
    actionDelete: TAction;
    actionSave: TAction;
    actionCancel: TAction;
    actionAttach: TAction;
    actionCloseForm: TAction;
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
    memTableFuncoes: TFDMemTable;
    memTableFuncoesid_funcao: TIntegerField;
    memTableFuncoesdes_funcao: TStringField;
    dsFuncoes: TDataSource;
    status: TcxCheckBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxTabSheet5: TcxTabSheet;
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
    dsVeiculos: TDataSource;
    gridVeiculos: TcxGrid;
    gridVeiculosDBTableView1: TcxGridDBTableView;
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
    gridVeiculosLevel1: TcxGridLevel;
    actionNewVehicle: TAction;
    actionEditVehicle: TAction;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionNewExecute(Sender: TObject);
    procedure actionEditExecute(Sender: TObject);
    procedure actionCancelExecute(Sender: TObject);
    procedure actionCloseFormExecute(Sender: TObject);
    procedure actionLocateExecute(Sender: TObject);
    procedure actionSaveExecute(Sender: TObject);
    procedure statusPropertiesChange(Sender: TObject);
    procedure actionSearchCEPExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actionAttachExecute(Sender: TObject);
    procedure memTableContatosBeforeDelete(DataSet: TDataSet);
    procedure memTableContatosBeforeEdit(DataSet: TDataSet);
    procedure memTableContatosBeforeInsert(DataSet: TDataSet);
    procedure actionNewVehicleExecute(Sender: TObject);
    procedure actionEditVehicleExecute(Sender: TObject);
  private
    { Private declarations }
    procedure StartForm;
    procedure Endingform;
    procedure Mode;
    procedure ClearFieldsForm;
    procedure PopulateBanks;
    procedure PopulateCountry;
    procedure PopulateContacts(iCadastro: integer);
    procedure PopulateAdress(iCadastro: integer);
    procedure PopulateFunctionsEmployees;
    procedure PopulateEmployees(iCadastro: integer);
    procedure InstanceClassRegisters;
    procedure ReleasingClassRegisters;
    procedure BlockUnblockFieldsForm(bValue: boolean);
    procedure SetupFieldsForm;
    procedure SetupClass;
    procedure Insert;
    Procedure Edit;
    procedure CancelOperation;
    procedure SaveData;
    procedure SearchRegister;
    procedure SearchCEP(sCEP: string);
    procedure AttachDocument;
    function Formulafilro(iIndex: integer; sTexto: string): boolean;
    procedure MostraCadastro(FAcao: TAcao; iNumero: integer);
  public
    { Public declarations }
    FAcao : TAcao;
    iID: integer;
  end;

var
  view_SisGeFEmployeeRegistrationDetail: Tview_SisGeFEmployeeRegistrationDetail;
  FCadastro: TCadastroControl;
  FEnderecos : TCadastroEnderecosControl;
  FIdSeqAdress : integer;
  FContatos : TCadastroContatosControl;
  FBancos : TBancosControl;
  FEstados: TEstadosControl;
  FFuncoes: TRHFuncoesControl;

implementation

{$R *.dfm}

uses Data.SisGeF, View.ListaCEPs, View.SisaGeFAttachDocuments, Common.Utils, View.SisGeFVehicleRegistrationDetail;

{ TViewSisGeFEmployeeRegistrationDetail }

procedure Tview_SisGeFEmployeeRegistrationDetail.actionAttachExecute(Sender: TObject);
begin
  AttachDocument;
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.actionCancelExecute(Sender: TObject);
begin
  CancelOperation;
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.actionCloseFormExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.actionEditExecute(Sender: TObject);
begin
  Edit;
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.actionEditVehicleExecute(Sender: TObject);
begin
  if not memTableVeiculos.IsEmpty then
    MostraCadastro(tacAlterar, memTableVeiculosCOD_VEICULO.AsInteger);
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.actionLocateExecute(Sender: TObject);
begin
  SearchRegister;
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.actionNewExecute(Sender: TObject);
begin
  Insert;
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.actionNewVehicleExecute(Sender: TObject);
begin
  MostraCadastro(tacIncluir,0);
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.actionSaveExecute(Sender: TObject);
begin
  SaveData;
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.actionSearchCEPExecute(Sender: TObject);
begin
  SearchCEP(cepEndereco.Text);
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.AttachDocument;
var
  sPast : string;
  FFunctions: TUtils;
begin
  FFunctions := TUtils.Create;
  Global.Parametros.pPasta := FFunctions.LeIni(ExtractFilePath(Application.ExeName) + 'database.ini', 'Database', 'Folder');
  sPast := Global.Parametros.pPasta + '\' + FCadastro.Cadastro.Cadastro.ToString;
  if not Assigned(view_SisgeFAttachDocuments) then
    view_SisgeFAttachDocuments := Tview_SisgeFAttachDocuments.Create(Application);
  view_SisgeFAttachDocuments.FPasta := sPast;
  view_SisgeFAttachDocuments.Show;
  FFunctions.Free;
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.BlockUnblockFieldsForm(bValue: boolean);
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
  dsContatos.AutoEdit := not bValue;
  gridContatosDBTableView1.Navigator.Visible := not bValue;
  formaPagamento.Properties.ReadOnly := bValue;
  tipoConta.Properties.ReadOnly := bValue;
  banco.Properties.ReadOnly := bValue;
  agencia.Properties.ReadOnly := bValue;
  numeroConta.Properties.ReadOnly := bValue;
  nomeFavorecido.Properties.ReadOnly := bValue;
  cpfFavorecido.Properties.ReadOnly := bValue;
  observacoes.Properties.ReadOnly := bValue;
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.CancelOperation;
begin
  FAcao := tacIndefinido;
  Mode;
  ClearFieldsForm;
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.ClearFieldsForm;
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

procedure Tview_SisGeFEmployeeRegistrationDetail.Edit;
begin
  FAcao := tacAlterar;
  Mode;
  nomeCompleto.SetFocus;
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.Endingform;
begin
  memTableBancos.Active := False;
  memTableContatos.Active := False;
  memTableFuncoes.Active := False;
  ReleasingClassRegisters;
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Endingform;
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if gridContatos.IsFocused then Exit;
  If Key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.FormShow(Sender: TObject);
begin
  StartForm;
end;

function Tview_SisGeFEmployeeRegistrationDetail.Formulafilro(iIndex: integer; sTexto: string): boolean;
var
  sMensagem: String;
  FVeiculos: TControllerSisGeFVehiclesRegistration;
begin
  try
  Result := False;
  memTableVeiculos.Active := False;
  FVeiculos := TControllerSisGeFVehiclesRegistration.Create;
  if FVeiculos.SearchVehicle(iIndex, '', sTexto) then
  begin
    memTableVeiculos.Data := FVeiculos.Veiculos.Query.Data;
    FVeiculos.Veiculos.Query.Connection.Connected := False;
  end;
  Result := True;
  finally
    FVeiculos.Free;
  end;
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.Insert;
begin
  Mode;
  ClearFieldsForm;
  memTableContatos.Active := False;
  memTableContatos.Active := True;
  status.Checked := True;
  cpf.SetFocus;
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.InstanceClassRegisters;
begin
  FCadastro := TCadastroControl.Create;
  FEnderecos := TCadastroEnderecosControl.Create;
  FContatos := TCadastroContatosControl.Create;
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.memTableContatosBeforeDelete(DataSet: TDataSet);
begin
  if (FAcao <> tacIncluir) and (FAcao <> tacAlterar) and (memTableContatos.Tag = 0) then
    Abort;
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.memTableContatosBeforeEdit(DataSet: TDataSet);
begin
  if (FAcao <> tacIncluir) and (FAcao <> tacAlterar) and (memTableContatos.Tag = 0) then
    Abort;

end;

procedure Tview_SisGeFEmployeeRegistrationDetail.memTableContatosBeforeInsert(DataSet: TDataSet);
begin
  if (FAcao <> tacIncluir) and (FAcao <> tacAlterar) and (memTableContatos.Tag = 0) then
    Abort;
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.Mode;
begin
  if FAcao = tacIndefinido then
  begin
    actionNew.Enabled := True;
    actionLocate.Enabled := True;
    actionEdit.Enabled := False;
    actionAttach.Enabled := False;
    actionCancel.Enabled := False;
    actionSave.Enabled := False;
//    actionCloseForm.Enabled := True;
    statusBar.Panels[0].Text := '';
    BlockUnblockFieldsForm(True);
  end
  else if FAcao = tacIncluir then
  begin
    actionNew.Enabled := False;
    actionLocate.Enabled := False;
    actionEdit.Enabled := False;
    actionAttach.Enabled := False;
    actionCancel.Enabled := True;
    actionSave.Enabled := True;
//    actionCloseForm.Enabled := False;
    statusBar.Panels[0].Text := 'INCLUIR';
    actionNewVehicle.Enabled := False;
    actionEditvehicle.Enabled := False;
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
//    actionCloseForm.Enabled := False;
    statusBar.Panels[0].Text := 'EDITAR';
    actionNewVehicle.Enabled := True;
    actionEditvehicle.Enabled := True;
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
    actionSave.Enabled := False;
//    actionCloseForm.Enabled := True;
    statusBar.Panels[0].Text := '';
    BlockUnblockFieldsForm(True);
  end;


end;

procedure Tview_SisGeFEmployeeRegistrationDetail.MostraCadastro(FAcao: TAcao; iNumero: integer);
begin
  if not Assigned(view_SisGeFVehiclesRegistrationDetail) then
  begin
    view_SisGeFVehiclesRegistrationDetail := Tview_SisGeFVehiclesRegistrationDetail.Create(Application);
  end;
  view_SisGeFVehiclesRegistrationDetail.iID := iNumero;
  view_SisGeFVehiclesRegistrationDetail.fAcao := FAcao;
  view_SisGeFVehiclesRegistrationDetail.fRegistro := codigo.EditValue;
  if view_SisGeFVehiclesRegistrationDetail.ShowModal() = mrOk then
  begin
    Formulafilro(0,'COD_ENTREGADOR = ' + codigo.Text);
  end;
  FreeAndNil(view_SisGeFVehiclesRegistrationDetail);
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.PopulateAdress(iCadastro: integer);
var
  aParam : array of variant;
begin
  SetLength(aParam, 2);
  aParam := ['ID', iCadastro];
  if FEnderecos.Localizar(aParam) then
  begin
    FEnderecos.SetupClass(FEnderecos.Enderecos.Query);
    FEnderecos.Enderecos.Query.First;
    FIdSeqAdress := FEnderecos.Enderecos.Sequencia;
    cepEndereco.EditValue := FEnderecos.Enderecos.CEP;
    logradouroEndereco.Text := FEnderecos.Enderecos.Logradouro;
    numeroLogradouro.Text := FEnderecos.Enderecos.Numero;
    complementoLogradouro.Text := FEnderecos.Enderecos.Complemento;
    bairroLogradouro.Text := FEnderecos.Enderecos.Bairro;
    cidadeLogradouro.Text := FEnderecos.Enderecos.Cidade;
    ufLogradouro.Text := FEnderecos.Enderecos.UF;
    referenciaLogradouro.Text := FEnderecos.Enderecos.Referencia;
  end;
  Finalize(aParam);
  FEnderecos.Enderecos.Query.Connection.Connected := False;
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.PopulateBanks;
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

procedure Tview_SisGeFEmployeeRegistrationDetail.PopulateContacts(iCadastro: integer);
var
  aParam : array of variant;
begin
  SetLength(aParam, 2);
  aParam := ['ID', iCadastro];
  memTableContatos.Active := False;
  memTableContatos.Active := True;
  if FContatos.Localizar(aParam) then
  begin
    memTableContatos.Tag := 1;
    while not FContatos.Contatos.Query.Eof do
    begin
      memTableContatos.Insert;
      memTableContatos.FieldByName('cod_entregador').AsInteger := FContatos.Contatos.Query.FieldByName('cod_entregador').AsInteger;
      memTableContatos.FieldByName('seq_contato').AsInteger := FContatos.Contatos.Query.FieldByName('seq_contato').AsInteger;
      memTableContatos.FieldByName('des_contato').AsString := FContatos.Contatos.Query.FieldByName('des_contato').AsString;
      memTableContatos.FieldByName('num_telefone').AsString := FContatos.Contatos.Query.FieldByName('num_telefone').AsString;
      memTableContatos.FieldByName('des_email').AsString := FContatos.Contatos.Query.FieldByName('des_email').AsString;
      memTableContatos.Post;
      FContatos.Contatos.Query.Next;
    end;
    memTableContatos.Tag := 0;
    if not memTableContatos.IsEmpty then
      memTableContatos.First
  end;
  Finalize(aParam);
  FContatos.Contatos.Query.Connection.Connected := False;
  if not memTableContatos.Active then
    memTableContatos.Active := True;
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.PopulateCountry;
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

procedure Tview_SisGeFEmployeeRegistrationDetail.PopulateEmployees(iCadastro: integer);
var
  aParam: array of variant;
begin
  try
    SetLength(aParam, 2);
    aParam := ['CADASTRO', iCadastro];
    if FCadastro.Localizar(aParam) then
    begin
      if not FCadastro.SetupModel(FCadastro.Cadastro.Query) then
      begin
        Application.MessageBox('Ocorreu algum problema ao localizar o cadastro!', 'Atenção', MB_OK + MB_ICONERROR);
        Exit;
      end;
      SetupFieldsForm;
      PopulateAdress(iCadastro);
      PopulateContacts(iCadastro);
      Formulafilro(0,'COD_ENTREGADOR = ' + iCadastro.ToString);
      FAcao := tacAlterar;
      Mode;
    end
    else
    begin
      Application.MessageBox('Cadastro não encontrado!', 'Atenção', MB_OK + MB_ICONERROR);
      Exit;
    end;
  finally
    Finalize(aParam);
  end;
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.PopulateFunctionsEmployees;
var
  aParam : array of variant;
begin
  SetLength(aParam, 1);
  FFuncoes := TRHFuncoesControl.Create;
  aParam := ['ALL'];
  memTableFuncoes.Active := False;
  if FFuncoes.Search(aParam) then
  begin
    memTableFuncoes.Data := FFuncoes.Funcoes.Query.Data;
  end;
  FFuncoes.Funcoes.Query.Connection.Connected := False;
  FFuncoes.Free;
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.ReleasingClassRegisters;
begin
  FContatos.Free;
  FEnderecos.Free;
  FCadastro.Free;
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.SaveData;
begin

  if Application.MessageBox('Confirma gravar os dados ?', 'Gravar', MB_YESNO + MB_ICONQUESTION) = IDNO then
  begin
    Exit;
  end;
  SetupClass;

  if not FCadastro.Gravar  then
  begin
    Application.MessageBox('Erro ao gravar os dados!', 'Erro', MB_OK + MB_ICONERROR);
    Exit;
  end;

  FEnderecos.Enderecos.ID := FCadastro.Cadastro.Cadastro;

  if not FEnderecos.Gravar  then
  begin
    Application.MessageBox('Erro ao gravar o endereço!', 'Erro', MB_OK + MB_ICONERROR);
    Exit;
  end;

  FContatos.Contatos.ID := FCadastro.Cadastro.Cadastro;
  FContatos.Contatos.Sequencia := - 1;
  FContatos.Contatos.Acao := tacExcluir;

  if FContatos.Gravar then
  begin
    if not memTableContatos.IsEmpty then
      memTableContatos.First;
    FContatos.Contatos.Acao := tacIncluir;
    while not memTableContatos.Eof do
    begin
      FContatos.Contatos.Descricao := memTableContatosdes_contato.AsString;
      Fcontatos.Contatos.Telefone := memTableContatosnum_telefone.AsString;
      FContatos.Contatos.EMail := memTableContatosdes_email.AsString;
      if not FContatos.Gravar() then
      begin
        Application.MessageBox('Erro ao gravar os contatos!', 'Erro', MB_OK + MB_ICONERROR);
      end;
      memTableContatos.Next
    end;
    if not memTableContatos.IsEmpty then
      memTableContatos.First;
  end;

//  if not FContatos.SaveBatch(memTableContatos)  then
//  begin
//    Application.MessageBox('Erro ao gravar os contatos!', 'Erro', MB_OK + MB_ICONERROR);
//    Exit;
//  end;
  Application.MessageBox('Dados gravados com sucesso!', 'Atenção', MB_OK + MB_ICONINFORMATION);
  cxPageControl1.ActivePageIndex := 0;
  ModalResult := mrOk;
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.SearchCEP(sCEP: string);
var
  APICEP : TAPICEPController;
begin
  try
    APICEP := TAPICEPController.Create;
    sCEP := ReplaceStr(sCEP,'-','');
    sCEP := ReplaceStr(sCEP,' ','');
    if not APICEP.GetAdressByCEP(sCEP) then
    begin
      Application.MessageBox(PChar(APICEP.APICEP.Mensagem), 'Atenção!', MB_OK + MB_ICONWARNING);
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
          logradouroEndereco.Text := Data_Sisgef.memTableCEPlogradouro.AsString;
          complementoLogradouro.Text := Data_Sisgef.memTableCEPcomplemento.AsString;
          bairroLogradouro.Text := Data_Sisgef.memTableCEPbairro.AsString;
          cidadeLogradouro.Text := Data_Sisgef.memTableCEPlocalidade.AsString;
          ufLogradouro.Text := Data_Sisgef.memTableCEPuf.AsString;
//          cepEndereco.Text := Data_Sisgef.memTableCEPcep.AsString;
        end;
        Data_Sisgef.memTableCEP.Active := False;
        FreeAndNil(view_ListaCEPs);
      end;
    end
    else
    begin
      logradouroEndereco.Text := APICEP.APICEP.Enderecos.Logradouro;
      complementoLogradouro.Text := APICEP.APICEP.Enderecos.Complemento;
      bairroLogradouro.Text := APICEP.APICEP.Enderecos.Bairro;
      cidadeLogradouro.Text := APICEP.APICEP.Enderecos.Cidade;
      ufLogradouro.Text := APICEP.APICEP.Enderecos.UF;
//      cepEndereco.Text := Data_Sisgef.memTableCEPcep.AsString;
    end;
  finally
    APICEP.Free;
  end;
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.SearchRegister;
begin
  if not Assigned(view_SisGeFPesquisaPessoas) then
    view_SisGeFPesquisaPessoas := Tview_SisGeFPesquisaPessoas.Create(Application);
  view_SisGeFPesquisaPessoas.FView := 'view_pesquisafuncionariosv1';
  view_SisGeFPesquisaPessoas.FFilterMaster := '';
  if view_SisGeFPesquisaPessoas.ShowModal = mrOk then
  begin
    PopulateEmployees(view_SisGeFPesquisaPessoas.iID);
  end;
  FreeAndNil(view_SisGeFPesquisaPessoas);
end;


procedure Tview_SisGeFEmployeeRegistrationDetail.SetupClass;
begin
  FCadastro.Cadastro.Acao := FAcao;
  FCadastro.Cadastro.Cadastro := codigo.EditValue;
  FCadastro.Cadastro.CPFCNPJ := cpf.EditValue;
  FCadastro.Cadastro.Nome := nomeCompleto.Text;
  FCadastro.Cadastro.Fantasia := alias.Text;
  FCadastro.Cadastro.IERG := numeroRG.Text;
  FCadastro.Cadastro.UFRG := ufRG.Text;
  FCadastro.Cadastro.EmissorRG := emissorRG.Text;
  if dataRG.Text <> '' then
    FCadastro.Cadastro.EMissaoRG := dataRG.Date;
  FCadastro.Cadastro.CidadeNascimento := naturalidade.Text;
  FCadastro.Cadastro.UFNascimento := ufNaturalidade.Text;
  FCadastro.Cadastro.Pai := nomePai.Text;
  FCadastro.Cadastro.Mae := nomeMae.Text;
  FCadastro.Cadastro.IEST := numeroPIS.Text;
  if nascimento.Text <> '' then
    FCadastro.Cadastro.Nascimento := nascimento.Date;
  FCadastro.Cadastro.NumeroCNH := numeroCNH.EditValue;
  FCadastro.Cadastro.RegistroCNH := registroCNH.EditValue;
  FCadastro.Cadastro.UFCNH := ufCNH.Text;
  FCadastro.Cadastro.CategoriaCNH := categoriaCNH.Text;
  if primeiraCNH.Text <> '' then
    FCadastro.Cadastro.DataPrimeiraCNH := primeiraCNH.Date;
  if emissaoCNH.Text <> '' then
    FCadastro.Cadastro.EmissaoCNH := emissaoCNH.Date;

  if validadeCNH.text <> '' then
    FCadastro.Cadastro.ValidadeCNH := validadeCNH.Date;

  FCadastro.Cadastro.CodigoCNH := codigoCNH.EditValue;
  FCadastro.Cadastro.CRT := funcao.EditValue;
  FEnderecos.Enderecos.Correspondencia := 0;
  FEnderecos.Enderecos.Referencia := referenciaLogradouro.Text;
  FCadastro.Cadastro.FormaPagamento := formaPagamento.Text;
  FCadastro.Cadastro.TipoConta := tipoConta.Text;
  if banco.Text <> '' then
    FCadastro.Cadastro.Banco := banco.EditValue;
  FCadastro.Cadastro.AgenciaConta := agencia.Text;
  FCadastro.Cadastro.NumeroConta := numeroConta.Text;
  FCadastro.Cadastro.NomeFavorecido := nomeFavorecido.Text;
  FCadastro.Cadastro.CPFCNPJFavorecido := cpfFavorecidO.Text;
  if observacoes.Lines.Count > 0 then
    FCadastro.Cadastro.Obs := observacoes.Text;
  FCadastro.Cadastro.Funcionario := 'F';
  FCadastro.Cadastro.Entregador := 0;
  FCadastro.Cadastro.Doc := 'CPF';
  FCadastro.Cadastro.CNAE := '';
  FCadastro.Cadastro.IM := '';
  FCadastro.Cadastro.URL := '';
  FCadastro.Cadastro.Agente := 0;
  if status.Checked then
    FCadastro.Cadastro.Status := 1
  else
    FCadastro.Cadastro.Status := 2;
  FEnderecos.Enderecos.Acao := FAcao;

  if FAcao = tacIncluir then
  begin
    FCadastro.Cadastro.DataCadastro := Now;
    Fcadastro.Cadastro.Usuario := Global.Parametros.pUser_ID;
    FCadastro.Cadastro.MEI := '';
    FCadastro.Cadastro.RazaoMEI := '';
    FCadastro.Cadastro.FantasiaMEI := '';
    FCadastro.Cadastro.CNPJMEI := '';
    FCadastro.Cadastro.Verba := 0;
    FCadastro.Cadastro.Combustivel := 0;
    FCadastro.Cadastro.CentroCusto := 0;
    FCadastro.Cadastro.Roubo := 'N';
    FCadastro.Cadastro.QuantosRoubos := 0;
    FCadastro.Cadastro.Acidentes := 'N';
    FCadastro.Cadastro.QuantosAcidentes := 0;
    FCadastro.Cadastro.TransporteEmpresa := 'N';
    FCadastro.Cadastro.QuantosTransporteEmptresa := 0;
    FCadastro.Cadastro.GV := 'N';
    FCadastro.Cadastro.DataGV := 0;
    FCadastro.Cadastro.Chave := '';
    FCadastro.Cadastro.Grupo := 0;
    FCadastro.Cadastro.Roteiro := '';

    FEnderecos.Enderecos.Sequencia := 0;
    FEnderecos.Enderecos.CEP := cepEndereco.EditValue;
    FEnderecos.Enderecos.Logradouro := logradouroEndereco.Text;
    FEnderecos.Enderecos.Numero := numeroLogradouro.Text;
    FEnderecos.Enderecos.Complemento := complementoLogradouro.Text;
    FEnderecos.Enderecos.Bairro := bairroLogradouro.Text;
    FEnderecos.Enderecos.Cidade := cidadeLogradouro.Text;
    FEnderecos.Enderecos.UF := ufLogradouro.Text;
    FEnderecos.Enderecos.Tipo := 'RESIDENCIAL';
  end
  else if FAcao = tacAlterar then
  begin
    FEnderecos.Enderecos.Sequencia := FIdSeqAdress;
    FEnderecos.Enderecos.CEP := cepEndereco.EditValue;
    FEnderecos.Enderecos.Logradouro := logradouroEndereco.Text;
    FEnderecos.Enderecos.Numero := numeroLogradouro.Text;
    FEnderecos.Enderecos.Complemento := complementoLogradouro.Text;
    FEnderecos.Enderecos.Bairro := bairroLogradouro.Text;
    FEnderecos.Enderecos.Cidade := cidadeLogradouro.Text;
    FEnderecos.Enderecos.UF := ufLogradouro.Text;
    FEnderecos.Enderecos.Tipo := 'RESIDENCIAL';
  end;
  FCadastro.Cadastro.Executante := Global.Parametros.pUser_Name;
  FCadastro.Cadastro.DataAlteracao := Now;
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.SetupFieldsForm;
begin
  codigo.EditValue := FCadastro.Cadastro.Cadastro;
  cpf.EditValue := FCadastro.Cadastro.CPFCNPJ;
  nomeCompleto.Text := FCadastro.Cadastro.Nome;
  alias.Text := FCadastro.Cadastro.Fantasia;
  numeroRG.Text := FCadastro.Cadastro.IERG;
  ufRG.Text := FCadastro.Cadastro.UFRG;
  emissorRG.Text := FCadastro.Cadastro.EmissorRG;
  if FCadastro.Cadastro.EMissaoRG > 0 then
    dataRG.Date := FCadastro.Cadastro.EMissaoRG;
  naturalidade.Text := FCadastro.Cadastro.CidadeNascimento;
  ufNaturalidade.Text := FCadastro.Cadastro.UFNascimento;
  nomePai.Text := FCadastro.Cadastro.Pai;
  nomeMae.Text := FCadastro.Cadastro.Mae;
  numeroPIS.Text := FCadastro.Cadastro.IEST;
  if FCadastro.Cadastro.Nascimento > 0 then
    nascimento.Date := FCadastro.Cadastro.Nascimento;
  numeroCNH.EditValue :=FCadastro.Cadastro.NumeroCNH;
  registroCNH.EditValue := FCadastro.Cadastro.RegistroCNH;
  ufCNH.Text := FCadastro.Cadastro.UFCNH;
  categoriaCNH.Text := FCadastro.Cadastro.CategoriaCNH;
  if FCadastro.Cadastro.DataPrimeiraCNH > 0 then
    primeiraCNH.Date := FCadastro.Cadastro.DataPrimeiraCNH;
  if FCadastro.Cadastro.EmissaoCNH > 0 then
    emissaoCNH.Date := FCadastro.Cadastro.EmissaoCNH;
  if FCadastro.Cadastro.ValidadeCNH > 0 then
    validadeCNH.Date := FCadastro.Cadastro.ValidadeCNH;
  codigoCNH.EditValue := FCadastro.Cadastro.CodigoCNH;
  funcao.EditValue := FCadastro.Cadastro.CRT;
//  cepEndereco.EditValue := FEnderecos.Enderecos.CEP;
//  logradouroEndereco.Text := FEnderecos.Enderecos.Logradouro;
//  numeroLogradouro.Text := FEnderecos.Enderecos.Numero;
//  complementoLogradouro.Text := FEnderecos.Enderecos.Complemento;
//  bairroLogradouro.Text := FEnderecos.Enderecos.Bairro;
//  cidadeLogradouro.Text := FEnderecos.Enderecos.Cidade;
//  ufLogradouro.Text := FEnderecos.Enderecos.UF;
//  referenciaLogradouro.Text := FEnderecos.Enderecos.Referencia;
//  PopulateContacts(FCadastro.Cadastro.Cadastro);
  formaPagamento.Text := FCadastro.Cadastro.FormaPagamento;
  tipoConta.Text := FCadastro.Cadastro.TipoConta;
  banco.EditValue := FCadastro.Cadastro.Banco;
  agencia.Text := FCadastro.Cadastro.AgenciaConta;
  numeroConta.Text := FCadastro.Cadastro.NumeroConta;
  nomeFavorecido.Text := FCadastro.Cadastro.NomeFavorecido;
  cpfFavorecido.EditValue := FCadastro.Cadastro.CPFCNPJFavorecido;
  observacoes.Text := FCadastro.Cadastro.Obs;
  if FCadastro.Cadastro.Status < 2 then
    status.Checked := True
  else
    status.Checked := False;
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.StartForm;
begin
  PopulateBanks;
  PopulateCountry;
  PopulateFunctionsEmployees;
  InstanceClassRegisters;
  case FAcao of
    tacIncluir : Insert;
    tacPesquisa : PopulateEmployees(iID);
  else
    Exit;
  end;
end;

procedure Tview_SisGeFEmployeeRegistrationDetail.statusPropertiesChange(Sender: TObject);
begin
  if status.Checked then
    status.Caption := 'ATIVO'
  else
    status.Caption := 'INATIVO';
end;

end.
