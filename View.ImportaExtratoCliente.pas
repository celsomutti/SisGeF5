unit View.ImportaExtratoCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  System.Actions, Vcl.ActnList, cxTextEdit, cxMaskEdit, cxButtonEdit, ShellAPI;

type
  Tview_ImportaExtratoCliente = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    labelTitle: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    nomeArquivo: TcxButtonEdit;
    dxLayoutItem2: TdxLayoutItem;
    actionListImportacao: TActionList;
    actionAbrirArquivo: TAction;
    OpenDialog: TOpenDialog;
    actionVisualizarPlanilha: TAction;
    actionImportar: TAction;
    actionLimpar: TAction;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionAbrirArquivoExecute(Sender: TObject);
    procedure actionVisualizarPlanilhaExecute(Sender: TObject);
    procedure actionImportarExecute(Sender: TObject);
    procedure actionLimparExecute(Sender: TObject);
  private
    { Private declarations }
    procedure StartForm;
    procedure Openfile(sFile: String);
    procedure ImportFile(sFile: String);
  public
    { Public declarations }
  end;

var
  view_ImportaExtratoCliente: Tview_ImportaExtratoCliente;

implementation

{$R *.dfm}

uses Data.SisGeF;

{ Tview_ImportaExtratoCliente }

procedure Tview_ImportaExtratoCliente.actionAbrirArquivoExecute(Sender: TObject);
begin
  if OpenDialog.Execute then
  begin
    if OpenDialog.FileName <> '' then
      nomeArquivo.Text := OpenDialog.FileName;
  end;
end;

procedure Tview_ImportaExtratoCliente.actionImportarExecute(Sender: TObject);
begin
  ImportFile(nomeArquivo.Text);
end;

procedure Tview_ImportaExtratoCliente.actionLimparExecute(Sender: TObject);
begin
  nomeArquivo.Clear;
end;

procedure Tview_ImportaExtratoCliente.actionVisualizarPlanilhaExecute(Sender: TObject);
begin
  if nomeArquivo.Text <> '' then
    Openfile(nomeArquivo.Text);
end;

procedure Tview_ImportaExtratoCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  view_ImportaExtratoCliente := nil;
end;

procedure Tview_ImportaExtratoCliente.FormShow(Sender: TObject);
begin
  StartForm;
end;

procedure Tview_ImportaExtratoCliente.ImportFile(sFile: String);
begin
  if sFile.IsEmpty then
    Exit;
  if not FileExists(sFile) then
  begin
    Application.MessageBox(PChar('Arquivo ' + sFile + ' não foi encontrado!'), 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  if Application.MessageBox('Confirma a importação do arquivo ?', 'Importar', MB_YESNO + MB_ICONQUESTION) = IDNO then
    Exit;
end;

procedure Tview_ImportaExtratoCliente.Openfile(sFile: String);
begin
  if sFile.IsEmpty then
    Exit;
  if not FileExists(sFile) then
  begin
    Application.MessageBox(PChar('Arquivo ' + sFile + ' não foi encontrado!'), 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  ShellExecute(0, 'open', pchar(sFile), nil, nil, SW_SHOW);
end;

procedure Tview_ImportaExtratoCliente.StartForm;
begin
  labelTitle.Caption := Self.Caption;
end;


end.
