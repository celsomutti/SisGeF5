unit View.FiltroGenerico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxFilterControl, cxDBFilterControl, dxLayoutcxEditAdapters,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, System.Actions, Vcl.ActnList, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  Tview_FiltroGenerico = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    filtro: TcxDBFilterControl;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    actionListFiltroGenerico: TActionList;
    actionAplicarFiltro: TAction;
    actionLimparFiltro: TAction;
    actionCancelar: TAction;
    cxButton1: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    procedure actionAplicarFiltroExecute(Sender: TObject);
    procedure actionLimparFiltroExecute(Sender: TObject);
    procedure actionCancelarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sFiltro : String;
  end;

var
  view_FiltroGenerico: Tview_FiltroGenerico;

implementation

{$R *.dfm}

uses Data.SisGeF;

procedure Tview_FiltroGenerico.actionAplicarFiltroExecute(Sender: TObject);
begin
  sFiltro := filtro.FilterText;
  ModalResult := mrOk;
end;

procedure Tview_FiltroGenerico.actionCancelarExecute(Sender: TObject);
begin
  filtro.Clear;
  sFiltro := filtro.FilterText;
  ModalResult := mrCancel;
end;

procedure Tview_FiltroGenerico.actionLimparFiltroExecute(Sender: TObject);
begin
  filtro.Clear;
  sFiltro := filtro.FilterText;
end;

procedure Tview_FiltroGenerico.FormShow(Sender: TObject);
begin
 sFiltro := '';
end;

end.
