unit View.CadastroExtravios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Control.ExtraviosMultas, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit, cxLabel, cxGroupBox, cxMaskEdit, cxDropDownEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, cxButtonEdit, cxCurrencyEdit, Vcl.StdCtrls, cxClasses, dxGaugeCustomScale,
  dxGaugeQuantitativeScale, dxGaugeCircularScale, dxGaugeControl, Vcl.ExtCtrls, System.Actions, Vcl.ActnList, Vcl.Menus, cxButtons,
  cxProgressBar, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Data.DB, Data.SisGeF, Common.ENum, Control.EntregadoresExpressas;


type
  Tview_CadastroExtravios = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    Id: TcxTextEdit;
    cxLabel2: TcxLabel;
    Tipo: TcxComboBox;
    cxLabel3: TcxLabel;
    Descricao: TcxComboBox;
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
    EnvioCorrespondencia: TcxComboBox;
    cxLabel11: TcxLabel;
    RetornoCorrespondencia: TcxComboBox;
    Obs: TMemo;
    cxLabel12: TcxLabel;
    cxGroupBox5: TcxGroupBox;
    cxLabel15: TcxLabel;
    Sequencia: TcxTextEdit;
    NumeroExtrato: TcxTextEdit;
    cxLabel16: TcxLabel;
    panelFooter: TPanel;
    actionListExtravios: TActionList;
    actionFinalizar: TAction;
    actionGravar: TAction;
    actionCancelar: TAction;
    cxButton1: TcxButton;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure StartForm;
    procedure Modo;
    procedure MostraStatus;
    procedure ClearForm;
    procedure BlockAllFields(bFlag: boolean);
    procedure PopulateFields;
  public
    { Public declarations }
    Facao: TAcao;
    iNumero: Integer;
  end;

var
  view_CadastroExtravios: Tview_CadastroExtravios;
  FExtravio: TExtraviosMultasControl;

implementation

{$R *.dfm}

{ Tview_CadastroExtravios }

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

procedure Tview_CadastroExtravios.ClearForm;
begin
  Id.Text := '0';
  Tipo.ItemIndex = -1;
  Data.Clear;
  NN.Clear;
  AWB.Clear;
  Descricao.ItemIndex := -1;
  Entregador.Tag := -1;
  Entregador.Text := '0';
  Entregador.Tag := 0;
  NomeEntregador.Clear;
  Cliente.EditingValue := 0;
  ValorProduto.Value := 0;
  Multa.Value := 0;
  Verba.Value := 0;
  Total.Value := 0;
  EnvioCorrespondencia.ItemIndex := -1;
  RetornoCorrespondencia.ItemIndex := -1;
  Obs.Clear;
  Produto.Clear;
  Sequencia.Clear;
  NumeroExtrato.Clear;
  Situacao.Caption := '';
  Status.Caption := '';
  val_percentual_pago.Position := 0;
end;

procedure Tview_CadastroExtravios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  view_CadastroExtravios := nil;
end;

procedure Tview_CadastroExtravios.Modo;
begin
  if FAcao = tacIndefinido then
  begin
    actionGravar.Enabled := False;
    actionPesquisar.Enabled := False;
    actionCancelar.Enabled := True;
    actionFinalizar.Enabled := False;
    NN.Properties.ReadOnly := False;
    AWB.Properties.ReadOnly := False;
    Entregador.Properties.ReadOnly := False;
  end
  else if FAcao = tacIncluir then
  begin
    actionGravar.Enabled := True;
    actionPesquisar.Enabled := True;
    actionCancelar.Enabled := True;
    actionFinalizar.Enabled := False;
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
      actionPesquisar.Enabled := True;
      actionFinalizar.Enabled := True;
      NN.Properties.ReadOnly := False;
    end
    else
    begin
      actionPesquisar.Enabled := False;
      actionFinalizar.Enabled := False;
      BlockAllFields(True);
    end;
    actionCancelar.Enabled := True;
  end;


end;

procedure Tview_CadastroExtravios.MostraStatus;
begin
  if FExtravio.Extravios.Percentual < 100 then
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
    Id.Text := FExtravio.Extravios.ID;
    Tipo.ItemIndex = FExtravio.Extravios.Tipo;
    Data.Date := FExtravio.Extravios.Data;
    NN.Text := FExtravio.Extravios.NN;
    AWB.Text := FExtravio.Extravios.AWB;
    Descricao.Text := FExtravio.Extravios.Descricao;
    Entregador.Tag := -1;
    Entregador.EditingValue := FExtravio.Extravios.Entregador;
    Entregador.Tag := 0;
    NomeEntregador.Clear;
    Cliente.EditingValue := FExtravio.Extravios.Cliente;
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
    MostraStatus;
  finally
    FExtravio.Extravios.Query.Connection.Connected := False;
  end;
end;

procedure Tview_CadastroExtravios.StartForm;
begin
  FExtravio := TExtraviosMultasControl.Create;
  if (FAcao = tacAlterar) or (FAcao = tacPesquisa) then
    MostraStatus;
  if Facao = tacIncluir then
  begin
    ClearForm;
    Modo;
  end;
end;

end.
