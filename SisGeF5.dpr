program SisGeF5;

uses
  Vcl.Forms,
  Control.Sistema in 'Control\Control.Sistema.pas',
  Common.ENum in 'Common\Common.ENum.pas',
  Common.Utils in 'Common\Common.Utils.pas',
  Global.Parametros in 'Common\Global.Parametros.pas',
  DAO.Conexao in 'DAO\DAO.Conexao.pas',
  View.Login in 'View\View.Login.pas' {view_Login},
  Control.Usuarios in 'Control\Control.Usuarios.pas',
  Model.Usuarios in 'Model\Model.Usuarios.pas',
  DAO.Usuarios in 'DAO\DAO.Usuarios.pas',
  Model.Sistemas in 'Model\Model.Sistemas.pas',
  DAO.Sistemas in 'DAO\DAO.Sistemas.pas',
  Control.Sistemas in 'Control\Control.Sistemas.pas',
  Model.Modulos in 'Model\Model.Modulos.pas',
  DAO.Modulos in 'DAO\DAO.Modulos.pas',
  Control.Modulos in 'Control\Control.Modulos.pas',
  Model.Menus in 'Model\Model.Menus.pas',
  DAO.Menus in 'DAO\DAO.Menus.pas',
  Control.Menus in 'Control\Control.Menus.pas',
  Model.Acessos in 'Model\Model.Acessos.pas',
  DAO.Acessos in 'DAO\DAO.Acessos.pas',
  Control.Acessos in 'Control\Control.Acessos.pas',
  Model.CadastroRH in 'Model\Model.CadastroRH.pas',
  Control.CadastroRH in 'Control\Control.CadastroRH.pas',
  View.CadastroUsuarios in 'View\View.CadastroUsuarios.pas' {view_CadastroUsuarios},
  View.PesquisarGeral in 'View\View.PesquisarGeral.pas' {View_PesquisarGeral},
  View.CadastraSenha in 'View\View.CadastraSenha.pas' {view_CadastraSenha},
  Model.CadastroEnderecos in 'Model\Model.CadastroEnderecos.pas',
  Control.CadastroEnderecos in 'Control\Control.CadastroEnderecos.pas',
  Model.CadastroContatos in 'Model\Model.CadastroContatos.pas',
  Model.CadastroFinanceiro in 'Model\Model.CadastroFinanceiro.pas',
  Control.CadastroFinanceiro in 'Control\Control.CadastroFinanceiro.pas',
  Control.CadastroContatos in 'Control\Control.CadastroContatos.pas',
  Data.SisGeF in 'Common\Data.SisGeF.pas' {Data_Sisgef: TDataModule},
  Model.Estados in 'Model\Model.Estados.pas',
  Control.Bases in 'Control\Control.Bases.pas',
  Model.Bases in 'Model\Model.Bases.pas',
  View.Calendario in 'View\View.Calendario.pas' {view_Calendario},
  Control.Estados in 'Control\Control.Estados.pas',
  View.VerbasExpressas in 'View\View.VerbasExpressas.pas' {view_Verbas_Expressas},
  Model.VerbasExpressas in 'Model\Model.VerbasExpressas.pas',
  DAO.VerbasExpressasDAO in 'DAO\DAO.VerbasExpressasDAO.pas',
  Control.VerbasExpressas in 'Control\Control.VerbasExpressas.pas',
  Model.TiposVerbasExpressas in 'Model\Model.TiposVerbasExpressas.pas',
  DAO.TiposVerbasExpressas in 'DAO\DAO.TiposVerbasExpressas.pas',
  Control.TiposVerbasExpressas in 'Control\Control.TiposVerbasExpressas.pas',
  Control.ExtraviosMultas in 'Control\Control.ExtraviosMultas.pas',
  View.ExtraviosMultas in 'View\View.ExtraviosMultas.pas' {view_ExtraviosMultas},
  View.ImportacaoPlanilhaExtravios in 'View\View.ImportacaoPlanilhaExtravios.pas' {view_ImportacaoPlanilhaExtravios},
  DAO.Lancamentos in 'DAO\DAO.Lancamentos.pas',
  DAO.Cadastro in 'DAO\DAO.Cadastro.pas',
  TFO.Barras in 'Common\TFO.Barras.pas',
  Model.Cadastro in 'Model\Model.Cadastro.pas',
  Model.EntregadoresExpressas in 'Model\Model.EntregadoresExpressas.pas',
  Model.Lancamentos in 'Model\Model.Lancamentos.pas',
  Control.Cadastro in 'Control\Control.Cadastro.pas',
  Control.EntregadoresExpressas in 'Control\Control.EntregadoresExpressas.pas',
  Control.Lancamentos in 'Control\Control.Lancamentos.pas',
  View.Filtro in 'View\View.Filtro.pas' {frmFiltro},
  View.Impressao in 'View\View.Impressao.pas' {view_Impressao},
  View.Acareacoes in 'View\View.Acareacoes.pas' {view_Acareacoes},
  Control.Acareacao in 'Control\Control.Acareacao.pas',
  Model.Acareacoes in 'Model\Model.Acareacoes.pas',
  DAO.PlanilhaEntradaCarriers in 'DAO\DAO.PlanilhaEntradaCarriers.pas',
  DAO.PlanilhaEntradaSPLOG in 'DAO\DAO.PlanilhaEntradaSPLOG.pas',
  Model.PlanilhaEntradasSPLOG in 'Model\Model.PlanilhaEntradasSPLOG.pas',
  Model.PlanilhaEntradaEntregas in 'Model\Model.PlanilhaEntradaEntregas.pas',
  Control.PlanilhaEntradaEntregas in 'Control\Control.PlanilhaEntradaEntregas.pas',
  Control.PlanilhaEntradaSPLOG in 'Control\Control.PlanilhaEntradaSPLOG.pas',
  View.ImportarPedidos in 'View\View.ImportarPedidos.pas' {view_ImportarPedidos},
  DAO.DestinosTransporte in 'DAO\DAO.DestinosTransporte.pas',
  Model.DestinosTransportes in 'Model\Model.DestinosTransportes.pas',
  Control.DestinosTransportes in 'Control\Control.DestinosTransportes.pas',
  Model.Entregas in 'Model\Model.Entregas.pas',
  Control.Entregas in 'Control\Control.Entregas.pas',
  DAO.Clientes in 'DAO\DAO.Clientes.pas',
  Model.Clientes in 'Model\Model.Clientes.pas',
  Control.Clientes in 'Control\Control.Clientes.pas',
  Thread.ImportarPlanilhaEntradaSPLOG in 'Thread\Thread.ImportarPlanilhaEntradaSPLOG.pas',
  View.ImportarBaixasTFO in 'View\View.ImportarBaixasTFO.pas' {view_ImportarBaixasTFO},
  DAO.ControleBaixasTFO in 'DAO\DAO.ControleBaixasTFO.pas',
  Model.ControleBaixasTFO in 'Model\Model.ControleBaixasTFO.pas',
  Control.ControleBaixasTFO in 'Control\Control.ControleBaixasTFO.pas',
  Thread.ImportarPlanilhaEntradaEntregas in 'Thread\Thread.ImportarPlanilhaEntradaEntregas.pas',
  DAO.PlanilhaEntradaEntregas in 'DAO\DAO.PlanilhaEntradaEntregas.pas',
  Model.PlanilhaEntradaSIMExpress in 'Model\Model.PlanilhaEntradaSIMExpress.pas',
  Control.PlanilhaEntradaSimExpress in 'Control\Control.PlanilhaEntradaSimExpress.pas',
  Thread.ImportarPlanilhaEntradaCarriers in 'Thread\Thread.ImportarPlanilhaEntradaCarriers.pas',
  View.BIPedidos in 'View\View.BIPedidos.pas' {view_BIPedidos},
  View.ControleEntregas in 'View\View.ControleEntregas.pas' {view_ControleEntregas},
  Model.AtribuicoesExpressas in 'Model\Model.AtribuicoesExpressas.pas',
  DAO.AtribuicoesExpressas in 'DAO\DAO.AtribuicoesExpressas.pas',
  Control.AtribuicoesExpressas in 'Control\Control.AtribuicoesExpressas.pas',
  Model.LogradourosCEP in 'Model\Model.LogradourosCEP.pas',
  DAO.LogradourosCEP in 'DAO\DAO.LogradourosCEP.pas',
  Control.LogradourosCEP in 'Control\Control.LogradourosCEP.pas',
  Model.CidadesCEP in 'Model\Model.CidadesCEP.pas',
  DAO.CidadesCEP in 'DAO\DAO.CidadesCEP.pas',
  Control.CidadesCEP in 'Control\Control.CidadesCEP.pas',
  View.RecepcaoPedidos in 'View\View.RecepcaoPedidos.pas' {view_RecepcaoPedidos},
  Model.ExpedicaoExpressas in 'Model\Model.ExpedicaoExpressas.pas',
  Control.ExpedicaoExpressas in 'Control\Control.ExpedicaoExpressas.pas',
  View.ExpedicaoExpressas in 'View\View.ExpedicaoExpressas.pas' {view_ExpedicaoExpressas},
  View.Aviso in 'View\View.Aviso.pas' {view_Aviso},
  View.ConferenciaVolumesPedido in 'View\View.ConferenciaVolumesPedido.pas' {view_ConferenciaVolumesPedido},
  DAO.CCEPDistribuidor in 'DAO\DAO.CCEPDistribuidor.pas',
  Model.CCEPDistribuidor in 'Model\Model.CCEPDistribuidor.pas',
  Control.CCEPDistribuidor in 'Control\Control.CCEPDistribuidor.pas',
  View.EnvioRespostaCTNC in 'View\View.EnvioRespostaCTNC.pas' {view_EnvioRespostaCTNC},
  Model.ContatosBases in 'Model\Model.ContatosBases.pas',
  Control.ContatosBases in 'Control\Control.ContatosBases.pas',
  DAO.PlanilhaRespostaCTNC in 'DAO\DAO.PlanilhaRespostaCTNC.pas',
  Model.PlanilhaRespostaCTNC in 'Model\Model.PlanilhaRespostaCTNC.pas',
  Control.PlanilhaRespostaCTNC in 'Control\Control.PlanilhaRespostaCTNC.pas',
  Common.EMail in 'Common\Common.EMail.pas',
  Thread.ImportaRespostasCTNC in 'Thread\Thread.ImportaRespostasCTNC.pas',
  RoB.EnvioEmailResposta in 'RoB\RoB.EnvioEmailResposta.pas',
  Thread.ImportarPlanilhaBaixasDIRECT in 'Thread\Thread.ImportarPlanilhaBaixasDIRECT.pas',
  Model.PlanilhaBaixasDIRECT in 'Model\Model.PlanilhaBaixasDIRECT.pas',
  Control.PlanilhaBaixasDIRECT in 'Control\Control.PlanilhaBaixasDIRECT.pas',
  Thread.ImportarPlanilhaEntradaDIRECT in 'Thread\Thread.ImportarPlanilhaEntradaDIRECT.pas',
  Control.PlanilhaEntradaDIRECT in 'Control\Control.PlanilhaEntradaDIRECT.pas',
  Model.PlanilhaEntradaDIRECT in 'Model\Model.PlanilhaEntradaDIRECT.pas',
  DAO.PlanilhaEntradaDIRECT in 'DAO\DAO.PlanilhaEntradaDIRECT.pas',
  Control.Parametros in 'Control\Control.Parametros.pas',
  Model.Parametros in 'Model\Model.Parametros.pas',
  DAO.Parametros in 'DAO\DAO.Parametros.pas',
  Model.FechamentoExpressas in 'Model\Model.FechamentoExpressas.pas',
  Control.FechamentoExpressas in 'Control\Control.FechamentoExpressas.pas',
  DAO.ExtratosExpressas in 'DAO\DAO.ExtratosExpressas.pas',
  Control.ExtratosExpressas in 'Control\Control.ExtratosExpressas.pas',
  Model.RoteirosExpressas in 'Model\Model.RoteirosExpressas.pas',
  Control.RoteirosExpressas in 'Control\Control.RoteirosExpressas.pas',
  View.RoteirosExpressas in 'View\View.RoteirosExpressas.pas' {view_RoteirosExpressas},
  Model.ControleAWB in 'Model\Model.ControleAWB.pas',
  Control.ControleAWB in 'Control\Control.ControleAWB.pas',
  View.ExtratoExpressas in 'View\View.ExtratoExpressas.pas' {view_ExtratoExpressas},
  View.DataFechamento in 'View\View.DataFechamento.pas' {view_DataFechamento},
  View.FilterData in 'View\View.FilterData.pas' {view_FilterData},
  Model.FilterData in 'Model\Model.FilterData.pas',
  Control.FilterData in 'Control\Control.FilterData.pas',
  Model.ExtratosExpressas in 'Model\Model.ExtratosExpressas.pas',
  Thread.ConsolidaExtratoExpressa in 'Thread\Thread.ConsolidaExtratoExpressa.pas',
  Model.Bancos in 'Model\Model.Bancos.pas',
  Control.Bancos in 'Control\Control.Bancos.pas',
  View.ConsolidacaoExpressas in 'View\View.ConsolidacaoExpressas.pas' {view_ConsolidacaoExpressas},
  Control.CadastroGeral in 'Control\Control.CadastroGeral.pas',
  Model.CadastroGR in 'Model\Model.CadastroGR.pas',
  Control.CadastroGR in 'Control\Control.CadastroGR.pas',
  Model.CadastroHistorico in 'Model\Model.CadastroHistorico.pas',
  Control.CadastroHistorico in 'Control\Control.CadastroHistorico.pas',
  View.CadastroEmpresas in 'View\View.CadastroEmpresas.pas' {view_CadastroEmpresas},
  Model.ExpressasExtratos in 'Model\Model.ExpressasExtratos.pas',
  Control.ExpressasExtratos in 'Control\Control.ExpressasExtratos.pas',
  Model.ExtraviosMultas in 'Model\Model.ExtraviosMultas.pas',
  Model.CadastroAnexos in 'Model\Model.CadastroAnexos.pas',
  Control.CadastroAnexos in 'Control\Control.CadastroAnexos.pas',
  Model.PlanilhaBaixasTFO in 'Model\Model.PlanilhaBaixasTFO.pas',
  Control.PlanilhaBaixasTFO in 'Control\Control.PlanilhaBaixasTFO.pas',
  View.CadastroEntregadores in 'View\View.CadastroEntregadores.pas' {view_CadastroEntregadores},
  View.LancamentosExtratosExpressas in 'View\View.LancamentosExtratosExpressas.pas' {view_LancamentosExtratosExpressas},
  Model.PlanilhaEntradaTFO in 'Model\Model.PlanilhaEntradaTFO.pas',
  Control.PlanilhaEntradaTFO in 'Control\Control.PlanilhaEntradaTFO.pas',
  Thread.ImportarPedidosDIRECT in 'Thread\Thread.ImportarPedidosDIRECT.pas',
  Model.PlanilhaEntradaCarriers in 'Model\Model.PlanilhaEntradaCarriers.pas',
  Thread.ImportarPedidosSIMExpress in 'Thread\Thread.ImportarPedidosSIMExpress.pas',
  Thread.ImportarBaixasDIRECT in 'Thread\Thread.ImportarBaixasDIRECT.pas',
  Thread.ImportarBaixasTFO in 'Thread\Thread.ImportarBaixasTFO.pas',
  Thread.ImportarPedidosTFO in 'Thread\Thread.ImportarPedidosTFO.pas',
  Control.PlanilhaEntradaCarriers in 'Control\Control.PlanilhaEntradaCarriers.pas',
  Thread.ExtratoExpressas in 'Thread\Thread.ExtratoExpressas.pas',
  View.ExtratoExpressasDetalhado in 'View\View.ExtratoExpressasDetalhado.pas' {view_ExtratoExpressasDetalhado},
  View.CadastroGeral in 'View\View.CadastroGeral.pas' {view_CadastroGeral},
  Model.CadastroGeral in 'Model\Model.CadastroGeral.pas',
  View.PesquisaPessoasCRM in 'View\View.PesquisaPessoasCRM.pas' {view_PesquisaPessoasCRM},
  View.EntregadoresExpressasPesquisa in 'View\View.EntregadoresExpressasPesquisa.pas' {view_EntregadoresExpressasPesquisa},
  View.PesquisaBasesExpressas in 'View\View.PesquisaBasesExpressas.pas' {view_PesquisaBasesExpressas},
  View.PesquisarPessoas in 'View\View.PesquisarPessoas.pas' {View_PesquisarPessoas},
  View.DetalheRemessasExtrato in 'View\View.DetalheRemessasExtrato.pas' {view_DetalheRemessasExtrato},
  View.VisualizacaoPlanilha in 'View\View.VisualizacaoPlanilha.pas' {view_VisualizacaoPlanilhas},
  View.Main in 'View\View.Main.pas' {view_Main},
  Model.CapaDIRECT in 'Model\Model.CapaDIRECT.pas',
  Control.CapaDIRECT in 'Control\Control.CapaDIRECT.pas',
  Thread.ImportaAbrangencia in 'Thread\Thread.ImportaAbrangencia.pas',
  Model.EnderecosBases in 'Model\Model.EnderecosBases.pas',
  Control.EnderecosBases in 'Control\Control.EnderecosBases.pas',
  View.ListaRoteirosLivres in 'View\View.ListaRoteirosLivres.pas' {view_ListaRorteirosLivres},
  Thread.AnaliseRoteiroExpressas in 'Thread\Thread.AnaliseRoteiroExpressas.pas',
  Model.PlanilhaRoteirosExpressas in 'Model\Model.PlanilhaRoteirosExpressas.pas',
  Control.PlanilhaRoteirosExpressas in 'Control\Control.PlanilhaRoteirosExpressas.pas',
  View.AnaliseRoteirosExpressas in 'View\View.AnaliseRoteirosExpressas.pas' {view_AnaliseRoteirosExpressas},
  Thread.CapaDIRECT in 'Thread\Thread.CapaDIRECT.pas',
  Model.AbrangenciaExpressas in 'Model\Model.AbrangenciaExpressas.pas',
  Control.AbrangenciaExpressas in 'Control\Control.AbrangenciaExpressas.pas',
  View.CadastroAbrangenciaExpressas in 'View\View.CadastroAbrangenciaExpressas.pas' {view_CadastroAbrangenciaExpressas},
  Thread.ImportaCEPRoteiro in 'Thread\Thread.ImportaCEPRoteiro.pas',
  View.PesquisaEntregadoresExpressas in 'View\View.PesquisaEntregadoresExpressas.pas' {view_PesquisaEntregadoresExpressas},
  View.LancamentosExtratosExpressasPesquisa in 'View\View.LancamentosExtratosExpressasPesquisa.pas' {view_LancamentosExtratosExpressasPesquisa},
  View.FiltroGenerico in 'View\View.FiltroGenerico.pas' {view_FiltroGenerico},
  Thread.EDIClient in 'Thread\Thread.EDIClient.pas',
  View.ImportEDIClient in 'View\View.ImportEDIClient.pas' {view_ImporEDIClient},
  View.ImportaCapaFinanceiroDIRECT in 'View\View.ImportaCapaFinanceiroDIRECT.pas' {view_ImportaCapaFinanceiroDIRECT},
  Model.FinanceiroPrazosExtratos in 'Model\Model.FinanceiroPrazosExtratos.pas',
  Control.FinanceiroPrazosExtratos in 'Control\Control.FinanceiroPrazosExtratos.pas',
  View.ParametrosPrazosExtratos in 'View\View.ParametrosPrazosExtratos.pas' {view_ParametrosPrazosExtratos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Sistema Gerenciador de Faturamento';
  Application.CreateForm(TData_Sisgef, Data_Sisgef);
  Application.CreateForm(Tview_Main, view_Main);
  Application.Run;
end.
