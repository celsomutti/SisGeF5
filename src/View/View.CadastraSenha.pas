unit View.CadastraSenha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxTextEdit, cxLabel, cxCheckBox,
  Vcl.ActnList, Vcl.ImgList, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxGroupBox, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, System.Actions, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light;

type
  Tview_CadastraSenha = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxSenha: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxConfirmaSenha: TcxTextEdit;
    cxPrimeiroAcesso: TcxCheckBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    aclCadastraSenha: TActionList;
    actCadastraSenhaCadastrar: TAction;
    actCadastraSenhaCancelar: TAction;
    procedure actCadastraSenhaCadastrarExecute(Sender: TObject);
    procedure actCadastraSenhaCancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  view_CadastraSenha: Tview_CadastraSenha;

implementation

{$R *.dfm}

uses Common.Utils, Data.SisGeF;


procedure Tview_CadastraSenha.actCadastraSenhaCadastrarExecute(Sender: TObject);
begin
  if Common.Utils.TUtils.Empty(cxSenha.Text) then
  begin
    Application.MessageBox('Informe a Senha do Usu�rio!', 'Aten��o', MB_OK + MB_ICONEXCLAMATION);
    cxSenha.SetFocus;
    Exit;
  end;
  if Common.Utils.TUtils.Empty(cxConfirmaSenha.Text) then
  begin
    Application.MessageBox('Informe a Senha do Usu�rio!', 'Aten��o',
      MB_OK + MB_ICONEXCLAMATION);
    cxConfirmaSenha.SetFocus;
    Exit;
  end;
  if cxConfirmaSenha.Text <> cxSenha.Text then
  begin
    Application.MessageBox('Confirma��o N�o Confere com a Senha!', 'Aten��o',
      MB_OK + MB_ICONEXCLAMATION);
    cxConfirmaSenha.SetFocus;
    Exit;
  end;
  ModalResult := mrOk;
end;

procedure Tview_CadastraSenha.actCadastraSenhaCancelarExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
