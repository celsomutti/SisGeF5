unit View.ExtraviosSinistrosMultas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList, dxSkinsCore, dxSkinsDefaultPainters, cxClasses, dxBar,
  Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxLabel, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, cxCheckBox, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.StorageBin, Common.Utils, Control.ExtraviosMultas, cxCalendar,
  cxCurrencyEdit, cxBlobEdit, dxBarBuiltInMenu, cxPC, cxFilterControl, cxDBFilterControl, cxDBLookupComboBox, Common.ENum,
  View.CadastroExtravios, Control.EntregadoresExpressas, Global.Parametros, Control.Lancamentos, frxClass, cxImageComboBox,
  cxProgressBar;

type
  Tview_ExtraviosSinistrosMultas = class(TForm)
    actionListExtravios: TActionList;
    actionNovo: TAction;
    actionEditar: TAction;
    actionEstornar: TAction;
    actionCancelar: TAction;
    actionFiltro: TAction;
    actionFinalizar: TAction;
    actionExportar: TAction;
    actionFechar: TAction;
    barManager: TdxBarManager;
    barManagerBar1: TdxBar;
    actionImprimirDeclaracao: TAction;
    actionImprimirRecibo: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarSubItem2: TdxBarSubItem;
    actionImprimir: TAction;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    actionPesquisar: TAction;
    memTableExtravios: TFDMemTable;
    dsExtravios: TDataSource;
    actionPainelGrupos: TAction;
    memTableExtraviosCOD_EXTRAVIO: TIntegerField;
    memTableExtraviosCOD_AGENTE: TIntegerField;
    memTableExtraviosNOM_AGENTE: TStringField;
    memTableExtraviosCOD_ENTREGADOR: TIntegerField;
    memTableExtraviosCOD_CADASTRO: TIntegerField;
    memTableExtraviosNOM_ENTREGADOR: TStringField;
    memTableExtraviosNUM_CNPJ: TStringField;
    memTableExtraviosDES_RAZAO_SOCIAL: TStringField;
    memTableExtraviosDAT_EXTRAVIO: TDateField;
    memTableExtraviosDES_EXTRAVIO: TStringField;
    memTableExtraviosNUM_NOSSONUMERO: TStringField;
    memTableExtraviosVAL_PRODUTO: TFloatField;
    memTableExtraviosVAL_MULTA: TFloatField;
    memTableExtraviosVAL_VERBA: TFloatField;
    memTableExtraviosVAL_TOTAL: TFloatField;
    memTableExtraviosDOM_RESTRICAO: TStringField;
    memTableExtraviosDES_OBSERVACOES: TMemoField;
    memTableExtraviosSEQ_ACAREACAO: TIntegerField;
    memTableExtraviosNUM_EXTRATO: TStringField;
    memTableExtravioscod_awb: TStringField;
    memTableExtraviosdes_produto: TStringField;
    pageControlPesquisa: TcxPageControl;
    tabResultado: TcxTabSheet;
    gridExtravios: TcxGrid;
    gridExtraviosDBTableView1: TcxGridDBTableView;
    gridExtraviosDBTableView1COD_EXTRAVIO: TcxGridDBColumn;
    gridExtraviosDBTableView1COD_TIPO: TcxGridDBColumn;
    gridExtraviosDBTableView1DES_EXTRAVIO: TcxGridDBColumn;
    gridExtraviosDBTableView1DAT_EXTRAVIO: TcxGridDBColumn;
    gridExtraviosDBTableView1NUM_NOSSONUMERO: TcxGridDBColumn;
    gridExtraviosDBTableView1DOM_RESTRICAO: TcxGridDBColumn;
    gridExtraviosDBTableView1VAL_PERCENTUAL_PAGO: TcxGridDBColumn;
    gridExtraviosDBTableView1VAL_PRODUTO: TcxGridDBColumn;
    gridExtraviosDBTableView1VAL_MULTA: TcxGridDBColumn;
    gridExtraviosDBTableView1VAL_VERBA: TcxGridDBColumn;
    gridExtraviosDBTableView1VAL_TOTAL: TcxGridDBColumn;
    gridExtraviosDBTableView1cod_awb: TcxGridDBColumn;
    gridExtraviosDBTableView1des_produto: TcxGridDBColumn;
    gridExtraviosDBTableView1SEQ_ACAREACAO: TcxGridDBColumn;
    gridExtraviosDBTableView1NUM_EXTRATO: TcxGridDBColumn;
    gridExtraviosDBTableView1COD_AGENTE: TcxGridDBColumn;
    gridExtraviosDBTableView1NOM_AGENTE: TcxGridDBColumn;
    gridExtraviosDBTableView1COD_ENTREGADOR: TcxGridDBColumn;
    gridExtraviosDBTableView1NOM_ENTREGADOR: TcxGridDBColumn;
    gridExtraviosDBTableView1COD_CADASTRO: TcxGridDBColumn;
    gridExtraviosDBTableView1NUM_CNPJ: TcxGridDBColumn;
    gridExtraviosDBTableView1DES_RAZAO_SOCIAL: TcxGridDBColumn;
    gridExtraviosDBTableView1DES_OBSERVACOES: TcxGridDBColumn;
    gridExtraviosLevel1: TcxGridLevel;
    tabFiltro: TcxTabSheet;
    actionFiltrar: TAction;
    actionCancelarFiltro: TAction;
    panelFooterFiltro: TPanel;
    filtroExtravios: TcxDBFilterControl;
    actionLimparFiltro: TAction;
    memTableExtravioscod_cliente: TIntegerField;
    gridExtraviosDBTableView1cod_cliente: TcxGridDBColumn;
    dsClientes: TDataSource;
    frxDeclaracao: TfrxReport;
    actionImportar: TAction;
    dxBarLargeButton12: TdxBarLargeButton;
    panelPesquisa: TPanel;
    cxLabel1: TcxLabel;
    pesquisar: TcxTextEdit;
    cxButton1: TcxButton;
    cxLabel2: TcxLabel;
    comboBoxCampos: TcxComboBox;
    checkBoxGrupo: TcxCheckBox;
    memTableExtraviosCOD_TIPO: TIntegerField;
    memTableExtraviosVAL_PERCENTUAL: TSingleField;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    procedure actionFecharExecute(Sender: TObject);
    procedure actionPainelGruposExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridExtraviosDBTableView1NavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure actionPesquisarExecute(Sender: TObject);
    procedure actionFiltroExecute(Sender: TObject);
    procedure actionFiltrarExecute(Sender: TObject);
    procedure actionLimparFiltroExecute(Sender: TObject);
    procedure actionCancelarFiltroExecute(Sender: TObject);
    procedure actionCancelarExecute(Sender: TObject);
    procedure dsExtraviosStateChange(Sender: TObject);
    procedure memTableExtraviosAfterClose(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure actionEditarExecute(Sender: TObject);
    procedure actionNovoExecute(Sender: TObject);
    procedure gridExtraviosDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
      AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actionEstornarExecute(Sender: TObject);
    procedure actionExportarExecute(Sender: TObject);
    procedure actionFinalizarExecute(Sender: TObject);
    procedure memTableExtraviosAfterScroll(DataSet: TDataSet);
    procedure memTableExtraviosAfterOpen(DataSet: TDataSet);
    procedure actionImprimirExecute(Sender: TObject);
    procedure actionImportarExecute(Sender: TObject);
    procedure pageControlPesquisaChange(Sender: TObject);
  private
    { Private declarations }
    function Formulafilro(iIndex: integer; sTexto: string): boolean;
    procedure MostraFiltro;
    procedure Filtro;
    procedure CancelarPesquisa;
    procedure CancelaFiltro;
    procedure StartForm;
    procedure MostraCadastro(FAcao: TAcao; iNumero: integer);
    procedure InsertData;
    procedure EditData;
    procedure FinalizeData;
    procedure Estorno;
    procedure Exportar;
    procedure ModoButtons;
    procedure Imprimir(iCliente: integer);
    procedure DeclaracaoDirect;
    procedure ImportarDados;
    function ConfirmPassword(): boolean;
  public
    { Public declarations }
  end;

var
  view_ExtraviosSinistrosMultas: Tview_ExtraviosSinistrosMultas;

implementation

{$R *.dfm}

uses Data.SisGeF, View.Impressao, View.SisGeFConfirmPassword, View.ImportacaoPlanilhaExtravios;

procedure Tview_ExtraviosSinistrosMultas.actionCancelarExecute(Sender: TObject);
begin
  CancelarPesquisa;
end;

procedure Tview_ExtraviosSinistrosMultas.actionCancelarFiltroExecute(Sender: TObject);
begin
  CancelaFiltro;
end;

procedure Tview_ExtraviosSinistrosMultas.actionEditarExecute(Sender: TObject);
begin
  EditData;
end;

procedure Tview_ExtraviosSinistrosMultas.actionEstornarExecute(Sender: TObject);
begin
  Estorno;
end;

procedure Tview_ExtraviosSinistrosMultas.actionExportarExecute(Sender: TObject);
begin
  Exportar;
end;

procedure Tview_ExtraviosSinistrosMultas.actionFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_ExtraviosSinistrosMultas.actionFiltrarExecute(Sender: TObject);
begin
  Filtro;
end;

procedure Tview_ExtraviosSinistrosMultas.actionFiltroExecute(Sender: TObject);
begin
  MostraFiltro;
end;

procedure Tview_ExtraviosSinistrosMultas.actionFinalizarExecute(Sender: TObject);
begin
  FinalizeData;
end;

procedure Tview_ExtraviosSinistrosMultas.actionImportarExecute(Sender: TObject);
begin
  ImportarDados;
end;

procedure Tview_ExtraviosSinistrosMultas.actionImprimirExecute(Sender: TObject);
begin
  Imprimir(memTableExtravioscod_cliente.AsInteger);
end;

procedure Tview_ExtraviosSinistrosMultas.actionLimparFiltroExecute(Sender: TObject);
begin
  filtroExtravios.Clear;
end;

procedure Tview_ExtraviosSinistrosMultas.actionNovoExecute(Sender: TObject);
begin
  InsertData;
end;

procedure Tview_ExtraviosSinistrosMultas.actionPainelGruposExecute(Sender: TObject);
begin
  gridExtraviosDBTableView1.OptionsView.GroupByBox := checkBoxGrupo.Checked;
end;

procedure Tview_ExtraviosSinistrosMultas.actionPesquisarExecute(Sender: TObject);
begin
  if not Formulafilro(comboBoxCampos.ItemIndex, pesquisar.Text) then
  begin
    Application.MessageBox('Nenhum registro encontrado!', 'Atenção', MB_OK + MB_ICONWARNING);
  end;
end;

procedure Tview_ExtraviosSinistrosMultas.CancelaFiltro;
begin
  filtroExtravios.Clear;
  pageControlPesquisa.ActivePageIndex := 0;
end;

procedure Tview_ExtraviosSinistrosMultas.CancelarPesquisa;
begin
  memTableExtravios.Active := False;
  pesquisar.Clear;
  comboBoxCampos.ItemIndex := 0;
  actionEstornar.Enabled := False;
  actionFinalizar.Enabled := False;
  filtroExtravios.Clear;
end;

function Tview_ExtraviosSinistrosMultas.ConfirmPassword: boolean;
begin
  Result := False;
  if not Assigned(view_SisGeFConfirmPassword) then
    view_SisGeFConfirmPassword := Tview_SisGeFConfirmPassword.Create(Application);
  Result := (view_SisGeFConfirmPassword.ShowModal = mrOk);
  FreeAndNil(view_SisGeFConfirmPassword);
end;

procedure Tview_ExtraviosSinistrosMultas.DeclaracaoDirect;
var
  sImpressao: String;
  sData, sEntregador : String;
begin
  with frxDeclaracao do begin
    if not Assigned(view_Impressao) then begin
      view_Impressao := Tview_Impressao.Create(Application);
    end;
    view_Impressao.cxLabel1.Caption := 'DECLARAÇÃO';
    view_Impressao.cxArquivo.Text := ExtractFilePath(Application.ExeName) + 'Reports\frxDeclaracaoExtravioExpressas.fr3';
    if view_Impressao.ShowModal <> mrOk then
    begin
      FreeAndNil(view_Impressao);
      Exit;
    end
    else begin
      if (not FileExists(view_Impressao.cxArquivo.Text)) then begin
        Application.MessageBox(PChar('Arquivo ' + view_Impressao.cxArquivo.Text +
                               ' não foi encontrado!'), 'Atenção', MB_OK + MB_ICONWARNING);
        Exit;
      end;
    end;
    LoadFromFile(view_Impressao.cxArquivo.Text);
    sImpressao := 'Impresso pelo ' + Application.Title + ' Versão ' + Common.Utils.TUtils.VersaoExe + ' por ' +
                  Global.Parametros.pNameUser + ' em ' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now);
    sEntregador := memTableExtraviosDES_RAZAO_SOCIAL.AsString + ' (' + memTableExtraviosCOD_CADASTRO.AsString + ')';
    sData := FormatDateTime('dddd, dd " de " mmmm " de " yyyy ', Now);
    Variables.Items[Variables.IndexOf('vAgente')].Value :=  QuotedStr(memTableExtraviosNOM_AGENTE.AsString);
    Variables.Items[Variables.IndexOf('vEntregador')].Value :=  QuotedStr(sEntregador);
    Variables.Items[Variables.IndexOf('vFantasia')].Value :=  QuotedStr(memTableExtraviosNOM_ENTREGADOR.AsString);
    Variables.Items[Variables.IndexOf('vNN')].Value :=  QuotedStr(memTableExtraviosNUM_NOSSONUMERO.AsString);
    Variables.Items[Variables.IndexOf('vValor')].Value :=  QuotedStr(FormatFloat('#,##0.00', memTableExtraviosVAL_PRODUTO.AsFloat));
    Variables.Items[Variables.IndexOf('vMulta')].Value :=  QuotedStr(FormatFloat('#,##0.00', memTableExtraviosVAL_MULTA.AsFloat));
    Variables.Items[Variables.IndexOf('vVerba')].Value :=  QuotedStr(FormatFloat('#,##0.00', memTableExtraviosVAL_VERBA.AsFloat));
    Variables.Items[Variables.IndexOf('vData')].Value :=  QuotedStr(sData);
    Variables.Items[Variables.IndexOf('vCPF')].Value :=  QuotedStr(memTableExtraviosNUM_CNPJ.AsString);
    Variables.Items[Variables.IndexOf('vImpressao')].Value :=  QuotedStr(sImpressao);
    if (not vieW_Impressao.bFlagImprimir) then
    begin
      ShowReport(True);
    end
    else
    begin
      PrepareReport;
      Print;
    end;
    FreeAndNil(vieW_Impressao);
  end;
end;

procedure Tview_ExtraviosSinistrosMultas.dsExtraviosStateChange(Sender: TObject);
begin
  if dsExtravios.State = dsBrowse then
  begin
    actionEditar.Enabled := not memTableExtravios.IsEmpty;
    actionCancelar.Enabled := not memTableExtravios.IsEmpty;
  end
end;

procedure Tview_ExtraviosSinistrosMultas.EditData;
begin
  MostraCadastro(tacAlterar, memTableExtraviosCOD_EXTRAVIO.AsInteger);
end;

procedure Tview_ExtraviosSinistrosMultas.Estorno;
var
  bFlagReembolso : Boolean;
  pParam: array of Variant;
  dValor: Double;
  sObs: String;
  FDQuery : TFDQuery;
  iCadastro : Integer;
  FEntregadores: TEntregadoresExpressasControl;
  FLancamento : TLancamentosControl;
  aParam: array of variant;
begin
  if not ConfirmPassword() then
    Exit;
  bFlagReembolso := False;
  dValor := 0;
  sObs := '';
  iCadastro := 0;
  if Application.MessageBox('Estornar este Extravio/Multa?', 'Estornor', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;
  SetLength(aParam,2);
  aParam := ['CODIGO', memTableExtravioscod_extravio.AsInteger];
  FExtravio.Extravios.Query := FExtravio.Localizar(aParam);
  if FExtravio.Extravios.Query.IsEmpty then
  begin
    Application.MessageBox('Extravio não encontrado. Estorno cancelado!', 'Atenação', MB_OK + MB_ICONERROR);
    Exit;
  end;
  Finalize(aParam);
  FExtravio.SetupClass;
  FExtravio.Extravios.Query.Connection.Connected := False;
  FExtravio.Extravios.Acao := Common.ENum.tacExcluir;
  if not FExtravio.ValidaEstorno() then Exit;
  if FExtravio.Extravios.Percentual > 0 then
  begin
    bFlagReembolso := (Application.MessageBox('Ressarcir débito efetuado?', 'Atenção', MB_YESNO + MB_ICONQUESTION) = IDYES);
  end;
  SetLength(pParam,2);
  pParam[0] := 'ENTREGADOR';
  pParam[1] := FExtravio.Extravios.Entregador;
  FEntregadores := TEntregadoresExpressasControl.Create;
  FDQuery := FEntregadores.Entregadores.Localizar(pParam);
  if not FDQuery.IsEmpty then
  begin
    iCadastro := FDQuery.FieldByName('COD_CADASTRO').AsInteger
  end;
  FDQuery.Free;
  FEntregadores.Free;
  sObs := FExtravio.Extravios.Obs;
  sObs := sObs + #13 + 'Estorno efetuado por ' + Global.Parametros.pNameUser + ' em  ' +
          FormatDateTime('dd/mm/yyyy hh:mm:ss', Now());
  FExtravio.Extravios.Restricao := 'E';
  FExtravio.Extravios.Obs := sObs;
  FExtravio.Extravios.Acao := Common.ENum.tacAlterar;
  if not FExtravio.Extravios.Gravar then
  begin
    Application.MessageBox('Erro ao gravar o estorno!', 'Erro', MB_OK + MB_ICONERROR);
    Exit;
  end;
  if bFlagReembolso then
  begin
    dValor := (FExtravio.Extravios.Total * (FExtravio.Extravios.Percentual / 100));
    // Gerar ressarcimento;
    FLancamento := TLancamentosControl.Create;
    if dValor > 0 then
    begin
      FLancamento.Lancamentos.Codigo := 0;
      FLancamento.Lancamentos.Descricao := 'Ressarcimento debito extravio/multa NN' + FExtravio.Extravios.NN;
      FLancamento.Lancamentos.Data := Now();
      FLancamento.Lancamentos.Cadastro := iCadastro;
      FLancamento.Lancamentos.Entregador := FExtravio.Extravios.Entregador;
      FLancamento.Lancamentos.Tipo := 'CREDITO';
      FLancamento.Lancamentos.Valor := dValor;
      FLancamento.Lancamentos.Desconto := 'N';
      FLancamento.Lancamentos.DataDesconto := 0;
      FLancamento.Lancamentos.Extrato := '';
      FLancamento.Lancamentos.Persistir := 'N';
      FLancamento.Lancamentos.Acao := Common.ENum.tacIncluir;
      dValor := 0;
      if not FLancamento.Gravar then
      begin
        Application.MessageBox('Erro ao gravar o lançamento de crédito!', 'Erro', MB_OK + MB_ICONERROR);
      end;
      sObs := sObs + #13 + 'Lançamento de crédido de R$ ' + FloatToStr(dValor);
      FLancamento.Free;
    end;
    Application.MessageBox('Estorno efetuado!', 'Atenção', MB_OK + MB_ICONINFORMATION);
    FExtravio.Extravios.Acao := Common.ENum.tacIndefinido;
  end;
end;

procedure Tview_ExtraviosSinistrosMultas.Exportar;
var
  fnUtil : Common.Utils.TUtils;
  sMensagem: String;
begin
  try
    fnUtil := Common.Utils.TUtils.Create;

    if memTableExtravios.IsEmpty then Exit;

    if Data_Sisgef.SaveDialog.Execute() then
    begin
      if FileExists(Data_Sisgef.SaveDialog.FileName) then
      begin
        sMensagem := 'Arquivo ' + Data_Sisgef.SaveDialog.FileName + ' já existe! Sobrepor ?';
        if MessageDlg(sMensagem, mtConfirmation, [mbYes,mbNo], 0) = mrNo then Exit
      end;
      fnUtil.ExportarDados(gridExtravios,Data_Sisgef.SaveDialog.FileName);
    end;
  finally
    fnUtil.Free;
  end;end;

procedure Tview_ExtraviosSinistrosMultas.Filtro;
var
  FExtravios: TExtraviosMultasControl;
  sFiltro: string;
begin
  try
    FExtravios := TExtraviosMultasControl.Create;
    sFiltro := filtroExtravios.FilterText;
    memTableExtravios.Active := False;
    if FExtravios.PesquisaExtraviosMultas(0, '', sFiltro) then
    begin
      memTableExtravios.CopyDataSet(FExtravios.Extravios.Query);
      FExtravios.Extravios.Query.Connection.Connected := False;
    end;
    actionFiltro.Enabled := True;
    pageControlPesquisa.ActivePageIndex := 0;
  finally
    FExtravios.Free;
  end;
end;

procedure Tview_ExtraviosSinistrosMultas.FinalizeData;
var
  FExtravios: TExtraviosMultasControl;
  i, iID: integer;
  aParam: array of variant;
begin
  try
    FExtravios := TExtraviosMultasControl.Create;
    if Application.MessageBox('Confirma finalizar o(s) extravio(s) selecionado(s) ?', 'Finalizar', MB_YESNO + MB_ICONQUESTION) = IDNO then
    begin
      Exit;
    end;
    for i := 0 to Pred(gridExtraviosDBTableView1.Controller.SelectedRowCount) do
    begin
      iId := StrToIntDef(gridExtraviosDBTableView1.Controller.SelectedRows[i].DisplayTexts[0], 0);
      if memTableExtravios.Locate('COD_EXTRAVIO',iId, []) then
      begin
        SetLength(aParam,2);
        aParam := ['CODIGO', memTableExtravioscod_extravio.AsInteger];
        FExtravios.Extravios.Query := FExtravios.Localizar(aParam);
        if FExtravios.Extravios.Query.IsEmpty then
        begin
          Application.MessageBox('Extravio não encontrado. Finalização cancelada!', 'Atenação', MB_OK + MB_ICONERROR);
          Exit;
        end;
        Finalize(aParam);
        FExtravios.SetupClass;
        FExtravios.Extravios.Query.Connection.Connected := False;
        if not FExtravios.Finalizar then
        begin
          Application.MessageBox('Finalização não realizada!', 'Atenação', MB_OK + MB_ICONERROR);
          Exit;
        end;
        memTableExtravios.Edit;
        memTableExtraviosDOM_RESTRICAO.AsString := 'S';
        memTableExtravios.Post;
      end;
    end;
    Application.MessageBox('Finalização concluída!', 'Finalizar', MB_OK + MB_ICONINFORMATION);
  finally
    FExtravios.Free;
  end;
end;

procedure Tview_ExtraviosSinistrosMultas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  memTableExtravios.Active := False;
  Action:= caFree;
  view_ExtraviosSinistrosMultas := nil;
end;

procedure Tview_ExtraviosSinistrosMultas.FormShow(Sender: TObject);
begin
  StartForm;
end;

function Tview_ExtraviosSinistrosMultas.Formulafilro(iIndex: integer; sTexto: string): boolean;
var
  sMensagem: String;
  FExtravios: TExtraviosMultasControl;
begin
  try
  Result := False;
  memTableExtravios.Active := False;
  FExtravios := TExtraviosMultasControl.Create;
  if sTexto = '' then
  begin
    sMensagem := 'O campo de texto a pesquisar não foi preenchido!. ' +
    'Caso deseje visualizar todos os registros clique OK, porém, esse processo pode ser lento.';
    if Application.MessageBox(PChar(sMensagem), 'Atenção!', MB_OKCANCEL + MB_ICONWARNING) = IDCANCEL then
    begin
      Exit;
    end;
  end;
  if FExtravios.PesquisaExtraviosMultas(iIndex, sTexto, '') then
  begin
    memTableExtravios.Data := FExtravios.Extravios.Query.Data;
    FExtravios.Extravios.Query.Connection.Connected := False;
  end;
  Result := True;
  finally
    FExtravios.Free;
  end;
end;

procedure Tview_ExtraviosSinistrosMultas.gridExtraviosDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if memTableExtravios.IsEmpty then
    Exit;
  EditData;
end;

procedure Tview_ExtraviosSinistrosMultas.gridExtraviosDBTableView1NavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  case AButtonIndex of
    16: gridExtraviosDBTableView1.ViewData.Expand(True);
    17: gridExtraviosDBTableView1.ViewData.Collapse(True);
  end;
end;

procedure Tview_ExtraviosSinistrosMultas.ImportarDados;
begin
  if not Assigned(view_ImportacaoPlanilhaExtravios) then
    view_ImportacaoPlanilhaExtravios := Tview_ImportacaoPlanilhaExtravios.Create(Application);
  view_ImportacaoPlanilhaExtravios.Show;
end;

procedure Tview_ExtraviosSinistrosMultas.Imprimir(iCliente: integer);
begin
  case iCliente of
    4 : DeclaracaoDirect;
    else
      Exit;
  end;
end;

procedure Tview_ExtraviosSinistrosMultas.InsertData;
begin
  MostraCadastro(tacIncluir, 0);
end;

procedure Tview_ExtraviosSinistrosMultas.memTableExtraviosAfterClose(DataSet: TDataSet);
begin
  actionEditar.Enabled := False;
  actionCancelar.Enabled := False;
end;

procedure Tview_ExtraviosSinistrosMultas.memTableExtraviosAfterOpen(DataSet: TDataSet);
begin
  ModoButtons;
end;

procedure Tview_ExtraviosSinistrosMultas.memTableExtraviosAfterScroll(DataSet: TDataSet);
begin
  ModoButtons;
end;

procedure Tview_ExtraviosSinistrosMultas.ModoButtons;
begin
  if memTableExtravios.Tag = -1 then Exit;
  if not memTableExtravios.IsEmpty then
    actionImprimir.Enabled := True
  else
    actionImprimir.Enabled := False;
  if memTableExtraviosDOM_RESTRICAO.AsString = 'S' then
  begin
    actionFinalizar.Enabled := False;
    if memTableExtraviosCOD_TIPO.AsInteger <> 1 then
      actionEstornar.Enabled := True
    else
      actionEstornar.Enabled := False;
  end
  else
  begin
    if memTableExtraviosCOD_TIPO.AsInteger <> 1 then
    begin
      if memTableExtraviosDOM_RESTRICAO.AsString = 'N' then
        actionFinalizar.Enabled := True
      else
        actionFinalizar.Enabled := False;
    end
    else
      actionFinalizar.Enabled := False;
    actionEstornar.Enabled := False;
  end;
end;

procedure Tview_ExtraviosSinistrosMultas.MostraCadastro(FAcao: TAcao; iNumero: integer);
begin
  if not Assigned(view_CadastroExtravios) then
  begin
    view_CadastroExtravios := Tview_CadastroExtravios.Create(Application);
  end;
  view_CadastroExtravios.iNumero := iNumero;
  view_CadastroExtravios.FAcao := FAcao;
  if view_CadastroExtravios.ShowModal() = mrOk then
    Application.MessageBox('Dados gravados com sucesso!', 'Atenção', MB_OK + MB_ICONINFORMATION);
  FreeAndNil(view_CadastroExtravios);
end;

procedure Tview_ExtraviosSinistrosMultas.MostraFiltro;
begin
  pageControlPesquisa.ActivePageIndex := 1;
end;

procedure Tview_ExtraviosSinistrosMultas.pageControlPesquisaChange(Sender: TObject);
begin
  if pageControlPesquisa.ActivePageIndex = 1 then
  begin
    actionFiltro.Enabled := False;
    actionFiltrar.Enabled := True;
    actionLimparFiltro.Enabled := True;
    actionCancelarFiltro.Enabled := True;
    actionCancelar.Enabled := False;
    actionNovo.Enabled := False;
  end
  else
  begin
    actionFiltro.Enabled := True;
    actionFiltrar.Enabled := False;
    actionLimparFiltro.Enabled := False;
    actionCancelarFiltro.Enabled := False;
    actionCancelar.Enabled := True;
    actionNovo.Enabled := True;
  end;
end;

procedure Tview_ExtraviosSinistrosMultas.StartForm;
begin
  Data_Sisgef.mtbClientesEmpresa.Active := False;
  Data_Sisgef.mtbClientesEmpresa.Active := True;
  Data_Sisgef.PopulaClientesEmpresa;
end;

end.
