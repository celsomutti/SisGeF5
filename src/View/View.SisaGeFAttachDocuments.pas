unit View.SisaGeFAttachDocuments;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Winapi.ShlObj, cxShellCommon, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, cxContainer, cxEdit, cxListView, cxShellListView,
  System.Actions, Vcl.ActnList, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  Tview_SisgeFAttachDocuments = class(TForm)
    Panel1: TPanel;
    cxShellListView1: TcxShellListView;
    actionListAttach: TActionList;
    actionClose: TAction;
    cxButton1: TcxButton;
    actionAttach: TAction;
    OpenDialog: TOpenDialog;
    cxButton2: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionCloseExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actionAttachExecute(Sender: TObject);
  private
    { Private declarations }
    procedure StartForm;
    procedure Attach;
  public
    { Public declarations }
    FPasta: string;
  end;

var
  view_SisgeFAttachDocuments: Tview_SisgeFAttachDocuments;

implementation

{$R *.dfm}

uses Data.SisGeF, Global.Parametros;

procedure Tview_SisgeFAttachDocuments.actionAttachExecute(Sender: TObject);
begin
  Attach;
end;

procedure Tview_SisgeFAttachDocuments.actionCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_SisgeFAttachDocuments.Attach;
var
  sOrigem : String;
  sDestino : String;
  sArquivo: String;
begin
if OpenDialog.Execute then
  begin
    sArquivo := ExtractFileName(OpenDialog.FileName);
    sOrigem := OpenDialog.FileName;
    sDestino := FPasta + '\' +sArquivo;

    if CopyFile(PChar(sOrigem), PChar(sDestino), False) then
    begin
      Application.MessageBox(PChar('Arquivo ' + sArquivo + ' copiado com sucesso.'), 'Arquivo Copiado', MB_OK + MB_ICONINFORMATION);
    end
    else
    begin
      Application.MessageBox(PChar('Erro ao copiar o arquivo ' + sArquivo + ' !'), 'Erro ao Copiar', MB_OK + MB_ICONERROR);
    end;
  end;
end;

procedure Tview_SisgeFAttachDocuments.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  view_SisgeFAttachDocuments := nil;
end;

procedure Tview_SisgeFAttachDocuments.FormShow(Sender: TObject);
begin
  StartForm;
end;

procedure Tview_SisgeFAttachDocuments.StartForm;
begin
  if not DirectoryExists(FPasta) then
  begin
    if not CreateDir(FPasta) then
    begin
      Application.MessageBox('Erro ao criar a pasta de destino !', 'Erro Criar Pasta', MB_OK + MB_ICONERROR);
      Exit;
    end;
  end;
  cxShellListView1.Root.CustomPath := FPasta;
end;

end.
