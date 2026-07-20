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
  cxDBEdit, Controller.APICEP;

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
    dbId: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    dbCategoria: TcxDBLookupComboBox;
    dxLayoutItem14: TdxLayoutItem;
    dbNome: TcxDBTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutSeparatorItem3: TdxLayoutSeparatorItem;
    dxLayoutGroup8: TdxLayoutGroup;
    dbEmail: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    dbTelefone: TcxDBMaskEdit;
    dxLayoutItem17: TdxLayoutItem;
    dbCelular: TcxDBMaskEdit;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    dbLogradouro: TcxDBTextEdit;
    dxLayoutItem19: TdxLayoutItem;
    dbNumero: TcxDBTextEdit;
    dxLayoutItem20: TdxLayoutItem;
    dbComplemento: TcxDBTextEdit;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutGroup10: TdxLayoutGroup;
    dbBairro: TcxDBTextEdit;
    dxLayoutItem22: TdxLayoutItem;
    dbCidade: TcxDBTextEdit;
    dxLayoutItem23: TdxLayoutItem;
    dbEstado: TcxDBLookupComboBox;
    dxLayoutItem24: TdxLayoutItem;
    dbCEP: TcxDBButtonEdit;
    dxLayoutItem25: TdxLayoutItem;
    dsEstados: TDataSource;
    dxLayoutSeparatorItem4: TdxLayoutSeparatorItem;
    dxLayoutGroup11: TdxLayoutGroup;
    dbExperiencia: TcxDBCheckBox;
    dxLayoutItem26: TdxLayoutItem;
    dbAntecedentes: TcxDBCheckBox;
    dxLayoutItem27: TdxLayoutItem;
    dbRestricoes: TcxDBCheckBox;
    dxLayoutItem28: TdxLayoutItem;
    dbVeiculo: TcxDBCheckBox;
    dxLayoutItem29: TdxLayoutItem;
    dbRestreamento: TcxDBCheckBox;
    dxLayoutItem30: TdxLayoutItem;
    dbLicenciamento: TcxDBCheckBox;
    dxLayoutItem31: TdxLayoutItem;
    dbDisponibilidade: TcxDBCheckBox;
    dxLayoutItem32: TdxLayoutItem;
    dxLayoutSeparatorItem5: TdxLayoutSeparatorItem;
    dxLayoutGroup12: TdxLayoutGroup;
    dbValidadeCNH: TcxDBDateEdit;
    dxLayoutItem33: TdxLayoutItem;
    dbCategoriaCNH: TcxDBTextEdit;
    dxLayoutItem34: TdxLayoutItem;
    sbTipoVeiculo: TcxDBComboBox;
    dxLayoutItem35: TdxLayoutItem;
    dbModelo: TcxDBTextEdit;
    dxLayoutItem36: TdxLayoutItem;
    dbAno: TcxDBTextEdit;
    dxLayoutItem37: TdxLayoutItem;
    dbCombustivel: TcxDBComboBox;
    dxLayoutItem38: TdxLayoutItem;
    dxLayoutSeparatorItem6: TdxLayoutSeparatorItem;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutGroup15: TdxLayoutGroup;
    dbRegioes: TcxDBMemo;
    dxLayoutItem40: TdxLayoutItem;
    dbObservacoes: TcxDBMemo;
    dxLayoutItem39: TdxLayoutItem;
    cxButton10: TcxButton;
    dxLayoutItem41: TdxLayoutItem;
    cxButton11: TcxButton;
    dxLayoutItem42: TdxLayoutItem;
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

    procedure ShowForm;
    procedure ExportGrid;
    procedure Search(sParam: string);
    procedure Insert;
    procedure Edit;
    procedure Cancel;
    procedure Documents;
    procedure SearchCEP(sCEP: string);
    procedure Save;

    function CustomSearchStr(sParam: string): string;
    function Validate(): boolean;
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
  if not Data_Sisgef.qryCandidatos.IsEmpty then
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
  SearchCEP(dbCEP.Text);
end;

procedure TviewCadastroCandidatos.actionSearchRecordsExecute(Sender: TObject);
begin
  Search(CustomSearchStr(parametro.Text));
end;

procedure TviewCadastroCandidatos.Cancel;
begin
  if dsCandidatos.State in [dsInsert, dsEdit] then
    Data_Sisgef.qryCandidatos.Cancel;
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
  view_SisgeFAttachDocuments.Pasta := 'Cand' + dbId.Text;
  view_SisgeFAttachDocuments.Show;
end;

procedure TviewCadastroCandidatos.Edit;
begin
  with Data_Sisgef do
  begin
    if qryCandidatos.Connection = nil then
      Exit;
    qryCandidatos.Edit;
  end;
  lgpContainer.ItemIndex := 1;
  dbNome.SetFocus;
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
  with Data_Sisgef do
  begin
    qryCandidatos.Active := False;
    qryCandidatos.Filtered := False;
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
  with Data_Sisgef do
  begin
    if qryCandidatos.Connection = nil then
      qryCandidatos.Connection := FConn.GetConnection;
    qryCandidatos.Open();
    qryCandidatos.Insert;
  end;
  lgpContainer.ItemIndex := 1;
  dbCategoria.SetFocus;
end;

procedure TviewCadastroCandidatos.Save;
var
  sMensagem: string;
begin
  if not Validate() then
    Exit;
  if dsCandidatos.State = dsEdit then
    sMensagem := 'Confirma alterar os dados do candidato '  + dbNome.Text + ' ?'
  else if dsCandidatos.State = dsInsert then
    sMensagem := 'Confirma incluir os dados do candidato '  + dbNome.Text + ' ?';
  if Application.MessageBox(PChar(sMensagem), 'Salvar', MB_YESNO + MB_ICONQUESTION) = mrNo then
    Exit;
  if Data_Sisgef.qryCandidatos.State in [dsEdit, dsInsert] then
  begin
    Data_Sisgef.qryCandidatos.Post;
    lgpContainer.ItemIndex := 0;
  end;
end;

procedure TviewCadastroCandidatos.Search(sParam: string);
begin
  with Data_Sisgef do
  begin
    if qryCandidatos.Connection = nil then
      qryCandidatos.Connection := FConn.GetConnection;
    qryCandidatos.Filtered := True;
    qryCandidatos.Filter := sParam;
    qryCandidatos.Open();
  end;
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
          Data_Sisgef.qryCandidatosDES_ENDERECO.AsString := Data_Sisgef.memTableCEPlogradouro.AsString;
          Data_Sisgef.qryCandidatosDES_COMPLEMENTO.AsString := Data_Sisgef.memTableCEPcomplemento.AsString;
          Data_Sisgef.qryCandidatosDES_BAIRRO.AsString := Data_Sisgef.memTableCEPbairro.AsString;
          Data_Sisgef.qryCandidatosDES_CIDADE.AsString := Data_Sisgef.memTableCEPlocalidade.AsString;
          Data_Sisgef.qryCandidatosDES_UF.AsString := Data_Sisgef.memTableCEPuf.AsString;
          Data_Sisgef.qryCandidatosNUM_CEP.AsString := Data_Sisgef.memTableCEPcep.AsString;
        end;
        Data_Sisgef.memTableCEP.Active := False;
        FreeAndNil(view_ListaCEPs);
      end;
    end
    else
    begin
      Data_Sisgef.qryCandidatosDES_ENDERECO.AsString := APICEP.APICEP.Enderecos.Logradouro;
      Data_Sisgef.qryCandidatosDES_COMPLEMENTO.AsString := APICEP.APICEP.Enderecos.Complemento;
      Data_Sisgef.qryCandidatosDES_BAIRRO.AsString := APICEP.APICEP.Enderecos.Bairro;
      Data_Sisgef.qryCandidatosDES_CIDADE.AsString := APICEP.APICEP.Enderecos.Cidade;
      Data_Sisgef.qryCandidatosDES_UF.AsString := APICEP.APICEP.Enderecos.UF;
    end;
  finally
    APICEP.Free;
    utils.Free;
  end;
end;

procedure TviewCadastroCandidatos.ShowForm;
begin
  lcbCategorias.EditValue := 0;
  FConn := TConnectionMySQL.Create;
end;

function TviewCadastroCandidatos.Validate: boolean;
begin
  Result := False;
  if dbNome.Text = EmptyStr then
  begin
    Application.MessageBox('Informe o nome do candidato.', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  if dbEmail.Text = EmptyStr then
  begin
    Application.MessageBox('Informe o endereço de e-mail do candidato.', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  if dbLogradouro.Text <> EmptyStr then
  begin
    if dbBairro.Text = EmptyStr then
    begin
      Application.MessageBox('Informe o bairro do endereço.', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
      Exit;
    end;
    if dbCidade.Text = EmptyStr then
    begin
      Application.MessageBox('Informe a cidade do endereço.', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
      Exit;
    end;
    if dbEstado.Text = EmptyStr then
    begin
      Application.MessageBox('Informe o estado do endereço.', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
      Exit;
    end;
  end;
  Result := True;
end;

end.
