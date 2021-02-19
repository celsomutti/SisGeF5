unit View.PesquisaEntregadoresExpressas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutContainer, cxLabel, cxClasses, dxLayoutControl,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutControlAdapters, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  cxButtons, Vcl.Buttons, cxCheckBox;

type
  Tview_PesquisaEntregadoresExpressas = class(TForm)
    layoutControlHeaderGroup_Root: TdxLayoutGroup;
    layoutControlHeader: TdxLayoutControl;
    labelTitle: TcxLabel;
    layoutItemTitle: TdxLayoutItem;
    layoutControlGridGroup_Root: TdxLayoutGroup;
    layoutControlGrid: TdxLayoutControl;
    gridPesquisaDBTableView1: TcxGridDBTableView;
    gridPesquisaLevel1: TcxGridLevel;
    gridPesquisa: TcxGrid;
    layoutItemGrid: TdxLayoutItem;
    actionListPesquisa: TActionList;
    actionExpandirGrid: TAction;
    actionRetrairGrid: TAction;
    buttonExpandir: TcxButton;
    layoutItemExpandir: TdxLayoutItem;
    buttonRetrair: TcxButton;
    layoutItemRetrair: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    checkBoxBarraGrupos: TcxCheckBox;
    layoutItemBarraGrupos: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
    procedure actionExpandirGridExecute(Sender: TObject);
    procedure actionRetrairGridExecute(Sender: TObject);
    procedure checkBoxBarraGruposPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    procedure StartForm;
  public
    { Public declarations }
  end;

var
  view_PesquisaEntregadoresExpressas: Tview_PesquisaEntregadoresExpressas;

implementation

{$R *.dfm}

uses Data.SisGeF;

{ Tview_PesquisaEntregadoresExpressas }

procedure Tview_PesquisaEntregadoresExpressas.actionExpandirGridExecute(Sender: TObject);
begin
  gridPesquisaDBTableView1.ViewData.Expand(True);
end;

procedure Tview_PesquisaEntregadoresExpressas.actionRetrairGridExecute(Sender: TObject);
begin
  gridPesquisaDBTableView1.ViewData.Expand(True);
end;

procedure Tview_PesquisaEntregadoresExpressas.checkBoxBarraGruposPropertiesChange(Sender: TObject);
begin
  gridPesquisaDBTableView1.OptionsView.GroupByBox := checkBoxBarraGrupos.Checked;
end;

procedure Tview_PesquisaEntregadoresExpressas.FormShow(Sender: TObject);
begin
  StartForm;
end;

procedure Tview_PesquisaEntregadoresExpressas.StartForm;
begin
  labelTitle.Caption := Self.Caption;
  gridPesquisaDBTableView1.OptionsView.GroupByBox := checkBoxBarraGrupos.Checked;
end;

end.
