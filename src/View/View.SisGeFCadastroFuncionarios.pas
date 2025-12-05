unit View.SisGeFCadastroFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  Vcl.ExtCtrls, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, System.Actions, Vcl.ActnList, cxMaskEdit, cxButtonEdit, Vcl.Mask, Vcl.DBCtrls,
  cxDBEdit, cxDropDownEdit, cxImageComboBox, cxCalendar, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMemo;

type
  TviewCadastroFuncionarios = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    lgpHeader: TdxLayoutGroup;
    cxLabel1: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    Shape1: TShape;
    dxLayoutItem2: TdxLayoutItem;
    lbgTabbed: TdxLayoutGroup;
    lgpFooter: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    lgpPesquisa: TdxLayoutGroup;
    lgpParametros: TdxLayoutGroup;
    cxButton2: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    lgpGRid: TdxLayoutGroup;
    lgpActions: TdxLayoutGroup;
    cxButton3: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    gridPesquisaDBTableView1: TcxGridDBTableView;
    gridPesquisaLevel1: TcxGridLevel;
    gridPesquisa: TcxGrid;
    dxLayoutItem7: TdxLayoutItem;
    dsEmploye: TDataSource;
    gridPesquisaDBTableView1cod_cadastro: TcxGridDBColumn;
    gridPesquisaDBTableView1dom_pessoa: TcxGridDBColumn;
    gridPesquisaDBTableView1des_tipo_doc: TcxGridDBColumn;
    gridPesquisaDBTableView1nom_razao_social: TcxGridDBColumn;
    gridPesquisaDBTableView1nom_fantasia_alias: TcxGridDBColumn;
    gridPesquisaDBTableView1num_cpf_cnpj: TcxGridDBColumn;
    gridPesquisaDBTableView1num_rg_ie: TcxGridDBColumn;
    gridPesquisaDBTableView1dat_emissao_rg: TcxGridDBColumn;
    gridPesquisaDBTableView1nom_emissor_rg: TcxGridDBColumn;
    gridPesquisaDBTableView1uf_emissor_rg: TcxGridDBColumn;
    gridPesquisaDBTableView1dat_nascimento: TcxGridDBColumn;
    gridPesquisaDBTableView1des_nacionalidade: TcxGridDBColumn;
    gridPesquisaDBTableView1des_naturalidade: TcxGridDBColumn;
    gridPesquisaDBTableView1uf_naturalidade: TcxGridDBColumn;
    gridPesquisaDBTableView1nom_pai: TcxGridDBColumn;
    gridPesquisaDBTableView1nom_mae: TcxGridDBColumn;
    gridPesquisaDBTableView1cod_cnae: TcxGridDBColumn;
    gridPesquisaDBTableView1cod_crt: TcxGridDBColumn;
    gridPesquisaDBTableView1num_cnh: TcxGridDBColumn;
    gridPesquisaDBTableView1num_registro_cnh: TcxGridDBColumn;
    gridPesquisaDBTableView1des_categoria_cnh: TcxGridDBColumn;
    gridPesquisaDBTableView1dat_validade_cnh: TcxGridDBColumn;
    gridPesquisaDBTableView1dat_emissao_cnh: TcxGridDBColumn;
    gridPesquisaDBTableView1uf_cnh: TcxGridDBColumn;
    gridPesquisaDBTableView1dat_primeira_cnh: TcxGridDBColumn;
    gridPesquisaDBTableView1cod_seguranca_cnh: TcxGridDBColumn;
    gridPesquisaDBTableView1cod_status: TcxGridDBColumn;
    gridPesquisaDBTableView1dat_cadastro: TcxGridDBColumn;
    gridPesquisaDBTableView1des_forma_pagamento: TcxGridDBColumn;
    gridPesquisaDBTableView1des_tipo_conta: TcxGridDBColumn;
    gridPesquisaDBTableView1cod_banco: TcxGridDBColumn;
    gridPesquisaDBTableView1cod_agencia: TcxGridDBColumn;
    gridPesquisaDBTableView1num_conta: TcxGridDBColumn;
    gridPesquisaDBTableView1nom_favorecido: TcxGridDBColumn;
    gridPesquisaDBTableView1num_cpf_cnpj_favorecido: TcxGridDBColumn;
    gridPesquisaDBTableView1cod_pix: TcxGridDBColumn;
    gridPesquisaDBTableView1cod_gr: TcxGridDBColumn;
    gridPesquisaDBTableView1dat_gr: TcxGridDBColumn;
    gridPesquisaDBTableView1cod_mei: TcxGridDBColumn;
    gridPesquisaDBTableView1des_razao_mei: TcxGridDBColumn;
    gridPesquisaDBTableView1nom_fantasia_mei: TcxGridDBColumn;
    gridPesquisaDBTableView1num_cnpj_mei: TcxGridDBColumn;
    gridPesquisaDBTableView1dat_abertura_mei: TcxGridDBColumn;
    gridPesquisaDBTableView1des_obs: TcxGridDBColumn;
    gridPesquisaDBTableView1id_departamento: TcxGridDBColumn;
    gridPesquisaDBTableView1id_funcao: TcxGridDBColumn;
    gridPesquisaDBTableView1dat_demissao: TcxGridDBColumn;
    aclFuncionarios: TActionList;
    actNovo: TAction;
    actionEditar: TAction;
    actCancelar: TAction;
    actGravar: TAction;
    actExportar: TAction;
    actSair: TAction;
    actPesquisar: TAction;
    cxButton4: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    cxButton5: TcxButton;
    dxLayoutItem9: TdxLayoutItem;
    actAtualizar: TAction;
    cxButton6: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    textPesquisa: TcxButtonEdit;
    dxLayoutItem4: TdxLayoutItem;
    lpgCadastro: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    cpf: TcxDBMaskEdit;
    dxLayoutItem12: TdxLayoutItem;
    id: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    sexo: TcxDBImageComboBox;
    dxLayoutItem13: TdxLayoutItem;
    nome: TcxDBTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    alias: TcxDBTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    rg: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    emissaoRG: TcxDBDateEdit;
    dxLayoutItem17: TdxLayoutItem;
    emissorRG: TcxDBTextEdit;
    dxLayoutItem18: TdxLayoutItem;
    dsEstados: TDataSource;
    ufrg: TcxDBLookupComboBox;
    dxLayoutItem19: TdxLayoutItem;
    nascimento: TcxDBDateEdit;
    dxLayoutItem20: TdxLayoutItem;
    nacionalidade: TcxDBTextEdit;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    naturalidade: TcxDBTextEdit;
    dxLayoutItem22: TdxLayoutItem;
    ufNaturalidade: TcxDBLookupComboBox;
    dxLayoutItem23: TdxLayoutItem;
    nomePai: TcxDBTextEdit;
    dxLayoutItem24: TdxLayoutItem;
    nomeMae: TcxDBTextEdit;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    numeroCNH: TcxDBTextEdit;
    dxLayoutItem26: TdxLayoutItem;
    registroCNH: TcxDBTextEdit;
    dxLayoutItem27: TdxLayoutItem;
    categoriaCNH: TcxDBTextEdit;
    dxLayoutItem28: TdxLayoutItem;
    emissaoCNH: TcxDBDateEdit;
    dxLayoutItem29: TdxLayoutItem;
    validadeCNH: TcxDBDateEdit;
    dxLayoutItem30: TdxLayoutItem;
    primeiraCNH: TcxDBDateEdit;
    dxLayoutItem31: TdxLayoutItem;
    ufCNH: TcxDBLookupComboBox;
    dxLayoutItem32: TdxLayoutItem;
    dsDepartamentos: TDataSource;
    dsFuncoes: TDataSource;
    dxLayoutGroup6: TdxLayoutGroup;
    admissao: TcxDBDateEdit;
    dxLayoutItem33: TdxLayoutItem;
    departamento: TcxDBLookupComboBox;
    dxLayoutItem34: TdxLayoutItem;
    funcao: TcxDBLookupComboBox;
    dxLayoutItem35: TdxLayoutItem;
    status: TcxDBImageComboBox;
    dxLayoutItem36: TdxLayoutItem;
    demissao: TcxDBDateEdit;
    dxLayoutItem37: TdxLayoutItem;
    lpgEnderecoFinanceiro: TdxLayoutGroup;
    lpgAcoesCadastro: TdxLayoutGroup;
    lpgEndereco: TdxLayoutGroup;
    dsEndereco: TDataSource;
    dxLayoutGroup7: TdxLayoutGroup;
    cep: TcxDBButtonEdit;
    dxLayoutItem38: TdxLayoutItem;
    logradouro: TcxDBTextEdit;
    dxLayoutItem39: TdxLayoutItem;
    numero: TcxDBTextEdit;
    dxLayoutItem40: TdxLayoutItem;
    complemento: TcxDBTextEdit;
    dxLayoutItem41: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    bairro: TcxDBTextEdit;
    dxLayoutItem42: TdxLayoutItem;
    cidade: TcxDBTextEdit;
    dxLayoutItem43: TdxLayoutItem;
    ufEndereco: TcxDBLookupComboBox;
    dxLayoutItem44: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    referencia: TcxDBTextEdit;
    dxLayoutItem45: TdxLayoutItem;
    lpgFinanceiro: TdxLayoutGroup;
    formaPagameneto: TcxDBComboBox;
    dxLayoutItem46: TdxLayoutItem;
    tipoConta: TcxDBComboBox;
    dxLayoutItem47: TdxLayoutItem;
    dsBancos: TDataSource;
    banco: TcxDBLookupComboBox;
    dxLayoutItem48: TdxLayoutItem;
    agencia: TcxDBTextEdit;
    dxLayoutItem49: TdxLayoutItem;
    conta: TcxDBTextEdit;
    dxLayoutItem50: TdxLayoutItem;
    chavePIX: TcxDBTextEdit;
    dxLayoutItem51: TdxLayoutItem;
    dxLayoutGroup10: TdxLayoutGroup;
    observacao: TcxDBMemo;
    dxLayoutItem52: TdxLayoutItem;
    procedure actSairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actPesquisarExecute(Sender: TObject);
    procedure textPesquisaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actNovoExecute(Sender: TObject);
    procedure actionEditarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actExportarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure OnShowForm;
    procedure OnCloseForm;
    procedure Pesquisar;
    procedure Novo;
    procedure Editar;
    procedure Cancelar;
    procedure Gravar;
    procedure Exportar;
  public
    { Public declarations }
  end;

var
  viewCadastroFuncionarios: TviewCadastroFuncionarios;

implementation

{$R *.dfm}

uses Data.SisGeF, Common.Utils;

procedure TviewCadastroFuncionarios.actCancelarExecute(Sender: TObject);
begin
  Cancelar;
end;

procedure TviewCadastroFuncionarios.actExportarExecute(Sender: TObject);
begin
  Exportar;
end;

procedure TviewCadastroFuncionarios.actGravarExecute(Sender: TObject);
begin
  Gravar;
end;

procedure TviewCadastroFuncionarios.actionEditarExecute(Sender: TObject);
begin
  Editar;
end;

procedure TviewCadastroFuncionarios.actNovoExecute(Sender: TObject);
begin
 Novo;
end;

procedure TviewCadastroFuncionarios.actPesquisarExecute(Sender: TObject);
begin
  Pesquisar;
end;

procedure TviewCadastroFuncionarios.actSairExecute(Sender: TObject);
begin
  Close;
end;

procedure TviewCadastroFuncionarios.Cancelar;
begin
  Data_Sisgef.queryFuncionarios.Cancel;
  lbgTabbed.ItemIndex := 0;
end;

procedure TviewCadastroFuncionarios.Editar;
begin
  Data_Sisgef.queryFuncionarios.Edit;
  lbgTabbed.ItemIndex := 1;
end;

procedure TviewCadastroFuncionarios.Exportar;
var
  fnUtil : Common.Utils.TUtils;
  sMensagem: String;
begin
  try
    fnUtil := Common.Utils.TUtils.Create;

    if Data_Sisgef.queryFuncionarios.IsEmpty then Exit;

    if Data_Sisgef.SaveDialog.Execute() then
    begin
      if FileExists(Data_Sisgef.SaveDialog.FileName) then
      begin
        sMensagem := 'Arquivo ' + Data_Sisgef.SaveDialog.FileName + ' já existe! Sobrepor ?';
        if MessageDlg(sMensagem, mtConfirmation, [mbYes,mbNo], 0) = mrNo then Exit
      end;
      fnUtil.ExportarDados(gridPesquisa,Data_Sisgef.SaveDialog.FileName);
    end;
  finally
    fnUtil.Free;
  end;
end;

procedure TviewCadastroFuncionarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  OnCloseForm;
end;

procedure TviewCadastroFuncionarios.FormShow(Sender: TObject);
begin
  OnShowForm;
end;

procedure TviewCadastroFuncionarios.Gravar;
begin
  if Application.MessageBox('Confirma gravar os dados?', 'Gravar', MB_YESNO + MB_ICONQUESTION) = mrNo then
  begin
    Cancelar;
  end;
  Data_Sisgef.queryFuncionarios.Post;
  lbgTabbed.ItemIndex := 0;
end;

procedure TviewCadastroFuncionarios.Novo;
begin
  Data_Sisgef.queryFuncionarios.Insert;
  lbgTabbed.ItemIndex := 1;
end;

procedure TviewCadastroFuncionarios.OnCloseForm;
begin
  with Data_Sisgef do
  begin
    FDConnectionMySQL.Connected := False;
  end;
  viewCadastroFuncionarios := nil;
end;

procedure TviewCadastroFuncionarios.OnShowForm;
begin
  with Data_Sisgef do
  begin
    queryFuncionarios.ExecSQL;
    queryFuncionariosEnderecos.Open();
    queryBancos.Open();
    queryDepartamentos.Open();
    queryEstados.Open();
    queryFuncoesRH.Open();
  end;
end;

procedure TviewCadastroFuncionarios.Pesquisar;
var
  sText, sFiltro: string;
  FFuncoes : TUtils;
begin
  FFuncoes := TUtils.Create;
  sText := textPesquisa.Text;
  sFiltro := '';
  if  sText <> '' then
  begin
    sFiltro := 'num_cpf_cnpj like ' + QuotedStr('%' +  sText + '%')  + ' or nom_razao_social like ' + QuotedStr('%' + sText + '%') +
                ' or nom_fantasia_alias like' + QuotedStr('%' + sText + '%');
    if fFuncoes.ENumero(sText) then
    begin
      if sFiltro <> '' then
      begin
        sFiltro := sFiltro + ' or ';
      end;
      sFiltro := sFiltro + 'cod_cadastro like ' + sText + ' or num_rg_ie like ' + sText  + ' or num_cnh like ' + sText +
      ' or num_registro_cnh like ' + sText;
    end;
  end;
  FFuncoes.Free;
  if not sFiltro.isEmpty then
  begin
    Data_Sisgef.queryFuncionarios.Filtered := True;
    Data_Sisgef.queryFuncionarios.Filter := sFiltro;
  end
  else
  begin
    Data_Sisgef.queryFuncionarios.Filtered := False;
  end;
  Data_Sisgef.queryFuncionarios.Active;
end;

procedure TviewCadastroFuncionarios.textPesquisaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  case AButtonIndex of
    0 : textPesquisa.Clear;
  end;
end;

end.
