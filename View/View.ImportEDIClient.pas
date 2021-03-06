unit View.ImportEDIClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinsDefaultPainters, dxGDIPlusClasses, cxImage, cxLabel, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  cxButtons, Vcl.ExtCtrls, cxTextEdit, cxMaskEdit, cxButtonEdit, cxClasses, dxLayoutContainer, dxLayoutControl,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.ComCtrls, cxProgressBar, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxMemo, Thread.EDIClient,
  dxActivityIndicator, ShellAPI, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxCheckBox, cxCurrencyEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  Tview_ImporEDIClient = class(TForm)
    actionListImportar: TActionList;
    actionFecharTela: TAction;
    actionSelecionarArquivo: TAction;
    actionLimparCampo: TAction;
    actionImportar: TAction;
    OpenDialog: TOpenDialog;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    nomeArquivo: TcxButtonEdit;
    dxLayoutItem3: TdxLayoutItem;
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
    Timer: TTimer;
    cxButton2: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    actionCancelar: TAction;
    indicador: TdxActivityIndicator;
    actionSalvarArquivo: TAction;
    actionExpandirGrupos: TAction;
    actionColapsarGrupos: TAction;
    actionRestaurar: TAction;
    dxLayoutGroup7: TdxLayoutGroup;
    cxButton3: TcxButton;
    dxLayoutItem11: TdxLayoutItem;
    labelTitle: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    log: TcxMemo;
    dxLayoutItem4: TdxLayoutItem;
    cliente: TcxLookupComboBox;
    dxLayoutItem9: TdxLayoutItem;
    dsClientes: TDataSource;
    tipo: TcxComboBox;
    dxLayoutItem12: TdxLayoutItem;
    lojas: TcxCheckBox;
    dxLayoutItem13: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
    procedure actionFecharTelaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionSelecionarArquivoExecute(Sender: TObject);
    procedure actionLimparCampoExecute(Sender: TObject);
    procedure actionImportarExecute(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure actionCancelarExecute(Sender: TObject);
    procedure clientePropertiesChange(Sender: TObject);
    procedure tipoPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    procedure StartForm;
    procedure Openfile;
    procedure StartImport(sFile: String);
    procedure ProcessaCapa(sFile: String; iCliente, iTipo: Integer; bLojas: boolean);
    procedure UpdateDashboard;
    procedure TerminateProcess;
    procedure RenameFiles(sFile: String);
    procedure VerifyTypeEDI;
  public
    { Public declarations }
  end;

var
  view_ImporEDIClient: Tview_ImporEDIClient;
  edi : Thread_ImportEDIClient;
  sFileLayout: String;

implementation

{$R *.dfm}

uses Data.SisGeF, Common.Utils, Global.Parametros;

{ Tview_ImporEDIClient }

procedure Tview_ImporEDIClient.actionCancelarExecute(Sender: TObject);
begin
  edi.Cancelar := True;
  edi.Terminate;
end;

procedure Tview_ImporEDIClient.actionFecharTelaExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_ImporEDIClient.actionImportarExecute(Sender: TObject);
begin
  StartImport(nomeArquivo.Text);
end;

procedure Tview_ImporEDIClient.actionLimparCampoExecute(Sender: TObject);
begin
  tipo.ItemIndex := 0;
  nomeArquivo.Clear;
  cliente.ItemIndex := -1;
end;

procedure Tview_ImporEDIClient.actionSelecionarArquivoExecute(Sender: TObject);
begin
  Openfile;
end;

procedure Tview_ImporEDIClient.clientePropertiesChange(Sender: TObject);
begin
  VerifyTypeEDI
end;

procedure Tview_ImporEDIClient.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  Data_Sisgef.mtbClientesEmpresa.Active := False;
  Action := caFree;
  view_ImporEDIClient := nil;

end;

procedure Tview_ImporEDIClient.FormShow(Sender: TObject);
begin
  StartForm;
end;

procedure Tview_ImporEDIClient.Openfile;
begin
  if OpenDialog.Execute then
    nomeArquivo.Text := OpenDialog.FileName;
end;

procedure Tview_ImporEDIClient.ProcessaCapa(sFile: String; iCliente, iTipo: Integer; bLojas: boolean);
begin
  log.Clear;
  edi := Thread_ImportEDIClient.Create(True);
  edi.Arquivo := sFile;
  edi.Cliente := iCliente;
  edi.TipoProcesso := iTipo;
  edi.Loja := bLojas;
  edi.Priority := tpNormal;
  Timer.Enabled := True;
  actionSelecionarArquivo.Enabled := False;
  actionLimparCampo.Enabled := False;
  actionImportar.Enabled := False;
  actionCancelar.Enabled := True;
  indicador.Active := True;
  edi.Start;
end;

procedure Tview_ImporEDIClient.RenameFiles(sFile: String);
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

procedure Tview_ImporEDIClient.StartImport(sFile: String);
var
  iCliente, iTipo: integer;
  bLojas: boolean;
begin
  if tipo.ItemIndex < 1 then
  begin
    Application.MessageBox('Informe o tipo de processamento!', 'Atenção!', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;

  if cliente.Text = '' then
  begin
    Application.MessageBox('Informe o Cliente!', 'Atenção!', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;

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
  begin
    iCliente := cliente.EditValue;
    iTipo := tipo.ItemIndex;
    bLojas := lojas.Checked;
    ProcessaCapa(sFile, iCliente, iTipo, bLojas);
  end;
end;

procedure Tview_ImporEDIClient.TerminateProcess;
begin
  if Assigned(edi) then
  begin
    edi.Free;
  end;
end;

procedure Tview_ImporEDIClient.TimerTimer(Sender: TObject);
begin
  UpdateDashboard;
end;

procedure Tview_ImporEDIClient.tipoPropertiesChange(Sender: TObject);
begin
  VerifyTypeEDI
end;

procedure Tview_ImporEDIClient.UpdateDashboard;
begin
if not edi.Processo then
  begin
    Timer.Enabled := False;
    log.Text := edi.Log;
    actionSelecionarArquivo.Enabled := True;
    actionLimparCampo.Enabled := True;
    actionImportar.Enabled := True;
    actionCancelar.Enabled := False;
    indicador.Active := False;
    progressBar.Position := edi.Progresso;
    totalRegistros.EditValue := edi.TotalRegistros;
    totalInconsistências.EditValue := edi.TotalInconsistencias;
    registrosProcessados.EditValue := edi.TotalGravados;
    if edi.Cancelar then
      Application.MessageBox('Importação Cancelada!', 'Atenção', MB_OK + MB_ICONEXCLAMATION)
    else
      begin
        Application.MessageBox('Importação concluída!', 'Atenção', MB_OK + MB_ICONINFORMATION);
        RenameFiles(nomeArquivo.Text);
      end;
    nomeArquivo.Text := '';
    progressBar.Position := 0;
    log.Lines.Add('>> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', now) + ' - Término da importação!');
    TerminateProcess;
  end
  else
  begin
    log.Text := edi.Log;
    progressBar.Position := edi.Progresso;
    totalRegistros.EditValue := edi.TotalRegistros;
    totalInconsistências.EditValue := edi.TotalInconsistencias;
    registrosProcessados.EditValue := edi.TotalGravados;
  end;
end;

procedure Tview_ImporEDIClient.VerifyTypeEDI;
begin
  if tipo.ItemIndex = 2 then
    dxLayoutItem13.Visible := (cliente.EditValue = 4)
  else
  begin
    dxLayoutItem13.Visible := False;
    lojas.Checked := False;
  end;
end;

procedure Tview_ImporEDIClient.StartForm;
begin
  labelTitle.Caption := Self.Caption;
  Data_Sisgef.PopulaClientesEmpresa;
end;

end.
