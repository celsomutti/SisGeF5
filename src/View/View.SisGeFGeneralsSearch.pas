unit View.SisGeFGeneralsSearch;

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
  DAO.Conexao, service.SisGeFGeneralSearch;

type
  TviewGeneralSearch = class(TForm)
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
    actionLocalizar: TAction;
    mtbPesquisa: TFDMemTable;
    procedure actFecharExecute(Sender: TObject);
    procedure actSelecionarExecute(Sender: TObject);
    procedure tvPesquisaCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
      AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure grdPesquisaEnter(Sender: TObject);
    procedure grdPesquisaExit(Sender: TObject);
    procedure actionLocalizarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FConexao: TConexao;
    FCampos: string;
    FTabela: string;
    FCriterio: string;
    procedure PopulaPesquisa;
  public
    { Public declarations }
    property Campos: string read FCampos write FCampos;
    property Tabela: string read FTabela write FTabela;
    property Criterio: string read FCriterio write FCriterio;
  end;

var
  viewGeneralSearch: TviewGeneralSearch;
  fdQuery: TFDQuery;
implementation

{$R *.dfm}

uses Common.Utils, Global.Parametros, Data.SisGeF;

procedure TviewGeneralSearch.actFecharExecute(Sender: TObject);
begin
  ModalResult := mrClose;
end;

procedure TviewGeneralSearch.actionLocalizarExecute(Sender: TObject);
begin
  PopulaPesquisa;
end;

procedure TviewGeneralSearch.actSelecionarExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TviewGeneralSearch.FormShow(Sender: TObject);
begin
  PopulaPesquisa;
end;

procedure TviewGeneralSearch.grdPesquisaEnter(Sender: TObject);
begin
  if not mtbPesquisa.IsEmpty then
  begin
    cxButton2.Default := True;
  end
  else
  begin
    cxButton2.Default := False;
  end;
end;

procedure TviewGeneralSearch.grdPesquisaExit(Sender: TObject);
begin
  cxButton2.Default := False;
end;


procedure TviewGeneralSearch.PopulaPesquisa;
var
  FSearch : TSearch;
  aParam : array of string;
begin
  FSearch := TSearch.Create;
  SetLength(aParam,3);
  try
    mtbPesquisa.Active := False;
    aParam := [FCampos, FTabela, FCriterio];
    tvPesquisa.ClearItems;
    if not FSearch.ReturnSearch(aParam) then
    begin
      Application.MessageBox(PChar(FSearch.Mensagem),'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    mtbPesquisa.CopyDataSet(FSearch.Query, [coStructure, coRestart, coAppend]);
    tvPesquisa.DataController.CreateAllItems;
    grdPesquisa.SetFocus;
  finally
    Finalize(aParam);
    FSearch.Free;
  end;
end;

procedure TviewGeneralSearch.tvPesquisaCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  actSelecionarExecute(Sender);
end;

end.
