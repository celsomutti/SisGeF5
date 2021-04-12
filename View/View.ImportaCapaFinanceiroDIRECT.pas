unit View.ImportaCapaFinanceiroDIRECT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinsDefaultPainters, dxGDIPlusClasses, cxImage, cxLabel, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  cxButtons, Vcl.ExtCtrls, cxTextEdit, cxMaskEdit, cxButtonEdit, cxClasses, dxLayoutContainer, dxLayoutControl,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.ComCtrls, cxProgressBar, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxMemo, Thread.CapaDIRECT,
  dxActivityIndicator, ShellAPI;

type
  Tview_ImportaCapaFinanceiroDIRECT = class(TForm)
    actionListImportar: TActionList;
    actionFecharTela: TAction;
    actionSelecionarArquivo: TAction;
    actionLimparCampo: TAction;
    actionImportar: TAction;
    OpenDialog: TOpenDialog;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    labelTitle: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    nomeArquivo: TcxButtonEdit;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    labelAtalhos: TcxLabel;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    totalRegistros: TcxMaskEdit;
    dxLayoutItem5: TdxLayoutItem;
    registrosProcessados: TcxMaskEdit;
    dxLayoutItem6: TdxLayoutItem;
    totalInconsistências: TcxMaskEdit;
    dxLayoutItem7: TdxLayoutItem;
    progressBar: TcxProgressBar;
    dxLayoutItem8: TdxLayoutItem;
    inconsistencias: TcxMemo;
    dxLayoutItem9: TdxLayoutItem;
    Timer: TTimer;
    cxButton2: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    actionCancelar: TAction;
    indicador: TdxActivityIndicator;
    cxButton3: TcxButton;
    actionSalvarArquivo: TAction;
    SaveDialog: TSaveDialog;
    procedure FormShow(Sender: TObject);
    procedure actionFecharTelaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionSelecionarArquivoExecute(Sender: TObject);
    procedure actionLimparCampoExecute(Sender: TObject);
    procedure actionImportarExecute(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure actionCancelarExecute(Sender: TObject);
    procedure actionSalvarArquivoExecute(Sender: TObject);
  private
    { Private declarations }
    procedure StartForm;
    procedure Openfile;
    procedure StartImport(sFile: String);
    procedure ProcessaCapa(sFile: String; iCliente: Integer);
    procedure UpdateDashboard;
    procedure TerminateProcess;
    procedure SaveFile;
  public
    { Public declarations }
  end;

var
  view_ImportaCapaFinanceiroDIRECT: Tview_ImportaCapaFinanceiroDIRECT;
  capa : Thread_CapaDirect;
implementation

{$R *.dfm}

uses Data.SisGeF;

{ Tview_ImportaCapaFinanceiroDIRECT }

procedure Tview_ImportaCapaFinanceiroDIRECT.actionCancelarExecute(Sender: TObject);
begin
  capa.Cancelar := True;
  capa.Terminate;
end;

procedure Tview_ImportaCapaFinanceiroDIRECT.actionFecharTelaExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_ImportaCapaFinanceiroDIRECT.actionImportarExecute(Sender: TObject);
begin
  StartImport(nomeArquivo.Text);
end;

procedure Tview_ImportaCapaFinanceiroDIRECT.actionLimparCampoExecute(Sender: TObject);
begin
  nomeArquivo.Clear;
end;

procedure Tview_ImportaCapaFinanceiroDIRECT.actionSalvarArquivoExecute(Sender: TObject);
begin
  SaveFile;
end;

procedure Tview_ImportaCapaFinanceiroDIRECT.actionSelecionarArquivoExecute(Sender: TObject);
begin
  Openfile;
end;

procedure Tview_ImportaCapaFinanceiroDIRECT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  view_ImportaCapaFinanceiroDIRECT := nil;
end;

procedure Tview_ImportaCapaFinanceiroDIRECT.FormShow(Sender: TObject);
begin
  StartForm;
end;

procedure Tview_ImportaCapaFinanceiroDIRECT.Openfile;
begin
  if OpenDialog.Execute then
    nomeArquivo.Text := OpenDialog.FileName;
end;

procedure Tview_ImportaCapaFinanceiroDIRECT.ProcessaCapa(sFile: String; iCliente: Integer);
begin
  capa := Thread_CapaDirect.Create(True);
  capa.Arquivo := sFile;
  capa.Cliente := iCliente;
  capa.Priority := tpNormal;
  Timer.Enabled := True;
  actionSelecionarArquivo.Enabled := False;
  actionLimparCampo.Enabled := False;
  actionImportar.Enabled := False;
  actionCancelar.Enabled := True;
  indicador.Active := True;
  capa.Start;
end;

procedure Tview_ImportaCapaFinanceiroDIRECT.StartImport(sFile: String);
begin
  if sFile.IsEmpty then
  begin
    Application.MessageBox('Informe o arquivo!', 'Atenção!', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;

  if not FileExists(sFile) then
  begin
    Application.MessageBox(PChar('Arquivo ' + sFile + ' não encontrado!'), 'Atenção!', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;

  if Application.MessageBox(PChar('Confirma a importação do arquivo ' + sFile + ' ?'), 'Importar', MB_YESNO + MB_ICONQUESTION) = IDYES then
    ProcessaCapa(sFile, 4);

end;

procedure Tview_ImportaCapaFinanceiroDIRECT.TerminateProcess;
begin
  if Assigned(capa) then
  begin
    capa.Free;
  end;
end;

procedure Tview_ImportaCapaFinanceiroDIRECT.TimerTimer(Sender: TObject);
begin
  UpdateDashboard;
end;

procedure Tview_ImportaCapaFinanceiroDIRECT.UpdateDashboard;
begin
if not capa.Processo then
  begin
    Timer.Enabled := False;
    actionSelecionarArquivo.Enabled := True;
    actionLimparCampo.Enabled := True;
    actionImportar.Enabled := True;
    actionCancelar.Enabled := False;
    indicador.Active := False;
    inconsistencias.Lines.Text := capa.Log;
    progressBar.Position := capa.Progresso;
    inconsistencias.Lines.Text := capa.Log;
    totalRegistros.EditValue := capa.TotalRegistros;
    totalInconsistências.EditValue := capa.TotalInconsistencias;
    registrosProcessados.EditValue := capa.TotalGravados;
    if Capa.Cancelar then
      Application.MessageBox('Importação Cancelada!', 'Atenção', MB_OK + MB_ICONEXCLAMATION)
    else
      Application.MessageBox('Importação concluída!', 'Atenção', MB_OK + MB_ICONINFORMATION);
    nomeArquivo.Text := '';
    progressBar.Position := 0;
    TerminateProcess;
    actionSalvarArquivo.Enabled :=  (inconsistencias.Lines.Count > 0);
  end
  else
  begin
    progressBar.Position := capa.Progresso;
    inconsistencias.Lines.Text := capa.Log;
    totalRegistros.EditValue := capa.TotalRegistros;
    totalInconsistências.EditValue := capa.TotalInconsistencias;
    registrosProcessados.EditValue := capa.TotalGravados;
  end;
end;

procedure Tview_ImportaCapaFinanceiroDIRECT.SaveFile;
begin
  if inconsistencias.Lines.Count = 0 then Exit;

  if SaveDialog.Execute then
  begin
    if FileExists(SaveDialog.FileName) then
    begin
      if Application.MessageBox('Arquivo já existe. Sobrepor ?','Sobrepor', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;
    end;
    inconsistencias.Lines.SaveToFile(SaveDialog.FileName);
    if FileExists(SaveDialog.FileName) then
    begin
      if Application.MessageBox('Deseja visualizar o arquivo ?','Visualizar', MB_YESNO + MB_ICONQUESTION) = IDYES then
        ShellExecute(0, 'open', pchar(SaveDialog.FileName), nil, nil, SW_SHOW);
    end;
  end;
end;

procedure Tview_ImportaCapaFinanceiroDIRECT.StartForm;
begin
  labelTitle.Caption := Self.Caption;
end;

end.
