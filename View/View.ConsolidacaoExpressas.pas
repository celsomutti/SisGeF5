unit View.ConsolidacaoExpressas;

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
  dxLayoutcxEditAdapters, cxLabel, Data.DB, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, System.Actions, Vcl.ActnList,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxImageComboBox, cxMaskEdit, cxCurrencyEdit, cxTextEdit,
  Control.FechamentoExpressas, cxGridExportLink, ShellAPI, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tview_ConsolidacaoExpressas = class(TForm)
    dxLayoutControlGroup_Root: TdxLayoutGroup;
    dxLayoutControl: TdxLayoutControl;
    labelTitle: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    labelStatus: TcxLabel;
    dxLayoutItem2: TdxLayoutItem;
    dsFechamento: TDataSource;
    tvFechamento: TcxGridDBTableView;
    lvFechamento: TcxGridLevel;
    gridFechamento: TcxGrid;
    layoutGrid: TdxLayoutItem;
    tvFechamentocod_expressa: TcxGridDBColumn;
    tvFechamentoqtd_volumes: TcxGridDBColumn;
    tvFechamentoqtd_entregas: TcxGridDBColumn;
    tvFechamentoqtd_volumes_extra: TcxGridDBColumn;
    tvFechamentoval_volume_extra: TcxGridDBColumn;
    tvFechamentoqtd_atraso: TcxGridDBColumn;
    tvFechamentoval_producao: TcxGridDBColumn;
    tvFechamentoval_performance: TcxGridDBColumn;
    tvFechamentoval_total_ticket: TcxGridDBColumn;
    tvFechamentocod_tipo_expressa: TcxGridDBColumn;
    tvFechamentonom_expressa: TcxGridDBColumn;
    tvFechamentonom_banco: TcxGridDBColumn;
    tvFechamentodes_tipo_conta: TcxGridDBColumn;
    tvFechamentonum_agencia: TcxGridDBColumn;
    tvFechamentonum_conta: TcxGridDBColumn;
    tvFechamentonom_favorecido: TcxGridDBColumn;
    tvFechamentonum_cpf_cnpj: TcxGridDBColumn;
    tvFechamentoqtd_pfp: TcxGridDBColumn;
    tvFechamentoval_ticket_medio: TcxGridDBColumn;
    tvFechamentoval_extravios: TcxGridDBColumn;
    tvFechamentoval_debitos: TcxGridDBColumn;
    tvFechamentoval_creditos: TcxGridDBColumn;
    tvFechamentoval_total: TcxGridDBColumn;
    actionListConsolidacao: TActionList;
    actionFechar: TAction;
    actionGravar: TAction;
    buttonGravar: TcxButton;
    layoutbuttonGravar: TdxLayoutItem;
    buttonFechar: TcxButton;
    layoutBottonFechar: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    SaveDialog: TSaveDialog;
    tvFechamentodat_inicio: TcxGridDBColumn;
    tvFechamentodat_fim: TcxGridDBColumn;
    tvFechamentocod_banco: TcxGridDBColumn;
    tvFechamentodes_unique_key: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure actionFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tvFechamentoNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure actionGravarExecute(Sender: TObject);
  private
    { Private declarations }
    procedure SalvaDados;
    procedure Exportar;
  public
    { Public declarations }
  end;

var
  view_ConsolidacaoExpressas: Tview_ConsolidacaoExpressas;

implementation

{$R *.dfm}

uses Data.SisGeF;

procedure Tview_ConsolidacaoExpressas.actionFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_ConsolidacaoExpressas.actionGravarExecute(Sender: TObject);
begin
  SalvaDados;
end;

procedure Tview_ConsolidacaoExpressas.Exportar;
var
  FileExt, sFile: String;
begin
  if not (Data_Sisgef.mtbExtratosExpressas.Active) then
  begin
    Exit;
  end;
  if Data_Sisgef.mtbExtratosExpressas.IsEmpty then
  begin
    Exit;
  end;
  sFile := 'extrato_expressas_consolidado';
  SaveDialog.FileName := sFile;
  SaveDialog.Filter := '';
  SaveDialog.Filter := 'Excel (*.xls) |*.xls|XML (*.xml) |*.xml|Arquivo Texto (*.txt) |*.txt|Página Web (*.html)|*.html';
  SaveDialog.Title := 'Exportar Dados';
  SaveDialog.DefaultExt := 'xls';
  if SaveDialog.Execute then
  begin
    if FileExists(SaveDialog.FileName) then
    begin
      if Application.MessageBox(PChar('Arquivo ' + SaveDialog.FileName + ' já existe! Sobrepor ?'), 'Atenção', MB_YESNO + MB_ICONQUESTION)  = IDNO then
      begin
        Exit;
      end;
    end;
    FileExt := LowerCase(ExtractFileExt(SaveDialog.FileName));
    if FileExt = '.xls' then
      ExportGridToExcel(SaveDialog.FileName, gridFechamento, True, True, True)
    else if FileExt = '.xml' then
      ExportGridToXML(SaveDialog.FileName, gridFechamento, False)
    else if FileExt = '.txt' then
      ExportGridToText(SaveDialog.FileName, gridFechamento, False)
    else if FileExt = '.html' then
      ExportGridToHTML(SaveDialog.FileName, gridFechamento, False);
    ShellExecute(Handle, 'open', pchar(SaveDialog.FileName), nil, nil, SW_SHOW);
  end;
end;

procedure Tview_ConsolidacaoExpressas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Data_Sisgef.mtbFechamentoExpressas.Active then Data_Sisgef.mtbFechamentoExpressas.Close;
  Action := caFree;
  view_ConsolidacaoExpressas := nil;
end;

procedure Tview_ConsolidacaoExpressas.FormShow(Sender: TObject);
begin
  labelTitle.Caption := Self.Caption;
end;

procedure Tview_ConsolidacaoExpressas.SalvaDados;
var
  FFechamento : TFechamentoExpressasControl;
begin
  try
    FFechamento := TFechamentoExpressasControl.Create;
    if FFechamento.FechamentoExiste(Data_Sisgef.mtbFechamentoExpressasdes_unique_key.AsString) then
    begin
      Application.MessageBox('Consolidação já está gravada no banco de dados!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if not FFechamento.SaveDB(Data_Sisgef.mtbFechamentoExpressas) then
    begin
      Application.MessageBox('Consolidação NÃO foi gravada no banco de dados!', 'Atenção', MB_OK + MB_ICONWARNING);
    end
    else
    begin
      Application.MessageBox('Consolidação gravada no banco de dados!', 'Gravação', MB_OK + MB_ICONINFORMATION);
    end;
  finally
    FFechamento.Free;
  end;
end;

procedure Tview_ConsolidacaoExpressas.tvFechamentoNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer;
  var ADone: Boolean);
begin
  case AButtonIndex of
    16: Exportar;
  end;
end;

end.
