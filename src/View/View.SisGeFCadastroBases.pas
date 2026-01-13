unit View.SisGeFCadastroBases;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, Vcl.Menus, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutcxEditAdapters, cxContainer, cxTextEdit, dxOfficeSearchBox, cxMaskEdit,
  cxButtonEdit, System.Actions, Vcl.ActnList, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.StorageBin,
  cxSpinEdit, cxDBEdit, cxDropDownEdit, cxImageComboBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMemo, cxCurrencyEdit,
  cxCalendar, service.sistem, Control.Estados, Control.Bancos, Control.Bases, Common.Utils, cxCheckBox, Common.ENum,
  Controller.APICNPJ, System.StrUtils, Controller.APICEP, Control.EnderecosBases;

type
  TviewCadastroBases = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    lgpContainer: TdxLayoutGroup;
    lgpGrade: TdxLayoutGroup;
    lgpOptions: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    gridBasesDBTableView1: TcxGridDBTableView;
    gridBasesLevel1: TcxGridLevel;
    gridBases: TcxGrid;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    betSearch: TcxButtonEdit;
    dxLayoutItem3: TdxLayoutItem;
    aclBases: TActionList;
    actSearch: TAction;
    actExit: TAction;
    dsBases: TDataSource;
    mtbBases: TFDMemTable;
    mtbBasescod_agente: TIntegerField;
    mtbBasesdes_razao_social: TStringField;
    mtbBasesnom_fantasia: TStringField;
    mtbBasesdes_tipo_doc: TStringField;
    mtbBasesnum_cnpj: TStringField;
    mtbBasesnum_ie: TStringField;
    mtbBasesnum_iest: TStringField;
    mtbBasesnum_im: TStringField;
    mtbBasescod_cnae: TStringField;
    mtbBasescod_crt: TIntegerField;
    mtbBasesnum_cnh: TStringField;
    mtbBasesdes_categoria_cnh: TStringField;
    mtbBasesdat_validade_cnh: TDateField;
    mtbBasesdes_pagina: TStringField;
    mtbBasescod_status: TIntegerField;
    mtbBasesdes_observacao: TMemoField;
    mtbBasesdat_cadastro: TDateField;
    mtbBasesdat_alteracao: TDateTimeField;
    mtbBasesval_verba: TFloatField;
    mtbBasesdes_tipo_conta: TStringField;
    mtbBasescod_banco: TStringField;
    mtbBasescod_agencia: TStringField;
    mtbBasesnum_conta: TStringField;
    mtbBasesnom_favorecido: TStringField;
    mtbBasesnum_cpf_cnpj_favorecido: TStringField;
    mtbBasesdes_forma_pagamento: TStringField;
    mtbBasescod_centro_custo: TIntegerField;
    mtbBasescod_grupo: TIntegerField;
    mtbBasesdes_chave: TStringField;
    mtbBasescod_tabela: TIntegerField;
    gridBasesDBTableView1cod_agente: TcxGridDBColumn;
    gridBasesDBTableView1des_razao_social: TcxGridDBColumn;
    gridBasesDBTableView1nom_fantasia: TcxGridDBColumn;
    gridBasesDBTableView1des_tipo_doc: TcxGridDBColumn;
    gridBasesDBTableView1num_cnpj: TcxGridDBColumn;
    gridBasesDBTableView1num_ie: TcxGridDBColumn;
    gridBasesDBTableView1num_iest: TcxGridDBColumn;
    gridBasesDBTableView1num_im: TcxGridDBColumn;
    gridBasesDBTableView1cod_cnae: TcxGridDBColumn;
    gridBasesDBTableView1cod_crt: TcxGridDBColumn;
    gridBasesDBTableView1num_cnh: TcxGridDBColumn;
    gridBasesDBTableView1des_categoria_cnh: TcxGridDBColumn;
    gridBasesDBTableView1dat_validade_cnh: TcxGridDBColumn;
    gridBasesDBTableView1des_pagina: TcxGridDBColumn;
    gridBasesDBTableView1cod_status: TcxGridDBColumn;
    gridBasesDBTableView1des_observacao: TcxGridDBColumn;
    gridBasesDBTableView1dat_cadastro: TcxGridDBColumn;
    gridBasesDBTableView1dat_alteracao: TcxGridDBColumn;
    gridBasesDBTableView1val_verba: TcxGridDBColumn;
    gridBasesDBTableView1des_tipo_conta: TcxGridDBColumn;
    gridBasesDBTableView1cod_banco: TcxGridDBColumn;
    gridBasesDBTableView1cod_agencia: TcxGridDBColumn;
    gridBasesDBTableView1num_conta: TcxGridDBColumn;
    gridBasesDBTableView1nom_favorecido: TcxGridDBColumn;
    gridBasesDBTableView1num_cpf_cnpj_favorecido: TcxGridDBColumn;
    gridBasesDBTableView1des_forma_pagamento: TcxGridDBColumn;
    gridBasesDBTableView1cod_centro_custo: TcxGridDBColumn;
    gridBasesDBTableView1cod_grupo: TcxGridDBColumn;
    gridBasesDBTableView1des_chave: TcxGridDBColumn;
    gridBasesDBTableView1cod_tabela: TcxGridDBColumn;
    dxLayoutGroup2: TdxLayoutGroup;
    cxButton2: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    lgpCadastro: TdxLayoutGroup;
    actNew: TAction;
    actEdit: TAction;
    actExport: TAction;
    cxButton3: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dbSpeCodigo: TcxDBSpinEdit;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dbIcbPessoa: TcxDBImageComboBox;
    dxLayoutItem8: TdxLayoutItem;
    dbTedNome: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    dbBedCpfCnpj: TcxDBButtonEdit;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dbTedNomeFantasia: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    dbTedIeRg: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    dbTedIm: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    actSearchCNPJ: TAction;
    actSeachCEP: TAction;
    dxLayoutGroup6: TdxLayoutGroup;
    mtbEndereco: TFDMemTable;
    dsEndereco: TDataSource;
    mtbEnderecoCOD_AGENTE: TIntegerField;
    mtbEnderecoSEQ_ENDERECO: TIntegerField;
    mtbEnderecoDES_TIPO: TStringField;
    mtbEnderecoDES_LOGRADOURO: TStringField;
    mtbEnderecoNUM_LOGRADOURO: TStringField;
    mtbEnderecoDES_COMPLEMENTO: TStringField;
    mtbEnderecoDOM_CORRESPONDENCIA: TIntegerField;
    mtbEnderecoDES_BAIRRO: TStringField;
    mtbEnderecoNOM_CIDADE: TStringField;
    mtbEnderecoUF_ESTADO: TStringField;
    mtbEnderecoNUM_CEP: TStringField;
    mtbEnderecoDES_REFERENCIA: TStringField;
    dxLayoutGroup7: TdxLayoutGroup;
    dbBedCep: TcxDBButtonEdit;
    dxLayoutItem14: TdxLayoutItem;
    dbTedEndereco: TcxDBTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    dbTedNumero: TcxDBTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    dbTedComplemento: TcxDBTextEdit;
    dxLayoutItem18: TdxLayoutItem;
    dbTedBairro: TcxDBTextEdit;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    dbTedCidade: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    dbCbxEstados: TcxDBComboBox;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutGroup11: TdxLayoutGroup;
    dbCbxFormaPagamento: TcxDBComboBox;
    dxLayoutItem21: TdxLayoutItem;
    mtbBancos: TFDMemTable;
    dsBancos: TDataSource;
    mtbBancoscod_banco: TStringField;
    mtbBancosnom_banco: TStringField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutGroup12: TdxLayoutGroup;
    dbRedAgencia: TcxDBTextEdit;
    dxLayoutItem23: TdxLayoutItem;
    dbTedConta: TcxDBTextEdit;
    dxLayoutItem24: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutGroup14: TdxLayoutGroup;
    dbMemObs: TcxDBMemo;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutGroup15: TdxLayoutGroup;
    dbCurVerba: TcxDBCurrencyEdit;
    dxLayoutItem27: TdxLayoutItem;
    dbDatCadastro: TcxDBDateEdit;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutGroup16: TdxLayoutGroup;
    actSave: TAction;
    actCancel: TAction;
    cxButton5: TcxButton;
    dxLayoutItem29: TdxLayoutItem;
    cxButton6: TcxButton;
    dxLayoutItem30: TdxLayoutItem;
    dbchkStatus: TcxDBCheckBox;
    dxLayoutItem31: TdxLayoutItem;
    actClear: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actExitExecute(Sender: TObject);
    procedure dbIcbPessoaPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure dbchkStatusPropertiesChange(Sender: TObject);
    procedure actClearExecute(Sender: TObject);
    procedure actNewExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure actExportExecute(Sender: TObject);
    procedure gridBasesDBTableView1DblClick(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actSearchCNPJExecute(Sender: TObject);
    procedure actSeachCEPExecute(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
  private
    FSistem : TSistem;
    FAcao : TAcao;

    procedure PopulaEstados;
    procedure PopulaBancos;
    procedure PesquisaBase;
    procedure Mode;
    procedure NovoCadastro;
    procedure EditarCadastro;
    procedure CancelarCadastro;
    procedure ExportGrade;
    procedure SearchCNPJ(sCNPJ: string);
    procedure SearchCEP(sCEP: string);
    procedure PopulaEnderecos(iBase: integer);
    procedure SalvaDados;

    function ValidaDados(): boolean;
  public
    { Public declarations }
  end;

var
  viewCadastroBases: TviewCadastroBases;

implementation


{$R *.dfm}

uses Data.SisGeF, View.ResultadoConsultaCNPJ, View.ListaCEPs;

procedure TviewCadastroBases.actCancelExecute(Sender: TObject);
begin
  CancelarCadastro;
end;

procedure TviewCadastroBases.actClearExecute(Sender: TObject);
begin
  betSearch.Clear;
end;

procedure TviewCadastroBases.actEditExecute(Sender: TObject);
begin
  EditarCadastro;
end;

procedure TviewCadastroBases.actExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TviewCadastroBases.actExportExecute(Sender: TObject);
begin
  ExportGrade;
end;

procedure TviewCadastroBases.actNewExecute(Sender: TObject);
begin
  NovoCadastro;
end;

procedure TviewCadastroBases.actSaveExecute(Sender: TObject);
begin
  SalvaDados;
end;

procedure TviewCadastroBases.actSeachCEPExecute(Sender: TObject);
begin
  SearchCEP(dbBedCep.Text);
end;

procedure TviewCadastroBases.actSearchCNPJExecute(Sender: TObject);
begin
  SearchCNPJ(dbBedCpfCnpj.Text);
end;

procedure TviewCadastroBases.actSearchExecute(Sender: TObject);
begin
  PesquisaBase;
end;

procedure TviewCadastroBases.CancelarCadastro;
begin
  mtbBases.Cancel;
  if not mtbBases.IsEmpty then
    FAcao := tacPesquisa
  else
    FAcao := tacIndefinido;
  Mode;
  lgpContainer.ItemIndex := 0;
  Abort;
end;

procedure TviewCadastroBases.dbchkStatusPropertiesChange(Sender: TObject);
begin
  if dbchkStatus.Checked then
    dbchkStatus.Caption := 'ATIVO'
  else if not dbchkStatus.Checked then
    dbchkStatus.Caption := 'INATIVO';
end;

procedure TviewCadastroBases.dbIcbPessoaPropertiesChange(Sender: TObject);
begin
  if dbIcbPessoa.EditValue = 'CPF' then
  begin
    dbBedCpfCnpj.Properties.EditMask := '000\.000\.000\-00;1; ';
    dbBedCpfCnpj.Properties.Buttons[0].Enabled := False;
  end
  else if dbIcbPessoa.EditValue = 'CNPJ' then
  begin
    dbBedCpfCnpj.Properties.EditMask := '00\.000\.000\/0000\-00;1; ';
    dbBedCpfCnpj.Properties.Buttons[0].Enabled := True;
  end
  else
  begin
    dbBedCpfCnpj.Properties.EditMask := '';
    dbBedCpfCnpj.Properties.Buttons[0].Enabled := False;
  end;
end;

procedure TviewCadastroBases.EditarCadastro;
begin
  if mtbBases.IsEmpty then Exit;
  Facao := tacAlterar;
  Mode;
  PopulaEnderecos(mtbBasescod_agente.AsInteger);
  lgpContainer.ItemIndex := 1;
  mtbBases.Edit;
end;

procedure TviewCadastroBases.ExportGrade;
var
  FUtil : TUtils;
  sMensagem: String;
begin
  try
    FUtil := TUtils.Create;

    if Data_Sisgef.SaveDialog.Execute() then
    begin
      if FileExists(Data_Sisgef.SaveDialog.FileName) then
      begin
        sMensagem := 'Arquivo ' + Data_Sisgef.SaveDialog.FileName + ' já existe! Sobrepor ?';
        if Application.MessageBox(PChar(sMensagem), 'Sobrepor', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit
      end;

      FUtil.ExportarDados(gridBases,Data_Sisgef.SaveDialog.FileName);

    end;
  finally
    FUtil.Free;
  end;
end;

procedure TviewCadastroBases.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  mtbBases.Active := False;
  mtbEndereco.Active := False;
  mtbBancos.Active := False;
  viewCadastroBases := nil;
end;

procedure TviewCadastroBases.FormShow(Sender: TObject);
begin
  FAcao := tacIndefinido;
  PopulaEstados;
  populaBancos;
end;

procedure TviewCadastroBases.gridBasesDBTableView1DblClick(Sender: TObject);
begin
  EditarCadastro;
end;

procedure TviewCadastroBases.Mode;
begin
  if FAcao = tacIndefinido then
  begin
    dbSpeCodigo.Properties.ReadOnly := True;
    dbIcbPessoa.Properties.ReadOnly := True;
    dbBedCpfCnpj.Properties.ReadOnly := True;
    actNew.Enabled := True;
    actEdit.Enabled := False;
    actSave.Enabled := False;
    actCancel.Enabled := False;
    dsEndereco.AutoEdit := False;
  end
  else if FAcao = tacIncluir then
  begin
    dbSpeCodigo.Properties.ReadOnly := False;
    dbIcbPessoa.Properties.ReadOnly := False;
    dbBedCpfCnpj.Properties.ReadOnly := False;
    actNew.Enabled := False;
    actEdit.Enabled := False;
    actSave.Enabled := True;
    actCancel.Enabled := True;
    dsEndereco.AutoEdit := True;
  end
  else if FAcao = tacAlterar then
  begin
    dbSpeCodigo.Properties.ReadOnly := True;
    dbIcbPessoa.Properties.ReadOnly := True;
    dbBedCpfCnpj.Properties.ReadOnly := True;
    actNew.Enabled := False;
    actEdit.Enabled := False;
    actSave.Enabled := True;
    actCancel.Enabled := True;
    dsEndereco.AutoEdit := True;
  end
  else if FAcao = tacPesquisa then
  begin
    dbSpeCodigo.Properties.ReadOnly := True;
    dbIcbPessoa.Properties.ReadOnly := True;
    dbBedCpfCnpj.Properties.ReadOnly := True;
    actNew.Enabled := True;
    actEdit.Enabled := (not mtbBases.IsEmpty);
    actSave.Enabled := False;
    actCancel.Enabled := False;
    dsEndereco.AutoEdit := False;
  end;
  actExport.Enabled := (not mtbBases.IsEmpty);
end;

procedure TviewCadastroBases.NovoCadastro;
begin
  FAcao := tacIncluir;
  Mode;
  lgpContainer.ItemIndex := 1;
  mtbBases.Insert;
  dbSpeCodigo.SetFocus;
end;

procedure TviewCadastroBases.PesquisaBase;
var
  FBases : TBasesControl;
  FUtil : TUtils;
  aParam : array of variant;
  sFilter : String;
begin
  FBases := TBasesControl.Create;
  FUtil := TUtils.Create;
  SetLength(aParam, 2);
  sFilter := '';
  try
    if Trim(betSearch.Text) <> '' then
    begin
      if FUtil.ENumero(betSearch.Text) then
      begin
        sFilter := sFilter + ' cod_agente = ' + betSearch.Text + ' or num_cnpj like "%' + betSearch.Text + '%"' +
                   ' or num_ie like "%' + betSearch.Text + '%"' + ' or num_im like "%' + betSearch.Text + '%"';
      end
      else
      begin
        sFilter := sFilter + ' des_razao_social like "%' + betSearch.Text + '%" or nom_fantasia like "%' + betSearch.Text + '%"';
      end;
      aParam := ['FILTRO', sFilter];
    end;
    if mtbBases.Active then
      mtbBases.Active := False;
    mtbBases.Data := FBases.Localizar(AParam).Data;
    FAcao := tacPesquisa;
    Mode;
  finally
    Finalize(aParam);
    FBases.Free;
    FUtil.Free;
  end;
end;

procedure TviewCadastroBases.PopulaBancos;
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
      if mtbBancos.Active then
      begin
        mtbBancos.Close;
      end;
      mtbBancos.Data := FBancos.Bancos.Query;
      FBancos.Bancos.Query.Close;
      FBancos.Bancos.Query.Connection.Close;
    end;
    Finalize(aParam);
  finally
    FBancos.Free;
  end;
end;

procedure TviewCadastroBases.PopulaEnderecos(iBase: integer);
var
  FEnderecos: TEnderecosBasesControl;
  aParam : array of variant;
begin
  FEnderecos := TEnderecosBasesControl.Create;
  SetLength(aParam,2);
  try
    mtbEndereco.Active := False;
    aParam := ['CODIGO', iBase];
    mtbEndereco.Data := FEnderecos.Localizar(aParam).Data;
  finally
    Finalize(aParam);
    FEnderecos.Free;
  end;
end;

procedure TviewCadastroBases.PopulaEstados;
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
       FEstados.Estados.Query.First;
      while not  FEstados.Estados.Query.Eof do
      begin
        dbCbxEstados.Properties.Items.Append( FEstados.Estados.Query.FieldByName('UF_ESTADO').AsString);
         FEstados.Estados.Query.Next;
      end;
      FEstados.Estados.Query.Close;
      FEstados.Estados.Query.Connection.Close;
    end;
    Finalize(aParam);
  finally
    FEstados.Free;
  end;
end;

procedure TviewCadastroBases.SalvaDados;
var
  FBase : TBasesControl;
  FEndereco: TEnderecosBasesControl;
  FUtil : TUtils;
begin
  FBase := TBasesControl.Create;
  FEndereco := TEnderecosBasesControl.Create;
  FUtil := TUtils.Create;
  try
    if not ValidaDados then Exit;
    mtbBases.Post;
    if (mtbEndereco.State = dsInsert) or (mtbEndereco.State = dsEdit) then
      mtbEndereco.Post;
    FBase.Bases.Codigo := mtbBasescod_agente.AsInteger;
    FBase.Bases.RazaoSocial := mtbBasesdes_razao_social.AsString;
    FBase.Bases.NomeFantasia := mtbBasesnom_fantasia.AsString;
    FBase.Bases.TipoDoc := mtbBasesdes_tipo_doc.AsString;
    FBase.Bases.CNPJCPF := FUtil.DesmontaCPFCNPJ(mtbBasesnum_cnpj.AsString);
    FBase.Bases.IE := mtbBasesnum_ie.AsString;
    FBase.Bases.IEST := mtbBasesnum_iest.AsString;
    FBase.Bases.IM := mtbBasesnum_im.AsString;
    FBase.Bases.CNAE := mtbBasescod_cnae.AsString;
    FBase.Bases.CRT := mtbBasescod_crt.AsInteger;
    FBase.Bases.NumeroCNH := mtbBasesnum_cnh.AsString;
    FBase.Bases.CategoriaCNH := mtbBasesdes_categoria_cnh.AsString;
    FBase.Bases.ValidadeCNH := mtbBasesdat_validade_cnh.AsDateTime;
    FBase.Bases.PaginaWeb := mtbBasesdes_pagina.AsString;
    FBase.Bases.Status := mtbBasescod_status.AsInteger;
    FBase.Bases.Obs := mtbBasesdes_observacao.AsString;
    FBase.Bases.DataCadastro := mtbBasesdat_cadastro.AsDateTime;
    FBase.Bases.DataAlteracao := mtbBasesdat_alteracao.AsDateTime;
    FBase.Bases.ValorVerba := mtbBasesval_verba.AsFloat;
    FBase.Bases.TipoConta := mtbBasesdes_tipo_conta.AsString;
    FBase.Bases.CodigoBanco := mtbBasescod_banco.AsString;
    FBase.Bases.NumeroAgente := mtbBasescod_agencia.AsString;
    FBase.Bases.NumeroConta := mtbBasesnum_conta.AsString;
    FBase.Bases.NomeFavorecido := mtbBasesnom_favorecido.AsString;
    FBase.Bases.CNPJCPFFavorecido := mtbBasesnum_cpf_cnpj_favorecido.AsString;
    FBase.Bases.FormaPagamento := mtbBasesdes_forma_pagamento.AsString;
    FBase.Bases.CentroCusto := mtbBasescod_centro_custo.AsInteger;
    FBase.Bases.Grupo := mtbBasescod_grupo.AsInteger;
    FBase.Bases.Chave := mtbBasesdes_chave.AsString;
    FBase.Bases.Tabela := mtbBasescod_tabela.AsInteger;
    FBase.Bases.Acao := FAcao;

    if not FBase.Gravar then
    begin
      MessageDlg('Erro ao gravar a base!', mtError.mtWarning, [mrCancel], 0);
      Exit;
    end;

    if not mtbEndereco.IsEmpty then
    begin
      FEndereco.Endereco.Base := FBase.Bases.Codigo;
      FEndereco.Endereco.Acao := tacExcluir;

      if not FEndereco.Gravar then
      begin
        MessageDlg('Erro ao preparar a gravação do endereço da base!', mtError.mtWarning, [mrCancel], 0);
        Exit;
      end;
      FEndereco.Endereco.Sequencia := 0;
      FEndereco.Endereco.Tipo := 'PRINCIPAL';
      FEndereco.Endereco.Logradouro := mtbEnderecoDES_LOGRADOURO.AsString;
      FEndereco.Endereco.Numero := mtbEnderecoNUM_LOGRADOURO.AsString;
      FEndereco.Endereco.Complemento := mtbEnderecoDES_COMPLEMENTO.AsString;
      FEndereco.Endereco.Bairro := mtbEnderecoDES_BAIRRO.AsString;
      FEndereco.Endereco.Cidade := mtbEnderecoNOM_CIDADE.AsString;
      FEndereco.Endereco.UF := mtbEnderecoUF_ESTADO.AsString;
      FEndereco.Endereco.CEP := mtbEnderecoNUM_CEP.AsString;
      FEndereco.Endereco.Referencia := mtbEnderecoDES_REFERENCIA.AsString;
      FEndereco.Endereco.Acao := Facao;
      if not FEndereco.Gravar then
      begin
        MessageDlg('Erro ao gravar o endereço da base!', mtError, [mrCancel], 0);
        Exit;
      end;
      MessageDlg('Cadastro salvo com sucesso!', mtInformation, [mbOK], 0);
    end;
  finally
    FUtil.Free;
    FBase.Free;
    FEndereco.Free;
  end;
end;

procedure TviewCadastroBases.SearchCEP(sCEP: string);
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
          mtbEnderecoDES_LOGRADOURO.AsString := Data_Sisgef.memTableCEPlogradouro.AsString;
          mtbEnderecoDES_COMPLEMENTO.AsString := Data_Sisgef.memTableCEPcomplemento.AsString;
          mtbEnderecoDES_BAIRRO.AsString := Data_Sisgef.memTableCEPbairro.AsString;
          mtbEnderecoNOM_CIDADE.AsString := Data_Sisgef.memTableCEPlocalidade.AsString;
          mtbEnderecoUF_ESTADO.AsString := Data_Sisgef.memTableCEPuf.AsString;
          mtbEnderecoNUM_CEP.AsString := Data_Sisgef.memTableCEPcep.AsString;
        end;
        Data_Sisgef.memTableCEP.Active := False;
        FreeAndNil(view_ListaCEPs);
      end;
    end
    else
    begin
      mtbEnderecoDES_LOGRADOURO.AsString := Data_Sisgef.memTableCEPlogradouro.AsString;
      mtbEnderecoDES_COMPLEMENTO.AsString := Data_Sisgef.memTableCEPcomplemento.AsString;
      mtbEnderecoDES_BAIRRO.AsString := Data_Sisgef.memTableCEPbairro.AsString;
      mtbEnderecoNOM_CIDADE.AsString := Data_Sisgef.memTableCEPlocalidade.AsString;
      mtbEnderecoUF_ESTADO.AsString := Data_Sisgef.memTableCEPuf.AsString;
    end;
  finally
    APICEP.Free;
  end;
end;

procedure TviewCadastroBases.SearchCNPJ(sCNPJ: string);
var
  APICNPJ : TAPICNPJController;
  FUtil : TUtils;
begin
  FUtil := TUtils.Create;
  try
    APICNPJ := TAPICNPJController.Create;
    sCNPJ := FUtil.DesmontaCPFCNPJ(sCNPJ);

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
      while not view_ResultadoConsultaCNPJ.memTableAP.Eof do
      begin
        if view_ResultadoConsultaCNPJ.memTableAPdes_tipo.AsString = 'PRINCIPAL' then
          mtbBasesnum_cnpj.AsString := view_ResultadoConsultaCNPJ.memTableAPcod_cnae.AsString;
        view_ResultadoConsultaCNPJ.memTableAP.Next;
      end;

    end;

    FreeAndNil(view_ResultadoConsultaCNPJ);

    dbTedNome.Text := APICNPJ.APICNPJ.Pessoas.Nome;
    dbTedNomeFantasia.Text := APICNPJ.APICNPJ.Pessoas.Fantasia;
    if not  mtbEndereco.Active then  mtbEndereco.Active := True;

    mtbEndereco.Insert;
    mtbEnderecoDES_TIPO.AsString := APICNPJ.APICNPJ.Enderecos.Tipo;
    mtbEnderecoNUM_CEP.AsString := APICNPJ.APICNPJ.Enderecos.CEP;
    mtbEnderecoDES_LOGRADOURO.AsString := APICNPJ.APICNPJ.Enderecos.Logradouro;
    mtbEnderecoNUM_LOGRADOURO.AsString := APICNPJ.APICNPJ.Enderecos.Numero;
    mtbEnderecoDES_COMPLEMENTO.AsString := APICNPJ.APICNPJ.Enderecos.Complemento;
    mtbEnderecoDES_BAIRRO.AsString := APICNPJ.APICNPJ.Enderecos.Bairro;
    mtbEnderecoNOM_CIDADE.AsString := APICNPJ.APICNPJ.Enderecos.Cidade;
    mtbEnderecoUF_ESTADO.AsString := APICNPJ.APICNPJ.Enderecos.UF;
    mtbEndereco.Post;

  finally
    FUtil.Free;
    if Data_Sisgef.memTableCNPJ.Active then
      Data_Sisgef.memTableCNPJ.Active := False;
    APICNPJ.DisposeOf;
  end;
end;

function TviewCadastroBases.ValidaDados: boolean;
var
  sCampo: string;
  FUtil : TUtils;
begin
  FUtil := TUtils.Create;
  Result := False;
  if mtbBasesdes_razao_social.AsString.IsEmpty then
  begin
    MessageDlg('Informe o nome / razão social da base!',mtWarning, [mbOK], 0);
    Exit;
  end;
  if mtbBasesnom_fantasia.AsString.IsEmpty then
  begin
    MessageDlg('Informe o alias / nome fantasia da base!',mtWarning, [mbOK], 0);
    Exit;
  end;
  sCampo := FUtil.DesmontaCPFCNPJ(mtbBasesnum_cnpj.AsString);
  if not sCampo.IsEmpty then
  begin
    if Length(sCampo) <= 14 then
    begin
      if not FUtil.CNPJ(sCampo) then
      begin
        MessageDlg('CNPJ informado é inválido!',mtWarning, [mbOK], 0);
        Exit;
      end;
    end
    else
    begin
      if not FUtil.CPF(sCampo) then
      begin
        MessageDlg('CPF informado é inválido!',mtWarning, [mbOK], 0);
        Exit;
      end;
    end;
  end;
  if (mtbBasesnum_ie.AsString = '') and (mtbBasesdes_tipo_doc.AsString = 'CNPJ') then
  begin
    mtbBasesnum_ie.AsString := 'ISENTO';
  end;
  if mtbBasesdes_forma_pagamento.AsString  = 'PIX' then
  begin
    if mtbBasesdes_chave.AsString.IsEmpty then
    begin
      MessageDlg('Informe a chave PIX!',mtWarning, [mbOK], 0);
      Exit;
    end;
  end;
  if (mtbBasesdes_forma_pagamento.AsString  = 'DEPÓSITO/TRANSFERÊNCIA') or (mtbBasesdes_forma_pagamento.AsString  = 'TED/DOC') then
  begin
    if mtbBasescod_banco.AsString.IsEmpty then
    begin
      MessageDlg('Informe o banco!',mtWarning, [mbOK], 0);
      Exit;
    end;
    if mtbBasescod_agencia.AsString.IsEmpty then
    begin
      MessageDlg('Informe a agência bancária!',mtWarning, [mbOK], 0);
      Exit;
    end;
    if mtbBasesnum_conta.AsString.IsEmpty then
    begin
      MessageDlg('Informe o número da conta!',mtWarning, [mbOK], 0);
      Exit;
    end;
  end;
  FUtil.Free;
  Result := True;
end;

end.
