unit View.CadastroExtravios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Control.ExtraviosMultas, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit, cxLabel, cxGroupBox, cxMaskEdit, cxDropDownEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, cxButtonEdit, cxCurrencyEdit, Vcl.StdCtrls, cxClasses, dxGaugeCustomScale,
  dxGaugeQuantitativeScale, dxGaugeCircularScale, dxGaugeControl, Vcl.ExtCtrls, System.Actions, Vcl.ActnList, Vcl.Menus, cxButtons,
  cxProgressBar, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Data.DB, Data.SisGeF, Common.ENum,
  Control.ControleAWB, Control.Entregas, Control.EntregadoresExpressas;


type
  Tview_CadastroExtravios = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    Id: TcxTextEdit;
    cxLabel2: TcxLabel;
    Tipo: TcxComboBox;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    Data: TcxDateEdit;
    cxLabel5: TcxLabel;
    Entregador: TcxButtonEdit;
    NomeEntregador: TcxTextEdit;
    cxGroupBox2: TcxGroupBox;
    cxLabel6: TcxLabel;
    ValorProduto: TcxCurrencyEdit;
    cxLabel7: TcxLabel;
    Multa: TcxCurrencyEdit;
    cxLabel8: TcxLabel;
    Verba: TcxCurrencyEdit;
    cxLabel9: TcxLabel;
    Total: TcxCurrencyEdit;
    cxGroupBox3: TcxGroupBox;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    Obs: TMemo;
    cxLabel12: TcxLabel;
    cxGroupBox5: TcxGroupBox;
    cxLabel15: TcxLabel;
    Sequencia: TcxTextEdit;
    NumeroExtrato: TcxTextEdit;
    cxLabel16: TcxLabel;
    panelFooter: TPanel;
    actionListExtravios: TActionList;
    actionGravar: TAction;
    actionCancelar: TAction;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxLabel14: TcxLabel;
    Produto: TcxTextEdit;
    val_percentual_pago: TcxProgressBar;
    Situacao: TcxLabel;
    Status: TcxLabel;
    dsClientes: TDataSource;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel13: TcxLabel;
    Cliente: TcxLookupComboBox;
    actionPesquisar: TAction;
    NN: TcxButtonEdit;
    AWB: TcxButtonEdit;
    actionRemessa: TAction;
    actionAWB: TAction;
    operacao: TcxLabel;
    Descricao: TcxTextEdit;
    EnvioCorrespondencia: TcxTextEdit;
    RetornoCorrespondencia: TcxTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionFinalizarExecute(Sender: TObject);
    procedure actionGravarExecute(Sender: TObject);
    procedure actionCancelarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EntregadorPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure actionRemessaExecute(Sender: TObject);
    procedure actionAWBExecute(Sender: TObject);
    procedure SomaTotal;
    procedure ValorProdutoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure actionPesquisarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ClientePropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  private
    { Private declarations }
    procedure StartForm;
    procedure Modo;
    procedure MostraStatus;
    procedure ClearForm;
    procedure BlockAllFields(bFlag: boolean);
    procedure PopulateFields;
    procedure SetupClass;
    procedure SaveData;
    procedure CancelData;
    procedure LocateEntregador(iCodigo: integer);
    procedure SearchEntrega(iCampo, iCliente: Integer; sValor: string);
    procedure PesquisaEntregadores;
  public
    { Public declarations }
    Facao: TAcao;
    iNumero, iBase: Integer;
    sStatus: String;

  end;

var
  view_CadastroExtravios: Tview_CadastroExtravios;
  FExtravio: TExtraviosMultasControl;

implementation

{$R *.dfm}

uses View.PesquisaEntregadoresExpressas;

{ Tview_CadastroExtravios }

procedure Tview_CadastroExtravios.actionAWBExecute(Sender: TObject);
begin
  if AWB.Text = '' then Exit;
  SearchEntrega(2,Cliente.EditValue, AWB.Text);
end;

procedure Tview_CadastroExtravios.actionCancelarExecute(Sender: TObject);
begin
  CancelData;
end;

procedure Tview_CadastroExtravios.actionFinalizarExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure Tview_CadastroExtravios.actionGravarExecute(Sender: TObject);
begin
  SaveData;
end;

procedure Tview_CadastroExtravios.actionPesquisarExecute(Sender: TObject);
begin
  PesquisaEntregadores;
end;

procedure Tview_CadastroExtravios.actionRemessaExecute(Sender: TObject);
begin
  if NN.Text = '' then Exit;
  SearchEntrega(1,Cliente.EditValue, NN.Text);
end;

procedure Tview_CadastroExtravios.BlockAllFields(bFlag: boolean);
begin
  Id.Properties.ReadOnly := bFlag;
  Tipo.Properties.ReadOnly := bFlag;
  Data.Properties.ReadOnly := bFlag;
  NN.Properties.ReadOnly := bFlag;
  AWB.Properties.ReadOnly := bFlag;
  Descricao.Properties.ReadOnly := bFlag;
  Entregador.Properties.ReadOnly := bFlag;
  NomeEntregador.Properties.ReadOnly := bFlag;
  Cliente.Properties.ReadOnly := bFlag;
  ValorProduto.Properties.ReadOnly := bFlag;
  Multa.Properties.ReadOnly := bFlag;
  Verba.Properties.ReadOnly := bFlag;
  Total.Properties.ReadOnly := bFlag;
  EnvioCorrespondencia.Properties.ReadOnly := bFlag;
  RetornoCorrespondencia.Properties.ReadOnly := bFlag;
  Obs.ReadOnly := bFlag;
  Produto.Properties.ReadOnly := bFlag;
  Sequencia.Properties.ReadOnly := bFlag;
  NumeroExtrato.Properties.ReadOnly := bFlag;
end;

procedure Tview_CadastroExtravios.CancelData;
begin
  ModalResult := mrCancel;
end;

procedure Tview_CadastroExtravios.ClearForm;
begin
  Id.Text := '0';
  Tipo.ItemIndex := -1;
  Data.Clear;
  NN.Clear;
  AWB.Clear;
  Descricao.Text := '';
  Entregador.Tag := -1;
  Entregador.Text := '0';
  Entregador.Tag := 0;
  NomeEntregador.Clear;
  Cliente.EditValue := 0;
  ValorProduto.Value := 0;
  Multa.Value := 0;
  Verba.Value := 0;
  Total.Value := 0;
  EnvioCorrespondencia.Text := '';
  RetornoCorrespondencia.Text := '';
  Obs.Clear;
  Produto.Clear;
  Sequencia.EditValue := 0;
  NumeroExtrato.Clear;
  Situacao.Caption := '';
  Status.Caption := '';
  val_percentual_pago.Position := 0;
  operacao.Clear;
end;

procedure Tview_CadastroExtravios.ClientePropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  if Cliente.EditValue = 4 then
  begin
    awb.Enabled := True;
  end
  else
  begin
    awb.Clear;
    awb.Enabled := False;
  end;
end;

procedure Tview_CadastroExtravios.EntregadorPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  if Entregador.Tag = -1 then
    Exit;
  LocateEntregador(DisplayValue);
end;

procedure Tview_CadastroExtravios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FExtravio.Free;
  Action := caFree;
  view_CadastroExtravios := nil;
end;

procedure Tview_CadastroExtravios.FormKeyPress(Sender: TObject; var Key: Char);
begin
if obs.Focused then
    Exit;
  If Key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;
end;

procedure Tview_CadastroExtravios.FormShow(Sender: TObject);
begin
  StartForm;
end;

procedure Tview_CadastroExtravios.LocateEntregador(iCodigo: integer);
var
  FEntregadores : TEntregadoresExpressasControl;
  aParam: array of variant;
begin
  try
    FEntregadores := TEntregadoresExpressasControl.Create;
    SetLength(aParam, 2);
    aParam := ['ENTREGADOR', iCodigo];
    if FEntregadores.Localizar(aParam).IsEmpty then
    begin
      NomeEntregador.Text := '';
    end
    else
    begin
      Entregador.EditValue := Fentregadores.Localizar(aParam).FieldByName('cod_entregador').AsInteger;
      NomeEntregador.Text := Fentregadores.Localizar(aParam).FieldByName('nom_fantasia').AsString;
      iBase := Fentregadores.Localizar(aParam).FieldByName('cod_agente').AsInteger;
    end;
  finally
    FEntregadores.Free;
  end;
end;

procedure Tview_CadastroExtravios.Modo;
begin
  if FAcao = tacIndefinido then
  begin
    actionGravar.Enabled := False;
    actionPesquisar.Enabled := False;
    actionCancelar.Enabled := True;
    NN.Properties.ReadOnly := False;
    AWB.Properties.ReadOnly := False;
    Entregador.Properties.ReadOnly := False;
  end
  else if FAcao = tacIncluir then
  begin
    actionGravar.Enabled := True;
    actionPesquisar.Enabled := True;
    actionCancelar.Enabled := True;
    NN.Properties.ReadOnly := False;
    AWB.Properties.ReadOnly := False;
    BlockAllFields(False);
    Entregador.Properties.ReadOnly := False;
  end
  else if FAcao = tacAlterar then
  begin
    actionGravar.Enabled := True;
    if  FExtravio.Extravios.Restricao = 'N' then
    begin
      BlockAllFields(False);
      actionGravar.Enabled := True;
      actionCancelar.Enabled := True;
      actionPesquisar.Enabled := True;
      NN.Properties.ReadOnly := False;
      AWB.Properties.ReadOnly := False;
    end
    else
    begin
      actionPesquisar.Enabled := False;
      actionRemessa.Enabled := False;
      actionAWB.Enabled := False;
      actionGravar.Enabled := False;
      actionCancelar.Enabled := True;
      BlockAllFields(True);
    end;
    actionCancelar.Enabled := True;
  end;


end;

procedure Tview_CadastroExtravios.MostraStatus;
begin
  if FExtravio.Extravios.Percentual >= 100 then
    Situacao.Caption := 'QUITADO'
  else
    Situacao.Caption := 'PENDENTE';
  if FExtravio.Extravios.Restricao = 'N' then
    Status.Caption := 'PENDENTE'
  else if FExtravio.Extravios.Restricao = 'E' then
    Status.Caption := 'ESTORNADO'
  else
    Status.Caption := 'FINALIZADO';
end;

procedure Tview_CadastroExtravios.PesquisaEntregadores;
begin
  if Cliente.ItemIndex = -1 then
  begin
    MessageDlg('Informe o Cliente!', mtWarning, [mbCancel], 0);
    Cliente.SetFocus;
    Exit;
  end;
  if not Assigned(view_PesquisaEntregadoresExpressas)  then
    view_PesquisaEntregadoresExpressas := Tview_PesquisaEntregadoresExpressas.Create(Application);
  view_PesquisaEntregadoresExpressas.FCliente := Cliente.EditValue;
  if view_PesquisaEntregadoresExpressas.ShowModal = mrOk then
  begin
    entregador.EditValue := view_PesquisaEntregadoresExpressas.fdPesquisacod_entregador.AsInteger;
    NomeEntregador.Text := view_PesquisaEntregadoresExpressas.fdPesquisanom_entregador.AsString;
    iBase := view_PesquisaEntregadoresExpressas.fdPesquisacod_agente.AsInteger;
  end;
  FreeAndNil(view_PesquisaEntregadoresExpressas);
end;

procedure Tview_CadastroExtravios.PopulateFields;
var
  aParam : array of variant;
begin
  try
    SetLength(aParam, 2);
    aParam := ['CODIGO', iNumero];
    FExtravio.Extravios.Query := FExtravio.Extravios.Localizar(aParam);
    if not FExtravio.Extravios.Query.IsEmpty then
    begin
      if not FExtravio.Extravios.SetupClass() then
      begin
        Application.MessageBox('Erro ao popular formulário!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
        Exit;
      end;
    end
    else
    begin
      Application.MessageBox('Extravio não encontrado!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
      Exit;
    end;
    Id.EditValue := FExtravio.Extravios.ID;
    Tipo.ItemIndex := FExtravio.Extravios.Tipo;
    Data.Date := FExtravio.Extravios.Data;
    NN.Text := FExtravio.Extravios.NN;
    AWB.Text := FExtravio.Extravios.AWB;
    iBase := FExtravio.Extravios.Agente;
    Descricao.Text := FExtravio.Extravios.Descricao;
    Entregador.Tag := -1;
    Entregador.EditValue := FExtravio.Extravios.Entregador;
    Entregador.Tag := 0;
    NomeEntregador.Clear;
    LocateEntregador(FExtravio.Extravios.Entregador);
    Cliente.EditValue := FExtravio.Extravios.Cliente;
    ValorProduto.Value := FExtravio.Extravios.ValorProduto;
    Multa.Value := FExtravio.Extravios.Multa;
    Verba.Value := FExtravio.Extravios.Verba;
    Total.Value := FExtravio.Extravios.Total;
    EnvioCorrespondencia.Text := FExtravio.Extravios.EnvioCorrespondencia;
    RetornoCorrespondencia.Text := FExtravio.Extravios.RetornoCorrespondencia;
    Obs.Text := FExtravio.Extravios.Obs;
    Produto.Text := FExtravio.Extravios.Produto;
    Sequencia.Text := FExtravio.Extravios.Sequencia.ToString;
    NumeroExtrato.Text := FExtravio.Extravios.NumeroExtrato;
    val_percentual_pago.Position := FExtravio.Extravios.Percentual;
    sStatus := FExtravio.Extravios.Restricao;
    MostraStatus;
  finally
    FExtravio.Extravios.Query.Connection.Connected := False;
  end;
end;

procedure Tview_CadastroExtravios.SaveData;
begin
  if Application.MessageBox('Confirma os dados?', 'Gravar', MB_YESNO + MB_ICONQUESTION) = IDNO then
  begin
    Exit;
  end;
  SetupClass;
  if not FExtravio.Gravar then
  begin
    Application.MessageBox('Erro ao gravar dados?', 'Erro', MB_OK + MB_ICONERROR);
    Exit;
  end;
  ModalResult := mrOk;
end;

procedure Tview_CadastroExtravios.SearchEntrega(iCampo, iCliente: Integer; sValor: string);
var
  FAWB : TControleAWBControl;
  FEntrega : TEntregasControl;
  aParam: array of variant;
  sRemessa: String;
  sAWB, sProduto: String;
begin
  try
    FAWB := TControleAWBControl.Create;
    FEntrega := TEntregasControl.Create;
    if iCliente <= 0 then
    begin
      Application.MessageBox('Informe o cliente!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if iCampo = 2 then
    begin
      SetLength(aParam,2);
      aParam := ['AWB1', sValor];
      if FAWB.LocalizarExato(aParam) then
        sRemessa := FAWB.ControleAWB.Remessa
      else
        sRemessa := '';
      Finalize(aParam);
    end
    else
    begin
      sRemessa := sValor;
    end;
    SetLength(aParam,2);
    aParam := ['REMESSA', sRemessa];
    if FAWB.LocalizarExato(aParam) then
    begin
      sAWB := FAWB.ControleAWB.AWB1;
      sProduto := FAWB.ControleAWB.Descricao;
    end
    else
      sAWB := '';
    Finalize(aParam);
    SetLength(aParam,3);
    aParam := ['NNCLIENTE', sRemessa, iCliente];
    if not Fentrega.LocalizarExata(aParam) then
    begin
      Application.MessageBox('Remessa não localizada!', 'Atenção', MB_OK + MB_ICONASTERISK);
      Exit;
    end
    else
    begin
      NN.Text := FEntrega.Entregas.NN;
      AWB.Text := sAWB;
      LocateEntregador(Fentrega.Entregas.Entregador);
      Cliente.EditValue := Fentrega.Entregas.CodCliente;
      ValorProduto.Value := Fentrega.Entregas.ValorProduto;
      Multa.Value := 0;
      Verba.Value := FEntrega.Entregas.VerbaEntregador;
      Total.Value := FEntrega.Entregas.VerbaEntregador + Fentrega.Entregas.ValorProduto;
      Produto.Text := sProduto;
      Sequencia.Clear;
      NumeroExtrato.Clear;
      Situacao.Caption := 'PENDENTE';
      Status.Caption := 'PENDENTE';
      val_percentual_pago.Position := 0;
      Finalize(aParam);
    end;
  finally
    FAWB.Free;
    FEntrega.Free;
  end;
end;

procedure Tview_CadastroExtravios.SetupClass;
begin
  FExtravio.Extravios.ID :=  Id.EditValue;
  FExtravio.Extravios.Tipo := Tipo.ItemIndex;
  FExtravio.Extravios.Data := Data.Date;
  FExtravio.Extravios.NN := NN.EditValue;
  FExtravio.Extravios.AWB := AWB.Text;
  FExtravio.Extravios.Descricao := Descricao.Text;
  FExtravio.Extravios.Agente := iBase;
  FExtravio.Extravios.Entregador := Entregador.EditValue;
  FExtravio.Extravios.Cliente := Cliente.EditValue;
  FExtravio.Extravios.ValorProduto := ValorProduto.Value;
  FExtravio.Extravios.Multa := Multa.Value;
  FExtravio.Extravios.Verba := Verba.Value;
  FExtravio.Extravios.Total := Total.Value;
  FExtravio.Extravios.EnvioCorrespondencia := EnvioCorrespondencia.Text;
  FExtravio.Extravios.RetornoCorrespondencia := RetornoCorrespondencia.Text;
  FExtravio.Extravios.Obs := Obs.Text;
  FExtravio.Extravios.Produto := Produto.Text;
  FExtravio.Extravios.Sequencia := StrToIntDef(Sequencia.Text,0);
  FExtravio.Extravios.NumeroExtrato := NumeroExtrato.Text;
  if FExtravio.Extravios.Tipo = 1 then
  begin
    FExtravio.Extravios.Percentual := 100;
    FExtravio.Extravios.Restricao :='S';
  end
  else
  begin
    FExtravio.Extravios.Percentual := val_percentual_pago.Position;
    FExtravio.Extravios.Restricao :='N';
  end;
  FExtravio.Extravios.Acao := Facao;
end;

procedure Tview_CadastroExtravios.SomaTotal;
begin
   Total.Value := ValorProduto.Value +
                  Multa.Value +
                  Verba.Value;
end;

procedure Tview_CadastroExtravios.StartForm;
begin
  FExtravio := TExtraviosMultasControl.Create;
  if (FAcao = tacAlterar) or (FAcao = tacPesquisa) then
  begin
    operacao.Caption := 'Editar';
    PopulateFields;
    Modo;
  end;
  if Facao = tacIncluir then
  begin
    ClearForm;
    sStatus := 'N';
    operacao.Caption := 'Incluir';
    data.Date := Now;
    Modo;
  end;
end;

procedure Tview_CadastroExtravios.ValorProdutoPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  if (Facao = tacIncluir) or (FAcao = tacAlterar) then
    SomaTotal;
end;

end.
