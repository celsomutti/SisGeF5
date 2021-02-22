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
  Data.Bind.Components, Data.Bind.DBScope, dxBar, dxBarDBNav;

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
    checkBoxAtivo: TcxCheckBox;
    layoutItemAtivo: TdxLayoutItem;
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
    dxLayoutGroup5: TdxLayoutGroup;
    dateEditVigencia: TcxDateEdit;
    layoutItemDataVigencia: TdxLayoutItem;
    textEditNomeManutencao: TcxTextEdit;
    layoutItemNomeManutencao: TdxLayoutItem;
    dateEditDataManutencao: TcxDateEdit;
    layoutItemDataManutencao: TdxLayoutItem;
    fdEntregadores: TFDQuery;
    fdEntregadoresID_ENTREGADOR: TFDAutoIncField;
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
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkPropertyToFieldValue: TLinkPropertyToField;
    LinkPropertyToFieldEditValue: TLinkPropertyToField;
    LinkPropertyToFieldItemIndex: TLinkPropertyToField;
    LinkPropertyToFieldEditValue2: TLinkPropertyToField;
    LinkPropertyToFieldDate: TLinkPropertyToField;
    LinkPropertyToFieldText: TLinkPropertyToField;
    LinkPropertyToFieldText2: TLinkPropertyToField;
    LinkPropertyToFieldEditValue3: TLinkPropertyToField;
    LinkPropertyToFieldEditValue4: TLinkPropertyToField;
    LinkPropertyToFieldEditValue5: TLinkPropertyToField;
    LinkPropertyToFieldText3: TLinkPropertyToField;
    LinkPropertyToFieldEditValue6: TLinkPropertyToField;
    LinkPropertyToFieldEditValue7: TLinkPropertyToField;
    barManager: TdxBarManager;
    barManagerBar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    LinkPropertyToFieldDate2: TLinkPropertyToField;
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure fdEntregadoresAfterClose(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure StartForm;
    procedure PesquisaEntregadores;
  end;

var
  view_CadastroEntregadoresExpressas: Tview_CadastroEntregadoresExpressas;

implementation

{$R *.dfm}

uses Data.SisGeF, View.PesquisaEntregadoresExpressas;

{ Tview_CadastroEntregadoresExpressas }

procedure Tview_CadastroEntregadoresExpressas.dxBarLargeButton2Click(Sender: TObject);
begin
  BindSourceDB1.DataSet.Insert;
end;

procedure Tview_CadastroEntregadoresExpressas.dxBarLargeButton3Click(Sender: TObject);
begin
  BindSourceDB1.DataSet.Edit;
end;

procedure Tview_CadastroEntregadoresExpressas.dxBarLargeButton4Click(Sender: TObject);
begin
  PesquisaEntregadores;
end;

procedure Tview_CadastroEntregadoresExpressas.fdEntregadoresAfterClose(DataSet: TDataSet);
begin
  Data_Sisgef.FDConnectionMySQL.Close;
end;

procedure Tview_CadastroEntregadoresExpressas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fdEntregadores.Active then fdEntregadores.Close;
  fdEntregadores.Filter := '';
  fdEntregadores.Filtered := False;
  Action := caFree;
  view_CadastroEntregadoresExpressas := nil;
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
    if fdEntregadores.Active then fdEntregadores.Close;
    fdEntregadores.Filtered := False;
    fdEntregadores.Filter := sQuery;
    fdEntregadores.Filtered := True;
    fdEntregadores.Open();
  end;
  FreeAndNil(view_PesquisaEntregadoresExpressas);
end;

procedure Tview_CadastroEntregadoresExpressas.StartForm;
begin
  // função

end;

end.
