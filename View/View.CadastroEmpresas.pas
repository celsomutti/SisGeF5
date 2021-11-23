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
  cxGridTableView, cxGridDBTableView, cxGrid, cxDBNavigator, Controller.CRMContatosEmpresas, Controller.CRMEmpresas,
  Controller.CRMEnderecosEmpresas, Controller.CRMCNAEEmpresas, Controller.CRMFinanceiroEmpresas, Control.Estados, Common.ENum,
  Common.Utils, Controller.APICEP, Controller.APICNPJ, System.StrUtils, Control.Bancos, Vcl.DBActns;

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
    dxLayoutGroup17: TdxLayoutGroup;
    dxBarLargeButton8: TdxBarLargeButton;
    DatasetInsert1: TDataSetInsert;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    DatasetEdit1: TDataSetEdit;
    dxBarLargeButton11: TdxBarLargeButton;
    DatasetDelete1: TDataSetDelete;
    dxBarLargeButton12: TdxBarLargeButton;
    DatasetCancel1: TDataSetCancel;
    dxBarLargeButton13: TdxBarLargeButton;
    DatasetPost1: TDataSetPost;
    procedure FormShow(Sender: TObject);
    procedure statusPropertiesChange(Sender: TObject);
    procedure dsCadastroStateChange(Sender: TObject);
    procedure dsEnderecosStateChange(Sender: TObject);
    procedure actionLocalizarExecute(Sender: TObject);
    procedure actionFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionConsultaCNPJExecute(Sender: TObject);
    procedure actionPesquisarCEPExecute(Sender: TObject);
    procedure memTableEnderecosBeforeInsert(DataSet: TDataSet);
    procedure memTableEnderecosBeforeEdit(DataSet: TDataSet);
    procedure memTableEnderecosBeforeDelete(DataSet: TDataSet);
    procedure memTableContatosBeforeDelete(DataSet: TDataSet);
    procedure memTableContatosBeforeEdit(DataSet: TDataSet);
    procedure memTableContatosBeforeInsert(DataSet: TDataSet);
    procedure memTableFinanceiroBeforeInsert(DataSet: TDataSet);
    procedure memTableFinanceiroBeforeEdit(DataSet: TDataSet);
    procedure memTableFinanceiroBeforeDelete(DataSet: TDataSet);
    procedure memTableCNAEBeforeDelete(DataSet: TDataSet);
    procedure memTableCNAEBeforeEdit(DataSet: TDataSet);
    procedure memTableCNAEBeforeInsert(DataSet: TDataSet);
    procedure memTableCadastroAfterInsert(DataSet: TDataSet);
    procedure memTableCadastroAfterEdit(DataSet: TDataSet);
    procedure memTableCadastroBeforeDelete(DataSet: TDataSet);
    procedure memTableCadastroAfterDelete(DataSet: TDataSet);
    procedure memTableCadastroBeforePost(DataSet: TDataSet);
    procedure memTableCadastroAfterPost(DataSet: TDataSet);
    procedure memTableCadastroAfterCancel(DataSet: TDataSet);
    procedure actionPesquisarBancosExecute(Sender: TObject);
  private
    { Private declarations }
    procedure StartForm;
    procedure EndingForm;
    procedure SearchEmpresa;
    procedure PopulateUF;
    procedure Cancel;
    procedure SearchCEP(sCEP: String);
    procedure SearchCNPJ(sCNPJ: string);
    procedure SearchBanco;
    function Save(): boolean;
    function Delete(): boolean;
    function ValidadeSave(): boolean;
    function ValidadeBanco(sCodigo: string): String;
    function LocateEmpresa(iID: integer): boolean;
    function CPFCNPJExiste(sCnpj: string): boolean;
  public
    { Public declarations }
  end;

var
  view_CadastroEmpresas: Tview_CadastroEmpresas;
  facao : TAcao;
  iCodigo: integer;
implementation

{$R *.dfm}

uses Data.SisGeF, View.PesquisaEmpresas, View.ListaCEPs, View.ResultadoConsultaCNPJ, View.PesquisarGeral;

{ Tview_CadastroEmpresas }

procedure Tview_CadastroEmpresas.actionConsultaCNPJExecute(Sender: TObject);
begin
  SearchCNPJ(cnpjEmpresa.Text);
end;

procedure Tview_CadastroEmpresas.actionFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_CadastroEmpresas.actionLocalizarExecute(Sender: TObject);
begin
  SearchEmpresa;
end;

procedure Tview_CadastroEmpresas.actionPesquisarBancosExecute(Sender: TObject);
begin
  SearchBanco;
end;

procedure Tview_CadastroEmpresas.actionPesquisarCEPExecute(Sender: TObject);
begin
  SearchCEP(cepEndereco.Text);
end;

procedure Tview_CadastroEmpresas.Cancel;
begin
    if dsCadastro.State = dsInsert then
    begin
      memTableEnderecos.Active := False;
      memTableContatos.Active := False;
      memTableFinanceiro.Active := False;
      memTableCNAE.Active := False;
      memTableEnderecos.Active := True;
      memTableContatos.Active := True;
      memTableFinanceiro.Active := True;
      memTableCNAE.Active := True;
    end
    else
    begin
      memTableEnderecos.Cancel;
      memTableContatos.Cancel;
      memTableFinanceiro.Cancel;
      memTableCNAE.Cancel;
    end;
end;

function Tview_CadastroEmpresas.CPFCNPJExiste(sCnpj: string): boolean;
var
  fcadastro : TCRMEmpresasController;
  aParam: array of variant;
begin
  try
    Result := False;
    fcadastro := TCRMEmpresasController.Create;
    SetLength(aParam,2);
    aParam := ['CNPJ',sCnpj];
    if fCadastro.Localizar(aParam) then
      Result := True;
  finally
    fCadastro.Empresas.Query.Active := false;
    fCadastro.Empresas.Query.Connection.Connected := False;
    fcadastro.Free;
  end;
end;

function Tview_CadastroEmpresas.Delete: boolean;
var
  fenderecos : TCRMEnderecosEmpresasController;
  fcontatos : TCRMContatosEmpresasController;
  ffinanceiro : TCRMFinanceiroEmpresasController;
  fcnae : TCRMCNAEEmpressasController;
begin
  try
    Result := False;
    fenderecos := TCRMEnderecosEmpresasController.Create;
    fcontatos := TCRMContatosEmpresasController.Create;
    ffinanceiro := TCRMFinanceiroEmpresasController.Create;
    fcnae := TCRMCNAEEmpressasController.Create;
    if Application.MessageBox('Confirma a exclusão deste registro ?', 'Excluir', MB_YESNO + MB_ICONQUESTION) = IDNO then
      Exit;
    fenderecos.Enderecos.Campos.Cadastro := memTableCadastrocod_empresa.AsInteger;
    fenderecos.Enderecos.Acao := tacExcluir;
    if not fenderecos.Gravar then
    begin
      Application.MessageBox('Ocorreu um problema ao tentar excluir o(s) endereço(s)!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    fcontatos.Contatos.Campos.Cadastro := memTableCadastrocod_empresa.AsInteger;
    fcontatos.Contatos.Acao := tacExcluir;
    if not fcontatos.Gravar then
    begin
      Application.MessageBox('Ocorreu um problema ao tentar excluir o(s) contatos(s)!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    ffinanceiro.financeiro.Cadastro := memTableCadastrocod_empresa.AsInteger;
    ffinanceiro.financeiro.Acao := tacExcluir;
    if not fcontatos.Gravar then
    begin
      Application.MessageBox('Ocorreu um problema ao tentar excluir os dados bancários!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    fcnae.CNAE.Cadastro := memTableCadastrocod_empresa.AsInteger;
    fcnae.CNAE.Acao := tacExcluir;
    if not fcnae.Gravar then
    begin
      Application.MessageBox('Ocorreu um problema ao tentar excluir os dados adicionais!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    Result := True;
  finally
    fenderecos.Free;
    fcontatos.Free;
    ffinanceiro.Free;
    fcnae.Free;
  end;
end;

procedure Tview_CadastroEmpresas.dsCadastroStateChange(Sender: TObject);
begin
  if dsCadastro.State = dsInactive then
  begin
    actionLocalizar.Enabled := True;
    actionFechar.Enabled := True;
    actionConsultaCNPJ.Enabled := False;
    facao := tacIndefinido;
  end
  else if dsCadastro.State = dsBrowse then
  begin
    actionLocalizar.Enabled := True;
    actionFechar.Enabled := True;
    actionConsultaCNPJ.Enabled := False;
  end
  else if dsCadastro.State = dsEdit then
  begin
    actionLocalizar.Enabled := False;
    actionFechar.Enabled := True;
    actionConsultaCNPJ.Enabled := False;
    cnpjEmpresa.Properties.ReadOnly := True;
    facao := tacAlterar;
  end
  else if dsCadastro.State = dsInsert then
  begin
    actionLocalizar.Enabled := False;
    actionFechar.Enabled := True;
    actionConsultaCNPJ.Enabled := True;
    cnpjEmpresa.Properties.ReadOnly := False;
    facao := tacIncluir;
  end;
end;

procedure Tview_CadastroEmpresas.dsEnderecosStateChange(Sender: TObject);
begin
  if dsEnderecos.State = dsInactive then
  begin
    actionPesquisarCEP.Enabled := False;
  end
  else if dsEnderecos.State = dsBrowse then
  begin
    actionPesquisarCEP.Enabled := False;
  end
  else if dsEnderecos.State = dsEdit then
  begin
    actionPesquisarCEP.Enabled := True;
  end
  else if dsEnderecos.State = dsInsert then
  begin
    actionPesquisarCEP.Enabled := True;
  end;
end;

procedure Tview_CadastroEmpresas.EndingForm;
begin
  memTableCadastro.Active := False;
  memTableEnderecos.Active := False;
  memTableContatos.Active := False;
  memTableFinanceiro.Active := False;
  memTableCNAE.Active := False;
end;

procedure Tview_CadastroEmpresas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EndingForm;
  Action := caFree;
  view_CadastroEmpresas := nil;
end;

procedure Tview_CadastroEmpresas.FormShow(Sender: TObject);
begin
  StartForm;
end;

function Tview_CadastroEmpresas.LocateEmpresa(iID: integer): boolean;
var
  fcadastro : TCRMEmpresasController;
  fenderecos : TCRMEnderecosEmpresasController;
  fcontatos : TCRMContatosEmpresasController;
  ffinanceiro : TCRMFinanceiroEmpresasController;
  fcnae : TCRMCNAEEmpressasController;
  aParam: array of variant;
begin
  try
    fcadastro := TCRMEmpresasController.Create;
    fenderecos := TCRMEnderecosEmpresasController.Create;
    fcontatos := TCRMContatosEmpresasController.Create;
    ffinanceiro := TCRMFinanceiroEmpresasController.Create;
    fcnae := TCRMCNAEEmpressasController.Create;
    SetLength(aParam, 2);
    aParam := ['CODIGO', iID];
    memTableCadastro.Active := False;
    memTableEnderecos.Active := False;
    memTableContatos.Active := False;
    memTableFinanceiro.Active := False;
    memTableCNAE.Active := False;
    memTableCadastro.Tag := -1;
    if fcadastro.Localizar(aparam) then
    begin
      memTableCadastro.Active := True;
      memTableCadastro.CopyDataSet(fcadastro.Empresas.Query, [coRestart, coAppend]);
      fcadastro.Empresas.Query.Active := False;
      fcadastro.Empresas.Query.Connection.Connected := False;

      memTableEnderecos.Active := False;
      if fenderecos.Localizar(aParam) then
      begin
        memTableEnderecos.Data := fenderecos.Enderecos.Query.Data;
        fenderecos.Enderecos.Query.Active := False;
        fenderecos.Enderecos.Query.Connection.Connected := False;
      end;
      if not memTableEnderecos.Active then memTableEnderecos.Active := True;
      memTableContatos.Active := False;
      if fcontatos.Localizar(aParam) then
      begin
        memTableContatos.Data := fcontatos.Contatos.Query.Data;
        fcontatos.Contatos.Query.Active := False;
        fcontatos.Contatos.Query.Connection.Connected := False;
      end;
      if not memTableContatos.Active then memTableContatos.Active := True;
      aParam[0] := 'EMPRESA';
      memTableFinanceiro.Active := False;
      memTableFinanceiro.Active := True;
      memTableFinanceiro.Tag := -1;
      if ffinanceiro.Localizar(aParam) then
      begin
        ffinanceiro.financeiro.Query.First;
        while not ffinanceiro.financeiro.Query.Eof do
        begin
          memTableFinanceiro.Insert;
          memTableFinanceirocod_empresa.AsInteger := ffinanceiro.financeiro.Query.FieldByName('cod_empresa').AsInteger;
          memTableFinanceirocod_banco.AsString := ffinanceiro.financeiro.Query.FieldByName('cod_banco').AsString;
          memTableFinanceironom_banco.AsString := ValidadeBanco(ffinanceiro.financeiro.Query.FieldByName('cod_banco').AsString);
          memTableFinanceirocod_agencia.AsString := ffinanceiro.financeiro.Query.FieldByName('cod_agencia').AsString;
          memTableFinanceironum_conta.AsString := ffinanceiro.financeiro.Query.FieldByName('num_conta').AsString;
          memTableFinanceiro.Post;
          ffinanceiro.financeiro.Query.Next;
        end;
        ffinanceiro.financeiro.Query.Active := False;
        ffinanceiro.financeiro.Query.Connection.Connected := False;
      end;
      if not memTableFinanceiro.Active then memTableFinanceiro.Active := True;
      memTableFinanceiro.Tag := 0;
      memTableCNAE.Active := False;
      if fcnae.Localizar(aParam) then
      begin
        memTableCNAE.Data := fcnae.CNAE.Query.Data;
        fcnae.CNAE.Query.Active := False;
        fcnae.CNAE.Query.Connection.Connected := False;
      end;
      if not memTableCNAE.Active then memTableCNAE.Active := True;
    end;
  finally
    memTableCadastro.Tag := 0;
    Finalize(aParam);
    fcadastro.Free;
    fenderecos.Free;
    fcontatos.Free;
    ffinanceiro.Free;
    fcnae.Free;
  end;
end;

procedure Tview_CadastroEmpresas.memTableCadastroAfterCancel(DataSet: TDataSet);
begin
  Cancel;
end;

procedure Tview_CadastroEmpresas.memTableCadastroAfterDelete(DataSet: TDataSet);
begin
  Application.MessageBox('Registro excluido com sucesso', 'Atenção', MB_OK + MB_ICONINFORMATION);
end;

procedure Tview_CadastroEmpresas.memTableCadastroAfterEdit(DataSet: TDataSet);
begin
  nomeRazao.SetFocus;
end;

procedure Tview_CadastroEmpresas.memTableCadastroAfterInsert(DataSet: TDataSet);
begin
  memTableCadastrodes_tipo_doc.AsString := 'CNPJ';
  cnpjEmpresa.SetFocus;
  memTableEnderecos.Active := False;
  memTableContatos.Active := False;
  memTableFinanceiro.Active := False;
  memTableCNAE.Active := False;
  memTableEnderecos.Active := True;
  memTableContatos.Active := True;
  memTableFinanceiro.Active := True;
  memTableCNAE.Active := True;
end;

procedure Tview_CadastroEmpresas.memTableCadastroAfterPost(DataSet: TDataSet);
begin
  if memTableCadastro.Tag = -1 then Exit;

  if Save() then
  Application.MessageBox('Registro gravado com sucesso.', 'Atenção', MB_OK + MB_ICONINFORMATION);
end;

procedure Tview_CadastroEmpresas.memTableCadastroBeforeDelete(DataSet: TDataSet);
begin
  if not Delete then
    Abort;
end;

procedure Tview_CadastroEmpresas.memTableCadastroBeforePost(DataSet: TDataSet);
begin
  if memTableCadastro.Tag = -1 then Exit;
  if not ValidadeSave then
    Abort;
  if Application.MessageBox('Confirma gravar este registro ?', 'Gravar', MB_YESNO + MB_ICONQUESTION) = IDNO then
    Abort;
end;

procedure Tview_CadastroEmpresas.memTableCNAEBeforeDelete(DataSet: TDataSet);
begin
  if (dsCadastro.State <> dsInsert) and (dsCadastro.State <> dsEdit) then
    Abort;
end;

procedure Tview_CadastroEmpresas.memTableCNAEBeforeEdit(DataSet: TDataSet);
begin
  if (dsCadastro.State <> dsInsert) and (dsCadastro.State <> dsEdit) then
    Abort;
end;

procedure Tview_CadastroEmpresas.memTableCNAEBeforeInsert(DataSet: TDataSet);
begin
  if (dsCadastro.State <> dsInsert) and (dsCadastro.State <> dsEdit) then
    Abort;
end;

procedure Tview_CadastroEmpresas.memTableContatosBeforeDelete(DataSet: TDataSet);
begin
  if (dsCadastro.State <> dsInsert) and (dsCadastro.State <> dsEdit) then
    Abort;
end;

procedure Tview_CadastroEmpresas.memTableContatosBeforeEdit(DataSet: TDataSet);
begin
  if (dsCadastro.State <> dsInsert) and (dsCadastro.State <> dsEdit) then
    Abort;
end;

procedure Tview_CadastroEmpresas.memTableContatosBeforeInsert(DataSet: TDataSet);
begin
  if (dsCadastro.State <> dsInsert) and (dsCadastro.State <> dsEdit) then
    Abort;
end;

procedure Tview_CadastroEmpresas.memTableEnderecosBeforeDelete(DataSet: TDataSet);
begin
  if (dsCadastro.State <> dsInsert) and (dsCadastro.State <> dsEdit) then
    Abort;
end;

procedure Tview_CadastroEmpresas.memTableEnderecosBeforeEdit(DataSet: TDataSet);
begin
  if (dsCadastro.State <> dsInsert) and (dsCadastro.State <> dsEdit) then
    Abort;
end;

procedure Tview_CadastroEmpresas.memTableEnderecosBeforeInsert(DataSet: TDataSet);
begin
  if (dsCadastro.State <> dsInsert) and (dsCadastro.State <> dsEdit) then
    Abort;
end;

procedure Tview_CadastroEmpresas.memTableFinanceiroBeforeDelete(DataSet: TDataSet);
begin
  if memTableFinanceiro.Tag = -1 then
    Exit;
  if (dsCadastro.State <> dsInsert) and (dsCadastro.State <> dsEdit) then
    Abort;
end;

procedure Tview_CadastroEmpresas.memTableFinanceiroBeforeEdit(DataSet: TDataSet);
begin
  if memTableFinanceiro.Tag = -1 then
    Exit;
  if (dsCadastro.State <> dsInsert) and (dsCadastro.State <> dsEdit) then
    Abort;
end;

procedure Tview_CadastroEmpresas.memTableFinanceiroBeforeInsert(DataSet: TDataSet);
begin
  if memTableFinanceiro.Tag = -1 then
    Exit;
  if (dsCadastro.State <> dsInsert) and (dsCadastro.State <> dsEdit) then
    Abort;
end;

procedure Tview_CadastroEmpresas.PopulateUF;
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
        fdQuery.Next;
      end;
    end;
    fdQuery.Active := False;
  finally
    estados.Free;
  end;
end;

function Tview_CadastroEmpresas.Save: boolean;
var
  fcadastro : TCRMEmpresasController;
  fenderecos : TCRMEnderecosEmpresasController;
  fcontatos : TCRMContatosEmpresasController;
  ffinanceiro : TCRMFinanceiroEmpresasController;
  fcnae : TCRMCNAEEmpressasController;
begin
  try
    Result := False;
    fcadastro := TCRMEmpresasController.Create;
    fenderecos := TCRMEnderecosEmpresasController.Create;
    fcontatos := TCRMContatosEmpresasController.Create;
    ffinanceiro := TCRMFinanceiroEmpresasController.Create;
    fcnae := TCRMCNAEEmpressasController.Create;
    fcadastro.Empresas.Codigo := memTableCadastrocod_empresa.AsInteger;
    fcadastro.Empresas.TipoDoc := memTableCadastrodes_tipo_doc.AsString;
    fcadastro.Empresas.Nome := memTableCadastrodes_razao_social.AsString;
    fcadastro.Empresas.Alias := memTableCadastronom_fantasia.AsString;
    fcadastro.Empresas.CPF := memTableCadastronum_cnpj.AsString;
    fcadastro.Empresas.CNAE := '';
    fcadastro.Empresas.CRT := memTableCadastrocod_crt.AsInteger;
    fcadastro.Empresas.DataCadastro := memTableCadastrodat_cadastro.AsDateTime;
    fcadastro.Empresas.Status := memTableCadastrocod_status.AsInteger;
    fcadastro.Empresas.Obs := memTableCadastrodes_observacao.Text;
    fcadastro.Empresas.Acao := facao;
    if not fcadastro.Gravar then
    begin
      Application.MessageBox('Ocorreu um problema ao tentar gravar o registro!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    iCodigo := fcadastro.Empresas.Codigo;
    if facao = tacIncluir then
    begin
      memTableCadastro.Tag := -1;
      memTableCadastro.Edit;
      memTableCadastrocod_empresa.AsInteger := iCodigo;
      memTableCadastro.Post;
      memTableCadastro.Tag := 0;
    end;
    fenderecos.Enderecos.Campos.Cadastro := iCodigo;
    fenderecos.Enderecos.Acao := tacExcluir;
    if not fenderecos.Gravar then
    begin
      Application.MessageBox('Ocorreu um problema ao preparar a gravação dos endereços!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if not fenderecos.SaveBatch(memTableEnderecos) then
    begin
      Application.MessageBox('Ocorreu um problema ao tentar gravar o(s) endereço(s)!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    fcontatos.Contatos.Campos.Cadastro := iCodigo;
    fcontatos.Contatos.Campos.Sequencia := -1;
    fcontatos.Contatos.Acao := tacExcluir;
    if not fcontatos.Gravar then
    begin
      Application.MessageBox('Ocorreu um problema ao preparar a gravação dos contatos!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if not fcontatos.SaveBatch(memTableContatos) then
    begin
      Application.MessageBox('Ocorreu um problema ao tentar gravar o(s) contato(s)!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    ffinanceiro.financeiro.Cadastro := iCodigo;
    ffinanceiro.financeiro.Acao := tacExcluir;
    if not ffinanceiro.Gravar then
    begin
      Application.MessageBox('Ocorreu um problema ao preparar a gravação dos dados bancários!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if not ffinanceiro.SaveBatch(memTableFinanceiro) then
    begin
      Application.MessageBox('Ocorreu um problema ao tentar gravar os dados bancários!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    fcnae.CNAE.Cadastro := iCodigo;
    fcnae.CNAE.Acao := tacExcluir;
    if not fcnae.Gravar then
    begin
      Application.MessageBox('Ocorreu um problema ao preparar a gravação do CNAE!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if not fcnae.SaveBatch(memTableCNAE) then
    begin
      Application.MessageBox('Ocorreu um problema ao tentar gravar os dados adicionais!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    Result := True;

  finally
    fcadastro.Free;
    fenderecos.Free;
    fcontatos.Free;
    ffinanceiro.Free;
    fcnae.Free;
  end;
end;

procedure Tview_CadastroEmpresas.SearchBanco;
var
  banco : TBancosControl;
  aParam : array of variant;
  fdQuery: TFDQuery;
begin
  banco := TBancosControl.Create;
  SetLength(aParam, 3);
  aParam := ['APOIO', '*', ''];
  fdQuery := banco.Localizar(aParam);
  if not Assigned(View_PesquisarGeral) then
  begin
    View_PesquisarGeral := TView_PesquisarGeral.Create(Application);
  end;
  View_PesquisarGeral.Caption := 'Pesquisa de Bancos';
  View_PesquisarGeral.qryPesquisa.CreateFieldsFromDataSet(fdQuery);
  View_PesquisarGeral.qryPesquisa.LoadFromDataSet(fdQuery);
  View_PesquisarGeral.tvPesquisa.ClearItems;
  View_PesquisarGeral.tvPesquisa.DataController.CreateAllItems;
  View_PesquisarGeral.tvPesquisa.Columns[1].Visible := False;
  if View_PesquisarGeral.ShowModal = mrOk then
  begin
    memTableFinanceirocod_banco.Text := View_PesquisarGeral.qryPesquisa.FieldByName('cod_banco').AsString;
    memTableFinanceironom_banco.Text := View_PesquisarGeral.qryPesquisa.FieldByName('nom_banco').AsString;
  end;
  View_PesquisarGeral.qryPesquisa.Active := False;
  FreeAndNil(View_PesquisarGeral);

end;

procedure Tview_CadastroEmpresas.SearchCEP(sCEP: String);
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
          memTableEnderecosdes_logradouro.AsString := Data_Sisgef.memTableCEPlogradouro.AsString;
          memTableEnderecosdes_complemento.AsString := Data_Sisgef.memTableCEPcomplemento.AsString;
          memTableEnderecosdes_bairro.AsString := Data_Sisgef.memTableCEPbairro.AsString;
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
      memTableEnderecosdes_bairro.AsString := APICEP.APICEP.Enderecos.Bairro;
      memTableEnderecosnom_cidade.AsString := APICEP.APICEP.Enderecos.Cidade;
      memTableEnderecosuf_estado.AsString := APICEP.APICEP.Enderecos.UF;
      memTableEnderecosnum_cep.AsString := Data_Sisgef.memTableCEPcep.AsString;
    end;
  finally
    APICEP.Free;
  end;
end;

procedure Tview_CadastroEmpresas.SearchCNPJ(sCNPJ: string);
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
      Application.MessageBox(PChar(APICNPJ.APICNPJ.Mensagem), 'Atenção!', MB_OK + MB_ICONWARNING);
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
      memTableCNAE.Active := False;
      memTableCNAE.Active := True;
      while not view_ResultadoConsultaCNPJ.memTableAP.Eof do
      begin
        memTableCNAE.Insert;
        if view_ResultadoConsultaCNPJ.memTableAPdes_tipo.AsString = 'PRINCIPAL' then
          memTableCNAEcod_tipo.AsInteger := 1
        else
          memTableCNAEcod_tipo.AsInteger := 2;
        memTableCNAEcod_empresa.AsInteger := 0;
        memTableCNAEcod_cnae.AsString := view_ResultadoConsultaCNPJ.memTableAPcod_cnae.AsString;
        memTableCNAEdes_cnae.AsString := view_ResultadoConsultaCNPJ.memTableAPdes_cnae.AsString;
        memTableCNAE.Post;
        view_ResultadoConsultaCNPJ.memTableAP.Next;
      end;
    end;

    FreeAndNil(view_ResultadoConsultaCNPJ);

    memTableCadastrodes_razao_social.AsString := APICNPJ.APICNPJ.Pessoas.Nome;
    memTableCadastronom_fantasia.AsString := APICNPJ.APICNPJ.Pessoas.Fantasia;
    memTableCadastrocod_cnae.AsString := '';
    memTableCadastrocod_status.AsInteger := 1;
    memTableCadastrodat_cadastro.AsDateTime := APICNPJ.APICNPJ.Pessoas.DataCadastro;

    memTableEnderecos.Insert;
    memTableEnderecosdes_tipo.AsString := APICNPJ.APICNPJ.Enderecos.Tipo;
    memTableEnderecosnum_cep.AsString := APICNPJ.APICNPJ.Enderecos.CEP;
    memTableEnderecosdes_logradouro.AsString := APICNPJ.APICNPJ.Enderecos.Logradouro;
    memTableEnderecosnum_logradouro.AsString := APICNPJ.APICNPJ.Enderecos.Numero;
    memTableEnderecosdes_complemento.AsString := APICNPJ.APICNPJ.Enderecos.Complemento;
    memTableEnderecosdes_bairro.AsString := APICNPJ.APICNPJ.Enderecos.Bairro;
    memTableEnderecosnom_cidade.AsString := APICNPJ.APICNPJ.Enderecos.Cidade;
    memTableEnderecosuf_estado.AsString := APICNPJ.APICNPJ.Enderecos.UF;
    memTableEnderecosnum_cnpj.AsString := APICNPJ.APICNPJ.Pessoas.CPFCNPJ;
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
    APICNPJ.Free;
  end;
end;

procedure Tview_CadastroEmpresas.SearchEmpresa;
begin
  if not Assigned(view_PesquisaEmpresas) then
  begin
    view_PesquisaEmpresas := Tview_PesquisaEmpresas.Create(Application);
  end;
  if view_PesquisaEmpresas.ShowModal = mrOk then
  begin
    if LocateEmpresa(view_PesquisaEmpresas.fdPesquisacod_cadastro.AsInteger) then
    begin
      facao := tacPesquisa;
    end;
  end;
  FreeAndNil(view_PesquisaEmpresas);
end;

procedure Tview_CadastroEmpresas.StartForm;
begin
  memTableCadastro.Active := True;
  memTableEnderecos.Active := True;
  memTableContatos.Active := True;
  memTableFinanceiro.Active := True;
  PopulateUF;
  iCodigo := 0;
end;

procedure Tview_CadastroEmpresas.statusPropertiesChange(Sender: TObject);
begin
  if status.Checked then
    status.Caption := 'ATIVO'
  else
    status.Caption := 'INATIVO';
end;

function Tview_CadastroEmpresas.ValidadeBanco(sCodigo: string): String;
var
  banco : TBancosControl;
  aParam : array of variant;
  fdQuery: TFDQuery;
begin
  try
    Result := 'BANCO NÃO CADASTRADO';
    banco := TBancosControl.Create;
    SetLength(aParam, 2);
    aParam := ['CODIGO', sCodigo];
    fdQuery := banco.Localizar(aParam);
    if not fdQuery.IsEmpty then
    begin
      Result := fdQuery.FieldByName('nom_banco').AsString;
    end;
  finally
    fdQuery.Active := False;
    fdQuery.Connection.Connected := false;
    banco.Free;
  end;
end;

function Tview_CadastroEmpresas.ValidadeSave: boolean;
begin
  Result := False;
  if dscadastro.State = dsInsert then
  begin
    if tipoDoc.Text = 'CPF' then
    begin
      if not Common.Utils.TUtils.CPF(cnpjEmpresa.Text) then
      begin
        Application.MessageBox('CPF incorreto!','Atenção',MB_OK + MB_ICONEXCLAMATION);
        cnpjEmpresa.SetFocus;
        Exit;
      end;
    end
    else if tipoDoc.Text = 'CNPJ' then
    begin
      if not Common.Utils.TUtils.CNPJ(cnpjEmpresa.Text) then
      begin
        Application.MessageBox('CNPJ incorreto!','Atenção',MB_OK + MB_ICONEXCLAMATION);
        cnpjEmpresa.SetFocus;
        Exit;
      end;
    end
    else
    begin
      Application.MessageBox('Informe o tipo de documento!','Atenção',MB_OK + MB_ICONEXCLAMATION);
      tipoDoc.SetFocus;
      Exit;
    end;
    if CPFCNPJExiste(cnpjEmpresa.Text) then
    begin
      Application.MessageBox('CNPJ já cadastrado!','Atenção',MB_OK + MB_ICONEXCLAMATION);
      cnpjEmpresa.SetFocus;
      Exit;
    end;
  end;

  if nomeRazao.Text = '' then
  begin
    Application.MessageBox('Informe o nome ou razão social!','Atenção',MB_OK + MB_ICONEXCLAMATION);
    nomeRazao.SetFocus;
    Exit;
  end;
  if tipoDoc.ItemIndex = 2 then
  begin
    if nomeFantasia.Text = '' then
    begin
      Application.MessageBox('Informe o nome fantasia!','Atenção',MB_OK + MB_ICONEXCLAMATION);
      nomeFantasia.SetFocus;
      Exit;
    end;
    {if cnpjEmpresa.Text <> '' then
    begin
      if not Common.Utils.TUtils.CNPJ(cnpjEmpresa.Text) then
      begin
        Application.MessageBox('CNPJ do Favorecido incorreto!','Atenção',MB_OK + MB_ICONEXCLAMATION);
        cnpjEmpresa.SetFocus;
        Exit;
      end;
    end;}
  end;
  if tipoDoc.Text = 'CPF' then
  begin
    if dsCadastro.State = dsInsert then
    begin
//      if rgPessoa.Text <> '' then
//      begin
//        if expedidorRG.Text = '' then
//        begin
//          Application.MessageBox('Informe o orgão expedidor do RG!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
//          expedidorRG.SetFocus;
//          Exit;
//        end;
//        if dataEmissaoRG.Date = 0 then
//        begin
//          Application.MessageBox('Informe o data da emissão do RG!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
//          dataEmissaoRG.SetFocus;
//          Exit;
//        end;
//        if dataEmissaoRG.Date > Now then
//        begin
//          Application.MessageBox('Data da emissão do RG inválida!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
//          dataEmissaoRG.SetFocus;
//          Exit;
//        end;
//        if ufRg.Text = '' then
//        begin
//          Application.MessageBox('Informe a UF do RG!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
//          ufRg.SetFocus;
//          Exit;
//        end;
//      end
//      else
//      begin
//        expedidorRG.Clear;
//        dataEmissaoRG.Clear;
//        ufRg.Clear;
//      end;
//      if dataNascimento.Date <> 0 then
//      begin
//        if dataEmissaoRG.Date >= Now then
//        begin
//          Application.MessageBox('Data de nascimento inválida!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
//          dataNascimento.SetFocus;
//          Exit;
//        end;
//        if YearsBetween(Now,dataNascimento.Date) < 18 then
//        begin
//          if Application.MessageBox('Data de nascimento indica que pessoa é menor! Ignorar?', 'Atenção', MB_YESNO + MB_ICONEXCLAMATION + MB_DEFBUTTON2) = IDNO then
//          begin
//            dataNascimento.SetFocus;
//            Exit;
//          end;
//        end;
//      end;
//    end;
    {if maskEditCPFCNPJFavorecido.Text <> '' then
    begin
      if not Common.Utils.TUtils.CNPJ(maskEditCPFCNPJFavorecido.Text) then
      begin
        Application.MessageBox('CNPJ do Favorecido incorreto!','Atenção',MB_OK + MB_ICONEXCLAMATION);
        maskEditCPFCNPJFavorecido.SetFocus;
        Exit;
      end;
    end;}
//    if naturalidade.Text <> '' then
//    begin
//      if ufNaturalidade.Text = '' then
//      begin
//        Application.MessageBox('Informe a UF da naturalidade da Pessoa!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
//        ufNaturalidade.SetFocus;
//        Exit;
//      end;
//    end;
//    if registroCNH.Text <> '' then
//    begin
//      if Length(registroCNH.Text) <> 11 then
//      begin
//        Application.MessageBox('Quantidade de caracteres do número do registro da CNH incorreto!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
//        registroCNH.SetFocus;
//        Exit;
//      end;
//      if Length(numeroCNH.Text) <> 10 then
//      begin
//        Application.MessageBox('Quantidade de caracteres do número da cédula da CNH incorreto!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
//        numeroCNH.SetFocus;
//        Exit;
//      end;
//      if Length(codigoCNH.Text) <> 11 then
//      begin
//        Application.MessageBox('Quantidade de caracteres do código de segurança da CNH incorreto!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
//        codigoCNH.SetFocus;
//        Exit;
//      end;
//      if categoriaCNH.Text = '' then
//      begin
//        Application.MessageBox('Informe a categoria da CNH!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
//        categoriaCNH.SetFocus;
//        Exit;
//      end;
//      if ufCNH.Text = '' then
//      begin
//        Application.MessageBox('Informe UF da CNH!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
//        ufCNH.SetFocus;
//        Exit;
//      end;
//      if emissaoCNH.Date = 0  then
//      begin
//        Application.MessageBox('Informe a data da emissão da CNH!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
//        emissaoCNH.SetFocus;
//        Exit;
//      end;
//      if validadeCNH.Date < Now  then
//      begin
//        Application.MessageBox('Data da validade da CNH inválida!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
//        validadeCNH.SetFocus;
//        Exit;
//      end;
//      if data1CNH.Date = 0  then
//      begin
//        Application.MessageBox('Informe a data da primeira da CNH!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
//        data1CNH.SetFocus;
//        Exit;
//      end;
//      if data1CNH.Date > Now  then
//      begin
//        Application.MessageBox('Data da primeira da CNH inválida!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
//        data1CNH.SetFocus;
//        Exit;
//      end;
    end
    else
    begin
//      codigoCNH.Clear;
//      numeroCNH.Clear;
//      registroCNH.Clear;
//      categoriaCNH.Clear;
//      emissaoCNH.Clear;
//      validadeCNH.Clear;
//      data1CNH.Clear;
//      ufCNH.Clear;
    end;
  end;
  Result := True;
end;

end.
