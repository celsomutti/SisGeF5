unit View.ImportacaoBaixasEntregas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, dxLayoutControlAdapters, Vcl.Menus, cxButtons, cxTextEdit, cxMaskEdit,
  cxButtonEdit, Vcl.WinXPanels, cxGroupBox;

type
  Tview_ImportacaoBaixasEntregas = class(TForm)
    layoutControlPadraoGroup_Root: TdxLayoutGroup;
    layoutControlPadrao: TdxLayoutControl;
    labelTitle: TcxLabel;
    layoutItemTitle: TdxLayoutItem;
    openDialog: TOpenDialog;
    actionListImportacao: TActionList;
    actionImportar: TAction;
    buttonImport: TcxButton;
    layoutItemButtonImport: TdxLayoutItem;
    buttonEditFile: TcxButtonEdit;
    layoutItemButtonEditFile: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    actionOpenFile: TAction;
    Shape1: TShape;
    groupBoxDisplayTotal: TcxGroupBox;
    layoutItemGroupBoxDisplayTotal: TdxLayoutItem;
    labelDisplayTotal: TcxLabel;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  view_ImportacaoBaixasEntregas: Tview_ImportacaoBaixasEntregas;

implementation

{$R *.dfm}

uses Data.SisGeF, Common.ENum, Global.Parametros;

procedure Tview_ImportacaoBaixasEntregas.FormActivate(Sender: TObject);
begin
  labelTitle.Caption := Self.Caption;
end;

end.
