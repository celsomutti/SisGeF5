unit View.ExpedicaoExpressas;

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
  dxLayoutcxEditAdapters, cxLabel, System.Actions, Vcl.ActnList, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, FireDAC.Comp.Client, Control.Entregas, Control.ExpedicaoExpressas, TFO.Barras, cxCheckBox,
  Control.Clientes, frxClass, frxDBSet, cxCurrencyEdit, cxImageComboBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.BatchMove, FireDAC.Comp.BatchMove.DataSet, FireDAC.Comp.BatchMove.Text, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Control.RoteirosExpressas, Control.EntregadoresExpressas, Control.ControleAWB, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  Tview_ExpedicaoExpressas = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxLabel1: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    aclExpedicao: TActionList;
    actFechar: TAction;
    cxButton1: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    cboUnitizador: TcxComboBox;
    dxLayoutItem3: TdxLayoutItem;
    datExpedicao: TcxDateEdit;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    mskCCEP: TcxMaskEdit;
    dxLayoutItem5: TdxLayoutItem;
    actIniciar: TAction;
    cxButton2: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    tvExpedicao: TcxGridDBTableView;
    lvExpedicao: TcxGridLevel;
    grdExpedicao: TcxGrid;
    dxLayoutItem7: TdxLayoutItem;
    actGravar: TAction;
    actCancelar: TAction;
    actRotulo: TAction;
    cxButton3: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxButton4: TcxButton;
    dxLayoutItem9: TdxLayoutItem;
    cxButton5: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    dsExpedicao: TDataSource;
    tvExpedicaoid_expedicao: TcxGridDBColumn;
    tvExpedicaodat_expedicao: TcxGridDBColumn;
    tvExpedicaocod_ccep: TcxGridDBColumn;
    tvExpedicaocod_base: TcxGridDBColumn;
    tvExpedicaonum_container: TcxGridDBColumn;
    tvExpedicaocod_unitizador: TcxGridDBColumn;
    tvExpedicaonum_nossonumero: TcxGridDBColumn;
    tvExpedicaocod_embarcador: TcxGridDBColumn;
    tvExpedicaoqtd_volumes: TcxGridDBColumn;
    tvExpedicaoqtd_peso: TcxGridDBColumn;
    tvExpedicaodes_executor: TcxGridDBColumn;
    tvExpedicaodat_execucao: TcxGridDBColumn;
    tvExpedicaodes_conferente: TcxGridDBColumn;
    tvExpedicaodat_conferencia: TcxGridDBColumn;
    tvExpedicaodes_recebedor: TcxGridDBColumn;
    tvExpedicaodat_recebimento: TcxGridDBColumn;
    txtLeitura: TcxTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    cboCliente: TcxComboBox;
    dxLayoutItem12: TdxLayoutItem;
    chkDANFE: TcxCheckBox;
    dxLayoutItem13: TdxLayoutItem;
    tvExpedicaodes_embarcador: TcxGridDBColumn;
    frxRotulo: TfrxReport;
    frxDBExpedicao: TfrxDBDataset;
    datExpedicaoPesquisa: TcxDateEdit;
    dxLayoutItem14: TdxLayoutItem;
    cboContainers: TcxComboBox;
    dxLayoutItem15: TdxLayoutItem;
    actPesquisarExpedicao: TAction;
    cxButton6: TcxButton;
    dxLayoutItem16: TdxLayoutItem;
    SaveDialog: TSaveDialog;
    cboTipoRelatorio: TcxComboBox;
    dxLayoutItem17: TdxLayoutItem;
    frxRomaneio: TfrxReport;
    tvExpedicaonum_romaneio: TcxGridDBColumn;
    tvExpedicaodom_ccep: TcxGridDBColumn;
    lblResultado: TcxLabel;
    dxLayoutItem18: TdxLayoutItem;
    frxDBDIRECT: TfrxDBDataset;
    frxDIRECT: TfrxReport;
    lcbRoteiros: TcxLookupComboBox;
    dxLayoutItem20: TdxLayoutItem;
    mtbRoteiros: TFDMemTable;
    mtbRoteirosdes_roteiro: TStringField;
    dsRoteiros: TDataSource;
    mtbEntregadores: TFDMemTable;
    mtbEntregadorescod_entregador: TIntegerField;
    mtbEntregadoresnom_fantasia: TStringField;
    lcbMotorista: TcxLookupComboBox;
    dxLayoutItem19: TdxLayoutItem;
    dsEntregadores: TDataSource;
    procedure actFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cboClientePropertiesChange(Sender: TObject);
    procedure txtLeituraPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actCancelarExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure dxLayoutGroup1TabChanging(Sender: TObject; ANewTabIndex: Integer; var Allow: Boolean);
    procedure actRotuloExecute(Sender: TObject);
    procedure tvExpedicaoNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure actIniciarExecute(Sender: TObject);
    procedure actPesquisarExpedicaoExecute(Sender: TObject);
    procedure cboTipoRelatorioPropertiesChange(Sender: TObject);
    procedure cboContainersPropertiesChange(Sender: TObject);
    procedure datExpedicaoPesquisaPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure LocalizaPedido(sNossoNumero: String; iCliente: Integer; bDANFE: Boolean);
    function RetornaNN(sLeitura: String; iCliente: Integer): String;
    procedure SetupGrade(FDQuery: TFDQuery);
    procedure Iniciar;
    procedure GravarExpedicao;
    procedure SetupClassEntregas(FDQuery: TFDQuery);
    procedure CancelaProcessoExpedicao;
    function PopulaExpedicao(sData: String; sContainer: String; sTipo: String): Boolean;
    procedure SetupGradeBase(FDQuery: TFDQuery);
    procedure ImprimirRotulo(sData: String; iContainer: Integer);
    procedure ListaContainers(sData: String);
    procedure PesquisaExpedicao;
    procedure ExportarExpedicao;
    function PopulaRotulo(sData: String; iContainer: Integer): boolean;
    procedure SetupRotulo(FDQuery: TFDQuery);
    procedure ListaCCEP(sData: String);
    procedure SetupRomaneio(FDQuery: TFDQuery);
    function PopulaRomaneio(sData: String; sCCEP: String): boolean;
    procedure ImprimirRomaneio(sData: String; sCCEP: String);
    procedure LabelResultado(iTipo: Integer; sTexto: String);
    procedure Aviso(sTexto: String);
    function ConferenciaVolumes(sNN: String; iVolumes: Integer; iCliente: Integer): Boolean;
    procedure PopulaConferencia(sNN: String; iVolumes: Integer);
    procedure GravaRemessa(vvalue: Variant; smotorista: String; sRoteiro: String);
    procedure ImprimirExpedicaoDIRECT(smotorista: String; sroteiro: String);
    procedure ListRoteiros;
    procedure ListEntregadores;
    procedure ListaRoteiro(sData: String);
  public
    { Public declarations }
  end;

var
  view_ExpedicaoExpressas: Tview_ExpedicaoExpressas;
  entregas : TEntregasControl;
  expedicao : TExpedicaoExpressasControl;
  clientes : TClientesControl;


implementation

{$R *.dfm}

uses Data.SisGeF, Control.Sistema, Common.Utils, Common.ENum, Global.Parametros, View.Impressao, View.Aviso,
  View.ConferenciaVolumesPedido;

procedure Tview_ExpedicaoExpressas.actCancelarExecute(Sender: TObject);
begin
  if Application.MessageBox('Confirma cancelar o processo?', 'Cancelar', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;
  CancelaProcessoExpedicao;
end;

procedure Tview_ExpedicaoExpressas.actFecharExecute(Sender: TObject);
begin
  Perform(WM_CLOSE, 0, 0);
end;

procedure Tview_ExpedicaoExpressas.actGravarExecute(Sender: TObject);
begin
  if Application.MessageBox('Confirma gravar a expedição?', 'Gravar', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;
  GravarExpedicao;
end;

procedure Tview_ExpedicaoExpressas.actIniciarExecute(Sender: TObject);
begin
  Iniciar;
end;

procedure Tview_ExpedicaoExpressas.actPesquisarExpedicaoExecute(Sender: TObject);
begin
  PesquisaExpedicao;
end;

procedure Tview_ExpedicaoExpressas.actRotuloExecute(Sender: TObject);
var
  sContainer: String;
  sCombo: String;
  iPos: Integer;
  sCCEP: String;
  sMotorista: String;
  sRoteiro: String;
  FEntregador: TEntregadoresExpressasControl;
  aParam: Array of variant;
  fdEntregador: TFDQuery;
begin
  if Data_Sisgef.mtbExpedicao.IsEmpty then Exit;
  if cboCliente.ItemIndex <> 4 then
  begin
    if cboTipoRelatorio.ItemIndex = 1 then
    begin
      if cboContainers.ItemIndex = 0 then
      begin
        sContainer := '0';
      end
      else
      begin
        sCombo := cboContainers.Text;
        iPos := Pos('-',sCombo);
        sContainer := Copy(sCombo, 0, iPos -1);
      end;
      ImprimirRotulo(datExpedicaoPesquisa.Text ,StrToIntDef(sContainer,0));
    end
    else if cboTipoRelatorio.ItemIndex = 2 then
    begin
      if cboContainers.ItemIndex = 0 then
      begin
        sCCEP := '';
      end
      else
      begin
        sCCEP := cboContainers.Text;
      end;
      ImprimirRomaneio(datExpedicaoPesquisa.Text ,sCCEP);
    end;
  end
  else
  begin
    FEntregador := TEntregadoresExpressasControl.Create;
    SetLength(aParam,2);
    aParam[0] := 'ENTREGADOR';
    aParam[1] := Data_Sisgef.mtbExpedicaocod_base.AsInteger;
    fdEntregador := TSistemaControl.GetInstance.Conexao.ReturnQuery();
    fdEntregador := FEntregador.Localizar(aParam);
    Finalize(aParam);
    if fdEntregador.IsEmpty then
    begin
      sMotorista := 'NONE';
    end
    else
    begin
      sMotorista := fdEntregador.FieldByName('nom_fantasia').AsString;
    end;
    fdEntregador.Connection.Close;
    fdEntregador.Free;
    FEntregador.Free;
    sRoteiro :=  Data_Sisgef.mtbExpedicaodes_roteiro.AsString;
    if not Data_Sisgef.mtbExpedicao.IsEmpty then
    begin
      ImprimirExpedicaoDIRECT(sMotorista,sRoteiro);
    end;
  end;
end;

procedure Tview_ExpedicaoExpressas.Aviso(sTexto: String);
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

procedure Tview_ExpedicaoExpressas.CancelaProcessoExpedicao;
begin
  if Data_Sisgef.mtbExpedicao.Active then Data_Sisgef.mtbExpedicao.Close;
  cboCliente.ItemIndex := 0;
  cboUnitizador.ItemIndex := 0;
  cboUnitizador.Properties.ReadOnly := False;
  datExpedicao.Clear;
  datExpedicao.Properties.ReadOnly := False;
  mskCCEP.Clear;
  mskCCEP.Properties.ReadOnly := False;
  txtLeitura.Clear;
  txtLeitura.Properties.ReadOnly := False;
  actIniciar.Enabled := True;
  actGravar.Enabled := False;
  actCancelar.Enabled := False;
  actRotulo.Enabled := False;
  datExpedicaoPesquisa.Clear;
  cboContainers.Clear;
  tvExpedicao.Navigator.Buttons.Delete.Visible := False;
  cboTipoRelatorio.ItemIndex := 0;
  LabelResultado(0,'');
end;

procedure Tview_ExpedicaoExpressas.cboClientePropertiesChange(Sender: TObject);
begin
  if cboCliente.ItemIndex = 3 then
  begin
    dxLayoutItem5.Visible := False;
    dxLayoutItem13.Visible := True;
    dxLayoutItem19.Visible := False;
    dxLayoutItem20.Visible := False;
  end
  else if cboCliente.ItemIndex = 4 then
  begin
    dxLayoutItem5.Visible := False;
    dxLayoutItem13.Visible := False;
    dxLayoutItem19.Visible := True;
    dxLayoutItem20.Visible := True;
  end
  else if cboCliente.ItemIndex = 0 then
  begin
    lcbMotorista.Text := '';
    lcbRoteiros.EditValue := '';
    dxLayoutItem13.Visible := False;
    dxLayoutItem19.Visible := False;
    dxLayoutItem20.Visible := False;
    dxLayoutItem5.Visible := False;
  end
  else
  begin
    lcbMotorista.Text := '';
    lcbRoteiros.EditValue := '';
    dxLayoutItem13.Visible := False;
    dxLayoutItem19.Visible := False;
    dxLayoutItem20.Visible := False;
    dxLayoutItem5.Visible := True;
  end;
end;

procedure Tview_ExpedicaoExpressas.cboContainersPropertiesChange(Sender: TObject);
begin
  if Data_Sisgef.mtbExpedicao.Active then Data_Sisgef.mtbExpedicao.Close;
end;

procedure Tview_ExpedicaoExpressas.cboTipoRelatorioPropertiesChange(Sender: TObject);
begin
  if cboTipoRelatorio.ItemIndex = 1 then
  begin
    if datExpedicaoPesquisa.Text <> '' then ListaContainers(datExpedicaoPesquisa.Text);
  end
  else if cboTipoRelatorio.ItemIndex = 2 then
  begin
    if datExpedicaoPesquisa.Text <> '' then ListaCCEP(datExpedicaoPesquisa.Text);
  end
  else if cboTipoRelatorio.ItemIndex = 2 then
  begin
    if datExpedicaoPesquisa.Text <> '' then ListaRoteiro(datExpedicaoPesquisa.Text);
  end
  else
  begin
    cboContainers.Properties.Items.Clear;
  end;
end;

function Tview_ExpedicaoExpressas.ConferenciaVolumes(sNN: String; iVolumes, iCliente: Integer): Boolean;
var
  sMensagem: String;
begin
  Result := False;
  TUtils.TocaErro;
  if iCliente <> 1 then
  begin
    sMensagem := 'Pedido ' + sNN + ' é composto por ' + iVolumes.ToString + ' volumes. Confirma essa quantidade ?';
    Result := Application.MessageBox(PChar(sMensagem), 'Atenção', MB_YESNO + MB_ICONQUESTION) = IDYES;
    Exit;
  end
  else
  begin
    if not Assigned(view_ConferenciaVolumesPedido) then begin
      view_ConferenciaVolumesPedido := Tview_ConferenciaVolumesPedido.Create(Application);
    end;
    PopulaConferencia(sNN,iVolumes);
    view_ConferenciaVolumesPedido.sNN := sNN;
    view_ConferenciaVolumesPedido.iCliente := iCliente;
    if view_ConferenciaVolumesPedido.ShowModal <> mrOk then Exit;
  end;
  Result := True;
end;

procedure Tview_ExpedicaoExpressas.datExpedicaoPesquisaPropertiesChange(Sender: TObject);
begin
  cboTipoRelatorio.ItemIndex := 0;
  cboContainers.Properties.Items.Clear;
end;

procedure Tview_ExpedicaoExpressas.dxLayoutGroup1TabChanging(Sender: TObject; ANewTabIndex: Integer; var Allow: Boolean);
begin
  if cboCliente.ItemIndex <> 4 then
  begin
    CancelaProcessoExpedicao;
    tvExpedicaocod_ccep.Visible := (ANewTabIndex = 1);
  end
  else
  begin
    actRotulo.Enabled := False;
  end;
end;

procedure Tview_ExpedicaoExpressas.ExportarExpedicao;
begin
  SaveDialog.Filter := '';
  SaveDialog.Filter := 'Excel (*.xls) |*.xls|XML (*.xml) |*.xml|Arquivo Texto (*.txt) |*.txt|Página Web (*.html)|*.html';
  SaveDialog.Title := 'Exportar Dados';
  SaveDialog.DefaultExt := 'xls';
  if SaveDialog.Execute then
  begin
    TUtils.ExportarDados(grdExpedicao, SaveDialog.FileName);
  end;
end;

procedure Tview_ExpedicaoExpressas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Data_Sisgef.mtbExpedicao.Active then Data_Sisgef.mtbExpedicao.Close;
  if Data_Sisgef.mtbResumoExpedicao.Active then Data_Sisgef.mtbResumoExpedicao.Close;
  TUtils.CancelaTocaErro;
  Action := caFree;
  view_ExpedicaoExpressas := nil;
end;

procedure Tview_ExpedicaoExpressas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  begin
    Key := #0;
    if grdExpedicao.IsFocused then Exit;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;
end;

procedure Tview_ExpedicaoExpressas.FormShow(Sender: TObject);
begin
  ListRoteiros;
  ListEntregadores;
end;

procedure Tview_ExpedicaoExpressas.GravaRemessa(vvalue: Variant; smotorista, sRoteiro: String);
begin

    if Data_Sisgef.mtbExpedicao.LocateEx('num_nossonumero',vvalue,[],nil) then
    begin
      LabelResultado(2,'Remessa já gravada!');
      Aviso('Remessa já gravada!');
      Exit;
    end;

    Data_Sisgef.mtbExpedicao.Insert;
    Data_Sisgef.mtbExpedicaoid_expedicao.AsInteger := 0;
    Data_Sisgef.mtbExpedicaodom_ccep.AsInteger := 1;
    Data_Sisgef.mtbExpedicaodat_expedicao.AsDateTime := datExpedicao.Date;
    Data_Sisgef.mtbExpedicaocod_ccep.AsString := '000';
    Data_Sisgef.mtbExpedicaocod_base.AsInteger := 0;
    Data_Sisgef.mtbExpedicaonum_container.AsInteger := 0;
    Data_Sisgef.mtbExpedicaocod_unitizador.AsInteger := cboUnitizador.ItemIndex;
    Data_Sisgef.mtbExpedicaonum_nossonumero.AsString := vvalue;
    Data_Sisgef.mtbExpedicaocod_embarcador.AsInteger := 0;
    Data_Sisgef.mtbExpedicaoqtd_volumes.AsInteger := 1;
    Data_Sisgef.mtbExpedicaoqtd_peso.AsFloat := 0;
    Data_Sisgef.mtbExpedicaodes_executor.AsString := pUser_Name;
    Data_Sisgef.mtbExpedicaodat_execucao.AsDateTime := Now;
    Data_Sisgef.mtbExpedicaodes_embarcador.AsString := '';
    Data_Sisgef.mtbExpedicao.Post;
end;

procedure Tview_ExpedicaoExpressas.GravarExpedicao;
var
  FDEntregas : TFDQuery;
  FDExpedicao : TFDQuery;
  aParam: Array of variant;
  iBase: Integer;
  iContainer : Integer;
  iRomaneio : Integer;
begin
  try
    iContainer := 0;
    iRomaneio := 0;
    FDEntregas := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    FDExpedicao := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    expedicao := TExpedicaoExpressasControl.Create;
    entregas := TEntregasControl.Create;
    if Data_Sisgef.mtbExpedicao.IsEmpty then Exit;
    iContainer := expedicao.GeraNumeroContaiter;
    Data_Sisgef.mtbExpedicao.First;
    expedicao.Expedicao.Data := Data_Sisgef.mtbExpedicaodat_expedicao.AsDateTime;
    expedicao.Expedicao.CCEP := Data_Sisgef.mtbExpedicaocod_ccep.AsString;
    iRomaneio := expedicao.GeraNumeroRomaneio;
    if not Data_Sisgef.mtbExpedicao.IsEmpty then Data_Sisgef.mtbExpedicao.First;

    while not Data_Sisgef.mtbExpedicao.Eof do
    begin
      expedicao.Expedicao.ID := Data_Sisgef.mtbExpedicaoid_expedicao.AsInteger;
      expedicao.Expedicao.Data := Data_Sisgef.mtbExpedicaodat_expedicao.AsDateTime;
      expedicao.Expedicao.CCEP := Data_Sisgef.mtbExpedicaocod_ccep.AsString;
      expedicao.Expedicao.Base := Data_Sisgef.mtbExpedicaocod_base.AsInteger;
      expedicao.Expedicao.Container := Data_Sisgef.mtbExpedicaonum_container.AsInteger;
      expedicao.Expedicao.Unitizador := Data_Sisgef.mtbExpedicaocod_unitizador.AsInteger;
      expedicao.Expedicao.NN := Data_Sisgef.mtbExpedicaonum_nossonumero.AsString;
      expedicao.Expedicao.Embarcador := Data_Sisgef.mtbExpedicaocod_embarcador.AsInteger;
      expedicao.Expedicao.NomeEmbarcador := Data_Sisgef.mtbExpedicaodes_embarcador.AsString;
      expedicao.Expedicao.Volumes := Data_Sisgef.mtbExpedicaoqtd_volumes.AsInteger;
      expedicao.Expedicao.Peso := Data_Sisgef.mtbExpedicaoqtd_peso.AsFloat;
      expedicao.Expedicao.Executor := Data_Sisgef.mtbExpedicaodes_executor.AsString;
      expedicao.Expedicao.Execucao := Data_Sisgef.mtbExpedicaodat_execucao.AsDateTime;
      expedicao.Expedicao.Conferente := Data_Sisgef.mtbExpedicaodes_conferente.AsString;
      expedicao.Expedicao.Conferencia := Data_Sisgef.mtbExpedicaodat_conferencia.AsDateTime;
      expedicao.Expedicao.Recebedor := Data_Sisgef.mtbExpedicaodes_recebedor.AsString;
      expedicao.Expedicao.Recebimento := Data_Sisgef.mtbExpedicaodat_recebimento.AsDateTime;
      expedicao.Expedicao.Container := iContainer;
      expedicao.Expedicao.DomCCEP := 0;
      expedicao.Expedicao.Acao := tacIncluir;
      if not expedicao.Gravar then
      begin
        Application.MessageBox('Erro ao gravar a expedição!', 'Erro', MB_OK + MB_ICONERROR);
        Exit;
      end;
      entregas := TEntregasControl.Create;
      FDEntregas := TSistemaControl.GetInstance.Conexao.ReturnQuery;
      SetLength(aParam,2);
      aParam[0] := 'NN';
      aParam[1] := Data_Sisgef.mtbExpedicaonum_nossonumero.AsString;
      FDEntregas := entregas.Localizar(aParam);
      Finalize(aParam);
      if not FDEntregas.IsEmpty then
      begin
        SetupClassEntregas(FDEntregas);
        entregas.Entregas.Rastreio := entregas.Entregas.Rastreio + #13 +
                                      '> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' pedido expedido para CCEP ' +
                                      expedicao.Expedicao.CCEP +
                                      ' por ' + Global.Parametros.pUser_Name;
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
      Data_Sisgef.mtbExpedicao.Edit;
      Data_Sisgef.mtbExpedicaodom_ccep.AsInteger := 0;
      Data_Sisgef.mtbExpedicaonum_container.AsInteger := iContainer;
      Data_Sisgef.mtbExpedicao.Post;
      Data_Sisgef.mtbExpedicao.Next;
    end;
    if Application.MessageBox('Expedição gravada. Deseja imprimiro o rótulo?', 'Imprimir Rótulo', MB_YESNO + MB_ICONQUESTION) = IDYES then
    begin
      ImprimirRotulo(FormatDateTime('dd/mm/yyyy', Data_Sisgef.mtbExpedicaodat_expedicao.AsDateTime),iContainer);
    end;
  finally
    FDEntregas.Free;
    if expedicao.Expedicao <> nil then
      expedicao.Free;
    CancelaProcessoExpedicao;
  end;
end;

procedure Tview_ExpedicaoExpressas.ImprimirExpedicaoDIRECT(smotorista, sroteiro: String);
var
  sImpressao: String;
begin
  with frxDIRECT do begin
    if not Assigned(view_Impressao) then begin
      view_Impressao := Tview_Impressao.Create(Application);
    end;
    view_Impressao.cxLabel1.Caption := 'Expedição de DIRECT';
    view_Impressao.cxArquivo.Text := ExtractFilePath(Application.ExeName) + 'Reports\frxExpedicaoDIRECT.fr3';
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
    Variables.Items[Variables.IndexOf('vImpressao')].Value :=  QuotedStr(sImpressao);
    Variables.Items[Variables.IndexOf('vmotorista')].Value :=  QuotedStr(smotorista);
    Variables.Items[Variables.IndexOf('vroteiro')].Value :=  QuotedStr(sroteiro);
    if (not vieW_Impressao.bFlagImprimir) then
    begin
      ShowReport(True);
    end
    else
    begin
      PrepareReport;
      Print;
    end;
    FreeAndNil(view_Impressao);
  end;
end;

procedure Tview_ExpedicaoExpressas.ImprimirRomaneio(sData, sCCEP: String);
var
  sImpressao: String;
begin
  if not PopulaRomaneio(sData, sCCEP) then Exit;
  with frxRomaneio do begin
    if not Assigned(view_Impressao) then begin
      view_Impressao := Tview_Impressao.Create(Application);
    end;
    view_Impressao.cxLabel1.Caption := 'Romaneio de Expedição de Expressas';
    view_Impressao.cxArquivo.Text := ExtractFilePath(Application.ExeName) + 'Reports\frxRomaneioExpressas.fr3';
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
    FreeAndNil(view_Impressao);
  end;
end;

procedure Tview_ExpedicaoExpressas.ImprimirRotulo(sData: String; iContainer: Integer);
var
  sImpressao: String;
begin
  if not PopulaRotulo(sData, iContainer) then Exit;
  with frxRotulo do begin
    if not Assigned(view_Impressao) then begin
      view_Impressao := Tview_Impressao.Create(Application);
    end;
    view_Impressao.cxLabel1.Caption := 'Rótulo de Expedição de Expressas';
    view_Impressao.cxArquivo.Text := ExtractFilePath(Application.ExeName) + 'Reports\frxRotuloExpressas.fr3';
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
    FreeAndNil(view_Impressao);
  end;
end;

procedure Tview_ExpedicaoExpressas.Iniciar;
begin
  if cboCliente.ItemIndex = 0 then
  begin
    Application.MessageBox('Informe o cliente.', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if cboUnitizador.ItemIndex = 0 then
  begin
    Application.MessageBox('Informe tipo de unitizador.', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if datExpedicao.Text = '' then
  begin
    Application.MessageBox('Informe a data da expedição.', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if cboCliente.ItemIndex <> 4 then
  begin
    if StrToIntDef(mskCCEP.Text,0) = 0 then
    begin
      Application.MessageBox('Informe a cabeça de CEP.', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
  end
  else
  begin
    if lcbRoteiros.Text = '' then
    begin
      Application.MessageBox('Informe o Roteiro.', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
  end;
  actIniciar.Enabled := False;
  if cboCliente.ItemIndex <> 4 then actGravar.Enabled := True;
  actCancelar.Enabled := True;
  actRotulo.Enabled := True;
  cboUnitizador.Properties.ReadOnly := True;
  datExpedicao.Properties.ReadOnly := True;
  mskCCEP.Properties.ReadOnly := True;
  txtLeitura.Properties.ReadOnly := False;
  txtLeitura.SetFocus;
  tvExpedicao.Navigator.Buttons.Delete.Visible := True;
  if Data_Sisgef.mtbExpedicao.Active then Data_Sisgef.mtbExpedicao.Close;
  Data_Sisgef.mtbExpedicao.Open;
end;

procedure Tview_ExpedicaoExpressas.LabelResultado(iTipo: Integer; sTexto: String);
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

procedure Tview_ExpedicaoExpressas.ListaCCEP(sData: String);
var
  FDQuery : TFDQuery;
  aParam: Array of variant;
  sDescricao: String;
begin
  try
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    expedicao := TExpedicaoExpressasControl.Create;
    cboContainers.Properties.Items.Clear;
    SetLength(aParam,3);
    aParam[0] := 'APOIO';
    aParam[1] := 'distinct cod_ccep';
    aParam[2] := 'where dat_expedicao = ' + QuotedStr(FormatDateTime('yyyy/mm/dd', StrToDate(sData)));
    FDQuery := expedicao.Localizar(aParam);
    if not FDQuery.IsEmpty then FDQuery.First;
    cboContainers.Properties.Items.Add('Todos');
    while not FDQuery.Eof do
    begin
      sDescricao := '';
      sDescricao := FDQuery.FieldByName('cod_ccep').AsString;
      cboContainers.Properties.Items.Add(sDescricao);
      FDQuery.Next;
    end;
    if cboContainers.Properties.Items.Count > 0 then
    begin
      cboContainers.ItemIndex := -1;
      cboContainers.ItemIndex := 0;
    end;
  finally
    FDQuery.Free;
    expedicao.Free;
  end;
end;

procedure Tview_ExpedicaoExpressas.ListaContainers(sData: String);
var
  FDQuery : TFDQuery;
  aParam: Array of variant;
  sDescricao: String;
begin
  try
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    expedicao := TExpedicaoExpressasControl.Create;
    cboContainers.Properties.Items.Clear;
    SetLength(aParam,3);
    aParam[0] := 'APOIO';
    aParam[1] := 'distinct num_container, cod_ccep, cod_unitizador';
    aParam[2] := 'where dat_expedicao = ' + QuotedStr(FormatDateTime('yyyy/mm/dd', StrToDate(sData))) +
                 ' order by num_container desc';
    FDQuery := expedicao.Localizar(aParam);
    if not FDQuery.IsEmpty then FDQuery.First;
    cboContainers.Properties.Items.Add('Todos');
    while not FDQuery.Eof do
    begin
      sDescricao := '';
      sDescricao := FDQuery.FieldByName('num_container').AsString;
      sDescricao := sDescricao + '-';
      sDescricao := sDescricao + FDQuery.FieldByName('cod_ccep').AsString;
      sDescricao := sDescricao + '/';
      if FDQuery.FieldByName('cod_unitizador').AsInteger = 1 then
      begin
        sDescricao := sDescricao + 'PALLET';
      end
      else if FDQuery.FieldByName('cod_unitizador').AsInteger = 2 then
      begin
        sDescricao := sDescricao + 'SACO RÁFIA';
      end
      else if FDQuery.FieldByName('cod_unitizador').AsInteger = 3 then
      begin
        sDescricao := sDescricao + 'VOLUME';
      end;
      cboContainers.Properties.Items.Add(sDescricao);
      FDQuery.Next;
    end;
    if cboContainers.Properties.Items.Count > 0 then
    begin
      cboContainers.ItemIndex := -1;
      cboContainers.ItemIndex := 0;
    end;
  finally
    FDQuery.Free;
    expedicao.Free;
  end;
end;

procedure Tview_ExpedicaoExpressas.ListaRoteiro(sData: String);
var
  FDQuery : TFDQuery;
  aParam: Array of variant;
  sDescricao: String;
begin
  try
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    expedicao := TExpedicaoExpressasControl.Create;
    cboContainers.Properties.Items.Clear;
    SetLength(aParam,3);
    aParam[0] := 'APOIO';
    aParam[1] := 'distinct num_container, des_roteiro';
    aParam[2] := 'where dat_expedicao = ' + QuotedStr(FormatDateTime('yyyy/mm/dd', StrToDate(sData))) +
                 ' order by num_container desc';
    FDQuery := expedicao.Localizar(aParam);
    if not FDQuery.IsEmpty then FDQuery.First;
    cboContainers.Properties.Items.Add('Todos');
    while not FDQuery.Eof do
    begin
      sDescricao := '';
      sDescricao := FDQuery.FieldByName('num_container').AsString;
      sDescricao := sDescricao + '-';
      sDescricao := sDescricao + FDQuery.FieldByName('des_roteiro').AsString;
      sDescricao := sDescricao + '/';
      if FDQuery.FieldByName('cod_unitizador').AsInteger = 1 then
      begin
        sDescricao := sDescricao + 'PALLET';
      end
      else if FDQuery.FieldByName('cod_unitizador').AsInteger = 2 then
      begin
        sDescricao := sDescricao + 'SACO RÁFIA';
      end
      else if FDQuery.FieldByName('cod_unitizador').AsInteger = 3 then
      begin
        sDescricao := sDescricao + 'VOLUME';
      end;
      cboContainers.Properties.Items.Add(sDescricao);
      FDQuery.Next;
    end;
    if cboContainers.Properties.Items.Count > 0 then
    begin
      cboContainers.ItemIndex := -1;
      cboContainers.ItemIndex := 0;
    end;
  finally
    FDQuery.Free;
    expedicao.Free;
  end;
end;

procedure Tview_ExpedicaoExpressas.ListEntregadores;
var
  FEntregadores: TEntregadoresExpressasControl;
  FDQuery : TFDQuery;
  aParam: Array of variant;
begin
  try
    FEntregadores := TEntregadoresExpressasControl.Create;
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    SetLength(aParam,3);
    aParam[0] := 'APOIO';
    aParam[1] := 'cod_entregador, nom_fantasia';
    aParam[2] := 'where cod_cadastro <> 0';
    FDQuery := FEntregadores.Localizar(aParam);
    if mtbRoteiros.Active then mtbRoteiros.Close;
    mtbRoteiros.Data := FDQuery.Data;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
    FEntregadores.Free;
  end;

end;

procedure Tview_ExpedicaoExpressas.ListRoteiros;
var
  FRoteiros: TRoteirosExpressasControl;
  FDQuery : TFDQuery;
begin
  try
    FRoteiros := TRoteirosExpressasControl.Create;
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    FDQuery := FRoteiros.ListRoteiro();
    if mtbRoteiros.Active then mtbRoteiros.Close;
    mtbRoteiros.Data := FDQuery.Data;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
    FRoteiros.Free;
  end;
end;

procedure Tview_ExpedicaoExpressas.LocalizaPedido(sNossoNumero: String; iCliente: Integer; bDANFE: Boolean);
var
  FDQuery : TFDQuery;
  FDQueryRoteiro: TFDQuery;
  FDQueryControleAWB: TFDQuery;
  aParam: Array of variant;
  bFlagGravar: Boolean;
  sNN: String;
  sCCEP: String;
  icontainer : Integer;
  iVolumes: Integer;
  FRoteiro: TRoteirosExpressasControl;
  FControleAWB: TControleAWBControl;
  sCEP: String;
begin
  try
    LabelResultado(0,'');
    iVolumes := 0;
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    FDQueryControleAWB := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    entregas := TEntregasControl.Create;
    expedicao := TExpedicaoExpressasControl.Create;
    sNN := '';
    if icliente <> 3 then
    begin
      sNN := RetornaNN(sNossoNumero, iCliente);
      SetLength(aPAram,2);
      aParam[0] := 'NN';
      aParam[1] := sNN;
    end
    else if icliente <> 4 then
    begin
      if Data_Sisgef.mtbExpedicao.LocateEx('num_nossonumero',sNossoNumero,[],nil) then
      begin
        LabelResultado(2,'Remessa já gravada!');
        Aviso('Remessa já gravada!');
        Exit;
      end;
      if TUtils.ENumero(sNossoNumero) then
      begin
        LabelResultado(2,'');
        if Application.MessageBox('Código informado não é padrão AWB. Confirma a leitura ?','Atenção',MB_YESNO + MB_ICONQUESTION) = IDNO then
        begin
          Exit;
        end;

        sNN := Trim(sNossoNumero);
        SetLength(aParam,2);
        aParam[0] := 'AWB1';
        aParam[1] := sNN;

        FDQueryControleAWB := FControleAWB.Localizar(aParam);
        Finalize(aParam);

        if not FDQueryControleAWB.IsEmpty then
        begin
          sNN := Trim(sNossoNumero);
          SetLength(aParam,2);
          aParam[0] := 'NN';
          aParam[1] := FDQueryControleAWB.FieldByName('num_remessa').AsString;
          FDQueryControleAWB.Close;
        end
        else
        begin
          FDQueryControleAWB.Close;
          LabelResultado(2,'AWB não encontrado!');
          Aviso('AWB não encontrado!!');
          Exit;
        end;
      end;
    end
    else
    begin
      if bDANFE then
      begin
        sNN := Trim(sNossoNumero);
        SetLength(aParam,2);
        aParam[0] := 'FILTRO';
        aParam[1] := 'where des_retorno like ' + QuotedStr(sNN + '%');
      end
      else
      begin
        sNN := RetornaNN(sNossoNumero, iCliente);
        aParam[0] := 'NN';
        aParam[1] := sNN;
      end;
    end;
    iContainer := expedicao.NNExiste(sNN);
    if iContainer <> 0 then
    begin
      LabelResultado(2, 'Pedido ' + sNN + 'já expedido no container número ' + iContainer.toString + ' !');
      Aviso('Pedido ' + sNN + 'já expedido no container número ' + iContainer.toString + ' !');
      LabelResultado(0,'');
      Finalize(aParam);
      Exit;
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

    if cboCliente.ItemIndex = 4 then
    begin
      FDQueryRoteiro := TSistemaControl.GetInstance.Conexao.ReturnQuery;
      sCEP := TUtils.ReplaceStr(FDQuery.FieldByName('num_cep').AsString,'-','');
      FRoteiro := TRoteirosExpressasControl.Create;
      SetLength(aParam,2);
      aParam[0] := 'CEP';
      aParam[1] := sCEP;
      FDQueryRoteiro := FRoteiro.Localizar(aParam);
      Finalize(aParam);
      if FDQueryRoteiro.IsEmpty then
      begin
        LabelResultado(2, 'CEP ' + sCEP + ' não encontrado!');
        Aviso('CEP ' + sCEP + ' não encontrado!');
        LabelResultado(0,'');
        Exit;
      end;

      if lcbRoteiros.Text <> FDQueryRoteiro.FieldByName('des_roteiro').AsString  then
      begin
        LabelResultado(2, 'CEP ' + sCEP + ' não pertence ao roteiro selecionado!');
        Aviso('CEP ' + sCEP + ' não pertence ao roteiro selecionado!');
        LabelResultado(0,'');
        Exit;
      end;

      if FDQueryRoteiro.FieldByName('dom_zona').AsString = 'N' then
      begin
        LabelResultado(2, 'CEP ' + sCEP + ' FORA DE ABRANGÊNCIA!');
        Aviso('CEP ' + sCEP + ' FORA DE ABRANGÊNCIA!');
        LabelResultado(0,'');
        Exit;
      end;
    end;

    iVolumes := FDQuery.FieldByName('qtd_volumes').AsInteger;

    sNN := FDQuery.FieldByName('num_nossonumero').AsString;

    if iCliente <> 4 then
    begin
      sCCEP := Copy(FDQuery.FieldByName('NUM_CEP').AsString, 1, 3);
      if sCCEP <> mskCCEP.Text then
      begin
        LabelResultado(2, 'CCEP do pedido ' + sNN + ' diferente do informado!');
        Aviso('CCEP do pedido ' + sNN + ' diferente do informado!');
        LabelResultado(0,'');
        Exit;
      end;
    end;
    if iCliente = 3 then
    begin
      sNN := FDQuery.FieldByName('num_nossonumero').AsString;
    end;
    if sNN.IsEmpty then
    begin
      LabelResultado(2, 'Pedido inválido!');
      Aviso('Pedido inválido!');
      LabelResultado(0,'');
      Exit;
    end;
    bFlagGravar := True;
    if not Data_Sisgef.mtbExpedicao.IsEmpty then Data_Sisgef.mtbExpedicao.First;
    while not Data_Sisgef.mtbExpedicao.eof do
    begin
      if Data_Sisgef.mtbExpedicaonum_nossonumero.AsString = sNN then bFlagGravar := False;
      Data_Sisgef.mtbExpedicao.Next;
    end;
    if not bFlagGravar then
    begin
      LabelResultado(1, 'Pedido ' + sNN + ' já consta nesta expedição!');
      Exit;
    end;
    if iCliente <> 4 then
    begin
      if iVolumes > 1 then
      begin
        if not ConferenciaVolumes(sNN, iVolumes, iCliente) then
        begin
          Exit;
        end;
      end;
    end;
    SetupGrade(FDQuery);
    LabelResultado(1, 'Pedido ' + sNN + ' gravado!');
  finally
    FDQuery.Free;
    FDQueryControleAWB.Free;
    entregas.Free;
    expedicao.Free;
  end;
end;


procedure Tview_ExpedicaoExpressas.PesquisaExpedicao;
var
  iPos: Integer;
  sCombo: String;
  sContainer: String;
begin
  sContainer := '';
  iPos := 0;
  if datExpedicaoPesquisa.Text = '' then
  begin
    Application.MessageBox('Informe a data da expedição!', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if cboContainers.ItemIndex = - 1 then
  begin
    Application.MessageBox('Selecione o container/CCEP/Roteiro!', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if cboTipoRelatorio.ItemIndex = 1 then
  begin
    if cboContainers.ItemIndex = 0 then
    begin
      sContainer := '0';
    end
    else
    begin
      sCombo := cboContainers.Text;
      iPos := Pos('-',sCombo);
      sContainer := Copy(sCombo, 0, iPos -1);
    end;
    if PopulaExpedicao(datExpedicaoPesquisa.Text, sContainer,'ROTULO') then
    begin
      actGravar.Enabled := False;
      actRotulo.Enabled := True;
      actCancelar.Enabled := True;
    end;
  end
  else if cboTipoRelatorio.ItemIndex = 2 then
  begin
    if cboContainers.ItemIndex = 0 then
    begin
      sContainer := '';
    end
    else
    begin
      sCombo := cboContainers.Text;
      sContainer := cboContainers.Text;
    end;
    if PopulaExpedicao(datExpedicaoPesquisa.Text, sContainer, 'ROMANEIO') then
    begin
      actGravar.Enabled := False;
      actRotulo.Enabled := True;
      actCancelar.Enabled := True;
    end;
  end
  else if cboTipoRelatorio.ItemIndex = 3 then
  begin
    if cboContainers.ItemIndex = 0 then
    begin
      sContainer := '';
    end
    else
    begin
      sCombo := cboContainers.Text;
      iPos := Pos('-',sCombo);
      sContainer := Copy(sCombo, 0, iPos -1);
    end;
    if PopulaExpedicao(datExpedicaoPesquisa.Text, sContainer, 'ROTULO') then
    begin
      actGravar.Enabled := False;
      actRotulo.Enabled := True;
      actCancelar.Enabled := True;
    end;
  end;
end;

procedure Tview_ExpedicaoExpressas.PopulaConferencia(sNN: String; iVolumes: Integer);
var
  i: Integer;
begin
  if Data_Sisgef.mtbConferenciaPedido.Active then Data_Sisgef.mtbConferenciaPedido.Close;
  Data_Sisgef.mtbConferenciaPedido.Open;
  for i := 1 to iVolumes do
  begin
    Data_Sisgef.mtbConferenciaPedido.Insert;
    Data_Sisgef.mtbConferenciaPedidodom_ok.AsInteger := 0;
    Data_Sisgef.mtbConferenciaPedidonum_nossonumero.AsString := sNN;
    Data_Sisgef.mtbConferenciaPedidonum_volume.AsInteger := i;
    Data_Sisgef.mtbConferenciaPedido.Post;
  end;

  if not Data_Sisgef.mtbConferenciaPedido.IsEmpty then Data_Sisgef.mtbConferenciaPedido.First;
end;

function Tview_ExpedicaoExpressas.PopulaExpedicao(sData: String;sContainer: String; sTipo: String): Boolean;
var
  aParam: array of variant;
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    if Data_Sisgef.mtbExpedicao.Active then Data_Sisgef.mtbExpedicao.Close;
    Data_Sisgef.mtbExpedicao.Open;
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    expedicao := TExpedicaoExpressasControl.Create;
    if sTipo = 'ROTULO' then
    begin
      SetLength(aParam,2);
      if StrToIntDef(sContainer, 0) <> 0 then
      begin
        aParam[0] := 'CONTAINER';
        aParam[1] := StrToIntDef(sContainer,0);
      end
      else
      begin
        aParam[0] := 'DATA';
        aParam[1] := StrToDateDef(sData,Now);
      end;
      FDQuery := expedicao.Localizar(aParam);
      Finalize(aParam);
      if FDQuery.IsEmpty then Exit;
      tvExpedicao.Navigator.Buttons.Delete.Visible := False;
      while not FDQuery.Eof do
      begin
        SetupGradeBase(FDQuery);
        FDQuery.Next;
      end;
    end
    else if sTipo = 'ROMANEIO' then
    begin
      SetLength(aParam,2);
      if not sContainer.IsEmpty then
      begin
        aParam[0] := 'FILTRO';
        aParam[1] := 'dat_expedicao = ' + QuotedStr(FormatDateTime('yyyy/mm/dd', StrToDateDef(sData,Now))) + ' and cod_ccep = ' +
                     QuotedStr(sContainer);
      end
      else
      begin
        aParam[0] := 'DATA';
        aParam[1] := StrToDateDef(sData,Now);
      end;
      FDQuery := expedicao.Localizar(aParam);
      Finalize(aParam);
      if FDQuery.IsEmpty then Exit;
      tvExpedicao.Navigator.Buttons.Delete.Visible := False;
      while not FDQuery.Eof do
      begin
        SetupGradeBase(FDQuery);
        FDQuery.Next;
      end;
    end;
    Result := True;
  finally
    FDQuery.Free;
    expedicao.Free;
  end;
end;

function Tview_ExpedicaoExpressas.PopulaRomaneio(sData: String; sCCEP: String): boolean;
var
  aParam: array of variant;
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    expedicao := TExpedicaoExpressasControl.Create;
    SetLength(aParam,3);
    aParam[0] := 'APOIO';
    aParam[1] := 'dat_expedicao, cod_embarcador, des_embarcador, cod_ccep, cod_base, num_container, cod_unitizador, ' +
                 'count(num_nossonumero) as pedidos, Sum(qtd_volumes) as volumes, sum(qtd_peso) as peso, num_romaneio';
    if sCCEP.IsEmpty then
    begin
      aParam[2] := 'where dat_expedicao = ' + QuotedStr(FormatDateTime('yyyy/mm/dd', StrToDateDef(sData, Now))) +
                   ' group by cod_ccep, num_container';
    end
    else
    begin
      aParam[2] := 'where dat_expedicao = ' + QuotedStr(FormatDateTime('yyyy/mm/dd', StrToDateDef(sData, Now))) +
                   ' and cod_ccep = ' + QuotedStr(sCCEP) + ' group by num_container';
    end;
    FDQuery := expedicao.Localizar(aParam);
    Finalize(aParam);
    if FDQuery.IsEmpty then Exit;
    if Data_Sisgef.mtbResumoExpedicao.Active then Data_Sisgef.mtbResumoExpedicao.Close;
    Data_Sisgef.mtbResumoExpedicao.Open;
    while not FDQuery.Eof do
    begin
      SetupRomaneio(FDQuery);
      FDQuery.Next;
    end;
    Result := True;
  finally
    FDQuery.Free;
    expedicao.Free;
  end;
end;

function Tview_ExpedicaoExpressas.PopulaRotulo(sData: String; iContainer: Integer): boolean;
var
  aParam: array of variant;
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    expedicao := TExpedicaoExpressasControl.Create;
    SetLength(aParam,3);
    aParam[0] := 'APOIO';
    aParam[1] := 'dat_expedicao, cod_embarcador, des_embarcador, cod_ccep, cod_base, num_container, cod_unitizador, ' +
                 'count(num_nossonumero) as pedidos, Sum(qtd_volumes) as volumes, sum(qtd_peso) as peso, num_romaneio';
    if iContainer = 0 then
    begin
      aParam[2] := 'where dat_expedicao = ' + QuotedStr(FormatDateTime('yyyy/mm/dd', StrToDateDef(sData, Now))) +
                   ' group by num_container, cod_embarcador';
    end
    else
    begin
      aParam[2] := 'where num_container = ' + iContainer.ToString + ' group by cod_embarcador';
    end;
    FDQuery := expedicao.Localizar(aParam);
    Finalize(aParam);
    if FDQuery.IsEmpty then Exit;
    tvExpedicao.Navigator.Buttons.Delete.Visible := False;
    if Data_Sisgef.mtbResumoExpedicao.Active then Data_Sisgef.mtbResumoExpedicao.Close;
    Data_Sisgef.mtbResumoExpedicao.Open;
    while not FDQuery.Eof do
    begin
      SetupRotulo(FDQuery);
      FDQuery.Next;
    end;
    Result := True;
  finally
    FDQuery.Free;
    expedicao.Free;
  end;
end;

function Tview_ExpedicaoExpressas.RetornaNN(sLeitura: String; iCliente: Integer): String;
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
      if Length(sNN) > 11 then  sNN := Copy(sNN, 1,sNN.Length - 3);
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

procedure Tview_ExpedicaoExpressas.SetupClassEntregas(FDQuery: TFDQuery);
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

procedure Tview_ExpedicaoExpressas.SetupGrade(FDQuery: TFDQuery);
var
  FDCliente: TFDQuery;
  pParam: Array of variant;
begin
  try
    if not Data_Sisgef.mtbExpedicao.Active then Data_Sisgef.mtbExpedicao.Active := True;
    Data_Sisgef.mtbExpedicao.Insert;
    Data_Sisgef.mtbExpedicaoid_expedicao.AsInteger := 0;
    Data_Sisgef.mtbExpedicaodom_ccep.AsInteger := 1;
    Data_Sisgef.mtbExpedicaodat_expedicao.AsDateTime := datExpedicao.Date;
    Data_Sisgef.mtbExpedicaocod_ccep.AsString := mskCCEP.Text;
    Data_Sisgef.mtbExpedicaonum_container.AsInteger := 0;
    Data_Sisgef.mtbExpedicaocod_unitizador.AsInteger := cboUnitizador.ItemIndex;
    if FDQuery.FieldByName('COD_CLIENTE_EMPRESA').AsInteger = 4 then
    begin
      Data_Sisgef.mtbExpedicaonum_nossonumero.AsString := FDQuery.FieldByName('cod_awb1').AsString;
      Data_Sisgef.mtbExpedicaocod_base.AsInteger := lcbMotorista.EditValue;
    end
    else
    begin
      Data_Sisgef.mtbExpedicaonum_nossonumero.AsString := FDQuery.FieldByName('num_nossonumero').AsString;
      Data_Sisgef.mtbExpedicaocod_base.AsInteger := 0;
    end;
    Data_Sisgef.mtbExpedicaocod_embarcador.AsInteger := FDQuery.FieldByName('cod_cliente').AsInteger;
    Data_Sisgef.mtbExpedicaoqtd_volumes.AsInteger := FDquery.FieldByName('qtd_volumes').AsInteger;
    Data_Sisgef.mtbExpedicaoqtd_peso.AsFloat := FDquery.FieldByName('qtd_peso_real').AsFloat;
    Data_Sisgef.mtbExpedicaodes_executor.AsString := pUser_Name;
    Data_Sisgef.mtbExpedicaodat_execucao.AsDateTime := Now;
    clientes := TClientesControl.Create;
    SetLength(pParam, 3);
    pParam[0] := 'CODIGO';
    pParam[1] := FDQuery.FieldByName('COD_CLIENTE_EMPRESA').AsInteger;
    pParam[2] := FDQuery.FieldByName('COD_CLIENTE').AsInteger;
    FDCliente := clientes.Localizar(pParam);
    Finalize(pParam);
    if not FDCliente.IsEmpty then
    begin
      Data_Sisgef.mtbExpedicaodes_embarcador.AsString := FDCliente.FieldByName('NOM_CLIENTE').AsString;
    end
    else
    begin
      Data_Sisgef.mtbExpedicaodes_embarcador.AsString := 'NONE';
    end;
    FDCliente.Close;
    Data_Sisgef.mtbExpedicaodes_roteiro.AsString := lcbRoteiros.Text;
    Data_Sisgef.mtbExpedicao.Post;
  finally
    FDCliente.Free;
    clientes.Free;
  end;
end;

procedure Tview_ExpedicaoExpressas.SetupGradeBase(FDQuery: TFDQuery);
var
  FDCliente: TFDQuery;
  pParam: Array of variant;
begin
  try
    if Data_Sisgef.mtbExpedicao.Active then Data_Sisgef.mtbExpedicao.Close;
    Data_Sisgef.mtbExpedicao.Data := FDQuery.Data;
  finally
    if not Data_Sisgef.mtbExpedicao.IsEmpty then Data_Sisgef.mtbExpedicao.First;
  end;
end;

procedure Tview_ExpedicaoExpressas.SetupRomaneio(FDQuery: TFDQuery);
var
  pParam: Array of variant;
begin
  if not Data_Sisgef.mtbResumoExpedicao.Active then Data_Sisgef.mtbResumoExpedicao.Active := True;
  Data_Sisgef.mtbResumoExpedicao.Insert;
  Data_Sisgef.mtbResumoExpedicaodat_expedicao.AsDateTime := FDQuery.FieldByName('dat_expedicao').AsDateTime;
  Data_Sisgef.mtbResumoExpedicaocod_ccep.AsString := FDQuery.FieldByName('cod_ccep').AsString;
  Data_Sisgef.mtbResumoExpedicaocod_base.AsInteger := FDQuery.FieldByName('cod_base').AsInteger;
  Data_Sisgef.mtbResumoExpedicaonum_container.AsInteger := FDQuery.FieldByName('num_container').AsInteger;
  Data_Sisgef.mtbResumoExpedicaocod_unitizador.AsInteger := FDQuery.FieldByName('cod_unitizador').AsInteger;
  Data_Sisgef.mtbResumoExpedicaocod_embarcador.AsInteger := 0;
  Data_Sisgef.mtbResumoExpedicaoqtd_volumes.AsInteger := FDquery.FieldByName('volumes').AsInteger;
  Data_Sisgef.mtbResumoExpedicaoqtd_peso.AsFloat := FDquery.FieldByName('peso').AsFloat;
  Data_Sisgef.mtbResumoExpedicaoqtd_pedidos.AsInteger := FDQuery.FieldByName('pedidos').AsInteger;
  Data_Sisgef.mtbResumoExpedicaonum_romaneio.AsInteger := FDQuery.FieldByName('num_romaneio').AsInteger;
  Data_Sisgef.mtbResumoExpedicaodes_embarcador.AsString := 'NONE';
  Data_Sisgef.mtbResumoExpedicao.Post;
end;

procedure Tview_ExpedicaoExpressas.SetupRotulo(FDQuery: TFDQuery);
var
  pParam: Array of variant;
begin
  try
    if not Data_Sisgef.mtbResumoExpedicao.Active then Data_Sisgef.mtbResumoExpedicao.Active := True;
    Data_Sisgef.mtbResumoExpedicao.Insert;
    Data_Sisgef.mtbResumoExpedicaodat_expedicao.AsDateTime := FDQuery.FieldByName('dat_expedicao').AsDateTime;
    Data_Sisgef.mtbResumoExpedicaocod_ccep.AsString := FDQuery.FieldByName('cod_ccep').AsString;
    Data_Sisgef.mtbResumoExpedicaocod_base.AsInteger := FDQuery.FieldByName('cod_base').AsInteger;
    Data_Sisgef.mtbResumoExpedicaonum_container.AsInteger := FDQuery.FieldByName('num_container').AsInteger;
    Data_Sisgef.mtbResumoExpedicaocod_unitizador.AsInteger := FDQuery.FieldByName('cod_unitizador').AsInteger;
    Data_Sisgef.mtbResumoExpedicaocod_embarcador.AsInteger := FDQuery.FieldByName('cod_embarcador').AsInteger;
    Data_Sisgef.mtbResumoExpedicaodes_embarcador.AsString := FDQuery.FieldByName('des_embarcador').AsString;
    Data_Sisgef.mtbResumoExpedicaoqtd_volumes.AsInteger := FDquery.FieldByName('volumes').AsInteger;
    Data_Sisgef.mtbResumoExpedicaoqtd_peso.AsFloat := FDquery.FieldByName('peso').AsFloat;
    Data_Sisgef.mtbResumoExpedicaoqtd_pedidos.AsInteger := FDQuery.FieldByName('pedidos').AsInteger;
    Data_Sisgef.mtbResumoExpedicaonum_romaneio.AsInteger := FDQuery.FieldByName('num_romaneio').AsInteger;
    Data_Sisgef.mtbResumoExpedicao.Post;
  finally
    clientes.Free;
  end;
end;

procedure Tview_ExpedicaoExpressas.tvExpedicaoNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer;
  var ADone: Boolean);
begin
  case AButtonIndex of
    16: ExportarExpedicao;
  end;

end;

procedure Tview_ExpedicaoExpressas.txtLeituraPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  if cboCliente.ItemIndex = 0 then
  begin
    DisplayValue := '';
    ErrorText := 'Informe o cliente!';
    Error := True;
    Exit;
  end
  else
  begin
    if DisplayValue <> '' then
    begin
      LocalizaPedido(DisplayValue,cboCliente.ItemIndex,chkDANFE.Checked);
    end;
  end;
  DisplayValue := '';
  txtLeitura.SetFocus;
end;

end.
