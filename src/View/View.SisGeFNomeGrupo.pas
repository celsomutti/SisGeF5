unit View.SisGeFNomeGrupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit,
  System.Actions, Vcl.ActnList, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TviewSisGeFNomeGrupo = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    txeGrupo: TcxTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    aclNomeGrupo: TActionList;
    actOK: TAction;
    actCancelar: TAction;
    cxButton1: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    procedure actOKExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  viewSisGeFNomeGrupo: TviewSisGeFNomeGrupo;

implementation

{$R *.dfm}

uses Data.SisGeF;

procedure TviewSisGeFNomeGrupo.actCancelarExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TviewSisGeFNomeGrupo.actOKExecute(Sender: TObject);
begin
  if txeGrupo.Text = '' then
  begin
    Application.MessageBox('Informe um nome de grupo!', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end
  else
  begin
    ModalResult := mrOk;
  end;
end;

end.
