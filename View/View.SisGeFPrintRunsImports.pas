unit View.SisGeFPrintRunsImports;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit,
  cxMaskEdit, cxButtonEdit, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, System.Actions, Vcl.ActnList, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxDropDownEdit, cxCalendar, cxMemo, Thread.PrintRunsImport, Vcl.ExtCtrls, dxActivityIndicator, cxListView,
  Controller.SisGeFTiragens, cxCustomListBox, cxListBox;

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
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    ultimasTiragens: TcxListBox;
    dxLayoutItem9: TdxLayoutItem;
    procedure actionCloseExecute(Sender: TObject);
    procedure actionLocateFileExecute(Sender: TObject);
    procedure actionImportFileExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TimerTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateDashboard;
    Procedure RunImport;
    procedure OpenFile;
    procedure TermineProcess;
    function Validate(): boolean;
    procedure PopulateLastDates;
  public
    { Public declarations }
  end;

var
  view_SisGeFPrintRunsImports: Tview_SisGeFPrintRunsImports;
  FTiragem : TThread_PrintRunsImport;
  sFile, sLastDate: string;

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
  PopulateLastDates;
end;

procedure Tview_SisGeFPrintRunsImports.OpenFile;
begin
  if OpenDialog.Execute then
  begin
    nomeArquivo.Text := OpenDialog.FileName;
  end;
end;

procedure Tview_SisGeFPrintRunsImports.PopulateLastDates;
var
  FTiragens : TControllerSisGeFTiragens;
  aParam : array of variant;
  sItem : string;
begin
  try
    FTiragens := TControllerSisGeFTiragens.Create;
    SetLength(aParam, 3);
    aParam := ['APOIO', 'DISTINCT DAT_TIRAGEM', 'ORDER BY DAT_TIRAGEM DESC LIMIT 31'];
    ultimasTiragens.Clear;
    if FTiragens.Search(aParam) then
    begin
      FTiragens.Tiragens.Query.First;
      while not FTiragens.Tiragens.Query.Eof do
      begin
        sItem := FormatDateTime('dd/mm/yyyy', FTiragens.Tiragens.Query.FieldByName('DAT_TIRAGEM').AsDateTime);
        ultimasTiragens.Items.Add(sItem);
        FTiragens.Tiragens.Query.Next;
      end;
      ultimasTiragens.ItemIndex := 0;
      sLastDate := ultimasTiragens.Items[0];
    end;
    FTiragens.Tiragens.Query.Connection.Connected := False;
  finally
    FTiragens.DisposeOf;
  end;
end;

procedure Tview_SisGeFPrintRunsImports.RunImport;
begin
  FTiragem := TThread_PrintRunsImport.Create(True);
  if not Validate() then
    Exit;
  memoLog.Clear;
  FTiragem.Arquivo := sFile;
  FTiragem.UltimaData := sLastDate;
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
    PopulateLastDates;
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
