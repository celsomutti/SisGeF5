unit view.sisgefCadastroCandidatos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit,
  cxMaskEdit, cxButtonEdit, System.Actions, Vcl.ActnList, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
  Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Common.Utils,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, cxMemo, cxCalendar, service.connectionMySQL,
  cxDBEdit, Controller.APICEP, Controller.SisGeFCadastroCandidatos, Vcl.ComCtrls, dxCore, cxDateUtils, services.SisGeFTabelaCandidatos, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Common.ENum, Generics.Collections;

type
  TviewCadastroCandidatos = class(TForm)
    lrgRoot: TdxLayoutGroup;
    lcRoot: TdxLayoutControl;
    lgpFooter: TdxLayoutGroup;
    lgpContainer: TdxLayoutGroup;
    lgpPesquisa: TdxLayoutGroup;
    lgpCadastro: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    parametro: TcxButtonEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    cxButton2: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    gridDBTableView1: TcxGridDBTableView;
    gridLevel1: TcxGridLevel;
    grid: TcxGrid;
    dxLayoutItem4: TdxLayoutItem;
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
    actSearchCategory: TAction;
    actSearchFunction: TAction;
    cxButton3: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    cxButton5: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    cxButton6: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    cxButton7: TcxButton;
    dxLayoutItem9: TdxLayoutItem;
    cxButton8: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    dsCandidatos: TDataSource;
    dsCategorias: TDataSource;
    lcbCategorias: TcxLookupComboBox;
    dxLayoutItem11: TdxLayoutItem;
    gridDBTableView1COD_CANDIDATO: TcxGridDBColumn;
    gridDBTableView1id_categoria: TcxGridDBColumn;
    gridDBTableView1NOM_CANDIDATO: TcxGridDBColumn;
    gridDBTableView1DES_EMAIL: TcxGridDBColumn;
    gridDBTableView1DES_ENDERECO: TcxGridDBColumn;
    gridDBTableView1NUM_ENDERECO: TcxGridDBColumn;
    gridDBTableView1DES_COMPLEMENTO: TcxGridDBColumn;
    gridDBTableView1DES_BAIRRO: TcxGridDBColumn;
    gridDBTableView1DES_CIDADE: TcxGridDBColumn;
    gridDBTableView1DES_UF: TcxGridDBColumn;
    gridDBTableView1NUM_TELEFONE: TcxGridDBColumn;
    gridDBTableView1NUM_CELULAR: TcxGridDBColumn;
    gridDBTableView1DOM_EXPERIENCIA: TcxGridDBColumn;
    gridDBTableView1DES_EXPERIENCIA: TcxGridDBColumn;
    gridDBTableView1DES_REGIOES: TcxGridDBColumn;
    gridDBTableView1DOM_ANTECEDENTES: TcxGridDBColumn;
    gridDBTableView1DOM_RESTRICOES: TcxGridDBColumn;
    gridDBTableView1DAT_VALIDADE_CNH: TcxGridDBColumn;
    gridDBTableView1DES_CATEGORIA_CNH: TcxGridDBColumn;
    gridDBTableView1DOM_VEICULO_PROPRIO: TcxGridDBColumn;
    gridDBTableView1DES_ANO_VEICULO: TcxGridDBColumn;
    gridDBTableView1DES_TIPO_VEICULO: TcxGridDBColumn;
    gridDBTableView1DES_MODELO_VEICULO: TcxGridDBColumn;
    gridDBTableView1DES_TIPO_COMBUSTIVEL: TcxGridDBColumn;
    gridDBTableView1DOM_LICENCIAMENTO_IPVA: TcxGridDBColumn;
    gridDBTableView1DOM_RASTREADO: TcxGridDBColumn;
    gridDBTableView1DOM_DISPONIBILIDADE: TcxGridDBColumn;
    gridDBTableView1createdAt: TcxGridDBColumn;
    gridDBTableView1updatedAt: TcxGridDBColumn;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    cxButton9: TcxButton;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutSeparatorItem3: TdxLayoutSeparatorItem;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dsEstados: TDataSource;
    dxLayoutSeparatorItem4: TdxLayoutSeparatorItem;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutSeparatorItem5: TdxLayoutSeparatorItem;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutSeparatorItem6: TdxLayoutSeparatorItem;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutGroup15: TdxLayoutGroup;
    cxButton10: TcxButton;
    dxLayoutItem41: TdxLayoutItem;
    cxButton11: TcxButton;
    dxLayoutItem42: TdxLayoutItem;
    id: TcxTextEdit;
    dxLayoutItem43: TdxLayoutItem;
    categoria: TcxLookupComboBox;
    dxLayoutItem13: TdxLayoutItem;
    nome: TcxTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    email: TcxTextEdit;
    dxLayoutItem44: TdxLayoutItem;
    telefone: TcxMaskEdit;
    dxLayoutItem15: TdxLayoutItem;
    celular: TcxMaskEdit;
    dxLayoutItem16: TdxLayoutItem;
    cep: TcxButtonEdit;
    dxLayoutItem17: TdxLayoutItem;
    logradouro: TcxTextEdit;
    dxLayoutItem18: TdxLayoutItem;
    numero: TcxTextEdit;
    dxLayoutItem19: TdxLayoutItem;
    complemento: TcxTextEdit;
    dxLayoutItem20: TdxLayoutItem;
    bairro: TcxTextEdit;
    dxLayoutItem21: TdxLayoutItem;
    cidade: TcxTextEdit;
    dxLayoutItem22: TdxLayoutItem;
    uf: TcxLookupComboBox;
    dxLayoutItem23: TdxLayoutItem;
    validadeCNH: TcxDateEdit;
    dxLayoutItem24: TdxLayoutItem;
    categoriaCNH: TcxTextEdit;
    dxLayoutItem25: TdxLayoutItem;
    tipoVeiculo: TcxComboBox;
    dxLayoutItem33: TdxLayoutItem;
    modelo: TcxTextEdit;
    dxLayoutItem34: TdxLayoutItem;
    anoVeiculo: TcxMaskEdit;
    dxLayoutItem35: TdxLayoutItem;
    combustivel: TcxComboBox;
    dxLayoutItem36: TdxLayoutItem;
    observacoes: TcxMemo;
    dxLayoutItem37: TdxLayoutItem;
    regioes: TcxMemo;
    dxLayoutItem38: TdxLayoutItem;
    experiencia: TcxCheckBox;
    dxLayoutItem39: TdxLayoutItem;
    antecedente: TcxCheckBox;
    dxLayoutItem26: TdxLayoutItem;
    restricoes: TcxCheckBox;
    dxLayoutItem27: TdxLayoutItem;
    veiculo: TcxCheckBox;
    dxLayoutItem28: TdxLayoutItem;
    rastreador: TcxCheckBox;
    dxLayoutItem29: TdxLayoutItem;
    licenciado: TcxCheckBox;
    dxLayoutItem30: TdxLayoutItem;
    disponibilidade: TcxCheckBox;
    dxLayoutItem31: TdxLayoutItem;
    mtbCandidatos: TFDMemTable;
    mtbCandidatosCOD_CANDIDATO: TIntegerField;
    mtbCandidatosid_categoria: TIntegerField;
    mtbCandidatosNOM_CANDIDATO: TStringField;
    mtbCandidatosDES_EMAIL: TStringField;
    mtbCandidatosNUM_CEP: TStringField;
    mtbCandidatosDES_ENDERECO: TStringField;
    mtbCandidatosNUM_ENDERECO: TStringField;
    mtbCandidatosDES_COMPLEMENTO: TStringField;
    mtbCandidatosDES_BAIRRO: TStringField;
    mtbCandidatosDES_CIDADE: TStringField;
    mtbCandidatosDES_UF: TStringField;
    mtbCandidatosNUM_TELEFONE: TStringField;
    mtbCandidatosNUM_CELULAR: TStringField;
    mtbCandidatosDOM_EXPERIENCIA: TStringField;
    mtbCandidatosDES_EXPERIENCIA: TMemoField;
    mtbCandidatosDES_REGIOES: TMemoField;
    mtbCandidatosDOM_ANTECEDENTES: TStringField;
    mtbCandidatosDOM_RESTRICOES: TStringField;
    mtbCandidatosDAT_VALIDADE_CNH: TDateField;
    mtbCandidatosDES_CATEGORIA_CNH: TStringField;
    mtbCandidatosDOM_VEICULO_PROPRIO: TStringField;
    mtbCandidatosDES_ANO_VEICULO: TStringField;
    mtbCandidatosDES_TIPO_VEICULO: TStringField;
    mtbCandidatosDES_MODELO_VEICULO: TStringField;
    mtbCandidatosDES_TIPO_COMBUSTIVEL: TStringField;
    mtbCandidatosDOM_LICENCIAMENTO_IPVA: TStringField;
    mtbCandidatosDOM_RASTREADO: TStringField;
    mtbCandidatosDOM_DISPONIBILIDADE: TStringField;
    mtbCandidatoscreatedAt: TDateTimeField;
    mtbCandidatosupdatedAt: TDateTimeField;
    procedure actCadastroLimparExecute(Sender: TObject);
    procedure actCadastroSairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionExpandGridExecute(Sender: TObject);
    procedure actionRetractGridExecute(Sender: TObject);
    procedure actionGroupPanelExecute(Sender: TObject);
    procedure actionExportGridExecute(Sender: TObject);
    procedure actionClearSearchExecute(Sender: TObject);
    procedure actionSearchRecordsExecute(Sender: TObject);
    procedure actionCloseFormExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actionReturnGridExecute(Sender: TObject);
    procedure actionDocumentsExecute(Sender: TObject);
    procedure actionSaveRegisterExecute(Sender: TObject);
    procedure actionNewRegisterExecute(Sender: TObject);
    procedure actionEditRegisterExecute(Sender: TObject);
    procedure actionSearchCEPExecute(Sender: TObject);
    procedure gridDBTableView1DblClick(Sender: TObject);
  private
    FConn : TConnectionMySQL;
    FCandidatos: TCadastroCandidatosController;
    FTabela : TObjectList<TTabelaCandidatos>;
    FAcao : TAcao;

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

    function CustomSearchStr(sParam: string): string;
  public
    { Public declarations }
  end;

var
  viewCadastroCandidatos: TviewCadastroCandidatos;

implementation

{$R *.dfm}

uses Data.SisGeF, View.SisaGeFAttachDocuments, View.ListaCEPs;

procedure TviewCadastroCandidatos.actCadastroLimparExecute(Sender: TObject);
begin
  parametro.Clear;
  parametro.SetFocus;
end;

procedure TviewCadastroCandidatos.actCadastroSairExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TviewCadastroCandidatos.actionClearSearchExecute(Sender: TObject);
begin
  parametro.Clear;
end;

procedure TviewCadastroCandidatos.actionCloseFormExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TviewCadastroCandidatos.actionDocumentsExecute(Sender: TObject);
begin
  if not FCandidatos.FCandidatos.Query.IsEmpty then
    Documents;
end;

procedure TviewCadastroCandidatos.actionEditRegisterExecute(Sender: TObject);
begin
  Edit;
end;

procedure TviewCadastroCandidatos.actionExpandGridExecute(Sender: TObject);
begin
   gridDBTableView1.ViewData.Expand(True);
end;

procedure TviewCadastroCandidatos.actionExportGridExecute(Sender: TObject);
begin
  ExportGrid;
end;

procedure TviewCadastroCandidatos.actionGroupPanelExecute(Sender: TObject);
begin
  gridDBTableView1.OptionsView.GroupByBox := (not gridDBTableView1.OptionsView.GroupByBox);
end;

procedure TviewCadastroCandidatos.actionNewRegisterExecute(Sender: TObject);
begin
  Insert;
end;

procedure TviewCadastroCandidatos.actionRetractGridExecute(Sender: TObject);
begin
   gridDBTableView1.ViewData.Collapse(True);
end;

procedure TviewCadastroCandidatos.actionReturnGridExecute(Sender: TObject);
begin
  Cancel;
  lgpContainer.ItemIndex := 0;
end;

procedure TviewCadastroCandidatos.actionSaveRegisterExecute(Sender: TObject);
begin
  Save;
end;

procedure TviewCadastroCandidatos.actionSearchCEPExecute(Sender: TObject);
begin
  SearchCEP(CEP.Text);
end;

procedure TviewCadastroCandidatos.actionSearchRecordsExecute(Sender: TObject);
begin
  Search(CustomSearchStr(parametro.Text));
end;

procedure TviewCadastroCandidatos.Cancel;
begin
  if dsCandidatos.State in [dsInsert, dsEdit] then
    FCandidatos.FCandidatos.Query.Cancel;
end;

procedure TviewCadastroCandidatos.ClearFields;
begin
    id.EditValue := 0;
    categoria.EditValue := 0;
    nome.Clear;
    email.Clear;
    telefone.Clear;
    celular.Clear;
    cep.Clear;
    logradouro.Clear;
    numero.Clear;
    complemento.Clear;
    bairro.Clear;
    cidade.Clear;
    uf.Clear;
    validadeCNH.Clear;
    categoriaCNH.Clear;
    tipoVeiculo.Clear;
    modelo.Clear;
    anoVeiculo.Clear;
    combustivel.Clear;
    observacoes.Clear;
    regioes.Clear;
    experiencia.Checked := False;
    antecedente.Checked := False;
    restricoes.Checked := False;
    veiculo.Checked := False;
    rastreador.Checked := False;
    licenciado.Checked := False;
    disponibilidade.Checked := False;
end;

function TviewCadastroCandidatos.CustomSearchStr(sParam: string): string;
var
  utils : TUtils;
  i : integer;
  sType, sField, sQuery, sQueryPadrao, sQueryReturn : string;
  date : TDateTime;
begin
  utils := TUtils.Create;
  sQuery := '';
  sQueryPadrao := '';
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

    if lcbCategorias.EditValue > 0 then
    begin
      if sQueryPadrao.IsEmpty then
        sQueryPadrao := sQueryPadrao + '('
      else
        sQueryPadrao := sQueryPadrao + ' and ';
      sQueryPadrao := sQueryPadrao + ' id_categoria = ' + VarToStrDef(lcbCategorias.EditValue, '0');
    end;

    if not sQueryPadrao.IsEmpty then
    begin
      sQueryPadrao := sQueryPadrao + ')';
      if not sQuery.IsEmpty then
        sQueryReturn := sQuery + ' and ' + sQueryPadrao
      else
        sQueryReturn := sQueryPadrao;
    end
    else
    begin
      sQueryReturn := sQuery;
    end;

    Result := sQueryReturn;
  finally
    utils.Free;
  end;
end;

procedure TviewCadastroCandidatos.Documents;
begin
  if not Assigned(view_SisgeFAttachDocuments) then
    view_SisgeFAttachDocuments := Tview_SisgeFAttachDocuments.Create(Application);
  view_SisgeFAttachDocuments.Pasta := 'Cand' + id.Text;
  view_SisgeFAttachDocuments.Show;
end;

procedure TviewCadastroCandidatos.Edit;
begin
  ClearFields;
  SetupFields(mtbCandidatosCOD_CANDIDATO.AsInteger);
  lgpContainer.ItemIndex := 1;
  nome.SetFocus;
end;

procedure TviewCadastroCandidatos.ExportGrid;
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

procedure TviewCadastroCandidatos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with FCandidatos do
  begin
    FCandidatos.Free;
    FTabela.Free;
    FConn.Free;
  end;
  Action := caFree;
  viewCadastroCandidatos := Nil;
end;

procedure TviewCadastroCandidatos.FormShow(Sender: TObject);
begin
  ShowForm;
end;

procedure TviewCadastroCandidatos.gridDBTableView1DblClick(Sender: TObject);
begin
  Edit;
end;

procedure TviewCadastroCandidatos.Insert;
begin
  FAcao := tacIncluir;
  ClearFields;
  lgpContainer.ItemIndex := 1;
  categoria.SetFocus;
end;

procedure TviewCadastroCandidatos.Save;
var
  sMensagem: string;
begin
  SetupTabela;
  if not FCandidatos.Validate() then
  begin
    Application.MessageBox(PChar(FCandidatos.FCandidatos.Mensagem), 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  if FAcao = tacAlterar then
    sMensagem := 'Confirma alterar os dados do candidato '  + nome.Text + ' ?'
  else if FAcao = tacIncluir then
    sMensagem := 'Confirma incluir os dados do candidato '  + nome.Text + ' ?';
  if Application.MessageBox(PChar(sMensagem), 'Salvar', MB_YESNO + MB_ICONQUESTION) = mrNo then
    Exit;
  FCandidatos.FCandidatos.Acao := FAcao;
  if not FCandidatos.SaveRecord then
  begin
    Application.MessageBox(PChar(FCandidatos.FCandidatos.Mensagem), 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  Application.MessageBox('Cadastro salvo.', 'Salvar', MB_OK + MB_ICONINFORMATION);
  FAcao := tacIndefinido;
  Search(CustomSearchStr(parametro.Text));
  lgpContainer.ItemIndex := 0;
end;

procedure TviewCadastroCandidatos.Search(sParam: string);
var
  aParam : Array of String;
begin
  SetLength(aParam, 3);
  aParam[0] := '*';
  aParam[1] := 'TABLE';
  aParam[2] := sParam;
  with FCandidatos do
  begin
    if not FCandidatos.CustomSearch(aParam) then
    begin
      Application.MessageBox('Nenhum registro encontrado!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    end
    else
    begin
      mtbCandidatos.Data := FCandidatos.Query.Data;
    end;
  end;
  Finalize(aParam);
end;

procedure TviewCadastroCandidatos.SearchCEP(sCEP: string);
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
          numero.Text := Data_Sisgef.memTableCEPcomplemento.AsString;
          bairro.Text := Data_Sisgef.memTableCEPbairro.AsString;
          cidade.Text := Data_Sisgef.memTableCEPlocalidade.AsString;
          uf.Text := Data_Sisgef.memTableCEPuf.AsString;
          cep.Text := Data_Sisgef.memTableCEPcep.AsString;
        end;
        Data_Sisgef.memTableCEP.Active := False;
        FreeAndNil(view_ListaCEPs);
      end;
    end
    else
    begin
      logradouro.Text := Data_Sisgef.memTableCEPlogradouro.AsString;
      numero.Text := Data_Sisgef.memTableCEPcomplemento.AsString;
      bairro.Text := Data_Sisgef.memTableCEPbairro.AsString;
      cidade.Text := Data_Sisgef.memTableCEPlocalidade.AsString;
      uf.Text := Data_Sisgef.memTableCEPuf.AsString;
      cep.Text := Data_Sisgef.memTableCEPcep.AsString;
    end;
  finally
    APICEP.Free;
    utils.Free;
  end;
end;

function TviewCadastroCandidatos.SetupFields(iId: integer): boolean;
var
  aParam : Array of String;
begin
  Result := False;
  try
    SetLength(aParam, 3);
    aParam[0] := '*';
    aParam[1] := 'TABLE';
    aParam[2] := 'cod_candidato = ' + iId.ToString;
    with FCandidatos do
    begin
      if FCandidatos.CustomSearch(aParam) then
      begin
        SetupTabela;
        id.EditValue := FTabela[0].COD_CANDIDATO;
        categoria.EditValue := FTabela[0].id_categoria;
        nome.Text := FTabela[0].NOM_CANDIDATO;
        email.Text := FTabela[0].DES_EMAIL;
        telefone.EditValue := FTabela[0].NUM_TELEFONE;
        celular.EditValue := FTabela[0].NUM_CELULAR;
        cep.EditValue := FTabela[0].NUM_CEP;
        logradouro.Text := FTabela[0].DES_ENDERECO;
        numero.Text := FTabela[0].NUM_ENDERECO;
        complemento.Text := FTabela[0].DES_COMPLEMENTO;
        bairro.Text := FTabela[0].DES_BAIRRO;
        cidade.Text := FTabela[0].DES_CIDADE;
        uf.Text := FTabela[0].DES_UF;
        validadeCNH.Date := FTabela[0].DAT_VALIDADE_CNH;
        categoriaCNH.Text := FTabela[0].DES_CATEGORIA_CNH;
        tipoVeiculo.Text := FTabela[0].DES_TIPO_VEICULO;
        modelo.Text := FTabela[0].DES_MODELO_VEICULO;
        anoVeiculo.Text := FTabela[0].DES_ANO_VEICULO;
        combustivel.Text := FTabela[0].DES_TIPO_COMBUSTIVEL;
        observacoes.Text := FTabela[0].DES_EXPERIENCIA;
        regioes.Text := FTabela[0].DES_REGIOES;
        experiencia.EditValue := FTabela[0].DOM_EXPERIENCIA;
        antecedente.EditValue := FTabela[0].DOM_ANTECEDENTES;
        restricoes.EditValue := FTabela[0].DOM_RESTRICOES;
        veiculo.EditValue := FTabela[0].DOM_VEICULO_PROPRIO;
        rastreador.EditValue := FTabela[0].DOM_RASTREADO;
        licenciado.EditValue := FTabela[0].DOM_LICENCIAMENTO_IPVA;
        disponibilidade.EditValue := FTabela[0].DOM_DISPONIBILIDADE;
      end
      else
      begin
        Application.MessageBox('Registro não encontrado', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
        Exit;
      end;
    end;
  finally

  end;
    Finalize(aParam);
end;

procedure TviewCadastroCandidatos.SetupTabela;
begin
    FTabela := TObjectList<TTabelaCandidatos>.Create;
    FTabela.Add(TTabelaCandidatos.Create);
    FTabela[0].COD_CANDIDATO := id.EditValue;
    FTabela[0].id_categoria := categoria.EditValue;
    FTabela[0].NOM_CANDIDATO := nome.Text;
    FTabela[0].DES_EMAIL := email.Text;
    FTabela[0].NUM_TELEFONE := telefone.EditValue;
    FTabela[0].NUM_CELULAR := celular.EditValue;
    FTabela[0].NUM_CEP :=  cep.EditValue;
    FTabela[0].DES_ENDERECO := logradouro.Text;
    FTabela[0].NUM_ENDERECO :=  numero.Text;
    FTabela[0].DES_COMPLEMENTO := complemento.Text;
    FTabela[0].DES_BAIRRO := bairro.Text;
    FTabela[0].DES_CIDADE := cidade.Text;
    FTabela[0].DES_UF := uf.Text;
    FTabela[0].DAT_VALIDADE_CNH := validadeCNH.Date;
    FTabela[0].DES_CATEGORIA_CNH := categoriaCNH.Text;
    FTabela[0].DES_TIPO_VEICULO := tipoVeiculo.Text;
    FTabela[0].DES_MODELO_VEICULO := modelo.Text;
    FTabela[0].DES_ANO_VEICULO := anoVeiculo.Text;
    FTabela[0].DES_TIPO_COMBUSTIVEL := combustivel.Text;
    FTabela[0].DES_EXPERIENCIA := observacoes.Text;
    FTabela[0].DES_REGIOES := regioes.Text;
    FTabela[0].DOM_EXPERIENCIA := experiencia.EditValue;
    FTabela[0].DOM_ANTECEDENTES := antecedente.EditValue;
    FTabela[0].DOM_RESTRICOES := restricoes.EditValue;
    FTabela[0].DOM_VEICULO_PROPRIO := veiculo.EditValue;
    FTabela[0].DOM_RASTREADO := rastreador.EditValue;
    FTabela[0].DOM_LICENCIAMENTO_IPVA := licenciado.EditValue;
    FTabela[0].DOM_DISPONIBILIDADE :=  disponibilidade.EditValue;
end;

procedure TviewCadastroCandidatos.ShowForm;
begin
  lcbCategorias.EditValue := 0;
  FConn := TConnectionMySQL.Create;
  FCandidatos := TCadastroCandidatosController.Create;
  FAcao := tacIndefinido;
end;

end.
