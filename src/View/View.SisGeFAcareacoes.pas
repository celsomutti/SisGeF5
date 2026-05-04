unit View.SisGeFAcareacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxNavigator, cxDBNavigator, Vcl.Menus, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, Common.ENum,
  Common.Utils, System.Actions, Vcl.ActnList, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox, cxDBEdit,
  cxDropDownEdit, cxCalendar, cxCurrencyEdit, cxMemo, service.sistem, Control.Acareacao, service.SisGeFGeneralSearch,
  Control.Acessos;

type
  TviewAcareacoes = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    mtbAcareacao: TFDMemTable;
    dsAcareacao: TDataSource;
    lgpFooter: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    lgpContainer: TdxLayoutGroup;
    lgpGrid: TdxLayoutGroup;
    aclAcareacao: TActionList;
    lgpMenu: TdxLayoutGroup;
    cxButton2: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    actNovo: TAction;
    actEditar: TAction;
    actPesquisar: TAction;
    actGravar: TAction;
    actFinalizar: TAction;
    actExportar: TAction;
    actSair: TAction;
    cxButton3: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    dxLayoutSeparatorItem3: TdxLayoutSeparatorItem;
    btePesquisa: TcxButtonEdit;
    dxLayoutItem5: TdxLayoutItem;
    actLimpar: TAction;
    dxLayoutSeparatorItem4: TdxLayoutSeparatorItem;
    dxLayoutGroup1: TdxLayoutGroup;
    gridAcareacoesDBTableView1: TcxGridDBTableView;
    gridAcareacoesLevel1: TcxGridLevel;
    gridAcareacoes: TcxGrid;
    dxLayoutItem6: TdxLayoutItem;
    actExpandir: TAction;
    actRetrair: TAction;
    actPainel: TAction;
    dxLayoutGroup2: TdxLayoutGroup;
    cxButton5: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    cxButton6: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    cxButton7: TcxButton;
    dxLayoutItem9: TdxLayoutItem;
    gridAcareacoesDBTableView1SEQ_ACAREACAO: TcxGridDBColumn;
    gridAcareacoesDBTableView1ID_ACAREACAO: TcxGridDBColumn;
    gridAcareacoesDBTableView1DAT_ACAREACAO: TcxGridDBColumn;
    gridAcareacoesDBTableView1NUM_NOSSONUMERO: TcxGridDBColumn;
    gridAcareacoesDBTableView1COD_ENTREGADOR: TcxGridDBColumn;
    gridAcareacoesDBTableView1NOM_MOTORISTA: TcxGridDBColumn;
    gridAcareacoesDBTableView1COD_BASE: TcxGridDBColumn;
    gridAcareacoesDBTableView1NOM_BASE: TcxGridDBColumn;
    gridAcareacoesDBTableView1DAT_ENTREGA: TcxGridDBColumn;
    gridAcareacoesDBTableView1DES_MOTIVO: TcxGridDBColumn;
    gridAcareacoesDBTableView1DES_TRATATIVA: TcxGridDBColumn;
    gridAcareacoesDBTableView1DES_APURACAO: TcxGridDBColumn;
    gridAcareacoesDBTableView1DES_RESULTADO: TcxGridDBColumn;
    gridAcareacoesDBTableView1VAL_EXTRAVIO: TcxGridDBColumn;
    gridAcareacoesDBTableView1VAL_MULTA: TcxGridDBColumn;
    gridAcareacoesDBTableView1DES_ENVIO_CORRESPONDENCIA: TcxGridDBColumn;
    gridAcareacoesDBTableView1DES_RETORNO_CORRESPONDENCIA: TcxGridDBColumn;
    gridAcareacoesDBTableView1DES_OBSERVACOES: TcxGridDBColumn;
    gridAcareacoesDBTableView1DOM_FINALIZAR: TcxGridDBColumn;
    gridAcareacoesDBTableView1DES_EXECUTOR: TcxGridDBColumn;
    gridAcareacoesDBTableView1DAT_MANUTENCAO: TcxGridDBColumn;
    gridAcareacoesDBTableView1DAT_RETORNO: TcxGridDBColumn;
    gridAcareacoesDBTableView1DES_UNIDADE: TcxGridDBColumn;
    gridAcareacoesDBTableView1NOM_CONSUMIDOR: TcxGridDBColumn;
    gridAcareacoesDBTableView1DES_ENDERECO: TcxGridDBColumn;
    gridAcareacoesDBTableView1NUM_ENDERECO: TcxGridDBColumn;
    gridAcareacoesDBTableView1DES_BAIRRO: TcxGridDBColumn;
    gridAcareacoesDBTableView1DES_CIDADE: TcxGridDBColumn;
    gridAcareacoesDBTableView1NUM_CEP: TcxGridDBColumn;
    gridAcareacoesDBTableView1DES_REMETENTE: TcxGridDBColumn;
    gridAcareacoesDBTableView1DES_PRODUTO: TcxGridDBColumn;
    gridAcareacoesDBTableView1NOM_RECEBEDOR: TcxGridDBColumn;
    gridAcareacoesDBTableView1DES_IDENTIFICACAO: TcxGridDBColumn;
    gridAcareacoesDBTableView1DES_DOCUMENTO: TcxGridDBColumn;
    lgpCadastro: TdxLayoutGroup;
    actRetornar: TAction;
    dxLayoutGroup3: TdxLayoutGroup;
    dbCodigo: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    dbIdAcareacao: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    dbIdPedido: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    dbCodigoCliente: TcxDBButtonEdit;
    dxLayoutItem13: TdxLayoutItem;
    actPesquisarClientes: TAction;
    dbData: TcxDBDateEdit;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutSeparatorItem5: TdxLayoutSeparatorItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dbConsumidor: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    dbMotivo: TcxDBComboBox;
    dxLayoutItem17: TdxLayoutItem;
    dbDataEntrega: TcxDBDateEdit;
    dxLayoutItem18: TdxLayoutItem;
    dbValorMulta: TcxDBCurrencyEdit;
    dxLayoutItem19: TdxLayoutItem;
    dbMulta: TcxDBCurrencyEdit;
    dxLayoutItem20: TdxLayoutItem;
    dbTratativa: TcxDBComboBox;
    dxLayoutItem21: TdxLayoutItem;
    dbApuracao: TcxDBComboBox;
    dxLayoutItem22: TdxLayoutItem;
    dbDataRetorno: TcxDBDateEdit;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dbResultado: TcxDBComboBox;
    dxLayoutItem24: TdxLayoutItem;
    dbStatus: TcxDBCheckBox;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dbObs: TcxDBMemo;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    cxButton8: TcxButton;
    dxLayoutItem27: TdxLayoutItem;
    cxButton9: TcxButton;
    dxLayoutItem28: TdxLayoutItem;
    cxButton10: TcxButton;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    actPesquisaEntregador: TAction;
    actPesquisaBases: TAction;
    dbCodigoMotorista: TcxDBButtonEdit;
    dxLayoutItem30: TdxLayoutItem;
    dbNomeMotorista: TcxDBTextEdit;
    dxLayoutItem31: TdxLayoutItem;
    dbCodigoBase: TcxDBButtonEdit;
    dxLayoutItem32: TdxLayoutItem;
    dbNomeBase: TcxDBTextEdit;
    dxLayoutItem33: TdxLayoutItem;
    dbNomeCliente: TcxDBTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    gridAcareacoesDBTableView1COD_CLIENTE: TcxGridDBColumn;
    gridAcareacoesDBTableView1NOM_CLIENTE: TcxGridDBColumn;
    mtbAcareacaoSEQ_ACAREACAO: TFDAutoIncField;
    mtbAcareacaoID_ACAREACAO: TStringField;
    mtbAcareacaoCOD_CLIENTE: TIntegerField;
    mtbAcareacaoNOM_CLIENTE: TStringField;
    mtbAcareacaoDAT_ACAREACAO: TDateTimeField;
    mtbAcareacaoNUM_NOSSONUMERO: TStringField;
    mtbAcareacaoCOD_ENTREGADOR: TIntegerField;
    mtbAcareacaoNOM_MOTORISTA: TStringField;
    mtbAcareacaoCOD_BASE: TIntegerField;
    mtbAcareacaoNOM_BASE: TStringField;
    mtbAcareacaoDAT_ENTREGA: TDateField;
    mtbAcareacaoDES_MOTIVO: TStringField;
    mtbAcareacaoDES_TRATATIVA: TStringField;
    mtbAcareacaoDES_APURACAO: TStringField;
    mtbAcareacaoDES_RESULTADO: TStringField;
    mtbAcareacaoVAL_EXTRAVIO: TFloatField;
    mtbAcareacaoVAL_MULTA: TFloatField;
    mtbAcareacaoDES_ENVIO_CORRESPONDENCIA: TStringField;
    mtbAcareacaoDES_RETORNO_CORRESPONDENCIA: TStringField;
    mtbAcareacaoDES_OBSERVACOES: TMemoField;
    mtbAcareacaoDES_EXECUTOR: TStringField;
    mtbAcareacaoDAT_MANUTENCAO: TDateTimeField;
    mtbAcareacaoDAT_RETORNO: TDateTimeField;
    mtbAcareacaoDES_UNIDADE: TStringField;
    mtbAcareacaoNOM_CONSUMIDOR: TStringField;
    mtbAcareacaoDES_ENDERECO: TStringField;
    mtbAcareacaoNUM_ENDERECO: TStringField;
    mtbAcareacaoDES_BAIRRO: TStringField;
    mtbAcareacaoDES_CIDADE: TStringField;
    mtbAcareacaoNUM_CEP: TStringField;
    mtbAcareacaoDES_REMETENTE: TStringField;
    mtbAcareacaoDES_PRODUTO: TStringField;
    mtbAcareacaoNOM_RECEBEDOR: TStringField;
    mtbAcareacaoDES_IDENTIFICACAO: TStringField;
    mtbAcareacaoDES_DOCUMENTO: TStringField;
    actAnexar: TAction;
    cxButton11: TcxButton;
    dxLayoutItem34: TdxLayoutItem;
    mtbAcareacaoDOM_FINALIZAR: TShortintField;
    procedure actExpandirExecute(Sender: TObject);
    procedure actRetrairExecute(Sender: TObject);
    procedure actPainelExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actPesquisarExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actRetornarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actExportarExecute(Sender: TObject);
    procedure actLimparExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mtbAcareacaoAfterInsert(DataSet: TDataSet);
    procedure mtbAcareacaoAfterEdit(DataSet: TDataSet);
    procedure dbStatusPropertiesChange(Sender: TObject);
    procedure gridAcareacoesDBTableView1DblClick(Sender: TObject);
    procedure gridAcareacoesDBTableView1NavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure actGravarExecute(Sender: TObject);
    procedure mtbAcareacaoBeforePost(DataSet: TDataSet);
    procedure actFinalizarExecute(Sender: TObject);
    procedure actPesquisaEntregadorExecute(Sender: TObject);
    procedure actPesquisarClientesExecute(Sender: TObject);
    procedure actPesquisaBasesExecute(Sender: TObject);
    procedure dbCodigoClientePropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure dbCodigoMotoristaPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure dbCodigoBasePropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
  private
    FAcao : TAcao;
    FSystem: TSistem;
    Facareacao: TAcareacaoControl;

    procedure ExecSearch(sQuery: string);

    procedure Inserir;
    procedure Editar;
    procedure ExportGrid;
    procedure SetupAcareacoes;
    procedure FinalizaAcareacoes;
    procedure Gravar;
    procedure ResetGrid;
    procedure ProcuraEntregador;
    procedure ProcurarBase;
    procedure ProcuraCliente;
    procedure ProcuraNomeMotorista(iId: integer);
    procedure ProcuraNomeBase(iId: integer);
    procedure ProcuraNomeCliente(iId: integer);
    procedure Acessos;

    function CustomSearchStr(sParam: string): string;
  public
    { Public declarations }
  end;

var
  viewAcareacoes: TviewAcareacoes;

implementation

{$R *.dfm}

uses Data.SisGeF, View.SisGeFGeneralsSearch;

procedure TviewAcareacoes.Acessos;
var
  FAcesso : TAcessosControl;
  i: integer;
begin
  FAcesso := TAcessosControl.Create;
  FSystem := TSistem.GetInstance;
  try
    for i := 0 to Pred(aclAcareacao.ActionCount) do
    begin
      if Fsystem.AdmUser <> 'S' then
      begin
        if TAction(aclAcareacao.Actions[i]).Tag = 0 then
          TAction(aclAcareacao.Actions[i]).Enabled := True
        else
          TAction(aclAcareacao.Actions[i]).Enabled := FAcesso.VerificaLogin(TAction(aclAcareacao.Actions[i]).Tag,
                                                                            StrToIntDef(FSystem.CurrentGroup,0));
      end
      else
      begin
        TAction(aclAcareacao.Actions[i]).Enabled := True
      end;
    end;
  finally
    FAcesso.Free;
  end;
end;

procedure TviewAcareacoes.actEditarExecute(Sender: TObject);
begin
  Editar;
end;

procedure TviewAcareacoes.actExpandirExecute(Sender: TObject);
begin
  gridAcareacoesDBTableView1.ViewData.Expand(True);
end;

procedure TviewAcareacoes.actExportarExecute(Sender: TObject);
begin
  ExportGrid;
end;

procedure TviewAcareacoes.actFinalizarExecute(Sender: TObject);
begin
  FinalizaAcareacoes;
end;

procedure TviewAcareacoes.actGravarExecute(Sender: TObject);
begin
  if mtbAcareacao.State in [dsInsert, dsEdit] then
    mtbAcareacao.Post;
end;

procedure TviewAcareacoes.actLimparExecute(Sender: TObject);
begin
  btePesquisa.Clear;
end;

procedure TviewAcareacoes.actNovoExecute(Sender: TObject);
begin
  Inserir;
end;

procedure TviewAcareacoes.actPainelExecute(Sender: TObject);
begin
  gridAcareacoesDBTableView1.OptionsView.GroupByBox := (not gridAcareacoesDBTableView1.OptionsView.GroupByBox);
end;

procedure TviewAcareacoes.actPesquisaBasesExecute(Sender: TObject);
begin
  ProcurarBase;
end;

procedure TviewAcareacoes.actPesquisaEntregadorExecute(Sender: TObject);
begin
  ProcuraEntregador;
end;

procedure TviewAcareacoes.actPesquisarClientesExecute(Sender: TObject);
begin
  ProcuraCliente;
end;

procedure TviewAcareacoes.actPesquisarExecute(Sender: TObject);
begin
  ExecSearch(CustomSearchStr(btePesquisa.Text));
end;

procedure TviewAcareacoes.actRetornarExecute(Sender: TObject);
begin
  if mtbAcareacao.State in [dsInsert, dsEdit] then mtbAcareacao.Cancel;
  FAcao := tacIndefinido;
  lgpContainer.ItemIndex := 0;
  if gridAcareacoesDBTableView1.ViewData.RowCount = 0 then
    btePesquisa.SetFocus
  else
    gridAcareacoes.SetFocus;
end;

procedure TviewAcareacoes.actRetrairExecute(Sender: TObject);
begin
  gridAcareacoesDBTableView1.ViewData.Collapse(True);
end;

procedure TviewAcareacoes.actSairExecute(Sender: TObject);
begin
  Self.Close;
end;

function TviewAcareacoes.CustomSearchStr(sParam: string): string;
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
      for i := 0 to gridAcareacoesDBTableView1.ColumnCount - 1 do
      begin
        if gridAcareacoesDBTableView1.Columns[i].Visible then
        begin
          sField := gridAcareacoesDBTableView1.Columns[i].DataBinding.FieldName;
          sType := gridAcareacoesDBTableView1.Columns[i].DataBinding.ValueType;
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

//    if lcbCategorias.EditValue > 0 then
//    begin
//      if sQueryPadrao.IsEmpty then
//        sQueryPadrao := sQueryPadrao + '('
//      else
//        sQueryPadrao := sQueryPadrao + ' and ';
//      sQueryPadrao := sQueryPadrao + ' id_categoria = ' + VarToStrDef(lcbCategorias.EditValue, '0');
//    end;

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

procedure TviewAcareacoes.dbCodigoBasePropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  if mtbAcareacao.State in [dsInsert, dsEdit] then
    ProcuraNomeBase(DisplayValue);
end;

procedure TviewAcareacoes.dbCodigoClientePropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  if mtbAcareacao.State in [dsInsert, dsEdit] then
    ProcuraNomeCliente(DisplayValue);
end;

procedure TviewAcareacoes.dbCodigoMotoristaPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  if mtbAcareacao.State in [dsInsert, dsEdit] then
    ProcuraNomeMotorista(DisplayValue);
end;

procedure TviewAcareacoes.dbStatusPropertiesChange(Sender: TObject);
begin
  if dbStatus.Checked then
  begin
    dbStatus.Caption := 'FINALIZADA';
    dbStatus.Style.Font.Color := clGreen;
  end
  else
  begin
    dbStatus.Caption := 'PENDENTE';
    dbStatus.Style.Font.Color := clRed;
  end;
end;

procedure TviewAcareacoes.Editar;
begin
  mtbAcareacao.Edit;
  dbIdAcareacao.Properties.ReadOnly := True;
  dbIdPedido.Properties.ReadOnly := True;
  lgpContainer.ItemIndex := 1;
end;

procedure TviewAcareacoes.ExecSearch(sQuery: string);
var
  acareacao : TAcareacaoControl;
  aParam : Array of String;
begin
  acareacao := TAcareacaoControl.Create;
  SetLength(aParam, 3);

  try
     aParam[0] := '*';
     aParam[1] := 'VIEW';
     aParam[2] := sQuery;

     if acareacao.CustomSearch(aParam) then
     begin
       mtbacareacao.Active := False;
       mtbacareacao.Data := acareacao.Acareacoes.Query.Data;
     end;
     acareacao.Acareacoes.Query.Close;
  finally
    Finalize(aParam);
    acareacao.Free;
  end;
end;

procedure TviewAcareacoes.ExportGrid;
var
  utils : TUtils;
  sMensagem: String;
begin
  try
    utils := TUtils.Create;

    if gridAcareacoesDBTableView1.ViewData.RowCount = 0 then Exit;

    if Data_Sisgef.SaveDialog.Execute() then
    begin
      if FileExists(Data_Sisgef.SaveDialog.FileName) then
      begin
        sMensagem := 'Arquivo ' + Data_Sisgef.SaveDialog.FileName + ' já existe! Sobrepor ?';
        if Application.MessageBox(PChar(sMensagem), 'Sobrepor', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit
      end;

      utils.ExportarDados(gridAcareacoes,Data_Sisgef.SaveDialog.FileName);

    end;
  finally
    utils.Free;
  end;
end;

procedure TviewAcareacoes.FinalizaAcareacoes;
begin
  try
    mtbAcareacao.Tag := -1;
    Facareacao := TAcareacaoControl.Create;
    SetupAcareacoes;
    mtbAcareacaoDOM_FINALIZAR.Value := 1;
    if Application.MessageBox('Confirma finalizar esta acareação?', 'Finalizar', MB_YESNO + MB_ICONQUESTION) = ID_NO then
    begin
      mtbAcareacaoDOM_FINALIZAR.Value := 0;
      Exit;
    end;
    if FAcareacao.Finalizar then
    begin
      Application.MessageBox('Acareação Finalizada!', 'Finalizar', MB_OK + MB_ICONINFORMATION);
      mtbAcareacao.Post;
      FAcareacao.Acareacoes.Acao := tacIndefinido;
    end
    else
    begin
      mtbAcareacaoDOM_FINALIZAR.Value := 0;
    end;
  finally
    mtbAcareacao.Tag := 0;
    Facareacao.Free;
  end;
end;

procedure TviewAcareacoes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  mtbAcareacao.Active := False;
  Action := caFree;
  viewAcareacoes := nil;
end;

procedure TviewAcareacoes.FormShow(Sender: TObject);
begin
  FSystem := TSistem.GetInstance;
  Acessos;
  btePesquisa.SetFocus;
end;

procedure TviewAcareacoes.Gravar;
begin
  Facareacao := TAcareacaoControl.Create;
  try
    SetupAcareacoes;
    if not Facareacao.ValidaCampos() then Exit;
    if Application.MessageBox('Confirma gravar esta acareação?', 'Gravar', MB_YESNO + MB_ICONQUESTION) = ID_NO then Exit;
    if mtbAcareacao.State in [dsInsert, dsEdit] then
      mtbAcareacao.Post;
    FAcareacao.Acareacoes.Acao := FAcao;
    if Facareacao.Gravar then
    begin
      Application.MessageBox('Acareação salva com sucesso!', 'Gravar', MB_OK + MB_ICONINFORMATION);
      if FAcao = tacIncluir then
      begin
        ExecSearch(CustomSearchStr(btePesquisa.Text));
        lgpContainer.ItemIndex := 0;
        if gridAcareacoesDBTableView1.ViewData.RowCount = 0 then
          btePesquisa.SetFocus
        else
          gridAcareacoes.SetFocus;
      end;
    end
    else
    begin
      Abort;
    end;
  finally
    Facareacao.Free;
  end;

end;

procedure TviewAcareacoes.gridAcareacoesDBTableView1DblClick(Sender: TObject);
begin
  if gridAcareacoesDBTableView1.ViewData.RowCount = 0 then Exit;
  Editar;
end;

procedure TviewAcareacoes.gridAcareacoesDBTableView1NavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer;
  var ADone: Boolean);
begin
  case AButtonIndex of
    16 : ResetGrid;
  end;
end;

procedure TviewAcareacoes.Inserir;
begin
  dbIdAcareacao.Properties.ReadOnly := False;
  dbIdPedido.Properties.ReadOnly := False;
  if not mtbAcareacao.Active then mtbAcareacao.Active := True;
  mtbAcareacao.Insert;
  mtbAcareacaoDAT_ACAREACAO.AsDateTime := Now();
  lgpContainer.ItemIndex := 1;
end;

procedure TviewAcareacoes.mtbAcareacaoAfterEdit(DataSet: TDataSet);
begin
  Facao := tacAlterar;
end;

procedure TviewAcareacoes.mtbAcareacaoAfterInsert(DataSet: TDataSet);
begin
  FAcao := tacIncluir;
end;

procedure TviewAcareacoes.mtbAcareacaoBeforePost(DataSet: TDataSet);
begin
  if mtbAcareacao.Tag < 0 then
    Exit;
  Facareacao := TAcareacaoControl.Create;
  try
    SetupAcareacoes;
    FAcareacao.Acareacoes.Acao := FAcao;
    if not Facareacao.ValidaCampos() then Abort;
    if Application.MessageBox('Confirma gravar esta acareação?', 'Gravar', MB_YESNO + MB_ICONQUESTION) = ID_NO then
    begin
      Abort;
      Exit;
    end;
    if Facareacao.Gravar then
    begin
      Application.MessageBox('Acareação salva com sucesso!', 'Gravar', MB_OK + MB_ICONINFORMATION);
      if FAcao = tacIncluir then
      begin
        lgpContainer.ItemIndex := 0;
        if gridAcareacoesDBTableView1.ViewData.RowCount = 0 then
          btePesquisa.SetFocus
        else
          gridAcareacoes.SetFocus;
        mtbAcareacaoSEQ_ACAREACAO.AsInteger := Facareacao.Acareacoes.Sequencia;
      end;
    end
    else
    begin
      Abort;
    end;
  finally
    Facareacao.Free;
  end;
end;

procedure TviewAcareacoes.ProcuraCliente;
begin
  if not Assigned(viewGeneralSearch) then
    viewGeneralSearch := TviewGeneralSearch.Create(Application);
  viewGeneralSearch.Campos := 'cod_Cliente as "Código", nom_fantasia as "Nome Fantasia"';
  viewGeneralSearch.Tabela := 'crm_clientes';
  viewGeneralSearch.Criterio := 'TRUE';
  if viewGeneralSearch.ShowModal = mrOk then
  begin
    mtbAcareacaoCOD_CLIENTE.AsInteger := viewGeneralSearch.mtbPesquisa.Fields[0].Value;
    mtbAcareacaoNOM_CLIENTE.AsString := viewGeneralSearch.mtbPesquisa.Fields[1].Value;
  end;
  FreeAndNil(viewGeneralSearch);
end;

procedure TviewAcareacoes.ProcuraEntregador;
begin
  if not Assigned(viewGeneralSearch) then
    viewGeneralSearch := TviewGeneralSearch.Create(Application);
  viewGeneralSearch.Campos := 'cod_entregador as Motorista, nom_motorista as "Nome Motorista", cod_base as Base, nom_base as "Nome Base"';
  viewGeneralSearch.Tabela := 'view_motoristasbases';
  viewGeneralSearch.Criterio := 'TRUE';
  if viewGeneralSearch.ShowModal = mrOk then
  begin
    mtbAcareacaoCOD_ENTREGADOR.AsInteger := viewGeneralSearch.mtbPesquisa.Fields[0].Value;
    mtbAcareacaoNOM_MOTORISTA.AsString := viewGeneralSearch.mtbPesquisa.Fields[1].Value;
    mtbAcareacaoCOD_BASE.AsInteger := viewGeneralSearch.mtbPesquisa.Fields[2].Value;
    mtbAcareacaoNOM_BASE.AsString := viewGeneralSearch.mtbPesquisa.Fields[3].Value;
  end;
  FreeAndNil(viewGeneralSearch);
end;

procedure TviewAcareacoes.ProcuraNomeCliente(iId: integer);
var
  FSearch: TSearch;
  aParam: array of string;
begin
  FSearch := TSearch.Create;
  SetLength(aParam, 3);
  mtbAcareacaoNOM_CLIENTE.AsString := EmptyStr;
  try
    aParam := ['nom_fantasia', 'crm_clientes', 'cod_cliente = ' + iId.ToString];
    if not FSearch.ReturnSearch(aParam) then
    begin
      Application.MessageBox(PChar(FSearch.Mensagem), 'Atenção', MB_OK + MB_ICONWARNING);
      dbCodigoCliente.SetFocus;
      Exit;
    end;
    mtbAcareacaoNOM_CLIENTE.AsString := FSearch.Query.Fields[0].Value;
  finally
    Finalize(aParam);
    FSearch.Free;
  end;
end;

procedure TviewAcareacoes.ProcuraNomeMotorista(iId: integer);
var
  FSearch: TSearch;
  aParam: array of string;
begin
  FSearch := TSearch.Create;
  SetLength(aParam, 3);
  mtbAcareacaoNOM_MOTORISTA.AsString := EmptyStr;
  try
    aParam := ['nom_motorista', 'view_motoristasbases', 'cod_entregador = ' + iId.ToString];
    if not FSearch.ReturnSearch(aParam) then
    begin
      Application.MessageBox(PChar(FSearch.Mensagem), 'Atenção', MB_OK + MB_ICONWARNING);
      dbCodigoMotorista.SetFocus;
      Exit;
    end;
    mtbAcareacaoNOM_MOTORISTA.AsString := FSearch.Query.Fields[0].Value;
  finally
    Finalize(aParam);
    FSearch.Free;
  end;
end;

procedure TviewAcareacoes.ProcurarBase;
begin
  if not Assigned(viewGeneralSearch) then
    viewGeneralSearch := TviewGeneralSearch.Create(Application);
  viewGeneralSearch.Campos := 'cod_agente as "Código", nom_fantasia as "Nome Fantasia"';
  viewGeneralSearch.Tabela := 'tbagentes';
  viewGeneralSearch.Criterio := 'TRUE';
  if viewGeneralSearch.ShowModal = mrOk then
  begin
    mtbAcareacaoCOD_BASE.AsInteger := viewGeneralSearch.mtbPesquisa.Fields[0].Value;
    mtbAcareacaoNOM_BASE.AsString := viewGeneralSearch.mtbPesquisa.Fields[1].Value;
  end;
  FreeAndNil(viewGeneralSearch);
end;

procedure TviewAcareacoes.ProcuraNomeBase(iId: integer);
var
  FSearch: TSearch;
  aParam: array of string;
begin
  FSearch := TSearch.Create;
  SetLength(aParam, 3);
  mtbAcareacaoNOM_BASE.AsString := EmptyStr;
  try
    aParam := ['nom_base', 'view_motoristasbases', 'cod_base = ' + iId.ToString];
    if not FSearch.ReturnSearch(aParam) then
    begin
      Application.MessageBox(PChar(FSearch.Mensagem), 'Atenção', MB_OK + MB_ICONWARNING);
      dbCodigoBase.SetFocus;
      Exit;
    end;
    mtbAcareacaoNOM_BASE.AsString := FSearch.Query.Fields[0].Value;
  finally
    Finalize(aParam);
    FSearch.Free;
  end;
end;

procedure TviewAcareacoes.ResetGrid;
begin
  mtbAcareacao.Active := False;
  btePesquisa.SetFocus;
end;

procedure TviewAcareacoes.SetupAcareacoes;
begin
  FAcareacao.Acareacoes.Sequencia:= mtbAcareacaoSEQ_ACAREACAO.AsInteger;
  FAcareacao.Acareacoes.Id := mtbAcareacaoID_ACAREACAO.AsString;
  FAcareacao.Acareacoes.Data := mtbAcareacaoDAT_ACAREACAO.AsDateTime;
  FAcareacao.Acareacoes.Cliente := mtbAcareacaoCOD_CLIENTE.AsInteger;
  FAcareacao.Acareacoes.Nossonumero := mtbAcareacaoNUM_NOSSONUMERO.AsString;
  FAcareacao.Acareacoes.Entregador := mtbAcareacaoCOD_ENTREGADOR.AsInteger;
  FAcareacao.Acareacoes.Base := mtbAcareacaoCOD_BASE.AsInteger;
  FAcareacao.Acareacoes.DataEntrega := mtbAcareacaoDAT_ENTREGA.AsDateTime;
  FAcareacao.Acareacoes.Motivo := mtbAcareacaoDES_MOTIVO.AsString;
  FAcareacao.Acareacoes.Tratativa := mtbAcareacaoDES_TRATATIVA.AsString;
  FAcareacao.Acareacoes.Apuracao := mtbAcareacaoDES_APURACAO.AsString;
  FAcareacao.Acareacoes.Resultado := mtbAcareacaoDES_RESULTADO.AsString;
  FAcareacao.Acareacoes.Extravio := mtbAcareacaoVAL_EXTRAVIO.AsFloat;
  FAcareacao.Acareacoes.Multa := mtbAcareacaoVAL_MULTA.AsFloat;
  FAcareacao.Acareacoes.Envio := mtbAcareacaoDES_ENVIO_CORRESPONDENCIA.AsString;
  FAcareacao.Acareacoes.Retorno := mtbAcareacaoDES_RETORNO_CORRESPONDENCIA.AsString;
  if mtbAcareacaoDOM_FINALIZAR.AsInteger = 0 then
    FAcareacao.Acareacoes.Finalizar := False
  else
    FAcareacao.Acareacoes.Finalizar := True;
  FAcareacao.Acareacoes.Obs := mtbAcareacaoDES_OBSERVACOES.AsString;
  FAcareacao.Acareacoes.Executor := FSystem.CurrentLogin;
  FAcareacao.Acareacoes.Manutencao := Now();
  FAcareacao.Acareacoes.Endereco := mtbAcareacaoDES_ENDERECO.AsString;
  FAcareacao.Acareacoes.Numero:= mtbAcareacaoNUM_ENDERECO.AsString;
  FAcareacao.Acareacoes.Bairro := mtbAcareacaoDES_BAIRRO.AsString;
  FAcareacao.Acareacoes.Cidade := mtbAcareacaoDES_CIDADE.AsString;
  FAcareacao.Acareacoes.CEP := mtbAcareacaoNUM_CEP.AsString;
  FAcareacao.Acareacoes.Remetente := mtbAcareacaoDES_REMETENTE.AsString;
  FAcareacao.Acareacoes.Produto := mtbAcareacaoDES_PRODUTO.AsString;
  FAcareacao.Acareacoes.Recebedor := mtbAcareacaoNOM_RECEBEDOR.AsString;
  FAcareacao.Acareacoes.Identificacao := mtbAcareacaoDES_IDENTIFICACAO.AsString;
  FAcareacao.Acareacoes.Documento := mtbAcareacaoDES_DOCUMENTO.AsString;
  FAcareacao.Acareacoes.Unidade := mtbAcareacaoDES_UNIDADE.AsString;
  FAcareacao.Acareacoes.DataRetorno := mtbAcareacaoDAT_RETORNO.AsDateTime;
end;

end.
