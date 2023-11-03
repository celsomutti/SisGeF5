unit View.SisGeFConfirmPassword;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinsDefaultPainters, cxMaskEdit, cxButtonEdit, cxTextEdit, cxLabel, System.Actions, Vcl.ActnList, Vcl.Menus,
  Vcl.StdCtrls, cxButtons;

type
  Tview_SisGeFConfirmPassword = class(TForm)
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    username: TcxTextEdit;
    password: TcxButtonEdit;
    actionListConfirmPassword: TActionList;
    actionOK: TAction;
    actionCancel: TAction;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    actionViewPassword: TAction;
    procedure actionOKExecute(Sender: TObject);
    procedure actionCancelExecute(Sender: TObject);
    procedure actionViewPasswordExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function ConfirmPassword(): boolean;
    procedure StartForm;
    procedure ViewPassword;
  public
    { Public declarations }
  end;

var
  view_SisGeFConfirmPassword: Tview_SisGeFConfirmPassword;

implementation

{$R *.dfm}

uses Data.SisGeF, Global.Parametros;

procedure Tview_SisGeFConfirmPassword.actionCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tview_SisGeFConfirmPassword.actionOKExecute(Sender: TObject);
begin
  if ConfirmPassword() then
  begin
    ModalResult := mrOk;
  end
  else
  begin
    Application.MessageBox('Usuário e/ou senha incorretos!', 'Atenção', MB_OK + MB_ICONERROR);
    ModalResult := mrCancel;
  end;
end;

procedure Tview_SisGeFConfirmPassword.actionViewPasswordExecute(Sender: TObject);
begin
  ViewPassword;
end;

function Tview_SisGeFConfirmPassword.ConfirmPassword: boolean;
begin
  Result := ((password.Text = Global.Parametros.pPassword) and (username.Text = Global.Parametros.pUser_Name))
end;

procedure Tview_SisGeFConfirmPassword.FormShow(Sender: TObject);
begin
  StartForm;
end;

procedure Tview_SisGeFConfirmPassword.StartForm;
begin
  username.Text := Global.Parametros.pUser_Name;
  password.SetFocus;
end;

procedure Tview_SisGeFConfirmPassword.ViewPassword;
begin
  if password.Properties.EchoMode = eemPassword then
  begin
    password.Properties.EchoMode := eemNormal;
    password.Properties.Buttons[0].ImageIndex := 87;
  end
  else
  begin
    password.Properties.EchoMode := eemPassword;
    password.Properties.Buttons[0].ImageIndex := 88;
  end;

end;

end.
