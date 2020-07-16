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
  cxGridTableView, cxGridDBTableView, cxGrid, cxGridExportLink, ShellAPI;

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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actFecharExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tvPlanilhaNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
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

procedure Tview_VisualizacaoPlanilhas.ExportarDados;
begin
  SaveDialog.Filter := '';
  SaveDialog.Filter := 'Excel (*.xls) |*.xls|XML (*.xml) |*.xml|Arquivo Texto (*.txt) |*.txt|Página Web (*.html)|*.html';
  SaveDialog.Title := 'Exportar Dados';
  SaveDialog.DefaultExt := 'xls';
  if SaveDialog.Execute then
  begin
    TUtils.ExportarDados(grdPlanilha, SaveDialog.FileName);
  end;
end;

procedure Tview_VisualizacaoPlanilhas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Data_Sisgef.FDBatchMove.Mappings.Clear;
  Data_Sisgef.FDBTextReader.DataDef.Fields.Clear;
  if Data_Sisgef.mtbPlanilhas.Active then
  begin
    Data_Sisgef.mtbPlanilhas.Close;
  end;
  Action := caFree;
  view_VisualizacaoPlanilhas := nil;
end;

procedure Tview_VisualizacaoPlanilhas.FormShow(Sender: TObject);
begin
  sFileExt := LowerCase(ExtractFileExt(FFile));
  if sFileExt = '.txt' then
  begin
    Data_Sisgef.FDBTextReader.DataDef.Separator := #9;
  end
  else if sFileExt = '.csv' then
  begin
    Data_Sisgef.FDBTextReader.DataDef.Separator := ';';
  end
  else
  begin
    Application.MessageBox('Tipo de arquivo não suportado (diferente de TXT ou CSV)!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    actFecharExecute(Sender);
    Exit;
  end;
  Data_SisGeF.FDBatchMove.Mappings.Clear;
  Data_Sisgef.FDBDataSetWriter.DataSet := Data_Sisgef.mtbPlanilhas;
  Data_Sisgef.FDBTextReader.FileName := FFile;
  Data_Sisgef.FDBTextReader.DataDef.WithFieldNames := True;
  if sFileExt = '.txt' then Data_Sisgef.FDBatchMove.GuessFormat;
  //Data_SisGeF.FDBatchMove.Mappings.AddAll;
  Data_Sisgef.mtbPlanilhas.Open;
  Data_Sisgef.mtbPlanilhas.Edit;
  Data_Sisgef.mtbPlanilhas.ClearFields;
  Data_Sisgef.mtbPlanilhas.Close;
  Data_Sisgef.FDBatchMove.Execute;
  tvPlanilha.ClearItems;
  tvPlanilha.DataController.CreateAllItems;
  if not Data_Sisgef.mtbPlanilhas.IsEmpty then Data_Sisgef.mtbPlanilhas.First;
end;

procedure Tview_VisualizacaoPlanilhas.tvPlanilhaNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer;
  var ADone: Boolean);
begin
  case AButtonIndex of
    16: ExportarDados;
  end;
end;

end.
