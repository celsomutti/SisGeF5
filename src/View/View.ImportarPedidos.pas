unit View.ImportarPedidos;

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
  dxLayoutcxEditAdapters, cxLabel, System.Actions, Vcl.ActnList, cxTextEdit, cxMaskEdit, cxButtonEdit, dxLayoutControlAdapters,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxMemo, cxDropDownEdit, cxProgressBar, Control.PlanilhaEntradaEntregas,
  Thread.ImportarPlanilhaEntradaCarriers, ShellAPI, FileCTRL, Thread.ImportarPlanilhaEntradaSPLOG,
  Thread.ImportarPedidosDIRECT, Thread.ImportarPedidosSIMExpress, Thread.ImportarPedidosTFO, Vcl.ExtCtrls;

type
  Tview_ImportarPedidos = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxLabel1: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    aclImportarPedidos: TActionList;
    actFechar: TAction;
    actAbrirArquivo: TAction;
    actImportar: TAction;
    actCancelar: TAction;
    edtArquivo: TcxButtonEdit;
    dxLayoutItem2: TdxLayoutItem;
    OpenDialog: TOpenDialog;
    cxButton1: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    memLOG: TcxMemo;
    dxLayoutItem4: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cboCliente: TcxComboBox;
    dxLayoutItem7: TdxLayoutItem;
    pbImportacao: TcxProgressBar;
    dxLayoutItem8: TdxLayoutItem;
    actVisualizar: TAction;
    Timer1: TTimer;
    procedure actAbrirArquivoExecute(Sender: TObject);
    procedure actImportarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actVisualizarExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    procedure Importar;
    procedure ImportarCarriers;
    procedure ImportaSPLOG;
    procedure ImportaDIRECT;
    procedure ImportaRODOE;
    procedure VisualizarPlanilhas;
    procedure AbreArquivo;
    procedure AbrePasta;
    procedure AtualizaLogTFO;
    procedure AtualizaLOGDIRECT;
    procedure AtualizaLogSimExpress;

  public
    { Public declarations }
  end;

var
  view_ImportarPedidos: Tview_ImportarPedidos;
  planilha : Tthread_ImportarPedidosTFO;
  planilhaCarriers : Thread_ImportarPlanilhaEntradaCarriers;
  planilhaSPLOG: Thread_ImportarPlanilhaEntradaSPLOG;
  planilhaDIRECT: Tthread_ImportarPedidosDIRECT;
  planilhaSIMExpress: TThread_ImportarPedidosSIMEXpress;
  sFileExt : String;

implementation

{$R *.dfm}

uses Data.SisGeF, View.VisualizacaoPlanilha, Global.Parametros;

procedure Tview_ImportarPedidos.AbreArquivo;
begin
  edtArquivo.Clear;
  if OpenDialog.Execute then
  begin
    edtArquivo.Text := OpenDialog.FileName;
  end;
end;

procedure Tview_ImportarPedidos.AbrePasta;
var
  sPath: string;
begin
  edtArquivo.Clear;
  sPath := ''; { Diretorio inicio...}
  if SelectDirectory(sPath, [sdAllowCreate, sdPerformCreate, sdPrompt],1000) then
  begin
    edtArquivo.Text := sPath;
  end;
end;

procedure Tview_ImportarPedidos.actAbrirArquivoExecute(Sender: TObject);
begin
  if cboCliente.ItemIndex = 0 then
  begin
    Application.MessageBox('Selecione primeiramente o cliente.','Aten��o', MB_OK + MB_ICONWARNING);
    cboCliente.SetFocus;
    Exit;
  end;
  case cboCliente.ItemIndex of
    1 : AbreArquivo;
    2 : AbreArquivo;
    3 : AbreArquivo;
    4 : AbreArquivo;
    5 : AbreArquivo;
  end;
end;

procedure Tview_ImportarPedidos.actCancelarExecute(Sender: TObject);
begin
  if cboCliente.ItemIndex = 1 then
  begin
    planilha.bCancel := True;
    planilha.Terminate;
  end
  else if cboCliente.ItemIndex = 2 then
  begin
   // planilhaCarriers.bCancel := True;
    planilhaCarriers.Terminate;
  end
  else if cboCliente.ItemIndex = 3 then
  begin
   // planilhaSPLOG.bCancel := True;
    planilhaSPLOG.Terminate;
  end
  else if cboCliente.ItemIndex = 4 then
  begin
    planilhaDIRECT.bCancel := True;
    planilhaDIRECT.Terminate;
  end
  else if cboCliente.ItemIndex = 5 then
  begin
    planilhaSIMExpress.bCancel := True;
    planilhaSIMExpress.Terminate;
  end;
end;

procedure Tview_ImportarPedidos.actFecharExecute(Sender: TObject);
begin
  Perform(WM_CLOSE, 0, 0);
end;

procedure Tview_ImportarPedidos.actImportarExecute(Sender: TObject);
begin
  if edtArquivo.Text = '' then
  begin
    Application.MessageBox('Informe o arquivo ou a pasta!', 'Aten��o', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if not FileExists(edtArquivo.Text) then
  begin
    Application.MessageBox('Arquivo n�o encontrado!', 'Aten��o', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if cboCliente.ItemIndex = 0 then
  begin
    Application.MessageBox('Informe o Cliente!', 'Aten��o', MB_OK + MB_ICONWARNING);
    Exit;
  end;

  if Application.MessageBox('Confirma a importa��o do(s) arquivo(s)?', 'Importar', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;

  case cboCliente.ItemIndex of
    1 : Importar;
    2 : ImportarCarriers;
    3 : ImportaSPLOG;
    4 : ImportaDIRECT;
    5 : ImportaRODOE;
  else
    Application.MessageBox('Nenhum Cliente foi informado!', 'Aten��o', MB_OK + MB_ICONWARNING);
    Exit;
  end;

end;

procedure Tview_ImportarPedidos.actVisualizarExecute(Sender: TObject);
begin
  VisualizarPlanilhas
end;

procedure Tview_ImportarPedidos.AtualizaLOGDIRECT;
begin
  if not Global.Parametros.pbProcess then
  begin
    Timer1.Enabled := False;
    dxLayoutItem8.Visible := False;
    actImportar.Enabled := True;
    actCancelar.Enabled := False;
    actAbrirArquivo.Enabled := True;
    Screen.Cursor := crDefault;
    memLog.Lines.Text := Global.Parametros.psLOG;
    memLog.Lines.Add(FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' t�rmino da importa��o do arquivo ' + edtArquivo.Text + '!');
    Application.MessageBox('Importa��o conclu�da!', 'Aten��o', MB_OK + MB_ICONEXCLAMATION);
    planilhaDIRECT.sAlerta := '';
    edtArquivo.Text := '';
    Global.Parametros.psLog := '';
    Global.Parametros.pdPos := 0;
    pbImportacao.Position := 0;
  end
  else
  begin
    dxLayoutItem8.Visible := True;
    actImportar.Enabled := False;
    actCancelar.Enabled := True;
    actAbrirArquivo.Enabled := False;
    pbImportacao.Position := Global.Parametros.pdPos;
    memLog.Lines.Text := Global.Parametros.psLog;
    Screen.Cursor := crHourGlass;
  end;
  if planilhaDIRECT.bCancel then
  begin
    Timer1.Enabled := False;
    dxLayoutItem8.Visible := False;
    actImportar.Enabled := True;
    actCancelar.Enabled := False;
    actAbrirArquivo.Enabled := True;
    memLog.Lines.Text := Global.Parametros.psLog;
    Screen.Cursor := crDefault;
    Global.Parametros.psLog := '';
    Global.Parametros.pdPos := 0;
    pbImportacao.Position := 0;
    Application.MessageBox('Importa��o Cancelada!', 'Aten��o', MB_OK + MB_ICONEXCLAMATION);
  end;
end;

procedure Tview_ImportarPedidos.AtualizaLogSimExpress;
begin
  if not Global.Parametros.pbProcess then
  begin
    Timer1.Enabled := False;
    dxLayoutItem8.Visible := False;
    actImportar.Enabled := True;
    actCancelar.Enabled := False;
    actAbrirArquivo.Enabled := True;
    Screen.Cursor := crDefault;
    memLog.Lines.Text := Global.Parametros.psLog;
    memLog.Lines.Add(FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' t�rmino da importa��o do arquivo ' + edtArquivo.Text + '!');
    Application.MessageBox('Importa��o conclu�da!', 'Aten��o', MB_OK + MB_ICONEXCLAMATION);
    edtArquivo.Text := '';
    Global.Parametros.psLog := '';
    Global.Parametros.pdPos := 0;
    pbImportacao.Position := 0;
  end
  else
  begin
    dxLayoutItem8.Visible := True;
    actImportar.Enabled := False;
    actCancelar.Enabled := True;
    actAbrirArquivo.Enabled := False;
    pbImportacao.Position := Global.Parametros.pdPos;
    memLog.Lines.Text := Global.Parametros.psLog;
    Screen.Cursor := crHourGlass;
  end;
  if planilhaSIMExpress.bCancel then
  begin
    Timer1.Enabled := False;
    dxLayoutItem8.Visible := False;
    actImportar.Enabled := True;
    actCancelar.Enabled := False;
    actAbrirArquivo.Enabled := True;
    Screen.Cursor := crDefault;
    memLog.Lines.Text := Global.Parametros.psLog;
    Global.Parametros.psLog := '';
    Global.Parametros.pdPos := 0;
    pbImportacao.Position := 0;
    memLog.Lines.Add(FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' importa��o do arquivo cancelada!' + edtArquivo.Text + '!');
    Application.MessageBox('Importa��o cancelada!', 'Aten��o', MB_OK + MB_ICONEXCLAMATION);
  end;
end;

procedure Tview_ImportarPedidos.AtualizaLogTFO;
begin
  if not Global.Parametros.pbProcess then
  begin
    Timer1.Enabled := False;
    dxLayoutItem8.Visible := False;
    actImportar.Enabled := True;
    actCancelar.Enabled := False;
    actAbrirArquivo.Enabled := True;
    Screen.Cursor := crDefault;
    memLog.Lines.Text := Global.Parametros.psLog;
    memLog.Lines.Add(FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' t�rmino da importa��o do arquivo ' + edtArquivo.Text + '!');
    Application.MessageBox('Importa��o conclu�da!', 'Aten��o', MB_OK + MB_ICONEXCLAMATION);
    edtArquivo.Text := '';
    Global.Parametros.psLog := '';
    Global.Parametros.pdPos := 0;
    pbImportacao.Position := 0;
  end
  else
  begin
    dxLayoutItem8.Visible := True;
    actImportar.Enabled := False;
    actCancelar.Enabled := True;
    actAbrirArquivo.Enabled := False;
    Screen.Cursor := crHourGlass;
    pbImportacao.Position := Global.Parametros.pdPos;
    memLog.Lines.Text := Global.Parametros.psLog;
  end;
  if planilha.bCancel then
  begin
    Timer1.Enabled := False;
    dxLayoutItem8.Visible := False;
    actImportar.Enabled := True;
    actCancelar.Enabled := False;
    actAbrirArquivo.Enabled := True;
    Screen.Cursor := crDefault;
    memLog.Lines.Text := Global.Parametros.psLog;
    Global.Parametros.psLog := '';
    Global.Parametros.pdPos := 0;
    pbImportacao.Position := 0;
    Application.MessageBox('Importa��o Cancelada!', 'Aten��o', MB_OK + MB_ICONEXCLAMATION);
  end;
end;

procedure Tview_ImportarPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  view_ImportarPedidos := Nil;
end;

procedure Tview_ImportarPedidos.ImportaDIRECT;
begin
  planilhaDIRECT := TThread_ImportarPedidosDIRECT.Create(True);
  planilhaDIRECT.FFile := edtArquivo.Text;
  planilhaDIRECT.iCodigoCliente := cboCliente.ItemIndex;
  planilhaDIRECT.FreeOnTerminate := True;
  planilhaDIRECT.Priority := tpNormal;
  Timer1.Enabled := True;
  planilhaDIRECT.Start;
end;

procedure Tview_ImportarPedidos.Importar;
begin
  planilha := TThread_ImportarPedidosTFO.Create(True);
  planilha.FFile := edtArquivo.Text;
  planilha.iCodigoCliente := cboCliente.ItemIndex;
  planilha.FreeOnTerminate := True;
  planilha.Priority := tpNormal;
  Timer1.Enabled := True;
  planilha.Start;
end;

procedure Tview_ImportarPedidos.ImportarCarriers;
begin
  planilhaCarriers := Thread_ImportarPlanilhaEntradaCarriers.Create(True);
  planilhaCarriers.FFile := edtArquivo.Text;
  planilhaCarriers.iCodigoCliente := cboCliente.ItemIndex;
  planilhaCarriers.FreeOnTerminate := True;
  planilhaCarriers.Priority := tpNormal;
  Timer1.Enabled := True;
  planilhaCarriers.Start;
end;


procedure Tview_ImportarPedidos.ImportaRODOE;
begin
  planilhaSIMExpress := TThread_ImportarPedidosSIMEXpress.Create(True);
  planilhaSIMExpress.FFile := edtArquivo.Text;
  planilhaSIMExpress.iCodigoCliente := cboCliente.ItemIndex;
  planilhaSIMExpress.FreeOnTerminate := True;
  planilhaSIMExpress.Priority := tpNormal;
  Timer1.Enabled := True;
  planilhaSIMExpress.Start;
end;

procedure Tview_ImportarPedidos.ImportaSPLOG;
begin
  planilhaSPLOG := Thread_ImportarPlanilhaEntradaSPLOG.Create(True);
  planilhaSPLOG.FFile := edtArquivo.Text;
  planilhaSPLOG.iCodigoCliente := cboCliente.ItemIndex;
  planilhaSPLOG.FreeOnTerminate := True;
  planilhaSPLOG.Priority := tpNormal;
  Timer1.Enabled := True;
  planilhaSPLOG.Start;
end;

procedure Tview_ImportarPedidos.Timer1Timer(Sender: TObject);
begin
   case cboCliente.ItemIndex of
    1 : AtualizaLogTFO;
    4 : AtualizaLogDIRECT;
    5 : AtualizaLogSimExpress;
  else
    Application.MessageBox('Nenhum Cliente foi informado!', 'Aten��o', MB_OK + MB_ICONWARNING);
    Exit;
  end;
end;

procedure Tview_ImportarPedidos.VisualizarPlanilhas;
begin

  if edtArquivo.Text = '' then Exit;

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
