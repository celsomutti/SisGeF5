unit View.EnvioRespostaCTNC;

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
  dxLayoutcxEditAdapters, cxLabel, Common.ENum, Control.CCEPDistribuidor, Control.ContatosBases, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxTextEdit, cxMaskEdit, cxButtonEdit, System.Actions, Vcl.ActnList,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxMemo, ShellAPI, cxProgressBar, cxDBProgressBar,
  RoB.EnvioEmailResposta, Thread.ImportaRespostasCTNC, cxListBox;

type
  Tview_EnvioRespostaCTNC = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxLabel1: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    dsREspostas: TDataSource;
    edtArquivo: TcxButtonEdit;
    dxLayoutItem2: TdxLayoutItem;
    aclrespostas: TActionList;
    actAbrir: TAction;
    actVisualizar: TAction;
    OpenDialog: TOpenDialog;
    actImportar: TAction;
    cxButton1: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    memLOG: TcxMemo;
    dxLayoutItem4: TdxLayoutItem;
    actEnviar: TAction;
    actFechar: TAction;
    cxButton2: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    pbImportacao: TcxDBProgressBar;
    dxLayoutItem7: TdxLayoutItem;
    lAnexos: TcxListBox;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    procedure actAbrirExecute(Sender: TObject);
    procedure actVisualizarExecute(Sender: TObject);
    procedure actEnviarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actFecharExecute(Sender: TObject);
    procedure actImportarExecute(Sender: TObject);
  private
    { Private declarations }
    procedure AbreArquivo;
    procedure VisualizarPlanilha;
    procedure Importar(sFile: String);
    procedure EnviarResposta;
  public
    { Public declarations }
    procedure LOG(sTexto: String);
  end;

var
  view_EnvioRespostaCTNC: Tview_EnvioRespostaCTNC;
  planilha : Thread_ImportaRespostasCTNC;
  robEnvio : TEnvioEmailRespostasRoB;
implementation

{$R *.dfm}

uses Data.SisGeF, Common.Utils, Global.Parametros, View.VisualizacaoPlanilha;

{ Tview_EnvioRespostaCTNC }

procedure Tview_EnvioRespostaCTNC.AbreArquivo;
begin
  edtArquivo.Clear;
  if OpenDialog.Execute then
  begin
    edtArquivo.Text := OpenDialog.FileName;
  end;
end;

procedure Tview_EnvioRespostaCTNC.actAbrirExecute(Sender: TObject);
begin
  AbreArquivo;
end;

procedure Tview_EnvioRespostaCTNC.actEnviarExecute(Sender: TObject);
begin
  if Application.MessageBox('Confirma enviar os e-mails?', 'Enviar', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;
  EnviarResposta;
end;

procedure Tview_EnvioRespostaCTNC.actFecharExecute(Sender: TObject);
begin
  Perform(WM_CLOSE, 0, 0);
end;

procedure Tview_EnvioRespostaCTNC.actImportarExecute(Sender: TObject);
begin
  Importar(edtArquivo.Text);
end;

procedure Tview_EnvioRespostaCTNC.actVisualizarExecute(Sender: TObject);
begin
  VisualizarPlanilha;
end;

procedure Tview_EnvioRespostaCTNC.EnviarResposta;
begin
  try
    robEnvio := TEnvioEmailRespostasRoB.Create;
    If robEnvio.EnviaEmailsRespostas() then
    begin
      Application.MessageBox('Processo concluído.', 'Atenção', MB_OK + MB_ICONINFORMATION);
      actEnviar.Enabled := False;
    end;
  finally
    robEnvio.Free;
  end;
end;

procedure Tview_EnvioRespostaCTNC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  view_EnvioRespostaCTNC := nil;
end;

procedure Tview_EnvioRespostaCTNC.Importar(sFile: String);
begin
  if Application.MessageBox('Confirma importar esta planilha?', 'Importar', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;
  planilha := Thread_ImportaRespostasCTNC.Create(True);
  planilha.FFile := edtArquivo.Text;
  planilha.FreeOnTerminate := True;
  planilha.Priority := tpNormal;
  planilha.Start;
end;

procedure Tview_EnvioRespostaCTNC.LOG(sTexto: String);
begin
  if sTexto = 'clear' then
  begin
    memLOG.Lines.Clear;
    Exit;
  end;
  memLOG.Lines.Add(sTexto);
end;

procedure Tview_EnvioRespostaCTNC.VisualizarPlanilha;
var
  sFileExt: String;
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
