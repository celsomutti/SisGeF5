unit View.SisGeFCalendar;

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
  Tview_SisGeFCalendar = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    aclCalendario: TActionList;
    actionCloseForm: TAction;
    cxButton1: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    CalendarView1: TCalendarView;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    actionSelectionDay: TAction;
    cxButton2: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    procedure actionCloseFormExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actionSelectionDayExecute(Sender: TObject);
    procedure CalendarView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  view_SisGeFCalendar: Tview_SisGeFCalendar;

implementation

{$R *.dfm}

uses Data.SisGeF;

procedure Tview_SisGeFCalendar.actionCloseFormExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tview_SisGeFCalendar.actionSelectionDayExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure Tview_SisGeFCalendar.CalendarView1DblClick(Sender: TObject);
begin
  if CalendarView1.Date = 0 then
    Exit;
  actionSelectionDay.Execute;
end;

procedure Tview_SisGeFCalendar.FormShow(Sender: TObject);
begin
  CalendarView1.Date := Now();
end;

end.
