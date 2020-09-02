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
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Common.ENum, Control.EntregadoresExpressas;

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
  private
    { Private declarations }
    procedure Modo;
    procedure LimpaCampos;
    procedure PesquisaEntregadores;
    function VerificaProcesso(): Boolean;
  public
    { Public declarations }
  end;

var
  view_LancamentosExtratos: Tview_LancamentosExtratos;
  FAcao : TAcao;

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
    Application.MessageBox('Lançamento já processado (Descontato ou creditado). A edição não é permitida!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  FAcao := tacAlterar;
  Modo;
end;

procedure Tview_LancamentosExtratos.actionExcluirExecute(Sender: TObject);
begin
  if not VerificaProcesso() then
  begin
    Application.MessageBox('Lançamento já processado (Descontato ou creditado). A exclusão não é permitida!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
end;

procedure Tview_LancamentosExtratos.actionNovoExecute(Sender: TObject);
begin
  FAcao := tacIncluir;
  LimpaCampos;
  Modo;
  textEditDescricao.SetFocus;
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
  textEditDescricao.EditValue := 0;
  dateEditData.Clear;
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


    sSQL := 'select tbcodigosentregadores.cod_entregador as "Cód. Entregador", ' +
            'tbcodigosentregadores.nom_fantasia as "Nome Entregador", tbcodigosentregadores.des_chave as "Cód. ERP", ' +
            'tbcodigosentregadores.cod_cadastro as "Cód. Cadastro", tbentregadores.des_razao_social as "Nome Cadastro", ' +
            'tbcodigosentregadores.cod_agente as "Cód. Agente" ' +
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
      textEditNomeEntregador.Text := View_PesquisarPessoas.qryPesquisa.Fields[2].AsInteger;;
    end;
  finally
    entregadores.Free;
    View_PesquisarPessoas.qryPesquisa.Close;
    View_PesquisarPessoas.tvPesquisa.ClearItems;
    FreeAndNil(View_PesquisarPessoas);
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
