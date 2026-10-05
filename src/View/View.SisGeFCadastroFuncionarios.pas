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
  Controller.SisGeFFuncionariosContatos, Controller.SisGeFFuncionariosDocumentosRH, Controller.APICEP;

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
    procedure actionCloseFormExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionSearchRecordsExecute(Sender: TObject);
  private
    FConn : TConnectionMySQL;
    FFuncionarios: TFuncionariosController;
    FEnderecos: TFuncionariosEnderecosController;
    FContatos: TFuncionariosContatosController;
    FDocumetos: TFuncionariosDocumentosRHController;
    FAcao : TAcao;
    FQuery: TFDQuery;

    FIdEndereco : Integer;
    FIdContato : Integer;
    FIdDocs: Integer;

    function CustomSearchStr(sParam: string): string;
    procedure ShowForm;
    procedure ExportGrid;
    procedure ClearFields;
    procedure SetupTabela;
    function  SetupFields(iId: integer): boolean;
    procedure Search(sParam: string);
    procedure Insert;
    procedure Edit;
    procedure Cancel;
    procedure Documents;
    procedure SearchCEP(sCEP: string);
    procedure Save;
  public
    { Public declarations }
  end;

var
  viewCadastroFunctionarios: TviewCadastroFunctionarios;

implementation

{$R *.dfm}

uses Data.SisGeF, View.SisaGeFAttachDocuments, View.ListaCEPs;

procedure TviewCadastroFunctionarios.actionCloseFormExecute(Sender: TObject);
begin
  Close;
end;

procedure TviewCadastroFunctionarios.actionSearchRecordsExecute(Sender: TObject);
begin
  Search(CustomSearchStr(parametroPesquisa.Text));
end;

procedure TviewCadastroFunctionarios.Cancel;
begin
  ClearFields;
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
  celular.Clear;
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

procedure TviewCadastroFunctionarios.Documents;
begin
  if not Assigned(view_SisgeFAttachDocuments) then
    view_SisgeFAttachDocuments := Tview_SisgeFAttachDocuments.Create(Application);
  view_SisgeFAttachDocuments.Pasta := 'Func' + id.Text;
  view_SisgeFAttachDocuments.Show;
end;

procedure TviewCadastroFunctionarios.Edit;
begin
  ClearFields;
  SetupFields(FQuery.FieldByName('id_funcionario').AsInteger);
  lgpContainer.ItemIndex := 1;
  FAcao := tacAlterar;
  nome.SetFocus;
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
  Action := caFree;
  viewCadastroFunctionarios := Nil;
end;

procedure TviewCadastroFunctionarios.Insert;
begin
  FAcao := tacIncluir;
  ClearFields;
  lgpContainer.ItemIndex := 1;
  nome.SetFocus;
end;

procedure TviewCadastroFunctionarios.Save;
var
  sMensagem: string;
begin
  SetupTabela;
//  if not FFuncionarios.Validate() then
//  begin
//    Application.MessageBox(PChar(FFuncionarios.FFuncionarios.Mensagem), 'Atenção', MB_OK + MB_ICONEXCLAMATION);
//    Exit;
//  end;
  if FAcao = tacAlterar then
    sMensagem := 'Confirma alterar os dados do candidato '  + nome.Text + ' ?'
  else if FAcao = tacIncluir then
    sMensagem := 'Confirma incluir os dados do candidato '  + nome.Text + ' ?';
  if Application.MessageBox(PChar(sMensagem), 'Salvar', MB_YESNO + MB_ICONQUESTION) = mrNo then
    Exit;
  FFuncionarios.Funcionario.Acao := FAcao;
  if not FFuncionarios.SaveRecord then
  begin
    Application.MessageBox(PChar(FFuncionarios.Funcionario.Mensagem), 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  Application.MessageBox('Cadastro salvo.', 'Salvar', MB_OK + MB_ICONINFORMATION);
  FAcao := tacIndefinido;
  FQuery.Refresh;
  lgpContainer.ItemIndex := 0;
end;

procedure TviewCadastroFunctionarios.Search(sParam: string);
var
  aParam : Array of String;
begin
  if not Assigned(FFuncionarios) then
    FFuncionarios := TFuncionariosController.Create;
  SetLength(aParam, 3);

  try
     aParam[0] := '*';
     aParam[1] := 'VIEW';
     aParam[2] := sParam;
     FAcao := tacIndefinido;
     if FFuncionarios.CustomSearch(aParam) then
     begin
      FQuery := FFuncionarios.Funcionario.Query;
      dsFuncionarios.DataSet := FQuery;
      FAcao := tacPesquisa;
     end;
  finally
    Finalize(aParam);
  end;
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

function TviewCadastroFunctionarios.SetupFields(iId: integer): boolean;
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
    validadeCNH.Text := dat_validade_cnh;
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

  with FEnderecos.FEnderecos.Records do
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

  with FDocumetos.FDocumentos.Records do
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

  with FContatos.Contatos.Records do
  begin
    FIdContato      :=  seq_contato;
    telefone.Text := num_telefone;
    email.Text := des_email;
  end;

end;

procedure TviewCadastroFunctionarios.SetupTabela;
begin
  with FFuncionarios.Funcionario.ARecord do
  begin
    id_funcionario          := StrToIntDef(id.Text,0);
    nom_funcionario         := nome.Text;
    nom_alias               := '';
    cod_tipo_pessoa         := 1;
    num_cpf                 := cpf.Text;
    num_rg                  := RG.Text;
    dat_emissao_rg          := emissaoRG.Date;
    nom_emissor_rg          := emissorRG.Text;
    uf_emissor_rg           := ufEmissorRG.Text;
    dat_nascimento          := nascimento.Date;
    des_nacionalidade       := nacionalidade.Text;
    des_naturalidade        := naturalidade.Text;
    uf_naturalidade         := ufNaturalidade.Text;
    nom_pai                 := nomePai.Text;
    nom_mae                 := nomeMae.Text;
    num_cnh                 := numeroCNH.Text;
    num_registro_cnh        := registroCNH.Text;
    des_categoria_cnh       := categoriaCNH.Text;
    dat_validade_cnh        := validadeCNH.Text;
    dat_emissao_cnh         := emissaoCNH.Date;
    uf_cnh                  := ufCNH.Text;
    dat_primeira_cnh        := primeiraCNH.Date;
    cod_seguranca_cnh       := codigoSeguranca.Text;
    cod_status              := situacao.ItemIndex;
    des_obs                 := observacoes.Text;
    id_departamento         := departamento.EditValue;
    id_funcao               := funcao.EditValue;
    dat_admissao            := admissao.Date;
    val_remuneracao         := remuneracao.Value;
    dat_demissao            := demissao.Date;
  end;

  with FEnderecos.FEnderecos.Records do
  begin
    id_endereco      :=  FIdEndereco;
    id_funcionario   :=  StrToIntDef(id.Text,0);
    des_tipo         :=  'RESIDENCIAL';
    num_cep          :=  CEP.Text;
    des_logradouro   :=  logradouro.Text;
    num_logradouro   :=  numeroLogradouro.Text;
    des_complemento  :=  complementoEndereco.Text;
    des_bairro       :=  bairroEndereco.Text;
    nom_cidade       :=  cidadeEndereco.Text;
    uf_estado        :=  ufEndereco.Text;
    des_referencia   :=  '';
  end;

  with FDocumetos.FDocumentos.Records do
  begin
    id_doc               :=  FIdDocs;
    id_funcionario       :=  StrToIntDef(id.Text,0);
    num_ctps             :=  ctps.Text;
    num_serie_ctps       :=  serieCtps.Text;
    uf_ctps              :=  ufCtps.Text;
    num_pis              :=  pis.Text;
    num_reservista       :=  reservista.Text;
    num_titulo_eleitoral :=  titulo.Text;
    num_zona_eleitoral   :=  zona.Text;
    num_secao_eleitoral  :=  secao.Text;
  end;


  with FContatos.Contatos.Records do
  begin
    seq_contato     :=  FIdContato;
    id_funcionario  :=  StrToIntDef(id.Text,0);
    des_contato     :=  'TELEFONE/CELULAR';
    num_telefone    :=  telefone.Text;
    des_email       :=  email.Text;
  end;

end;

procedure TviewCadastroFunctionarios.ShowForm;
begin
  FConn := TConnectionMySQL.Create;
  FFuncionarios := TFuncionariosController.Create;
  FEnderecos := TFuncionariosEnderecosController.Create;
  FContatos := TFuncionariosContatosController.Create;
  FDocumetos := TFuncionariosDocumentosRHController.Create;
  FAcao := tacIndefinido;
end;

end.
