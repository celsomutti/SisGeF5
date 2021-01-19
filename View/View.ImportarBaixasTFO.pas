unit View.ImportarBaixasTFO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxLabel, Control.ControleBaixasTFO, System.Actions, Vcl.ActnList, dxLayoutControlAdapters, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxButtonEdit, cxMemo, cxProgressBar, Thread.ImportarBaixasTFO, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxDropDownEdit,
  ShellAPI, Vcl.ExtCtrls, cxCheckBox, Thread.ImportarBaixasDIRECT;

type
  Tview_ImportarBaixasTFO = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxLabel1: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    edtArquivo: TcxButtonEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    memLog: TcxMemo;
    dxLayoutItem4: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    pbImportacao: TcxProgressBar;
    dxLayoutItem7: TdxLayoutItem;
    OpenDialog: TOpenDialog;
    aclBaixas: TActionList;
    actFechar: TAction;
    actAbrir: TAction;
    actImportar: TAction;
    actCancelar: TAction;
    actVisualizar: TAction;
    cboCliente: TcxComboBox;
    dxLayoutItem8: TdxLayoutItem;
    Timer1: TTimer;
    checkBoxLojas: TcxCheckBox;
    dxLayoutItem9: TdxLayoutItem;
    procedure actImportarExecute(Sender: TObject);
    procedure actAbrirExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actVisualizarExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure cboClientePropertiesChange(Sender: TObject);
  private
    { Private declarations }
    procedure Importar;
    procedure VisualizarPlanilha;
    procedure ImportarDIRECT;
    procedure AtualizaLogTFO;
    procedure AtualizaLOGDIRECT;
  public
    { Public declarations }
  end;

var
  view_ImportarBaixasTFO: Tview_ImportarBaixasTFO;
  controle : TControleBaixasTFOControl;
  planilha : Tthread_ImportarBaixasTFO;
  direct : Tthread_ImportarbaixasDirect;

implementation

{$R *.dfm}

uses Data.SisGeF, View.VisualizacaoPlanilha, Global.Parametros;

procedure Tview_ImportarBaixasTFO.actAbrirExecute(Sender: TObject);
begin
  if cboCliente.ItemIndex <= 0 then
  begin
    Application.MessageBox('Selecione o cliente!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  OpenDialog.FilterIndex := cboCliente.ItemIndex;
  if OpenDialog.Execute then
  begin
    edtArquivo.Text := OpenDialog.FileName;
  end;
end;

procedure Tview_ImportarBaixasTFO.actCancelarExecute(Sender: TObject);
begin
  if cboCliente.ItemIndex = 1 then
  begin
    planilha.Terminate;
  end
  else if cboCliente.ItemIndex = 2 then
  begin
    direct.Terminate;
  end;
end;

procedure Tview_ImportarBaixasTFO.actFecharExecute(Sender: TObject);
begin
  Perform(WM_CLOSE, 0, 0);
end;

procedure Tview_ImportarBaixasTFO.actImportarExecute(Sender: TObject);
begin
  if edtArquivo.Text = '' then
  begin
    Application.MessageBox('Informe o arquivo da planilha!', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if not FileExists(edtArquivo.Text) then
  begin
    Application.MessageBox('Arquivo da planilha não encontrado!', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;

  if Application.MessageBox('Confirma a importação da planilha?', 'Importar', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;

  case cboCliente.ItemIndex of
    1 : Importar;
    2 : ImportarDIRECT;
  else
    Application.MessageBox('Nenhum Cliente foi informado!', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
end;

procedure Tview_ImportarBaixasTFO.actVisualizarExecute(Sender: TObject);
begin
  VisualizarPlanilha;
end;

procedure Tview_ImportarBaixasTFO.AtualizaLOGDIRECT;
begin
if not Global.Parametros.pbProcess then
  begin
    Timer1.Enabled := False;
    dxLayoutItem7.Visible := False;
    actImportar.Enabled := True;
    actCancelar.Enabled := False;
    actAbrir.Enabled := True;
    Application.MessageBox('Importação concluída!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    edtArquivo.Text := '';
    pbImportacao.Position := 0;
  end
  else
  begin
    pbImportacao.Position := Global.Parametros.pdPos;
    memLog.Lines.Text := Global.Parametros.psLOG;
    if Length(Global.Parametros.psMessage) > 0 then
    begin
      Application.MessageBox(PChar(Global.Parametros.psMessage), 'Atenção', MB_OK + MB_ICONEXCLAMATION);
      Global.Parametros.psMessage := '';
    end;
  end;
  if direct.bCancel then
  begin
    Timer1.Enabled := False;
    dxLayoutItem7.Visible := False;
    actImportar.Enabled := True;
    actCancelar.Enabled := False;
    actAbrir.Enabled := True;
    Application.MessageBox('Importação cancelada!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
  end;
end;

procedure Tview_ImportarBaixasTFO.AtualizaLogTFO;
begin
if not Global.Parametros.pbProcess then
  begin
    Timer1.Enabled := False;
    dxLayoutItem7.Visible := False;
    actImportar.Enabled := True;
    actCancelar.Enabled := False;
    actAbrir.Enabled := True;
    Application.MessageBox('Importação concluída!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    edtArquivo.Text := '';
    pbImportacao.Position := 0;
  end
  else
  begin
    pbImportacao.Position := Global.Parametros.pdPos;
    memLog.Lines.Text := Global.Parametros.psLOG;
    if Length(Global.Parametros.psMessage) > 0 then
    begin
      Application.MessageBox(PChar(Global.Parametros.psMessage), 'Atenção', MB_OK + MB_ICONEXCLAMATION);
      Global.Parametros.psMessage := '';
    end;
  end;
  if planilha.bCancel then
  begin
    Timer1.Enabled := False;
    dxLayoutItem7.Visible := False;
    actImportar.Enabled := True;
    actCancelar.Enabled := False;
    actAbrir.Enabled := True;
    Application.MessageBox('Importação cancelada!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
  end;
end;

procedure Tview_ImportarBaixasTFO.cboClientePropertiesChange(Sender: TObject);
begin
  if cboCliente.ItemIndex = 2 then
  begin
    dxLayoutItem9.Visible := True;
  end
  else
  begin
    dxLayoutItem9.Visible := False;
    checkBoxLojas.Checked := False;
  end;
end;

procedure Tview_ImportarBaixasTFO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  view_ImportarBaixasTFO := nil;
end;

procedure Tview_ImportarBaixasTFO.Importar;
begin
  planilha := Tthread_ImportarBaixasTFO.Create(True);
  planilha.FFile := edtArquivo.Text;
  planilha.FreeOnTerminate := True;
  planilha.Priority := tpNormal;
  planilha.iCodigoCliente := 1;
  Timer1.Enabled := True;
  dxLayoutItem7.Visible := True;
  actImportar.Enabled := False;
  actCancelar.Enabled := True;
  actAbrir.Enabled := False;
  planilha.Start;
end;

procedure Tview_ImportarBaixasTFO.ImportarDIRECT;
begin
  direct := Tthread_ImportarBaixasDIRECT.Create(True);
  direct.FFile :=edtArquivo.Text;
  direct.FreeOnTerminate := True;
  direct.Priority := tpNormal;
  direct.iCodigoCliente := 4; // deverá ser implementado para informar o código do cliente
  direct.bLojas := checkBoxLojas.Checked;
  Timer1.Enabled := True;
  dxLayoutItem7.Visible := True;
  actImportar.Enabled := False;
  actCancelar.Enabled := True;
  actAbrir.Enabled := False;
  direct.Start;
end;

procedure Tview_ImportarBaixasTFO.Timer1Timer(Sender: TObject);
begin
  case cboCliente.ItemIndex of
    1 : AtualizaLogTFO;
    2 : AtualizaLogDIRECT;
  else
    Application.MessageBox('Nenhum Cliente foi informado!', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
end;

procedure Tview_ImportarBaixasTFO.VisualizarPlanilha;
begin

  sFileExt := LowerCase(ExtractFileExt(edtArquivo.Text));

  if sFileExt = '.txt' then
  begin
    if not Assigned(view_VisualizacaoPlanilhas) then
    begin
      view_VisualizacaoPlanilhas := Tview_VisualizacaoPlanilhas.Create(Application);
    end;
    view_VisualizacaoPlanilhas.FFile := edtArquivo.Text;
    view_VisualizacaoPlanilhas.ShowModal;
  end
  else if sFileExt = '.csv' then
  begin
    ShellExecute(Handle, 'open', pchar(edtArquivo.Text), nil, nil, SW_SHOW);
  end;

end;

end.
