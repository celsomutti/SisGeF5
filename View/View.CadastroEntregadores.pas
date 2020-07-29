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
  Data.Bind.DBScope, Control.EntregadoresExpressas;

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
    mtbTiposcod_tipo: TIntegerField;
    mtbTiposdes_tipo: TStringField;
    mtbTiposdes_colunas: TStringField;
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
    lookupComboBoxTabela: TcxLookupComboBox;
    layoutItemTabela: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    memTableFaixas: TFDMemTable;
    memTableFaixascod_faixa: TIntegerField;
    memTableFaixasdes_faixa: TStringField;
    dsFaixas: TDataSource;
    lookupComboBoxFaixa: TcxLookupComboBox;
    layoutItemFaixa: TdxLayoutItem;
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
    LinkPropertyToFieldEditValue: TLinkPropertyToField;
    LinkPropertyToFieldText: TLinkPropertyToField;
    LinkPropertyToFieldText2: TLinkPropertyToField;
    LinkPropertyToFieldText3: TLinkPropertyToField;
    LinkPropertyToFieldEditValue2: TLinkPropertyToField;
    LinkPropertyToFieldValue: TLinkPropertyToField;
    LinkPropertyToFieldText4: TLinkPropertyToField;
    LinkPropertyToFieldEditValue3: TLinkPropertyToField;
    LinkPropertyToFieldText5: TLinkPropertyToField;
    actionLocalizarAgentes: TAction;
    procedure FormShow(Sender: TObject);
    procedure actionFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionLocalizarAgentesExecute(Sender: TObject);
  private
    { Private declarations }
    procedure PopulaTabelas;
    procedure PopulaFaixas(iTabela: integer);
    procedure PesquisaAgente;
  public
    { Public declarations }
  end;

var
  view_CadastroEntregadores: Tview_CadastroEntregadores;

implementation

{$R *.dfm}

uses Data.SisGeF, View.PesquisarPessoas;

procedure Tview_CadastroEntregadores.actionFecharExecute(Sender: TObject);
begin
   Close;
end;

procedure Tview_CadastroEntregadores.actionLocalizarAgentesExecute(Sender: TObject);
begin
   PesquisaAgente;
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
end;

procedure Tview_CadastroEntregadores.PesquisaAgente;
var
  sSQL: String;
  sWhere: String;
  entregadores: TEntregadoresExpressasControl;
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
    if View_PesquisarPessoas.ShowModal = mrOK then
    begin
      buttonEditCodigoAgente.EditValue := View_PesquisarPessoas.qryPesquisa.Fields[1].AsString;
      textEditNomeAgente.Text := View_PesquisarPessoas.qryPesquisa.Fields[2].AsString;
    end;
  finally
    View_PesquisarPessoas.qryPesquisa.Close;
    View_PesquisarPessoas.tvPesquisa.ClearItems;
    entregadores.free;
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
    if tipo.RetornaListaSimples(mtbTipos) then
    begin
      Application.MessageBox('Não existem tabelas cadastradas!', 'Atenção', MB_ICONWARNING + MB_OK);
    end;
  finally
    tipo.Free;
  end;
end;

end.
