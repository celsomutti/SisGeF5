unit View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins,
  dxRibbonCustomizationForm, dxRibbon, cxClasses, dxBar, System.Actions,
  Vcl.ActnList,
  dxStatusBar, dxRibbonStatusBar, dxRibbonColorGallery, cxPC, dxBarBuiltInMenu,
  dxTabbedMDI, Control.Sistema, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxRibbonPainter, dxSkinsdxBarPainter,
  dxSkinscxPCPainter, Control.Usuarios, FireDAC.Comp.Client,
  Vcl.ExtCtrls, Control.Acessos, System.DateUtils, dxBarExtItems,
  dxNavBarOfficeNavigationBar, View.SisGeFExtractSO, XPAdBase,
  XPAdAutoUpdate, Winapi.WinInet, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdFTP, IdException, IniFiles, ShellAPI, idftpcommon;

type
  Tview_Main = class(TForm)
    bmMain: TdxBarManager;
    bmMainBar1: TdxBar;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    aclMain: TActionList;
    actCadastroEmpresas: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    actCadastroDistribuidores: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    actCadastroCandidatos: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    actCadastroClientes: TAction;
    dxBarLargeButton4: TdxBarLargeButton;
    actCadastroVe�culos: TAction;
    dxBarLargeButton5: TdxBarLargeButton;
    dxRibbon1Tab2: TdxRibbonTab;
    actImportacaoPedidos: TAction;
    actImportarBaixasTFO: TAction;
    actConsultaPedidos: TAction;
    actAcareacoesExpressas: TAction;
    actExtraviosExpressas: TAction;
    actRecepcaoDevolucaoExpressas: TAction;
    actExtratoEntregadoresExpressas: TAction;
    actDemonstrativoIndividualExpressas: TAction;
    actDevolucaoExpressas: TAction;
    bmMainBar3: TdxBar;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    bmMainBar4: TdxBar;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    bmMainBar5: TdxBar;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxBarButton1: TdxBarButton;
    dxBarLargeButton15: TdxBarLargeButton;
    actControleLacre: TAction;
    actVerbasExpressas: TAction;
    bmMainBar6: TdxBar;
    dxBarLargeButton16: TdxBarLargeButton;
    dxRibbon1Tab3: TdxRibbonTab;
    actImportacaoTiragem: TAction;
    bmMainBar7: TdxBar;
    dxBarLargeButton17: TdxBarLargeButton;
    actRegistroOcorrencias: TAction;
    dxBarLargeButton18: TdxBarLargeButton;
    dxRibbonColorGalleryItem1: TdxRibbonColorGalleryItem;
    actAssinantesJornal: TAction;
    actEtiquetasProtocolos: TAction;
    actAssinantesRevista: TAction;
    actRecados: TAction;
    actOperacional: TAction;
    actAtribuicoesPeriodicos: TAction;
    actExtratoPeriodicos: TAction;
    actVerbasPeriodicos: TAction;
    dxBarLargeButton19: TdxBarLargeButton;
    actRoteiros: TAction;
    bmMainBar8: TdxBar;
    dxBarLargeButton20: TdxBarLargeButton;
    dxBarLargeButton21: TdxBarLargeButton;
    bmMainBar9: TdxBar;
    dxBarLargeButton22: TdxBarLargeButton;
    dxBarLargeButton23: TdxBarLargeButton;
    dxBarLargeButton24: TdxBarLargeButton;
    dxBarLargeButton25: TdxBarLargeButton;
    bmMainBar10: TdxBar;
    dxBarLargeButton26: TdxBarLargeButton;
    bmMainBar11: TdxBar;
    dxBarLargeButton27: TdxBarLargeButton;
    dxRibbon1Tab4: TdxRibbonTab;
    bmMainBar12: TdxBar;
    actCadastroServicos: TAction;
    actOrdemServico: TAction;
    actControleMalotes: TAction;
    dxBarLargeButton28: TdxBarLargeButton;
    dxBarLargeButton29: TdxBarLargeButton;
    dxBarLargeButton30: TdxBarLargeButton;
    dxRibbon1Tab5: TdxRibbonTab;
    bmMainBar13: TdxBar;
    actControleKM: TAction;
    actControleViagens: TAction;
    actControleManutencao: TAction;
    actControleAbastecimentos: TAction;
    actCadastroInsumos: TAction;
    actEstoqueInsumos: TAction;
    dxBarLargeButton31: TdxBarLargeButton;
    dxBarLargeButton32: TdxBarLargeButton;
    dxBarLargeButton33: TdxBarLargeButton;
    bmMainBar14: TdxBar;
    dxBarLargeButton34: TdxBarLargeButton;
    dxBarLargeButton35: TdxBarLargeButton;
    dxBarLargeButton36: TdxBarLargeButton;
    dxRibbon1Tab6: TdxRibbonTab;
    actImportarExtrato: TAction;
    actCadastroCentroCusto: TAction;
    actDebitoCredito: TAction;
    actContasReceber: TAction;
    actContasPagar: TAction;
    actCaixaPequeno: TAction;
    actPlanilhaCredito: TAction;
    bmMainBar15: TdxBar;
    dxBarLargeButton37: TdxBarLargeButton;
    dxBarLargeButton38: TdxBarLargeButton;
    dxBarLargeButton39: TdxBarLargeButton;
    dxBarLargeButton40: TdxBarLargeButton;
    dxBarLargeButton41: TdxBarLargeButton;
    dxBarLargeButton42: TdxBarLargeButton;
    dxBarLargeButton43: TdxBarLargeButton;
    bmMainBar16: TdxBar;
    actUsuarios: TAction;
    actAlterarSenha: TAction;
    actTrocarUsuario: TAction;
    dxRibbon1Tab7: TdxRibbonTab;
    dxBarLargeButton44: TdxBarLargeButton;
    dxBarLargeButton45: TdxBarLargeButton;
    dxBarLargeButton46: TdxBarLargeButton;
    dxBarLargeButton47: TdxBarLargeButton;
    bmMainBar17: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    actSairSistema: TAction;
    dxBarCombo1: TdxBarCombo;
    dxTabbedMDIManager: TdxTabbedMDIManager;
    Timer: TTimer;
    dxBarLargeButton48: TdxBarLargeButton;
    actCadastroFornecedores: TAction;
    dxBarLargeButton49: TdxBarLargeButton;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton3: TdxBarButton;
    actCalendario: TAction;
    actCadastroEmbarcadores: TAction;
    dxBarButton4: TdxBarButton;
    dxBarLargeButton50: TdxBarLargeButton;
    dxBarLargeButton51: TdxBarLargeButton;
    dxBarLargeButton52: TdxBarLargeButton;
    actControleExpressas: TAction;
    dxBarLargeButton53: TdxBarLargeButton;
    dxBarLargeButton54: TdxBarLargeButton;
    dxBarLargeButton55: TdxBarLargeButton;
    actRecepcaoPedido: TAction;
    actExpedicaoExpressas: TAction;
    dxBarLargeButton56: TdxBarLargeButton;
    actEnvioRespostaCTNCTFO: TAction;
    dxBarLargeButton57: TdxBarLargeButton;
    actRoteirosExpressas: TAction;
    dxBarButton5: TdxBarButton;
    dxBarLargeButton58: TdxBarLargeButton;
    dxBarLargeButton59: TdxBarLargeButton;
    bmMainBar2: TdxBar;
    dxBarLargeButton60: TdxBarLargeButton;
    bmMainBar18: TdxBar;
    actCadastroFuncionarios: TAction;
    dxBarLargeButton61: TdxBarLargeButton;
    actCadastroEntregadores: TAction;
    dxBarLargeButton62: TdxBarLargeButton;
    bmMainBar19: TdxBar;
    dxBarLargeButton63: TdxBarLargeButton;
    dxBarLargeButton64: TdxBarLargeButton;
    actCadastroContratados: TAction;
    dxBarLargeButton65: TdxBarLargeButton;
    dxBarLargeButton66: TdxBarLargeButton;
    actAnaliseRoteirosExpressas: TAction;
    actCadastroAbrangenciaExpressas: TAction;
    bmMainBar20: TdxBar;
    dxBarLargeButton67: TdxBarLargeButton;
    dxBarButton6: TdxBarButton;
    actionParametrosPrazosExtratos: TAction;
    dxBarButton7: TdxBarButton;
    dxBarLargeButton68: TdxBarLargeButton;
    actionExtratoOS: TAction;
    dxBarLargeButton69: TdxBarLargeButton;
    dxBarLargeButton70: TdxBarLargeButton;
    dxBarLargeButton71: TdxBarLargeButton;
    actFaturamentoRecebido: TAction;
    procedure actSairSistemaExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure dxBarCombo1Change(Sender: TObject);
    procedure actUsuariosExecute(Sender: TObject);
    procedure actTrocarUsuarioExecute(Sender: TObject);
    procedure actAlterarSenhaExecute(Sender: TObject);
    procedure dxRibbonStatusBar1Panels3DblClick(Sender: TObject);
    procedure actCalendarioExecute(Sender: TObject);
    procedure dxRibbonStatusBar1Panels2DblClick(Sender: TObject);
    procedure actVerbasExpressasExecute(Sender: TObject);
    procedure actExtraviosExpressasExecute(Sender: TObject);
    procedure actAcareacoesExpressasExecute(Sender: TObject);
    procedure actImportacaoPedidosExecute(Sender: TObject);
    procedure actImportarBaixasTFOExecute(Sender: TObject);
    procedure actConsultaPedidosExecute(Sender: TObject);
    procedure actControleExpressasExecute(Sender: TObject);
    procedure actRecepcaoPedidoExecute(Sender: TObject);
    procedure actExpedicaoExpressasExecute(Sender: TObject);
    procedure actEnvioRespostaCTNCTFOExecute(Sender: TObject);
    procedure actExtratoEntregadoresExpressasExecute(Sender: TObject);
    procedure actRoteirosExpressasExecute(Sender: TObject);
    procedure actCadastroEmpresasExecute(Sender: TObject);
    procedure actImportarExtratoExecute(Sender: TObject);
    procedure actCadastroEntregadoresExecute(Sender: TObject);
    procedure actAnaliseRoteirosExpressasExecute(Sender: TObject);
    procedure actCadastroAbrangenciaExpressasExecute(Sender: TObject);
    procedure actDebitoCreditoExecute(Sender: TObject);
    procedure actionParametrosPrazosExtratosExecute(Sender: TObject);
    procedure actCadastroFuncionariosExecute(Sender: TObject);
    procedure actCadastroVe�culosExecute(Sender: TObject);
    procedure actCadastroClientesExecute(Sender: TObject);
    procedure actPlanilhaCreditoExecute(Sender: TObject);
    procedure actOrdemServicoExecute(Sender: TObject);
    procedure actionExtratoOSExecute(Sender: TObject);
    procedure actImportacaoTiragemExecute(Sender: TObject);
    procedure actExtratoPeriodicosExecute(Sender: TObject);
    procedure actCadastroContratadosExecute(Sender: TObject);
    procedure actFaturamentoRecebidoExecute(Sender: TObject);
    procedure actRegistroOcorrenciasExecute(Sender: TObject);
    procedure actControleViagensExecute(Sender: TObject);

  private
    FidFTP : TIdFTP;
    function VerifyConnection(): boolean;
    function ConnectFTPServer(): boolean;
    function GetVersionFTP(): integer;
    function GetVersionLocal(): integer;
    function Login(sLogin: String; sSenha: String): Boolean;
    procedure DadosUsuario;
    procedure Acessos;
    procedure AlteraSenha;
    procedure AlteraPrimeiraSenha;
    procedure TrocaUsuario;
    procedure MostraCalendario;
    function Logar(): Boolean;
    function SenhaExpirada(iDias: Integer): Boolean;
    procedure VerificaVersao;
  public
    { Public declarations }
  end;

var
  view_Main: Tview_Main;
  bFlag: Boolean;

implementation

{$R *.dfm}

uses Data.SisGeF, View.Login, Global.Parametros, Common.Utils,
  View.CadastroUsuarios, View.CadastraSenha,
  View.Calendario, View.VerbasExpressas, View.Acareacoes, View.ImportarPedidos,
  View.ImportarBaixasTFO,
  View.ControleEntregas, View.RecepcaoPedidos, View.ExpedicaoExpressas,
  View.EnvioRespostaCTNC,
  View.RoteirosExpressas, View.ExtratoExpressas, View.CadastroEmpresas,
  View.ImportaCapaFinanceiroDIRECT,
  View.AnaliseRoteirosExpressas, View.CadastroAbrangenciaExpressas,
  View.EntregadoresExpressasPesquisa,
  View.LancamentosExtratosExpressasPesquisa, View.ParametrosPrazosExtratos,
  View.PesquisaRemessas_201040, View.ExtraviosSinistrosMultas,
  View.SisGeFEmployeeRegistration, View.SisGeFVehiclesRegistration,
  View.CadastroClientes, View.SisGeFCreditWorksheet, View.SisGeFServiceOrders,
  View.SisGeFPrintRunsImports, View.SisGeFExtractPeriodicals,
  View.SisGeFRegisterContractors, View.SisGeFNFsFaturas,
  View.SisGeFImportWorksheetExpress, View.SisGeFExpressExtract,
  View.SisGeFOcorrenciasJornal, View.SisGeFTravelControl;

procedure Tview_Main.Acessos;
var
  FAcessos: TAcessosControl;
  i: Integer;
  iTag: Integer;
begin
  try
    iTag := 0;
    FAcessos := TAcessosControl.Create;
    for i := 0 to aclMain.ActionCount - 1 do
    begin
      iTag := TAction(aclMain.Actions[i]).Tag;
      if Global.Parametros.pAdmin <> 'S' then
      begin
        if iTag > 0 then
        begin
          TAction(aclMain.Actions[i]).Visible := FAcessos.VerificaLogin(iTag,
            Global.Parametros.pUser_ID);
        end
        else
        begin
          TAction(aclMain.Actions[i]).Visible := True;
        end;
      end
      else
      begin
        TAction(aclMain.Actions[i]).Visible := True;
      end;
    end;
    for i := 0 to bmMain.Bars.Count - 1 do
    begin
      iTag := bmMain.Bars[i].Tag;
      if Global.Parametros.pAdmin <> 'S' then
      begin
        if iTag > 0 then
        begin
          bmMain.Bars[i].Visible := FAcessos.VerificaModulo(iTag,
            Global.Parametros.pUser_ID);
        end
        else
        begin
          bmMain.Bars[i].Visible := True;
        end;
      end
      else
      begin
        bmMain.Bars[i].Visible := True;
      end;
    end;
    for i := 0 to dxRibbon1.Tabs.Count - 1 do
    begin
      iTag := dxRibbon1.Tabs[i].Tag;
      if Global.Parametros.pAdmin <> 'S' then
      begin
        dxRibbon1.Tabs[i].Visible := FAcessos.VerificaSistema(iTag,
          Global.Parametros.pUser_ID);
      end
      else
      begin
        dxRibbon1.Tabs[i].Visible := True;
      end;
    end;
    for i := 0 to dxRibbon1.Tabs.Count - 1 do
    begin
      if dxRibbon1.Tabs[i].Visible then
      begin
        dxRibbon1.Tabs[i].Active := True;
        Break;
      end;
    end;

  finally
    FAcessos.Free;
  end;
end;

procedure Tview_Main.actAcareacoesExpressasExecute(Sender: TObject);
begin
  if not Assigned(view_Acareacoes) then
  begin
    view_Acareacoes := Tview_Acareacoes.Create(Application);
  end;
  view_Acareacoes.Show;
end;

procedure Tview_Main.actAlterarSenhaExecute(Sender: TObject);
begin
  AlteraSenha;
end;

procedure Tview_Main.actAnaliseRoteirosExpressasExecute(Sender: TObject);
begin
  if not Assigned(view_AnaliseRoteirosExpressas) then
  begin
    view_AnaliseRoteirosExpressas := Tview_AnaliseRoteirosExpressas.Create
      (Application);
  end;
  view_AnaliseRoteirosExpressas.Show;
end;

procedure Tview_Main.actCadastroAbrangenciaExpressasExecute(Sender: TObject);
begin
  if not Assigned(view_CadastroAbrangenciaExpressas) then
  begin
    view_CadastroAbrangenciaExpressas :=
      Tview_CadastroAbrangenciaExpressas.Create(Application);
  end;
  view_CadastroAbrangenciaExpressas.Show;
end;

procedure Tview_Main.actCadastroClientesExecute(Sender: TObject);
begin
  if not Assigned(view_CadastroClientes) then
  begin
    view_CadastroClientes := Tview_CadastroClientes.Create(Application);
  end;
  view_CadastroClientes.Show;
end;

procedure Tview_Main.actCadastroContratadosExecute(Sender: TObject);
begin
  if not Assigned(view_SisGeFRegisterContractors) then
  begin
    view_SisGeFRegisterContractors := Tview_SisGeFRegisterContractors.Create
      (Application);
  end;
  view_SisGeFRegisterContractors.Show;
end;

procedure Tview_Main.actCadastroEmpresasExecute(Sender: TObject);
begin
  if not Assigned(view_CadastroEmpresas) then
  begin
    view_CadastroEmpresas := Tview_CadastroEmpresas.Create(Application);
  end;
  view_CadastroEmpresas.Show;
end;

procedure Tview_Main.actCadastroEntregadoresExecute(Sender: TObject);
begin
  if not Assigned(view_EntregadoresExpressasPesquisa) then
  begin
    view_EntregadoresExpressasPesquisa :=
      Tview_EntregadoresExpressasPesquisa.Create(Application);
  end;
  view_EntregadoresExpressasPesquisa.Show;
end;

procedure Tview_Main.actCadastroFuncionariosExecute(Sender: TObject);
begin
  if not Assigned(view_SisGeFEmployeeRegistration) then
    view_SisGeFEmployeeRegistration := Tview_SisGeFEmployeeRegistration.Create
      (Application);
  view_SisGeFEmployeeRegistration.Show;
end;

procedure Tview_Main.actCadastroVe�culosExecute(Sender: TObject);
begin
  if not Assigned(view_SisGeFVehicleRegistration) then
  begin
    view_SisGeFVehicleRegistration := Tview_SisGeFVehicleRegistration.Create
      (Application);
  end;
  view_SisGeFVehicleRegistration.Show;
end;

procedure Tview_Main.actCalendarioExecute(Sender: TObject);
begin
  MostraCalendario;
end;

procedure Tview_Main.actConsultaPedidosExecute(Sender: TObject);
begin
  if not Assigned(view_PesquisaRemessas) then
  begin
    view_PesquisaRemessas := Tview_PesquisaRemessas.Create(Application);
  end;
  view_PesquisaRemessas.Show;
end;

procedure Tview_Main.actControleExpressasExecute(Sender: TObject);
begin
  if not Assigned(view_ControleEntregas) then
  begin
    view_ControleEntregas := Tview_ControleEntregas.Create(Application);
  end;
  view_ControleEntregas.Show;

end;

procedure Tview_Main.actControleViagensExecute(Sender: TObject);
begin
  if not Assigned(PageTravelControl) then
  begin
    PageTravelControl := TPageTravelControl.Create(Application);
  end;
  PageTravelControl.Show;
end;

procedure Tview_Main.actDebitoCreditoExecute(Sender: TObject);
begin
  if not Assigned(view_LancamentosExtratosExpressasPesquisa) then
  begin
    view_LancamentosExtratosExpressasPesquisa :=
      Tview_LancamentosExtratosExpressasPesquisa.Create(Application);
  end;
  view_LancamentosExtratosExpressasPesquisa.Show;
end;

procedure Tview_Main.actEnvioRespostaCTNCTFOExecute(Sender: TObject);
begin
  if not Assigned(view_EnvioRespostaCTNC) then
  begin
    view_EnvioRespostaCTNC := Tview_EnvioRespostaCTNC.Create(Application);
  end;
  view_EnvioRespostaCTNC.Show;
end;

procedure Tview_Main.actExpedicaoExpressasExecute(Sender: TObject);
begin
  if not Assigned(view_ExpedicaoExpressas) then
  begin
    view_ExpedicaoExpressas := Tview_ExpedicaoExpressas.Create(Application);
  end;
  view_ExpedicaoExpressas.Show;
end;

procedure Tview_Main.actExtratoEntregadoresExpressasExecute(Sender: TObject);
begin
  // if not Assigned(view_ExtratoExpressas) then
  // begin
  // view_ExtratoExpressas := Tview_ExtratoExpressas.Create(Application);
  // end;
  // view_ExtratoExpressas.Show;
  // if not Assigned(view_SisGeFExtractedExpress) then
  // begin
  // view_SisGeFExtractedExpress := Tview_SisGeFExtractedExpress.Create(Application);
  // end;
  // view_SisGeFExtractedExpress.Show;
  if not Assigned(view_SisGeFExpressExtract) then
  begin
    view_SisGeFExpressExtract := Tview_SisGeFExpressExtract.Create(Application);
  end;
  view_SisGeFExpressExtract.Show;

end;

procedure Tview_Main.actExtratoPeriodicosExecute(Sender: TObject);
begin
  if not Assigned(view_SisGeFExtractPeriodicals) then
  begin
    view_SisGeFExtractPeriodicals := Tview_SisGeFExtractPeriodicals.Create
      (Application);
  end;
  view_SisGeFExtractPeriodicals.Show;
end;

procedure Tview_Main.actExtraviosExpressasExecute(Sender: TObject);
begin
  if not Assigned(view_ExtraviosSinistrosMultas) then
  begin
    view_ExtraviosSinistrosMultas := Tview_ExtraviosSinistrosMultas.Create
      (Application);
  end;
  view_ExtraviosSinistrosMultas.Show;
end;

procedure Tview_Main.actFaturamentoRecebidoExecute(Sender: TObject);
begin
  if not Assigned(view_SisGeFNFsFaturas) then
  begin
    view_SisGeFNFsFaturas := Tview_SisGeFNFsFaturas.Create(Application);
  end;
  view_SisGeFNFsFaturas.Show;
end;

procedure Tview_Main.actImportacaoPedidosExecute(Sender: TObject);
begin
  // if not Assigned(view_ImporEDIClient) then
  // begin
  // view_ImporEDIClient := Tview_ImporEDIClient.Create(Application);
  // end;
  // view_ImporEDIClient.Show;

  if not Assigned(view_SisGeFImportWorksheetExpress) then
  begin
    view_SisGeFImportWorksheetExpress :=
      Tview_SisGeFImportWorksheetExpress.Create(Application);
  end;
  view_SisGeFImportWorksheetExpress.Show;

end;

procedure Tview_Main.actImportacaoTiragemExecute(Sender: TObject);
begin
  if not Assigned(view_SisGeFPrintRunsImports) then
  begin
    view_SisGeFPrintRunsImports := Tview_SisGeFPrintRunsImports.Create
      (Application);
  end;
  view_SisGeFPrintRunsImports.Show;
end;

procedure Tview_Main.actImportarBaixasTFOExecute(Sender: TObject);
begin
  if not Assigned(view_ImportarBaixasTFO) then
  begin
    view_ImportarBaixasTFO := Tview_ImportarBaixasTFO.Create(Application);
  end;
  view_ImportarBaixasTFO.Show;
end;

procedure Tview_Main.actImportarExtratoExecute(Sender: TObject);
begin
  if not Assigned(view_ImportaCapaFinanceiroDIRECT) then
  begin
    view_ImportaCapaFinanceiroDIRECT := Tview_ImportaCapaFinanceiroDIRECT.Create
      (Application);
  end;
  view_ImportaCapaFinanceiroDIRECT.Show;
end;

procedure Tview_Main.actionExtratoOSExecute(Sender: TObject);
begin
  if not Assigned(view_SisGeFExtractSO) then
  begin
    view_SisGeFExtractSO := Tview_SisGeFExtractSO.Create(Application);
  end;
  view_SisGeFExtractSO.Show;
end;

procedure Tview_Main.actionParametrosPrazosExtratosExecute(Sender: TObject);
begin
  if not Assigned(view_ParametrosPrazosExtratos) then
  begin
    view_ParametrosPrazosExtratos := Tview_ParametrosPrazosExtratos.Create
      (Application);
  end;
  view_ParametrosPrazosExtratos.Show;
end;

procedure Tview_Main.actOrdemServicoExecute(Sender: TObject);
begin
  if not Assigned(view_SisGeFServiceOrders) then
  begin
    view_SisGeFServiceOrders := Tview_SisGeFServiceOrders.Create(Application);
  end;
  view_SisGeFServiceOrders.Show;
end;

procedure Tview_Main.actPlanilhaCreditoExecute(Sender: TObject);
begin
  if not Assigned(view_SisGeFCreditWorksheet) then
  begin
    view_SisGeFCreditWorksheet := Tview_SisGeFCreditWorksheet.Create
      (Application);
  end;
  view_SisGeFCreditWorksheet.Show;
end;

procedure Tview_Main.actRecepcaoPedidoExecute(Sender: TObject);
begin
  if not Assigned(view_RecepcaoPedidos) then
  begin
    view_RecepcaoPedidos := Tview_RecepcaoPedidos.Create(Application);
  end;
  view_RecepcaoPedidos.Show;
end;

procedure Tview_Main.actRegistroOcorrenciasExecute(Sender: TObject);
begin
  if not Assigned(view_SisGeFOcorrenciasJornal) then
  begin
    view_SisGeFOcorrenciasJornal := Tview_SisGeFOcorrenciasJornal.Create
      (Application);
  end;
  view_SisGeFOcorrenciasJornal.Show;
end;

procedure Tview_Main.actRoteirosExpressasExecute(Sender: TObject);
begin
  if not Assigned(view_RoteirosExpressas) then
  begin
    view_RoteirosExpressas := Tview_RoteirosExpressas.Create(Application);
  end;
  view_RoteirosExpressas.Show;
end;

procedure Tview_Main.actSairSistemaExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_Main.actTrocarUsuarioExecute(Sender: TObject);
begin
  TrocaUsuario;
end;

procedure Tview_Main.actUsuariosExecute(Sender: TObject);
begin
  if not Assigned(view_CadastroUsuarios) then
  begin
    view_CadastroUsuarios := Tview_CadastroUsuarios.Create(Application);
  end;
  view_CadastroUsuarios.Show;
end;

procedure Tview_Main.actVerbasExpressasExecute(Sender: TObject);
begin
  if not Assigned(view_Verbas_Expressas) then
  begin
    view_Verbas_Expressas := Tview_Verbas_Expressas.Create(Application);
  end;
  view_Verbas_Expressas.Show;
end;

procedure Tview_Main.AlteraPrimeiraSenha;
var
  Fusuarios: TUsuarioControl;
begin
  try
    Fusuarios := TUsuarioControl.Create;
    if not Assigned(view_CadastraSenha) then
    begin
      view_CadastraSenha := Tview_CadastraSenha.Create(Application);
    end;
    view_CadastraSenha.Caption := 'Alterar a Senha Provis�ria';
    view_CadastraSenha.cxPrimeiroAcesso.Checked := False;
    view_CadastraSenha.cxPrimeiroAcesso.Visible := False;
    if view_CadastraSenha.ShowModal = mrOk then
    begin
      Fusuarios.Usuarios.Senha := view_CadastraSenha.cxSenha.Text;
      Fusuarios.Usuarios.PrimeiroAcesso :=
        view_CadastraSenha.cxPrimeiroAcesso.EditValue;
      Fusuarios.Usuarios.DataSenha := Now;
      Fusuarios.Usuarios.Executor := Global.Parametros.pUser_Name;
      Fusuarios.Usuarios.Manutencao := Now;
      Fusuarios.Usuarios.Codigo := Global.Parametros.pUser_ID;
      Fusuarios.Usuarios.PrimeiroAcesso := 'N';
      if not Fusuarios.AlteraSenha(Fusuarios.Usuarios) then
      begin
        Application.MessageBox('Erro ao alterar a senha!', 'Erro',
          MB_OK + MB_ICONERROR);
      end;
    end;
    FreeAndNil(view_CadastraSenha);
  finally
    Fusuarios.Free;
  end;
end;

procedure Tview_Main.AlteraSenha;
var
  Fusuarios: TUsuarioControl;
begin
  try
    Fusuarios := TUsuarioControl.Create;
    if not Assigned(view_CadastraSenha) then
    begin
      view_CadastraSenha := Tview_CadastraSenha.Create(Application);
    end;
    view_CadastraSenha.Caption := 'Alterar a Senha';
    view_CadastraSenha.cxPrimeiroAcesso.Checked := False;
    view_CadastraSenha.cxPrimeiroAcesso.Visible := False;
    if view_CadastraSenha.ShowModal = mrOk then
    begin
      Fusuarios.Usuarios.Senha := view_CadastraSenha.cxSenha.Text;
      Fusuarios.Usuarios.PrimeiroAcesso :=
        view_CadastraSenha.cxPrimeiroAcesso.EditValue;
      Fusuarios.Usuarios.DataSenha := Now;
      Fusuarios.Usuarios.Executor := Global.Parametros.pUser_Name;
      Fusuarios.Usuarios.Manutencao := Now;
      Fusuarios.Usuarios.Codigo := Global.Parametros.pUser_ID;
      if not Fusuarios.AlteraSenha(Fusuarios.Usuarios) then
      begin
        Application.MessageBox('Erro ao alterar a senha!', 'Erro',
          MB_OK + MB_ICONERROR);
      end;
    end;
    FreeAndNil(view_CadastraSenha);
  finally
    Fusuarios.Free;
  end;
end;

function Tview_Main.ConnectFTPServer: boolean;
begin
  FidFTP := TIdFTP.Create(Self);
  Result := False;
  FidFTP.Username     := 'alocarioca.novorioexpress.com';
  FidFTP.Password     := 'al0c@rioca';
  FidFTP.Host         := 'ftp.novorioexpress.com';
  FidFTP.Port         := 21;
  FidFTP.Passive      := True;
  FidFTP.TransferType := ftBinary;
  FidFTP.Connect;
  Result := FidFTP.Connected;
end;

procedure Tview_Main.DadosUsuario;
var
  FDQuery: TFDQuery;
  Usuarios: TUsuarioControl;
  pParam: array of variant;
  sPrimeiroAcesso: String;
  bExpira: Boolean;
  iDias: Integer;
begin
  try
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    Usuarios := TUsuarioControl.Create;
    iDias := 0;
    SetLength(pParam, 2);
    if Pos('@', Global.Parametros.pUser_Name) > 0 then
    begin
      pParam[0] := 'EMAIL';
    end
    else
    begin
      pParam[0] := 'LOGIN';
    end;
    pParam[1] := Global.Parametros.pUser_Name;
    FDQuery := Usuarios.Localizar(pParam);
    if not FDQuery.IsEmpty then
    begin
      Global.Parametros.pUser_ID := FDQuery.FieldByName('COD_USUARIO')
        .AsInteger;
      Global.Parametros.pNameUser := FDQuery.FieldByName('NOM_USUARIO')
        .AsString;
      Global.Parametros.pnivel := FDQuery.FieldByName('COD_NIVEL').AsInteger;
      Global.Parametros.pAdmin := FDQuery.FieldByName('DOM_PRIVILEGIO')
        .AsString;
      Global.Parametros.pEmailUsuario :=
        FDQuery.FieldByName('DES_EMAIL').AsString;
      sPrimeiroAcesso := FDQuery.FieldByName('DOM_PRIMEIRO_ACESSO').AsString;
      bExpira := (FDQuery.FieldByName('DAT_SENHA').AsDateTime <= Now());
      iDias := FDQuery.FieldByName('QTD_DIAS_EXPIRA').AsInteger;
      if sPrimeiroAcesso = 'S' then
        AlteraPrimeiraSenha;
      if FDQuery.FieldByName('DOM_EXPIRA').AsString = 'S' then
      begin
        if bExpira then
        begin
          if not SenhaExpirada(iDias) then
          begin
            Application.Terminate;
          end;
        end;
      end;
    end;
  finally
    Usuarios.Free;
    FDQuery.Free;
  end;
end;

procedure Tview_Main.dxBarCombo1Change(Sender: TObject);
begin
  if not bFlag then
    Exit;
  Data_SisGeF.skcmain.SkinName := dxBarCombo1.Text;
  dxRibbon1.ColorSchemeName := dxBarCombo1.Text;
  if not TSistemaControl.GetInstance().SaveParamINI('Database', 'Skin',
    IntToStr(dxBarCombo1.ItemIndex)) then
  begin
    Application.MessageBox
      ('Erro ao salvar a configura��o (SKIN)! Informe ao suporte.', 'Erro',
      MB_OK + MB_ICONERROR);
  end;
end;

procedure Tview_Main.dxRibbonStatusBar1Panels2DblClick(Sender: TObject);
begin
  TrocaUsuario;
end;

procedure Tview_Main.dxRibbonStatusBar1Panels3DblClick(Sender: TObject);
begin
  MostraCalendario;
end;

procedure Tview_Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate
end;

procedure Tview_Main.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := (Application.MessageBox('Confirma sair do sistema?',
    'Sair do Sistema', MB_YESNO + MB_ICONQUESTION) = IDYES);
end;

procedure Tview_Main.FormCreate(Sender: TObject);
begin
  TSistemaControl.GetInstance();
  if not TSistemaControl.GetInstance().Start then
  begin
    Application.MessageBox
      ('Arquivo de inicializa��o n�o foi encontrado! Entre em contato com o suporte.',
      'Aten��o', MB_ICONWARNING + MB_OK);
    Application.Terminate;
  end;
end;

procedure Tview_Main.FormShow(Sender: TObject);
var
  i: Integer;
  bLogin: Boolean;
begin
  Self.Caption := Application.Title;
  bFlag := False;
  dxBarCombo1.Items := TSistemaControl.GetInstance().LoadSkinsINI;
  bFlag := True;
  dxBarCombo1.ItemIndex := StrToIntDef(Global.Parametros.pSkin, -1);
  bLogin := False;
  for i := 1 to 3 do
  begin
    if Logar() then
    begin
      bLogin := True;
      Break;
    end;
  end;
  if not bLogin then
  begin
    Application.Terminate;
  end
  else
  begin
    DadosUsuario;
    Common.Utils.TUtils.GravaIni(Global.Parametros.pFileIni, 'Login',
      'LastUser', Global.Parametros.pUser_Name);
    Common.Utils.TUtils.GravaIni(ExtractFilePath(Application.ExeName) + 'versionLocal.ini', 'version',
      'number', Common.Utils.TUtils.VersaoExe);
    Common.Utils.TUtils.GravaIni(ExtractFilePath(Application.ExeName) + 'versionLocal.ini', 'version',
      'internalname', Common.Utils.TUtils.Sistema('InternalName'));
    dxRibbonStatusBar1.Panels[0].Text := 'Vers�o ' +
      Common.Utils.TUtils.VersaoExe;
    dxRibbonStatusBar1.Panels[1].Text := Global.Parametros.pServer + '/' +
      Global.Parametros.pDatabase;
    dxRibbonStatusBar1.Panels[2].Text := Global.Parametros.pNameUser;
    Acessos;
  end;
  FreeAndNil(view_Login);
  VerificaVersao;
end;

function Tview_Main.GetVersionFTP: integer;
var
  sNumeroVersao, sPath: string;
  oArquivoINI: TIniFile;
begin
  sPath := ExtractFilePath(Application.ExeName);
  if FileExists(sPath + 'versionFTP.ini') then
    DeleteFile(sPath + 'versionFTP.ini');

  FidFTP.Get('Download/SisGeF5/versionFTP.ini', sPath + 'versionFTP.ini', True, True);

  oArquivoINI := TIniFile.Create(sPath + 'versionFTP.ini');
  try
    sNumeroVersao := oArquivoINI.ReadString('version', 'number', EmptyStr);

    sNumeroVersao := StringReplace(sNumeroVersao, '.', EmptyStr, [rfReplaceAll]);
    result := StrToIntDef(sNumeroVersao, 0);
  finally
    oArquivoINI.Free;
  end;
end;

function Tview_Main.GetVersionLocal: integer;
var
  sNumeroVersao, sPath: string;
  oArquivoINI: TIniFile;
begin
  sPath := ExtractFilePath(Application.ExeName);
  oArquivoINI := TIniFile.Create(sPath + 'VersionLocal.ini');
  try
    sNumeroVersao := oArquivoINI.ReadString('version', 'number', EmptyStr);

    sNumeroVersao := StringReplace(sNumeroVersao, '.', EmptyStr, [rfReplaceAll]);

    result := StrToIntDef(sNumeroVersao, 0);
  finally
    FreeAndNil(oArquivoINI);
  end;
end;

function Tview_Main.Logar: Boolean;
begin
  try
    Result := False;
    if not Assigned(view_Login) then
    begin
      view_Login := Tview_Login.Create(Application);
    end;
    view_Login.Caption := Application.Title;
    view_Login.txtLogin.Text := Global.Parametros.pLastUser;
    view_Login.lblSistema.Caption := 'Vers�o ' + Common.Utils.TUtils.VersaoExe;
    if view_Login.ShowModal = mrCancel then
    begin
      Application.Terminate;
    end
    else
    begin
      if not Login(view_Login.txtLogin.Text, view_Login.txtSenha.Text) then
      begin
        Application.MessageBox('Usu�rio e/ou senha incorretos!', 'Aten��o',
          MB_OK + MB_ICONWARNING);
        Exit;
      end;
      Global.Parametros.pUser_Name := view_Login.txtLogin.Text;
      Global.Parametros.pPassword := view_Login.txtSenha.Text;
      Result := True;
    end;
    FreeAndNil(view_Login);
  finally

  end;
end;

function Tview_Main.Login(sLogin, sSenha: String): Boolean;
var
  Usuarios: TUsuarioControl;
begin
  try
    Usuarios := TUsuarioControl.Create;
    Result := False;
    Result := Usuarios.ValidaLogin(sLogin, sSenha);
  finally
    Usuarios.Free;
  end;
end;

procedure Tview_Main.MostraCalendario;
begin
  if not Assigned(view_Calendario) then
  begin
    view_Calendario := Tview_Calendario.Create(Application);
  end;
  view_Calendario.Show;
end;

function Tview_Main.SenhaExpirada(iDias: Integer): Boolean;
var
  Fusuarios: TUsuarioControl;
  dtData: TDate;
begin
  try
    Result := False;
    Fusuarios := TUsuarioControl.Create;
    if not Assigned(view_CadastraSenha) then
    begin
      view_CadastraSenha := Tview_CadastraSenha.Create(Application);
    end;
    view_CadastraSenha.Caption := 'Sua Senha Expirou';
    view_CadastraSenha.cxPrimeiroAcesso.Checked := False;
    view_CadastraSenha.cxPrimeiroAcesso.Visible := False;
    if view_CadastraSenha.ShowModal = mrOk then
    begin
      Fusuarios.Usuarios.Senha := view_CadastraSenha.cxSenha.Text;
      dtData := IncDay(Now(), iDias);
      Fusuarios.Usuarios.DataSenha := dtData;
      Fusuarios.Usuarios.Executor := Global.Parametros.pUser_Name;
      Fusuarios.Usuarios.Manutencao := Now();
      Fusuarios.Usuarios.Codigo := Global.Parametros.pUser_ID;
      Fusuarios.Usuarios.PrimeiroAcesso := 'N';
      if not Fusuarios.AlteraSenha(Fusuarios.Usuarios) then
      begin
        Application.MessageBox('Erro ao alterar a senha!', 'Erro',
          MB_OK + MB_ICONERROR);
        Exit;
      end;
    end;
    Result := True;
  finally
    FreeAndNil(view_CadastraSenha);
    Fusuarios.Free;
  end;
end;

procedure Tview_Main.TimerTimer(Sender: TObject);
begin
  dxRibbonStatusBar1.Panels[3].Text :=
    FormatDateTime('dddd, dd "de" mmmm "de" yyyy - hh:mm:ss', Now);
end;

procedure Tview_Main.TrocaUsuario;
begin
  if Application.MessageBox('Confirma trocar o usu�rio do atual do sistema?',
    'Trocar Usu�rio', MB_YESNO + MB_ICONQUESTION) = idno then
    Exit;

  if not Assigned(view_Login) then
  begin
    view_Login := Tview_Login.Create(Application);
  end;
  view_Login.txtLogin.Text := Global.Parametros.pLastUser;
  view_Login.lblSistema.Caption := Application.Title + ' ' + 'Vers�o ' +
    Common.Utils.TUtils.VersaoExe;
  if view_Login.ShowModal = mrOk then
  begin
    if not Login(view_Login.txtLogin.Text, view_Login.txtSenha.Text) then
    begin
      Application.MessageBox('Usu�rio e/ou senha incorretos!', 'Aten��o',
        MB_OK + MB_ICONWARNING);
      Application.Terminate;
    end;
    Global.Parametros.pUser_Name := view_Login.txtLogin.Text;
    Global.Parametros.pPassword := view_Login.txtSenha.Text;
    DadosUsuario;
    Common.Utils.TUtils.GravaIni(Global.Parametros.pFileIni, 'Login',
      'LastUser', Global.Parametros.pUser_Name);
    dxRibbonStatusBar1.Panels[2].Text := Global.Parametros.pNameUser;
    Acessos;
  end;
  FreeAndNil(view_Login);
end;

procedure Tview_Main.VerificaVersao;
var
  iVersionLocal, iVersionFTP: integer;
  sMessage, sInternalName: string;
begin
  sInternalName := Common.Utils.TUtils.Sistema('InternalName');
  if sInternalName = '_SisGeF5' then Exit;
  if not VerifyConnection then Exit;
  if not ConnectFTPServer then Exit;
  iVersionFTP := GetVersionFTP();
  iVersionLocal := GetVersionLocal();
  FidFTP.Disconnect;
  FidFTP.Free;
  if iVersionFTP > iVersionLocal then
  begin
    sMessage := 'Existe uma atualiza��o dispon�vel. Clique em OK para proceder com a atualiza��o ou CANCEL para n�o atualizar.';
    if MessageDlg(sMessage,mtConfirmation, [mbOK, mbCancel], 0) = mrCancel then Exit;
    WINEXEC('SysUpdate.exe',SW_Show);
    Application.Terminate;
  end;
end;

function Tview_Main.VerifyConnection(): boolean;
var
  nFlags: Cardinal;
begin
  result := InternetGetConnectedState(@nFlags, 0);
end;

end.
