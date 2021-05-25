unit View.LancamentosExtratosExpressas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  cxTextEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxButtonEdit, cxCalc, cxCheckBox,
  cxSpinEdit, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  System.Actions, Vcl.ActnList, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Common.ENum,
  Control.EntregadoresExpressas, Control.Lancamentos;

type
  Tview_LancamentosExtratosExpressas = class(TForm)
    layoutControlPadraoGroup_Root: TdxLayoutGroup;
    layoutControlPadrao: TdxLayoutControl;
    labelTitle: TcxLabel;
    layoutItemLabelTitle: TdxLayoutItem;
    layoutGroupLancamento: TdxLayoutGroup;
    textEditDescricao: TcxTextEdit;
    layoutItemDescricao: TdxLayoutItem;
    dateEditData: TcxDateEdit;
    layoutItemData: TdxLayoutItem;
    buttonEditCodigoEntregador: TcxButtonEdit;
    layoutItemCodigoEntregador: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    textEditNomeEntregador: TcxTextEdit;
    layoutItemNomeEntregador: TdxLayoutItem;
    comboBoxTipo: TcxComboBox;
    layoutItemTipoLancamento: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    calcEditValor: TcxCalcEdit;
    layoutItemValor: TdxLayoutItem;
    layoutGroupHistorico: TdxLayoutGroup;
    checkBoxProcessado: TcxCheckBox;
    layoutItemProcessado: TdxLayoutItem;
    maskEditDataProcessamento: TcxMaskEdit;
    layoutItemDataProcessamento: TdxLayoutItem;
    textEditExtrato: TcxTextEdit;
    layoutItemExtrato: TdxLayoutItem;
    maskEditDataCadastro: TcxMaskEdit;
    layoutItemDataCadastro: TdxLayoutItem;
    buttonEditReferencia: TcxButtonEdit;
    layoutItemReferencia: TdxLayoutItem;
    TextEditUsuario: TcxTextEdit;
    layoutItemUsuario: TdxLayoutItem;
    layoutGroupParcelamento: TdxLayoutGroup;
    spinEditIntervaloDias: TcxSpinEdit;
    layoutItemIntervalo: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dateEditDataInicial: TcxDateEdit;
    layoutItemDataInicial: TdxLayoutItem;
    buttonProcessar: TcxButton;
    layoutItemProcessar: TdxLayoutItem;
    actionListLancamentos: TActionList;
    actionNovo: TAction;
    actionEditar: TAction;
    actionCancelar: TAction;
    actionExcluir: TAction;
    actionGravar: TAction;
    actionLocalizar: TAction;
    actionFechar: TAction;
    actionProcessar: TAction;
    gridParcelamentoDBTableView1: TcxGridDBTableView;
    gridParcelamentoLevel1: TcxGridLevel;
    gridParcelamento: TcxGrid;
    layoutItemGridParcelamento: TdxLayoutItem;
    memTableParcelamento: TFDMemTable;
    memTableParcelamentonum_parcela: TIntegerField;
    memTableParcelamentodat_parcela: TDateField;
    memTableParcelamentoval_parcela: TCurrencyField;
    fdParcelamentos: TDataSource;
    gridParcelamentoDBTableView1num_parcela: TcxGridDBColumn;
    gridParcelamentoDBTableView1dat_parcela: TcxGridDBColumn;
    gridParcelamentoDBTableView1val_parcela: TcxGridDBColumn;
    comboBoxProcessamento: TcxComboBox;
    layoutItemProcessamento: TdxLayoutItem;
    actionReferencia: TAction;
    layoutGroupOpcoes: TdxLayoutGroup;
    buttonGravar: TcxButton;
    layoutItemGravar: TdxLayoutItem;
    buttonFechar: TcxButton;
    layoutItemFechar: TdxLayoutItem;
    actionPesquisaEntregadores: TAction;
    spinEditParcelas: TcxSpinEdit;
    layoutItemParcelas: TdxLayoutItem;
    maskEditID: TcxMaskEdit;
    dxLayoutItem1: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionEditarExecute(Sender: TObject);
    procedure actionExcluirExecute(Sender: TObject);
    procedure actionNovoExecute(Sender: TObject);
    procedure actionCancelarExecute(Sender: TObject);
    procedure actionFecharExecute(Sender: TObject);
    procedure buttonEditCodigoEntregadorPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure comboBoxTipoPropertiesChange(Sender: TObject);
    procedure comboBoxProcessamentoPropertiesChange(Sender: TObject);
    procedure actionProcessarExecute(Sender: TObject);
    procedure actionPesquisaEntregadoresExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actionGravarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure Modo;
    procedure LimpaCampos;
    procedure PesquisaEntregadores;
    procedure ProcessaParcelamento;
    procedure SetupForm(iID: integer);
    procedure SetupClass;
    procedure SaveData;
    function VerificaProcesso(): Boolean;
    function RetornaNomeEntregador(iCodigo: integer): String;
    function ValidateData(): boolean;

  public
    { Public declarations }
    iID: integer;
    FAcao: TAcao;
  end;

var
  view_LancamentosExtratosExpressas: Tview_LancamentosExtratosExpressas;
  Lancamentos: TLancamentosControl;
  iCadastro: integer;

implementation

{$R *.dfm}

uses Data.SisGeF, View.PesquisaEntregadoresExpressas, Common.Utils, View.PesquisarPessoas, Global.Parametros;

procedure Tview_LancamentosExtratosExpressas.actionCancelarExecute
  (Sender: TObject);
begin
  FAcao := tacIndefinido;
  LimpaCampos;
  Modo;
end;

procedure Tview_LancamentosExtratosExpressas.actionEditarExecute
  (Sender: TObject);
begin
  SetupForm(iID);
  if not VerificaProcesso() then
  begin
    Application.MessageBox
      ('Lançamento já processado (Descontato ou creditado). A edição não é permitida!',
      'Atenção', MB_OK + MB_ICONEXCLAMATION);
      FAcao := tacPesquisa;
    end;
  Modo;
end;

procedure Tview_LancamentosExtratosExpressas.actionExcluirExecute
  (Sender: TObject);
begin
  if not VerificaProcesso() then
  begin
    Application.MessageBox
      ('Lançamento já processado (Descontato ou creditado). A exclusão não é permitida!',
      'Atenção', MB_OK + MB_ICONEXCLAMATION);
    FAcao := tacPesquisa;
  end;
  Modo;
end;

procedure Tview_LancamentosExtratosExpressas.actionFecharExecute
  (Sender: TObject);
begin
  Close;
end;

procedure Tview_LancamentosExtratosExpressas.actionGravarExecute(Sender: TObject);
begin
  SaveData;
end;

procedure Tview_LancamentosExtratosExpressas.actionNovoExecute(Sender: TObject);
begin
  LimpaCampos;
  Modo;
  textEditDescricao.SetFocus;
end;

procedure Tview_LancamentosExtratosExpressas.actionPesquisaEntregadoresExecute
  (Sender: TObject);
begin
  PesquisaEntregadores;
end;

procedure Tview_LancamentosExtratosExpressas.actionProcessarExecute
  (Sender: TObject);
begin
  ProcessaParcelamento;
end;

procedure Tview_LancamentosExtratosExpressas.buttonEditCodigoEntregadorPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if (FAcao <> tacIncluir) and (FAcao <> tacAlterar) then
  begin
    Exit
  end;
  textEditNomeEntregador.Text := RetornaNomeEntregador
    (buttonEditCodigoEntregador.EditValue);
end;

procedure Tview_LancamentosExtratosExpressas.
  comboBoxProcessamentoPropertiesChange(Sender: TObject);
begin
  if FAcao = tacIncluir then
  begin
    if comboBoxProcessamento.ItemIndex >= 2 then
    begin
      dateEditDataInicial.Date := dateEditData.Date;
      layoutGroupParcelamento.Visible := True;
    end
    else
    begin
      layoutGroupParcelamento.Visible := False;
    end;
  end;
end;

procedure Tview_LancamentosExtratosExpressas.comboBoxTipoPropertiesChange
  (Sender: TObject);
begin
  if comboBoxTipo.ItemIndex = 2 then
  begin
    comboBoxTipo.Style.Font.Color := clRed;
    calcEditValor.Style.Font.Color := clRed;
  end
  else
  begin
    comboBoxTipo.Style.Font.Color := clNone;
    calcEditValor.Style.Font.Color := clNone;
  end;
end;

procedure Tview_LancamentosExtratosExpressas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Close;
end;

procedure Tview_LancamentosExtratosExpressas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if gridParcelamento.Focused then
    Exit;
  If Key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;
end;

procedure Tview_LancamentosExtratosExpressas.FormShow(Sender: TObject);
begin
  labelTitle.Caption := Self.Caption;
  if FAcao = tacIncluir then
    actionNovoExecute(Sender)
  else if FAcao = tacAlterar then
    actionEditarExecute(Sender);
end;

procedure Tview_LancamentosExtratosExpressas.LimpaCampos;
begin
  iID := 0;
  textEditDescricao.EditValue := '';
  dateEditData.Clear;
  iCadastro := 0;
  buttonEditCodigoEntregador.EditValue := 0;
  comboBoxTipo.ItemIndex := 0;
  calcEditValor.Value := 0;
  spinEditIntervaloDias.Value := 15;
  dateEditDataInicial.Clear;
  if memTableParcelamento.Active then
    memTableParcelamento.Close;
  checkBoxProcessado.EditValue := 'N';
  maskEditDataProcessamento.Clear;
  textEditExtrato.Clear;
  maskEditDataCadastro.Clear;
  buttonEditReferencia.EditValue := 0;
  TextEditUsuario.Clear;
end;

procedure Tview_LancamentosExtratosExpressas.Modo;
begin
  if FAcao = tacIndefinido then
  begin
    actionNovo.Enabled := True;
    actionEditar.Enabled := False;
    actionLocalizar.Enabled := True;
    actionCancelar.Enabled := False;
    actionGravar.Enabled := False;
    actionReferencia.Enabled := False;
    actionPesquisaEntregadores.Enabled := False;
    textEditDescricao.Properties.ReadOnly := True;
    dateEditData.Properties.ReadOnly := True;
    buttonEditCodigoEntregador.Properties.ReadOnly := True;
    comboBoxTipo.Properties.ReadOnly := True;
    calcEditValor.Properties.ReadOnly := True;
    layoutItemProcessamento.Visible := False;
    layoutGroupParcelamento.Visible := False;
    layoutGroupHistorico.Visible := False;
    layoutGroupHistorico.Visible := False;
  end
  else if FAcao = tacIncluir then
  begin
    actionNovo.Enabled := False;
    actionEditar.Enabled := False;
    actionLocalizar.Enabled := False;
    actionCancelar.Enabled := True;
    actionGravar.Enabled := True;
    actionReferencia.Enabled := False;
    actionPesquisaEntregadores.Enabled := True;
    textEditDescricao.Properties.ReadOnly := False;
    dateEditData.Properties.ReadOnly := False;
    buttonEditCodigoEntregador.Properties.ReadOnly := False;
    comboBoxTipo.Properties.ReadOnly := False;
    calcEditValor.Properties.ReadOnly := False;
    layoutItemProcessamento.Visible := True;
    layoutGroupParcelamento.Visible := False;
    layoutGroupHistorico.Visible := False;
  end
  else if FAcao = tacAlterar then
  begin
    actionNovo.Enabled := False;
    actionEditar.Enabled := False;
    actionLocalizar.Enabled := False;
    actionCancelar.Enabled := True;
    actionGravar.Enabled := True;
    actionReferencia.Enabled := False;
    actionPesquisaEntregadores.Enabled := True;
    textEditDescricao.Properties.ReadOnly := False;
    dateEditData.Properties.ReadOnly := False;
    buttonEditCodigoEntregador.Properties.ReadOnly := False;
    comboBoxTipo.Properties.ReadOnly := False;
    calcEditValor.Properties.ReadOnly := False;
    layoutItemProcessamento.Visible := False;
    layoutGroupParcelamento.Visible := False;
    layoutGroupHistorico.Visible := True;
  end
  else if FAcao = tacPesquisa then
  begin
    actionNovo.Enabled := False;
    actionEditar.Enabled := True;
    actionLocalizar.Enabled := False;
    actionCancelar.Enabled := True;
    actionGravar.Enabled := False;
    actionReferencia.Enabled := False;
    actionPesquisaEntregadores.Enabled := False;
    textEditDescricao.Properties.ReadOnly := True;
    dateEditData.Properties.ReadOnly := True;
    buttonEditCodigoEntregador.Properties.ReadOnly := True;
    comboBoxTipo.Properties.ReadOnly := True;
    calcEditValor.Properties.ReadOnly := True;
    layoutItemProcessamento.Visible := False;
    layoutGroupParcelamento.Visible := False;
    layoutGroupHistorico.Visible := True;
  end;

end;

procedure Tview_LancamentosExtratosExpressas.PesquisaEntregadores;

begin
  if not Assigned(view_PesquisaEntregadoresExpressas)  then
    view_PesquisaEntregadoresExpressas := Tview_PesquisaEntregadoresExpressas.Create(Application);
  if view_PesquisaEntregadoresExpressas.ShowModal = mrOk then
  begin
    buttonEditCodigoEntregador.EditValue := view_PesquisaEntregadoresExpressas.fdPesquisacod_entregador.AsInteger;
    iCadastro := view_PesquisaEntregadoresExpressas.fdPesquisacod_cadastro.AsInteger;
    textEditNomeEntregador.Text := view_PesquisaEntregadoresExpressas.fdPesquisanom_entregador.AsString;
  end;
  FreeAndNil(view_PesquisaEntregadoresExpressas);
end;

procedure Tview_LancamentosExtratosExpressas.ProcessaParcelamento;
var
  dtData: TDate;
  i, iDias, iParcelas: integer;
  dValor: Double;
begin
  if memTableParcelamento.Active then
  begin
    memTableParcelamento.Close;
  end;
  memTableParcelamento.Open;
  iParcelas := spinEditParcelas.Value;
  if comboBoxProcessamento.ItemIndex = 2 then
    dValor := calcEditValor.Value / iParcelas
  else
    dValor := calcEditValor.Value;
  dtData := dateEditDataInicial.Date;
  iDias := spinEditIntervaloDias.Value;
  for i := 1 to iParcelas do
  begin
    memTableParcelamento.Insert;
    memTableParcelamentonum_parcela.AsInteger := i;
    memTableParcelamentodat_parcela.AsDateTime := dtData;
    memTableParcelamentoval_parcela.AsFloat := dValor;
    memTableParcelamento.Post;
  end;
  if not memTableParcelamento.IsEmpty then
  begin
    memTableParcelamento.First;
  end;
end;

function Tview_LancamentosExtratosExpressas.RetornaNomeEntregador(iCodigo: integer): String;
var
  entregador: TEntregadoresExpressasControl;
  sRetorno: String;
begin
  try
    Result := '';
    sRetorno := '';
    entregador := TEntregadoresExpressasControl.Create;
    if iCodigo <> 0 then
    begin
      sRetorno := entregador.GetField('NOM_FANTASIA', 'COD_ENTREGADOR',
        iCodigo.ToString)
    end;
    if sRetorno.IsEmpty then
    begin
      sRetorno := 'NONE';
    end;
    Result := sRetorno;
  finally
    entregador.Free;
  end;
end;

procedure Tview_LancamentosExtratosExpressas.SaveData;
var
  aParam : Array of variant;
  sDescricao: String;
begin
  try
    lancamentos := TLancamentosControl.Create;
    if not ValidateData then
      Exit;
    if Application.MessageBox('Confirma gravar os dados ?', 'Gravar', MB_YESNO + MB_ICONQUESTION) =  IDNO then
      Exit;
    if FAcao = tacIncluir then
    begin
      SetupClass;
      if not memTableParcelamento.IsEmpty then
        memTableParcelamento.First;
      if comboBoxProcessamento.ItemIndex > 1 then
      begin
        while not memTableParcelamento.Eof do
        begin
          sDescricao := Lancamentos.Lancamentos.Descricao;
          Lancamentos.Lancamentos.Descricao := sDescricao + ' - ' + memTableParcelamentonum_parcela.AsString + '/' +
                                               spinEditParcelas.Value;
          Lancamentos.Lancamentos.Data := memTableParcelamentodat_parcela.AsDateTime;
          Lancamentos.Lancamentos.Valor := memTableParcelamentoval_parcela.AsCurrency;
          if not Lancamentos.Gravar then
          begin
            Application.MessageBox(PChar('Ocorreu um problema ao tentar salvar a parcela ' +
                                   memTableParcelamentonum_parcela.AsString + '!'), 'Atenção', MB_OK + MB_ICONWARNING);
          end;
          memTableParcelamento.Next;
        end;
        if not memTableParcelamento.IsEmpty then
          memTableParcelamento.First;
      end
      else
      begin
        if not Lancamentos.Gravar then
        begin
          Application.MessageBox('Ocorreu um problema ao tentar salvar o registro!', 'Atenção', MB_OK + MB_ICONWARNING);
          Exit;
        end;
      end;
    end
    else if FAcao = tacAlterar then
    begin
      SetLength(aParam,2);
      aParam := ['CODIGO', maskEditID.EditValue];
      if Lancamentos.Localizar(aParam).IsEmpty then
      begin
        Application.MessageBox('Ocorreu um problema ao tentar localizar o registro para alterar!', 'Atenção', MB_OK + MB_ICONWARNING);
        Exit;
      end
      else
      begin
        SetupClass;
        if not Lancamentos.Gravar then
        begin
          Application.MessageBox('Ocorreu um problema ao tentar salvar o registro!', 'Atenção', MB_OK + MB_ICONWARNING);
          Exit;
        end;
      end;
    end;
  finally
    lancamentos.Free;
  end;
end;

procedure Tview_LancamentosExtratosExpressas.SetupClass;
var
  iReferencia : Integer;
begin
  Lancamentos := TLancamentosControl.Create;
  iReferencia := Lancamentos.GetId;
  Lancamentos.Lancamentos.Descricao := textEditDescricao.Text;
  Lancamentos.Lancamentos.Data := dateEditData.Date;
  Lancamentos.Lancamentos.Cadastro := iCadastro;
  Lancamentos.Lancamentos.entregador := buttonEditCodigoEntregador.EditValue;
  if comboBoxTipo.ItemIndex = 1 then
  begin
    Lancamentos.Lancamentos.Tipo := 'CREDITO';
  end
  else
  begin
    Lancamentos.Lancamentos.Tipo := 'DEBITO';
  end;
  Lancamentos.Lancamentos.Valor := calcEditValor.Value;
  if FAcao = tacIncluir then
  begin
    Lancamentos.Lancamentos.Desconto := 'N';
    Lancamentos.Lancamentos.DataDesconto := StrToDate('31/12/1899');
    Lancamentos.Lancamentos.Extrato := '';
    Lancamentos.Lancamentos.Referencia := iReferencia;
    Lancamentos.Lancamentos.DataCadastro := Now;
    Lancamentos.Lancamentos.Usuario := Global.Parametros.pUser_Name;
  end;
  Lancamentos.Lancamentos.Persistir := 'N';
  Lancamentos.Lancamentos.Acao := FAcao;
end;

procedure Tview_LancamentosExtratosExpressas.SetupForm(iID: integer);
var
  aParam: array of Variant;
begin
  Lancamentos := TLancamentosControl.Create;
  SetLength(aParam, 2);
  aParam := ['CODIGO', iID];
  if not Lancamentos.Localizar(aParam).IsEmpty then
  begin
    maskEditID.EditValue := Lancamentos.Lancamentos.Codigo;
    textEditDescricao.Text := Lancamentos.Lancamentos.Descricao;
    dateEditData.Date := Lancamentos.Lancamentos.Data;
    buttonEditCodigoEntregador.EditValue := Lancamentos.Lancamentos.entregador;
    textEditNomeEntregador.Text := RetornaNomeEntregador(Lancamentos.Lancamentos.entregador);
    if Lancamentos.Lancamentos.Tipo = 'CREDITO' then
    begin
      comboBoxTipo.ItemIndex := 1;
    end
    else if Lancamentos.Lancamentos.Tipo = 'DEBITO' then
    begin
      comboBoxTipo.ItemIndex := 2;
    end
    else
    begin
      comboBoxTipo.ItemIndex := 0;
    end;
    calcEditValor.EditValue := Lancamentos.Lancamentos.Valor;
    if Lancamentos.Lancamentos.Desconto = 'S' then
    begin
      checkBoxProcessado.Checked := True;
    end
    else
    begin
      checkBoxProcessado.Checked := False;
    end;
    maskEditDataProcessamento.Text := FormatDateTime('dd/mm/yyyy', Lancamentos.Lancamentos.DataDesconto);
    textEditExtrato.Text := Lancamentos.Lancamentos.Extrato;
    maskEditDataCadastro.Text := FormatDateTime('dd/mm/yyyy', Lancamentos.Lancamentos.DataCadastro);
    buttonEditReferencia.Text := Lancamentos.Lancamentos.Codigo.ToString;
  end;
end;

function Tview_LancamentosExtratosExpressas.ValidateData: boolean;
begin
  Result:= False;
  if textEditDescricao.Text = '' then
  begin
    Application.MessageBox('Informe uma descrição para o lançamento!', 'Atenção', MB_OK + MB_ICONWARNING);
    textEditDescricao.SetFocus;
    Exit;
  end;
  if dateEditData.Text = '' then
  begin
    Application.MessageBox('Informe a data do lançamento!', 'Atenção', MB_OK + MB_ICONWARNING);
    dateEditData.SetFocus;
    Exit;
  end;
  if buttonEditCodigoEntregador.EditValue = 0 then
  begin
    Application.MessageBox('Informe o código do entregador!', 'Atenção', MB_OK + MB_ICONWARNING);
    buttonEditCodigoEntregador.SetFocus;
    Exit;
  end;
  if comboBoxTipo.ItemIndex = 0 then
  begin
    Application.MessageBox('Informe o tipo do lançamento!', 'Atenção', MB_OK + MB_ICONWARNING);
    comboBoxTipo.SetFocus;
    Exit;
  end;
  if calcEditValor.Value = 0 then
  begin
    Application.MessageBox('Informe o valor do lançamento!', 'Atenção', MB_OK + MB_ICONWARNING);
    calcEditValor.SetFocus;
    Exit;
  end;
  if FAcao = tacIncluir then
  begin
    if comboBoxProcessamento.ItemIndex = 0 then
    begin
      Application.MessageBox('Informe o tipo de processo do lançamento!', 'Atenção', MB_OK + MB_ICONWARNING);
      comboBoxProcessamento.SetFocus;
      Exit;
    end;
    if comboBoxProcessamento.ItemIndex > 1 then
    begin
      if spinEditIntervaloDias.Value = 0 then
      begin
        Application.MessageBox('Informe o intervalo de dias do parcelamento!', 'Atenção', MB_OK + MB_ICONWARNING);
        spinEditIntervaloDias.SetFocus;
        Exit;
      end;
      if spinEditParcelas.Value = 0 then
      begin
        Application.MessageBox('Informe a quantidade de parcelas!', 'Atenção', MB_OK + MB_ICONWARNING);
        spinEditParcelas.SetFocus;
        Exit;
      end;
      if dateEditDataInicial.Text = '' then
      begin
        Application.MessageBox('Informe a data inicial do parcelamento!', 'Atenção', MB_OK + MB_ICONWARNING);
        dateEditDataInicial.SetFocus;
        Exit;
      end;
      if dateEditDataInicial.Date < dateEditData.Date then
      begin
        Application.MessageBox('Data inicial do parcelamento menor que a data do lançamento!', 'Atenção', MB_OK + MB_ICONWARNING);
        dateEditDataInicial.SetFocus;
        Exit;
      end;
    end;
  end;

  Result := True;
end;

function Tview_LancamentosExtratosExpressas.VerificaProcesso: Boolean;
begin
  Result := False;
  if Lancamentos.Lancamentos.Desconto = 'S' then
  begin
    Exit;
  end;
  Result := True;
end;

end.
