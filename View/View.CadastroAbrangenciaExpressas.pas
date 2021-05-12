unit View.CadastroAbrangenciaExpressas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  cxFilterControl, cxDBFilterControl, System.Actions, Vcl.ActnList, dxActivityIndicator, cxProgressBar, dxLayoutControlAdapters,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxStyles, cxCustomData, Data.DB, cxDBData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, cxGridCustomView, cxGridCustomTableView,
  cxGridCustomLayoutView, cxGridLayoutView, cxGridDBLayoutView, cxGridLevel, cxGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxGridViewLayoutContainer, cxGridTableView, cxGridDBTableView;

type
  Tview_CadastroAbrangenciaExpressas = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    labelTitle: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    cxDBFilterControl1: TcxDBFilterControl;
    dxLayoutItem2: TdxLayoutItem;
    actionListAbrangencia: TActionList;
    actionIncluir: TAction;
    actionEditar: TAction;
    actionExcluir: TAction;
    actionGravar: TAction;
    actionExportar: TAction;
    actionFiltrar: TAction;
    actionFechar: TAction;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    progresso: TcxProgressBar;
    dxLayoutItem3: TdxLayoutItem;
    indicador: TdxActivityIndicator;
    dxLayoutItem4: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    actionLimpar: TAction;
    actionFiltroAvancado: TAction;
    actionLocalizar: TAction;
    actionCancelarFiltro: TAction;
    cxButton3: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    PopupMenu: TPopupMenu;
    Incluir1: TMenuItem;
    Editar1: TMenuItem;
    Excluir1: TMenuItem;
    Exportar1: TMenuItem;
    gridAbrangenciaLevel1: TcxGridLevel;
    gridAbrangencia: TcxGrid;
    dxLayoutItem8: TdxLayoutItem;
    dsAbrangencia: TDataSource;
    memTableAgrangencia: TFDMemTable;
    memTableAgrangenciaid_registro: TIntegerField;
    memTableAgrangencianum_cep: TStringField;
    memTableAgrangenciades_prazo: TStringField;
    memTableAgrangenciadom_zona: TStringField;
    memTableAgrangenciacod_tipo: TIntegerField;
    memTableAgrangenciades_logradouro: TStringField;
    memTableAgrangenciades_bairro: TStringField;
    memTableAgrangenciacod_cliente: TIntegerField;
    gridAbrangenciaDBTableView1: TcxGridDBTableView;
    gridAbrangenciaDBTableView1id_registro: TcxGridDBColumn;
    gridAbrangenciaDBTableView1num_cep: TcxGridDBColumn;
    gridAbrangenciaDBTableView1des_prazo: TcxGridDBColumn;
    gridAbrangenciaDBTableView1dom_zona: TcxGridDBColumn;
    gridAbrangenciaDBTableView1cod_tipo: TcxGridDBColumn;
    gridAbrangenciaDBTableView1des_logradouro: TcxGridDBColumn;
    gridAbrangenciaDBTableView1des_bairro: TcxGridDBColumn;
    gridAbrangenciaDBTableView1cod_cliente: TcxGridDBColumn;
    procedure actionFecharExecute(Sender: TObject);
  private
    { Private declarations }
    procedure StartFormn;
  public
    { Public declarations }
  end;

var
  view_CadastroAbrangenciaExpressas: Tview_CadastroAbrangenciaExpressas;

implementation

{$R *.dfm}

uses Data.SisGeF;

{ Tview_CadastroAbrangenciaExpressas }

procedure Tview_CadastroAbrangenciaExpressas.actionFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_CadastroAbrangenciaExpressas.StartFormn;
begin
  labelTitle.Caption := Self.Caption;
end;

end.
