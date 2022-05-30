unit View.SisGeFVehicleRegistrationDetail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Common.ENum, Common.Utils, Controller.APICEP, Controller.APICNPJ,
  Controller.SisGeFVehiclesRegistration, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit,
  cxGroupBox, cxRadioGroup, cxMaskEdit, cxDropDownEdit, cxImageComboBox, Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, cxButtonEdit,
  dxLayoutControlAdapters, Vcl.StdCtrls, cxCheckBox, System.Actions, Vcl.ActnList, Vcl.Menus, cxButtons, cxLabel, Vcl.Buttons,
  System.StrUtils, Control.Estados, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Control.Cadastro, dxStatusBar;

type
  Tview_SisGeFVehiclesRegistrationDetail = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    pessoa: TcxImageComboBox;
    dxLayoutItem2: TdxLayoutItem;
    nome: TcxTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    nascimento: TcxDateEdit;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    pai: TcxTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    mae: TcxTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    rgie: TcxTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    ufrg: TcxComboBox;
    dxLayoutItem8: TdxLayoutItem;
    emissao: TcxDateEdit;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    cep: TcxButtonEdit;
    dxLayoutItem10: TdxLayoutItem;
    endereco: TcxTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    bairro: TcxTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    cidade: TcxTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    ufendereco: TcxComboBox;
    dxLayoutItem14: TdxLayoutItem;
    descricao1: TcxTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    telefone1: TcxMaskEdit;
    dxLayoutItem16: TdxLayoutItem;
    descricao2: TcxTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    telefone2: TcxMaskEdit;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    marca: TComboBox;
    dxLayoutItem19: TdxLayoutItem;
    modelo: TcxTextEdit;
    dxLayoutItem20: TdxLayoutItem;
    placa: TcxTextEdit;
    dxLayoutItem21: TdxLayoutItem;
    cidadePlaca: TcxTextEdit;
    dxLayoutItem22: TdxLayoutItem;
    ufplaca: TcxComboBox;
    dxLayoutItem23: TdxLayoutItem;
    ano: TcxMaskEdit;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    renavan: TcxTextEdit;
    dxLayoutItem25: TdxLayoutItem;
    chassis: TcxTextEdit;
    dxLayoutItem26: TdxLayoutItem;
    tipo: TcxComboBox;
    dxLayoutItem27: TdxLayoutItem;
    cor: TcxTextEdit;
    dxLayoutItem28: TdxLayoutItem;
    licenciamento: TcxMaskEdit;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutGroup10: TdxLayoutGroup;
    rastreador: TcxCheckBox;
    dxLayoutItem30: TdxLayoutItem;
    abastecimento: TcxCheckBox;
    dxLayoutItem31: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    actionListVeiculos: TActionList;
    actionOK: TAction;
    actionCancel: TAction;
    cxButton1: TcxButton;
    dxLayoutItem32: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem33: TdxLayoutItem;
    labelMessage: TcxLabel;
    dxLayoutItem35: TdxLayoutItem;
    SpeedButton1: TSpeedButton;
    cpfcnpj: TcxMaskEdit;
    dxLayoutItem3: TdxLayoutItem;
    id: TcxMaskEdit;
    dxLayoutItem36: TdxLayoutItem;
    actionSearchCEP: TAction;
    cadastro: TcxButtonEdit;
    dxLayoutItem37: TdxLayoutItem;
    nomeCadastro: TcxTextEdit;
    dxLayoutItem38: TdxLayoutItem;
    actionPesquisaCadastro: TAction;
    dxStatusBar1: TdxStatusBar;
    dxStatusBar2: TdxStatusBar;
    dxLayoutItem39: TdxLayoutItem;
    dxStatusBar2Container0: TdxStatusBarContainerControl;
    labelOperation: TcxLabel;
    dxLayoutGroup12: TdxLayoutGroup;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pessoaPropertiesChange(Sender: TObject);
    procedure actionOKExecute(Sender: TObject);
    procedure actionCancelExecute(Sender: TObject);
    procedure actionSearchCEPExecute(Sender: TObject);
    procedure cadastroPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actionPesquisaCadastroExecute(Sender: TObject);
  private
    { Private declarations }

    procedure StartForm;
    procedure PopulateForm;
    procedure ClearForm;
    procedure LocateVehicle;
    procedure DescriptionOperation;
    procedure SetupClass;
    procedure SearchCEP(sCEP: string);
    procedure PopulateUF;
    procedure SearchPersons;
    function ReturnNamePerson(iCode: integer): string;
    function Save(): boolean;
  public
    { Public declarations }
    iID: integer;
    fAcao: Tacao;
    fRegistro : Integer;
  end;

var
  view_SisGeFVehiclesRegistrationDetail: Tview_SisGeFVehiclesRegistrationDetail;
  FVehicle : TControllerSisGeFVehiclesRegistration;
  FCEP: TAPICEPController;
  FCNPJ: TAPICNPJController;

implementation

{$R *.dfm}

uses Data.SisGeF, View.ListaCEPs, View.PesquisarPessoas;

{ Tview_SisGeFVehiclesRegistrationDetail }

procedure Tview_SisGeFVehiclesRegistrationDetail.actionCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tview_SisGeFVehiclesRegistrationDetail.actionOKExecute(Sender: TObject);
begin
  if not Save then
    Exit;
  ModalResult := mrOk;
end;

procedure Tview_SisGeFVehiclesRegistrationDetail.actionPesquisaCadastroExecute(Sender: TObject);
begin
  SearchPersons;
end;

procedure Tview_SisGeFVehiclesRegistrationDetail.actionSearchCEPExecute(Sender: TObject);
begin
  SearchCEP(cep.Text);
end;

procedure Tview_SisGeFVehiclesRegistrationDetail.cadastroPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  if (Facao =  tacIncluir) or (FAcao = tacAlterar) then
  begin
    nomeCadastro.Text := ReturnNamePerson(StrToIntDef(cadastro.Text,0));
  end;
end;

procedure Tview_SisGeFVehiclesRegistrationDetail.ClearForm;
begin
  pessoa.EditValue := 'CPF';
  nome.Clear;
  nascimento.Clear;
  pai.Clear;
  mae.Clear;
  rgie.Clear;
  ufrg.Clear;
  emissao.Clear;
  cep.Clear;
  endereco.Clear;
  bairro.Clear;
  cidade.Clear;
  ufendereco.Clear;
  descricao1.Clear;
  telefone1.Clear;
  descricao2.Clear;
  telefone2.Clear;
  marca.ItemIndex := -1;
  modelo.Clear;
  placa.Clear;
  ano.ClearSelection;
  cidadePlaca.Clear;
  ufplaca.Clear;
  renavan.Clear;
  chassis.Clear;
  tipo.ItemIndex := 0;
  cor.Text := '';
  licenciamento.Clear;
  rastreador.Checked  := False;
  abastecimento.Checked := False;
  id.EditValue := 0;
  nomeCadastro.Clear;
  cadastro.EditValue := 0;
  nomeCadastro.Clear;
end;

procedure Tview_SisGeFVehiclesRegistrationDetail.DescriptionOperation;
begin
  case FAcao of
    tacIncluir : labelOperation.Caption := 'INCLUIR';
    tacAlterar : labelOperation.Caption := 'EDITAR';
    tacExcluir : labelOperation.Caption := 'EXCLUIR';
    tacIndefinido : labelOperation.Caption := '';
    tacPesquisa : labelOperation.Caption := 'CONSULTA';
  end;
end;

procedure Tview_SisGeFVehiclesRegistrationDetail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  view_SisGeFVehiclesRegistrationDetail := nil;
end;

procedure Tview_SisGeFVehiclesRegistrationDetail.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;
end;

procedure Tview_SisGeFVehiclesRegistrationDetail.FormShow(Sender: TObject);
begin
  StartForm;
end;

procedure Tview_SisGeFVehiclesRegistrationDetail.LocateVehicle;
var
  aParam : array of variant;
begin
  try
    FVehicle := TControllerSisGeFVehiclesRegistration.Create;
    ClearForm;
    SetLength(aParam, 2);
    if iID <> 0 then
    begin
      aParam := ['ID', iID];
    end
    else if fRegistro <> 0 then
    begin
      aParam := ['CADASTRO', FRegistro];
    end;
    if FVehicle.Search(aParam) then
    begin
      FVehicle.SetupClass;
      PopulateForm;
    end;
    Finalize(aParam);
    cpfcnpj.SetFocus;
  finally
    FVehicle.Free;
  end;
end;

procedure Tview_SisGeFVehiclesRegistrationDetail.pessoaPropertiesChange(Sender: TObject);
begin
  if pessoa.EditValue = 'CPF' then
  begin
    cpfcnpj.Properties.EditMask := '0##\.###\.###\-##;1; ';
    dxLayoutItem1.Visible := True;
    dxLayoutItem5.Visible := True;
    dxLayoutItem6.Visible := True;
    dxLayoutItem8.Visible := True;
    dxLayoutItem9.Visible := True;
  end
  else if pessoa.EditValue = 'CNPJ' then
  begin
    cpfcnpj.Properties.EditMask := '0#\.###\.###\/####\-##;1; ';
    dxLayoutItem1.Visible := False;
    dxLayoutItem5.Visible := False;
    dxLayoutItem6.Visible := False;
    dxLayoutItem8.Visible := False;
    dxLayoutItem9.Visible := False;
  end
  else
  begin
    cpfcnpj.Properties.EditMask := '0#############;1; ';
    dxLayoutItem1.Visible := True;
    dxLayoutItem5.Visible := True;
    dxLayoutItem6.Visible := True;
    dxLayoutItem8.Visible := True;
    dxLayoutItem9.Visible := True;
  end;
end;

procedure Tview_SisGeFVehiclesRegistrationDetail.PopulateForm;
begin
  pessoa.EditValue := FVehicle.Veiculos.TipoDos;
  cpfcnpj.EditValue := FVehicle.Veiculos.CPFCNPJ;
  nome.Text := FVehicle.Veiculos.NomeProprietario;
  nascimento.Date := FVehicle.Veiculos.DataNascimento;
  pai.Text := FVehicle.Veiculos.Pai;
  mae.Text := FVehicle.Veiculos.Mae;
  rgie.Text:= FVehicle.Veiculos.IERG;
  ufrg.Text := FVehicle.Veiculos.UFRG;
  emissao.Date := FVehicle.Veiculos.DataEmissaoRG;
  cep.EditValue := FVehicle.Veiculos.CEPEndereco;
  endereco.Text := FVehicle.Veiculos.LogradouroEndereco;
  bairro.Text := FVehicle.Veiculos.BairroEndereco;
  cidade.Text := FVehicle.Veiculos.CidadeEndereco;
  ufendereco.Text := FVehicle.Veiculos.UFEndereco;
  descricao1.Text := FVehicle.Veiculos.DescricaoTelefone1;
  telefone1.EditValue := FVehicle.Veiculos.Telefone1;
  descricao2.Text := FVehicle.Veiculos.DescricaoTelefone2;
  telefone2.EditValue := FVehicle.Veiculos.Telefone2;
  marca.Text := FVehicle.Veiculos.MarcaVeiculo;
  modelo.Text := FVehicle.Veiculos.ModeloVeiculo;
  placa.Text := FVehicle.Veiculos.PlacaVeiculo;
  ano.EditValue := FVehicle.Veiculos.AnoFabricacaoVeiculo;
  cidadePlaca.Text := FVehicle.Veiculos.MunicipioPlacaVeiculo;
  ufplaca.Text := FVehicle.Veiculos.UFPlacaVeiculo;
  renavan.Text := FVehicle.Veiculos.RenavanVeiculo;
  chassis.Text := FVehicle.Veiculos.ChassisVeiculo;
  tipo.Text := FVehicle.Veiculos.TipoVeiculo;
  cor.Text := FVehicle.Veiculos.CorVeiculo;
  licenciamento.EditValue := FVehicle.Veiculos.AnoExercicioCRLVVeiculo;
  rastreador.EditValue := FVehicle.Veiculos.CheckRastreador;
  abastecimento.EditValue := FVehicle.Veiculos.CheckAbastecimento;
  id.EditValue := FVehicle.Veiculos.ID;
  cadastro.EditValue := FVehicle.Veiculos.Cadastro;
  nomeCadastro.Text := ReturnNamePerson(StrToIntDef(cadastro.Text,0));
end;

procedure Tview_SisGeFVehiclesRegistrationDetail.PopulateUF;
var
  estados : TEstadosControl;
  aParam : array of variant;
  fdQuery: TFDQuery;
begin
  try
    estados := TEstadosControl.Create;
    SetLength(aParam,3);
    aParam := ['APOIO','uf_estado, nom_estado', ''];
    if not estados.Pesquisar(aParam).IsEmpty then
    begin
      fdQuery := estados.Pesquisar(aParam);
      fdQuery.First;
      ufEndereco.Properties.Items.Clear;
      while not fdQuery.Eof do
      begin
        ufEndereco.Properties.Items.Add(fdQuery.FieldByName('uf_estado').AsString);
        ufrg.Properties.Items.Add(fdQuery.FieldByName('uf_estado').AsString);
        ufplaca.Properties.Items.Add(fdQuery.FieldByName('uf_estado').AsString);
        fdQuery.Next;
      end;
    end;
    fdQuery.Active := False;
  finally
    estados.Free;
  end;
end;

function Tview_SisGeFVehiclesRegistrationDetail.ReturnNamePerson(iCode: integer): string;
var
  cadastro : TCadastroControl;
  sRetorno: String;
begin
  try
    Result := '';
    sRetorno := '';
    cadastro := TCadastroControl.Create;
    if iCode <> 0 then
    begin
      sRetorno := cadastro.GetField('DES_RAZAO_SOCIAL', 'COD_CADASTRO', iCode.ToString)
    end;
    Result := sRetorno;
  finally
    cadastro.free;
  end;
end;

function Tview_SisGeFVehiclesRegistrationDetail.Save(): boolean;
begin
  try
    Result := False;
    FVehicle := TControllerSisGeFVehiclesRegistration.Create;
    if Application.MessageBox('Confirma gravar os dados?', 'Gravar', MB_YESNO + MB_ICONQUESTION) = IDNO then
      Exit;
    SetupClass;
    if not FVehicle.Save() then
    begin
      Application.MessageBox(PChar(FVehicle.Veiculos.Mensagem), 'Atenção', MB_OK + MB_ICONERROR);
      Exit;
    end;
    Result := True;
  finally
    FVehicle.Free;
  end;
end;

procedure Tview_SisGeFVehiclesRegistrationDetail.SearchCEP(sCEP: string);
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
          endereco.Text := Data_Sisgef.memTableCEPlogradouro.AsString;
          bairro.Text := Data_Sisgef.memTableCEPbairro.AsString;
          cidade.Text := Data_Sisgef.memTableCEPlocalidade.AsString;
          ufendereco.Text := Data_Sisgef.memTableCEPuf.AsString;
        end;
        Data_Sisgef.memTableCEP.Active := False;
        FreeAndNil(view_ListaCEPs);
      end;
    end
    else
    begin
      endereco.Text := APICEP.APICEP.Enderecos.Logradouro;
      bairro.Text := APICEP.APICEP.Enderecos.Bairro;
      cidade.Text := APICEP.APICEP.Enderecos.Cidade;
      ufendereco.Text := APICEP.APICEP.Enderecos.UF;
    end;
  finally
    APICEP.Free;
  end;
end;

procedure Tview_SisGeFVehiclesRegistrationDetail.SearchPersons;
var
  sSQL: String;
  sWhere: String;
begin
  try
    sSQL := '';
    sWhere := '';
    if not Assigned(View_PesquisarPessoas) then
    begin
      View_PesquisarPessoas := TView_PesquisarPessoas.Create(Application);
    end;
    View_PesquisarPessoas.dxLayoutItem1.Visible := True;
    View_PesquisarPessoas.dxLayoutItem2.Visible := True;
    sSQL := 'select COD_CADASTRO as "Código", DES_RAZAO_SOCIAL as Nome, NUM_IE as "CNPJ / CPF", NUM_CNPJ as "CNPJ / CPF" ' +
            'from tbentregadores ';
    sWhere := 'where COD_CADASTRO like paraN or DES_RAZAO_SOCIAL like "%param%" or NUM_IE like "%param%" or ' +
              'NUM_CNPJ like "%param%"';
    View_PesquisarPessoas.sSQL := sSQL;
    View_PesquisarPessoas.sWhere := sWhere;
    View_PesquisarPessoas.bOpen := False;
    View_PesquisarPessoas.Caption := 'Pesquisa de Tabelas de Verbas';
    if View_PesquisarPessoas.ShowModal = mrOK then
    begin
      cadastro.EditValue := View_PesquisarPessoas.qryPesquisa.Fields[1].AsString;
      nomeCadastro.Text := View_PesquisarPessoas.qryPesquisa.Fields[2].AsString;
    end;
  finally
    View_PesquisarPessoas.qryPesquisa.Close;
    View_PesquisarPessoas.tvPesquisa.ClearItems;
    FreeAndNil(View_PesquisarPessoas);
  end;
end;

procedure Tview_SisGeFVehiclesRegistrationDetail.SetupClass;
begin
  FVehicle.Veiculos.TipoDos := pessoa.EditValue;
  FVehicle.Veiculos.CPFCNPJ := cpfcnpj.EditValue;
  FVehicle.Veiculos.NomeProprietario := nome.Text;
  FVehicle.Veiculos.DataNascimento := nascimento.Date;
  FVehicle.Veiculos.Pai := pai.Text;
  FVehicle.Veiculos.Mae := mae.Text;
  FVehicle.Veiculos.IERG := rgie.Text;
  FVehicle.Veiculos.UFRG := ufrg.Text;
  FVehicle.Veiculos.DataEmissaoRG := emissao.Date;
  FVehicle.Veiculos.CEPEndereco := cep.text;
  FVehicle.Veiculos.LogradouroEndereco := endereco.Text;
  FVehicle.Veiculos.BairroEndereco := bairro.Text;
  FVehicle.Veiculos.CidadeEndereco := cidade.Text;
  FVehicle.Veiculos.UFEndereco := ufendereco.Text;
  FVehicle.Veiculos.DescricaoTelefone1 := descricao1.Text;
  FVehicle.Veiculos.Telefone1 := telefone1.Text;
  FVehicle.Veiculos.DescricaoTelefone2 := descricao2.Text;
  FVehicle.Veiculos.Telefone2 := telefone2.Text;
  FVehicle.Veiculos.MarcaVeiculo := marca.Text;
  FVehicle.Veiculos.ModeloVeiculo := modelo.Text;
  FVehicle.Veiculos.PlacaVeiculo := placa.Text;
  FVehicle.Veiculos.AnoFabricacaoVeiculo := ano.Text;
  FVehicle.Veiculos.MunicipioPlacaVeiculo := cidadePlaca.Text;
  FVehicle.Veiculos.UFPlacaVeiculo := ufplaca.Text;
  FVehicle.Veiculos.RenavanVeiculo := renavan.Text;
  FVehicle.Veiculos.ChassisVeiculo := chassis.Text;
  FVehicle.Veiculos.TipoVeiculo := tipo.Text;
  FVehicle.Veiculos.CorVeiculo := cor.Text;
  FVehicle.Veiculos.AnoExercicioCRLVVeiculo := licenciamento.Text;
  FVehicle.Veiculos.CheckRastreador := rastreador.EditValue;
  FVehicle.Veiculos.CheckAbastecimento := abastecimento.EditValue;
  FVehicle.Veiculos.ID := id.EditValue;
  FVehicle.Veiculos.Cadastro := cadastro.EditValue;
  FVehicle.Veiculos.Acao := FAcao;
end;

procedure Tview_SisGeFVehiclesRegistrationDetail.StartForm;
begin
  FVehicle := TControllerSisGeFVehiclesRegistration.Create;
  DescriptionOperation;
  PopulateUF;
  if FAcao = tacAlterar then
  begin
    cadastro.Properties.ReadOnly := False;
    LocateVehicle;
  end
  else
  begin
    ClearForm;
    if FRegistro > 0 then
    begin
      cadastro.EditValue := FRegistro;
      nomeCadastro.Text := ReturnNamePerson(FRegistro);
      cadastro.Properties.ReadOnly := True;
    end;
  end;
  cpfcnpj.SetFocus;
end;

end.
