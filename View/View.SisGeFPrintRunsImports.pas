unit View.SisGeFPrintRunsImports;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit,
  cxMaskEdit, cxButtonEdit, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, System.Actions, Vcl.ActnList, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxDropDownEdit, cxCalendar, cxMemo, Thread.PrintRunsImport, Vcl.ExtCtrls, dxActivityIndicator;

type
  Tview_SisGeFPrintRunsImports = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    nomeArquivo: TcxButtonEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    actionList: TActionList;
    actionLocateFile: TAction;
    actionImportFile: TAction;
    actionClose: TAction;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    cxButton2: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    registrosEncontrados: TcxMaskEdit;
    dxLayoutItem4: TdxLayoutItem;
    registrosGravados: TcxMaskEdit;
    dxLayoutItem5: TdxLayoutItem;
    registrosRejeitados: TcxMaskEdit;
    dxLayoutItem6: TdxLayoutItem;
    memoLog: TcxMemo;
    dxLayoutItem7: TdxLayoutItem;
    Timer: TTimer;
    indicator: TdxActivityIndicator;
    dxLayoutItem8: TdxLayoutItem;
    OpenDialog: TOpenDialog;
    procedure FormShow(Sender: TObject);
    procedure actionCloseExecute(Sender: TObject);
    procedure actionLocateFileExecute(Sender: TObject);
    procedure actionImportFileExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TimerTimer(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateDashboard;
    Procedure RunImport;
    procedure OpenFile;
    procedure TermineProcess;
    function Validate(): boolean;
  public
    { Public declarations }
  end;

var
  view_SisGeFPrintRunsImports: Tview_SisGeFPrintRunsImports;
  FTiragem : TThread_PrintRunsImport;
  sFile: string;

implementation

{$R *.dfm}

uses Data.SisGeF;

{ Tview_SisGeFPrintRunsImports }

procedure Tview_SisGeFPrintRunsImports.actionCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_SisGeFPrintRunsImports.actionImportFileExecute(Sender: TObject);
begin
  RunImport;
end;

procedure Tview_SisGeFPrintRunsImports.actionLocateFileExecute(Sender: TObject);
begin
  OpenFile;
end;

procedure Tview_SisGeFPrintRunsImports.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  view_SisGeFPrintRunsImports := nil;
end;

procedure Tview_SisGeFPrintRunsImports.FormShow(Sender: TObject);
begin
  FTiragem := TThread_PrintRunsImport.Create(True);
end;

procedure Tview_SisGeFPrintRunsImports.OpenFile;
begin
  if OpenDialog.Execute then
  begin
    nomeArquivo.Text := OpenDialog.FileName;
  end;
end;

procedure Tview_SisGeFPrintRunsImports.RunImport;
begin
  if not Validate() then
    Exit;
  memoLog.Clear;
  FTiragem.Arquivo := sFile;
  FTiragem.Priority := tpNormal;
  Timer.Enabled := True;
  actionLocateFile.Enabled := False;
  actionImportFile.Enabled := False;
  indicator.Active := True;
  FTiragem.Start;
end;

procedure Tview_SisGeFPrintRunsImports.TermineProcess;
begin
if Assigned(FTiragem) then
  begin
    FTiragem.Free;
  end;
end;

procedure Tview_SisGeFPrintRunsImports.TimerTimer(Sender: TObject);
begin
  UpdateDashboard;
end;

procedure Tview_SisGeFPrintRunsImports.UpdateDashboard;
begin
if not FTiragem.Processo then
  begin
    Timer.Enabled := False;
    memoLog.Text := FTiragem.Log;
    actionLocateFile.Enabled := True;
    actionImportFile.Enabled := True;
    indicator.Active := False;
//    progressBar.Position := FTiragem.Progresso;
    registrosEncontrados.EditValue := FTiragem.TotalRegistros;
    registrosRejeitados.EditValue := FTiragem.TotalInconsistencias;
    registrosGravados.EditValue := FTiragem.TotalGravados;
    if FTiragem.Cancelar then
      Application.MessageBox('Importação Cancelada!', 'Atenção', MB_OK + MB_ICONEXCLAMATION)
    else
      begin
        Application.MessageBox('Importação concluída!', 'Atenção', MB_OK + MB_ICONINFORMATION);
      end;
    nomeArquivo.Text := '';
//    progressBar.Position := 0;
    memoLog.Lines.Add('>> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', now) + ' - Término da importação!');
    TermineProcess;
  end
  else
  begin
    memoLog.Text := FTiragem.Log;
//    progressBar.Position := FTiragem.Progresso;
    registrosEncontrados.EditValue := FTiragem.TotalRegistros;
    registrosRejeitados.EditValue := FTiragem.TotalInconsistencias;
    registrosGravados.EditValue := FTiragem.TotalGravados;
  end;
end;

function Tview_SisGeFPrintRunsImports.Validate: boolean;
begin
  Result := False;
  if nomeArquivo.Text = '' then
  begin
    MessageDlg('Informe o arquivo de tiragem!', mtWarning, [mbCancel], 0);
    Exit;
  end;
  if not FileExists(nomeArquivo.Text) then
  begin
    MessageDlg('Arquivo de tiragem não encontrado!', mtError, [mbCancel], 0);
    Exit;
  end;
  if MessageDlg('Confirma processar esse arquivo?', mtConfirmation, [mbOK,mbCancel], 0) = mrCancel then
  begin
    sFile :='';
    Exit;
  end;
  sFile := nomeArquivo.Text;
  Result := True;
end;

end.
