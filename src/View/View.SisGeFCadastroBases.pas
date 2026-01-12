unit View.SisGeFCadastroBases;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, Vcl.Menus, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutcxEditAdapters, cxContainer, cxTextEdit, dxOfficeSearchBox, cxMaskEdit,
  cxButtonEdit, System.Actions, Vcl.ActnList, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.StorageBin;

type
  TviewCadastroBases = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    lgpContainer: TdxLayoutGroup;
    lgpGrade: TdxLayoutGroup;
    lgpOptions: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    gridBasesDBTableView1: TcxGridDBTableView;
    gridBasesLevel1: TcxGridLevel;
    gridBases: TcxGrid;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    betSearch: TcxButtonEdit;
    dxLayoutItem3: TdxLayoutItem;
    aclBases: TActionList;
    actSearch: TAction;
    actExit: TAction;
    dsBases: TDataSource;
    mtbBases: TFDMemTable;
    mtbBasescod_agente: TIntegerField;
    mtbBasesdes_razao_social: TStringField;
    mtbBasesnom_fantasia: TStringField;
    mtbBasesdes_tipo_doc: TStringField;
    mtbBasesnum_cnpj: TStringField;
    mtbBasesnum_ie: TStringField;
    mtbBasesnum_iest: TStringField;
    mtbBasesnum_im: TStringField;
    mtbBasescod_cnae: TStringField;
    mtbBasescod_crt: TIntegerField;
    mtbBasesnum_cnh: TStringField;
    mtbBasesdes_categoria_cnh: TStringField;
    mtbBasesdat_validade_cnh: TDateField;
    mtbBasesdes_pagina: TStringField;
    mtbBasescod_status: TIntegerField;
    mtbBasesdes_observacao: TMemoField;
    mtbBasesdat_cadastro: TDateField;
    mtbBasesdat_alteracao: TDateTimeField;
    mtbBasesval_verba: TFloatField;
    mtbBasesdes_tipo_conta: TStringField;
    mtbBasescod_banco: TStringField;
    mtbBasescod_agencia: TStringField;
    mtbBasesnum_conta: TStringField;
    mtbBasesnom_favorecido: TStringField;
    mtbBasesnum_cpf_cnpj_favorecido: TStringField;
    mtbBasesdes_forma_pagamento: TStringField;
    mtbBasescod_centro_custo: TIntegerField;
    mtbBasescod_grupo: TIntegerField;
    mtbBasesdes_chave: TStringField;
    mtbBasescod_tabela: TIntegerField;
    gridBasesDBTableView1cod_agente: TcxGridDBColumn;
    gridBasesDBTableView1des_razao_social: TcxGridDBColumn;
    gridBasesDBTableView1nom_fantasia: TcxGridDBColumn;
    gridBasesDBTableView1des_tipo_doc: TcxGridDBColumn;
    gridBasesDBTableView1num_cnpj: TcxGridDBColumn;
    gridBasesDBTableView1num_ie: TcxGridDBColumn;
    gridBasesDBTableView1num_iest: TcxGridDBColumn;
    gridBasesDBTableView1num_im: TcxGridDBColumn;
    gridBasesDBTableView1cod_cnae: TcxGridDBColumn;
    gridBasesDBTableView1cod_crt: TcxGridDBColumn;
    gridBasesDBTableView1num_cnh: TcxGridDBColumn;
    gridBasesDBTableView1des_categoria_cnh: TcxGridDBColumn;
    gridBasesDBTableView1dat_validade_cnh: TcxGridDBColumn;
    gridBasesDBTableView1des_pagina: TcxGridDBColumn;
    gridBasesDBTableView1cod_status: TcxGridDBColumn;
    gridBasesDBTableView1des_observacao: TcxGridDBColumn;
    gridBasesDBTableView1dat_cadastro: TcxGridDBColumn;
    gridBasesDBTableView1dat_alteracao: TcxGridDBColumn;
    gridBasesDBTableView1val_verba: TcxGridDBColumn;
    gridBasesDBTableView1des_tipo_conta: TcxGridDBColumn;
    gridBasesDBTableView1cod_banco: TcxGridDBColumn;
    gridBasesDBTableView1cod_agencia: TcxGridDBColumn;
    gridBasesDBTableView1num_conta: TcxGridDBColumn;
    gridBasesDBTableView1nom_favorecido: TcxGridDBColumn;
    gridBasesDBTableView1num_cpf_cnpj_favorecido: TcxGridDBColumn;
    gridBasesDBTableView1des_forma_pagamento: TcxGridDBColumn;
    gridBasesDBTableView1cod_centro_custo: TcxGridDBColumn;
    gridBasesDBTableView1cod_grupo: TcxGridDBColumn;
    gridBasesDBTableView1des_chave: TcxGridDBColumn;
    gridBasesDBTableView1cod_tabela: TcxGridDBColumn;
    dxLayoutGroup2: TdxLayoutGroup;
    cxButton2: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    actNew: TAction;
    actEdit: TAction;
    actExport: TAction;
    cxButton3: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actExitExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  viewCadastroBases: TviewCadastroBases;

implementation


{$R *.dfm}

uses Data.SisGeF;

procedure TviewCadastroBases.actExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TviewCadastroBases.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  viewCadastroBases := nil;
end;

end.
