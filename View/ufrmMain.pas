unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxBar, cxClasses, System.Actions, Vcl.ActnList,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsdxStatusBarPainter, dxStatusBar;

type
  Tview_Main = class(TForm)
    actMain: TActionList;
    actCadastroAgentes: TAction;
    actCadastroEntregadores: TAction;
    actCadastroClientes: TAction;
    actCadastroProdutos: TAction;
    actCadastroServicos: TAction;
    actCadastroVeiculos: TAction;
    actCadastroVerbasExpressas: TAction;
    actCadastroVerbaTiragem: TAction;
    actImportarEntregas: TAction;
    actImportarBaixas: TAction;
    actImportarAbastecimentos: TAction;
    actImportarFinanceiro: TAction;
    actImportarTiragem: TAction;
    actCadastroVerbaCEP: TAction;
    actArquivoArquivar: TAction;
    actArquivoSair: TAction;
    actExpressasEntregas: TAction;
    actExpressasExtravios: TAction;
    actExpressasResumoEntregas: TAction;
    actOperacaoMalote: TAction;
    actOperacaoOrdemServico: TAction;
    actOperacaoAbastecimentos: TAction;
    actOperacaoControleKM: TAction;
    actFinanceiroLancamentos: TAction;
    actFinanceiroRestricoes: TAction;
    actFinanceiroFechamentoExpressas: TAction;
    actFinanceiroFechamentoTiragens: TAction;
    actFinanceiroExtratoAgentes: TAction;
    actFinanceiroExtratoFranquia: TAction;
    actSistemaParametros: TAction;
    actSistemaConfiguracaoImpressora: TAction;
    actSegurancaUsuario: TAction;
    actSistemaSenha: TAction;
    actSistemaTrocaUsuario: TAction;
    actSistemaHistorico: TAction;
    actSistemaMensagem: TAction;
    actOperacaoPrazoEntrega: TAction;
    actFinanceirroPlanilhaCrerdito: TAction;
    actOperacaoAcompanhamento: TAction;
    actFinanceiroContasReceber: TAction;
    actCadastroCentroCusto: TAction;
    actExpressasAtribuicoes: TAction;
    actExpressasRecepcaoHermes: TAction;
    actExpressasRetornoBaixa: TAction;
    actCadastroGruposVerbas: TAction;
    actSegurancaGruposUsuarios: TAction;
    actOperacaoExpectativas: TAction;
    actOperacaoDevolucaoBase: TAction;
    actOperacaoRetirada: TAction;
    actOperacaoReceberContainer: TAction;
    actCadastroLacres: TAction;
    actExpressasAcareacoes: TAction;
    actJornalAgentes: TAction;
    actJornalProdutos: TAction;
    actJornalAssinante: TAction;
    actJornalImportarEtiquetas: TAction;
    actJornalEtiquetas: TAction;
    actJornalAtribuicoes: TAction;
    actArquivoEmpresas: TAction;
    actJornalBaixaProtocolo: TAction;
    actCadastroCadastro: TAction;
    actSistemaAmbiente: TAction;
    actJornalAssinaturas: TAction;
    actJornalOcorrencias: TAction;
    actJornalRoteiros: TAction;
    actJornalOperacional: TAction;
    actFinanceiroCusteioOcorrencias: TAction;
    actCadastroFaixaPeso: TAction;
    actCadastroCepDistribuidor: TAction;
    actRecados: TAction;
    actTransporteInsumos: TAction;
    actEstoquesInsumos: TAction;
    actCadastroItensManutencao: TAction;
    actOperacaoManutencao: TAction;
    actTabelasAuxiliares: TAction;
    bmMain: TdxBarManager;
    bmMainBar1: TdxBar;
    bmMainBar2: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarButton39: TdxBarButton;
    dxBarSubItem8: TdxBarSubItem;
    dxBarButton40: TdxBarButton;
    dxBarButton41: TdxBarButton;
    dxBarButton42: TdxBarButton;
    dxBarButton43: TdxBarButton;
    dxBarButton44: TdxBarButton;
    dxBarButton45: TdxBarButton;
    dxBarButton46: TdxBarButton;
    dxBarButton47: TdxBarButton;
    dxBarSubItem9: TdxBarSubItem;
    dxBarButton48: TdxBarButton;
    dxBarButton49: TdxBarButton;
    dxBarButton50: TdxBarButton;
    dxBarButton51: TdxBarButton;
    dxBarButton52: TdxBarButton;
    dxBarSubItem10: TdxBarSubItem;
    dxBarButton53: TdxBarButton;
    dxBarButton54: TdxBarButton;
    dxBarButton55: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarButton56: TdxBarButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarButton57: TdxBarButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    dxBarLargeButton16: TdxBarLargeButton;
    dxBarLargeButton17: TdxBarLargeButton;
    dxBarLargeButton18: TdxBarLargeButton;
    dxBarLargeButton19: TdxBarLargeButton;
    dxBarLargeButton20: TdxBarLargeButton;
    dxBarLargeButton21: TdxBarLargeButton;
    dxBarLargeButton22: TdxBarLargeButton;
    dxBarLargeButton23: TdxBarLargeButton;
    dxBarLargeButton24: TdxBarLargeButton;
    dxBarLargeButton25: TdxBarLargeButton;
    dxBarLargeButton26: TdxBarLargeButton;
    dxBarButton58: TdxBarButton;
    dxBarLargeButton27: TdxBarLargeButton;
    dxBarLargeButton28: TdxBarLargeButton;
    dxStatusBar1: TdxStatusBar;
    procedure FormShow(Sender: TObject);
    procedure actArquivoSairExecute(Sender: TObject);
  private
    { Private declarations }
    function CriarForm(FormClass : TFormClass): TForm;
  public
    { Public declarations }
  end;

var
  view_Main: Tview_Main;

implementation

{$R *.dfm}

uses data.dm;

procedure Tview_Main.actArquivoSairExecute(Sender: TObject);
begin

  Close;
end;

procedure Tview_Main.FormShow(Sender: TObject);
begin

  Self.Top    :=  0;
  Self.Left   :=  0;
  Self.Height :=  Screen.WorkAreaHeight;
  Self.Width  :=  Screen.WorkAreaWidth;
end;

function Tview_Main.CriarForm(FormClass : TFormClass): TForm;
var
  I: Integer;
  // MnuJanela: TMenuItem;
begin
  Result := nil;
  for I := 0 to Screen.FormCount - 1 do
  begin
    if Screen.Forms[I] is FormClass then
    begin
      Result := Screen.Forms[I];
    end;
  end;
  if Result = nil then
  begin
    { CASO O FORM AINDA NÃO FOI CRIADO ENTRA NO BLOCO E CRIA O FORM + ITEM NO MENU }
    { EVITA A MAXIMIZAÇÃO INDESEJADO DO FORM }
    LockWindowUpdate(Handle);
    { CRIA O FORM }
    Application.CreateForm(FormClass, Result);
    LockWindowUpdate(0);
    Result.Position := poDefault;
    Result.Top := 0;

    { *2 CRIA O ITEM NO MENU JANELAS REFERENTE AO FORM CRIADO }
    { MnuJanela := TMenuItem.Create(Janelas1);
      MnuJanela.Caption := CapMnu;
      MnuJanela.OnClick := MnuRel.OnClick;
      MainMenu1.Items.Items[1].Insert(0, MnuJanela); }
  end
  { CASO O FORM JA ESTEJA NA MEORIA ENTÃO MAXIMIZA-O E O CHAMA PARA
    FRENTE DOS OUTROS FORMS }
  else
  begin
    Result.WindowState := wsNormal;
    Result.BringToFront;
    Result.SetFocus;
  END;
  Result.Show;
end;


end.
