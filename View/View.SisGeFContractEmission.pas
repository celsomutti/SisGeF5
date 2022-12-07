unit View.SisGeFContractEmission;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxGroupBox,
  cxRadioGroup, Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Common.Utils,
  Global.Parametros, System.Actions, Vcl.ActnList, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  Tview_SisGeFContractEmission = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    radioGroup: TcxRadioGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dateContrato: TcxDateEdit;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    ationList: TActionList;
    actionEmitir: TAction;
    actionCancelar: TAction;
    cxButton1: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    procedure actionEmitirExecute(Sender: TObject);
    procedure actionCancelarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  view_SisGeFContractEmission: Tview_SisGeFContractEmission;

implementation

{$R *.dfm}

uses Data.SisGeF;

procedure Tview_SisGeFContractEmission.actionCancelarExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tview_SisGeFContractEmission.actionEmitirExecute(Sender: TObject);
begin
  if dateContrato.Text = '' then
  begin
    MessageDlg('Informe a data do início da vingência do contrato!', mtWarning, [mbCancel], 0);
    Exit;
  end;
  ModalResult := mrOk;
end;

procedure Tview_SisGeFContractEmission.FormShow(Sender: TObject);
begin
  dateContrato.Date := Now;
end;

end.
