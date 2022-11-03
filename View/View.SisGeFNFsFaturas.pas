unit View.SisGeFNFsFaturas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, Vcl.ExtCtrls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Common.ENum,
  Common.Utils;

type
  Tview_SisGeFNFsFaturas = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    tipoData: TcxComboBox;
    dxLayoutItem1: TdxLayoutItem;
    dataInicial: TcxDateEdit;
    dxLayoutItem2: TdxLayoutItem;
    dataFinal: TcxDateEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    Panel1: TPanel;
    dxLayoutItem5: TdxLayoutItem;
    Panel2: TPanel;
    gridFaturasDBTableView1: TcxGridDBTableView;
    gridFaturasLevel1: TcxGridLevel;
    gridFaturas: TcxGrid;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    cxButton6: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    memTableFaturas: TFDMemTable;
    ds: TDataSource;
    memTableFaturascod_cadastro: TIntegerField;
    memTableFaturasCPFCNPJCadastro: TStringField;
    memTableFaturasnom_cadastro: TStringField;
    memTableFaturasnom_favorecido: TStringField;
    memTableFaturasnum_cpf_cnpj_favorecido: TStringField;
    memTableFaturasnom_razao_mei: TStringField;
    memTableFaturasnum_cnpj_mei: TStringField;
    memTableFaturasdat_vencimento: TDateField;
    memTableFaturasdat_envio: TDateField;
    memTableFaturasnom_arquivo: TStringField;
    memTableFaturasdes_localizacao_arquivo: TStringField;
    memTableFaturasdom_aceite: TBooleanField;
    memTableFaturasdom_credito: TBooleanField;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    gridFaturasDBTableView1cod_cadastro: TcxGridDBColumn;
    gridFaturasDBTableView1num_cnpj: TcxGridDBColumn;
    gridFaturasDBTableView1nom_cadastro: TcxGridDBColumn;
    gridFaturasDBTableView1nom_favorecido: TcxGridDBColumn;
    gridFaturasDBTableView1num_cpf_cnpj_favorecido: TcxGridDBColumn;
    gridFaturasDBTableView1nom_razao_mei: TcxGridDBColumn;
    gridFaturasDBTableView1num_cnpj_mei: TcxGridDBColumn;
    gridFaturasDBTableView1dat_vencimento: TcxGridDBColumn;
    gridFaturasDBTableView1dat_envio: TcxGridDBColumn;
    gridFaturasDBTableView1nom_arquivo: TcxGridDBColumn;
    gridFaturasDBTableView1des_localizacao_arquivo: TcxGridDBColumn;
    gridFaturasDBTableView1dom_aceite: TcxGridDBColumn;
    gridFaturasDBTableView1dom_credito: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  view_SisGeFNFsFaturas: Tview_SisGeFNFsFaturas;

implementation

{$R *.dfm}

uses Data.SisGeF;

end.
