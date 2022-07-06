unit View.DataFechamento;

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
  dxLayoutcxEditAdapters, cxLabel, Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  System.Actions, Vcl.ActnList, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  Tview_DataFechamento = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxLabel1: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    datPagamento: TcxDateEdit;
    dxLayoutItem2: TdxLayoutItem;
    aclDataFechamento: TActionList;
    actOK: TAction;
    actCancelar: TAction;
    cxButton1: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    procedure actOKExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
  private
    { Private declarations }
    function ValidaDados(): Boolean;
  public
    { Public declarations }
  end;

var
  view_DataFechamento: Tview_DataFechamento;

implementation

{$R *.dfm}

uses Data.SisGeF;

{ Tview_DataFechamento }

procedure Tview_DataFechamento.actCancelarExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tview_DataFechamento.actOKExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

function Tview_DataFechamento.ValidaDados: Boolean;
begin
  Result := False;
  if datPagamento.Text = '' then
  begin
    Application.MessageBox('Informe a data do pagamento!','Atenção', MB_OK + MB_ICONWARNING);
    Exit
  end;
  if datPagamento.Date < Now then
  begin
    Application.MessageBox('Data do pagamento inválida!','Atenção', MB_OK + MB_ICONWARNING);
    Exit
  end;
  Result := True;
end;

end.
