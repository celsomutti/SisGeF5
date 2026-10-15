unit View.SisGeFCadastroFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, cxClasses,
  dxLayoutContainer, dxLayoutControl, System.Actions, Vcl.ActnList, Vcl.Menus, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, dxLayoutcxEditAdapters,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxDBLookupComboBox, cxCalendar, cxImageComboBox, Vcl.ComCtrls, dxCore, cxDateUtils, cxDropDownEdit, cxCurrencyEdit, cxMemo,
  service.connectionMySQL, Controller.SisGeFFuncionarios, Common.ENum, Common.Utils, cxBlobEdit, FireDAC.Comp.Client, Controller.SisGeFFuncionariosEnderecos,
  Controller.SisGeFFuncionariosContatos, Controller.SisGeFFuncionariosDocumentosRH, Controller.APICEP, service.SisGeFGeneralSearch,
  Controller.SisGeFFuncionariosFinanceiro;

type
  TviewCadastroFunctionarios = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    lgpContainer: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    actionList: TActionList;
    actionNewRegister: TAction;
    actionEditRegister: TAction;
    actionCloseForm: TAction;
    actionExpandGrid: TAction;
    actionRetractGrid: TAction;
    actionGroupPanel: TAction;
    actionExportGrid: TAction;
    actionSearchRecords: TAction;
    actionReturnGrid: TAction;
    actionClearSearch: TAction;
    actionSaveRegister: TAction;
    actionSearchDoc: TAction;
    actionSearchCEP: TAction;
    actionDocuments: TAction;
    actSearchDepartment: TAction;
    actSearchFunction: TAction;
    cxButton1: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    cxButton4: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    parametroPesquisa: TcxButtonEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxButton5: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    cxButton6: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    cxButton7: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    cxButton8: TcxButton;
    dxLayoutItem9: TdxLayoutItem;
    gridDBTableView1: TcxGridDBTableView;
    gridLevel1: TcxGridLevel;
    grid: TcxGrid;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    dsFuncionarios: TDataSource;
    dxLayoutGroup10: TdxLayoutGroup;
    id: TcxTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    nome: TcxTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    cpf: TcxMaskEdit;
    dxLayoutItem14: TdxLayoutItem;
    RG: TcxTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    emissaoRG: TcxDateEdit;
    dxLayoutItem16: TdxLayoutItem;
    emissorRG: TcxTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    nascimento: TcxDateEdit;
    dxLayoutItem18: TdxLayoutItem;
    nacionalidade: TcxTextEdit;
    dxLayoutItem19: TdxLayoutItem;
    naturalidade: TcxTextEdit;
    dxLayoutItem20: TdxLayoutItem;
    ufNaturalidade: TcxComboBox;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutGroup12: TdxLayoutGroup;
    ufEmissorRG: TcxComboBox;
    dxLayoutItem22: TdxLayoutItem;
    nomePai: TcxTextEdit;
    dxLayoutItem23: TdxLayoutItem;
    nomeMae: TcxTextEdit;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    dxLayoutGroup13: TdxLayoutGroup;
    CEP: TcxButtonEdit;
    dxLayoutItem25: TdxLayoutItem;
    logradouro: TcxTextEdit;
    dxLayoutItem26: TdxLayoutItem;
    numeroLogradouro: TcxTextEdit;
    dxLayoutItem27: TdxLayoutItem;
    complementoEndereco: TcxTextEdit;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutGroup14: TdxLayoutGroup;
    bairroEndereco: TcxTextEdit;
    dxLayoutItem29: TdxLayoutItem;
    cidadeEndereco: TcxTextEdit;
    dxLayoutItem30: TdxLayoutItem;
    ufEndereco: TcxComboBox;
    dxLayoutItem31: TdxLayoutItem;
    dxLayoutSeparatorItem3: TdxLayoutSeparatorItem;
    dxLayoutGroup15: TdxLayoutGroup;
    telefone: TcxMaskEdit;
    dxLayoutItem32: TdxLayoutItem;
    email: TcxTextEdit;
    dxLayoutItem34: TdxLayoutItem;
    dxLayoutGroup16: TdxLayoutGroup;
    ctps: TcxTextEdit;
    dxLayoutItem35: TdxLayoutItem;
    serieCtps: TcxTextEdit;
    dxLayoutItem36: TdxLayoutItem;
    ufCtps: TcxComboBox;
    dxLayoutItem37: TdxLayoutItem;
    dxLayoutGroup17: TdxLayoutGroup;
    numeroCNH: TcxTextEdit;
    dxLayoutItem38: TdxLayoutItem;
    registroCNH: TcxTextEdit;
    dxLayoutItem39: TdxLayoutItem;
    categoriaCNH: TcxTextEdit;
    dxLayoutItem40: TdxLayoutItem;
    ufCNH: TcxComboBox;
    dxLayoutItem41: TdxLayoutItem;
    codigoSeguranca: TcxTextEdit;
    dxLayoutItem42: TdxLayoutItem;
    primeiraCNH: TcxDateEdit;
    dxLayoutItem43: TdxLayoutItem;
    emissaoCNH: TcxDateEdit;
    dxLayoutItem44: TdxLayoutItem;
    validadeCNH: TcxDateEdit;
    dxLayoutItem45: TdxLayoutItem;
    dxLayoutGroup18: TdxLayoutGroup;
    pis: TcxTextEdit;
    dxLayoutItem46: TdxLayoutItem;
    reservista: TcxTextEdit;
    dxLayoutItem47: TdxLayoutItem;
    titulo: TcxTextEdit;
    dxLayoutItem48: TdxLayoutItem;
    zona: TcxTextEdit;
    dxLayoutItem49: TdxLayoutItem;
    secao: TcxTextEdit;
    dxLayoutItem50: TdxLayoutItem;
    dxLayoutSeparatorItem4: TdxLayoutSeparatorItem;
    dxLayoutGroup19: TdxLayoutGroup;
    departamento: TcxButtonEdit;
    dxLayoutItem51: TdxLayoutItem;
    descricaoDepartamento: TcxTextEdit;
    dxLayoutItem52: TdxLayoutItem;
    funcao: TcxButtonEdit;
    dxLayoutItem53: TdxLayoutItem;
    descricaoFuncao: TcxTextEdit;
    dxLayoutItem54: TdxLayoutItem;
    dxLayoutGroup20: TdxLayoutGroup;
    admissao: TcxDateEdit;
    dxLayoutItem55: TdxLayoutItem;
    remuneracao: TcxCurrencyEdit;
    dxLayoutItem56: TdxLayoutItem;
    situacao: TcxComboBox;
    dxLayoutItem57: TdxLayoutItem;
    demissao: TcxDateEdit;
    dxLayoutItem58: TdxLayoutItem;
    dxLayoutGroup21: TdxLayoutGroup;
    observacoes: TcxMemo;
    dxLayoutItem59: TdxLayoutItem;
    dxLayoutGroup22: TdxLayoutGroup;
    cxButton9: TcxButton;
    dxLayoutItem11: TdxLayoutItem;
    cxButton10: TcxButton;
    dxLayoutItem61: TdxLayoutItem;
    cxButton11: TcxButton;
    dxLayoutItem62: TdxLayoutItem;
    gridDBTableView1id_funcionario: TcxGridDBColumn;
    gridDBTableView1nom_funcionario: TcxGridDBColumn;
    gridDBTableView1asnom_alias: TcxGridDBColumn;
    gridDBTableView1cod_tipo_pessoa: TcxGridDBColumn;
    gridDBTableView1num_cpf: TcxGridDBColumn;
    gridDBTableView1num_rg: TcxGridDBColumn;
    gridDBTableView1dat_emissao_rg: TcxGridDBColumn;
    gridDBTableView1nom_emissor_rg: TcxGridDBColumn;
    gridDBTableView1uf_emissor_rg: TcxGridDBColumn;
    gridDBTableView1dat_nascimento: TcxGridDBColumn;
    gridDBTableView1des_nacionalidade: TcxGridDBColumn;
    gridDBTableView1des_naturalidade: TcxGridDBColumn;
    gridDBTableView1uf_naturalidade: TcxGridDBColumn;
    gridDBTableView1nom_pai: TcxGridDBColumn;
    gridDBTableView1nom_mae: TcxGridDBColumn;
    gridDBTableView1num_cnh: TcxGridDBColumn;
    gridDBTableView1num_registro_cnh: TcxGridDBColumn;
    gridDBTableView1des_categoria_cnh: TcxGridDBColumn;
    gridDBTableView1dat_validade_cnh: TcxGridDBColumn;
    gridDBTableView1dat_emissao_cnh: TcxGridDBColumn;
    gridDBTableView1uf_cnh: TcxGridDBColumn;
    gridDBTableView1dat_primeira_cnh: TcxGridDBColumn;
    gridDBTableView1cod_seguranca_cnh: TcxGridDBColumn;
    gridDBTableView1cod_status: TcxGridDBColumn;
    gridDBTableView1des_obs: TcxGridDBColumn;
    gridDBTableView1id_departamento: TcxGridDBColumn;
    gridDBTableView1des_departamento: TcxGridDBColumn;
    gridDBTableView1id_funcao: TcxGridDBColumn;
    gridDBTableView1des_funcao: TcxGridDBColumn;
    gridDBTableView1dat_admissao: TcxGridDBColumn;
    gridDBTableView1val_remuneracao: TcxGridDBColumn;
    gridDBTableView1dat_demissao: TcxGridDBColumn;
    gridDBTableView1createdAt: TcxGridDBColumn;
    gridDBTableView1updatedAt: TcxGridDBColumn;
    banco: TcxButtonEdit;
    dxLayoutItem33: TdxLayoutItem;
    actSearchBank: TAction;
    descricaoBanco: TcxTextEdit;
    dxLayoutItem60: TdxLayoutItem;
    conta: TcxTextEdit;
    dxLayoutItem63: TdxLayoutItem;
    agencia: TcxTextEdit;
    dxLayoutItem64: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    pix: TcxTextEdit;
    dxLayoutItem65: TdxLayoutItem;
    procedure actionCloseFormExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionSearchRecordsExecute(Sender: TObject);
    procedure actionEditRegisterExecute(Sender: TObject);
    procedure actionNewRegisterExecute(Sender: TObject);
    procedure actionRetractGridExecute(Sender: TObject);
    procedure actionGroupPanelExecute(Sender: TObject);
    procedure actionExportGridExecute(Sender: TObject);
    procedure actionReturnGridExecute(Sender: TObject);
    procedure actionClearSearchExecute(Sender: TObject);
    procedure actionSaveRegisterExecute(Sender: TObject);
    procedure actionSearchCEPExecute(Sender: TObject);
    procedure actionDocumentsExecute(Sender: TObject);
    procedure actSearchDepartmentExecute(Sender: TObject);
    procedure actSearchFunctionExecute(Sender: TObject);
    procedure actSearchBankExecute(Sender: TObject);
    procedure departamentoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure funcaoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure bancoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure FormShow(Sender: TObject);
    procedure actionExpandGridExecute(Sender: TObject);
  private
    FConn : TConnectionMySQL;
    FFuncionarios: TFuncionariosController;
    FEnderecos: TFuncionariosEnderecosController;
    FContatos: TFuncionariosContatosController;
    FDocumetos: TFuncionariosDocumentosRHController;
    FFinanceiro: TFuncionariosFinanceiroController;
    FAcao : TAcao;
    FQuery: TFDQuery;

    FIdEndereco : Integer;
    FIdContato : Integer;
    FIdDocs: Integer;
    FIdFinanceiro: integer;

    function CustomSearchStr(sParam: string): string;
    procedure ShowForm;
    procedure ExportGrid;
    procedure ClearFields;
    procedure SetupTabela;
    function  SetupFields(iId: integer): boolean;
    procedure Search(sParam, sSource: string);
    procedure SearchFuncionarios(sParam, sSource: string);
    procedure SearchEnderecos(sParam, sSource: string);
    procedure SearchContatos(sParam, sSource: string);
    procedure SearchDocumentos(sParam, sSource: string);
    procedure SearchFinanceiro(sParam, sSource: string);
    procedure Insert;
    procedure Edit;
    procedure Cancel;
    procedure Documents;
    procedure SearchCEP(sCEP: string);
    procedure SearchDepartamentos;
    procedure NomeDepartamento(id: integer);
    procedure SearchFuncoes;
    procedure NomeFuncao(id: integer);
    procedure SearchBanco;
    procedure NomeBanco(sCod: string);
    procedure Save;
    procedure ExpandGrid;
    procedure CollapseGrid;
    procedure PanelGroup;
  public
    { Public declarations }
  end;

var
  viewCadastroFunctionarios: TviewCadastroFunctionarios;

implementation

{$R *.dfm}

uses Data.SisGeF, View.SisaGeFAttachDocuments, View.ListaCEPs, View.SisGeFGeneralsSearch;

procedure TviewCadastroFunctionarios.actionClearSearchExecute(Sender: TObject);
begin
  parametroPesquisa.Clear;
  parametroPesquisa.SetFocus;
end;

procedure TviewCadastroFunctionarios.actionCloseFormExecute(Sender: TObject);
begin
  Close;
end;

procedure TviewCadastroFunctionarios.actionDocumentsExecute(Sender: TObject);
begin
  Documents;
end;

procedure TviewCadastroFunctionarios.actionEditRegisterExecute(Sender: TObject);
begin
  Edit;
end;

procedure TviewCadastroFunctionarios.actionExpandGridExecute(Sender: TObject);
begin
  ExpandGrid;
end;

procedure TviewCadastroFunctionarios.actionExportGridExecute(Sender: TObject);
begin
  ExportGrid;
end;

procedure TviewCadastroFunctionarios.actionGroupPanelExecute(Sender: TObject);
begin
  PanelGroup;
end;

procedure TviewCadastroFunctionarios.actionNewRegisterExecute(Sender: TObject);
begin
  Insert;
end;

procedure TviewCadastroFunctionarios.actionRetractGridExecute(Sender: TObject);
begin
  CollapseGrid;
end;

procedure TviewCadastroFunctionarios.actionReturnGridExecute(Sender: TObject);
begin
  Cancel;
end;

procedure TviewCadastroFunctionarios.actionSaveRegisterExecute(Sender: TObject);
begin
  Save;
end;

procedure TviewCadastroFunctionarios.actionSearchCEPExecute(Sender: TObject);
begin
  SearchCEP(CEP.Text);
end;

procedure TviewCadastroFunctionarios.actionSearchRecordsExecute(Sender: TObject);
begin
  Search(CustomSearchStr(parametroPesquisa.Text), 'VIEW');
end;

procedure TviewCadastroFunctionarios.actSearchBankExecute(Sender: TObject);
begin
  SearchBanco;
end;

procedure TviewCadastroFunctionarios.actSearchDepartmentExecute(Sender: TObject);
begin
  SearchDepartamentos;
end;

procedure TviewCadastroFunctionarios.actSearchFunctionExecute(Sender: TObject);
begin
  SearchFuncoes;
end;

procedure TviewCadastroFunctionarios.bancoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if DisplayValue = EmptyStr then
    DisplayValue := 0;
  NomeBanco(DisplayValue);
end;

procedure TviewCadastroFunctionarios.Cancel;
begin
  ClearFields;
  FAcao := tacIndefinido;
  lgpContainer.ItemIndex := 0;
end;

procedure TviewCadastroFunctionarios.ClearFields;
begin
  id.Text := '0';
  nome.Clear;
  cpf.Clear;
  nascimento.Clear;
  nacionalidade.Clear;
  naturalidade.Clear;
  ufNaturalidade.Clear;
  nomePai.Clear;
  nomeMae.Clear;
  CEP.Clear;
  logradouro.Clear;
  numeroLogradouro.Clear;
  complementoEndereco.Clear;
  bairroEndereco.Clear;
  cidadeEndereco.Clear;
  ufEndereco.Clear;
  telefone.Clear;
  email.Clear;
  RG.Clear;
  emissaoRG.Clear;
  emissorRG.Clear;
  ufEmissorRG.Clear;
  ctps.Clear;
  serieCtps.Clear;
  ufCtps.Clear;
  numeroCNH.Clear;
  registroCNH.Clear;
  categoriaCNH.Clear;
  ufCNH.Clear;
  codigoSeguranca.Clear;
  primeiraCNH.Clear;
  emissaoCNH.Clear;
  validadeCNH.Clear;
  pis.Clear;
  reservista.Clear;
  titulo.Clear;
  zona.Clear;
  secao.Clear;
  departamento.Tag := -1;
  departamento.EditValue := 0;
  departamento.Tag := 0;
  descricaoDepartamento.Clear;
  funcao.Tag := -1;
  funcao.EditValue := 0;
  funcao.Tag := 0;
  descricaoFuncao.Clear;
  admissao.Clear;
  remuneracao.Value := 0;
  situacao.ItemIndex := 1;
  demissao.Clear;
end;

procedure TviewCadastroFunctionarios.CollapseGrid;
begin
  gridDBTableView1.ViewData.Collapse(True);
end;

function TviewCadastroFunctionarios.CustomSearchStr(sParam: string): string;
var
  utils : TUtils;
  i : integer;
  sType, sField, sQuery, sQueryReturn : string;
  date : TDateTime;
begin
  utils := TUtils.Create;
  sQuery := '';
  sQueryReturn := '';
  Result := '';
  try
    if not sParam.IsEmpty then
    begin
      for i := 0 to gridDBTableView1.ColumnCount - 1 do
      begin
        if gridDBTableView1.Columns[i].Visible then
        begin
          sType := gridDBTableView1.Columns[i].DataBinding.ValueType;
          sField := gridDBTableView1.Columns[i].DataBinding.FieldName;
          if sType = 'String' then
          begin
            if not sQuery.IsEmpty then
              sQuery := sQuery + ' or '
            else
              sQuery := sQuery + '(';
            sQuery := sQuery + sField + ' like ' +  QuotedStr('%' + sParam + '%')
          end
          else if sType = 'DateTime' then
          begin
            if TryStrToDate(sParam, date) then
            begin
              if not sQuery.IsEmpty then
              sQuery := sQuery + ' or '
            else
              sQuery := sQuery + '(';
              sQuery := sQuery + sField + ' like ' +  QuotedStr(FormatDateTime('yyyy-mm-dd', date));
            end;
          end
          else
          begin
            if utils.ENumero(sParam) then
            begin
              if not sQuery.IsEmpty then
                sQuery := sQuery + ' or '
              else
                sQuery := sQuery + '(';
              sQuery := sQuery + sField + ' like ' +  sParam;
            end;
          end;
        end;
      end;
    end;
    if not sQuery.IsEmpty then
      sQuery := sQuery + ')';

    sQueryReturn := sQuery;

    Result := sQueryReturn;
  finally
    utils.Free;
  end;
end;

procedure TviewCadastroFunctionarios.departamentoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if DisplayValue = EmptyStr then
    DisplayValue := 0;
  NomeDepartamento(DisplayValue);
end;

procedure TviewCadastroFunctionarios.Documents;
begin
  if not Assigned(view_SisgeFAttachDocuments) then
    view_SisgeFAttachDocuments := Tview_SisgeFAttachDocuments.Create(Application);
  view_SisgeFAttachDocuments.Pasta := 'Func' + id.Text;
  view_SisgeFAttachDocuments.Show;
end;

procedure TviewCadastroFunctionarios.Edit;
begin
  if gridDBTableView1.DataController.RowCount > 0 then
  begin
    ClearFields;
    SetupFields(FQuery.FieldByName('id_funcionario').AsInteger);
    lgpContainer.ItemIndex := 1;
    FAcao := tacAlterar;
    nome.SetFocus;
  end;
end;

procedure TviewCadastroFunctionarios.ExpandGrid;
begin
  gridDBTableView1.ViewData.Expand(True);
end;

procedure TviewCadastroFunctionarios.ExportGrid;
var
  utils : TUtils;
  sMensagem: String;
begin
  try
    utils := TUtils.Create;

    if gridDBTableView1.ViewData.RowCount = 0 then Exit;

    if Data_Sisgef.SaveDialog.Execute() then
    begin
      if FileExists(Data_Sisgef.SaveDialog.FileName) then
      begin
        sMensagem := 'Arquivo ' + Data_Sisgef.SaveDialog.FileName + ' já existe! Sobrepor ?';
        if Application.MessageBox(PChar(sMensagem), 'Sobrepor', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit
      end;

      utils.ExportarDados(grid,Data_Sisgef.SaveDialog.FileName);

    end;
  finally
    utils.Free;
  end;
end;

procedure TviewCadastroFunctionarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(FFuncionarios) then FFuncionarios.Free;
  if Assigned(FEnderecos) then FEnderecos.Free;
  if Assigned(FContatos) then FContatos.Free;
  if Assigned(FDocumetos) then FDocumetos.Free;
  if Assigned(FFinanceiro) then FFinanceiro.Free;
  Action := caFree;
  viewCadastroFunctionarios := Nil;
end;

procedure TviewCadastroFunctionarios.FormShow(Sender: TObject);
begin
  ShowForm;
end;

procedure TviewCadastroFunctionarios.funcaoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if DisplayValue = EmptyStr then
    DisplayValue := 0;
  NomeFuncao(DisplayValue);
end;

procedure TviewCadastroFunctionarios.Insert;
begin
  FAcao := tacIncluir;
  ClearFields;
  lgpContainer.ItemIndex := 1;
  nome.SetFocus;
end;

procedure TviewCadastroFunctionarios.NomeBanco(sCod: string);
var
  FSearch: TSearch;
  aParam: array of string;
begin
  FSearch := TSearch.Create;
  SetLength(aParam, 3);
  try
    aParam := ['nom_banco', 'tbbancos', 'cod_banco = ' + sCod];
    if not FSearch.ReturnSearch(aParam) then
    begin
      Application.MessageBox(PChar(FSearch.Mensagem), 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    descricaoBanco.Text := FSearch.Query.Fields[0].Value;
  finally
    Finalize(aParam);
    FSearch.Free;
  end;
end;

procedure TviewCadastroFunctionarios.NomeDepartamento(id: integer);
var
  FSearch: TSearch;
  aParam: array of string;
begin
  FSearch := TSearch.Create;
  SetLength(aParam, 3);
  try
    aParam := ['des_razao_social', 'tbagentes', 'cod_agente = ' + id.ToString];
    if not FSearch.ReturnSearch(aParam) then
    begin
      Application.MessageBox(PChar(FSearch.Mensagem), 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    descricaoDepartamento.Text := FSearch.Query.Fields[0].Value;
  finally
    Finalize(aParam);
    FSearch.Free;
  end;
end;

procedure TviewCadastroFunctionarios.NomeFuncao(id: integer);
var
  FSearch: TSearch;
  aParam: array of string;
begin
  FSearch := TSearch.Create;
  SetLength(aParam, 3);
  try
    aParam := ['des_funcao', 'crm_funcoes_rh  ', 'id_funcao = ' + id.ToString];
    if not FSearch.ReturnSearch(aParam) then
    begin
      Application.MessageBox(PChar(FSearch.Mensagem), 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    descricaoFuncao.Text := FSearch.Query.Fields[0].Value;
  finally
    Finalize(aParam);
    FSearch.Free;
  end;
end;

procedure TviewCadastroFunctionarios.PanelGroup;
begin
  gridDBTableView1.OptionsView.GroupByBox := (not gridDBTableView1.OptionsView.GroupByBox);
end;

procedure TviewCadastroFunctionarios.Save;
var
  sMensagem: string;
begin
  SetupTabela;
  try
    if not FFuncionarios.Validate() then
    begin
      Application.MessageBox(PChar(FFuncionarios.Funcionario.Mensagem), 'Atenção', MB_OK + MB_ICONEXCLAMATION);
      Exit;
    end;
    if not FEnderecos.Validate() then
    begin
      Application.MessageBox(PChar(FEnderecos.FEnderecos.Mensagem), 'Atenção', MB_OK + MB_ICONEXCLAMATION);
      Exit;
    end;
    if not FDocumetos.Validate() then
    begin
      Application.MessageBox(PChar(FDocumetos.FDocumentos.Mensagem), 'Atenção', MB_OK + MB_ICONEXCLAMATION);
      Exit;
    end;
    if FAcao = tacAlterar then
      sMensagem := 'Confirma alterar os dados do funcionário '  + nome.Text + ' ?'
    else if FAcao = tacIncluir then
      sMensagem := 'Confirma incluir os dados do funconário '  + nome.Text + ' ?';
    if Application.MessageBox(PChar(sMensagem), 'Salvar', MB_YESNO + MB_ICONQUESTION) = mrNo then
      Exit;
    FFuncionarios.Funcionario.Acao := FAcao;
    if FFuncionarios.SaveRecord then
    begin
      Fenderecos.FEnderecos.FRecords.id_funcionario := FFuncionarios.Funcionario.ARecord.id_funcionario;
      if not FEnderecos.SaveRecord then
      begin
        Application.MessageBox(PChar(FEnderecos.FEnderecos.Mensagem), 'Atenção', MB_OK + MB_ICONEXCLAMATION);
        Exit;
      end;
      FContatos.Contatos.FRecord.id_funcionario := FFuncionarios.Funcionario.ARecord.id_funcionario;
      if not FContatos.SaveRecord then
      begin
        Application.MessageBox(PChar(FContatos.Contatos.Mensagem), 'Atenção', MB_OK + MB_ICONEXCLAMATION);
        Exit;
      end;
      FDocumetos.FDocumentos.FRecords.id_funcionario := FFuncionarios.Funcionario.ARecord.id_funcionario;
      if not FDocumetos.SaveRecord then
      begin
        Application.MessageBox(PChar(FDocumetos.FDocumentos.Mensagem), 'Atenção', MB_OK + MB_ICONEXCLAMATION);
        Exit;
      end;
      FFinanceiro.FFinanceiro.FRecord.id_funcionario := FFuncionarios.Funcionario.ARecord.id_funcionario;
      if not FFinanceiro.SaveRecord then
      begin
        Application.MessageBox(PChar(FFinanceiro.FFinanceiro.Mensagem), 'Atenção', MB_OK + MB_ICONEXCLAMATION);
        Exit;
      end;
    end
    else
    begin
      Application.MessageBox(PChar(FFuncionarios.Funcionario.Mensagem), 'Atenção', MB_OK + MB_ICONEXCLAMATION);
      Exit;
    end;
    FAcao := tacIndefinido;
    Application.MessageBox('Cadastro salvo.', 'Salvar', MB_OK + MB_ICONINFORMATION);
  finally
    Search(CustomSearchStr(parametroPesquisa.Text), 'VIEW');
    lgpContainer.ItemIndex := 0;
  end;
end;

procedure TviewCadastroFunctionarios.Search(sParam, sSource: string);
var
  aParam : Array of String;
begin
  if not Assigned(FFuncionarios) then
    FFuncionarios := TFuncionariosController.Create;
  SetLength(aParam, 3);

  try
     aParam[0] := '*';
     aParam[1] := sSource;
     aParam[2] := sParam;
     FAcao := tacIndefinido;
     if FFuncionarios.CustomSearch(aParam) then
     begin
      FQuery.Active := False;
      FQuery.Data := FFuncionarios.Funcionario.Query.Data;
      dsFuncionarios.DataSet := FQuery;
      FAcao := tacPesquisa;
     end;
  finally
    FFuncionarios.Funcionario.Query.Active := False;
    FFuncionarios.Funcionario.Query.Connection.Connected := False;
    Finalize(aParam);
  end;
end;

procedure TviewCadastroFunctionarios.SearchBanco;
begin
  if not Assigned(viewGeneralSearch) then
    viewGeneralSearch := TviewGeneralSearch.Create(Application);
  viewGeneralSearch.Campos := 'cod_banco as "Código", nom_banco as "Nome"';
  viewGeneralSearch.Tabela := 'tbbancos';
  viewGeneralSearch.Criterio := 'TRUE';
  if viewGeneralSearch.ShowModal = mrOk then
  begin
    banco.EditValue := viewGeneralSearch.mtbPesquisa.Fields[0].Value;
    descricaoBanco.Text := viewGeneralSearch.mtbPesquisa.Fields[1].Value;
  end;
  FreeAndNil(viewGeneralSearch);
end;

procedure TviewCadastroFunctionarios.SearchCEP(sCEP: string);
var
  APICEP : TAPICEPController;
  utils : TUtils;
begin
  try
    APICEP := TAPICEPController.Create;
    utils := TUtils.Create;
    sCEP := utils.DesmontaCPFCNPJ(sCEP);
    if not APICEP.GetAdressByCEP(sCEP) then
    begin
      MessageDlg(APICEP.APICEP.Mensagem, mtWarning, [mbCancel], 0);
      Exit;
    end;
    if Data_Sisgef.memTableCEP.Active then
    begin
      if not Data_Sisgef.memTableCEP.IsEmpty then
      begin
        if not Assigned(view_ListaCEPs) then
        begin
          view_ListaCEPs := Tview_ListaCEPs.Create(Application);
        end;
        if view_ListaCEPs.ShowModal = mrOK then
        begin
          logradouro.Text := Data_Sisgef.memTableCEPlogradouro.AsString;
          numeroLogradouro.Text := Data_Sisgef.memTableCEPcomplemento.AsString;
          bairroEndereco.Text := Data_Sisgef.memTableCEPbairro.AsString;
          cidadeEndereco.Text := Data_Sisgef.memTableCEPlocalidade.AsString;
          ufEndereco.Text := Data_Sisgef.memTableCEPuf.AsString;
          cep.Text := Data_Sisgef.memTableCEPcep.AsString;
        end;
        Data_Sisgef.memTableCEP.Active := False;
        FreeAndNil(view_ListaCEPs);
      end;
    end
    else
    begin
      logradouro.Text := APICEP.APICEP.Enderecos.Logradouro;
      complementoEndereco.Text := APICEP.APICEP.Enderecos.Complemento;
      bairroEndereco.Text := APICEP.APICEP.Enderecos.Bairro;
      cidadeEndereco.Text := APICEP.APICEP.Enderecos.Cidade;
      ufEndereco.Text := APICEP.APICEP.Enderecos.UF;
    end;
  finally
    APICEP.Free;
    utils.Free;
  end;
end;

procedure TviewCadastroFunctionarios.SearchContatos(sParam, sSource: string);
var
  aParam : Array of String;
begin
  if not Assigned(FContatos) then
    FContatos := TFuncionariosContatosController.Create;
  SetLength(aParam, 3);
  try
     aParam[0] := '*';
     aParam[1] := sSource;
     aParam[2] := sParam;
     if FContatos.CustomSearch(aParam) then
     begin
      if FContatos.SetupRecord then
      begin
        FIdContato      :=  FContatos.Contatos.FRecord.seq_contato;
        telefone.Text := FContatos.Contatos.FRecord.num_telefone;
        email.Text := FContatos.Contatos.FRecord.des_email;
      end;
      FContatos.Contatos.Query.Active := False;
      FContatos.Contatos.Query.Connection.Connected := False;
     end;
  finally
    Finalize(aParam);
  end;
end;

procedure TviewCadastroFunctionarios.SearchDepartamentos;
begin
  if not Assigned(viewGeneralSearch) then
    viewGeneralSearch := TviewGeneralSearch.Create(Application);
  viewGeneralSearch.Campos := 'cod_agente as "Código", des_razao_social as "Nome"';
  viewGeneralSearch.Tabela := 'tbagentes';
  viewGeneralSearch.Criterio := 'TRUE';
  if viewGeneralSearch.ShowModal = mrOk then
  begin
    departamento.EditValue := viewGeneralSearch.mtbPesquisa.Fields[0].Value;
    descricaoDepartamento.Text := viewGeneralSearch.mtbPesquisa.Fields[1].Value;
  end;
  FreeAndNil(viewGeneralSearch);
end;

procedure TviewCadastroFunctionarios.SearchDocumentos(sParam, sSource: string);
var
  aParam : Array of String;
begin
  if not Assigned(FDocumetos) then
    FDocumetos := TFuncionariosDocumentosRHController.Create;
  SetLength(aParam, 3);
  try
     aParam[0] := '*';
     aParam[1] := sSource;
     aParam[2] := sParam;
     if FDocumetos.CustomSearch(aParam) then
     begin
      if FDocumetos.SetupRecord then
      begin
        with FDocumetos.FDocumentos.FRecords do
        begin
          FIdDocs := id_doc;
          ctps.Text := num_ctps;
          serieCtps.Text := num_serie_ctps;
          ufCtps.Text := uf_ctps;
          pis.Text := num_pis;
          reservista.Text := num_reservista;
          titulo.Text := num_titulo_eleitoral;
          zona.Text := num_zona_eleitoral;
          secao.Text := num_secao_eleitoral;
        end;
      end;
      FContatos.Contatos.Query.Active := False;
      FContatos.Contatos.Query.Connection.Connected := False;
     end;
  finally
    Finalize(aParam);
  end;
end;

procedure TviewCadastroFunctionarios.SearchEnderecos(sParam, sSource: string);
var
  aParam : Array of String;
begin
  if not Assigned(FEnderecos) then
    FEnderecos := TFuncionariosEnderecosController.Create;
  SetLength(aParam, 3);
  try
     aParam[0] := '*';
     aParam[1] := sSource;
     aParam[2] := sParam;
     if FEnderecos.CustomSearch(aParam) then
     begin
      if FEnderecos.SetupRecord then
      begin
        with FEnderecos.FEnderecos.FRecords do
        begin
          FIdEndereco := id_endereco;
          CEP.Text := num_cep;
          logradouro.Text;
          numeroLogradouro.Text := num_logradouro;
          complementoEndereco.Text := des_complemento;
          bairroEndereco.Text := des_bairro;
          cidadeEndereco.Text := nom_cidade;
          ufEndereco.Text := uf_estado;
        end;
      end;
      FEnderecos.FEnderecos.Query.Active := False;
      FEnderecos.FEnderecos.Query.Connection.Connected := False;
     end;
  finally
    Finalize(aParam);
  end;
end;

procedure TviewCadastroFunctionarios.SearchFinanceiro(sParam, sSource: string);
var
  aParam : Array of String;
begin
  if not Assigned(FFinanceiro) then
    FFinanceiro := TFuncionariosFinanceiroController.Create;
  SetLength(aParam, 3);
  try
     aParam[0] := '*';
     aParam[1] := sSource;
     aParam[2] := sParam;
     if FFinanceiro.CustomSearch(aParam) then
     begin
      if FFinanceiro.SetupRecord then
      begin
        with FFinanceiro.FFinanceiro.FRecord do
        begin
          FIdFinanceiro := id_financeiro;
          banco.Text    := cod_banco;
          agencia.Text  := cod_agencia;
          conta.Text    := num_conta;
          pix.Text      := cod_pix;
        end;
      end;
      FFinanceiro.FFinanceiro.Query.Active := False;
      FFinanceiro.FFinanceiro.Query.Connection.Connected := False;
     end;
  finally
    Finalize(aParam);
  end;
end;

procedure TviewCadastroFunctionarios.SearchFuncionarios(sParam, sSource: string);
var
  aParam : Array of String;
begin
  if not Assigned(FFuncionarios) then
    FFuncionarios := TFuncionariosController.Create;
  SetLength(aParam, 3);
  try
    aParam[0] := '*';
    aParam[1] := sSource;
    aParam[2] := sParam;
    if FFuncionarios.CustomSearch(aParam) then
    begin
      if FFuncionarios.SetupRecord then
        begin
          with FFuncionarios.Funcionario.ARecord do
          begin
              id.Text := id_funcionario.ToString;
              nome.Text := nom_funcionario;
              num_cpf := cpf.Text;
              RG.Text :=num_rg;
              emissaoRG.Date := dat_emissao_rg;
              emissorRG.Text := nom_emissor_rg;
              ufEmissorRG.Text := uf_emissor_rg;
              nascimento.Date := dat_nascimento;
              nacionalidade.Text := des_nacionalidade;
              naturalidade.Text := des_naturalidade;
              ufNaturalidade.Text := uf_naturalidade;
              nomePai.Text := nom_pai;
              nomeMae.Text := nom_mae;
              numeroCNH.Text := num_cnh;
              registroCNH.Text := num_registro_cnh;
              categoriaCNH.Text := des_categoria_cnh;
              validadeCNH.Date := dat_validade_cnh;
              emissaoCNH.Date := dat_emissao_cnh;
              ufCNH.Text := uf_cnh;
              primeiraCNH.Date := dat_primeira_cnh;
              codigoSeguranca.Text := cod_seguranca_cnh;
              situacao.ItemIndex := cod_status;
              observacoes.Text := des_obs;
              departamento.EditValue := id_departamento;
              funcao.EditValue := id_funcao;
              admissao.Date := dat_admissao;
              remuneracao.Value := val_remuneracao;
              demissao.Date := dat_demissao;
          end;
        end ;
      FFuncionarios.Funcionario.Query.Active := False;
      FFuncionarios.Funcionario.Query.Connection.Connected := False;
     end;
  finally
    Finalize(aParam);
  end;
end;

procedure TviewCadastroFunctionarios.SearchFuncoes;
begin
  if not Assigned(viewGeneralSearch) then
    viewGeneralSearch := TviewGeneralSearch.Create(Application);
  viewGeneralSearch.Campos := 'id_funcao as "Código", des_funcao as "Descrição"';
  viewGeneralSearch.Tabela := 'crm_funcoes_rh';
  if viewGeneralSearch.ShowModal = mrOk then
  begin
    funcao.EditValue := viewGeneralSearch.mtbPesquisa.Fields[0].Value;
    descricaoFuncao.Text := viewGeneralSearch.mtbPesquisa.Fields[1].Value;
  end;
  FreeAndNil(viewGeneralSearch);
end;

function TviewCadastroFunctionarios.SetupFields(iId: integer): boolean;
var
  sParam: string;
begin
  sParam := 'id_funcionario = ' + iId.ToString;
  SearchFuncionarios(sParam,'TABLE');
  SearchEnderecos(sParam,'TABLE');
  SearchContatos(sParam,'TABLE');
  SearchDocumentos(sParam,'TABLE');
  SearchFinanceiro(sParam,'TABLE');
end;

procedure TviewCadastroFunctionarios.SetupTabela;
begin
  FFuncionarios.Funcionario.Acao := FAcao;
  FFuncionarios.Funcionario.ARecord.id_funcionario          := StrToIntDef(id.Text,0);
  FFuncionarios.Funcionario.ARecord.nom_funcionario         := nome.Text;
  FFuncionarios.Funcionario.ARecord.nom_alias               := '';
  FFuncionarios.Funcionario.ARecord.cod_tipo_pessoa         := 1;
  FFuncionarios.Funcionario.ARecord.num_cpf                 := cpf.Text;
  FFuncionarios.Funcionario.ARecord.num_rg                  := RG.Text;
  if emissaoRG.Date > 0 then
    FFuncionarios.Funcionario.ARecord.dat_emissao_rg          := emissaoRG.Date;
  FFuncionarios.Funcionario.ARecord.nom_emissor_rg          := emissorRG.Text;
  FFuncionarios.Funcionario.ARecord.uf_emissor_rg           := ufEmissorRG.Text;
  if nascimento.Date > 0 then
    FFuncionarios.Funcionario.ARecord.dat_nascimento          := nascimento.Date;
  FFuncionarios.Funcionario.ARecord.des_nacionalidade       := nacionalidade.Text;
  FFuncionarios.Funcionario.ARecord.des_naturalidade        := naturalidade.Text;
  FFuncionarios.Funcionario.ARecord.uf_naturalidade         := ufNaturalidade.Text;
  FFuncionarios.Funcionario.ARecord.nom_pai                 := nomePai.Text;
  FFuncionarios.Funcionario.ARecord.nom_mae                 := nomeMae.Text;
  FFuncionarios.Funcionario.ARecord.num_cnh                 := numeroCNH.Text;
  FFuncionarios.Funcionario.ARecord.num_registro_cnh        := registroCNH.Text;
  FFuncionarios.Funcionario.ARecord.des_categoria_cnh       := categoriaCNH.Text;
  if validadeCNH.Date > 0 then
    FFuncionarios.Funcionario.ARecord.dat_validade_cnh        := validadeCNH.Date;
  if emissaoCNH.Date > 0 then
    FFuncionarios.Funcionario.ARecord.dat_emissao_cnh         := emissaoCNH.Date;
  FFuncionarios.Funcionario.ARecord.uf_cnh                  := ufCNH.Text;
  if primeiraCNH.Date > 0 then
    FFuncionarios.Funcionario.ARecord.dat_primeira_cnh        := primeiraCNH.Date;
  FFuncionarios.Funcionario.ARecord.cod_seguranca_cnh       := codigoSeguranca.Text;
  FFuncionarios.Funcionario.ARecord.cod_status              := situacao.ItemIndex;
  FFuncionarios.Funcionario.ARecord.des_obs                 := observacoes.Text;
  FFuncionarios.Funcionario.ARecord.id_departamento         := departamento.EditValue;
  FFuncionarios.Funcionario.ARecord.id_funcao               := funcao.EditValue;
  if admissao.Date > 0 then
    FFuncionarios.Funcionario.ARecord.dat_admissao            := admissao.Date;
  FFuncionarios.Funcionario.ARecord.val_remuneracao         := remuneracao.Value;
  if demissao.Date > 0 then
    FFuncionarios.Funcionario.ARecord.dat_demissao            := demissao.Date;

  FEnderecos.FEnderecos.Acao := FAcao;
  FEnderecos.FEnderecos.FRecords.id_endereco      :=  FIdEndereco;
  FEnderecos.FEnderecos.FRecords.id_funcionario   :=  0;
  FEnderecos.FEnderecos.FRecords.des_tipo         :=  'RESIDENCIAL';
  FEnderecos.FEnderecos.FRecords.num_cep          :=  CEP.Text;
  FEnderecos.FEnderecos.FRecords.des_logradouro   :=  logradouro.Text;
  FEnderecos.FEnderecos.FRecords.num_logradouro   :=  numeroLogradouro.Text;
  FEnderecos.FEnderecos.FRecords.des_complemento  :=  complementoEndereco.Text;
  FEnderecos.FEnderecos.FRecords.des_bairro       :=  bairroEndereco.Text;
  FEnderecos.FEnderecos.FRecords.nom_cidade       :=  cidadeEndereco.Text;
  FEnderecos.FEnderecos.FRecords.uf_estado        :=  ufEndereco.Text;
  FEnderecos.FEnderecos.FRecords.des_referencia   :=  '';

  FDocumetos.FDocumentos.Acao := FAcao;
  FDocumetos.FDocumentos.FRecords.id_doc               :=  FIdDocs;
  FDocumetos.FDocumentos.FRecords.id_funcionario       :=  0;
  FDocumetos.FDocumentos.FRecords.num_ctps             :=  ctps.Text;
  FDocumetos.FDocumentos.FRecords.num_serie_ctps       :=  serieCtps.Text;
  FDocumetos.FDocumentos.FRecords.uf_ctps              :=  ufCtps.Text;
  FDocumetos.FDocumentos.FRecords.num_pis              :=  pis.Text;
  FDocumetos.FDocumentos.FRecords.num_reservista       :=  reservista.Text;
  FDocumetos.FDocumentos.FRecords.num_titulo_eleitoral :=  titulo.Text;
  FDocumetos.FDocumentos.FRecords.num_zona_eleitoral   :=  zona.Text;
  FDocumetos.FDocumentos.FRecords.num_secao_eleitoral  :=  secao.Text;

  FContatos.Contatos.Acao := FAcao;
  FContatos.Contatos.FRecord.seq_contato     :=  FIdContato;
  FContatos.Contatos.FRecord.id_funcionario  :=  0;
  FContatos.Contatos.FRecord.des_contato     :=  'TELEFONE/CELULAR';
  FContatos.Contatos.FRecord.num_telefone    :=  telefone.Text;
  FContatos.Contatos.FRecord.des_email       :=  email.Text;

  FFinanceiro.FFinanceiro.Acao := FAcao;
  FFinanceiro.FFinanceiro.FRecord.id_financeiro       :=  FIdFinanceiro;
  FFinanceiro.FFinanceiro.FRecord.id_funcionario      :=  0;
  FFinanceiro.FFinanceiro.FRecord.cod_banco           :=  banco.Text;
  FFinanceiro.FFinanceiro.FRecord.cod_agencia         :=  agencia.Text;
  FFinanceiro.FFinanceiro.FRecord.num_conta           :=  conta.Text;
  FFinanceiro.FFinanceiro.FRecord.cod_pix             :=  pix.Text;
end;

procedure TviewCadastroFunctionarios.ShowForm;
begin
  FConn := TConnectionMySQL.Create;
  FFuncionarios := TFuncionariosController.Create;
  FEnderecos := TFuncionariosEnderecosController.Create;
  FContatos := TFuncionariosContatosController.Create;
  FDocumetos := TFuncionariosDocumentosRHController.Create;
  FFinanceiro := TFuncionariosFinanceiroController.Create;
  FAcao := tacIndefinido;
end;

end.
