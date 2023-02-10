unit View.SisGeFImportWorksheetExpress;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, dxLayoutControlAdapters, Vcl.ExtCtrls,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, System.Actions, Vcl.ActnList, cxLabel, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxCustomListBox, cxListBox, dxActivityIndicator, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMemo, ShellAPI, Data.DB, Common.SisGeFFunctions, cxButtonEdit, Thread.SisGeFImportExpressWorksheet,
  cxProgressBar;

type
  Tview_SisGeFImportWorksheetExpress = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    panelDragandDrop: TPanel;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    labelLocateFile1: TcxLabel;
    dxLayoutItem2: TdxLayoutItem;
    actionList: TActionList;
    actionLocateFile: TAction;
    cxButton1: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    labelLocateFile2: TcxLabel;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    actionDeleteSelectedFiles: TAction;
    actionDeleteAllFiles: TAction;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    indicador: TdxActivityIndicator;
    dxLayoutItem6: TdxLayoutItem;
    actionCloseForm: TAction;
    cxButton4: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    tipoArquivo: TcxComboBox;
    dxLayoutItem8: TdxLayoutItem;
    cliente: TcxLookupComboBox;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    actionImportWorksheet: TAction;
    actionCancelImport: TAction;
    cxButton5: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    cxButton6: TcxButton;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutGroup10: TdxLayoutGroup;
    totalRegistros: TcxMaskEdit;
    dxLayoutItem12: TdxLayoutItem;
    registrosGravados: TcxMaskEdit;
    dxLayoutItem13: TdxLayoutItem;
    registrosIgnorados: TcxMaskEdit;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    log: TcxMemo;
    dxLayoutItem15: TdxLayoutItem;
    Timer: TTimer;
    dsClientes: TDataSource;
    dxLayoutGroup12: TdxLayoutGroup;
    arquivoSelecionado: TcxButtonEdit;
    dxLayoutItem5: TdxLayoutItem;
    progressBar: TcxProgressBar;
    dxLayoutItem16: TdxLayoutItem;
    actionViewWorsheet: TAction;
    procedure tipoArquivoPropertiesChange(Sender: TObject);
    procedure clientePropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actionCloseFormExecute(Sender: TObject);
    procedure actionLocateFileExecute(Sender: TObject);
    procedure actionDeleteSelectedFilesExecute(Sender: TObject);
    procedure actionCancelImportExecute(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure actionImportWorksheetExecute(Sender: TObject);
  private
    { Private declarations }
    function LockDockAndDrop(): boolean;
    function ValidateProcess(): boolean;
    procedure OpenFile();
    procedure ValidateFile(sFile: string);
    procedure WMDROPFILES(var Msg: TMessage);
    procedure LBWindowProc(var Message: TMessage);
    procedure AddFile(sFileName: string);
    procedure StartForm;
    procedure UpdateDashboard;
    procedure RenameFiles(sFile: string);
    procedure StartImport(sFile: string);
    procedure ProcessaCapa(sFile: String; iCliente, iTipo: Integer; bLojas: boolean);
    procedure TerminateProc;
  public
    { Public declarations }
  end;

var
  view_SisGeFImportWorksheetExpress: Tview_SisGeFImportWorksheetExpress;
  OldLBWindowProc: TWndMethod;
  cFunctions : TSisGeFFunctions;
  importws : Thread_ImportImportExpressWorksheet;

implementation

{$R *.dfm}

uses Data.SisGeF;

{ Tview_SisGeFImportWorksheetExpress }

procedure Tview_SisGeFImportWorksheetExpress.actionCancelImportExecute(Sender: TObject);
begin
  importws.Cancelar := True;
  importws.Terminate;
end;

procedure Tview_SisGeFImportWorksheetExpress.actionCloseFormExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_SisGeFImportWorksheetExpress.actionDeleteSelectedFilesExecute(Sender: TObject);
begin
  arquivoSelecionado.Clear;
end;

procedure Tview_SisGeFImportWorksheetExpress.actionImportWorksheetExecute(Sender: TObject);
begin
  StartImport(arquivoSelecionado.Text);
end;

procedure Tview_SisGeFImportWorksheetExpress.actionLocateFileExecute(Sender: TObject);
begin
  OpenFile;
end;

procedure Tview_SisGeFImportWorksheetExpress.AddFile(sFileName: string);
begin
  //listBoxFiles.Items.Add(sFilename + ' --> ' + 'Pendente');
  arquivoSelecionado.Text := sFilename;
end;

procedure Tview_SisGeFImportWorksheetExpress.clientePropertiesChange(Sender: TObject);
begin
  panelDragandDrop.Enabled := LockDockAndDrop;
  actionLocateFile.Enabled := LockDockAndDrop;
end;

procedure Tview_SisGeFImportWorksheetExpress.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  view_SisGeFImportWorksheetExpress := nil;
end;

procedure Tview_SisGeFImportWorksheetExpress.FormCreate(Sender: TObject);
begin
  OldLBWindowProc := panelDragandDrop.WindowProc; // store defualt WindowProc
  panelDragandDrop.WindowProc := LBWindowProc; // replace default WindowProc
  DragAcceptFiles(panelDragandDrop.Handle, True); // now ListBox1 accept dropped files
end;

procedure Tview_SisGeFImportWorksheetExpress.FormDestroy(Sender: TObject);
begin
  panelDragandDrop.WindowProc := OldLBWindowProc;
  DragAcceptFiles(panelDragandDrop.Handle, False)
end;

procedure Tview_SisGeFImportWorksheetExpress.FormShow(Sender: TObject);
begin
  StartForm;
end;

procedure Tview_SisGeFImportWorksheetExpress.LBWindowProc(var Message: TMessage);
begin
  if Message.Msg = WM_DROPFILES then
    WMDROPFILES(Message); // handle WM_DROPFILES message
  OldLBWindowProc(Message);
  // call default ListBox1 WindowProc method to handle all other messages
end;

function Tview_SisGeFImportWorksheetExpress.LockDockAndDrop: boolean;
begin
  Result := False;
  arquivoSelecionado.Clear;
  if (tipoArquivo.ItemIndex <= 0) or (cliente.Text = '') then
    Exit;
  Result := True;
end;

procedure Tview_SisGeFImportWorksheetExpress.OpenFile;
begin
  with Data_Sisgef do
  begin
    openDialog.Title := 'Arquivos de Planilhas';
    if openDialog.Execute then
      ValidateFile(openDialog.FileName);
  end;
end;

procedure Tview_SisGeFImportWorksheetExpress.ProcessaCapa(sFile: String; iCliente, iTipo: Integer; bLojas: boolean);
begin
  log.Clear;
  importws := Thread_ImportImportExpressWorksheet.Create(True);
  importws.Arquivo := sFile;
  importws.Cliente := iCliente;
  importws.TipoProcesso := iTipo;
  importws.Loja := bLojas;
  importws.Priority := tpNormal;
  Timer.Enabled := True;
  panelDragandDrop.Enabled := False;
  actionLocateFile.Enabled := False;
  actionDeleteSelectedFiles.Enabled := False;
  actionImportWorksheet.Enabled := False;
  actionCancelImport.Enabled := True;
  indicador.Active := True;
  importws.Start;
end;

procedure Tview_SisGeFImportWorksheetExpress.RenameFiles(sFile: string);
Var
  sFileName: String;
  sPath : String;
  sFileFinal: String;
begin
  sPath := ExtractFilePath(sFile);
  sFileName :=  ExtractFileName(sFile);
  sFileFinal := sPath + 'OK_' + sFileName;
  RenameFile(sFile,sFileFinal);
end;

procedure Tview_SisGeFImportWorksheetExpress.StartForm;
begin
  Data_Sisgef.PopulaClientesEmpresa;
end;

procedure Tview_SisGeFImportWorksheetExpress.StartImport(sFile: string);
var
  iCliente, iTipo: integer;
  bLojas: boolean;
begin

  if not ValidateProcess() then
    Exit;

  if Application.MessageBox(PChar('Confirma a importa��o do arquivo ' + sFile + ' ?'), 'Importar', MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    iCliente := cliente.EditValue;
    iTipo := tipoArquivo.ItemIndex;
    bLojas := False;
    ProcessaCapa(sFile, iCliente, iTipo, bLojas);
  end;
end;

procedure Tview_SisGeFImportWorksheetExpress.TerminateProc;
begin
  if Assigned(importws) then
  begin
    importws.DisposeOf;
  end;
end;

procedure Tview_SisGeFImportWorksheetExpress.TimerTimer(Sender: TObject);
begin
  UpdateDashboard;
end;

procedure Tview_SisGeFImportWorksheetExpress.tipoArquivoPropertiesChange(Sender: TObject);
begin
  panelDragandDrop.Enabled := LockDockAndDrop;
  actionLocateFile.Enabled := LockDockAndDrop;
end;


procedure Tview_SisGeFImportWorksheetExpress.UpdateDashboard;
begin
if not importws.Processo then
  begin
    Timer.Enabled := False;
    log.Text := importws.Log;
    actionLocateFile.Enabled := True;
    panelDragandDrop.Enabled := True;
    actionDeleteSelectedFiles.Enabled := True;
    actionImportWorksheet.Enabled := True;
    actionCancelImport.Enabled := False;
    indicador.Active := False;
    progressBar.Position := importws.Progresso;
    totalRegistros.EditValue := importws.TotalRegistros;
    registrosIgnorados.EditValue := importws.TotalInconsistencias;
    registrosGravados.EditValue := importws.TotalGravados;
    if importws.Cancelar then
      Application.MessageBox('Importa��o Cancelada!', 'Aten��o', MB_OK + MB_ICONEXCLAMATION)
    else
      begin
        Application.MessageBox('Importa��o conclu�da!', 'Aten��o', MB_OK + MB_ICONINFORMATION);
        RenameFiles(arquivoSelecionado.Text);
      end;
    arquivoSelecionado.Text := '';
    progressBar.Position := 0;
    log.Lines.Add('>> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', now) + ' - T�rmino da importa��o!');
    TerminateProc;
  end
  else
  begin
    log.Text := importws.Log;
    progressBar.Position := importws.Progresso;
    totalRegistros.EditValue := importws.TotalRegistros;
    registrosIgnorados.EditValue := importws.TotalInconsistencias;
    registrosGravados.EditValue := importws.TotalGravados;
  end;
end;

procedure Tview_SisGeFImportWorksheetExpress.ValidateFile(sFile: string);
begin
  try
    cFunctions := TSisGeFFunctions.Create;
    if cFunctions.ValidadeFile(tipoArquivo.ItemIndex, cliente.EditValue, sFile) then
    begin
      AddFile(sFile)
    end
    else
    begin
      MessageDlg(cFunctions.Mensagem, mtWarning, [mbCancel], 0);
    end;
  finally
    cFunctions.DisposeOf;
  end;
end;

function Tview_SisGeFImportWorksheetExpress.ValidateProcess: boolean;
begin
  Result := False;
  // valida��o geral
    if tipoArquivo.ItemIndex <= 0 then
    begin
      MessageDlg('Informe o tipo de arquivo.', mtWarning, [mbCancel], 0);
      tipoArquivo.SetFocus;
      Exit;
    end;
    if cliente.Text = '' then
    begin
      MessageDlg('Informe Cliente.', mtWarning, [mbCancel], 0);
      cliente.SetFocus;
      Exit;
    end;
    if arquivoSelecionado.Text = '' then
    begin
      MessageDlg('Nenhum arquivo selecionado.', mtWarning, [mbCancel], 0);
      cliente.SetFocus;
      Exit;
    end;
  Result := True;
end;

procedure Tview_SisGeFImportWorksheetExpress.WMDROPFILES(var Msg: TMessage);
var
  pcFileName: PChar;
  i, iSize, iFileCount: integer;
begin
  pcFileName := ''; // to avoid compiler warning message
  iFileCount := DragQueryFile(Msg.wParam, $FFFFFFFF, pcFileName, 255);
  for i := 0 to iFileCount - 1 do
  begin
    iSize := DragQueryFile(Msg.wParam, i, nil, 0) + 1;
    pcFileName := StrAlloc(iSize);
    DragQueryFile(Msg.wParam, i, pcFileName, iSize);
    if FileExists(pcFileName) then
      ValidateFile(pcFileName);
    StrDispose(pcFileName);
  end;
  DragFinish(Msg.wParam);
end;

end.
