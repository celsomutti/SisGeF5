unit View.CadastroEntregadoresExpressas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxCheckBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.Components, Data.Bind.DBScope, dxBar, dxBarDBNav, System.Actions, Vcl.ActnList, cxBarEditItem, FireDAC.Stan.StorageBin;

type
  Tview_CadastroEntregadoresExpressas = class(TForm)
    layoutControlPadraoGroup_Root: TdxLayoutGroup;
    layoutControlPadrao: TdxLayoutControl;
    maskEditID: TcxMaskEdit;
    layoutItemID: TdxLayoutItem;
    maskEditCodigo: TcxMaskEdit;
    layoutItemCodigo: TdxLayoutItem;
    textEditNomeEntregador: TcxTextEdit;
    layoutItemNomeEntregador: TdxLayoutItem;
    textEditNomePessoa: TcxTextEdit;
    layoutItemNomePessoa: TdxLayoutItem;
    buttonEditCodigoPessoa: TcxButtonEdit;
    layoutItemCodigoPessoa: TdxLayoutItem;
    buttonEditCodigoBase: TcxButtonEdit;
    layoutItemCodigoBase: TdxLayoutItem;
    textEditNomeBase: TcxTextEdit;
    layoutItemNomeBase: TdxLayoutItem;
    textEditCodigoERP: TcxTextEdit;
    layoutItemCodigoERP: TdxLayoutItem;
    lookupComboBoxCliente: TcxLookupComboBox;
    layoutItemClientes: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    buttonEditCodigoTabela: TcxButtonEdit;
    layoutItemCodigoTabela: TdxLayoutItem;
    textEditDescricaoTabela: TcxTextEdit;
    layoutItemDescricaoTabela: TdxLayoutItem;
    comboBoxFaixa: TcxComboBox;
    layoutItemFaixa: TdxLayoutItem;
    currencyEditVerbaFixa: TcxCurrencyEdit;
    layoutItemVerbaFixa: TdxLayoutItem;
    layoutGroupInfo: TdxLayoutGroup;
    dateEditVigencia: TcxDateEdit;
    layoutItemDataVigencia: TdxLayoutItem;
    textEditNomeManutencao: TcxTextEdit;
    layoutItemNomeManutencao: TdxLayoutItem;
    dateEditDataManutencao: TcxDateEdit;
    layoutItemDataManutencao: TdxLayoutItem;
    barManager: TdxBarManager;
    barManagerBar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    actionLisCadastro: TActionList;
    actionNovo: TAction;
    actionEditar: TAction;
    actionLocalizar: TAction;
    actionCancelar: TAction;
    dxBarLargeButton5: TdxBarLargeButton;
    actionGravar: TAction;
    dxBarLargeButton6: TdxBarLargeButton;
    actionFechar: TAction;
    dxBarLargeButton7: TdxBarLargeButton;
    dsClientes: TDataSource;
    cxBarEditItem1: TcxBarEditItem;
    dxBarLargeButton8: TdxBarLargeButton;
    cxBarEditItem2: TcxBarEditItem;
    checkBoxAtivo: TcxCheckBox;
    dxLayoutItem1: TdxLayoutItem;
    BindSourceDB1: TBindSourceDB;
    fdEntregadores: TFDQuery;
    fdEntregadoresid_entregador: TFDAutoIncField;
    fdEntregadoresCOD_CADASTRO: TIntegerField;
    fdEntregadoresCOD_ENTREGADOR: TIntegerField;
    fdEntregadoresNOM_FANTASIA: TStringField;
    fdEntregadoresCOD_AGENTE: TIntegerField;
    fdEntregadoresDAT_CODIGO: TDateTimeField;
    fdEntregadoresDES_CHAVE: TStringField;
    fdEntregadoresCOD_GRUPO: TIntegerField;
    fdEntregadoresVAL_VERBA: TFloatField;
    fdEntregadoresNOM_EXECUTANTE: TStringField;
    fdEntregadoresDOM_ATIVO: TIntegerField;
    fdEntregadoresDAT_MANUTENCAO: TSQLTimeStampField;
    fdEntregadoresCOD_TABELA: TIntegerField;
    fdEntregadoresCOD_CLIENTE: TIntegerField;
    BindingsList1: TBindingsList;
    LinkPropertyToFieldEditValue: TLinkPropertyToField;
    LinkPropertyToFieldEditValue2: TLinkPropertyToField;
    LinkPropertyToFieldText: TLinkPropertyToField;
    LinkPropertyToFieldDate: TLinkPropertyToField;
    LinkPropertyToFieldText2: TLinkPropertyToField;
    LinkPropertyToFieldEditValue3: TLinkPropertyToField;
    LinkPropertyToFieldEditValue4: TLinkPropertyToField;
    LinkPropertyToFieldEditValue5: TLinkPropertyToField;
    LinkPropertyToFieldValue: TLinkPropertyToField;
    LinkPropertyToFieldItemIndex: TLinkPropertyToField;
    LinkPropertyToFieldText3: TLinkPropertyToField;
    LinkPropertyToFieldEditValue7: TLinkPropertyToField;
    LinkPropertyToFieldDate2: TLinkPropertyToField;
    fdMemTableEntregadores: TFDMemTable;
    actionLocalizarBases: TAction;
    fdMemTableEntregadoresid_entregador: TFDAutoIncField;
    fdMemTableEntregadoresCOD_CADASTRO: TIntegerField;
    fdMemTableEntregadoresCOD_ENTREGADOR: TIntegerField;
    fdMemTableEntregadoresNOM_FANTASIA: TStringField;
    fdMemTableEntregadoresCOD_AGENTE: TIntegerField;
    fdMemTableEntregadoresDAT_CODIGO: TDateTimeField;
    fdMemTableEntregadoresDES_CHAVE: TStringField;
    fdMemTableEntregadoresCOD_GRUPO: TIntegerField;
    fdMemTableEntregadoresVAL_VERBA: TFloatField;
    fdMemTableEntregadoresNOM_EXECUTANTE: TStringField;
    fdMemTableEntregadoresDOM_ATIVO: TIntegerField;
    fdMemTableEntregadoresDAT_MANUTENCAO: TSQLTimeStampField;
    fdMemTableEntregadoresCOD_TABELA: TIntegerField;
    fdMemTableEntregadoresCOD_CLIENTE: TIntegerField;
    LinkPropertyToFieldEditValue6: TLinkPropertyToField;
    fdBase: TFDQuery;
    fdPessoas: TFDQuery;
    actionLocalizarPessoas: TAction;
    fdVerbas: TFDQuery;
    fdVerbasid_verba: TIntegerField;
    fdVerbascod_cliente: TIntegerField;
    fdVerbascod_tipo: TIntegerField;
    fdVerbasid_grupo: TIntegerField;
    fdVerbasdat_vigencia: TDateField;
    fdVerbasval_verba: TSingleField;
    fdVerbasval_performance: TSingleField;
    fdVerbasnum_cep_inicial: TStringField;
    fdVerbasnum_cep_final: TStringField;
    fdVerbasqtd_peso_inicial: TSingleField;
    fdVerbasqtd_peso_final: TSingleField;
    fdVerbascod_roteiro: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionNovoExecute(Sender: TObject);
    procedure actionEditarExecute(Sender: TObject);
    procedure actionLocalizarExecute(Sender: TObject);
    procedure actionFecharExecute(Sender: TObject);
    procedure actionCancelarExecute(Sender: TObject);
    procedure actionGravarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actionLocalizarBasesExecute(Sender: TObject);
    procedure buttonEditCodigoBasePropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure actionLocalizarPessoasExecute(Sender: TObject);
    procedure buttonEditCodigoPessoaPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure StartForm;
    procedure PesquisaEntregadores;
    procedure PesquisaBases;
    procedure PesquisaPessoas;
    procedure PesquisaTabelas;
    procedure Modo;
    function RetornaNomeAgente(iCodigo: Integer): String;
    function RetornaNomePessoa(iCodigo: Integer): String;
    function RetornaFaixaXTabela(iTabela, iFaixa: integer): Boolean;
    function ValidaDados(): Boolean;
  end;

var
  view_CadastroEntregadoresExpressas: Tview_CadastroEntregadoresExpressas;

implementation

{$R *.dfm}

uses Data.SisGeF, View.PesquisaEntregadoresExpressas, View.PesquisaBasesExpressas, View.PesquisaPessoasCRM, View.PesquisarGeral,
  Control.EntregadoresExpressas, Control.TiposVerbasExpressas, Control.VerbasExpressas;

{ Tview_CadastroEntregadoresExpressas }

procedure Tview_CadastroEntregadoresExpressas.actionCancelarExecute(Sender: TObject);
begin
  if BindSourceDB1.DataSource.State <> dsInactive then
  begin
    BindSourceDB1.DataSet.Cancel;
  end;
  if fdMemTableEntregadores.Active then fdMemTableEntregadores.Close;
  Modo;
end;

procedure Tview_CadastroEntregadoresExpressas.actionEditarExecute(Sender: TObject);
begin
  if not fdMemTableEntregadores.Active then fdMemTableEntregadores.Open;
  BindSourceDB1.DataSet.Edit;
  Modo;
end;

procedure Tview_CadastroEntregadoresExpressas.actionFecharExecute(Sender: TObject);
begin
  Perform(WM_CLOSE, 0, 0);
  Modo;
end;

procedure Tview_CadastroEntregadoresExpressas.actionGravarExecute(Sender: TObject);
begin
  ShowMessage('Gravar!');
  Modo;
end;

procedure Tview_CadastroEntregadoresExpressas.actionLocalizarBasesExecute(Sender: TObject);
begin
  PesquisaBases;
end;

procedure Tview_CadastroEntregadoresExpressas.actionLocalizarExecute(Sender: TObject);
begin
  PesquisaEntregadores;
  Modo;
end;

procedure Tview_CadastroEntregadoresExpressas.actionLocalizarPessoasExecute(Sender: TObject);
begin
  PesquisaPessoas;
end;

procedure Tview_CadastroEntregadoresExpressas.actionNovoExecute(Sender: TObject);
begin
  if not fdMemTableEntregadores.Active then fdMemTableEntregadores.Open;
  BindSourceDB1.DataSet.Insert;
  Modo;
end;

procedure Tview_CadastroEntregadoresExpressas.buttonEditCodigoBasePropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  textEditNomeBase.Text := RetornaNomeAgente(DisplayValue);
end;

procedure Tview_CadastroEntregadoresExpressas.buttonEditCodigoPessoaPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  textEditNomePessoa.Text := RetornaNomePessoa(DisplayValue);
end;

procedure Tview_CadastroEntregadoresExpressas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fdMemTableEntregadores.Close;
  Data_Sisgef.mtbClientesEmpresa.Close;
  Action := caFree;
  view_CadastroEntregadoresExpressas := nil;
end;

procedure Tview_CadastroEntregadoresExpressas.FormShow(Sender: TObject);
begin
  StartForm;
  Modo;
end;

procedure Tview_CadastroEntregadoresExpressas.Modo;
begin
if BindSourceDB1.DataSource.State = dsInactive then
  begin
    actionNovo.Enabled := True;
    actionEditar.Enabled := False;
    actionLocalizar.Enabled := True;
    actionCancelar.Enabled := False;
    actionGravar.Enabled := False;
    maskEditCodigo.Properties.ReadOnly := True;
    textEditNomeEntregador.Properties.ReadOnly := True;
    buttonEditCodigoPessoa.Properties.ReadOnly := True;
    buttonEditCodigoBase.Properties.ReadOnly := True;
    actionLocalizarPessoas.Enabled := False;
    actionLocalizarBases.Enabled := False;
    textEditCodigoERP.Properties.ReadOnly := True;
    lookupComboBoxCliente.Properties.ReadOnly := True;
    //actionPesquisarTabelas.Enabled := False;
    buttonEditCodigoTabela.Properties.ReadOnly := True;
    comboBoxFaixa.Properties.ReadOnly := True;
    currencyEditVerbaFixa.Properties.ReadOnly := True;
    checkBoxAtivo.Properties.ReadOnly := True;
    layoutGroupInfo.Visible := False;
    textEditNomeBase.Clear;
    textEditDescricaoTabela.Clear;
    textEditNomePessoa.Clear;
  end
  else if BindSourceDB1.DataSource.State = dsInsert then
  begin
    actionNovo.Enabled := False;
    actionEditar.Enabled := False;
    actionLocalizar.Enabled := False;
    actionCancelar.Enabled := True;
    actionGravar.Enabled := True;
    maskEditCodigo.Properties.ReadOnly := False;
    textEditNomeEntregador.Properties.ReadOnly := False;
    buttonEditCodigoPessoa.Properties.ReadOnly := False;
    buttonEditCodigoBase.Properties.ReadOnly := False;
    actionLocalizarPessoas.Enabled := False;
    actionLocalizarBases.Enabled := True;
    textEditCodigoERP.Properties.ReadOnly := False;
    lookupComboBoxCliente.Properties.ReadOnly := False;
    //actionPesquisarTabelas.Enabled := False;
    buttonEditCodigoTabela.Properties.ReadOnly := False;
    comboBoxFaixa.Properties.ReadOnly := False;
    currencyEditVerbaFixa.Properties.ReadOnly := False;
    checkBoxAtivo.Properties.ReadOnly := False;
    layoutGroupInfo.Visible := False;
    textEditNomeBase.Clear;
    textEditDescricaoTabela.Clear;
    textEditNomePessoa.Clear;
  end
  else if BindSourceDB1.DataSource.State = dsEdit then
  begin
    actionNovo.Enabled := False;
    actionEditar.Enabled := False;
    actionLocalizar.Enabled := False;
    actionCancelar.Enabled := True;
    actionGravar.Enabled := True;
    maskEditCodigo.Properties.ReadOnly := True;
    textEditNomeEntregador.Properties.ReadOnly := False;
    buttonEditCodigoPessoa.Properties.ReadOnly := False;
    buttonEditCodigoBase.Properties.ReadOnly := False;
    actionLocalizarPessoas.Enabled := True;
    actionLocalizarBases.Enabled := True;
    textEditCodigoERP.Properties.ReadOnly := False;
    lookupComboBoxCliente.Properties.ReadOnly := False;
    //actionPesquisarTabelas.Enabled := False;
    buttonEditCodigoTabela.Properties.ReadOnly := False;
    comboBoxFaixa.Properties.ReadOnly := False;
    currencyEditVerbaFixa.Properties.ReadOnly := False;
    checkBoxAtivo.Properties.ReadOnly := False;
    layoutGroupInfo.Visible := False;
  end
  else if BindSourceDB1.DataSource.State = dsBrowse then
  begin
    actionNovo.Enabled := True;
    actionEditar.Enabled := True;
    actionLocalizar.Enabled := True;
    actionCancelar.Enabled := True;
    actionGravar.Enabled := True;
    maskEditCodigo.Properties.ReadOnly := True;
    textEditNomeEntregador.Properties.ReadOnly := True;
    buttonEditCodigoPessoa.Properties.ReadOnly := True;
    buttonEditCodigoBase.Properties.ReadOnly := True;
    actionLocalizarPessoas.Enabled := False;
    actionLocalizarBases.Enabled := False;
    textEditCodigoERP.Properties.ReadOnly := True;
    lookupComboBoxCliente.Properties.ReadOnly := True;
    //actionPesquisarTabelas.Enabled := False;
    buttonEditCodigoTabela.Properties.ReadOnly := True;
    comboBoxFaixa.Properties.ReadOnly := True;
    currencyEditVerbaFixa.Properties.ReadOnly := True;
    checkBoxAtivo.Properties.ReadOnly := True;
    layoutGroupInfo.Visible := True;
  end;
end;

procedure Tview_CadastroEntregadoresExpressas.PesquisaBases;
var
  sQuery: String;
begin
  if not Assigned(view_PesquisaBasesExpressas) then
  begin
    view_PesquisaBasesExpressas := Tview_PesquisaBasesExpressas.Create(Application);
  end;
  if view_PesquisaBasesExpressas.ShowModal = mrOK then
  begin
    buttonEditCodigoBase.EditValue := view_PesquisaBasesExpressas.iID;
    textEditNomeBase.Text := view_PesquisaBasesExpressas.sNome;
  end;
  FreeAndNil(view_PesquisaBasesExpressas);
end;

procedure Tview_CadastroEntregadoresExpressas.PesquisaEntregadores;
var
  sQuery: String;
  sSQL : String;
begin
  sSQL := '';
  sQuery := '';
  if not Assigned(view_PesquisaEntregadoresExpressas) then
  begin
    view_PesquisaEntregadoresExpressas := Tview_PesquisaEntregadoresExpressas.Create(Application);
  end;
  if view_PesquisaEntregadoresExpressas.ShowModal = mrOK then
  begin
    sSQL := fdEntregadores.SQL.Text;
    sQuery := ' where id_entregador = ' + view_PesquisaEntregadoresExpressas.iID.ToString;
    if not fdEntregadores.Active then
    begin
      fdEntregadores.Close;
    end;
    fdEntregadores.SQL.Text := sSQL + sQuery;
    fdEntregadores.Open();
    if fdMemTableEntregadores.Active then fdMemTableEntregadores.Close;
    fdMemTableEntregadores.Data := fdEntregadores.Data;
    textEditNomeBase.Text := RetornaNomeAgente(fdEntregadoresCOD_AGENTE.AsInteger);
    textEditNomePessoa.Text := RetornaNomePessoa(fdEntregadoresCOD_CADASTRO.AsInteger);
  end;
  fdEntregadores.Close;
  fdEntregadores.SQL.Text := sSQL;
  FreeAndNil(view_PesquisaEntregadoresExpressas);
end;

procedure Tview_CadastroEntregadoresExpressas.PesquisaPessoas;
var
  sQuery: String;
begin
  sQuery := '';
  if not Assigned(view_PesquisaPessoasCRM) then
  begin
    view_PesquisaPessoasCRM := Tview_PesquisaPessoasCRM.Create(Application);
  end;
  if view_PesquisaPessoasCRM.ShowModal = mrOK then
  begin
    buttonEditCodigoPessoa.EditValue := view_PesquisaPessoasCRM.iID;
    textEditNomePessoa.Text := view_PesquisaPessoasCRM.sNome;
  end;
  FreeAndNil(view_PesquisaPessoasCRM);
end;

procedure Tview_CadastroEntregadoresExpressas.PesquisaTabelas;
var
  sSQL: String;
  sWhere: String;
begin
  try
    sSQL := '';
    sWhere := '';
    if not Assigned(View_PesquisarGeral) then
    begin
      View_PesquisarGeral := TView_PesquisarGeral.Create(Application);
    end;
    View_PesquisarGeral.dxLayoutItem1.Visible := True;
    View_PesquisarGeral.dxLayoutItem2.Visible := True;
    sSQL := 'select cod_tipo as "Código", des_tipo as "Descrição" ' +
            'from expressas_tipos_verbas ';
    sWhere := 'where cod_tipo like paraN or des_tipo like "%param%"';

    View_PesquisarGeral.sSQL := sSQL;
    View_PesquisarGeral.sWhere := sWhere;
    View_PesquisarGeral.bOpen := True;
    View_PesquisarGeral.Caption := 'Pesquisa de Tabelas';
    if View_PesquisarGeral.ShowModal = mrOK then
    begin
      buttonEditCodigoTabela.EditValue := View_PesquisarGeral.qryPesquisa.Fields[1].AsString;
      textEditDescricaoTabela.Text := View_PesquisarGeral.qryPesquisa.Fields[2].AsString;
    end;
  finally
    View_PesquisarGeral.qryPesquisa.Close;
    View_PesquisarGeral.tvPesquisa.ClearItems;
    FreeAndNil(View_PesquisarGeral);
  end;end;

function Tview_CadastroEntregadoresExpressas.RetornaFaixaXTabela(iTabela, iFaixa: integer): Boolean;
var
  sSQL, sFiltro : String;
begin
  try
    Result := False;
    if fdVerbas.Active then fdVerbas.Close;
    sSQL := fdVerbas.SQL.Text;
    fdVerbas.SQL.Text := sSQL + ' where cod_tipo = ' + iTabela.ToString + ' and id_grupo = ' + iFaixa.ToString;
    fdVerbas.Open();
    if fdVerbas.IsEmpty then
    begin
      Result := False;
    end;
    Result := True;
  finally
    if fdVerbas.Active then fdVerbas.Close;
    fdVerbas.SQL.Text := sSQL;
  end;
end;

function Tview_CadastroEntregadoresExpressas.RetornaNomeAgente(iCodigo: Integer): String;
var
  sNome: String;
begin
  if fdBase.Active then fdBase.Close;
  fdBase.Filter := 'cod_agente = ' + iCodigo.ToString;
  fdBase.Filtered := True;
  fdBase.Open();
  if not fdBase.IsEmpty then
  begin
    sNome := fdBase.FieldByName('nom_fantasia').AsString;
  end
  else
  begin
    sNome := '';
  end;
  fdBase.Close;
  Result := sNome;
end;

function Tview_CadastroEntregadoresExpressas.RetornaNomePessoa(iCodigo: Integer): String;
var
  sNome: String;
begin
  if fdPessoas.Active then fdBase.Close;
  fdPessoas.Filter := 'cod_cadastro = ' + iCodigo.ToString;
  fdPessoas.Filtered := True;
  fdPessoas.Open();
  if not fdPessoas.IsEmpty then
  begin
    sNome := fdPessoas.FieldByName('des_razao_social').AsString;
  end
  else
  begin
    sNome := '';
  end;
  fdPessoas.Close;
  Result := sNome;
end;

procedure Tview_CadastroEntregadoresExpressas.StartForm;
begin
  // função
  Data_Sisgef.PopulaClientesEmpresa;
end;

function Tview_CadastroEntregadoresExpressas.ValidaDados: Boolean;
var
  entregadores: TEntregadoresExpressasControl;
  tipos: TTiposVerbasExpressasControl;
  verbas : TVerbasExpressasControl;
  aParam : array of variant;
begin
  try
    Result := False;
    entregadores := TEntregadoresExpressasControl.Create;
    tipos := TTiposVerbasExpressasControl.Create;
    verbas := TVerbasExpressasControl.Create;
    if maskEditCodigo.EditValue = 0 then
    begin
      Application.MessageBox('Informe o código do entregador!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if textEditNomeEntregador.Text = '' then
    begin
      Application.MessageBox('Informe o noe Fantasia!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if buttonEditCodigoPessoa.EditValue = 0 then
    begin
      if Application.MessageBox('Código da Pessoa não informado. Continuar?', 'Atenção', MB_YESNO + MB_ICONQUESTION) = IDNO then
      begin
        Exit;
      end;
    end;
    if buttonEditCodigoBase.EditValue = 0 then
    begin
      Application.MessageBox('Informe o código do Agente!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if textEditCodigoERP.Text = '' then
    begin
      Application.MessageBox('Informe o código ERP!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if lookupComboBoxCliente.ItemIndex = -1 then
    begin
      Application.MessageBox('Informe o código do cliente!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if BindSourceDB1.DataSource.State = dsInsert then
    begin
      if entregadores.EntregadorExiste(1,maskEditCodigo.EditValue, lookupComboBoxCliente.EditValue, '') then
      begin
        Application.MessageBox('Código de entregador já cadastrado!', 'Atenção', MB_OK + MB_ICONWARNING);
        Exit;
      end;
      if entregadores.GetField('nom_fantasia','nom_fantasia',QuotedStr(textEditNomeEntregador.Text)) <> '' then
      begin
        if Application.MessageBox('Nome fantasia já existe. Continuar com este mesmo?', 'Atenção', MB_YESNO + MB_ICONQUESTION) = IDNO then
        begin
          Exit;
        end;
      end;
      if entregadores.EntregadorExiste(2,maskEditCodigo.EditValue, 0, textEditCodigoERP.Text) then
      begin
        Application.MessageBox('Código ERP já cadastrado!', 'Atenção', MB_OK + MB_ICONWARNING);
        Exit;
      end;
    end;
    if BindSourceDB1.DataSource.State = dsEdit then
    begin
      SetLength(aParam,2);
      aParam := ['ID',StrTOIntDef(maskEditID.Text, 0)];
      if entregadores.LocalizarExato(aParam) then
      begin
        if entregadores.Entregadores.Cadastro <> buttonEditCodigoPessoa.EditValue then
        begin
          if buttonEditCodigoPessoa.EditValue <> 0 then
          begin
            if Application.MessageBox('Entregador já está vinculado a outra pessoa. Conrtinuar ?', 'Atenção', MB_YESNO + MB_ICONQUESTION) = IDNO then
            begin
              Exit;
            end;
          end;
        end;
      end;
    end;
    if buttonEditCodigoTabela.EditValue <> 0 then
    begin
      if tipos.GetField('cod_tipo','cod_tipo',VarToStr(buttonEditCodigoTabela.EditValue)) = '' then
      begin
        Application.MessageBox('Código de tabela não cadastrado!', 'Atenção', MB_OK + MB_ICONWARNING);
        Exit;
      end;
      if comboBoxFaixa.ItemIndex <> 0 then
      begin
        SetLength(aParam,2);
        aParam := ['FILTRO', 'cod_cliente = ' + VarToStr(lookupComboBoxCliente.EditValue) + ' and cod_tipo = ' +
                  buttonEditCodigoTabela.EditText + ' and id_grupo = ' + comboBoxFaixa.Text];
        if verbas.Localizar(aParam).IsEmpty then
        begin
          Application.MessageBox('Faixa de tabela inexistente!', 'Atenção', MB_OK + MB_ICONWARNING);
          Exit;
        end;
      end;
    end;
    if (buttonEditCodigoTabela.EditValue = 0) and (comboBoxFaixa.ItemIndex = 0) and (currencyEditVerbaFixa.Value = 0) then
    begin
      if Application.MessageBox('Nenhum tipo de verba foi informada. Continuar?','Atenção', MB_YESNO + MB_ICONQUESTION) = IDNO then
      begin
        Exit;
      end;
    end;
    Result := True;
  finally
    if Length(aParam) <> 0 then
    begin
      Finalize(aParam);
    end;
    entregadores.Free;
    tipos.Free;
    verbas.Free;
  end;end;

end.
