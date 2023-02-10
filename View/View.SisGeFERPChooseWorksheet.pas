unit View.SisGeFERPChooseWorksheet;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, dxLayoutControlAdapters, Vcl.Menus, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls;

type
  TSisGeFERPChooseWorksheet = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    actionList: TActionList;
    Panel1: TPanel;
    dxLayoutItem1: TdxLayoutItem;
    cxButton1: TcxButton;
    actionWorkSheetBIMER: TAction;
    actionWorksheetOMIE: TAction;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    actionCloseForm: TAction;
    procedure actionCloseFormExecute(Sender: TObject);
    procedure actionWorkSheetBIMERExecute(Sender: TObject);
    procedure actionWorksheetOMIEExecute(Sender: TObject);
  private
    FChoosseWorkSheet: integer;
    { Private declarations }
  public
    { Public declarations }
    property ChoosseWorkSheet : integer read  FChoosseWorkSheet write FChoosseWorkSheet;
  end;

var
  SisGeFERPChooseWorksheet: TSisGeFERPChooseWorksheet;

implementation

{$R *.dfm}

uses Data.SisGeF;

procedure TSisGeFERPChooseWorksheet.actionCloseFormExecute(Sender: TObject);
begin
  FChoosseWorkSheet := 0;
  Self.ModalResult := mrCancel;
end;

procedure TSisGeFERPChooseWorksheet.actionWorkSheetBIMERExecute(Sender: TObject);
begin
  FChoosseWorkSheet := 1;
  Self.ModalResult := mrOk;

end;

procedure TSisGeFERPChooseWorksheet.actionWorksheetOMIEExecute(Sender: TObject);
begin
  FChoosseWorkSheet := 2;
  Self.ModalResult := mrOk;
end;

end.
