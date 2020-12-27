unit View.RecepcaoPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxLabel, cxGroupBox, cxRadioGroup, Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, System.Actions, Vcl.ActnList, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Common.ENum,
  Control.Clientes, Control.Entregas, Control.Sistema, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDBLookupComboBox, FireDAC.Comp.Client, cxCheckBox, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  Tview_RecepcaoPedidos = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxLabel1: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    crbRecepcao: TcxRadioGroup;
    dxLayoutItem2: TdxLayoutItem;
    cboCliente: TcxComboBox;
    dxLayoutItem3: TdxLayoutItem;
    aclRecepcao: TActionList;
    actFechar: TAction;
    actIniciar: TAction;
    cxButton1: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    txtLeitura: TcxTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    tvRecepcao: TcxGridDBTableView;
    lvRecepcao: TcxGridLevel;
    grdRecepcao: TcxGrid;
    dxLayoutItem6: TdxLayoutItem;
    dsRecepcao: TDataSource;
    tvRecepcaonum_nossonumero: TcxGridDBColumn;
    tvRecepcaocod_cliente: TcxGridDBColumn;
    tvRecepcaonum_nf: TcxGridDBColumn;
    tvRecepcaonom_consumidor: TcxGridDBColumn;
    tvRecepcaodat_expedicao: TcxGridDBColumn;
    tvRecepcaoqtd_volumes: TcxGridDBColumn;
    tvRecepcaoqtd_peso_real: TcxGridDBColumn;
    tvRecepcaodat_recebido: TcxGridDBColumn;
    tvRecepcaonum_container: TcxGridDBColumn;
    tvRecepcaonum_pedido: TcxGridDBColumn;
    dsEmbarcadores: TDataSource;
    cxButton2: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    actGravar: TAction;
    cxButton3: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    actCancelar: TAction;
    cxButton4: TcxButton;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    datInicio: TcxDateEdit;
    dxLayoutItem10: TdxLayoutItem;
    datFinal: TcxDateEdit;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cboSituacao: TcxComboBox;
    dxLayoutItem12: TdxLayoutItem;
    actPesquisar: TAction;
    cxButton5: TcxButton;
    dxLayoutItem13: TdxLayoutItem;
    SaveDialog: TSaveDialog;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    lblResultado: TcxLabel;
    dxLayoutItem14: TdxLayoutItem;
    procedure txtLeituraPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure crbRecepcaoPropertiesChange(Sender: TObject);
    procedure cboClientePropertiesChange(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actIniciarExecute(Sender: TObject);
    procedure dxLayoutGroup2TabChanged(Sender: TObject);
    procedure tvRecepcaoNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actPesquisarExecute(Sender: TObject);
  private
    { Private declarations }
    procedure PopulaEmbarcadores(iCliente: Integer);
    procedure LocalizaEntrega(sChave: String; iCliente, iOpcao: Integer);
    procedure SetupEntregas(FDQuery: TFDquery);
    procedure SetupGrade(sNN: String; FDQuery: TFDQuery);
    procedure LocalizaContainer(sChave: String; iCliente: Integer);
    procedure PesquisaEntregas(dtInicio: TDate; dtFinal: TDate; iSituacao: Integer; iCliente: Integer);
    procedure Iniciar;
    procedure Cancelar;
    procedure Gravar;
    procedure Exportar;
    procedure LabelResultado(iTipo: Integer; sTexto: String);
    procedure Aviso(sTexto: String);
    function RetornaNN(sLeitura: String; icliente: Integer): String;
  public
    { Public declarations }
  end;

var
  view_RecepcaoPedidos: Tview_RecepcaoPedidos;
  clientes : TClientesControl;
  entregas : TEntregasControl;

implementation

{$R *.dfm}

uses Data.SisGeF, Common.Utils, TFO.Barras, Global.Parametros, View.Aviso;

{ Tview_RecepcaoPedidos }


procedure Tview_RecepcaoPedidos.actCancelarExecute(Sender: TObject);
begin
  if Application.MessageBox('Confirma cancelar a operação?', 'Cancelar', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;
  Cancelar;
end;

procedure Tview_RecepcaoPedidos.actFecharExecute(Sender: TObject);
begin
  Perform(WM_CLOSE, 0, 0);
end;

procedure Tview_RecepcaoPedidos.actGravarExecute(Sender: TObject);
begin
  Gravar;
end;

procedure Tview_RecepcaoPedidos.actIniciarExecute(Sender: TObject);
begin
  Iniciar;
end;

procedure Tview_RecepcaoPedidos.actPesquisarExecute(Sender: TObject);
begin
  PesquisaEntregas(datInicio.Date, datFinal.Date, cboSituacao.ItemIndex,cboCliente.ItemIndex);
end;

procedure Tview_RecepcaoPedidos.Cancelar;
begin
  if Data_Sisgef.mtbRecepcaoPedidos.Active then Data_Sisgef.mtbRecepcaoPedidos.Close;
  Data_Sisgef.mtbRecepcaoPedidos.Open;
  cboCliente.Properties.ReadOnly := False;
  cboCliente.ItemIndex := 0;
  txtLeitura.Properties.ReadOnly := True;
  actGravar.Enabled := False;
  actCancelar.Enabled := False;
  crbRecepcao.Properties.ReadOnly := False;
  crbRecepcao.ItemIndex := 0;
end;

procedure Tview_RecepcaoPedidos.cboClientePropertiesChange(Sender: TObject);
begin
  if Data_Sisgef.mtbRecepcaoPedidos.Active then Data_Sisgef.mtbRecepcaoPedidos.Close;
  Data_Sisgef.mtbRecepcaoPedidos.Open;
end;

procedure Tview_RecepcaoPedidos.crbRecepcaoPropertiesChange(Sender: TObject);
begin
  if Data_Sisgef.mtbRecepcaoPedidos.Active then Data_Sisgef.mtbRecepcaoPedidos.Close;
  Data_Sisgef.mtbRecepcaoPedidos.Open;
end;

procedure Tview_RecepcaoPedidos.dxLayoutGroup2TabChanged(Sender: TObject);
begin
  Cancelar;
end;

procedure Tview_RecepcaoPedidos.Exportar;
begin
  SaveDialog.Filter := '';
  SaveDialog.Filter := 'Excel (*.xls) |*.xls|XML (*.xml) |*.xml|Arquivo Texto (*.txt) |*.txt|Página Web (*.html)|*.html';
  SaveDialog.Title := 'Exportar Dados';
  SaveDialog.DefaultExt := 'xls';
  if SaveDialog.Execute then
  begin
    TUtils.ExportarDados(grdRecepcao, SaveDialog.FileName);
  end;
end;

procedure Tview_RecepcaoPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Data_Sisgef.mtbRecepcaoPedidos.Active then Data_Sisgef.mtbRecepcaoPedidos.Close;
  Action := caFree;
  view_RecepcaoPedidos := nil;
end;

procedure Tview_RecepcaoPedidos.FormKeyPress(Sender: TObject; var Key: Char);
begin
If Key = #13 then
  begin
    Key := #0;
    if grdRecepcao.IsFocused then Exit;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;
end;

procedure Tview_RecepcaoPedidos.Gravar;
var
  FDQuery: TFDQuery;
  aParam: array of variant;
begin
  try
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    entregas := TEntregasControl.Create;
    if Application.MessageBox('Confirma gravar a recepção?', 'Gravar', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;
    if not Data_Sisgef.mtbRecepcaoPedidos.IsEmpty then Data_Sisgef.mtbRecepcaoPedidos.First;
    while not Data_Sisgef.mtbRecepcaoPedidos.eof do
    begin
      SetLength(aParam,2);
      aParam[0] := 'NN';
      aParam[1] := Data_Sisgef.mtbRecepcaoPedidosnum_nossonumero.AsString;
      FDQuery := entregas.Localizar(aParam);
      Finalize(aParam);
      if not FDQuery.IsEmpty then
      begin
        SetupEntregas(FDQuery);
        entregas.Entregas.Recebimento := Data_Sisgef.mtbRecepcaoPedidosdat_recebido.AsDateTime;
        entregas.Entregas.Recebido := 'S';
        entregas.Entregas.Rastreio := entregas.Entregas.Rastreio + #13 +
                                      '> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' pedido recebido por ' +
                                      Global.Parametros.pUser_Name;
        entregas.Entregas.Acao := tacAlterar;
        if not entregas.Gravar then
        begin
          Application.MessageBox(PChar('Erro ao gravar o pedido NN ' + entregas.Entregas.NN + ' !'), 'Erro', MB_OK + MB_ICONERROR);
        end;
      end;
      Data_Sisgef.mtbRecepcaoPedidos.Next;
    end;
    Application.MessageBox('Recepção gravada com sucesso!', 'Atenção', MB_OK + MB_ICONINFORMATION);
    Cancelar;
  finally
    FDQuery.Free;
    entregas.Free;
  end;
end;

procedure Tview_RecepcaoPedidos.Iniciar;
begin
  if cboCliente.ItemIndex = 0 then
  begin
    Application.MessageBox('Selecione o cliente.', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if crbRecepcao.ItemIndex = -1 then
  begin
    Application.MessageBox('Selecione o tipo de recepção.', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  PopulaEmbarcadores(cboCliente.ItemIndex);
  cboCliente.Properties.ReadOnly := True;
  crbRecepcao.Properties.ReadOnly := True;
  txtLeitura.Properties.ReadOnly := False;
  actGravar.Enabled := True;
  actCancelar.Enabled := True;
  txtLeitura.SetFocus;
end;

procedure Tview_RecepcaoPedidos.LocalizaContainer(sChave: String; iCliente: Integer);
var
  FDQuery : TFDQuery;
  aParam : Array of variant;
  barra : TBarrTFO;
  bFlagGravar: Boolean;
begin
  try
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    entregas := TEntregasControl.Create;
    SetLength(aParam,2);
    aParam[0] := 'CONTAINER';
    aParam[1] := sChave;
    FDQuery := entregas.Localizar(aParam);
    Finalize(aParam);
    if FDQuery.IsEmpty then
    begin
      Application.MessageBox(PChar('Container ' + sChave + ' não encontrado no banco de dados!'), 'Atenção', MB_OK + MB_ICONHAND);
      Exit;
    end;
    FDQuery.First;
    while not FDQuery.Eof do
    begin
      bFlagGravar := True;
      if FDQuery.FieldByName('DOM_RECEBIDO').AsString <> 'N' then
      begin
        bFlagGravar := False;
      end;
      if not Data_Sisgef.mtbRecepcaoPedidos.IsEmpty then Data_Sisgef.mtbRecepcaoPedidos.First;
      while not Data_Sisgef.mtbRecepcaoPedidos.eof do
      begin
        if Data_Sisgef.mtbRecepcaoPedidosnum_nossonumero.AsString = FDQuery.FieldByName('num_nossonumero').AsString then
          bFlagGravar := False;
        Data_Sisgef.mtbRecepcaoPedidos.Next;
      end;
      if bFlagGravar then
      begin
        SetupGrade(FDQuery.FieldByName('num_nossonumero').AsString,FDQuery);
      end;
      FDQuery.Next;
    end;
  finally
    txtLeitura.SetFocus;
    FDQuery.Free;
    entregas.Free;
  end;
end;

procedure Tview_RecepcaoPedidos.LocalizaEntrega(sChave: String; iCliente, iOpcao: Integer);
var
  FDQuery : TFDQuery;
  aParam : Array of variant;
  sNN: String;
  barra : TBarrTFO;
  bFlagGravar: Boolean;
  dPesoMax: Double;
begin
  try
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    entregas := TEntregasControl.Create;
    sNN := '';
    if iCliente = 4 then
    begin
      dPesoMax := 30;
    end
    else
    begin
      dPesoMax := 25;
    end;
    if cboCliente.ItemIndex <> 3 then
    begin
      sNN := RetornaNN(sChave, iCliente);
      SetLength(aParam,2);
      aParam[0] := 'NN';
      aParam[1] := sNN;
    end
    else
    begin
      sNN := Trim(sChave);
      SetLength(aParam,2);
      aParam[0] := 'FILTRO';
      aParam[1] := 'where des_retorno like ' + QuotedStr(sNN+'%');
    end;
    FDQuery := entregas.Localizar(aParam);
    Finalize(aParam);
    if FDQuery.IsEmpty then
    begin
      LabelResultado(2, 'Pedido ' + sNN + ' não encontrado!');
      Aviso('Pedido ' + sNN + ' não encontrado!');
      LabelResultado(0,'');
     Exit;
    end;
    sNN := FDQuery.FieldByName('num_nossonumero').AsString;
    if sNN.IsEmpty then
    begin
      LabelResultado(2, 'Pedido ' + sNN + ' inválido!');
      Aviso('Pedido ' + sNN + ' inválido!');
      LabelResultado(0,'');
      Exit;
    end;
    bFlagGravar := True;
    if not Data_Sisgef.mtbRecepcaoPedidos.IsEmpty then Data_Sisgef.mtbRecepcaoPedidos.First;
    while not Data_Sisgef.mtbRecepcaoPedidos.eof do
    begin
      if Data_Sisgef.mtbRecepcaoPedidosnum_nossonumero.AsString = sNN then bFlagGravar := False;
      Data_Sisgef.mtbRecepcaoPedidos.Next;
    end;
    if not bFlagGravar then
    begin
      LabelResultado(2, 'Pedido ' + sNN + ' já consta na lista de recebimento!');
      Aviso('Pedido ' + sNN + ' já foi recebido anteriormente!');
      LabelResultado(0,'');
      Exit;
    end;
    if FDQuery.FieldByName('DOM_RECEBIDO').AsString = 'S' then
    begin
      LabelResultado(2, 'Pedido ' + sNN + ' já foi recebido anteriormente!');
      Aviso('Pedido ' + sNN + ' já foi recebido anteriormente!');
      LabelResultado(0,'');
      Exit;
    end;
    if iOpcao = 2 then
    begin
      if FDQuery.FieldByName('QTD_PESO_COBRADO').AsFloat > dPesoMax then
      begin
        LabelResultado(2, 'Categoria do Pedido ' + sNN + ' é PESADO!');
        Aviso('Categoria do Pedido ' + sNN + ' é PESADO!');
        LabelResultado(0,'');
        Exit;
      end;
    end
    else if iOpcao = 3 then
    begin
      if FDQuery.FieldByName('QTD_PESO_COBRADO').AsFloat <= dPesoMax then
      begin
        LabelResultado(2, 'Categoria do Pedido ' + sNN + ' é LEVE!');
        Aviso('Categoria do Pedido ' + sNN + ' é LEVE!');
        LabelResultado(0,'');
        Exit;
      end;
    end;
    SetupGrade(sNN,FDQuery);
  finally
    txtLeitura.SetFocus;
    FDQuery.Free;
    entregas.Free;
  end;
end;

procedure Tview_RecepcaoPedidos.PesquisaEntregas(dtInicio, dtFinal: TDate; iSituacao, iCliente: Integer);
var
  FDQuery: TFDQuery;
  aParam: Array of variant;
  sQuery: String;
begin
  try
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    entregas := TEntregasControl.Create;
    if Data_Sisgef.mtbRecepcaoPedidos.Active then Data_Sisgef.mtbRecepcaoPedidos.Close;
    Data_Sisgef.mtbRecepcaoPedidos.Open;
    SetLength(aParam,2);
    aParam[0] := 'FILTRO';
    sQuery := '';
    if iSituacao = 1 then
    begin
      sQuery := 'where dat_recebido between ' + QuotedStr(FormatDateTime('yyyy-mm-dd', dtInicio)) + ' and ' +
                QuotedStr(FormatDateTime('yyyy-mm-dd', dtFinal))  + ' and cod_cliente_empresa = ' + iCliente.ToString +
                ' and dom_recebido = ' + QuotedStr('S');
    end
    else if iSituacao = 2 then
    begin
      sQuery := 'where dat_expedicao between ' + QuotedStr(FormatDateTime('yyyy-mm-dd', dtInicio)) + ' and ' +
                QuotedStr(FormatDateTime('yyyy-mm-dd', dtFinal))  + ' and cod_cliente_empresa = ' + iCliente.ToString +
                ' and dom_recebido <> ' + QuotedStr('S');
    end;
    aParam[1] := sQuery;
    FDQuery := entregas.Localizar(aParam);
    Finalize(aParam);
    if not FDQuery.IsEmpty then FDQuery.First;
    while not FDQuery.Eof do
    begin
      SetupGrade(FDQuery.FieldByName('num_nossonumero').AsString, FDQuery);
      FDQuery.Next;
    end;
  finally
    FDQuery.Free;
    entregas.Free;
  end;
end;

procedure Tview_RecepcaoPedidos.PopulaEmbarcadores(iCliente: Integer);
var
  FDQuery : TFDQuery;
  aParam : Array of variant;
begin
  try
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    clientes := TClientesControl.Create;
    if Data_Sisgef.mtbEmbarcadores.Active then Data_Sisgef.mtbEmbarcadores.Close;
    SetLength(aParam,2);
    aParam[0] := 'CLIENTE';
    aParam[1] := iCliente;
    FDQuery := clientes.Localizar(aParam);
    if not FDQuery.IsEmpty then
    begin
      Data_Sisgef.mtbEmbarcadores.Data := FDQuery.Data;
    end;
    FDQuery.Close;
  finally
    clientes.Free;
    FDquery.Free;
  end;end;

function Tview_RecepcaoPedidos.RetornaNN(sLeitura: String; icliente: Integer): String;
var
  sNN: String;
  barra : TBarrTFO;
begin
  sNN := '';
  if iCliente = 1 then
  begin
    if TUtils.ENumero(sLeitura) then
    begin
      sNN := sLeitura;
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
  end
  else
  begin
    sNn := sLeitura;
  end;
  Result := sNN;
end;

procedure Tview_RecepcaoPedidos.SetupEntregas(FDQuery: TFDquery);
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


procedure Tview_RecepcaoPedidos.SetupGrade(sNN: String; FDQuery: TFDQuery);
var
  pParam: Array of variant;
begin
  if not Data_Sisgef.mtbRecepcaoPedidos.Active then Data_Sisgef.mtbRecepcaoPedidos.Active := True;
  Data_Sisgef.mtbRecepcaoPedidos.Insert;
  Data_Sisgef.mtbRecepcaoPedidosnum_nossonumero.AsString := FDQuery.FieldByName('NUM_NOSSONUMERO').AsString;
  Data_Sisgef.mtbRecepcaoPedidoscod_cliente.AsInteger := FDQuery.FieldByName('COD_CLIENTE').AsInteger;
  Data_Sisgef.mtbRecepcaoPedidosnum_nf.AsString := FDQuery.FieldByName('NUM_NF').AsString;
  Data_Sisgef.mtbRecepcaoPedidosnom_consumidor.AsString := FDquery.FieldByName('NOM_CONSUMIDOR').AsString;
  Data_Sisgef.mtbRecepcaoPedidosdat_expedicao.AsDateTime := FDquery.FieldByName('DAT_EXPEDICAO').AsDateTime;
  Data_Sisgef.mtbRecepcaoPedidosqtd_volumes.AsInteger := FDquery.FieldByName('QTD_VOLUMES').AsInteger;
  Data_Sisgef.mtbRecepcaoPedidosqtd_peso_real.AsFloat := FDquery.FieldByName('QTD_PESO_REAL').AsFloat;
  Data_Sisgef.mtbRecepcaoPedidosnum_container.AsString := FDQuery.FieldByName('NUM_CONTAINER').AsString;
  Data_Sisgef.mtbRecepcaoPedidosnum_pedido.AsString := FDQuery.FieldByName('NUM_PEDIDO').AsString;
  Data_Sisgef.mtbRecepcaoPedidosdat_recebido.AsDateTime := Now;
  Data_Sisgef.mtbRecepcaoPedidos.Post;
end;

procedure Tview_RecepcaoPedidos.tvRecepcaoNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  case AButtonIndex of
    16: Exportar;
  end;
end;

procedure Tview_RecepcaoPedidos.txtLeituraPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  if crbRecepcao.ItemIndex = 1 then
  begin
    if DisplayValue <> '' then LocalizaContainer(DisplayValue,cboCliente.ItemIndex);
    DisplayValue := '';
  end
  else
  begin
    if DisplayValue <> '' then LocalizaEntrega(DisplayValue,cboCliente.ItemIndex, crbRecepcao.ItemIndex);
    DisplayValue := '';
  end;
end;

procedure Tview_RecepcaoPedidos.LabelResultado(iTipo: Integer; sTexto: String);
begin
  lblResultado.Caption := sTexto;
  if iTipo = 1 then
  begin
    lblResultado.Style.Color := clWindow;
    lblResultado.Style.Font.Color := clLime;
  end
  else if iTipo = 2 then
  begin
    lblResultado.Style.Color := clWindow;
    lblResultado.Style.Font.Color := clRed;
    TUtils.TocaErro;
  end
  else
  begin
    lblResultado.Style.Color := clWindow;
    lblResultado.Style.Font.Color := clWindowText;
    Tutils.CancelaTocaErro;
  end;
  lblResultado.Refresh;
end;

procedure Tview_RecepcaoPedidos.Aviso(sTexto: String);
var
  iModal: Integer;
begin
  if not Assigned(view_Aviso) then begin
    view_Aviso := Tview_Aviso.Create(Application);
  end;
  view_Aviso.memAviso.Text := sTexto;
  iModal := view_Aviso.ShowModal;
  FreeAndNil(view_Aviso);
end;


end.
