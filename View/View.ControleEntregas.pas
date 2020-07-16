unit View.ControleEntregas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Control.Clientes, Control.EntregadoresExpressas, Control.Entregas, Control.Sistema,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxClasses, dxLayoutContainer, dxLayoutControl, FireDAC.Comp.Client, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  System.Actions, Vcl.ActnList, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxButtonEdit, Control.AtribuicoesExpressas, Data.DB, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxImageComboBox, cxSpinEdit, cxCheckBox, cxBlobEdit, frxClass, frxDBSet;

type
  Tview_ControleEntregas = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxLabel1: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    aclControle: TActionList;
    aclFechar: TAction;
    cxButton1: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    datAtribuicao: TcxDateEdit;
    dxLayoutItem3: TdxLayoutItem;
    edtEntregador: TcxButtonEdit;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    txtNomeEntregador: TcxTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cboCliente: TcxComboBox;
    dxLayoutItem6: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    actIniciar: TAction;
    actPesquisar: TAction;
    dsAtribuicao: TDataSource;
    tvAtribuicao: TcxGridDBTableView;
    lvAtribuicao: TcxGridLevel;
    grdAtribuicao: TcxGrid;
    dxLayoutItem8: TdxLayoutItem;
    actGravar: TAction;
    cxButton3: TcxButton;
    dxLayoutItem9: TdxLayoutItem;
    tvAtribuicaoid_atribuicao: TcxGridDBColumn;
    tvAtribuicaocod_atribuicao: TcxGridDBColumn;
    tvAtribuicaodat_atribuicao: TcxGridDBColumn;
    tvAtribuicaocod_entregador: TcxGridDBColumn;
    tvAtribuicaocod_cliente: TcxGridDBColumn;
    tvAtribuicaocod_embarcador: TcxGridDBColumn;
    tvAtribuicaonum_nossunumero: TcxGridDBColumn;
    tvAtribuicaonum_lote_remessa: TcxGridDBColumn;
    tvAtribuicaodat_retorno: TcxGridDBColumn;
    tvAtribuicaodom_retorno: TcxGridDBColumn;
    tvAtribuicaodes_log: TcxGridDBColumn;
    tvAtribuicaonom_embarcador: TcxGridDBColumn;
    tvAtribuicaodes_endereco: TcxGridDBColumn;
    tvAtribuicaonum_cep: TcxGridDBColumn;
    tvAtribuicaonom_bairro: TcxGridDBColumn;
    tvAtribuicaonom_consumidor: TcxGridDBColumn;
    tvAtribuicaoqtd_volumes: TcxGridDBColumn;
    tvAtribuicaodes_telefone: TcxGridDBColumn;
    actCancelar: TAction;
    cxButton4: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    txtLeitura: TcxTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    actExcluirPedido: TAction;
    actExcluirAtribuicao: TAction;
    cxButton5: TcxButton;
    dxLayoutItem12: TdxLayoutItem;
    cxButton6: TcxButton;
    dxLayoutItem13: TdxLayoutItem;
    frxAtribuicao: TfrxReport;
    frxDBAtribuicao: TfrxDBDataset;
    actImprimir: TAction;
    cxButton7: TcxButton;
    dxLayoutItem14: TdxLayoutItem;
    edtEntregadorRetorno: TcxButtonEdit;
    dxLayoutItem15: TdxLayoutItem;
    actPesquisarEntregadorRetorno: TAction;
    txtNomeEntregadorRetorno: TcxTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    datInicio: TcxDateEdit;
    dxLayoutItem17: TdxLayoutItem;
    datFinal: TcxDateEdit;
    dxLayoutItem18: TdxLayoutItem;
    actIniciarRetorno: TAction;
    cxButton8: TcxButton;
    dxLayoutItem19: TdxLayoutItem;
    tvRetorno: TcxGridDBTableView;
    lvRetorno: TcxGridLevel;
    grdRetorno: TcxGrid;
    dxLayoutItem20: TdxLayoutItem;
    tvRetornoid_atribuicao: TcxGridDBColumn;
    tvRetornocod_atribuicao: TcxGridDBColumn;
    tvRetornodat_atribuicao: TcxGridDBColumn;
    tvRetornocod_entregador: TcxGridDBColumn;
    tvRetornocod_cliente: TcxGridDBColumn;
    tvRetornocod_embarcador: TcxGridDBColumn;
    tvRetornonom_embarcador: TcxGridDBColumn;
    tvRetornonum_nossunumero: TcxGridDBColumn;
    tvRetornodes_endereco: TcxGridDBColumn;
    tvRetornonum_cep: TcxGridDBColumn;
    tvRetornonom_bairro: TcxGridDBColumn;
    tvRetornonom_consumidor: TcxGridDBColumn;
    tvRetornoqtd_volumes: TcxGridDBColumn;
    tvRetornodes_telefone: TcxGridDBColumn;
    tvRetornonum_lote_remessa: TcxGridDBColumn;
    tvRetornodat_retorno: TcxGridDBColumn;
    tvRetornodom_retorno: TcxGridDBColumn;
    tvRetornodes_log: TcxGridDBColumn;
    txtLeituraRetorno: TcxTextEdit;
    dxLayoutItem21: TdxLayoutItem;
    actCancelarRetorno: TAction;
    actImprimirRetorno: TAction;
    cxButton9: TcxButton;
    dxLayoutItem22: TdxLayoutItem;
    actGravarRetorno: TAction;
    cxButton10: TcxButton;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    cxButton11: TcxButton;
    dxLayoutItem24: TdxLayoutItem;
    cboLote: TcxComboBox;
    dxLayoutItem25: TdxLayoutItem;
    SaveDialog: TSaveDialog;
    cboRetorno: TcxComboBox;
    dxLayoutItem26: TdxLayoutItem;
    frxPendencia: TfrxReport;
    chkDANFE: TcxCheckBox;
    dxLayoutItem27: TdxLayoutItem;
    procedure edtEntregadorPropertiesChange(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actIniciarRetornoExecute(Sender: TObject);
    procedure actCancelarRetornoExecute(Sender: TObject);
    procedure actGravarRetornoExecute(Sender: TObject);
    procedure dxLayoutGroup2TabChanging(Sender: TObject; ANewTabIndex: Integer; var Allow: Boolean);
    procedure dxLayoutGroup3TabChanging(Sender: TObject; ANewTabIndex: Integer; var Allow: Boolean);
    procedure aclFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtEntregadorPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure actIniciarExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure txtLeituraPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure actGravarExecute(Sender: TObject);
    procedure actImprimirRetornoExecute(Sender: TObject);
    procedure actPesquisarEntregadorRetornoExecute(Sender: TObject);
    procedure tvAtribuicaoNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure tvRetornoNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure edtEntregadorRetornoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure txtLeituraRetornoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure actExcluirAtribuicaoExecute(Sender: TObject);
    procedure actExcluirPedidoExecute(Sender: TObject);
    procedure cboClientePropertiesChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function ValidaInicioAtribuicao(): Boolean;
    procedure IniciaAtribuicao;
    procedure LocalizaEntregador;
    procedure PesquisaEntregador;
    procedure ModoAtribuicao(iModo: Integer);
    procedure LimpaCamposAtribuicao;
    function RetornaNN(sLeitura: String; iCliente: Integer): String;
    procedure LocalizaPedido;
    procedure SetupGrade(sNN: String; FDquery: TFDQuery);
    procedure CancelaAtribuicao;
    procedure ExcluirPedido;
    procedure ExcluirAtribuicao;
    procedure GravarAtribuicao;
    procedure SetupClassEntregas(FDQuery: TFDQuery);
    procedure SetupClassAtribuicao;
    procedure ImprimirAtribuicao;
    function ValidaInicioRetorno(): Boolean;
    procedure IniciaRetorno;
    procedure LimpaCamposRetorno;
    procedure LocalizaEntregadorRetorno;
    procedure PesquisaEntregadorRetorno;
    procedure ModoRetorno(iModo: Integer);
    procedure CancelaRetorno;
    procedure GravarRetorno;
    procedure LocalizaRetorno;
    procedure ImprimirPendencia;
    procedure ExportaAtribuicao;
    procedure ExportaPendencia;
  public
    { Public declarations }
  end;

var
  view_ControleEntregas: Tview_ControleEntregas;
  clientes : TClientesControl;
  entregador : TEntregadoresExpressasControl;
  entregas : TEntregasControl;
  atribuicao : TAtribuicoesExpressasControl;
  sCodigoAtribuicao: String;

implementation

{$R *.dfm}

uses Common.ENum, Common.Utils, Data.SisGeF, View.PesquisarPessoas, TFO.Barras, Global.Parametros, View.Impressao;

{ Tview_ControleEntregas }

procedure Tview_ControleEntregas.aclFecharExecute(Sender: TObject);
begin
  Perform(WM_CLOSE, 0, 0);
end;

procedure Tview_ControleEntregas.actCancelarExecute(Sender: TObject);
begin
  CancelaAtribuicao;
end;

procedure Tview_ControleEntregas.actCancelarRetornoExecute(Sender: TObject);
begin
  CancelaRetorno;
end;

procedure Tview_ControleEntregas.actExcluirAtribuicaoExecute(Sender: TObject);
begin
  ExcluirAtribuicao;
end;

procedure Tview_ControleEntregas.actExcluirPedidoExecute(Sender: TObject);
begin
  ExcluirPedido;
end;

procedure Tview_ControleEntregas.actGravarExecute(Sender: TObject);
begin
  GravarAtribuicao;
  IniciaRetorno;
end;

procedure Tview_ControleEntregas.actGravarRetornoExecute(Sender: TObject);
begin
  GravarRetorno;
end;

procedure Tview_ControleEntregas.actImprimirExecute(Sender: TObject);
begin
  ImprimirAtribuicao;
end;

procedure Tview_ControleEntregas.actImprimirRetornoExecute(Sender: TObject);
begin
  ImprimirPendencia;
end;

procedure Tview_ControleEntregas.actIniciarExecute(Sender: TObject);
begin
  IniciaAtribuicao;
end;

procedure Tview_ControleEntregas.actIniciarRetornoExecute(Sender: TObject);
begin
  IniciaRetorno;
end;

procedure Tview_ControleEntregas.actPesquisarEntregadorRetornoExecute(Sender: TObject);
begin
  PesquisaEntregadorRetorno;
end;

procedure Tview_ControleEntregas.actPesquisarExecute(Sender: TObject);
begin
  PesquisaEntregador;
end;

procedure Tview_ControleEntregas.CancelaAtribuicao;
begin
  if Application.MessageBox('Confirma cancelar esse processo de atribuição?', 'Cancelar', MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    LimpaCamposAtribuicao;
    ModoAtribuicao(0);
  end;
end;

procedure Tview_ControleEntregas.CancelaRetorno;
begin
  if Application.MessageBox('Confirma cancelar esta prestação de contas?', 'Cancelar', MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    LimpaCamposRetorno;
    ModoRetorno(0);
  end;
end;

procedure Tview_ControleEntregas.cboClientePropertiesChange(Sender: TObject);
begin
  if cboCliente.ItemIndex = 3 then
  begin
    dxLayoutItem27.Visible := True;
  end
  else
  begin
    dxLayoutItem27.Visible := False;
  end;
end;

procedure Tview_ControleEntregas.dxLayoutGroup2TabChanging(Sender: TObject; ANewTabIndex: Integer; var Allow: Boolean);
begin
  LimpaCamposAtribuicao;
  ModoAtribuicao(0);
end;

procedure Tview_ControleEntregas.dxLayoutGroup3TabChanging(Sender: TObject; ANewTabIndex: Integer; var Allow: Boolean);
begin
  LimpaCamposRetorno;
  ModoRetorno(0);
end;

procedure Tview_ControleEntregas.edtEntregadorPropertiesChange(Sender: TObject);
begin
  txtNomeEntregador.Clear;
end;

procedure Tview_ControleEntregas.edtEntregadorPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  LocalizaEntregador;
end;

procedure Tview_ControleEntregas.edtEntregadorRetornoPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  LocalizaEntregadorRetorno;
end;

procedure Tview_ControleEntregas.ExcluirAtribuicao;
var
  sMensagem: String;
begin
  try
    sMensagem := 'Confirma a exclusão desta atribuição?';
    if Application.MessageBox(PChar(sMensagem), 'Excluir Atribuição', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;
    atribuicao := TAtribuicoesExpressasControl.Create;
    atribuicao.Atribuicoes.ID := 0;
    atribuicao.Atribuicoes.Codigo := sCodigoAtribuicao;
    atribuicao.Atribuicoes.Acao := tacExcluir;
    if not atribuicao.Gravar then
    begin
      Application.MessageBox('Erro ao excluir a atribuição!', 'Erro', MB_OK + MB_ICONERROR);
      Exit;
    end;
    LimpaCamposAtribuicao;
    ModoAtribuicao(0);
  finally
    atribuicao.Free;
  end;
end;

procedure Tview_ControleEntregas.ExcluirPedido;
var
  sMensagem: String;
begin
  sMensagem := 'Confirma a exclusão do NN ' + Data_Sisgef.mtbAtribuicaonum_nossonumero.AsString + ' desta atribuição?';
  if Application.MessageBox(PChar(sMensagem), 'Excluir Pedido', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;
  Data_Sisgef.mtbAtribuicao.Delete;
  txtLeitura.SetFocus;
end;

procedure Tview_ControleEntregas.ExportaAtribuicao;
begin
  SaveDialog.Filter := '';
  SaveDialog.Filter := 'Excel (*.xls) |*.xls|XML (*.xml) |*.xml|Arquivo Texto (*.txt) |*.txt|Página Web (*.html)|*.html';
  SaveDialog.Title := 'Exportar Dados';
  SaveDialog.DefaultExt := 'xls';
  if SaveDialog.Execute then
  begin
    TUtils.ExportarDados(grdAtribuicao, SaveDialog.FileName);
  end;

end;

procedure Tview_ControleEntregas.ExportaPendencia;
begin
  SaveDialog.Filter := '';
  SaveDialog.Filter := 'Excel (*.xls) |*.xls|XML (*.xml) |*.xml|Arquivo Texto (*.txt) |*.txt|Página Web (*.html)|*.html';
  SaveDialog.Title := 'Exportar Dados';
  SaveDialog.DefaultExt := 'xls';
  if SaveDialog.Execute then
  begin
    TUtils.ExportarDados(grdRetorno, SaveDialog.FileName);
  end;
end;

procedure Tview_ControleEntregas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Data_Sisgef.mtbAtribuicao.Active then  Data_Sisgef.mtbAtribuicao.Close;

  Action := caFree;
  view_ControleEntregas := Nil;
end;

procedure Tview_ControleEntregas.FormKeyPress(Sender: TObject; var Key: Char);
begin
If Key = #13 then
  begin
    Key := #0;
    if grdAtribuicao.IsFocused then Exit;
    if grdRetorno.IsFocused then Exit;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;
end;

procedure Tview_ControleEntregas.FormShow(Sender: TObject);
begin
  ModoAtribuicao(0);
  ModoRetorno(0);
end;

procedure Tview_ControleEntregas.GravarAtribuicao;
var
  FDEntregas : TFDQuery;
  FDAtribuicao : TFDQuery;
  FDEntregador : TFDquery;
  aParam: Array of variant;
  iBase: Integer;
begin
  try
    FDEntregas := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    FDAtribuicao := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    FDEntregador := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    atribuicao := TAtribuicoesExpressasControl.Create;
    if Application.MessageBox('Confirma gravar a atribuição?', 'Gravar', MB_YESNO + MB_ICONQUESTION) = IDNO then
    begin
      Exit;
    end;
    entregas := TEntregasControl.Create;
    entregador := TEntregadoresExpressasControl.Create;
    if Data_Sisgef.mtbAtribuicao.IsEmpty then Exit;
    Data_Sisgef.mtbAtribuicao.First;
    atribuicao.Atribuicoes.ID := 0;
    atribuicao.Atribuicoes.Codigo := sCodigoAtribuicao;
    atribuicao.Atribuicoes.Acao := tacExcluir;
    if not atribuicao.Gravar then
    begin
      Application.MessageBox('Erro ao excluir a atribuição!', 'Erro', MB_OK + MB_ICONERROR);
    end;
    while not Data_Sisgef.mtbAtribuicao.Eof do
    begin
      atribuicao.Atribuicoes.ID := 0;
      atribuicao.Atribuicoes.Codigo := '';
      atribuicao.Atribuicoes.NN := Data_Sisgef.mtbAtribuicaonum_nossonumero.AsString;
      atribuicao.Atribuicoes.Acao := tacExcluir;
      if not atribuicao.Gravar then
      begin
        Application.MessageBox('Erro ao excluir o pedido!', 'Erro', MB_OK + MB_ICONERROR);
      end;
      atribuicao.Atribuicoes.Acao := tacIncluir;
      SetupClassAtribuicao;
      if not atribuicao.Gravar then
      begin
        Application.MessageBox(PChar('Erro ao incluir a atribuição do pedido ' + atribuicao.Atribuicoes.NN + ' !'), 'Erro',
                               MB_OK + MB_ICONERROR);
      end;
      iBase := 1;
      entregador := TEntregadoresExpressasControl.Create;
      FDEntregador := TSistemaControl.GetInstance.Conexao.ReturnQuery;
      SetLength(aParam,2);
      aParam[0] := 'ENTREGADOR';
      aParam[1] := Data_Sisgef.mtbAtribuicaocod_entregador.AsInteger;
      FDEntregador := entregador.Localizar(aParam);
      Finalize(aParam);
      if not FDEntregas.IsEmpty then
      begin
        iBase := FDEntregador.FieldByName('COD_AGENTE').AsInteger;
      end;
      FDEntregador.Close;
      entregador.Free;
      entregas := TEntregasControl.Create;
      FDEntregas := TSistemaControl.GetInstance.Conexao.ReturnQuery;
      SetLength(aParam,2);
      aParam[0] := 'NN';
      aParam[1] := Data_Sisgef.mtbAtribuicaonum_nossonumero.AsString;
      FDEntregas := entregas.Localizar(aParam);
      Finalize(aParam);
      if not FDEntregas.IsEmpty then
      begin
        SetupClassEntregas(FDEntregas);
        entregas.Entregas.Distribuidor := iBase;
        entregas.Entregas.Atribuicao := datAtribuicao.Date;
        entregas.Entregas.Entregador := Data_Sisgef.mtbAtribuicaocod_entregador.AsInteger;
        entregas.Entregas.Rastreio := entregas.Entregas.Rastreio + #13 +
                                      '> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' atribuido ao entregador ' +
                                      edtEntregador.Text + ' - ' + txtNomeEntregador.Text + ' por ' +
                                      Global.Parametros.pUser_Name;
        entregas.Entregas.Acao := tacAlterar;
        if not entregas.Gravar then
        begin
          Application.MessageBox(PChar('Erro ao gravar a alteração do pedido ' + entregas.Entregas.NN + ' !'), 'Erro',
                               MB_OK + MB_ICONERROR);
        end;
      end
      else
      begin
        Application.MessageBox(PChar('Pedido ' + entregas.Entregas.NN + ' não encontrado no banco de dados!'), 'Erro',
                               MB_OK + MB_ICONERROR);

      end;
      FDEntregas.Close;
      entregas.Free;
      Data_Sisgef.mtbAtribuicao.Next;
    end;
    if Application.MessageBox('Atribuição gravada. Deseja imprimir?', 'Imprimir Atribuição', MB_YESNO + MB_ICONQUESTION) = IDYES then
    begin
      ImprimirAtribuicao;
    end;
  finally
    LimpaCamposAtribuicao;
    ModoAtribuicao(0);
    FDEntregas.Free;
    FDAtribuicao.Free;
    FDEntregador.Free;
    atribuicao.Free;
  end;
end;

procedure Tview_ControleEntregas.GravarRetorno;
var
  FDEntregas : TFDQuery;
  FDAtribuicao : TFDQuery;
  FDEntregador : TFDquery;
  aParam: Array of variant;
  iBase: Integer;
begin
  try
    FDEntregas := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    FDAtribuicao := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    FDEntregador := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    atribuicao := TAtribuicoesExpressasControl.Create;
    if Application.MessageBox('Confirma gravar a prestação de contas?', 'Gravar', MB_YESNO + MB_ICONQUESTION) = IDNO then
    begin
      Exit;
    end;
    entregas := TEntregasControl.Create;
    entregador := TEntregadoresExpressasControl.Create;
    if Data_Sisgef.mtbAtribuicao.IsEmpty then Exit;
    Data_Sisgef.mtbAtribuicao.First;
    while not Data_Sisgef.mtbAtribuicao.Eof do
    begin
      atribuicao.Atribuicoes.Acao := tacAlterar;
      SetupClassAtribuicao;
      if not atribuicao.Gravar then
      begin
        Application.MessageBox(PChar('Erro ao gravar o retorno do pedido ' + atribuicao.Atribuicoes.NN + ' !'), 'Erro',
                               MB_OK + MB_ICONERROR);
      end;
      iBase := 1;
      entregador := TEntregadoresExpressasControl.Create;
      FDEntregador := TSistemaControl.GetInstance.Conexao.ReturnQuery;
      SetLength(aParam,2);
      aParam[0] := 'ENTREGADOR';
      aParam[1] := edtEntregadorRetorno.EditingValue;
      FDEntregador := entregador.Localizar(aParam);
      Finalize(aParam);
      if not FDEntregador.IsEmpty then
      begin
        iBase := FDEntregador.FieldByName('COD_AGENTE').AsInteger;
      end;
      FDEntregador.Close;
      entregador.Free;
      entregas := TEntregasControl.Create;
      FDEntregas := TSistemaControl.GetInstance.Conexao.ReturnQuery;
      SetLength(aParam,2);
      aParam[0] := 'NN';
      aParam[1] := Data_Sisgef.mtbAtribuicaonum_nossonumero.AsString;
      FDEntregas := entregas.Localizar(aParam);
      Finalize(aParam);
      if not FDEntregas.IsEmpty then
      begin
        SetupClassEntregas(FDEntregas);
        entregas.Entregas.Distribuidor := iBase;
        entregas.Entregas.Entregador := edtEntregadorRetorno.EditingValue;
        entregas.Entregas.Rastreio := entregas.Entregas.Rastreio + #13 +
                                      '> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' prestação de contas do entregador ' +
                                      edtEntregador.Text + ' - ' + txtNomeEntregador.Text + ' retorno registrado por ' +
                                      Global.Parametros.pUser_Name;
        entregas.Entregas.Acao := tacAlterar;
        if not entregas.Gravar then
        begin
          Application.MessageBox(PChar('Erro ao gravar a alteração do pedido ' + entregas.Entregas.NN + ' !'), 'Erro',
                               MB_OK + MB_ICONERROR);
        end;
      end
      else
      begin
        Application.MessageBox(PChar('Pedido ' + entregas.Entregas.NN + ' não encontrado no banco de dados!'), 'Erro',
                               MB_OK + MB_ICONERROR);

      end;
      FDEntregas.Close;
      entregas.Free;
      Data_Sisgef.mtbAtribuicao.Next;
    end;
  finally
    FDEntregas.Free;
    FDAtribuicao.Free;
    FDEntregador.Free;
    atribuicao.Free;
  end;
end;

procedure Tview_ControleEntregas.ImprimirAtribuicao;
var
  sImpressao: String;
  sData : String;
  sEntregador: String;
begin
  with frxAtribuicao do begin
    if not Assigned(view_Impressao) then begin
      view_Impressao := Tview_Impressao.Create(Application);
    end;
    view_Impressao.cxLabel1.Caption := 'Atribuição de Expressas';
    view_Impressao.cxArquivo.Text := ExtractFilePath(Application.ExeName) + 'Reports\frxAtribuicaoExpressas.fr3';
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
    sEntregador:= edtEntregador.Text + ' - ' + txtNomeEntregador.Text;
    LoadFromFile(view_Impressao.cxArquivo.Text);
    sImpressao := 'Impresso pelo ' + Application.Title + ' Versão ' + Common.Utils.TUtils.VersaoExe + ' por ' +
                  Global.Parametros.pNameUser + ' em ' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now);
    sData := FormatDateTime('dd/mm/yyyy - dddd', datAtribuicao.Date);
    Variables.Items[Variables.IndexOf('vEntregador')].Value :=  QuotedStr(sEntregador);
    Variables.Items[Variables.IndexOf('vData')].Value :=  QuotedStr(sData);
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

procedure Tview_ControleEntregas.ImprimirPendencia;
var
  sImpressao: String;
  sData : String;
  sData1 : String;
  sEntregador: String;
begin
  with frxPendencia do begin
    if not Assigned(view_Impressao) then begin
      view_Impressao := Tview_Impressao.Create(Application);
    end;
    view_Impressao.cxLabel1.Caption := 'Pendência de Atribuição de Expressas';
    view_Impressao.cxArquivo.Text := ExtractFilePath(Application.ExeName) + 'Reports\frxPendenciasExpressas.fr3';
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
    sEntregador:= edtEntregadorRetorno.Text + ' - ' + txtNomeEntregadorRetorno.Text;
    LoadFromFile(view_Impressao.cxArquivo.Text);
    sImpressao := 'Impresso pelo ' + Application.Title + ' Versão ' + Common.Utils.TUtils.VersaoExe + ' por ' +
                  Global.Parametros.pNameUser + ' em ' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now);
    sData := FormatDateTime('dd/mm/yyyy - dddd', datInicio.Date);
    sData1 := FormatDateTime('dd/mm/yyyy - dddd', datFinal.Date);
    Variables.Items[Variables.IndexOf('vEntregador')].Value :=  QuotedStr(sEntregador);
    Variables.Items[Variables.IndexOf('vDataInicial')].Value :=  QuotedStr(sData);
    Variables.Items[Variables.IndexOf('vDataFinal')].Value :=  QuotedStr(sData1);
    Variables.Items[Variables.IndexOf('vImpressao')].Value :=  QuotedStr(sImpressao);
    if (not vieW_Impressao.bFlagImprimir) then
    begin
      ShowReport(True);
    end
    else
    begin
      Print;
    end;
    FreeAndNil(vieW_Impressao);
  end;end;

procedure Tview_ControleEntregas.IniciaAtribuicao;
var
  FDQuery : TFDQuery;
  aParam : Array of variant;
begin
  try
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    atribuicao := TAtribuicoesExpressasControl.Create;
    if not ValidaInicioAtribuicao then Exit;
    sCodigoAtribuicao := '';
    sCodigoAtribuicao := Copy(datAtribuicao.Text,7,4) + Copy(datAtribuicao.Text,4,2) + Copy(datAtribuicao.Text,1,2) +
                         FormatFloat('000000', StrToIntDef(edtEntregador.Text,0));
    if cboLote.ItemIndex > 0 then
    begin
      sCodigoAtribuicao := sCodigoAtribuicao + IntToStr(cboLote.ItemIndex);
    end;
    if Data_Sisgef.mtbAtribuicao.Active then Data_Sisgef.mtbAtribuicao.Active := False;
    SetLength(aParam,2);
    aParam[0] := 'FILTRO';
    aParam[1] := 'cod_atribuicao like ' + QuotedStr(sCodigoAtribuicao + '%') + ' and dom_retorno <> 1';
    FDQuery := atribuicao.Localizar(aParam);
    Finalize(aParam);
    if not FDQuery.IsEmpty then
    begin
      if Application.MessageBox('Atribuição já gravada no banco de dados. Deseja continuar?', 'Atenção', MB_YESNO + MB_ICONQUESTION) = IDYES then
      begin
        if Data_Sisgef.mtbAtribuicao.Active then Data_Sisgef.mtbAtribuicao.Active := False;
        Data_Sisgef.mtbAtribuicao.Data := FDQuery.Data;
      end
      else
      begin
        Exit;
      end;
    end
    else
    begin
      Data_Sisgef.mtbAtribuicao.Active := True;
    end;
    ModoAtribuicao(1);
    txtLeitura.SetFocus;
  finally
    FDQuery.Free;
    atribuicao.Free;
  end;
end;

procedure Tview_ControleEntregas.IniciaRetorno;
var
  FDQuery : TFDQuery;
  aParam : Array of variant;
begin
  try
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    atribuicao := TAtribuicoesExpressasControl.Create;
    if not ValidaInicioRetorno then Exit;
    if Data_Sisgef.mtbAtribuicao.Active then Data_Sisgef.mtbAtribuicao.Active := False;
    SetLength(aParam,4);
    aParam[0] := 'RETORNO';
    aParam[1] := edtEntregadorRetorno.EditingValue;
    aParam[2] := datInicio.Date;
    aParam[3] := datFinal.Date;
    FDQuery := atribuicao.Localizar(aParam);
    Finalize(aParam);
    if not FDQuery.IsEmpty then
    begin
      Data_Sisgef.mtbAtribuicao.Data := FDQuery.Data;
    end
    else
    begin
      Application.MessageBox('Período não encontrado!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    ModoRetorno(1);
    txtLeituraRetorno.SetFocus;
  finally
    FDQuery.Free;
    atribuicao.Free;
  end;
end;

procedure Tview_ControleEntregas.LimpaCamposAtribuicao;
begin
  cboCliente.ItemIndex := 0;
  cboLote.ItemIndex := 0;
  datAtribuicao.Clear;
  edtEntregador.EditValue := 0;
  txtLeitura.Clear;
  if Data_Sisgef.mtbAtribuicao.Active then Data_Sisgef.mtbAtribuicao.Close;
end;

procedure Tview_ControleEntregas.LimpaCamposRetorno;
begin
  edtEntregadorRetorno.EditValue := 0;
  datInicio.Clear;
  datFinal.Clear;
  txtLeituraRetorno.Clear;
  Data_Sisgef.mtbAtribuicao.Close;
end;

procedure Tview_ControleEntregas.LocalizaEntregador;
var
  FDQuery : TFDQuery;
  aParam : Array of variant;
begin
  try
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    entregador := TEntregadoresExpressasControl.Create;
    SetLength(aParam,2);
    aParam[0] := 'ENTREGADOR';
    aParam[1] := StrToIntDef(edtEntregador.Text,0);
    FDQuery := entregador.Localizar(aParam);
    Finalize(aParam);
    if not FDQuery.IsEmpty then
    begin
      txtNomeEntregador.Text := FDQuery.FieldByName('NOM_FANTASIA').AsString;
    end
    else
    begin
      txtNomeEntregador.Clear;
    end;
    FDQuery.Close;
  finally
    FDQuery.Free;
    entregador.Free;
  end;

end;

procedure Tview_ControleEntregas.LocalizaEntregadorRetorno;
var
  FDQuery : TFDQuery;
  aParam : Array of variant;
begin
  try
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    entregador := TEntregadoresExpressasControl.Create;
    SetLength(aParam,2);
    aParam[0] := 'ENTREGADOR';
    aParam[1] := StrToIntDef(edtEntregadorRetorno.Text,0);
    FDQuery := entregador.Localizar(aParam);
    Finalize(aParam);
    if not FDQuery.IsEmpty then
    begin
      txtNomeEntregadorRetorno.Text := FDQuery.FieldByName('NOM_FANTASIA').AsString;
    end
    else
    begin
      txtNomeEntregadorRetorno.Clear;
    end;
    FDQuery.Close;
  finally
    FDQuery.Free;
    entregador.Free;
  end;
end;

procedure Tview_ControleEntregas.LocalizaPedido;
var
  FDQuery : TFDQuery;
  aParam: Array of variant;
  sNN : String;
  bFlagGravar: Boolean;
begin
  try
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    entregas := TEntregasControl.Create;
    atribuicao := TAtribuicoesExpressasControl.Create;
    sNN := '';
    if cboCliente.ItemIndex <> 3 then
    begin
      sNN := RetornaNN(txtLeitura.Text, cboCliente.ItemIndex);
      SetLength(aPAram,2);
      aParam[0] := 'NN';
      aParam[1] := sNN;
    end
    else
    begin
      if chkDANFE.Checked then
      begin
        sNN := Trim(txtLeitura.Text);
        SetLength(aParam,2);
        aParam[0] := 'FILTRO';
        aParam[1] := 'where des_retorno like ' + QuotedStr(sNN + '%');
      end
      else
      begin
        sNN := RetornaNN(txtLeitura.Text, cboCliente.ItemIndex);
        SetLength(aPAram,2);
        aParam[0] := 'NN';
        aParam[1] := sNN;
      end;
    end;
    FDQuery := entregas.Localizar(aParam);
    Finalize(aParam);
    if FDQuery.IsEmpty then
    begin
      Application.MessageBox(PChar('Pedido ' + sNN + ' não encontrado no banco de dados!'), 'Atenção', MB_OK + MB_ICONHAND);
      Exit;
    end;
    if cboCliente.ItemIndex = 3 then
    begin
      sNN := FDQuery.FieldByName('num_nossonumero').AsString;
    end;
    if sNN.IsEmpty then
    begin
      Application.MessageBox(PChar('Pedido ' + txtLeitura.Text + ' inválido!'), 'Atenção', MB_OK + MB_ICONHAND);
      Exit;
    end;
    bFlagGravar := True;
    if not Data_Sisgef.mtbAtribuicao.IsEmpty then Data_Sisgef.mtbAtribuicao.First;
    while not Data_Sisgef.mtbAtribuicao.eof do
    begin
      if Data_Sisgef.mtbAtribuicaonum_nossonumero.AsString = sNN then bFlagGravar := False;
      Data_Sisgef.mtbAtribuicao.Next;
    end;
    if not bFlagGravar then
    begin
      Application.MessageBox(PChar('Pedido ' + sNN + ' já consta nesta atribuição!'), 'Atenção', MB_OK + MB_ICONINFORMATION);
      Exit;
    end;
    if FDQuery.FieldByName('DOM_BAIXADO').AsString <> 'N' then
    begin
      Application.MessageBox(PChar('Pedido ' + sNN + ' já foi baixado!'), 'Atenção', MB_OK + MB_ICONHAND);
      Exit;
    end;
    SetupGrade(sNN,FDQuery);
  finally
    txtLeitura.SetFocus;
    Data_Sisgef.mtbAtribuicao.IndexesActive := False;
    FDQuery.Free;
    entregas.Free;
    atribuicao.Free;
  end;
end;

procedure Tview_ControleEntregas.LocalizaRetorno;
var
  sNN : String;
  sMensagem: String;
  bFlagGrava: Boolean;
  sChave: String;
begin
  try
    sNN := '';
    sNN := RetornaNN(txtLeituraRetorno.Text, cboCliente.ItemIndex);
    if sNN.IsEmpty then
    begin
      Application.MessageBox(PChar('Pedido ' + txtLeitura.Text + ' inválido!'), 'Atenção', MB_OK + MB_ICONHAND);
      Exit;
    end;
    if not Data_Sisgef.mtbAtribuicao.IsEmpty then Data_Sisgef.mtbAtribuicao.First;
    bFlagGrava := False;
    while not Data_Sisgef.mtbAtribuicao.Eof do
    begin
      sChave :=  Data_Sisgef.mtbAtribuicaonum_nossonumero.AsString;
      if cboCliente.ItemIndex = 2 then
      begin
        if cboRetorno.ItemIndex = 1 then
        begin
          sChave :=  Data_Sisgef.mtbAtribuicaocod_retorno.AsString
        end;
      end;
      if sChave = sNN then
      begin
        bFlagGrava := True;
        if Data_Sisgef.mtbAtribuicaoqtd_volumes.AsInteger > 1 then
        begin
          if cboRetorno.ItemIndex <> 1 then
          begin
            sMensagem := 'Pedido ' + Data_Sisgef.mtbAtribuicaonum_nossonumero.AsString + ' possui ' +
                         Data_Sisgef.mtbAtribuicaoqtd_volumes.AsString + ' volumes. Confirma o retorno?';
            if Application.MessageBox(PChar(sMensagem), 'Atenção', MB_OKCANCEL + MB_ICONWARNING) = IDCANCEL then
            begin
              bFlagGrava := False;
            end;
          end;
        end;
        Data_Sisgef.mtbAtribuicao.Edit;
        Data_Sisgef.mtbAtribuicaodom_retorno.AsInteger := cboRetorno.ItemIndex;
        Data_Sisgef.mtbAtribuicaodat_retorno.AsDateTime := Now;
        Data_Sisgef.mtbAtribuicao.Post;
      end;
      Data_Sisgef.mtbAtribuicao.Next;
    end;
    if not bFlagGrava then
    begin
      Application.MessageBox(PChar('Pedido ' + sNN + ' não encontrado!'), 'Atenção', MB_OK + MB_ICONWARNING);
    end;
  finally
    txtLeituraRetorno.SetFocus;
  end;
end;

procedure Tview_ControleEntregas.ModoAtribuicao(iModo: Integer);
begin
  if iModo = 0 then
  begin
    cboCliente.Properties.ReadOnly := False;
    datAtribuicao.Properties.ReadOnly := False;
    edtEntregador.Properties.ReadOnly := False;
    cboLote.Properties.ReadOnly := False;
    actIniciar.Enabled := True;
    txtLeitura.Properties.ReadOnly := True;
    actCancelar.Enabled := False;
    actExcluirPedido.Enabled := False;
    actExcluirAtribuicao.Enabled := False;
    actImprimir.Enabled := False;
    actGravar.Enabled := False;
  end
  else
  begin
    cboCliente.Properties.ReadOnly := True;
    datAtribuicao.Properties.ReadOnly := True;
    edtEntregador.Properties.ReadOnly := True;
    cboLote.Properties.ReadOnly := True;
    actIniciar.Enabled := False;
    txtLeitura.Properties.ReadOnly := False;
    actCancelar.Enabled := True;
    actExcluirPedido.Enabled := True;
    actExcluirAtribuicao.Enabled := True;
    actImprimir.Enabled := True;
    actGravar.Enabled := True;
  end
end;

procedure Tview_ControleEntregas.ModoRetorno(iModo: Integer);
begin
  if iModo = 0 then
  begin
    datInicio.Properties.ReadOnly := False;
    datFinal.Properties.ReadOnly := False;
    edtEntregadorRetorno.Properties.ReadOnly := False;
    actIniciarRetorno.Enabled := True;
    txtLeituraRetorno.Properties.ReadOnly := True;
    actCancelarRetorno.Enabled := False;
    actImprimirRetorno.Enabled := False;
    actGravarRetorno.Enabled := False;
  end
  else
  begin
    datInicio.Properties.ReadOnly := True;
    datFinal.Properties.ReadOnly := True;
    edtEntregadorRetorno.Properties.ReadOnly := True;
    actIniciarRetorno.Enabled := False;
    txtLeituraRetorno.Properties.ReadOnly := False;
    actCancelarRetorno.Enabled := True;
    actImprimirRetorno.Enabled := True;
    actGravarRetorno.Enabled := True;
  end
end;

procedure Tview_ControleEntregas.PesquisaEntregador;
var
  aParam: array of Variant;
  FDQuery : TFDQuery;
begin
  try
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    entregador := TEntregadoresExpressasControl.Create;
    SetLength(aParam,3);
    aParam[0] := 'APOIO';
    aParam[1] := 'COD_ENTREGADOR as Código, NOM_FANTASIA as Nome, COD_AGENTE as Base';
    aparam[2] := ' WHERE COD_CADASTRO <> 0';
    FDQuery := entregador.Localizar(aParam);
    Finalize(aParam);
    if not Assigned(View_PesquisarPessoas) then
    begin
      View_PesquisarPessoas := TView_PesquisarPessoas.Create(Application);
    end;
    View_PesquisarPessoas.qryPesquisa.CreateFieldsFromDataSet(FDQuery);
    View_PesquisarPessoas.qryPesquisa.LoadFromDataSet(FDQuery);
    if not FDQuery.IsEmpty then View_PesquisarPessoas.qryPesquisa.First;
    FDQuery.Close;
    View_PesquisarPessoas.tvPesquisa.ClearItems;
    View_PesquisarPessoas.tvPesquisa.DataController.CreateAllItems;
    View_PesquisarPessoas.Caption := View_PesquisarPessoas.Caption + ' de Entregadores';
    if View_PesquisarPessoas.ShowModal = mrOk then
    begin
      edtEntregador.EditValue := View_PesquisarPessoas.qryPesquisa.Fields[1].AsInteger;
      txtNomeEntregador.Text := View_PesquisarPessoas.qryPesquisa.Fields[2].AsString;
    end
    else
    begin
      edtEntregador.EditValue := 0;
      txtNomeEntregador.Text := '';
    end;
  finally
    FDQuery.Free;
    entregador.free;
    FreeAndNil(View_PesquisarPessoas);
  end;
end;

procedure Tview_ControleEntregas.PesquisaEntregadorRetorno;
var
  aParam: array of Variant;
  FDQuery : TFDQuery;
begin
  try
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    entregador := TEntregadoresExpressasControl.Create;
    SetLength(aParam,3);
    aParam[0] := 'APOIO';
    aParam[1] := 'COD_ENTREGADOR as Código, NOM_FANTASIA as Nome, COD_AGENTE as Base';
    aparam[2] := ' WHERE COD_CADASTRO <> 0';
    FDQuery := entregador.Localizar(aParam);
    Finalize(aParam);
    if not Assigned(View_PesquisarPessoas) then
    begin
      View_PesquisarPessoas := TView_PesquisarPessoas.Create(Application);
    end;
    View_PesquisarPessoas.qryPesquisa.CreateFieldsFromDataSet(FDQuery);
    View_PesquisarPessoas.qryPesquisa.LoadFromDataSet(FDQuery);
    if not FDQuery.IsEmpty then View_PesquisarPessoas.qryPesquisa.First;
    FDQuery.Close;
    View_PesquisarPessoas.tvPesquisa.ClearItems;
    View_PesquisarPessoas.tvPesquisa.DataController.CreateAllItems;
    View_PesquisarPessoas.Caption := View_PesquisarPessoas.Caption + ' de Entregadores';
    if View_PesquisarPessoas.ShowModal = mrOk then
    begin
      edtEntregadorRetorno.EditValue := View_PesquisarPessoas.qryPesquisa.Fields[1].AsInteger;
      txtNomeEntregadorRetorno.Text := View_PesquisarPessoas.qryPesquisa.Fields[2].AsString;
    end
    else
    begin
      edtEntregadorRetorno.EditValue := 0;
      txtNomeEntregadorRetorno.Text := '';
    end;
  finally
    FDQuery.Free;
    entregador.free;
    FreeAndNil(View_PesquisarPessoas);
  end;
end;

function Tview_ControleEntregas.RetornaNN(sLeitura: String; iCliente: Integer): String;
var
  sNN: String;
  barra : TBarrTFO;
begin
  sNN := '';
  if iCliente = 1 then
  begin
    if TUtils.ENumero(sLeitura) then
    begin
      sNN := FormatFloat('0',StrToFloat(sLeitura));
      sNN := Copy(sNn, 1,sNN.Length - 3);
    end
    else
    begin
      barra := TBarrTFO.Create;
      if barra.RetornaNN(sLeitura) then
      begin
        sNN := barra.NossoNumero;
      end;
      barra.Free;
    end;
  end
  else if icliente = 2 then
  begin
    sNN := Copy(sLeitura,2,11);
  end
  else if icliente = 3 then
  begin
    sNN := Copy(sLeitura,23,12);
  end;
  Result := sNN;
end;

procedure Tview_ControleEntregas.SetupClassAtribuicao;
begin
    atribuicao.Atribuicoes.ID := Data_Sisgef.mtbAtribuicaoid_atribuicao.AsInteger;
    atribuicao.Atribuicoes.Codigo := Data_Sisgef.mtbAtribuicaocod_atribuicao.AsString;
    atribuicao.Atribuicoes.Data := Data_Sisgef.mtbAtribuicaodat_atribuicao.AsDateTime;
    atribuicao.Atribuicoes.Entregador := Data_Sisgef.mtbAtribuicaocod_entregador.AsInteger;
    atribuicao.Atribuicoes.Cliente := Data_Sisgef.mtbAtribuicaocod_cliente.AsInteger;
    atribuicao.Atribuicoes.Embarcador := Data_Sisgef.mtbAtribuicaocod_embarcador.AsInteger;
    atribuicao.Atribuicoes.NomeEmbarcador := Data_Sisgef.mtbAtribuicaonom_embarcador.AsString;
    atribuicao.Atribuicoes.NN := Data_Sisgef.mtbAtribuicaonum_nossonumero.AsString;
    atribuicao.Atribuicoes.CodigoRetorno := Data_Sisgef.mtbAtribuicaocod_retorno.AsString;
    atribuicao.Atribuicoes.Endereco := Data_Sisgef.mtbAtribuicaodes_endereco.AsString;
    atribuicao.Atribuicoes.CEP := Data_Sisgef.mtbAtribuicaonum_cep.AsString;
    atribuicao.Atribuicoes.Bairro := Data_Sisgef.mtbAtribuicaonom_bairro.AsString;
    atribuicao.Atribuicoes.Consumidor := Data_Sisgef.mtbAtribuicaonom_consumidor.AsString;
    atribuicao.Atribuicoes.Volumes := Data_Sisgef.mtbAtribuicaoqtd_volumes.AsInteger;
    atribuicao.Atribuicoes.Telefone := Data_Sisgef.mtbAtribuicaodes_telefone.AsString;
    atribuicao.Atribuicoes.Lote := Data_Sisgef.mtbAtribuicaonum_lote_remessa.AsInteger;
    atribuicao.Atribuicoes.Retorno := Data_Sisgef.mtbAtribuicaodat_retorno.AsDateTime;
    atribuicao.Atribuicoes.FlagRetorno := Data_Sisgef.mtbAtribuicaodom_retorno.AsInteger;
    if atribuicao.Atribuicoes.Acao = tacIncluir then
    begin
      atribuicao.Atribuicoes.LOG := Data_Sisgef.mtbAtribuicaodes_log.Text + #13 +
                                    '> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' atribuido ao entregador ' +
                                    edtEntregador.Text + ' - ' + txtNomeEntregador.Text + ' por ' +
                                    Global.Parametros.pUser_Name;
    end
    else
    begin
      atribuicao.Atribuicoes.LOG := Data_Sisgef.mtbAtribuicaodes_log.Text + #13 +
                                    '> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' prestação de contas do entregador ' +
                                    edtEntregador.Text + ' - ' + txtNomeEntregador.Text + ' retorno registrado por ' +
                                    Global.Parametros.pUser_Name;
    end;
end;

procedure Tview_ControleEntregas.SetupClassEntregas(FDQuery: TFDQuery);
begin
  entregas.Entregas.NN := FDQuery.FieldByName('NUM_NOSSONUMERO').AsString;
  entregas.Entregas.Distribuidor := FDQuery.FieldByName('COD_AGENTE').AsInteger;
  entregas.Entregas.Entregador := FDQuery.FieldByName('COD_ENTREGADOR').AsInteger;
  entregas.Entregas.Cliente := FDQuery.FieldByName('COD_CLIENTE').AsInteger;
  entregas.Entregas.NF := FDQuery.FieldByName('NUM_NF').AsString;
  entregas.Entregas.Consumidor := FDQuery.FieldByName('NOM_CONSUMIDOR').AsString;
  entregas.Entregas.Endereco := FDQuery.FieldByName('DES_ENDERECO').AsString;
  entregas.Entregas.Complemento := FDQuery.FieldByName('DES_COMPLEMENTO').AsString;
  entregas.Entregas.Bairro := FDQuery.FieldByName('DES_BAIRRO').AsString;
  entregas.Entregas.Cidade :=  FDQuery.FieldByName('NOM_CIDADE').AsString;
  entregas.Entregas.Cep := FDQuery.FieldByName('NUM_CEP').AsString;
  entregas.Entregas.Telefone := FDQuery.FieldByName('NUM_TELEFONE').AsString ;
  entregas.Entregas.Expedicao := FDQuery.FieldByName('DAT_EXPEDICAO').AsDateTime;
  entregas.Entregas.Previsao := FDQuery.FieldByName('DAT_PREV_DISTRIBUICAO').AsDateTime;
  entregas.Entregas.Volumes := FDQuery.FieldByName('QTD_VOLUMES').AsInteger;
  entregas.Entregas.Atribuicao := FDQuery.FieldByName('DAT_ATRIBUICAO').AsDateTime;
  entregas.Entregas.Baixa := FDQuery.FieldByName('DAT_BAIXA').AsDateTime;
  entregas.Entregas.Baixado := FDQuery.FieldByName('DOM_BAIXADO').AsString;
  entregas.Entregas.Pagamento := FDQuery.FieldByName('DAT_PAGAMENTO').AsDateTime;
  entregas.Entregas.Pago := FDQuery.FieldByName('DOM_PAGO').AsString;
  entregas.Entregas.Fechado := FDQuery.FieldByName('DOM_FECHADO').AsString;
  entregas.Entregas.Status := FDQuery.FieldByName('COD_STATUS').AsInteger;
  entregas.Entregas.Entrega := FDQuery.FieldByName('DAT_ENTREGA').AsDateTime;
  entregas.Entregas.PesoReal := FDQuery.FieldByName('QTD_PESO_REAL').AsFloat;
  entregas.Entregas.PesoFranquia := FDQuery.FieldByName('QTD_PESO_FRANQUIA').AsFloat;
  entregas.Entregas.VerbaFranquia := FDQuery.FieldByName('VAL_VERBA_FRANQUIA').AsFloat;
  entregas.Entregas.Advalorem := FDQuery.FieldByName('VAL_ADVALOREM').AsFloat;
  entregas.Entregas.PagoFranquia := FDQuery.FieldByName('VAL_PAGO_FRANQUIA').AsFloat;
  entregas.Entregas.VerbaEntregador := FDQuery.FieldByName('VAL_VERBA_ENTREGADOR').AsFloat;
  entregas.Entregas.Extrato := FDQuery.FieldByName('NUM_EXTRATO').AsString;
  entregas.Entregas.Atraso := FDQuery.FieldByName('QTD_DIAS_ATRASO').AsInteger;
  entregas.Entregas.VolumesExtra := FDQuery.FieldByName('QTD_VOLUMES_EXTRA').AsFloat;
  entregas.Entregas.ValorVolumes := FDQuery.FieldByName('VAL_VOLUMES_EXTRA').AsFloat;
  entregas.Entregas.PesoCobrado := FDQuery.FieldByName('QTD_PESO_COBRADO').AsFloat;
  entregas.Entregas.TipoPeso := FDQuery.FieldByName('DES_TIPO_PESO').AsString;
  entregas.Entregas.Recebimento := FDQuery.FieldByName('DAT_RECEBIDO').AsDateTime;
  entregas.Entregas.Recebido := FDQuery.FieldByName('DOM_RECEBIDO').AsString;
  entregas.Entregas.CTRC := FDQuery.FieldByName('NUM_CTRC').AsInteger;
  entregas.Entregas.Manifesto := FDQuery.FieldByName('NUM_MANIFESTO').AsInteger;
  entregas.Entregas.Rastreio := FDQuery.FieldByName('DES_RASTREIO').AsString;
  entregas.Entregas.Lote := FDQuery.FieldByName('NUM_LOTE_REMESSA').AsInteger;
  entregas.Entregas.Retorno := FDQuery.FieldByName('DES_RETORNO').AsString;
  entregas.Entregas.Credito := FDQuery.FieldByName('DAT_CREDITO').AsDateTime;
  entregas.Entregas.Creditado := FDQuery.FieldByName('DOM_CREDITO').AsString;
  entregas.Entregas.Container := FDQuery.FieldByName('NUM_CONTAINER').AsString;
  entregas.Entregas.ValorProduto := FDQuery.FieldByName('VAL_PRODUTO').AsFloat;
  entregas.Entregas.Altura := FDQuery.FieldByName('QTD_ALTURA').AsInteger;
  entregas.Entregas.Largura := FDQuery.FieldByName('QTD_LARGURA').AsInteger;
  entregas.Entregas.Comprimento := FDQuery.FieldByName('QTD_COMPRIMENTO').AsInteger;
  entregas.Entregas.CodigoFeedback := FDQuery.FieldByName('COD_FEEDBACK').AsInteger;
  entregas.Entregas.DataFeedback := FDQuery.FieldByName('DAT_FEEDBACK').AsDateTime;
  entregas.Entregas.Conferido := FDQuery.FieldByName('DOM_CONFERIDO').AsInteger;
  entregas.Entregas.Pedido := FDQuery.FieldByName('NUM_PEDIDO').AsString;
  entregas.Entregas.CodCliente := FDQuery.FieldByName('COD_CLIENTE_EMPRESA').AsInteger;
end;

procedure Tview_ControleEntregas.SetupGrade(sNN: String; FDQuery: TFDQuery);
var
  FDCliente: TFDQuery;
  pParam: Array of variant;
begin
  try
    if not Data_Sisgef.mtbAtribuicao.Active then Data_Sisgef.mtbAtribuicao.Active := True;
    Data_Sisgef.mtbAtribuicao.Insert;
    Data_Sisgef.mtbAtribuicaoid_atribuicao.AsInteger := 0;
    Data_Sisgef.mtbAtribuicaocod_atribuicao.AsString := sCodigoAtribuicao;
    Data_Sisgef.mtbAtribuicaodat_atribuicao.AsDateTime := datAtribuicao.Date;
    Data_Sisgef.mtbAtribuicaocod_entregador.AsInteger := edtEntregador.EditingValue;
    Data_Sisgef.mtbAtribuicaonum_nossonumero.AsString := sNN;
    Data_Sisgef.mtbAtribuicaocod_retorno.AsString := Copy(FDquery.FieldByName('DES_RETORNO').AsString,1,15);
    Data_Sisgef.mtbAtribuicaonum_lote_remessa.AsInteger := cboLote.ItemIndex;
    Data_Sisgef.mtbAtribuicaodat_retorno.AsDateTime := 0;
    Data_Sisgef.mtbAtribuicaodom_retorno.AsInteger := 0;
    Data_Sisgef.mtbAtribuicaodes_log.Text := '> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' atribuido ao entregador ' +
                                             edtEntregador.Text + ' - ' + txtNomeEntregador.Text + ' por ' +
                                             Global.Parametros.pUser_Name;
    Data_Sisgef.mtbAtribuicaocod_cliente.AsInteger := cboCliente.ItemIndex;
    Data_Sisgef.mtbAtribuicaocod_embarcador.AsInteger := FDQuery.FieldByName('COD_CLIENTE').AsInteger;
    clientes := TClientesControl.Create;
    SetLength(pParam, 2);
    pParam[0] := 'CODIGO';
    pParam[1] := FDQuery.FieldByName('COD_CLIENTE').AsInteger;
    FDCliente := clientes.Localizar(pParam);
    Finalize(pParam);
    if not FDCliente.IsEmpty then
    begin
      Data_Sisgef.mtbAtribuicaonom_embarcador.AsString := FDCliente.FieldByName('NOM_CLIENTE').AsString;
   end;
    FDCliente.Close;
    Data_Sisgef.mtbAtribuicaodes_endereco.AsString := Trim(FDquery.FieldByName('DES_ENDERECO').AsString) + ' ' +
                                                      Trim(FDquery.FieldByName('DES_COMPLEMENTO').AsString);
    Data_Sisgef.mtbAtribuicaonum_cep.AsString := FDquery.FieldByName('NUM_CEP').AsString;
    Data_Sisgef.mtbAtribuicaonom_bairro.AsString := FDquery.FieldByName('DES_BAIRRO').AsString;
    Data_Sisgef.mtbAtribuicaonom_consumidor.AsString := FDquery.FieldByName('NOM_CONSUMIDOR').AsString;
    Data_Sisgef.mtbAtribuicaoqtd_volumes.AsInteger := FDquery.FieldByName('QTD_VOLUMES').AsInteger;
    Data_Sisgef.mtbAtribuicaodes_telefone.AsString := FDquery.FieldByName('NUM_TELEFONE').AsString;
    Data_Sisgef.mtbAtribuicao.Post;
  finally
    FDCliente.Free;
    clientes.Free;
  end;
end;

procedure Tview_ControleEntregas.tvAtribuicaoNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer;
  var ADone: Boolean);
begin
case AButtonIndex of
    16: ExportaAtribuicao;
  end;
end;

procedure Tview_ControleEntregas.tvRetornoNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
case AButtonIndex of
    16: ExportaPendencia;
  end;
end;

procedure Tview_ControleEntregas.txtLeituraPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  if DisplayValue <> '' then LocalizaPedido;
  DisplayValue := '';
end;

procedure Tview_ControleEntregas.txtLeituraRetornoPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  if DisplayValue <> '' then LocalizaRetorno;
  DisplayValue := '';
end;

function Tview_ControleEntregas.ValidaInicioAtribuicao: Boolean;
begin
  Result := False;
  if cboCliente.ItemIndex = 0 then
  begin
    Application.MessageBox('Selecione o cliente!', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if (datAtribuicao.Text = '') or (datAtribuicao.Date = 0) then
  begin
    Application.MessageBox('Informe a data de atribuição!', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if StrToIntDef(edtEntregador.Text,0) = 0 then
  begin
    Application.MessageBox('Informe o entregador!', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if txtNomeEntregador.Text = '' then
  begin
    Application.MessageBox('Entregador inválido!', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  Result:= True;
end;

function Tview_ControleEntregas.ValidaInicioRetorno: Boolean;
begin
  Result := False;
  if cboCliente.ItemIndex = 0 then
  begin
    Application.MessageBox('Selecione o cliente!', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if StrToIntDef(edtEntregadorRetorno.Text,0) = 0 then
  begin
    Application.MessageBox('Informe o entregador!', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if txtNomeEntregadorRetorno.Text = '' then
  begin
    Application.MessageBox('Entregador inválido!', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if (datInicio.Text = '') or (datInicio.Date = 0) then
  begin
    Application.MessageBox('Informe a data de início do período de atribuição!', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if (datFinal.Text = '') or (datFinal.Date = 0) then
  begin
    Application.MessageBox('Informe a data final do período de atribuição!', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if datInicio.Date > datFinal.Date then
  begin
    Application.MessageBox('Data final do período de atribuição menor que a data inicial!', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  Result:= True;
end;

end.
