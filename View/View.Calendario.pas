unit View.Calendario;

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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxClasses, dxLayoutContainer, dxLayoutControl, cxStyles, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerDateNavigator, System.Actions, Vcl.ActnList, cxContainer, cxDateNavigator,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.WinXCalendars, cxCalendar, Vcl.ExtCtrls, dxLayoutcxEditAdapters,
  cxEdit, cxLabel, Vcl.WinXCtrls;

type
  Tview_Calendario = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    aclCalendario: TActionList;
    acFechar: TAction;
    cxButton1: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    CalendarView1: TCalendarView;
    dxLayoutItem1: TdxLayoutItem;
    Timer: TTimer;
    cxLabel1: TcxLabel;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    ActivityIndicator1: TActivityIndicator;
    dxLayoutItem4: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acFecharExecute(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  view_Calendario: Tview_Calendario;

implementation

{$R *.dfm}

uses Data.SisGeF;

procedure Tview_Calendario.acFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_Calendario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  view_Calendario := Nil;
end;

procedure Tview_Calendario.FormShow(Sender: TObject);
begin
  CalendarView1.Date := Now();
  cxLabel1.Caption := FormatDateTime('hh:mm:ss', Now());
  ActivityIndicator1.Animate := True;
end;

procedure Tview_Calendario.TimerTimer(Sender: TObject);
begin
  cxLabel1.Caption := FormatDateTime('hh:mm:ss', Now());
end;

end.
