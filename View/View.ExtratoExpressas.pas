unit View.ExtratoExpressas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxClasses, dxLayoutContainer, dxLayoutControl,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel, Data.DB, dxmdaset, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxCurrencyEdit, cxImageComboBox, cxCalendar, System.Actions, Vcl.ActnList,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, dxSkinsdxStatusBarPainter, dxStatusBar, cxProgressBar, cxGridExportLink, ShellAPI,
  cxMaskEdit, cxTextEdit, cxDropDownEdit, cxCheckBox, cxCheckComboBox, System.DateUtils, Control.ExpressasExtratos, Control.Entregas,
  Control.EntregadoresExpressas, FireDAC.Comp.DataSet, Control.Lancamentos, Control.ExtraviosMultas, Common.Utils,
  Control.Sistema, Thread.ConsolidaExtratoExpressa, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Control.FechamentoExpressas;

type
  Tview_ExtratoExpressas = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxLabel1: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    tvExtrato: TcxGridDBTableView;
    lvExtrato: TcxGridLevel;
    grdExtrato: TcxGrid;
    dxLayoutItem2: TdxLayoutItem;
    dsExtrato: TDataSource;
    aclExtrato: TActionList;
    actFechar: TAction;
    btnFechar: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    sbExtrato: TdxStatusBar;
    dxLayoutItem4: TdxLayoutItem;
    SaveDialog: TSaveDialog;
    tvExtratodat_inicio: TcxGridDBColumn;
    tvExtratodat_final: TcxGridDBColumn;
    tvExtratonum_ano: TcxGridDBColumn;
    tvExtratonum_mes: TcxGridDBColumn;
    tvExtratonum_quinzena: TcxGridDBColumn;
    tvExtratocod_base: TcxGridDBColumn;
    tvExtratonom_base: TcxGridDBColumn;
    tvExtratocod_entregador: TcxGridDBColumn;
    tvExtratonom_entregador: TcxGridDBColumn;
    tvExtratonum_extrato: TcxGridDBColumn;
    tvExtratoval_verba: TcxGridDBColumn;
    tvExtratoqtd_volumes: TcxGridDBColumn;
    tvExtratoqtd_volumes_extra: TcxGridDBColumn;
    tvExtratoval_volumes_extra: TcxGridDBColumn;
    tvExtratoqtd_entregas: TcxGridDBColumn;
    tvExtratoqtd_atraso: TcxGridDBColumn;
    tvExtratoval_performance: TcxGridDBColumn;
    tvExtratoval_producao: TcxGridDBColumn;
    tvExtratoval_creditos: TcxGridDBColumn;
    tvExtratoval_debitos: TcxGridDBColumn;
    tvExtratoval_extravios: TcxGridDBColumn;
    tvExtratoval_total_expressa: TcxGridDBColumn;
    tvExtratoval_total_empresa: TcxGridDBColumn;
    tvExtratocod_cliente: TcxGridDBColumn;
    tvExtratonom_cliente: TcxGridDBColumn;
    tvExtratodat_credito: TcxGridDBColumn;
    cboAno: TcxComboBox;
    dxLayoutItem5: TdxLayoutItem;
    cboMes: TcxComboBox;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cboQuinzena: TcxComboBox;
    dxLayoutItem7: TdxLayoutItem;
    chkProcessaAnteriores: TcxCheckBox;
    dxLayoutItem10: TdxLayoutItem;
    chkExtra: TcxCheckBox;
    dxLayoutItem11: TdxLayoutItem;
    tvClientes: TcxGridDBTableView;
    lvClientes: TcxGridLevel;
    grdClientes: TcxGrid;
    dxLayoutItem9: TdxLayoutItem;
    tvClientescod_cliente: TcxGridDBColumn;
    tvClientesnom_cliente: TcxGridDBColumn;
    tvClientesdom_check: TcxGridDBColumn;
    tvBases: TcxGridDBTableView;
    lvBases: TcxGridLevel;
    grdBases: TcxGrid;
    dxLayoutItem8: TdxLayoutItem;
    tvBasesdom_check: TcxGridDBColumn;
    tvBasescod_base: TcxGridDBColumn;
    tvBasesnom_base: TcxGridDBColumn;
    dsClientes: TDataSource;
    dsBases: TDataSource;
    actProcessar: TAction;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    actAlterarCliente: TAction;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    chkExtravios: TcxCheckBox;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    chkLancamentos: TcxCheckBox;
    dxLayoutItem15: TdxLayoutItem;
    actEncerrarExtrato: TAction;
    cxButton3: TcxButton;
    dxLayoutItem16: TdxLayoutItem;
    actCancelarExtrato: TAction;
    cxButton4: TcxButton;
    dxLayoutItem17: TdxLayoutItem;
    popMenu: TPopupMenu;
    AlterarCliente1: TMenuItem;
    actExpandir: TAction;
    acrRetrair: TAction;
    Expandir1: TMenuItem;
    Retrair1: TMenuItem;
    cboStatus: TcxComboBox;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    popMenuBases: TPopupMenu;
    actSelecionarTodasBases: TAction;
    actDesconsiderarBases: TAction;
    Selecionartodas1: TMenuItem;
    Desconsiderartodas1: TMenuItem;
    actConsolidar: TAction;
    cxButton2: TcxButton;
    dxLayoutItem18: TdxLayoutItem;
    cxLabel2: TcxLabel;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    cxButton5: TcxButton;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    actVisualizarParamatros: TAction;
    cxButton1: TcxButton;
    dxLayoutItem12: TdxLayoutItem;
    tvExtratoid_extrato: TcxGridDBColumn;
    tvExtratodes_unique_key: TcxGridDBColumn;
    procedure actFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tvExtratoNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure FormShow(Sender: TObject);
    procedure actProcessarExecute(Sender: TObject);
    procedure actAlterarClienteExecute(Sender: TObject);
    procedure actEncerrarExtratoExecute(Sender: TObject);
    procedure actCancelarExtratoExecute(Sender: TObject);
    procedure actExpandirExecute(Sender: TObject);
    procedure acrRetrairExecute(Sender: TObject);
    procedure chkExtraPropertiesChange(Sender: TObject);
    procedure actSelecionarTodasBasesExecute(Sender: TObject);
    procedure actDesconsiderarBasesExecute(Sender: TObject);
    procedure actConsolidarExecute(Sender: TObject);
    procedure actVisualizarParamatrosExecute(Sender: TObject);
    procedure cboStatusPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    procedure Exportar;
    procedure PopulamtbBases;
    procedure PopulamtbClientesEmpresa;
    procedure PopulaEntregadores;
    procedure PopulaQuinzenas;
    procedure MontaPeriodo(iAno, iMes, iQuinzena: Integer);
    procedure Start;
    procedure ProcessaExtrato;
    procedure ProcessaLancamentos(pUniqueKey: String);
    function EncerraEntregas(dtData: TDate): Boolean;
    function EncerraLancamentos(dtData: TDate): Boolean;
    function EncerraExtravios(dtData: TDate): Boolean;
    function SalvaConsolidacao(): Boolean;
    procedure ProcessaExtravios(pUniqueKey: String);
    procedure AlterarCliente;
    procedure Modo(iTipo: Integer);
    procedure SalvarExtrato(dtData: TDate);
    procedure ListaExtratoFechado;
    function ListCliente(): String;
    function ListBase(): String;
    function ValidateProcess(): Boolean;
    procedure SelecaoBases(bFlag: Integer);
    procedure Consolidacao(bForm: boolean);
    procedure ViewParametros;
    procedure ListaConsolidacao(pUniqueKey: String);
  public
    { Public declarations }
    dtDataInicial: TDate;
    dtDataFinal: TDate;
    iTipoExtrato: Integer;
  end;

var
  view_ExtratoExpressas: Tview_ExtratoExpressas;
  planilha : TThread_ConsolidaExtratoExpressa;
implementation

{$R *.dfm}

uses Data.SisGeF, FireDAC.Comp.Client, Control.Bases, Control.Parametros, View.PesquisarPessoas, Common.ENum,
  Global.Parametros, View.DataFechamento, View.ConsolidacaoExpressas;

procedure Tview_ExtratoExpressas.acrRetrairExecute(Sender: TObject);
begin
  tvExtrato.ViewData.Collapse(True);
end;

procedure Tview_ExtratoExpressas.actAlterarClienteExecute(Sender: TObject);
begin
  AlterarCliente;
end;

procedure Tview_ExtratoExpressas.actCancelarExtratoExecute(Sender: TObject);
begin
  if Data_Sisgef.mtbExtratosExpressas.Active then Data_Sisgef.mtbExtratosExpressas.Close;
  Start;
end;

procedure Tview_ExtratoExpressas.actConsolidarExecute(Sender: TObject);
begin
  Consolidacao(True);
end;

procedure Tview_ExtratoExpressas.actDesconsiderarBasesExecute(Sender: TObject);
begin
  SelecaoBases(0);
end;

procedure Tview_ExtratoExpressas.actEncerrarExtratoExecute(Sender: TObject);
var
  sMess : String;
  dtData: TDate;
begin
  if Application.MessageBox('Confirma encerrar este extrato?', 'Encerrar', MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    sMess := 'O encerramento não permitirá futuras alterações ou correções nas informações constantes ' +
             'neste extrato. Confirma realmente o encerramento do extrato?';
    if Application.MessageBox(PChar(sMess), 'Encerrar', MB_YESNO + MB_ICONQUESTION) = IDYES then
    begin
      if not Assigned(view_DataFechamento) then
      begin
        view_DataFechamento := Tview_DataFechamento.Create(Application);
      end;
      view_DataFechamento.datPagamento.Date := IncDay(dtDataFinal, 30);
      if view_DataFechamento.ShowModal = mrOk then
      begin
        dtData := view_DataFechamento.datPagamento.Date;
        SalvarExtrato(dtData);
        if EncerraEntregas(dtData) then
        begin
          if EncerraLancamentos(dtData) then
          begin
            if EncerraExtravios(dtData) then
            begin
              Application.MessageBox('Processo concluído.','Encerramento', MB_OK + MB_ICONINFORMATION);
            end;
          end;
        end;
        Consolidacao(False);
      end;
      FreeAndNil(view_DataFechamento);
    end;
  end;
end;

procedure Tview_ExtratoExpressas.actExpandirExecute(Sender: TObject);
begin
  tvExtrato.ViewData.Expand(True);
end;

procedure Tview_ExtratoExpressas.actFecharExecute(Sender: TObject);
begin
  Perform(WM_CLOSE, 0, 0);
end;

procedure Tview_ExtratoExpressas.actProcessarExecute(Sender: TObject);
begin
  if not ValidateProcess() then Exit;
  iTipoExtrato := cboStatus.ItemIndex;
  if cboStatus.ItemIndex = 1 then
  begin
    if Application.MessageBox('Confirma processar o extrato?', 'Processar Extrato', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;
    ViewParametros;
    ProcessaExtrato;
  end
  else if cboStatus.ItemIndex = 2 then
  begin
    ViewParametros;
    ListaExtratoFechado;
  end;
end;

procedure Tview_ExtratoExpressas.actSelecionarTodasBasesExecute(Sender: TObject);
begin
  SelecaoBases(1);
end;

procedure Tview_ExtratoExpressas.actVisualizarParamatrosExecute(Sender: TObject);
begin
  ViewParametros;
end;

procedure Tview_ExtratoExpressas.AlterarCliente;
var
  sMensagem: String;
begin
 if not Assigned(View_PesquisarPessoas) then
  begin
    View_PesquisarPessoas := TView_PesquisarPessoas.Create(Application);
  end;
  View_PesquisarPessoas.qryPesquisa.CreateFieldsFromDataSet(Data_Sisgef.mtbClientesEmpresa);
  View_PesquisarPessoas.qryPesquisa.LoadFromDataSet(Data_Sisgef.mtbClientesEmpresa);
  View_PesquisarPessoas.tvPesquisa.ClearItems;
  View_PesquisarPessoas.tvPesquisa.DataController.CreateAllItems;
  View_PesquisarPessoas.Caption := 'Alterar Cliente';
  View_PesquisarPessoas.tvPesquisa.Columns[1].Visible := False;
  View_PesquisarPessoas.tvPesquisa.Columns[2].Caption := 'Código';
  View_PesquisarPessoas.tvPesquisa.Columns[3].Caption := 'Nome do Cliente';
  if View_PesquisarPessoas.ShowModal = mrOk then
  begin
    sMensagem := 'Confirma alterar o cliente deste item para ' +  View_PesquisarPessoas.qryPesquisa.Fields[2].AsString +
                  ' - ' + View_PesquisarPessoas.qryPesquisa.Fields[3].AsString + '?';
    if Application.MessageBox(PChar(sMensagem),'Atenção!', MB_YESNO + MB_ICONQUESTION) = ID_YES then
    begin
      Data_Sisgef.mtbExtratosExpressas.Edit;
      Data_Sisgef.mtbExtratosExpressascod_cliente.AsInteger := View_PesquisarPessoas.qryPesquisa.Fields[2].Value;
      Data_Sisgef.mtbExtratosExpressas.Post;
    end;
  end;
  tvExtrato.ViewData.Expand(True);
  FreeAndNil(View_PesquisarPessoas);
end;

procedure Tview_ExtratoExpressas.cboStatusPropertiesChange(Sender: TObject);
begin
  dxLayoutItem8.Visible := (cboStatus.ItemIndex <> 2);
  dxLayoutItem9.Visible := (cboStatus.ItemIndex <> 2);
end;

procedure Tview_ExtratoExpressas.chkExtraPropertiesChange(Sender: TObject);
begin
  tvExtratoqtd_volumes_extra.Visible := chkExtra.Checked;
  tvExtratoval_volumes_extra.Visible := chkExtra.Checked;
end;

procedure Tview_ExtratoExpressas.Consolidacao(bForm: boolean);
var
  FFechamento: TFechamentoExpressasControl;
  sUniqueKey: String;
begin
  FFechamento := TFechamentoExpressasControl.Create();
  sUniqueKey := Data_Sisgef.mtbExtratosExpressasdes_unique_key.AsString;
  if bForm then
  begin
    if FFechamento.FechamentoExiste(sUniqueKey)  then
    begin
      ListaConsolidacao(sUniqueKey);
      Exit;
    end;
  end;
  planilha := TThread_ConsolidaExtratoExpressa.Create(True);
  planilha.FreeOnTerminate := True;
  planilha.Priority := tpNormal;
  planilha.FbGravar := bForm;
  planilha.Start;
end;

function Tview_ExtratoExpressas.EncerraEntregas(dtData: TDate): Boolean;
var
  entregas : TEntregasControl;
  aParam: Array of variant;
  sMensagem: String;
begin
  try
    Result := False;
    sbExtrato.Panels[0].Text := 'Encerrando as entregas. Aguarde ...';
    sbExtrato.Refresh;
    entregas := TEntregasControl.Create;
    Data_Sisgef.mtbExtratosExpressas.First;
    while not Data_Sisgef.mtbExtratosExpressas.Eof do
    begin
      Data_Sisgef.mtbExtratosExpressas.Edit;
      Data_Sisgef.mtbExtratosExpressasdat_credito.AsDateTime := dtData;
      Data_Sisgef.mtbExtratosExpressas.Post;
      Data_Sisgef.mtbExtratosExpressas.Next;
    end;
    Data_Sisgef.mtbExtratosExpressas.First;
    while not Data_Sisgef.mtbExtratosExpressas.Eof do
    begin
      SetLength(aParam,5);
      aParam[0] := Data_Sisgef.mtbExtratosExpressasnum_extrato.AsString;
      aParam[1] := Data_Sisgef.mtbExtratosExpressasdat_credito.AsDateTime;
      aParam[2] := Data_Sisgef.mtbExtratosExpressascod_entregador.AsInteger;
      aParam[3] := Data_Sisgef.mtbExtratosExpressasdat_inicio.AsDateTime;
      aParam[4] := Data_Sisgef.mtbExtratosExpressasdat_final.AsDateTime;
      sMensagem := '';
      if not entregas.EncerraEntregas(aParam) then
      begin
        sMensagem := 'Entregas do entregador ' + Data_Sisgef.mtbExtratosExpressascod_entregador.AsString +
                     ' não foram encerrados!';
        Application.MessageBox(PChar(sMensagem), 'Atenção', MB_OK + MB_ICONWARNING);
        Exit;
      end;
      Finalize(aParam);
      Data_Sisgef.mtbExtratosExpressas.Next;
    end;
    Result := True;
  finally
    sbExtrato.Panels[0].Text := '';
    sbExtrato.Refresh;
    entregas.Free;
  end;
end;

function Tview_ExtratoExpressas.EncerraExtravios(dtData: TDate): Boolean;
var
  extravio : TExtraviosMultasControl;
  aParam: Array of variant;
  sMensagem: String;
begin
  try
    Result := False;
    sbExtrato.Panels[0].Text := 'Encerrando os extravios. Aguarde ...';
    sbExtrato.Refresh;
    extravio := TExtraviosMultasControl.Create;
    Data_Sisgef.mtbExtratosExpressas.First;
    while not Data_Sisgef.mtbExtratosExpressas.Eof do
    begin
      if Data_Sisgef.mtbExtratosExpressasval_extravios.AsFloat < 0 then
      begin
        SetLength(aParam,2);
        aParam[0] := Data_Sisgef.mtbExtratosExpressasnum_extrato.AsString;
        aParam[1] := Data_Sisgef.mtbExtratosExpressascod_entregador.AsInteger;
        sMensagem := '';
        if not extravio.EncerraExtravio(aParam) then
        begin
          sMensagem := 'Extravios do entregador ' + Data_Sisgef.mtbExtratosExpressascod_entregador.AsString +
                       ' não foram encerrados!';
          Application.MessageBox(PChar(sMensagem), 'Atenção', MB_OK + MB_ICONWARNING);
        end;
        Finalize(aParam);
      end;
      Data_Sisgef.mtbExtratosExpressas.Next;
    end;
    Data_Sisgef.mtbExtratosExpressas.First;
    Result := True;
  finally
    sbExtrato.Panels[0].Text := '';
    sbExtrato.Refresh;
    extravio.Free;
  end;
end;

function Tview_ExtratoExpressas.EncerraLancamentos(dtData: TDate): Boolean;
var
  fdQuery1 : TFDQuery;
  entregadores: TEntregadoresExpressasControl;
  lancamento : TLancamentosControl;
  aParam: Array of variant;
  iEntregador: Integer;
  bFlag : Boolean;
  sMensagem: String;
begin
  try
    Result := True;
    sbExtrato.Panels[0].Text := 'Encerrando os lançamentos de débitos e créditos. Aguarde ...';
    sbExtrato.Refresh;
    fdQuery1 := TSistemaControl.GetInstance.Conexao.ReturnQuery();
    entregadores := TEntregadoresExpressasControl.Create;
    lancamento := TLancamentosControl.Create;
    Data_Sisgef.mtbExtratosExpressas.First;
    while not Data_Sisgef.mtbExtratosExpressas.Eof do
    begin
      bFlag := False;
      if Data_Sisgef.mtbExtratosExpressasval_creditos.AsFloat > 0 then
      begin
        bFlag := True;
      end
      else if Data_Sisgef.mtbExtratosExpressasval_debitos.AsFloat < 0 then
      begin
        bFlag := True;
      end;
      if bFlag then
      begin
        SetLength(aParam,2);
        aParam[0] := 'ENTREGADOR';
        aParam[1] :=  Data_Sisgef.mtbExtratosExpressascod_entregador.AsInteger;
        fdQuery1 := entregadores.Localizar(aParam);
        Finalize(aParam);
        if not fdQuery1.IsEmpty then
        begin
          iEntregador := fdQuery1.FieldByName('cod_cadastro').AsInteger;
        end;
        fdQuery1.Close;
        SetLength(aParam,4);
        aParam[0] := dtData;
        aParam[1] := Data_Sisgef.mtbExtratosExpressasnum_extrato.AsString;;
        aParam[2] := iEntregador;
        aParam[3] := Data_Sisgef.mtbExtratosExpressasdat_final.AsDateTime;
        sMensagem := '';
        if not lancamento.EncerraLancamentos(aParam) then
        begin
          sMensagem := 'Lancamentos do entregador ' + Data_Sisgef.mtbExtratosExpressascod_entregador.AsString +
                       ' não foram encerrados!';
          Application.MessageBox(PChar(sMensagem), 'Atenção', MB_OK + MB_ICONWARNING);
        end;
        Finalize(aParam);
      end;
      Data_Sisgef.mtbExtratosExpressas.Next;
    end;
    Result := True;
  finally
    sbExtrato.Panels[0].Text := '';
    sbExtrato.Refresh;
    fdQuery1.Free;
    entregadores.Free;
    lancamento.Free;
  end;
end;

procedure Tview_ExtratoExpressas.Exportar;
var
  FileExt, sFile: String;
begin
  if not (Data_Sisgef.mtbExtratosExpressas.Active) then
  begin
    Exit;
  end;
  if Data_Sisgef.mtbExtratosExpressas.IsEmpty then
  begin
    Exit;
  end;
  sFile := 'extrato_expressas';
  SaveDialog.FileName := sFile;
  SaveDialog.Filter := '';
  SaveDialog.Filter := 'Excel (*.xls) |*.xls|XML (*.xml) |*.xml|Arquivo Texto (*.txt) |*.txt|Página Web (*.html)|*.html';
  SaveDialog.Title := 'Exportar Dados';
  SaveDialog.DefaultExt := 'xls';
  if SaveDialog.Execute then
  begin
    if FileExists(SaveDialog.FileName) then
    begin
      if Application.MessageBox(PChar('Arquivo ' + SaveDialog.FileName + ' já existe! Sobrepor ?'), 'Atenção', MB_YESNO + MB_ICONQUESTION)  = IDNO then
      begin
        Exit;
      end;
    end;
    FileExt := LowerCase(ExtractFileExt(SaveDialog.FileName));
    if FileExt = '.xls' then
      ExportGridToExcel(SaveDialog.FileName, grdExtrato, True, True, True)
    else if FileExt = '.xml' then
      ExportGridToXML(SaveDialog.FileName, grdExtrato, False)
    else if FileExt = '.txt' then
      ExportGridToText(SaveDialog.FileName, grdExtrato, False)
    else if FileExt = '.html' then
      ExportGridToHTML(SaveDialog.FileName, grdExtrato, False);
    ShellExecute(Handle, 'open', pchar(SaveDialog.FileName), nil, nil, SW_SHOW);
  end;
end;

procedure Tview_ExtratoExpressas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Data_Sisgef.mtbBases.Active then Data_Sisgef.mtbBases.Close;
  if Data_Sisgef.mtbEntregadores.Active then Data_Sisgef.mtbEntregadores.Close;
  if Data_Sisgef.mtbExtratosExpressas.Active then Data_Sisgef.mtbExtratosExpressas.Close;
  Action := caFree;
  view_ExtratoExpressas := Nil;
end;

procedure Tview_ExtratoExpressas.FormShow(Sender: TObject);
begin
  Start;
end;

procedure Tview_ExtratoExpressas.ListaConsolidacao(pUniqueKey: String);
var
  FFechamento : TFechamentoExpressasControl;
  fdQuery : TFDQuery;
  aParam: Array of variant;
begin
  try
    FFechamento := TFechamentoExpressasControl.Create;
    fdQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery();
    SetLength(aParam, 2);
    aParam[0] := 'UK';
    aParam[1] := pUniqueKey;
    fdQuery := FFechamento.Localizar(aParam);
    if fdQuery.IsEmpty then Exit;
    if Data_Sisgef.mtbFechamentoExpressas.Active then Data_Sisgef.mtbFechamentoExpressas.Close;
    Data_Sisgef.mtbFechamentoExpressas.Open();
    Data_Sisgef.mtbFechamentoExpressas.CopyDataSet(fdQuery,[coRestart, coAppend]);
    if not Data_Sisgef.mtbFechamentoExpressas.IsEmpty then
    begin
      Data_Sisgef.mtbFechamentoExpressas.First;
      if not Assigned(view_ConsolidacaoExpressas) then
      begin
        view_ConsolidacaoExpressas := Tview_ConsolidacaoExpressas.Create(Application);
      end;
      view_ConsolidacaoExpressas.Show;
    end;
  finally
    FFechamento.Free;
    fdQuery.Free;
  end;
end;

procedure Tview_ExtratoExpressas.ListaExtratoFechado;
var
  extratos : TExpressasExtratosControl;
  iAno, iMes, iQuinzena: Integer;
  aParam: Array of variant;
  sSQL : String;
  sLista: String;
  fdQuery : TFDQUery;
begin
  try
    extratos := TExpressasExtratosControl.Create;
    fdQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery();
    iAno := StrToIntDef(cboAno.Text,YearOf(Now));
    iMes := cboMes.ItemIndex;
    iQuinzena := cboQuinzena.ItemIndex;

    MontaPeriodo(iAno,iMes,iQuinzena);

    sSQL := '';
    {sLista := ListCliente;
    if not sLista.IsEmpty then
    begin
      sSQL := 'num_ano = ' + iAno.ToString + ' and num_mes = ' + iMes.ToString + ' and num_quinzena = ' + iQuinzena.ToString +
              ' and cod_cliente in (' + sLista + ') ';
    end;
    sLista := '';
    sLista := ListBase;
    if not sLista.IsEmpty then
    begin
      if sSQL.IsEmpty then
      begin
        sSQL := 'num_ano = ' + iAno.ToString + ' and num_mes = ' + iMes.ToString + ' and num_quinzena = ' + iQuinzena.ToString +
              ' and cod_base in (' + sLista + ') ';
      end
      else
      begin
        sSQL := sSQL + 'and cod_base in (' + sLista + ') ';
      end;
    end;}
    if sSQL.IsEmpty then
    begin
      SetLength(aParam,4);
      aParam[0] := 'QUINZENA';
      aParam[1] := iAno;
      aParam[2] := iMes;
      aParam[3] := iQuinzena;
    end
    else
    begin
      SetLength(aParam,2);
      aParam[0] := 'FILTRO';
      aParam[1] := sSQL;
    end;
    fdQuery := extratos.Localizar(aParam);
    Finalize(aParam);

    if Data_Sisgef.mtbExtratosExpressas.Active then Data_Sisgef.mtbExtratosExpressas.Close;

    if fdQuery.IsEmpty then
    begin
      Application.MessageBox('Extrato não encontrado!', 'Extrato fechado', MB_OK + MB_ICONWARNING);
      Start;
      Exit;
    end;
    Data_Sisgef.mtbExtratosExpressas.Open();
    Data_Sisgef.mtbExtratosExpressas.CopyDataSet(fdQuery,[coRestart, coAppend]);
    if not Data_Sisgef.mtbExtratosExpressas.IsEmpty then Data_Sisgef.mtbExtratosExpressas.First;
    sbExtrato.Panels[1].Text := 'Período de ' + FormatDateTime('dd/mm/yyyy', dtDataInicial) + ' até ' +
                                FormatDateTime('dd/mm/yyyy', dtDataFinal);
    Modo(2);
    tvExtrato.ViewData.Expand(True);
  finally
    fdQuery.Free;
    extratos.Free;
  end;
end;

function Tview_ExtratoExpressas.ListBase: String;
var
  sLista: String;
begin
  Result := '';
  sLista := '';
  Data_Sisgef.mtbBases.First;
  while not Data_Sisgef.mtbBases.Eof do
  begin
    if Data_Sisgef.mtbBasesdom_check.AsInteger =  1 then
    begin
      if Length(sLista) > 0 then sLista := sLista + ',';
      sLista := sLista + Data_Sisgef.mtbBasescod_base.AsString;
    end;
    Data_Sisgef.mtbBases.Next;
  end;
  Result := sLista;
end;

function Tview_ExtratoExpressas.ListCliente: String;
var
  sLista: String;
begin
  Result := '';
  sLista := '';
  Data_Sisgef.mtbClientesEmpresa.First;
  while not Data_Sisgef.mtbClientesEmpresa.Eof do
  begin
    if Data_Sisgef.mtbClientesEmpresadom_check.AsInteger =  1 then
    begin
      if Length(sLista) > 0 then sLista := sLista + ',';
      sLista := sLista + Data_Sisgef.mtbClientesEmpresacod_cliente.AsString;
    end;
    Data_Sisgef.mtbClientesEmpresa.Next;
  end;
  Result := sLista;
end;

procedure Tview_ExtratoExpressas.Modo(iTipo: Integer);
begin
  if iTipo = 0 then
  begin
    actAlterarCliente.Enabled := False;
    actEncerrarExtrato.Enabled := False;
    actCancelarExtrato.Enabled:= False;
    actConsolidar.Enabled := False;
    actProcessar.Enabled := True;
  end
  else if iTipo = 1 then
  begin
    actAlterarCliente.Enabled := True;
    actEncerrarExtrato.Enabled := True;
    actCancelarExtrato.Enabled:= True;
    actConsolidar.Enabled := True;
    actProcessar.Enabled := False;
  end
  else if iTipo = 2 then
  begin
    actAlterarCliente.Enabled := False;
    actEncerrarExtrato.Enabled := False;
    actCancelarExtrato.Enabled:= True;
    actConsolidar.Enabled := True;
    actProcessar.Enabled := False;
  end;
end;

procedure Tview_ExtratoExpressas.MontaPeriodo(iAno, iMes, iQuinzena: Integer);
var
  parametros : TParametrosControl;
  FDQuery: TFDQuery;
  pParam: Array of variant;
  iDiaInicio, iDiaFinal, iMesData, iAnoData: Integer;
  sData: String;
  datData, datBase: TDate;
begin
  try
    FDquery := TSistemaControl.GetInstance().Conexao.ReturnQuery;
    parametros := TParametrosControl.Create();
    SetLength(pParam,2);

    iAnoData := iAno;
    pParam[0] := 'QUINZENA';
    pParam[1] := iQuinzena;
    FDQuery := parametros.Localizar(pParam);
    Finalize(pParam);
    if not FDQuery.IsEmpty then
    begin
      iDiaInicio := FDQuery.FieldByName('dia_inicio_quinzena').AsInteger;
      iDiaFinal := FDQuery.FieldByName('dia_final_quinzena').AsInteger;
    end
    else
    begin
      if iQuinzena = 1 then
      begin
        iDiaInicio := 1;
        iDiaFinal := 15;
      end
      else
      begin
        iDiaInicio := 16;
        sData := '01/' + FormatFloat('00', iMes) + '/' + IntToStr(iAnoData);
        iDiaFinal := DaysInMonth(StrToDate(sData));
      end;
    end;
    if iDiaInicio > iDiaFinal then
    begin
      if iMes = 1 then
      begin
        iMesData := 12;
        iAnoData := iAnoData - 1;
        sData := FormatFloat('00', iDiaInicio) + '/' + FormatFloat('00', iMesData) + '/' + FormatFloat('0000', iAnoData);
      end
      else
      begin
        iMesData := iMes - 1;
        iAnoData := iAno;
        sData := FormatFloat('00', iDiaInicio) + '/' + FormatFloat('00', iMesData) + '/' + FormatFloat('0000', iAnoData);
      end;
      dtDataInicial := StrToDate(sData);
      iMesData := iMes;
      iAnoData := iAno;
      sData := FormatFloat('00', iDiaFinal) + '/' + FormatFloat('00', iMesData) + '/' + FormatFloat('0000', iAnoData);
      dtDataFinal := StrToDate(sData);
    end
    else
    begin
      iMesData := iMes;
      iAnoData := iAno;
      sData := FormatFloat('00', iDiaInicio) + '/' + FormatFloat('00', iMesData) + '/' + FormatFloat('0000', iAnoData);
      dtDataInicial := StrToDate(sData);
      iMesData := iMes;
      iAnoData := iAno;
      if iDiaFinal = 31 then
      begin
        iDiaFinal := DaysInMonth(StrToDate(sData));
      end;
      sData := FormatFloat('00', iDiaFinal) + '/' + FormatFloat('00', iMesData) + '/' + FormatFloat('0000', iAnoData);
      dtDataFinal := StrToDate(sData);
    end;
    FDQuery.Close;
  finally
    FDQuery.Free;
    parametros.Free;
  end;end;

procedure Tview_ExtratoExpressas.PopulaEntregadores;
var
  fdQuery: TFDQuery;
  aParam: Array of variant;
  entregadores : TEntregadoresExpressasControl;
begin
  try
    entregadores := TEntregadoresExpressasControl.Create;
    fdQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery();
    if Data_Sisgef.mtbEntregadores.Active then Data_Sisgef.mtbEntregadores.Close;
    SetLength(aParam,3);
    aParam[0] := 'APOIO';
    aParam[1] := 'cod_cadastro, cod_entregador, nom_fantasia';
    aParam[2] := '';
    fdQuery :=  entregadores.Localizar(aParam);
    Finalize(aParam);
    Data_Sisgef.mtbEntregadores.Fields.Create(fdQuery);
    Data_Sisgef.mtbEntregadores.Data := fdQuery.Data;
    Data_Sisgef.mtbEntregadores.Open;
    Data_Sisgef.mtbEntregadores.First;
  finally
    fdQuery.Free;
    entregadores.Free;
  end;
end;

procedure Tview_ExtratoExpressas.PopulamtbBases;
var
  fdQuery: TFDQuery;
  aParam: Array of variant;
  bases : TBasesControl;
begin
  try
    bases := TBasesControl.Create;
    fdQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery();
    if Data_Sisgef.mtbBases.Active then Data_Sisgef.mtbBases.Close;
    SetLength(aParam,3);
    aParam[0] := 'APOIO';
    aParam[1] := '1 as dom_check, cod_agente as cod_base, nom_fantasia as nom_base';
    aParam[2] := '';
    fdQuery :=  bases.Localizar(aParam);
    Finalize(aParam);
    Data_Sisgef.mtbBases.Data := fdQuery.Data;
    Data_Sisgef.mtbBases.Open;
    Data_Sisgef.mtbBases.First;
  finally
    fdQuery.Free;
    bases.Free;
  end;
end;

procedure Tview_ExtratoExpressas.PopulamtbClientesEmpresa;
begin
  if Data_Sisgef.mtbClientesEmpresa.Active then Data_Sisgef.mtbClientesEmpresa.Close;
  Data_Sisgef.mtbClientesEmpresa.Open;
  Data_Sisgef.mtbClientesEmpresa.Insert;
  Data_Sisgef.mtbClientesEmpresadom_check.AsInteger := 0;
  Data_Sisgef.mtbClientesEmpresacod_cliente.AsInteger := 1;
  Data_Sisgef.mtbClientesEmpresanom_cliente.AsString := 'TRANSFOLHA';
  Data_Sisgef.mtbClientesEmpresa.Post;
  Data_Sisgef.mtbClientesEmpresa.Insert;
  Data_Sisgef.mtbClientesEmpresadom_check.AsInteger := 0;
  Data_Sisgef.mtbClientesEmpresacod_cliente.AsInteger := 2;
  Data_Sisgef.mtbClientesEmpresanom_cliente.AsString := 'CARRIERS';
  Data_Sisgef.mtbClientesEmpresa.Post;
  Data_Sisgef.mtbClientesEmpresa.Insert;
  Data_Sisgef.mtbClientesEmpresadom_check.AsInteger := 0;
  Data_Sisgef.mtbClientesEmpresacod_cliente.AsInteger := 3;
  Data_Sisgef.mtbClientesEmpresanom_cliente.AsString := 'SPLOG';
  Data_Sisgef.mtbClientesEmpresa.Post;
  Data_Sisgef.mtbClientesEmpresa.Insert;
  Data_Sisgef.mtbClientesEmpresadom_check.AsInteger := 0;
  Data_Sisgef.mtbClientesEmpresacod_cliente.AsInteger := 4;
  Data_Sisgef.mtbClientesEmpresanom_cliente.AsString := 'DIRECT';
  Data_Sisgef.mtbClientesEmpresa.Post;
  Data_Sisgef.mtbClientesEmpresa.First;
end;

procedure Tview_ExtratoExpressas.PopulaQuinzenas;
var
  parametros : TParametrosControl;
  fdquery : TFDQuery;
  aParam: Array of variant;
  sTexto: String;
begin
  try
    parametros := TParametrosControl.Create;
    fdQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery();
    SetLength(aParam,3);
    aParam[0] := 'APOIO';
    aParam[1] := '*';
    aParam[2] := 'order by id_parametro';
    fdQuery :=  parametros.Localizar(aParam);
    Finalize(aParam);
    cboQuinzena.Properties.Items.Clear;
    cboQuinzena.Properties.Items.Add('Selecione ...');
    sTexto := '';
    while not fdquery.Eof do
    begin
      sTexto := 'De ' + fdquery.FieldByName('dia_inicio_quinzena').AsString + ' a ';
      if fdquery.FieldByName('dia_final_quinzena').AsInteger = 31 then
      begin
        sTexto := sTexto + '28/29/30/31';
      end
      else
      begin
        sTexto := sTexto + fdquery.FieldByName('dia_final_quinzena').AsString;
      end;
      cboQuinzena.Properties.Items.Add(sTexto);
      fdquery.Next;
    end;
    cboQuinzena.ItemIndex := 0;
  finally
    parametros.Free;
    fdquery.Free;
  end;
end;

procedure Tview_ExtratoExpressas.ProcessaExtrato;
var

  entregas : TEntregasControl;
  iAno, iMes, iQuinzena: Integer;
  aParam: Array of variant;
  fdQuery : TFDQuery;
  iDias : Integer;
  dtData1: TDate;
  dtData2: TDate;
  sExtrato: String;
  sSQL : String;
  sLista: String;
  sUniqueKey: String;
begin
  try

    entregas := TEntregasControl.Create;
    fdQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery();

    sbExtrato.Panels[0].Text := 'Processando o extrato. Aguarde ...';
    sbExtrato.Panels[1].Text := '';
    sbExtrato.Refresh;
    sUniqueKey := Common.Utils.TUtils.GenerateUniqueKey('exp');
    iAno := StrToIntDef(cboAno.Text,YearOf(Now));
    iMes := cboMes.ItemIndex;
    iQuinzena := cboQuinzena.ItemIndex;

    MontaPeriodo(iAno,iMes,iQuinzena);

    if Data_Sisgef.mtbExtratosExpressas.Active then Data_Sisgef.mtbExtratosExpressas.Close;

    SetLength(aParam,9);
    aParam[0] := chkExtra.Checked;
    aParam[1] := chkProcessaAnteriores.Checked;
    aParam[2] := dtDataInicial;
    aParam[3] := dtDataFinal;
    aParam[4] := ListCliente;
    aParam[5] := ListBase;
    aParam[6] := iAno;
    aParam[7] := iMes;
    aParam[8] := iQuinzena;
    fdQuery := entregas.EntregasExtrato(aParam);
    Finalize(aParam);
    if fdQuery.IsEmpty then
    begin
      Application.MessageBox('Não existem informações de entregas neste período!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    Data_Sisgef.mtbExtratosExpressas.Open;
    Data_Sisgef.mtbExtratosExpressas.CopyDataSet(fdQuery,[coRestart, coAppend]);
    Data_Sisgef.mtbExtratosExpressas.First;
    while not Data_Sisgef.mtbExtratosExpressas.Eof do
    begin
      sExtrato := '';
      if StrToIntDef(Data_Sisgef.mtbExtratosExpressasnum_extrato.AsString,0) = 0 then
      begin
        dtData1 := StrToDate('31/12/1899');
        dtData2 := dtDataFinal;
        iDias := DaysBetween(dtData1, dtData2);
        sExtrato := IntToStr(iDias) + IntToStr(Data_Sisgef.mtbExtratosExpressascod_base.AsInteger) +
                                      IntToStr(Data_Sisgef.mtbExtratosExpressascod_entregador.AsInteger);
        Data_Sisgef.mtbExtratosExpressas.Edit;
        Data_Sisgef.mtbExtratosExpressasdat_inicio.AsDateTime := dtDataInicial;
        Data_Sisgef.mtbExtratosExpressasdat_final.AsDateTime := dtDataFinal;
        Data_Sisgef.mtbExtratosExpressasnum_extrato.AsString := sExtrato;
        Data_Sisgef.mtbExtratosExpressasdes_unique_key.AsString := sUniqueKey;
        Data_Sisgef.mtbExtratosExpressas.Post;
      end;
      Data_Sisgef.mtbExtratosExpressas.Next;
    end;
    tvExtrato.ViewData.Expand(True);
    ProcessaLancamentos(sUniqueKey);
    ProcessaExtravios(sUniqueKey);
    Modo(0);
    sbExtrato.Panels[1].Text := 'Período de ' + FormatDateTime('dd/mm/yyyy', dtDataInicial) + ' até ' +
                                FormatDateTime('dd/mm/yyyy', dtDataFinal);
    if Data_Sisgef.mtbExtratosExpressas.IsEmpty then
    begin
      Application.MessageBox('Não existem informações de entregas neste período!', 'Atenção', MB_OK + MB_ICONWARNING);
      Data_Sisgef.mtbExtratosExpressas.Close;
    end;
    Modo(1);
  finally
    sbExtrato.Panels[0].Text := '';
    sbExtrato.Refresh;
    entregas.Free;
    fdQuery.Free;
  end;
end;

procedure Tview_ExtratoExpressas.ProcessaExtravios;
var
  fdQuery : TFDQuery;
  entregadores: TEntregadoresExpressasControl;
  extravios : TExtraviosMultasControl;
  sLocate: String;
  iAno : Integer;
  iMes : Integer;
  iQuinzena : Integer;
  iAgente: Integer;
  iEntregador: Integer;
  sQuery: String;
  lLista: TStringList;
  bFlag: Boolean;
  sExtrato: String;
  iDias: Integer;
  dtData1, dtData2: TDateTime;
begin
  try
    fdQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery();
    extravios := TExtraviosMultasControl.Create;
    iAno := StrToIntDef(cboAno.Text,YearOf(Now));
    iMes := cboMes.ItemIndex;
    iQuinzena := cboQuinzena.ItemIndex;
    lLista := TStringList.Create;
    lLista.StrictDelimiter := True;
    lLista.Delimiter := ',';
    sQuery:= '';
    sQuery := ListBase;
    if not sQuery.IsEmpty then lLista.DelimitedText := sQuery + ',';
    fdQuery := extravios.ExtraviosExtrato();
    if not fdQuery.IsEmpty then fdQuery.First;
    while not fdQuery.Eof do
    begin
      bFlag := False;
      iAgente := fdQuery.FieldByName('cod_agente').AsInteger;
      iEntregador := fdQuery.FieldByName('cod_entregador').AsInteger;
      if lLista.Count > 0 then
      begin
        if lLista.IndexOf(iAgente.ToString) >= 0 then
        begin
          bFlag := True;
        end;
      end
      else
      begin
        bFlag := True
      end;
      if bFlag then
      begin
        sLocate := 'cod_entregador = ' + iEntregador.ToString;
        if Data_Sisgef.mtbExtratosExpressas.LocateEx(sLocate,[]) then
        begin
          Data_Sisgef.mtbExtratosExpressas.Edit;
          Data_Sisgef.mtbExtratosExpressasval_extravios.AsFloat := (0 - fdQuery.FieldByName('val_total').AsFloat);
          Data_Sisgef.mtbExtratosExpressas.Post
        end
        else
        begin
          sExtrato := '0';
          dtData1 := StrToDate('31/12/1899');
          dtData2 := dtDataFinal;
          iDias := DaysBetween(dtData1, dtData2);
          sExtrato := IntToStr(iDias) + IntToStr(iAgente) +
                                      IntToStr(iEntregador);
          Data_Sisgef.mtbExtratosExpressas.Insert;
          Data_Sisgef.mtbExtratosExpressasdat_inicio.AsDateTime := dtDataInicial;
          Data_Sisgef.mtbExtratosExpressasdat_final.AsDateTime := dtDataFinal;
          Data_Sisgef.mtbExtratosExpressascod_base.AsInteger := iAgente;
          Data_Sisgef.mtbExtratosExpressascod_entregador.AsInteger := iEntregador;
          Data_Sisgef.mtbExtratosExpressasnum_extrato.AsString := sExtrato;
          Data_Sisgef.mtbExtratosExpressasval_verba.AsFloat := 0;
          Data_Sisgef.mtbExtratosExpressasqtd_volumes_extra.AsFloat := 0;
          Data_Sisgef.mtbExtratosExpressasqtd_entregas.AsInteger := 0;
          Data_Sisgef.mtbExtratosExpressasqtd_atraso.AsInteger := 0;
          Data_Sisgef.mtbExtratosExpressasval_performance.AsFloat := 0;
          Data_Sisgef.mtbExtratosExpressasval_creditos.AsFloat := 0;
          Data_Sisgef.mtbExtratosExpressasval_debitos.AsFloat := 0;
          Data_Sisgef.mtbExtratosExpressasval_extravios.AsFloat := (0 - fdQuery.FieldByName('val_total').AsFloat);
          Data_Sisgef.mtbExtratosExpressascod_cliente.AsInteger := 0;
          Data_Sisgef.mtbExtratosExpressasid_extrato.AsInteger := 0;
          Data_Sisgef.mtbExtratosExpressasnum_ano.AsInteger := iAno;
          Data_Sisgef.mtbExtratosExpressasnum_mes.AsInteger := iMes;
          Data_Sisgef.mtbExtratosExpressasnum_quinzena.AsInteger := iQuinzena;
          Data_Sisgef.mtbExtratosExpressasqtd_volumes.AsInteger := 0;
          Data_Sisgef.mtbExtratosExpressasval_total_empresa.AsFloat := 0;
          Data_Sisgef.mtbExtratosExpressasdes_unique_key.AsString := pUniqueKey;
          Data_Sisgef.mtbExtratosExpressas.Post;
        end;
      end;
      fdQuery.Next;
    end;
  finally
    fdQuery.Free;
    extravios.Free;
  end;
end;

procedure Tview_ExtratoExpressas.ProcessaLancamentos(pUniqueKey: String);
var
  fdQuery : TFDQuery;
  fdQuery1: TFDQuery;
  entregadores: TEntregadoresExpressasControl;
  lancamento : TLancamentosControl;
  aParam: Array of variant;
  sLocate: String;
  iAno : Integer;
  iMes : Integer;
  iQuinzena : Integer;
  iAgente: Integer;
  iEntregador: Integer;
  lListaBase: TStringList;
  sLinha: String;
  bFlag: Boolean;
  sExtrato: String;
  dtData1, dtData2: TDate;
  iDias: integer;
begin
  try
    fdQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery();
    fdQuery1 := TSistemaControl.GetInstance.Conexao.ReturnQuery();
    entregadores := TEntregadoresExpressasControl.Create;
    lListaBase := TStringList.Create;
    lListaBase.StrictDelimiter := True;
    lListaBase.Delimiter := ',';
    sLinha := ListBase;
    lListaBase.DelimitedText := sLinha;
    lancamento := TLancamentosControl.Create;
    iAno := StrToIntDef(cboAno.Text,YearOf(Now));
    iMes := cboMes.ItemIndex;
    iQuinzena := cboQuinzena.ItemIndex;
    SetLength(aParam,1);
    aParam[0] := dtDataFinal;
    fdQuery := lancamento.ExtratoLancamentos(aParam);
    Finalize(aParam);
    if not fdQuery.IsEmpty then fdQuery.First;
    while not fdQuery.Eof do
    begin
      SetLength(aParam,2);
      aParam[0] := 'CADASTRO';
      aParam[1] := fdQuery.FieldByName('cod_entregador').AsInteger;
      fdQuery1 := entregadores.Localizar(aParam);
      Finalize(aParam);
      if not fdQuery1.IsEmpty then
      begin
        iAgente := fdQuery1.FieldByName('cod_agente').AsInteger;
        iEntregador := fdQuery1.FieldByName('cod_entregador').AsInteger;
      end;
      fdQuery1.Close;
      bFlag := True;
      if lListaBase.Count > 0 then
      begin
        if lListaBase.IndexOf(iAgente.ToString) = -1 then
        begin
          bFlag := False;
        end;
      end;
      if bFlag then
      begin
        sLocate := 'cod_entregador = ' + iEntregador.ToString;
        if Data_Sisgef.mtbExtratosExpressas.LocateEx(sLocate,[]) then
        begin
          Data_Sisgef.mtbExtratosExpressas.Edit;
          if fdquery.FieldByName('des_tipo').AsString = 'CREDITO' then
          begin
            Data_Sisgef.mtbExtratosExpressasval_creditos.AsFloat := fdQuery.FieldByName('val_total').AsFloat;
          end
          else if fdquery.FieldByName('des_tipo').AsString = 'DEBITO' then
          begin
            Data_Sisgef.mtbExtratosExpressasval_debitos.AsFloat := (0 - fdQuery.FieldByName('val_total').AsFloat);
          end;
          Data_Sisgef.mtbExtratosExpressas.Post
        end
        else
        begin
          sExtrato := '0';
          dtData1 := StrToDate('31/12/1899');
          dtData2 := dtDataFinal;
          iDias := DaysBetween(dtData1, dtData2);
          sExtrato := IntToStr(iDias) + IntToStr(iAgente) +
                                      IntToStr(iEntregador);
          Data_Sisgef.mtbExtratosExpressas.Insert;
          Data_Sisgef.mtbExtratosExpressasdat_inicio.AsDateTime := dtDataInicial;
          Data_Sisgef.mtbExtratosExpressasdat_final.AsDateTime := dtDataFinal;
          Data_Sisgef.mtbExtratosExpressascod_base.AsInteger := iAgente;
          Data_Sisgef.mtbExtratosExpressascod_entregador.AsInteger := iEntregador;
          Data_Sisgef.mtbExtratosExpressasnum_extrato.AsString := sExtrato;
          Data_Sisgef.mtbExtratosExpressasval_verba.AsFloat := 0;
          Data_Sisgef.mtbExtratosExpressasqtd_volumes_extra.AsFloat := 0;
          Data_Sisgef.mtbExtratosExpressasqtd_entregas.AsInteger := 0;
          Data_Sisgef.mtbExtratosExpressasqtd_atraso.AsInteger := 0;
          Data_Sisgef.mtbExtratosExpressasval_performance.AsFloat := 0;
          if fdquery.FieldByName('des_tipo').AsString = 'CREDITO' then
          begin
            Data_Sisgef.mtbExtratosExpressasval_creditos.AsFloat := fdQuery.FieldByName('val_total').AsFloat;
            Data_Sisgef.mtbExtratosExpressasval_debitos.AsFloat := 0;
          end
          else if fdquery.FieldByName('des_tipo').AsString = 'DEBITO' then
          begin
            Data_Sisgef.mtbExtratosExpressasval_creditos.AsFloat := 0;
            Data_Sisgef.mtbExtratosExpressasval_debitos.AsFloat := (0 - fdQuery.FieldByName('val_total').AsFloat);
          end;
          Data_Sisgef.mtbExtratosExpressasval_extravios.AsFloat := 0;
          Data_Sisgef.mtbExtratosExpressascod_cliente.AsInteger := 0;
          Data_Sisgef.mtbExtratosExpressasid_extrato.AsInteger := 0;
          Data_Sisgef.mtbExtratosExpressasnum_ano.AsInteger := iAno;
          Data_Sisgef.mtbExtratosExpressasnum_mes.AsInteger := iMes;
          Data_Sisgef.mtbExtratosExpressasnum_quinzena.AsInteger := iQuinzena;
          Data_Sisgef.mtbExtratosExpressasqtd_volumes.AsInteger := 0;
          Data_Sisgef.mtbExtratosExpressasval_total_empresa.AsFloat := 0;
          Data_Sisgef.mtbExtratosExpressasdes_unique_key.AsString := pUniqueKey;
          Data_Sisgef.mtbExtratosExpressas.Post;
        end;
      end;
      fdQuery.Next;
    end;
  finally
    fdQuery.Free;
    fdQuery1.Free;
    entregadores.Free;
    lancamento.Free;
  end;
end;

function Tview_ExtratoExpressas.SalvaConsolidacao: Boolean;
var
  FFechamento : TFechamentoExpressasControl;
begin
  try
    FFechamento := TFechamentoExpressasControl.Create;
    if not FFechamento.SaveDB(Data_Sisgef.mtbFechamentoExpressas) then
    begin
      Application.MessageBox('Consolidação NÃO foi gravada no banco de dados!', 'Atenção', MB_OK + MB_ICONWARNING);
    end
    else
    begin
      Application.MessageBox('Consolidação gravada no banco de dados!', 'Gravação', MB_OK + MB_ICONINFORMATION);
    end;
    Result := True;
  finally
    FFechamento.Free;
  end;
end;

procedure Tview_ExtratoExpressas.SalvarExtrato(dtData: TDate);
var
  fdQuery : TFDQuery;
begin
  try
    sbExtrato.Panels[0].Text := 'Salvando o Extrato. Aguarde ...';
    sbExtrato.Refresh;
    fdQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery();
    Data_Sisgef.mtbExtratosExpressas.First;
    while not Data_Sisgef.mtbExtratosExpressas.Eof do
    begin
      Data_Sisgef.mtbExtratosExpressas.Edit;
      Data_Sisgef.mtbExtratosExpressasdat_credito.asDateTime := dtData;
      Data_Sisgef.mtbExtratosExpressas.Post;
      Data_Sisgef.mtbExtratosExpressas.Next;
    end;
    fdQuery.SQL.Add('select * from expressas_extrato');
    fdQuery.Open();
    fdQuery.CopyDataSet(Data_SisGeF.mtbExtratosExpressas, [coRestart, coAppend]);
    fdQuery.Close;
  finally
    fdQuery.Free;
    sbExtrato.Panels[0].Text := '';
    sbExtrato.Refresh;
  end;
end;

procedure Tview_ExtratoExpressas.SelecaoBases(bFlag: Integer);
begin
  if not Data_Sisgef.mtbBases.Active then Exit;
  if Data_Sisgef.mtbBases.isEmpty then Exit;
  Data_Sisgef.mtbBases.First;
  while not Data_Sisgef.mtbBases.Eof do
  begin
    Data_Sisgef.mtbBases.Edit;
    Data_Sisgef.mtbBasesdom_check.asLargeInt := bFlag;
    Data_Sisgef.mtbBases.Post;
    Data_Sisgef.mtbBases.Next;
  end;
  Data_Sisgef.mtbBases.First;
end;

procedure Tview_ExtratoExpressas.Start;
var
  dtData : TDate;
begin
  dtData := IncDay(Now,-30);
  cboAno.Text := IntToStr(YearOf(dtData));
  cboMes.ItemIndex := MonthOf(dtData);
  cboStatus.ItemIndex := 0;
  chkProcessaAnteriores.Checked := False;
  chkExtra.Checked := False;
  chkExtravios.Checked := True;
  chkLancamentos.Checked := True;
  PopulamtbBases;
  PopulaEntregadores;
  PopulamtbClientesEmpresa;
  PopulaQuinzenas;
  actProcessar.Enabled := True;
  actAlterarCliente.Enabled := False;
  actEncerrarExtrato.Enabled := False;
  actCancelarExtrato.Enabled := False;
  sbExtrato.Panels[0].Text := '';
  sbExtrato.Panels[1].Text := '';
  sbExtrato.Refresh;
  Modo(0);
  if Data_Sisgef.mtbExtratosExpressas.Active then Data_Sisgef.mtbExtratosExpressas.Close;
end;

procedure Tview_ExtratoExpressas.tvExtratoNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  case AButtonIndex of
    16: Exportar;
  end;
end;

function Tview_ExtratoExpressas.ValidateProcess: Boolean;
begin
  Result := False;
  if cboAno.ItemIndex = 0 then
  begin
    Application.MessageBox('Informe o ano do extrato!', 'Atenção', MB_OK + MB_ICONWARNING);
    cboAno.SetFocus;
    Exit;
  end;
  if cboMes.ItemIndex = 0 then
  begin
    Application.MessageBox('Informe o mês do extrato!', 'Atenção', MB_OK + MB_ICONWARNING);
    cboMes.SetFocus;
    Exit;
  end;
  if cboQuinzena.ItemIndex = 0 then
  begin
    Application.MessageBox('Informe a quinzena do extrato!', 'Atenção', MB_OK + MB_ICONWARNING);
    cboQuinzena.SetFocus;
    Exit;
  end;
  if cboStatus.ItemIndex = 0 then
  begin
    Application.MessageBox('Informe Status do extrato!', 'Atenção', MB_OK + MB_ICONWARNING);
    cboStatus.SetFocus;
    Exit;
  end;
  Result := True;
end;

procedure Tview_ExtratoExpressas.ViewParametros;
begin
  dxLayoutGroup1.Visible := not dxLayoutGroup1.Visible;
  Self.Refresh;
end;

end.
