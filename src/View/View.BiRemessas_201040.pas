unit View.BiRemessas_201040;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, System.Actions, Vcl.ActnList, Vcl.Buttons, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxBar;

type
  Tview_BiRemessas = class(TForm)
    ationListBI: TActionList;
    actionNovoCenario: TAction;
    actionCarregarCenario: TAction;
    actionExcluirCenario: TAction;
    actionSalvarCenario: TAction;
    actionExecutarFiltro: TAction;
    actionFecharTela: TAction;
    actionExportarDados: TAction;
    barManagerBIRemessas: TdxBarManager;
    barManagerBIRemessasBar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    procedure actionFecharTelaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  view_BiRemessas: Tview_BiRemessas;

implementation

{$R *.dfm}

uses Data.SisGeF;

procedure Tview_BiRemessas.actionFecharTelaExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_BiRemessas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  view_BiRemessas := nil;
end;

end.
