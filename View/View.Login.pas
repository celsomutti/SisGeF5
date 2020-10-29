unit View.Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DAO.Usuarios, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxLabel, cxTextEdit, System.Actions, Vcl.ActnList, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons;

type
  Tview_Login = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxLabel1: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    txtLogin: TcxTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    txtSenha: TcxTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    aclLogin: TActionList;
    actLogar: TAction;
    actCancelar: TAction;
    cxButton1: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    lblSistema: TcxLabel;
    dxLayoutItem6: TdxLayoutItem;
    procedure actLogarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure txtSenhaEnter(Sender: TObject);
    procedure txtSenhaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  view_Login: Tview_Login;

implementation

{$R *.dfm}

uses Common.Utils, Global.Parametros, Data.SisGeF;

procedure Tview_Login.actCancelarExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tview_Login.actLogarExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure Tview_Login.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;
end;

procedure Tview_Login.txtSenhaEnter(Sender: TObject);
begin
  if txtLogin.Text <> '' then cxButton1.Default := True;
end;

procedure Tview_Login.txtSenhaExit(Sender: TObject);
begin
  cxButton1.Default := False;
end;

end.
