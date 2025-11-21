unit View.SisGeFCadastroEmpresas;

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
  TviewCadastroEmpresas = class(TForm)
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
    dxLayoutGroup1: TdxLayoutGroup;
    ntbEmpresas: TFDMemTable;
    ntbEmpresasid_cadastro: TIntegerField;
    ntbEmpresasdes_nome_razao: TStringField;
    ntbEmpresasnom_fantasia: TStringField;
    ntbEmpresasnum_cnpj: TStringField;
    ntbEmpresasnum_rg_ie: TStringField;
    ntbEmpresasdes_expedidor: TStringField;
    ntbEmpresasdat_emissao_rg: TDateField;
    ntbEmpresasuf_expedidor_rg: TStringField;
    ntbEmpresasdat_nascimento: TDateField;
    ntbEmpresasnom_pai: TStringField;
    ntbEmpresasnom_mae: TStringField;
    ntbEmpresasdes_nacionalidade: TStringField;
    ntbEmpresasdes_naturalidade: TStringField;
    ntbEmpresasuf_naturalidade: TStringField;
    ntbEmpresasnum_suframa: TStringField;
    ntbEmpresasnum_cnae: TStringField;
    ntbEmpresasnum_crt: TIntegerField;
    ntbEmpresascod_seguranca_cnh: TStringField;
    ntbEmpresascod_cnh: TStringField;
    ntbEmpresasnum_registro_cnh: TStringField;
    ntbEmpresasdat_validade_cnh: TDateField;
    ntbEmpresasdes_categoria: TStringField;
    ntbEmpresasdat_emissao_cnh: TDateField;
    ntbEmpresasdat_primeira_cnh: TDateField;
    ntbEmpresasuf_cnh: TStringField;
    ntbEmpresascod_sexo: TSmallintField;
    ntbEmpresasdes_estado_civil: TStringField;
    ntbEmpresasdat_cadastro: TDateField;
    ntbEmpresascod_usuario: TIntegerField;
    ntbEmpresasdes_imagem: TStringField;
    ntbEmpresasid_status: TIntegerField;
    ntbEmpresasdes_obs: TMemoField;
    ntbEmpresasnum_im: TStringField;
    ntbEmpresasnum_iest: TStringField;
    ntbEmpresasdes_tipo_doc: TStringField;
    procedure actLimparExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  viewCadastroEmpresas: TviewCadastroEmpresas;

implementation

{$R *.dfm}

procedure TviewCadastroEmpresas.actLimparExecute(Sender: TObject);
begin
  btePesquisar.Clear;
end;

procedure TviewCadastroEmpresas.actSairExecute(Sender: TObject);
begin
  Close;
end;

procedure TviewCadastroEmpresas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Self := nil;
end;

end.
