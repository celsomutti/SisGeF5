unit View.CadastroEntregadores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, Common.ENum, Common.Utils, Global.Parametros, cxContainer,
  cxEdit, dxLayoutcxEditAdapters, cxLabel, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxDBLookupComboBox, cxSpinEdit,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxCurrencyEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, Control.VerbasExpressas,
  Control.TiposVerbasExpressas, System.Actions, Vcl.ActnList, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxCheckBox, Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, Control.EntregadoresExpressas, Control.Bases, Control.Cadastro, cxDBEdit;

type
  Tview_CadastroEntregadores = class(TForm)
    layoutControlPadraoGroup_Root: TdxLayoutGroup;
    layoutControlPadrao: TdxLayoutControl;
    labelTitle: TcxLabel;
    layoutItemLabelTitle: TdxLayoutItem;
    memTableEntregadores: TFDMemTable;
    memTableEntregadorescod_cadastro: TIntegerField;
    memTableEntregadorescod_entregador: TIntegerField;
    memTableEntregadoresnom_fantasia: TStringField;
    memTableEntregadorescod_agente: TIntegerField;
    memTableEntregadoresdat_codigo: TDateField;
    memTableEntregadoresdes_chave: TStringField;
    memTableEntregadorescod_grupo: TIntegerField;
    memTableEntregadoresval_verba: TFloatField;
    memTableEntregadoresnom_executante: TStringField;
    memTableEntregadoresdom_ativo: TIntegerField;
    memTableEntregadoresdat_manutencao: TDateTimeField;
    memTableEntregadorescod_tabela: TIntegerField;
    dsEntregadores: TDataSource;
    mtbTipos: TFDMemTable;
    dsTipos: TDataSource;
    layoutControlCadastroGroup_Root: TdxLayoutGroup;
    layoutControlCadastro: TdxLayoutControl;
    layoutItemCadastro: TdxLayoutItem;
    buttonEditPessoa: TcxButtonEdit;
    layoutItemCodigoCadastro: TdxLayoutItem;
    textEditNomePessoa: TcxTextEdit;
    layoutItemNomePessoa: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    maskEditCodigo: TcxMaskEdit;
    layoutItemCodigo: TdxLayoutItem;
    textEditNomeFantasia: TcxTextEdit;
    layoutItemNomeFantasia: TdxLayoutItem;
    buttonEditCodigoAgente: TcxButtonEdit;
    layoutItemCodigoAgente: TdxLayoutItem;
    textEditNomeAgente: TcxTextEdit;
    layoutItemNomeAgente: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    textEditCodigoERP: TcxTextEdit;
    layoutItemCodigoERP: TdxLayoutItem;
    currencyEditTicketMedio: TcxCurrencyEdit;
    layoutItemTicketMedio: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    memTableFaixas: TFDMemTable;
    memTableFaixascod_faixa: TIntegerField;
    memTableFaixasdes_faixa: TStringField;
    dsFaixas: TDataSource;
    layoutControlFooterGroup_Root: TdxLayoutGroup;
    layoutControlFooter: TdxLayoutControl;
    layoutItemFooter: TdxLayoutItem;
    actionListEntregadores: TActionList;
    actionNovo: TAction;
    actionGravar: TAction;
    actionLocalizar: TAction;
    actionCancelar: TAction;
    actionFechar: TAction;
    buttonNovo: TcxButton;
    layoutItemButtonNovo: TdxLayoutItem;
    buttonLocalizar: TcxButton;
    layoutItemButtonLocalizar: TdxLayoutItem;
    buttonCancelar: TcxButton;
    layoutItemButtonCancelar: TdxLayoutItem;
    buttonGravar: TcxButton;
    layoutItemButtonGravar: TdxLayoutItem;
    checkBoxAtivo: TcxCheckBox;
    layoutItemCheckBoxAtivo: TdxLayoutItem;
    buttonFechar: TcxButton;
    layoutItemButtonFechar: TdxLayoutItem;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    LinkPropertyToFieldText: TLinkPropertyToField;
    LinkPropertyToFieldEditValue2: TLinkPropertyToField;
    LinkPropertyToFieldValue: TLinkPropertyToField;
    LinkPropertyToFieldText4: TLinkPropertyToField;
    actionLocalizarAgentes: TAction;
    actionLocalizarPessoas: TAction;
    mtbTiposcod_tipo: TIntegerField;
    mtbTiposdes_tipo: TStringField;
    mtbTiposdes_colunas: TStringField;
    buttonEditCodigoTabela: TcxButtonEdit;
    layoutItemButtonEditCodigoTabela: TdxLayoutItem;
    textEditDescricaoTabela: TcxTextEdit;
    layoutItemTextEditDescricaoTabela: TdxLayoutItem;
    buttonEditCodigoFaixa: TcxButtonEdit;
    layoutItemButtonEditCodigoFaixa: TdxLayoutItem;
    textEditDescricaoFaixa: TcxTextEdit;
    layoutItemTextEditDescricaoFaixa: TdxLayoutItem;
    LinkPropertyToFieldEditValue: TLinkPropertyToField;
    LinkPropertyToFieldEditValue3: TLinkPropertyToField;
    LinkPropertyToFieldEditValue4: TLinkPropertyToField;
    LinkPropertyToFieldEditValue5: TLinkPropertyToField;
    comboBoxCliente: TcxComboBox;
    layoutItemComboBoxCliente: TdxLayoutItem;
    memTableEntregadorescod_cliente: TIntegerField;
    LinkPropertyToFieldItemIndex: TLinkPropertyToField;
    actionPesquisarTabelas: TAction;
    procedure FormShow(Sender: TObject);
    procedure actionFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionLocalizarAgentesExecute(Sender: TObject);
    procedure actionLocalizarPessoasExecute(Sender: TObject);
    procedure actionNovoExecute(Sender: TObject);
    procedure buttonEditCodigoAgentePropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure buttonEditPessoaPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure lookupComboBoxTabelaPropertiesChange(Sender: TObject);
    procedure actionPesquisarTabelasExecute(Sender: TObject);
  private
    { Private declarations }
    procedure PopulaTabelas;
    procedure PopulaFaixas(iTabela: integer);
    procedure PesquisaAgente;
    procedure PesquisaPessoas;
    procedure PesquisaTabelas;
    procedure PesquisaEntregadores;
    function RetornaNomeAgente(iCodigo: integer): String;
    function RetornaNomePessoa(iCodigo: integer): String;
    procedure Modo;
  public
    { Public declarations }
  end;

var
  view_CadastroEntregadores: Tview_CadastroEntregadores;
  FAcao: TAcao;
implementation

{$R *.dfm}

uses Data.SisGeF, View.PesquisarPessoas;

procedure Tview_CadastroEntregadores.actionFecharExecute(Sender: TObject);
begin
  FAcao := tacIndefinido;
  if mtbTipos.Active then mtbTipos.Close;
  if memTableFaixas.Active then memTableFaixas.Close;
  if memTableEntregadores.Active then memTableEntregadores.Close;
  Close;
end;

procedure Tview_CadastroEntregadores.actionLocalizarAgentesExecute(Sender: TObject);
begin
   PesquisaAgente;
end;

procedure Tview_CadastroEntregadores.actionLocalizarPessoasExecute(Sender: TObject);
begin
  PesquisaPessoas;
end;

procedure Tview_CadastroEntregadores.actionNovoExecute(Sender: TObject);
begin
  FAcao := tacIncluir;
  memTableEntregadores.Insert;
end;

procedure Tview_CadastroEntregadores.actionPesquisarTabelasExecute(Sender: TObject);
begin
  PesquisaTabelas;
end;

procedure Tview_CadastroEntregadores.buttonEditCodigoAgentePropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  if (Facao =  tacIncluir) or (FAcao = tacAlterar) then
  begin
    textEditNomeAgente.Text := RetornaNomeAgente(StrToIntDef(buttonEditCodigoAgente.Text,0));
  end;
end;

procedure Tview_CadastroEntregadores.buttonEditPessoaPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  if (Facao =  tacIncluir) or (FAcao = tacAlterar) then
  begin
    textEditNomePessoa.Text := RetornaNomeAgente(StrToIntDef(buttonEditPessoa.Text,0));
  end;
end;

procedure Tview_CadastroEntregadores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if memTableEntregadores.Active then memTableEntregadores.Close;
  if memTableFaixas.Active then memTableFaixas.Close;
  if mtbTipos.Active then mtbTipos.Close;
  Action := caFree;
  view_CadastroEntregadores := nil;
end;

procedure Tview_CadastroEntregadores.FormShow(Sender: TObject);
begin
  labelTitle.Caption := Self.Caption;
  if memTableEntregadores.Active then memTableEntregadores.Close;
  memTableEntregadores.Open;
  PopulaTabelas;
  FAcao := tacIndefinido;
  Modo;
end;

procedure Tview_CadastroEntregadores.lookupComboBoxTabelaPropertiesChange(Sender: TObject);
begin
//  if (Facao =  tacIncluir) or (FAcao = tacAlterar) then
//  begin
//    PopulaFaixas(StrToIntDef(lookupComboBoxTabela.EditValue, 0));
//  end;
end;

procedure Tview_CadastroEntregadores.Modo;
begin
  if FAcao = tacIndefinido then
  begin
    actionNovo.Enabled := True;
    actionGravar.Enabled := True;
    actionLocalizar.Enabled := True;
    actionCancelar.Enabled := False;
  end
  else if FAcao = tacIncluir then
  begin
    actionNovo.Enabled := False;
    actionGravar.Enabled := True;
    actionLocalizar.Enabled := False;
    actionCancelar.Enabled := True;
  end
  else if FAcao = tacAlterar then
  begin
    actionNovo.Enabled := False;
    actionGravar.Enabled := True;
    actionLocalizar.Enabled := False;
    actionCancelar.Enabled := True;
  end;

end;

procedure Tview_CadastroEntregadores.PesquisaAgente;
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
    sSQL := 'select COD_AGENTE as "Código", DES_RAZAO_SOCIAL as Nome, NOM_FANTASIA as Alias, NUM_CNPJ as "CNPJ / CPF" ' +
            'from tbagentes ';
    sWhere := 'where COD_AGENTE like paraN or DES_RAZAO_SOCIAL like "%param%" or NOM_FANTASIA like "%param%" or ' +
              'NUM_CNPJ like "%param%"';
    View_PesquisarPessoas.sSQL := sSQL;
    View_PesquisarPessoas.sWhere := sWhere;
    View_PesquisarPessoas.Caption := 'Pesquisa de Agentes';
    if View_PesquisarPessoas.ShowModal = mrOK then
    begin
      buttonEditCodigoAgente.EditValue := View_PesquisarPessoas.qryPesquisa.Fields[1].AsString;
      textEditNomeAgente.Text := View_PesquisarPessoas.qryPesquisa.Fields[2].AsString;
    end;
  finally
    View_PesquisarPessoas.qryPesquisa.Close;
    View_PesquisarPessoas.tvPesquisa.ClearItems;
  end;
end;

procedure Tview_CadastroEntregadores.PesquisaEntregadores;
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
    sSQL := 'select COD_ENTREGADOR as "Código", NOM_FANTASIA as Nome, COD_AGENTE AS Agente, COD_CADASTRO AS Cadastro ' +
            'from tbcodigosentregadores ';
    sWhere := 'where COD_ENTREGADOR like paraN or NOM_FANTASIA like "%param%" or COD_AGENTE like paraN or ' +
              'COD_CADASTRO like paraN or DES_CHAVE like "%param%"';
    View_PesquisarPessoas.sSQL := sSQL;
    View_PesquisarPessoas.sWhere := sWhere;
    View_PesquisarPessoas.Caption := 'Localizar Entregadores';
    if View_PesquisarPessoas.ShowModal = mrOK then
    begin
      maskEditCodigo.EditValue := View_PesquisarPessoas.qryPesquisa.Fields[1].AsString;
      textEditNomeFantasia.Text := View_PesquisarPessoas.qryPesquisa.Fields[2].AsString;
      buttonEditPessoa.EditValue := View_PesquisarPessoas.qryPesquisa.Fields[4].AsString;
      buttonEditCodigoAgente.EditValue := View_PesquisarPessoas.qryPesquisa.Fields[3].AsString;
      RetornaNomeAgente(View_PesquisarPessoas.qryPesquisa.Fields[3].AsInteger);
      RetornaNomePessoa(View_PesquisarPessoas.qryPesquisa.Fields[4].AsInteger);
    end;
  finally
    View_PesquisarPessoas.qryPesquisa.Close;
    View_PesquisarPessoas.tvPesquisa.ClearItems;
  end;
end;

procedure Tview_CadastroEntregadores.PesquisaPessoas;
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
    View_PesquisarPessoas.Caption := 'Pesquisa de Pessoas';
    if View_PesquisarPessoas.ShowModal = mrOK then
    begin
      buttonEditPessoa.EditValue := View_PesquisarPessoas.qryPesquisa.Fields[1].AsString;
      textEditNomePessoa.Text := View_PesquisarPessoas.qryPesquisa.Fields[2].AsString;
    end;
  finally
    View_PesquisarPessoas.qryPesquisa.Close;
    View_PesquisarPessoas.tvPesquisa.ClearItems;
  end;
end;

procedure Tview_CadastroEntregadores.PesquisaTabelas;
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
    sSQL := 'select cod_tipo as "Código", des_tipo as "Descrição" ' +
            'from expressas_tipos_verbas ';
    sWhere := 'where cod_tipo like paraN or des_tipo like "%param%"';

    View_PesquisarPessoas.sSQL := sSQL;
    View_PesquisarPessoas.sWhere := sWhere;
    View_PesquisarPessoas.Caption := 'Pesquisa de Tabelas';
    if View_PesquisarPessoas.ShowModal = mrOK then
    begin
      buttonEditCodigoTabela.EditValue := View_PesquisarPessoas.qryPesquisa.Fields[1].AsString;
      textEditDescricaoTabela.Text := View_PesquisarPessoas.qryPesquisa.Fields[2].AsString;
    end;
  finally
    View_PesquisarPessoas.qryPesquisa.Close;
    View_PesquisarPessoas.tvPesquisa.ClearItems;
  end;
end;

procedure Tview_CadastroEntregadores.PopulaFaixas(iTabela: integer);
var
  verba: TVerbasExpressasControl;
begin
  try
    verba := TVerbasExpressasControl.Create;
    if memTableFaixas.Active then
    begin
      memTableFaixas.Close;
    end;
    if not verba.RetornaListaSimples(iTabela, memTableFaixas) then
    begin
      Application.MessageBox('Faixas não cadastradas para essa tabela!', 'Atenção', MB_ICONWARNING + MB_OK);
    end
    else
    begin
      memTableFaixas.Insert;
      memTableFaixascod_faixa.AsInteger := 0;
      memTableFaixasdes_faixa.AsString := 'NENHUMA';
      memTableFaixas.Post;
    end;
  finally
    verba.Free;
  end;
end;

procedure Tview_CadastroEntregadores.PopulaTabelas;
var
  tipo: TTiposVerbasExpressasControl;
begin
  try
    tipo := TTiposVerbasExpressasControl.Create;
    if mtbTipos.Active then
    begin
      mtbTipos.Close;
    end;
    if not tipo.RetornaListaSimples(mtbTipos) then
    begin
      Application.MessageBox('Não existem tabelas cadastradas!', 'Atenção', MB_ICONWARNING + MB_OK);
    end
    else
    begin
      mtbTipos.Insert;
      mtbTiposcod_tipo.AsInteger := 0;
      mtbTiposdes_tipo.AsString := 'NENHUMA';
      mtbTiposdes_colunas.AsString := '';
      mtbTipos.Post;
    end;

  finally
    tipo.Free;
  end;
end;

function Tview_CadastroEntregadores.RetornaNomeAgente(iCodigo: integer): String;
var
  base : TBasesControl;
  sRetorno: String;
begin
  try
    Result := '';
    sRetorno := '';
    base := TBasesControl.Create;
    if icodigo <> 0 then
    begin
      sRetorno := base.GetField('NOM_FANTASIA', 'COD_AGENTE', iCodigo.ToString)
    end;
    if sRetorno.IsEmpty then
    begin
      sRetorno := 'NONE';
    end;
    Result := sRetorno;
  finally
    base.free;
  end;
end;

function Tview_CadastroEntregadores.RetornaNomePessoa(iCodigo: integer): String;
var
  cadastro : TCadastroControl;
  sRetorno: String;
begin
  try
    Result := '';
    sRetorno := '';
    cadastro := TCadastroControl.Create;
    if icodigo <> 0 then
    begin
      sRetorno := cadastro.GetField('DES_RAZAO_SOCIAL', 'COD_CADASTRO', iCodigo.ToString)
    end;
    if sRetorno.IsEmpty then
    begin
      sRetorno := 'NONE';
    end;
    Result := sRetorno;
  finally
    cadastro.free;
  end;
end;

end.
