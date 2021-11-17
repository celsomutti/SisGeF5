unit View.ListaCEPs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutControlAdapters, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, System.Actions, Vcl.ActnList;

type
  Tview_ListaCEPs = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    gridCEPDBTableView1: TcxGridDBTableView;
    gridCEPLevel1: TcxGridLevel;
    gridCEP: TcxGrid;
    dxLayoutItem1: TdxLayoutItem;
    dsCEP: TDataSource;
    gridCEPDBTableView1cep: TcxGridDBColumn;
    gridCEPDBTableView1logradouro: TcxGridDBColumn;
    gridCEPDBTableView1complemento: TcxGridDBColumn;
    gridCEPDBTableView1bairro: TcxGridDBColumn;
    gridCEPDBTableView1localidade: TcxGridDBColumn;
    gridCEPDBTableView1uf: TcxGridDBColumn;
    gridCEPDBTableView1ibge: TcxGridDBColumn;
    gridCEPDBTableView1gia: TcxGridDBColumn;
    gridCEPDBTableView1ddd: TcxGridDBColumn;
    gridCEPDBTableView1siafi: TcxGridDBColumn;
    dxLayoutGroup2: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    actionListCEP: TActionList;
    actionSelecionarCEP: TAction;
    actionCancelar: TAction;
    procedure actionSelecionarCEPExecute(Sender: TObject);
    procedure actionCancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  view_ListaCEPs: Tview_ListaCEPs;

implementation

{$R *.dfm}

uses Data.SisGeF;


procedure Tview_ListaCEPs.actionCancelarExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tview_ListaCEPs.actionSelecionarCEPExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
