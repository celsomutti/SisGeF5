unit View.SisGeFGeneralSearch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxLayoutContainer, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit,
  cxGroupBox, cxCheckBox, cxTextEdit, cxMaskEdit, System.Actions, Vcl.ActnList, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxCheckListBox, cxRadioGroup, cxDropDownEdit, dxmdaset, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Control.Bases,
  DAO.Conexao;

type
  Tview_SisGefGeneralSearch = class(TForm)
    lcPesquisaGroup_Root: TdxLayoutGroup;
    lcPesquisa: TdxLayoutControl;
    actPesquisar: TActionList;
    tvPesquisa: TcxGridDBTableView;
    lvPesquisa: TcxGridLevel;
    grdPesquisa: TcxGrid;
    lcPesquisaItem2: TdxLayoutItem;
    actSelecionar: TAction;
    actFechar: TAction;
    cxButton2: TcxButton;
    lcPesquisaItem4: TdxLayoutItem;
    lcPesquisaGroup1: TdxLayoutAutoCreatedGroup;
    cxButton3: TcxButton;
    lcPesquisaItem5: TdxLayoutItem;
    dsPesquisa: TDataSource;
    textEditPesquisar: TcxTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    actionLocalizar: TAction;
    cxButton1: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    actionExpandGrid: TAction;
    actionRetractGrid: TAction;
    actionPanelGroups: TAction;
    cxButton4: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    cxButton5: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    cxButton6: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    memTablePesquisa: TFDMemTable;
    procedure actFecharExecute(Sender: TObject);
    procedure actSelecionarExecute(Sender: TObject);
    procedure tvPesquisaCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
      AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure grdPesquisaEnter(Sender: TObject);
    procedure grdPesquisaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actionLocalizarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actionPanelGroupsExecute(Sender: TObject);
    procedure actionRetractGridExecute(Sender: TObject);
    procedure actionExpandGridExecute(Sender: TObject);
  private
    { Private declarations }
    FConexao: TConexao;
    procedure PopulaPesquisa;
  public
    { Public declarations }
    sSQL : String;
    sWhere: String;
    bOpen: boolean;
  end;

var
  view_SisGefGeneralSearch: Tview_SisGefGeneralSearch;
  fdQuery: TFDQuery;
implementation

{$R *.dfm}

uses Common.Utils, Global.Parametros, Data.SisGeF;

procedure Tview_SisGefGeneralSearch.actFecharExecute(Sender: TObject);
begin
  ModalResult := mrClose;
end;

procedure Tview_SisGefGeneralSearch.actionExpandGridExecute(Sender: TObject);
begin
  tvPesquisa.ViewData.Expand(False);
end;

procedure Tview_SisGefGeneralSearch.actionLocalizarExecute(Sender: TObject);
begin
  PopulaPesquisa;
end;

procedure Tview_SisGefGeneralSearch.actionPanelGroupsExecute(Sender: TObject);
begin
  tvPesquisa.OptionsView.GroupByBox := (not tvPesquisa.OptionsView.GroupByBox);
end;

procedure Tview_SisGefGeneralSearch.actionRetractGridExecute(Sender: TObject);
begin
  tvPesquisa.ViewData.Collapse(False);
end;

procedure Tview_SisGefGeneralSearch.actSelecionarExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure Tview_SisGefGeneralSearch.FormCreate(Sender: TObject);
begin
  FConexao := TConexao.Create;
end;

procedure Tview_SisGefGeneralSearch.FormDestroy(Sender: TObject);
begin
  FConexao.Free;
end;

procedure Tview_SisGefGeneralSearch.FormShow(Sender: TObject);
begin
  if bOpen then
  begin
    actionLocalizarExecute(Sender);
  end;
end;

procedure Tview_SisGefGeneralSearch.grdPesquisaEnter(Sender: TObject);
begin
  if not memtablePesquisa.IsEmpty then
  begin
    cxButton2.Default := True;
  end
  else
  begin
    cxButton2.Default := False;
  end;
end;

procedure Tview_SisGefGeneralSearch.grdPesquisaExit(Sender: TObject);
begin
  cxButton2.Default := False;
end;


procedure Tview_SisGefGeneralSearch.PopulaPesquisa;
var
  sConsulta: String;
  sWhere1: String;
begin
  try
    sConsulta := '';
    sWhere1 := '';
    if textEditPesquisar.Text = '' then
    begin
      sConsulta := sSQL;
    end
    else
    begin
      sWhere1 := StringReplace(swhere,'param',textEditPesquisar.Text,[rfReplaceAll]);
      if TUtils.ENumero(textEditPesquisar.Text) then
      begin
        sWhere1 := StringReplace(swhere1,'paraN',textEditPesquisar.Text,[rfReplaceAll]);
      end
      else
      begin
        sWhere1 := StringReplace(swhere1,'paraN','0',[rfReplaceAll]);
      end;
      sConsulta := sSQL + sWhere1;
    end;
    fdQuery := FConexao.ReturnQuery;
    fdQuery.SQL.Text := sConsulta;
    fdQuery.Open();
    if memtablePesquisa.Active then memtablePesquisa.Close;
    if not fdQuery.IsEmpty then
    begin
      memtablePesquisa.Data := fdQuery;
      if not memTablePesquisa.IsEmpty then memtablePesquisa.First;
      tvPesquisa.ClearItems;
      tvPesquisa.DataController.CreateAllItems;
      if tvPesquisa.ColumnCount <= 3 then
        tvPesquisa.OptionsView.ColumnAutoWidth := True
      else
        tvPesquisa.OptionsView.ColumnAutoWidth := False;
      grdPesquisa.SetFocus;
    end;
  finally
    fdQuery.Close;
    fdQuery.Connection.Close;
    fdQuery.Free;
  end;
end;

procedure Tview_SisGefGeneralSearch.tvPesquisaCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  actSelecionarExecute(Sender);
end;

end.
