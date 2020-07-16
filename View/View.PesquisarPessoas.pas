unit View.PesquisarPessoas;

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
  dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TView_PesquisarPessoas = class(TForm)
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
    qryPesquisa: TdxMemData;
    procedure actFecharExecute(Sender: TObject);
    procedure actSelecionarExecute(Sender: TObject);
    procedure tvPesquisaCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
      AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure grdPesquisaEnter(Sender: TObject);
    procedure grdPesquisaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  View_PesquisarPessoas: TView_PesquisarPessoas;
  sSQL : String;
implementation

{$R *.dfm}

uses FireDAC.Comp.Client, Common.Utils, Global.Parametros, Data.SisGeF;

procedure TView_PesquisarPessoas.actFecharExecute(Sender: TObject);
begin
  ModalResult := mrClose;
end;

procedure TView_PesquisarPessoas.actSelecionarExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TView_PesquisarPessoas.grdPesquisaEnter(Sender: TObject);
begin
  if not qryPesquisa.IsEmpty then
  begin
    cxButton2.Default := True;
  end
  else
  begin
    cxButton2.Default := False;
  end;
end;

procedure TView_PesquisarPessoas.grdPesquisaExit(Sender: TObject);
begin
  cxButton2.Default := False;
end;

procedure TView_PesquisarPessoas.tvPesquisaCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  actSelecionarExecute(Sender);
end;

end.
