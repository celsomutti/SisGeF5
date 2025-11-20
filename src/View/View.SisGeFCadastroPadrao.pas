unit View.SisGeFCadastroPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, Data.SisGeF, dxBar, System.Actions, Vcl.ActnList,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, Vcl.StdCtrls,
  Vcl.Menus, cxButtons, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TviewCadastroPadrao = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    aclCadastro: TActionList;
    actNovo: TAction;
    actEditar: TAction;
    actCancelar: TAction;
    actSair: TAction;
    actExportar: TAction;
    actGravar: TAction;
    actPesquisar: TAction;
    lgpContainer: TdxLayoutGroup;
    lgpFooter: TdxLayoutGroup;
    lcpTable: TdxLayoutGroup;
    lgpPesquisa: TdxLayoutGroup;
    lgpParametros: TdxLayoutGroup;
    btePesquisar: TcxButtonEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    actLimpar: TAction;
    cxButton2: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    lgpContainerGrade: TdxLayoutGroup;
    lpgGrade: TdxLayoutGroup;
    lpgButtonsGrade: TdxLayoutGroup;
    cxButton3: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    gridPesquisaDBTableView1: TcxGridDBTableView;
    gridPesquisaLevel1: TcxGridLevel;
    gridPesquisa: TcxGrid;
    dxLayoutItem5: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    cxButton5: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    mtbCadastro: TFDMemTable;
    mtbCadastrocod_cliente: TIntegerField;
    mtbCadastrodes_razao_social: TStringField;
    mtbCadastronom_fantasia: TStringField;
    mtbCadastrodes_tipo_doc: TStringField;
    mtbCadastronum_cnpj: TStringField;
    mtbCadastrocod_cnae: TStringField;
    mtbCadastrocod_crt: TIntegerField;
    mtbCadastrocod_status: TIntegerField;
    mtbCadastrodes_observacao: TMemoField;
    mtbCadastrodat_cadastro: TDateTimeField;
    mtbCadastrocod_empresa: TIntegerField;
    procedure actLimparExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  viewCadastroPadrao: TviewCadastroPadrao;

implementation

{$R *.dfm}

procedure TviewCadastroPadrao.actLimparExecute(Sender: TObject);
begin
  btePesquisar.Clear;
end;

procedure TviewCadastroPadrao.actSairExecute(Sender: TObject);
begin
  Close;
end;

procedure TviewCadastroPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Self := nil;
end;

end.
