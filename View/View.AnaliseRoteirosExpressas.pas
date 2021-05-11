unit View.AnaliseRoteirosExpressas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  cxTextEdit, cxMaskEdit, cxButtonEdit, System.Actions, Vcl.ActnList, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  Data.DB, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxGridCustomView, cxGrid, cxProgressBar, dxActivityIndicator, Thread.AnaliseRoteiroExpressas, Vcl.ExtCtrls,
  cxCurrencyEdit;

type
  Tview_AnaliseRoteirosExpressas = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    labelTitle: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    nomeArquivo: TcxButtonEdit;
    dxLayoutItem2: TdxLayoutItem;
    actionListAnalise: TActionList;
    actionAbrirArquivo: TAction;
    OpenDialog: TOpenDialog;
    cxButton1: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    actionProcessarArquivo: TAction;
    dsResumo: TDataSource;
    dxLayoutGroup3: TdxLayoutGroup;
    gridResumoDBTableView1: TcxGridDBTableView;
    gridResumoLevel1: TcxGridLevel;
    gridResumo: TcxGrid;
    dxLayoutItem4: TdxLayoutItem;
    gridResumoDBTableView1cod_roteiro: TcxGridDBColumn;
    gridResumoDBTableView1des_roteiro: TcxGridDBColumn;
    gridResumoDBTableView1qtd_volumes_leves: TcxGridDBColumn;
    gridResumoDBTableView1qtd_remessas_leves: TcxGridDBColumn;
    gridResumoDBTableView1qtd_volumes_pesado: TcxGridDBColumn;
    gridResumoDBTableView1qtd_remessas_pesado: TcxGridDBColumn;
    gridResumoDBTableView1qtd_total_volumes: TcxGridDBColumn;
    gridResumoDBTableView1qtd_total_remessas: TcxGridDBColumn;
    gridResumoDBTableView1val_total_pgr: TcxGridDBColumn;
    actionFecharTela: TAction;
    dxLayoutGroup4: TdxLayoutGroup;
    cxButton2: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    dsEntregas: TDataSource;
    dxLayoutGroup5: TdxLayoutGroup;
    gridEntregasDBTableView1: TcxGridDBTableView;
    gridEntregasLevel1: TcxGridLevel;
    gridEntregas: TcxGrid;
    dxLayoutItem6: TdxLayoutItem;
    gridEntregasDBTableView1NUM_NOSSONUMERO: TcxGridDBColumn;
    gridEntregasDBTableView1COD_AGENTE: TcxGridDBColumn;
    gridEntregasDBTableView1COD_ENTREGADOR: TcxGridDBColumn;
    gridEntregasDBTableView1COD_CLIENTE: TcxGridDBColumn;
    gridEntregasDBTableView1NUM_NF: TcxGridDBColumn;
    gridEntregasDBTableView1NOM_CONSUMIDOR: TcxGridDBColumn;
    gridEntregasDBTableView1DES_ENDERECO: TcxGridDBColumn;
    gridEntregasDBTableView1DES_COMPLEMENTO: TcxGridDBColumn;
    gridEntregasDBTableView1DES_BAIRRO: TcxGridDBColumn;
    gridEntregasDBTableView1NOM_CIDADE: TcxGridDBColumn;
    gridEntregasDBTableView1NUM_CEP: TcxGridDBColumn;
    gridEntregasDBTableView1NUM_TELEFONE: TcxGridDBColumn;
    gridEntregasDBTableView1DAT_EXPEDICAO: TcxGridDBColumn;
    gridEntregasDBTableView1DAT_PREV_DISTRIBUICAO: TcxGridDBColumn;
    gridEntregasDBTableView1QTD_VOLUMES: TcxGridDBColumn;
    gridEntregasDBTableView1DAT_ATRIBUICAO: TcxGridDBColumn;
    gridEntregasDBTableView1DAT_BAIXA: TcxGridDBColumn;
    gridEntregasDBTableView1DOM_BAIXADO: TcxGridDBColumn;
    gridEntregasDBTableView1DAT_PAGAMENTO: TcxGridDBColumn;
    gridEntregasDBTableView1DOM_PAGO: TcxGridDBColumn;
    gridEntregasDBTableView1DOM_FECHADO: TcxGridDBColumn;
    gridEntregasDBTableView1COD_STATUS: TcxGridDBColumn;
    gridEntregasDBTableView1DAT_ENTREGA: TcxGridDBColumn;
    gridEntregasDBTableView1QTD_PESO_REAL: TcxGridDBColumn;
    gridEntregasDBTableView1QTD_PESO_FRANQUIA: TcxGridDBColumn;
    gridEntregasDBTableView1VAL_VERBA_FRANQUIA: TcxGridDBColumn;
    gridEntregasDBTableView1VAL_ADVALOREM: TcxGridDBColumn;
    gridEntregasDBTableView1VAL_PAGO_FRANQUIA: TcxGridDBColumn;
    gridEntregasDBTableView1VAL_VERBA_ENTREGADOR: TcxGridDBColumn;
    gridEntregasDBTableView1NUM_EXTRATO: TcxGridDBColumn;
    gridEntregasDBTableView1QTD_DIAS_ATRASO: TcxGridDBColumn;
    gridEntregasDBTableView1QTD_VOLUMES_EXTRA: TcxGridDBColumn;
    gridEntregasDBTableView1VAL_VOLUMES_EXTRA: TcxGridDBColumn;
    gridEntregasDBTableView1QTD_PESO_COBRADO: TcxGridDBColumn;
    gridEntregasDBTableView1DES_TIPO_PESO: TcxGridDBColumn;
    gridEntregasDBTableView1DAT_RECEBIDO: TcxGridDBColumn;
    gridEntregasDBTableView1DOM_RECEBIDO: TcxGridDBColumn;
    gridEntregasDBTableView1NUM_CTRC: TcxGridDBColumn;
    gridEntregasDBTableView1NUM_MANIFESTO: TcxGridDBColumn;
    gridEntregasDBTableView1DES_RASTREIO: TcxGridDBColumn;
    gridEntregasDBTableView1NUM_LOTE_REMESSA: TcxGridDBColumn;
    gridEntregasDBTableView1DES_RETORNO: TcxGridDBColumn;
    gridEntregasDBTableView1DAT_CREDITO: TcxGridDBColumn;
    gridEntregasDBTableView1DOM_CREDITO: TcxGridDBColumn;
    gridEntregasDBTableView1NUM_CONTAINER: TcxGridDBColumn;
    gridEntregasDBTableView1VAL_PRODUTO: TcxGridDBColumn;
    gridEntregasDBTableView1QTD_ALTURA: TcxGridDBColumn;
    gridEntregasDBTableView1QTD_LARGURA: TcxGridDBColumn;
    gridEntregasDBTableView1QTD_COMPRIMENTO: TcxGridDBColumn;
    gridEntregasDBTableView1COD_FEEDBACK: TcxGridDBColumn;
    gridEntregasDBTableView1DAT_FEEDBACK: TcxGridDBColumn;
    gridEntregasDBTableView1DOM_CONFERIDO: TcxGridDBColumn;
    gridEntregasDBTableView1NUM_PEDIDO: TcxGridDBColumn;
    gridEntregasDBTableView1COD_CLIENTE_EMPRESA: TcxGridDBColumn;
    dxLayoutGroup6: TdxLayoutGroup;
    progresso: TcxProgressBar;
    dxLayoutItem7: TdxLayoutItem;
    indicador: TdxActivityIndicator;
    dxLayoutItem8: TdxLayoutItem;
    Timer: TTimer;
    procedure FormShow(Sender: TObject);
    procedure actionAbrirArquivoExecute(Sender: TObject);
    procedure actionFecharTelaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionProcessarArquivoExecute(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
  private
    { Private declarations }
    procedure StartForm;
    procedure CloseForm;
    procedure OpenFile;
    procedure UpdateDashBoard;
    procedure ProcessaRoteiros;
  public
    { Public declarations }
  end;

var
  view_AnaliseRoteirosExpressas: Tview_AnaliseRoteirosExpressas;
  FRoteiros : Thread_AnaliseRoteirosExpressas;
implementation

{$R *.dfm}

uses Data.SisGeF;

{ Tview_AnaliseRoteirosExpressas }

procedure Tview_AnaliseRoteirosExpressas.actionAbrirArquivoExecute(Sender: TObject);
begin
  OpenFile;
end;

procedure Tview_AnaliseRoteirosExpressas.actionFecharTelaExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_AnaliseRoteirosExpressas.actionProcessarArquivoExecute(Sender: TObject);
begin
  ProcessaRoteiros;
end;

procedure Tview_AnaliseRoteirosExpressas.CloseForm;
begin
  with Data_Sisgef do
  begin
    memTableResumoRoteiros.Active := False;
    mtbEntregas.Active := False;
  end;
end;

procedure Tview_AnaliseRoteirosExpressas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CloseForm;
  Action := caFree;
  view_AnaliseRoteirosExpressas := nil;
end;

procedure Tview_AnaliseRoteirosExpressas.FormShow(Sender: TObject);
begin
  StartForm;
end;

procedure Tview_AnaliseRoteirosExpressas.OpenFile;
var
  sFile, sMensagem: String;
begin
  if OpenDialog.Execute then
  begin
    sFile := OpenDialog.FileName;
    if FileExists(sFile) then
    begin
      nomeArquivo.Text := sFile;
    end
    else
    begin
      sMensagem := 'Arquivo ' + sFile + ' não encontrado!';
      Application.MessageBox(PChar(sMensagem), 'Atenção', MB_OK + MB_ICONWARNING);
      nomeArquivo.Clear;
    end;
  end;
end;

procedure Tview_AnaliseRoteirosExpressas.ProcessaRoteiros;
begin
  if Application.MessageBox('Confirma iniciar o processo de análise do roteiro?','Processar', MB_YESNO + MB_ICONQUESTION) = IDNO then
    Exit;
  dsResumo.Enabled := False;
  dsEntregas.Enabled := False;
  Data_Sisgef.memTableResumoRoteiros.Active := False;
  Data_Sisgef.memTableResumoRoteiros.Active := True;
  Data_Sisgef.mtbEntregas.Active := False;
  Data_Sisgef.mtbEntregas.Active := True;
  FRoteiros := Thread_AnaliseRoteirosExpressas.Create(True);
  FRoteiros.Arquivo := nomeArquivo.Text;
  FRoteiros.MemTabResumo := Data_Sisgef.memTableResumoRoteiros;
  FRoteiros.MemTabEntregas := Data_Sisgef.mtbEntregas;
  FRoteiros.Priority := tpNormal;
  dxLayoutGroup6.Visible := True;
  Timer.Enabled := True;
  indicador.Active := True;
  FRoteiros.Start;
end;

procedure Tview_AnaliseRoteirosExpressas.StartForm;
begin
  labelTitle.Caption := Self.Caption;
end;

procedure Tview_AnaliseRoteirosExpressas.TimerTimer(Sender: TObject);
begin
  UpdateDashBoard;
end;

procedure Tview_AnaliseRoteirosExpressas.UpdateDashBoard;
begin
if not FRoteiros.Processo then
  begin
    Timer.Enabled := False;
    indicador.Active := False;
    dsResumo.Enabled := False;
    dsEntregas.Enabled := False;
    progresso.Position := FRoteiros.Progresso;
    if FRoteiros.Cancelar then
      Application.MessageBox(PChar('Importação Cancelada.' + FRoteiros.MensagemSistema + ' !'), 'Atenção', MB_OK + MB_ICONEXCLAMATION)
    else
      Application.MessageBox('Imoportação concluída.', 'Atenção', MB_OK + MB_ICONINFORMATION);
    nomeArquivo.Text := '';
    progresso.Position := 0;
    dxLayoutGroup6.Visible := False;
    dsResumo.Enabled := True;
    dsEntregas.Enabled := True;
  end
  else
  begin
    progresso.Position := FRoteiros.Progresso;
  end;

end;

end.
