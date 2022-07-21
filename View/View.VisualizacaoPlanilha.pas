unit View.VisualizacaoPlanilha;

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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutContainer, cxLabel, cxClasses,
  dxLayoutControl, System.Actions, Vcl.ActnList, dxLayoutControlAdapters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGridExportLink, ShellAPI, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  Tview_VisualizacaoPlanilhas = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxLabel1: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    aclVisualizacao: TActionList;
    actFechar: TAction;
    tvPlanilha: TcxGridDBTableView;
    lvPlanilha: TcxGridLevel;
    grdPlanilha: TcxGrid;
    dxLayoutItem2: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    ds: TDataSource;
    SaveDialog: TSaveDialog;
    labelFile: TcxLabel;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    actionExpand: TAction;
    actionCollapse: TAction;
    actionPanel: TAction;
    cxButton2: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    cxButton5: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    actionExport: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actFecharExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actionCollapseExecute(Sender: TObject);
    procedure actionExpandExecute(Sender: TObject);
    procedure actionPanelExecute(Sender: TObject);
    procedure actionExportExecute(Sender: TObject);
  private
    { Private declarations }
    procedure ExportarDados;
  public
    { Public declarations }
    FFile: String;
  end;

var
  view_VisualizacaoPlanilhas: Tview_VisualizacaoPlanilhas;
  sFileExt : String;

implementation

{$R *.dfm}

uses Data.SisGeF, Common.Utils;

procedure Tview_VisualizacaoPlanilhas.actFecharExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure Tview_VisualizacaoPlanilhas.actionCollapseExecute(Sender: TObject);
begin
  tvPlanilha.ViewData.Collapse(True);
end;

procedure Tview_VisualizacaoPlanilhas.actionExpandExecute(Sender: TObject);
begin
  tvPlanilha.ViewData.Expand(True);
end;

procedure Tview_VisualizacaoPlanilhas.actionExportExecute(Sender: TObject);
begin
  ExportarDados;
end;

procedure Tview_VisualizacaoPlanilhas.actionPanelExecute(Sender: TObject);
begin
  tvPlanilha.OptionsView.GroupByBox := not tvPlanilha.OptionsView.GroupByBox;
end;

procedure Tview_VisualizacaoPlanilhas.ExportarDados;
var
  fnUtil : Common.Utils.TUtils;
  sMensagem: String;
begin
  try
    fnUtil := Common.Utils.TUtils.Create;

    if tvPlanilha.ViewData.RowCount = 0 then Exit;

    if Data_Sisgef.SaveDialog.Execute() then
    begin
      if FileExists(Data_Sisgef.SaveDialog.FileName) then
      begin
        sMensagem := 'Arquivo ' + Data_Sisgef.SaveDialog.FileName + ' já existe! Sobrepor ?';
        if Application.MessageBox(PChar(sMensagem), 'Sobrepor', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit
      end;

      fnUtil.ExportarDados(grdPlanilha,Data_Sisgef.SaveDialog.FileName);

    end;
  finally
    fnUtil.Free;
  end;
end;

procedure Tview_VisualizacaoPlanilhas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ds.DataSet.Active := False;
  Action := caFree;
  view_VisualizacaoPlanilhas := nil;
end;

procedure Tview_VisualizacaoPlanilhas.FormShow(Sender: TObject);
begin
  tvPlanilha.DataController.CreateAllItems;
end;

end.
