unit View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins,
  dxRibbonCustomizationForm, dxRibbon, cxClasses, dxBar, System.Actions, Vcl.ActnList,
  dxStatusBar, dxRibbonStatusBar, dxRibbonColorGallery, cxPC, dxBarBuiltInMenu, dxTabbedMDI, Control.Sistema, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxRibbonPainter, dxSkinsdxBarPainter, dxSkinscxPCPainter, Control.Usuarios, FireDAC.Comp.Client,
  Vcl.ExtCtrls, Control.Acessos, System.DateUtils, dxBarExtItems, dxNavBarOfficeNavigationBar;

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
    actCadastroVeículos: TAction;
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
  private
    { Private declarations }
    function Login(sLogin: String; sSenha: String): Boolean;
    procedure DadosUsuario;
    procedure Acessos;
    procedure AlteraSenha;
    procedure AlteraPrimeiraSenha;
    procedure TrocaUsuario;
    procedure MostraCalendario;
    function Logar(): Boolean;
    function SenhaExpirada(iDias: Integer): Boolean;
  public
    { Public declarations }
  end;

var
  view_Main: Tview_Main;
  bFlag: Boolean;

implementation

{$R *.dfm}

uses Data.SisGeF, View.Login, Global.Parametros, Common.Utils, View.CadastroUsuarios, View.CadastraSenha,
  View.Calendario, View.VerbasExpressas, View.ExtraviosMultas, View.Acareacoes, View.ImportarPedidos, View.ImportarBaixasTFO,
  View.BIPedidos, View.ControleEntregas, View.RecepcaoPedidos, View.ExpedicaoExpressas, View.EnvioRespostaCTNC,
  View.RoteirosExpressas, View.ExtratoExpressas, View.CadastroEmpresas, View.ImportaCapaFinanceiroDIRECT,
  View.AnaliseRoteirosExpressas, View.CadastroAbrangenciaExpressas, View.EntregadoresExpressasPesquisa,
  View.LancamentosExtratosExpressasPesquisa, View.ImportEDIClient;

procedure Tview_Main.Acessos;
var
  FAcessos: TAcessosControl;
  i : Integer;
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
          TAction(aclMain.Actions[i]).Visible := FAcessos.VerificaLogin(iTag, Global.Parametros.pUser_ID);
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
          bmMain.Bars[i].Visible := FAcessos.VerificaModulo(iTag, Global.Parametros.pUser_ID);
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
        dxRibbon1.Tabs[i].Visible := FAcessos.VerificaSistema(iTag, Global.Parametros.pUser_ID);
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
    view_AnaliseRoteirosExpressas := Tview_AnaliseRoteirosExpressas.Create(Application);
  end;
  view_AnaliseRoteirosExpressas.Show;
end;

procedure Tview_Main.actCadastroAbrangenciaExpressasExecute(Sender: TObject);
begin
  if not Assigned(view_CadastroAbrangenciaExpressas) then
  begin
    view_CadastroAbrangenciaExpressas := Tview_CadastroAbrangenciaExpressas.Create(Application);
  end;
  view_CadastroAbrangenciaExpressas.Show;
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
    view_EntregadoresExpressasPesquisa := Tview_EntregadoresExpressasPesquisa.Create(Application);
  end;
  view_EntregadoresExpressasPesquisa.Show;
end;

procedure Tview_Main.actCalendarioExecute(Sender: TObject);
begin
  MostraCalendario;
end;

procedure Tview_Main.actConsultaPedidosExecute(Sender: TObject);
begin
  if not Assigned(view_BIPedidos) then
  begin
    view_BIPedidos := Tview_BIPedidos.Create(Application);
  end;
  view_BIPedidos.Show;
end;

procedure Tview_Main.actControleExpressasExecute(Sender: TObject);
begin
  if not Assigned(view_ControleEntregas) then
  begin
    view_ControleEntregas := Tview_ControleEntregas.Create(Application);
  end;
  view_ControleEntregas.Show;

end;

procedure Tview_Main.actDebitoCreditoExecute(Sender: TObject);
begin
  if not Assigned(view_LancamentosExtratosExpressasPesquisa) then
  begin
    view_LancamentosExtratosExpressasPesquisa := Tview_LancamentosExtratosExpressasPesquisa.Create(Application);
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
  if not Assigned(view_ExtratoExpressas) then
  begin
    view_ExtratoExpressas := Tview_ExtratoExpressas.Create(Application);
  end;
  view_ExtratoExpressas.Show;
end;

procedure Tview_Main.actExtraviosExpressasExecute(Sender: TObject);
begin
  if not Assigned(view_ExtraviosMultas) then
  begin
    view_ExtraviosMultas := Tview_ExtraviosMultas.Create(Application);
  end;
  view_ExtraviosMultas.Show;
end;

procedure Tview_Main.actImportacaoPedidosExecute(Sender: TObject);
begin
  if not Assigned(view_ImporEDIClient) then
  begin
    view_ImporEDIClient := Tview_ImporEDIClient.Create(Application);
  end;
  view_ImporEDIClient.Show;
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
    view_ImportaCapaFinanceiroDIRECT := Tview_ImportaCapaFinanceiroDIRECT.Create(Application);
  end;
  view_ImportaCapaFinanceiroDIRECT.Show;
end;

procedure Tview_Main.actRecepcaoPedidoExecute(Sender: TObject);
begin
  if not Assigned(view_RecepcaoPedidos) then
  begin
    view_RecepcaoPedidos := Tview_RecepcaoPedidos.Create(Application);
  end;
  view_RecepcaoPedidos.Show;
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
  Fusuarios : TUsuarioControl;
begin
  try
    Fusuarios := TUsuarioControl.Create;
    if not Assigned(view_CadastraSenha) then
    begin
      view_CadastraSenha := Tview_CadastraSenha.Create(Application);
    end;
    view_CadastraSenha.Caption := 'Alterar a Senha Provisória';
    view_CadastraSenha.cxPrimeiroAcesso.Checked := False;
    view_CadastraSenha.cxPrimeiroAcesso.Visible := False;
    if view_CadastraSenha.ShowModal = mrOk then
    begin
      Fusuarios.Usuarios.Senha := view_CadastraSenha.cxSenha.Text;
      Fusuarios.Usuarios.PrimeiroAcesso := view_CadastraSenha.cxPrimeiroAcesso.EditValue;
      Fusuarios.Usuarios.DataSenha := Now;
      Fusuarios.Usuarios.Executor := Global.Parametros.pUser_Name;
      Fusuarios.Usuarios.Manutencao := Now;
      Fusuarios.Usuarios.Codigo := Global.Parametros.pUser_ID;
      Fusuarios.Usuarios.PrimeiroAcesso := 'N';
      if not FUsuarios.AlteraSenha(FUsuarios.Usuarios) then
      begin
        Application.MessageBox('Erro ao alterar a senha!', 'Erro', MB_OK + MB_ICONERROR);
      end;
    end;
    FreeAndNil(view_CadastraSenha);
  finally
    Fusuarios.Free;
  end;
end;

procedure Tview_Main.AlteraSenha;
var
  Fusuarios : TUsuarioControl;
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
      Fusuarios.Usuarios.PrimeiroAcesso := view_CadastraSenha.cxPrimeiroAcesso.EditValue;
      Fusuarios.Usuarios.DataSenha := Now;
      Fusuarios.Usuarios.Executor := Global.Parametros.pUser_Name;
      Fusuarios.Usuarios.Manutencao := Now;
      Fusuarios.Usuarios.Codigo := Global.Parametros.pUser_ID;
      if not FUsuarios.AlteraSenha(FUsuarios.Usuarios) then
      begin
        Application.MessageBox('Erro ao alterar a senha!', 'Erro', MB_OK + MB_ICONERROR);
      end;
    end;
    FreeAndNil(view_CadastraSenha);
  finally
    Fusuarios.Free;
  end;
end;

procedure Tview_Main.DadosUsuario;
var
  FDQuery : TFDQuery;
  usuarios: TUsuarioControl;
  pParam: array of variant;
  sPrimeiroAcesso: String;
  bExpira: Boolean;
  iDias: Integer;
begin
  try
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    usuarios := TUsuarioControl.Create;
    iDias := 0;
    SetLength(pParam,2);
    if Pos('@',Global.Parametros.pUser_Name) > 0 then
    begin
      pParam[0] := 'EMAIL';
    end
    else
    begin
      pParam[0] := 'LOGIN';
    end;
    pParam[1] := Global.Parametros.pUser_Name;
    FDQuery := usuarios.Localizar(pParam);
    if not FDQuery.IsEmpty then
    begin
      Global.Parametros.pUser_ID := FDQuery.FieldByName('COD_USUARIO').AsInteger;
      Global.Parametros.pNameUser := FDQuery.FieldByName('NOM_USUARIO').AsString;
      Global.Parametros.pnivel := FDQuery.FieldByName('COD_NIVEL').AsInteger;
      Global.Parametros.pAdmin := FDQuery.FieldByName('DOM_PRIVILEGIO').AsString;
      Global.Parametros.pEmailUsuario := FDQuery.FieldByName('DES_EMAIL').AsString;
      sPrimeiroAcesso := FDQuery.FieldByName('DOM_PRIMEIRO_ACESSO').AsString;
      bExpira := (FDQuery.FieldByName('DAT_SENHA').AsDateTime <= Now());
      iDias := FDQuery.FieldByName('QTD_DIAS_EXPIRA').AsInteger;
      if sPrimeiroAcesso = 'S' then AlteraPrimeiraSenha;
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
    usuarios.Free;
    FDQuery.Free;
  end;
end;

procedure Tview_Main.dxBarCombo1Change(Sender: TObject);
begin
  if not bFlag then Exit;
  Data_SisGeF.skcmain.SkinName := dxBarCombo1.Text;
  dxRibbon1.ColorSchemeName := dxBarCombo1.Text;
  if not TSistemaControl.GetInstance().SaveParamINI('Database','Skin', IntToStr(dxBarCombo1.ItemIndex)) then
  begin
    Application.MessageBox('Erro ao salvar a configuração (SKIN)! Informe ao suporte.', 'Erro', MB_OK + MB_ICONERROR);
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
  CanClose := (Application.MessageBox('Confirma sair do sistema?', 'Sair do Sistema', MB_YESNO + MB_ICONQUESTION) = IDYES);
end;

procedure Tview_Main.FormCreate(Sender: TObject);
begin
  TSistemaControl.GetInstance();
  if not TSistemaControl.GetInstance().Start then
  begin
    Application.MessageBox('Arquivo de inicialização não foi encontrado! Entre em contato com o suporte.', 'Atenção', MB_ICONWARNING + MB_OK);
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
  bflag := True;
  dxBarCombo1.ItemIndex := StrToIntDef(Global.Parametros.pSkin,-1);
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
    Common.Utils.TUtils.GravaIni(Global.Parametros.pFileIni,'Login','LastUser',Global.Parametros.pUser_Name);
    dxRibbonStatusBar1.Panels[0].Text := 'Versão ' + Common.Utils.TUtils.VersaoExe;
    dxRibbonStatusBar1.Panels[1].Text := Global.Parametros.pServer + '/' + Global.Parametros.pDatabase;
    dxRibbonStatusBar1.Panels[2].Text := Global.Parametros.pNameUser;
    Acessos;
  end;
  FreeAndNil(view_Login);
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
    view_Login.lblSistema.Caption := 'Versão ' + Common.Utils.TUtils.VersaoExe;
    if view_Login.ShowModal = mrCancel then
    begin
      Application.Terminate;
    end
    else
    begin
      if not Login(view_Login.txtLogin.Text, view_Login.txtSenha.Text) then
      begin
        Application.MessageBox('Usuário e/ou senha incorretos!', 'Atenção', MB_OK + MB_ICONWARNING);
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
  usuarios : TUsuarioControl;
begin
  try
    usuarios := TUsuarioControl.Create;
    Result := False;
    Result := usuarios.ValidaLogin(sLogin, sSenha);
  finally
    usuarios.Free;
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
  Fusuarios : TUsuarioControl;
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
      if not FUsuarios.AlteraSenha(FUsuarios.Usuarios) then
      begin
        Application.MessageBox('Erro ao alterar a senha!', 'Erro', MB_OK + MB_ICONERROR);
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
  dxRibbonStatusBar1.Panels[3].Text := FormatDateTime('dddd, dd "de" mmmm "de" yyyy - hh:mm:ss', Now);
end;

procedure Tview_Main.TrocaUsuario;
begin
  if Application.MessageBox('Confirma trocar o usuário do atual do sistema?', 'Trocar Usuário', MB_YESNO + MB_ICONQUESTION) = idno then Exit;

  if not Assigned(view_Login) then
  begin
    view_Login := Tview_Login.Create(Application);
  end;
  view_Login.txtLogin.Text := Global.Parametros.pLastUser;
  view_Login.lblSistema.Caption := Application.Title + ' ' + 'Versão ' + Common.Utils.TUtils.VersaoExe;
  if view_Login.ShowModal = mrOk then
  begin
    if not Login(view_Login.txtLogin.Text, view_Login.txtSenha.Text) then
    begin
      Application.MessageBox('Usuário e/ou senha incorretos!', 'Atenção', MB_OK + MB_ICONWARNING);
      Application.Terminate;
    end;
    Global.Parametros.pUser_Name := view_Login.txtLogin.Text;
    Global.Parametros.pPassword := view_Login.txtSenha.Text;
    DadosUsuario;
    Common.Utils.TUtils.GravaIni(Global.Parametros.pFileIni,'Login','LastUser',Global.Parametros.pUser_Name);
    dxRibbonStatusBar1.Panels[2].Text := Global.Parametros.pNameUser;
    Acessos;
  end;
  FreeAndNil(view_Login);
end;

end.
