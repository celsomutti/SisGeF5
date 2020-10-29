unit View.LancamentosExtratos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  cxTextEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit, cxCalendar, cxButtonEdit, cxCalc, cxCheckBox,
  cxSpinEdit, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, System.Actions, Vcl.ActnList, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Common.ENum, Control.EntregadoresExpressas, Control.Lancamentos;

type
  Tview_LancamentosExtratos = class(TForm)
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
    buttonNovo: TcxButton;
    layoutItemNovo: TdxLayoutItem;
    buttonEditar: TcxButton;
    layoutItemEditar: TdxLayoutItem;
    buttonCancelar: TcxButton;
    layoutItemCancelar: TdxLayoutItem;
    buttonExcluir: TcxButton;
    layoutItemExcluir: TdxLayoutItem;
    buttonLocalizar: TcxButton;
    layoutItemLocalizar: TdxLayoutItem;
    buttonGravar: TcxButton;
    layoutItemGravar: TdxLayoutItem;
    buttonFechar: TcxButton;
    layoutItemFechar: TdxLayoutItem;
    actionPesquisaEntregadores: TAction;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionEditarExecute(Sender: TObject);
    procedure actionExcluirExecute(Sender: TObject);
    procedure actionNovoExecute(Sender: TObject);
    procedure actionCancelarExecute(Sender: TObject);
    procedure actionFecharExecute(Sender: TObject);
    procedure actionLocalizarExecute(Sender: TObject);
    procedure buttonEditCodigoEntregadorPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure comboBoxTipoPropertiesChange(Sender: TObject);
    procedure calcEditValorPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    procedure Modo;
    procedure LimpaCampos;
    procedure PesquisaEntregadores;
    procedure PesquisaLancamentos;
    function VerificaProcesso(): Boolean;
    function RetornaNomeEntregador(iCodigo: integer): String;
  public
    { Public declarations }
  end;

var
  view_LancamentosExtratos: Tview_LancamentosExtratos;
  FAcao : TAcao;
  iCadastro: Integer;
  iID: Integer;

implementation

{$R *.dfm}

uses Data.SisGeF, View.PesquisarPessoas;

procedure Tview_LancamentosExtratos.actionCancelarExecute(Sender: TObject);
begin
  Facao := tacIndefinido;
  LimpaCampos;
  Modo;
end;

procedure Tview_LancamentosExtratos.actionEditarExecute(Sender: TObject);
begin
  if not VerificaProcesso() then
  begin
    Application.MessageBox('Lan�amento j� processado (Descontato ou creditado). A edi��o n�o � permitida!', 'Aten��o', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  FAcao := tacAlterar;
  Modo;
end;

procedure Tview_LancamentosExtratos.actionExcluirExecute(Sender: TObject);
begin
  if not VerificaProcesso() then
  begin
    Application.MessageBox('Lan�amento j� processado (Descontato ou creditado). A exclus�o n�o � permitida!', 'Aten��o', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
end;

procedure Tview_LancamentosExtratos.actionFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_LancamentosExtratos.actionLocalizarExecute(Sender: TObject);
begin
  PesquisaLancamentos;
end;

procedure Tview_LancamentosExtratos.actionNovoExecute(Sender: TObject);
begin
  FAcao := tacIncluir;
  LimpaCampos;
  Modo;
  textEditDescricao.SetFocus;
end;

procedure Tview_LancamentosExtratos.buttonEditCodigoEntregadorPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  if (FAcao <> tacIncluir) and (FAcao <> tacAlterar) then
  begin
    Exit
  end;
  textEditNomeEntregador.Text := RetornaNomeEntregador(buttonEditCodigoEntregador.EditValue);
end;

procedure Tview_LancamentosExtratos.calcEditValorPropertiesChange(Sender: TObject);
begin
  if comboBoxTipo.ItemIndex = 2 then
  begin
    calcEditValor.Value := 0 - calcEditValor.Value;
    calcEditValor.Style.Font.Color := clRed;
  end
  else
  begin
    calcEditValor.Style.Font.Color := clNone;
  end;
end;

procedure Tview_LancamentosExtratos.comboBoxTipoPropertiesChange(Sender: TObject);
begin
  if comboBoxTipo.ItemIndex = 2 then
  begin
    comboBoxTipo.Style.Font.Color := clRed;
  end
  else
  begin
    comboBoxTipo.Style.Font.Color := clNone;
  end;
end;

procedure Tview_LancamentosExtratos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  view_LancamentosExtratos := nil;
end;

procedure Tview_LancamentosExtratos.FormShow(Sender: TObject);
begin
  labelTitle.Caption := Self.Caption;
  FAcao := tacIndefinido;
  LimpaCampos;
  Modo;
end;

procedure Tview_LancamentosExtratos.LimpaCampos;
begin
  iID := 0;
  textEditDescricao.EditValue := 0;
  dateEditData.Clear;
  iCadastro := 0;
  buttonEditCodigoEntregador.EditValue := 0;
  comboBoxTipo.ItemIndex := 0;
  calcEditValor.Value := 0;
  spinEditIntervaloDias.Value := 15;
  dateEditDataInicial.Clear;
  if memTableParcelamento.Active then memTableParcelamento.Close;
  checkBoxProcessado.EditValue := 'N';
  maskEditDataProcessamento.Clear;
  textEditExtrato.Clear;
  maskEditDataCadastro.Clear;
  buttonEditReferencia.EditValue := 0;
  TextEditUsuario.Clear;
end;

procedure Tview_LancamentosExtratos.Modo;
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
    actionGravar.Enabled := True;
    actionReferencia.Enabled := True;
    actionPesquisaEntregadores.Enabled := False;
    textEditDescricao.Properties.ReadOnly := False;
    dateEditData.Properties.ReadOnly := False;
    buttonEditCodigoEntregador.Properties.ReadOnly := False;
    comboBoxTipo.Properties.ReadOnly := False;
    calcEditValor.Properties.ReadOnly := False;
    layoutItemProcessamento.Visible := False;
    layoutGroupParcelamento.Visible := False;
    layoutGroupHistorico.Visible := True;
  end;

end;

procedure Tview_LancamentosExtratos.PesquisaEntregadores;
var
  sSQL: String;
  sWhere: String;
  aParam: array of variant;
  sQuery: String;
  entregadores : TEntregadoresExpressasControl;
begin
  try
    sSQL := '';
    sWhere := '';
    entregadores := TEntregadoresExpressasControl.Create;
    if not Assigned(View_PesquisarPessoas) then
    begin
      View_PesquisarPessoas := TView_PesquisarPessoas.Create(Application);
    end;
    View_PesquisarPessoas.dxLayoutItem1.Visible := True;
    View_PesquisarPessoas.dxLayoutItem2.Visible := True;


    sSQL := 'select tbcodigosentregadores.cod_entregador as "C�d. Entregador", ' +
            'tbcodigosentregadores.nom_fantasia as "Nome Entregador", tbcodigosentregadores.des_chave as "C�d. ERP", ' +
            'tbcodigosentregadores.cod_cadastro as "C�d. Cadastro", tbentregadores.des_razao_social as "Nome Cadastro", ' +
            'tbcodigosentregadores.cod_agente as "C�d. Agente" ' +
            'from tbcodigosentregadores ' +
            'inner join tbentregadores ' +
            'on tbentregadores.cod_cadastro = tbcodigosentregadores.cod_cadastro ';

    sWhere := 'where tbcodigosentregadores.cod_entregador like paraN or tbcodigosentregadores.nom_fantasia like "%param%" or ' +
              'tbcodigosentregadores.des_chave like "%param%" or tbcodigosentregadores.cod_cadastro like paraN or ' +
              'tbentregadores.des_razao_social like "%param%" or ' +
              'tbcodigosentregadores.cod_agente like paraN;';
    View_PesquisarPessoas.sSQL := sSQL;
    View_PesquisarPessoas.sWhere := sWhere;
    View_PesquisarPessoas.bOpen := False;
    View_PesquisarPessoas.Caption := 'Localizar Entregadores';
    if View_PesquisarPessoas.ShowModal = mrOK then
    begin
      buttonEditCodigoEntregador.EditValue := View_PesquisarPessoas.qryPesquisa.Fields[1].AsInteger;
      textEditNomeEntregador.Text := View_PesquisarPessoas.qryPesquisa.Fields[2].AsString;
    end;
  finally
    entregadores.Free;
    View_PesquisarPessoas.qryPesquisa.Close;
    View_PesquisarPessoas.tvPesquisa.ClearItems;
    FreeAndNil(View_PesquisarPessoas);
  end;
end;

procedure Tview_LancamentosExtratos.PesquisaLancamentos;
var
  sSQL: String;
  sWhere: String;
  aParam: array of variant;
  sQuery: String;
  lancamentos : TLancamentosControl;
begin
  try
    sSQL := '';
    sWhere := '';
    lancamentos := TLancamentosControl.Create;
    if not Assigned(View_PesquisarPessoas) then
    begin
      View_PesquisarPessoas := TView_PesquisarPessoas.Create(Application);
    end;
    View_PesquisarPessoas.dxLayoutItem1.Visible := True;
    View_PesquisarPessoas.dxLayoutItem2.Visible := True;

    sSQL := 'select tblancamentos.cod_lancamento as ID,' +
            'tblancamentos.cod_entregador as "C�digo", tbcodigosentregadores.nom_fantasia as Nome, ' +
            'tblancamentos.des_lancamento as "Descri��o", ' +
            'format(if(tblancamentos.des_tipo = "CREDITO", tblancamentos.val_lancamento, 0), 2, "de_DE") as "Cr�dito", ' +
            'format(if(tblancamentos.des_tipo = "DEBITO", 0 - tblancamentos.val_lancamento, 0), 2, "de_DE") as "D�bito", ' +
            'dom_desconto as Descontado ' +
            'from tblancamentos ' +
            'inner join tbcodigosentregadores ' +
            'on tbcodigosentregadores.cod_entregador = tblancamentos.cod_entregador ';

    sWhere := 'where tblancamentos.cod_lancamento like paraN or  ' +
              'tblancamentos.cod_lancamento like paraN or  ' +
              'tbcodigosentregadores.nom_fantasia like "%param%" ';
    View_PesquisarPessoas.sSQL := sSQL;
    View_PesquisarPessoas.sWhere := sWhere;
    View_PesquisarPessoas.bOpen := False;
    View_PesquisarPessoas.Caption := 'Localizar Lan�amentos';
    if View_PesquisarPessoas.ShowModal = mrOK then
    begin
      lancamentos := TLancamentosControl.Create;
      SetLength(aParam,2);
      aParam := ['CODIGO', View_PesquisarPessoas.qryPesquisa.Fields[1].AsInteger];
      if not lancamentos.Localizar(aParam).IsEmpty then
      begin
        LimpaCampos;
        iCadastro := lancamentos.Lancamentos.Codigo;
        textEditDescricao.Text := lancamentos.Lancamentos.Descricao;
        dateEditData.Date := lancamentos.Lancamentos.Data;
        iCadastro := lancamentos.Lancamentos.Cadastro;
        buttonEditCodigoEntregador.EditValue := lancamentos.Lancamentos.Entregador;
        if lancamentos.Lancamentos.Tipo = 'CREDITO' then
        begin
          comboBoxTipo.ItemIndex := 1;
        end
        else
        begin
          comboBoxTipo.ItemIndex := 2;
        end;
        textEditNomeEntregador.Text := RetornaNomeEntregador(lancamentos.Lancamentos.Entregador);
        calcEditValor.Value := lancamentos.Lancamentos.Valor;
        checkBoxProcessado.EditValue := lancamentos.Lancamentos.Desconto;
        maskEditDataProcessamento.EditText := FormatDateTime('dd/mm/yyyy hh:mm:ss', lancamentos.Lancamentos.DataDesconto);
        textEditExtrato.text := lancamentos.Lancamentos.Extrato;
        maskEditDataCadastro.EditText := FormatDateTime('dd/mm/yyyy hh:mm:ss', lancamentos.Lancamentos.DataCadastro);
        buttonEditReferencia.EditValue := lancamentos.Lancamentos.Referencia;
        TextEditUsuario.Text := lancamentos.Lancamentos.Usuario;
        Facao := tacPesquisa;
        Modo;
      end;
    end;
  finally
    lancamentos.Free;
    View_PesquisarPessoas.qryPesquisa.Close;
    View_PesquisarPessoas.tvPesquisa.ClearItems;
    FreeAndNil(View_PesquisarPessoas);
  end;
end;

function Tview_LancamentosExtratos.RetornaNomeEntregador(iCodigo: integer): String;
var
  entregador : TEntregadoresExpressasControl;
  sRetorno: String;
begin
  try
    Result := '';
    sRetorno := '';
    entregador := TEntregadoresExpressasControl.Create;
    if icodigo <> 0 then
    begin
      sRetorno := entregador.GetField('NOM_FANTASIA', 'COD_ENTREGADOR', iCodigo.ToString)
    end;
    if sRetorno.IsEmpty then
    begin
      sRetorno := 'NONE';
    end;
    Result := sRetorno;
  finally
    entregador.free;
  end;
end;

function Tview_LancamentosExtratos.VerificaProcesso: Boolean;
begin
  Result := False;
  if checkBoxProcessado.EditValue = 'S' then
  begin
    Exit;
  end;
  Result := True;
end;

end.
