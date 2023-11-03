unit View.CadastroEnregadores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, Common.ENum, Common.Utils, Global.Parametros, cxContainer,
  cxEdit, dxLayoutcxEditAdapters, cxLabel, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxDBLookupComboBox, cxSpinEdit,
  cxTextEdit, cxMaskEdit, cxButtonEdit;

type
  Tview_TemplateCadastro = class(TForm)
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
    gridEntregadoresDBTableView1: TcxGridDBTableView;
    gridEntregadoresLevel1: TcxGridLevel;
    gridEntregadores: TcxGrid;
    layoutItemGridEntregadores: TdxLayoutItem;
    dsEntregadores: TDataSource;
    gridEntregadoresDBTableView1cod_cadastro: TcxGridDBColumn;
    gridEntregadoresDBTableView1cod_entregador: TcxGridDBColumn;
    gridEntregadoresDBTableView1nom_fantasia: TcxGridDBColumn;
    gridEntregadoresDBTableView1cod_agente: TcxGridDBColumn;
    gridEntregadoresDBTableView1dat_codigo: TcxGridDBColumn;
    gridEntregadoresDBTableView1des_chave: TcxGridDBColumn;
    gridEntregadoresDBTableView1cod_grupo: TcxGridDBColumn;
    gridEntregadoresDBTableView1val_verba: TcxGridDBColumn;
    gridEntregadoresDBTableView1nom_executante: TcxGridDBColumn;
    gridEntregadoresDBTableView1dom_ativo: TcxGridDBColumn;
    gridEntregadoresDBTableView1dat_manutencao: TcxGridDBColumn;
    gridEntregadoresDBTableView1cod_tabela: TcxGridDBColumn;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  view_TemplateCadastro: Tview_TemplateCadastro;

implementation

{$R *.dfm}

uses Data.SisGeF;

end.
