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
  Data.Bind.Components, Data.Bind.DBScope, dxBar, dxBarDBNav, System.Actions, Vcl.ActnList, cxBarEditItem;

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
    LinkPropertyToFieldEditValue6: TLinkPropertyToField;
    LinkPropertyToFieldItemIndex: TLinkPropertyToField;
    LinkPropertyToFieldText3: TLinkPropertyToField;
    LinkPropertyToFieldEditValue7: TLinkPropertyToField;
    LinkPropertyToFieldDate2: TLinkPropertyToField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure _fdEntregadoresAfterClose(DataSet: TDataSet);
    procedure actionNovoExecute(Sender: TObject);
    procedure actionEditarExecute(Sender: TObject);
    procedure actionLocalizarExecute(Sender: TObject);
    procedure actionFecharExecute(Sender: TObject);
    procedure actionCancelarExecute(Sender: TObject);
    procedure actionGravarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure fdEntregadoresAfterClose(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure StartForm;
    procedure PesquisaEntregadores;
    procedure Modo;
  end;

var
  view_CadastroEntregadoresExpressas: Tview_CadastroEntregadoresExpressas;

implementation

{$R *.dfm}

uses Data.SisGeF, View.PesquisaEntregadoresExpressas;

{ Tview_CadastroEntregadoresExpressas }

procedure Tview_CadastroEntregadoresExpressas.actionCancelarExecute(Sender: TObject);
begin
  if BindSourceDB1.DataSource.State <> dsInactive then
  begin
    BindSourceDB1.DataSet.Cancel;
  end;
  Modo;
end;

procedure Tview_CadastroEntregadoresExpressas.actionEditarExecute(Sender: TObject);
begin
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

procedure Tview_CadastroEntregadoresExpressas.actionLocalizarExecute(Sender: TObject);
begin
  PesquisaEntregadores;
  Modo;
end;

procedure Tview_CadastroEntregadoresExpressas.actionNovoExecute(Sender: TObject);
begin
  fdEntregadores.Open();
  BindSourceDB1.DataSet.Insert;
  Modo;
end;

procedure Tview_CadastroEntregadoresExpressas.fdEntregadoresAfterClose(DataSet: TDataSet);
begin
  Data_Sisgef.FDConnectionMySQL.Close;
end;

procedure Tview_CadastroEntregadoresExpressas._fdEntregadoresAfterClose(DataSet: TDataSet);
begin
  Data_Sisgef.FDConnectionMySQL.Close;
end;

procedure Tview_CadastroEntregadoresExpressas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Data_Sisgef.mtbBases.Close;
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
    //actionLocalizarPessoas.Enabled := False;
    //actionLocalizarAgentes.Enabled := False;
    textEditCodigoERP.Properties.ReadOnly := True;
    lookupComboBoxCliente.Properties.ReadOnly := True;
    //actionPesquisarTabelas.Enabled := False;
    buttonEditCodigoTabela.Properties.ReadOnly := True;
    comboBoxFaixa.Properties.ReadOnly := True;
    currencyEditVerbaFixa.Properties.ReadOnly := True;
    //checkBoxAtivo.Properties.ReadOnly := True;
    layoutGroupInfo.Visible := False;
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
    //actionLocalizarPessoas.Enabled := False;
    //actionLocalizarAgentes.Enabled := False;
    textEditCodigoERP.Properties.ReadOnly := False;
    lookupComboBoxCliente.Properties.ReadOnly := False;
    //actionPesquisarTabelas.Enabled := False;
    buttonEditCodigoTabela.Properties.ReadOnly := False;
    comboBoxFaixa.Properties.ReadOnly := False;
    currencyEditVerbaFixa.Properties.ReadOnly := False;
    //checkBoxAtivo.Properties.ReadOnly := False;
    layoutGroupInfo.Visible := False;
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
    //actionLocalizarPessoas.Enabled := False;
    //actionLocalizarAgentes.Enabled := False;
    textEditCodigoERP.Properties.ReadOnly := False;
    lookupComboBoxCliente.Properties.ReadOnly := False;
    //actionPesquisarTabelas.Enabled := False;
    buttonEditCodigoTabela.Properties.ReadOnly := False;
    comboBoxFaixa.Properties.ReadOnly := False;
    currencyEditVerbaFixa.Properties.ReadOnly := False;
    //checkBoxAtivo.Properties.ReadOnly := False;
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
    //actionLocalizarPessoas.Enabled := False;
    //actionLocalizarAgentes.Enabled := False;
    textEditCodigoERP.Properties.ReadOnly := True;
    lookupComboBoxCliente.Properties.ReadOnly := True;
    //actionPesquisarTabelas.Enabled := False;
    buttonEditCodigoTabela.Properties.ReadOnly := True;
    comboBoxFaixa.Properties.ReadOnly := True;
    currencyEditVerbaFixa.Properties.ReadOnly := True;
    //checkBoxAtivo.Properties.ReadOnly := True;
    layoutGroupInfo.Visible := True;
  end;
end;

procedure Tview_CadastroEntregadoresExpressas.PesquisaEntregadores;
var
  sQuery: String;
begin
  if not Assigned(view_PesquisaEntregadoresExpressas) then
  begin
    view_PesquisaEntregadoresExpressas := Tview_PesquisaEntregadoresExpressas.Create(Application);
  end;
  if view_PesquisaEntregadoresExpressas.ShowModal = mrOK then
  begin
    sQuery := 'id_entregador = ' + view_PesquisaEntregadoresExpressas.iID.ToString;
    BindSourceDB1.ResetNeeded;
    fdEntregadores.Filter := sQuery;
    fdEntregadores.Filtered := True;
    if not fdEntregadores.Active then
    begin
      fdEntregadores.Close;
    end;
    fdEntregadores.Open();
  end;
  FreeAndNil(view_PesquisaEntregadoresExpressas);
end;

procedure Tview_CadastroEntregadoresExpressas.StartForm;
begin
  // função
  Data_Sisgef.PopulaClientesEmpresa;
end;

end.
