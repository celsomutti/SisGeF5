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
  dxActivityIndicator, ShellAPI, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxCheckBox, cxCurrencyEdit;

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
    Timer: TTimer;
    cxButton2: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    actionCancelar: TAction;
    indicador: TdxActivityIndicator;
    actionSalvarArquivo: TAction;
    memTableLOG: TFDMemTable;
    memTableLOGdes_descricao: TStringField;
    memTableLOGnum_remessa: TStringField;
    memTableLOGqtd_peso_baixa: TFloatField;
    memTableLOGqtd_peso_capa: TFloatField;
    memTableLOGval_verba_entregador: TCurrencyField;
    memTableLOGval_verba_Empresa: TCurrencyField;
    memTableLOGnom_motorista: TStringField;
    memTableLOGnum_cep: TStringField;
    gridInconsistenciasDBTableView1: TcxGridDBTableView;
    gridInconsistenciasLevel1: TcxGridLevel;
    gridInconsistencias: TcxGrid;
    dxLayoutItem9: TdxLayoutItem;
    dsLOG: TDataSource;
    ativaPainelGrupo: TcxCheckBox;
    gridInconsistenciasDBTableView1des_descricao: TcxGridDBColumn;
    gridInconsistenciasDBTableView1num_remessa: TcxGridDBColumn;
    gridInconsistenciasDBTableView1qtd_peso_baixa: TcxGridDBColumn;
    gridInconsistenciasDBTableView1qtd_peso_capa: TcxGridDBColumn;
    gridInconsistenciasDBTableView1val_verba_entregador: TcxGridDBColumn;
    gridInconsistenciasDBTableView1val_verba_Empresa: TcxGridDBColumn;
    gridInconsistenciasDBTableView1nom_motorista: TcxGridDBColumn;
    gridInconsistenciasDBTableView1num_cep: TcxGridDBColumn;
    actionExpandirGrupos: TAction;
    actionColapsarGrupos: TAction;
    actionRestaurar: TAction;
    procedure FormShow(Sender: TObject);
    procedure actionFecharTelaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionSelecionarArquivoExecute(Sender: TObject);
    procedure actionLimparCampoExecute(Sender: TObject);
    procedure actionImportarExecute(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure actionCancelarExecute(Sender: TObject);
    procedure ativaPainelGrupoPropertiesChange(Sender: TObject);
    procedure gridInconsistenciasDBTableView1NavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer;
      var ADone: Boolean);
    procedure actionExpandirGruposExecute(Sender: TObject);
    procedure actionColapsarGruposExecute(Sender: TObject);
    procedure actionRestaurarExecute(Sender: TObject);
  private
    { Private declarations }
    procedure StartForm;
    procedure Openfile;
    procedure StartImport(sFile: String);
    procedure ProcessaCapa(sFile: String; iCliente: Integer; memTab: TFDMemTable);
    procedure UpdateDashboard;
    procedure TerminateProcess;
    procedure ExportarGrade;
    procedure SaveLayout;
    procedure RestoreLayout;
  public
    { Public declarations }
  end;

var
  view_ImportaCapaFinanceiroDIRECT: Tview_ImportaCapaFinanceiroDIRECT;
  capa : Thread_CapaDirect;
  sFileLayout: String;

implementation

{$R *.dfm}

uses Data.SisGeF, Common.Utils, Global.Parametros;

{ Tview_ImportaCapaFinanceiroDIRECT }

procedure Tview_ImportaCapaFinanceiroDIRECT.actionCancelarExecute(Sender: TObject);
begin
  capa.Cancelar := True;
  capa.Terminate;
end;

procedure Tview_ImportaCapaFinanceiroDIRECT.actionColapsarGruposExecute(Sender: TObject);
begin
  gridInconsistenciasDBTableView1.ViewData.Collapse(True);
end;

procedure Tview_ImportaCapaFinanceiroDIRECT.actionExpandirGruposExecute(Sender: TObject);
begin
  gridInconsistenciasDBTableView1.ViewData.Expand(True);
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

procedure Tview_ImportaCapaFinanceiroDIRECT.actionRestaurarExecute(Sender: TObject);
begin
  RestoreLayout;
end;

procedure Tview_ImportaCapaFinanceiroDIRECT.actionSelecionarArquivoExecute(Sender: TObject);
begin
  Openfile;
end;

procedure Tview_ImportaCapaFinanceiroDIRECT.ativaPainelGrupoPropertiesChange(Sender: TObject);
begin
  gridInconsistenciasDBTableView1.OptionsView.GroupByBox := ativaPainelGrupo.Checked;
end;

procedure Tview_ImportaCapaFinanceiroDIRECT.ExportarGrade;
var
  fnUtil : Common.Utils.TUtils;
  sMensagem: String;
begin
  try
    fnUtil := Common.Utils.TUtils.Create;

    if memTableLOG.IsEmpty then Exit;

    if Data_Sisgef.SaveDialog.Execute() then
    begin
      if FileExists(Data_Sisgef.SaveDialog.FileName) then
      begin
        sMensagem := 'Arquivo ' + Data_Sisgef.SaveDialog.FileName + ' já existe! Sobrepor ?';
        if Application.MessageBox(PChar(sMensagem), 'Sobrepor', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit
      end;

      fnUtil.ExportarDados(gridInconsistencias,Data_Sisgef.SaveDialog.FileName);

    end;
  finally
    fnUtil.Free;
  end;
end;

procedure Tview_ImportaCapaFinanceiroDIRECT.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  if memTableLOG.Active then memTableLOG.Close;

  if FileExists(sFileLayout) then
    DeleteFile(sFileLayout);

  Action := caFree;
  view_ImportaCapaFinanceiroDIRECT := nil;

end;

procedure Tview_ImportaCapaFinanceiroDIRECT.FormShow(Sender: TObject);
begin
  StartForm;
end;

procedure Tview_ImportaCapaFinanceiroDIRECT.gridInconsistenciasDBTableView1NavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  case AButtonIndex of
    16 : ExportarGrade;
    17 : gridInconsistenciasDBTableView1.ViewData.Expand(True);
    18 : gridInconsistenciasDBTableView1.ViewData.Collapse(True);
    19 : RestoreLayout;
  end;
end;

procedure Tview_ImportaCapaFinanceiroDIRECT.Openfile;
begin
  if OpenDialog.Execute then
    nomeArquivo.Text := OpenDialog.FileName;
end;

procedure Tview_ImportaCapaFinanceiroDIRECT.ProcessaCapa(sFile: String; iCliente: Integer; memTab: TFDMemTable);
begin
  dsLOG.Enabled := False;
  if memTableLOG.Active then
    memTableLOG.Close;
  memTableLOG.Open;
  capa := Thread_CapaDirect.Create(True);
  capa.Arquivo := sFile;
  capa.Cliente := iCliente;
  capa.MemTab := memTab;
  capa.Priority := tpNormal;
  Timer.Enabled := True;
  actionSelecionarArquivo.Enabled := False;
  actionLimparCampo.Enabled := False;
  actionImportar.Enabled := False;
  actionCancelar.Enabled := True;
  indicador.Active := True;
  capa.Start;
end;

procedure Tview_ImportaCapaFinanceiroDIRECT.RestoreLayout;
begin
  gridInconsistenciasDBTableView1.RestoreFromIniFile(sFileLayout);
  ativaPainelGrupo.Checked := False;
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
    ProcessaCapa(sFile, 4, memTableLOG);

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
    progressBar.Position := capa.Progresso;
    totalRegistros.EditValue := capa.TotalRegistros;
    totalInconsistências.EditValue := capa.TotalInconsistencias;
    registrosProcessados.EditValue := capa.TotalGravados;
    if Capa.Cancelar then
      Application.MessageBox('Importação Cancelada!', 'Atenção', MB_OK + MB_ICONEXCLAMATION)
    else
      Application.MessageBox('Importação concluída!', 'Atenção', MB_OK + MB_ICONINFORMATION);
    dsLOG.Enabled := True;
    nomeArquivo.Text := '';
    progressBar.Position := 0;
    TerminateProcess;
  end
  else
  begin
    progressBar.Position := capa.Progresso;
    totalRegistros.EditValue := capa.TotalRegistros;
    totalInconsistências.EditValue := capa.TotalInconsistencias;
    registrosProcessados.EditValue := capa.TotalGravados;
  end;
end;

procedure Tview_ImportaCapaFinanceiroDIRECT.SaveLayout;
begin
  gridInconsistenciasDBTableView1.StoreToIniFile(sFileLayout);
end;

procedure Tview_ImportaCapaFinanceiroDIRECT.StartForm;
begin
  labelTitle.Caption := Self.Caption;
  sFileLayout := ExtractFilePath(Application.ExeName) + '\layoutcapa' + Global.Parametros.pUser_ID.ToString + '.ini';
  SaveLayout;
end;

end.
