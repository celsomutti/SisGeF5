program SisGeF5;

uses
  Vcl.Forms,
  Control.Sistema in 'src\Control\Control.Sistema.pas',
  Common.ENum in 'src\Common\Common.ENum.pas',
  Common.Utils in 'src\Common\Common.Utils.pas',
  Global.Parametros in 'src\Common\Global.Parametros.pas',
  DAO.Conexao in 'src\DAO\DAO.Conexao.pas',
  View.Login in 'src\View\View.Login.pas' {view_Login},
  Control.Usuarios in 'src\Control\Control.Usuarios.pas',
  Model.Usuarios in 'src\Model\Model.Usuarios.pas',
  DAO.Usuarios in 'src\DAO\DAO.Usuarios.pas',
  Model.Sistemas in 'src\Model\Model.Sistemas.pas',
  DAO.Sistemas in 'src\DAO\DAO.Sistemas.pas',
  Control.Sistemas in 'src\Control\Control.Sistemas.pas',
  Model.Modulos in 'src\Model\Model.Modulos.pas',
  DAO.Modulos in 'src\DAO\DAO.Modulos.pas',
  Control.Modulos in 'src\Control\Control.Modulos.pas',
  Model.Menus in 'src\Model\Model.Menus.pas',
  DAO.Menus in 'src\DAO\DAO.Menus.pas',
  Control.Menus in 'src\Control\Control.Menus.pas',
  Model.Acessos in 'src\Model\Model.Acessos.pas',
  DAO.Acessos in 'src\DAO\DAO.Acessos.pas',
  Control.Acessos in 'src\Control\Control.Acessos.pas',
  Model.CadastroRH in 'src\Model\Model.CadastroRH.pas',
  Control.CadastroRH in 'src\Control\Control.CadastroRH.pas',
  View.CadastroUsuarios in 'src\View\View.CadastroUsuarios.pas' {view_CadastroUsuarios},
  View.CadastraSenha in 'src\View\View.CadastraSenha.pas' {view_CadastraSenha},
  Model.CadastroEnderecos in 'src\Model\Model.CadastroEnderecos.pas',
  Control.CadastroEnderecos in 'src\Control\Control.CadastroEnderecos.pas',
  Model.CadastroContatos in 'src\Model\Model.CadastroContatos.pas',
  Model.CadastroFinanceiro in 'src\Model\Model.CadastroFinanceiro.pas',
  Control.CadastroFinanceiro in 'src\Control\Control.CadastroFinanceiro.pas',
  Control.CadastroContatos in 'src\Control\Control.CadastroContatos.pas',
  Data.SisGeF in 'src\Common\Data.SisGeF.pas' {Data_Sisgef: TDataModule},
  Model.Estados in 'src\Model\Model.Estados.pas',
  Control.Empresas in 'src\Control\Control.Empresas.pas',
  Model.Empresas in 'src\Model\Model.Empresas.pas',
  View.SisGeFCalendar in 'src\View\View.SisGeFCalendar.pas' {view_SisGeFCalendar},
  Control.Estados in 'src\Control\Control.Estados.pas',
  View.VerbasExpressas in 'src\View\View.VerbasExpressas.pas' {view_Verbas_Expressas},
  Model.VerbasExpressas in 'src\Model\Model.VerbasExpressas.pas',
  DAO.VerbasExpressasDAO in 'src\DAO\DAO.VerbasExpressasDAO.pas',
  Control.VerbasExpressas in 'src\Control\Control.VerbasExpressas.pas',
  Model.TiposVerbasExpressas in 'src\Model\Model.TiposVerbasExpressas.pas',
  DAO.TiposVerbasExpressas in 'src\DAO\DAO.TiposVerbasExpressas.pas',
  Control.TiposVerbasExpressas in 'src\Control\Control.TiposVerbasExpressas.pas',
  Control.ExtraviosMultas in 'src\Control\Control.ExtraviosMultas.pas',
  View.ImportacaoPlanilhaExtravios in 'src\View\View.ImportacaoPlanilhaExtravios.pas' {view_ImportacaoPlanilhaExtravios},
  DAO.Lancamentos in 'src\DAO\DAO.Lancamentos.pas',
  DAO.Cadastro in 'src\DAO\DAO.Cadastro.pas',
  TFO.Barras in 'src\Common\TFO.Barras.pas',
  Model.Cadastro in 'src\Model\Model.Cadastro.pas',
  Model.EntregadoresExpressas in 'src\Model\Model.EntregadoresExpressas.pas',
  Model.Lancamentos in 'src\Model\Model.Lancamentos.pas',
  Control.Cadastro in 'src\Control\Control.Cadastro.pas',
  Control.EntregadoresExpressas in 'src\Control\Control.EntregadoresExpressas.pas',
  Control.Lancamentos in 'src\Control\Control.Lancamentos.pas',
  View.Filtro in 'src\View\View.Filtro.pas' {frmFiltro},
  View.Impressao in 'src\View\View.Impressao.pas' {view_Impressao},
  View.Acareacoes in 'src\View\View.Acareacoes.pas' {view_Acareacoes},
  Control.Acareacao in 'src\Control\Control.Acareacao.pas',
  Model.Acareacoes in 'src\Model\Model.Acareacoes.pas',
  DAO.PlanilhaEntradaCarriers in 'src\DAO\DAO.PlanilhaEntradaCarriers.pas',
  DAO.PlanilhaEntradaSPLOG in 'src\DAO\DAO.PlanilhaEntradaSPLOG.pas',
  Model.PlanilhaEntradasSPLOG in 'src\Model\Model.PlanilhaEntradasSPLOG.pas',
  Model.PlanilhaEntradaEntregas in 'src\Model\Model.PlanilhaEntradaEntregas.pas',
  Control.PlanilhaEntradaEntregas in 'src\Control\Control.PlanilhaEntradaEntregas.pas',
  Control.PlanilhaEntradaSPLOG in 'src\Control\Control.PlanilhaEntradaSPLOG.pas',
  View.ImportarPedidos in 'src\View\View.ImportarPedidos.pas' {view_ImportarPedidos},
  DAO.DestinosTransporte in 'src\DAO\DAO.DestinosTransporte.pas',
  Model.DestinosTransportes in 'src\Model\Model.DestinosTransportes.pas',
  Control.DestinosTransportes in 'src\Control\Control.DestinosTransportes.pas',
  Model.Entregas in 'src\Model\Model.Entregas.pas',
  Control.Entregas in 'src\Control\Control.Entregas.pas',
  DAO.Clientes in 'src\DAO\DAO.Clientes.pas',
  Model.Clientes in 'src\Model\Model.Clientes.pas',
  Control.Clientes in 'src\Control\Control.Clientes.pas',
  Thread.ImportarPlanilhaEntradaSPLOG in 'src\Thread\Thread.ImportarPlanilhaEntradaSPLOG.pas',
  View.ImportarBaixasTFO in 'src\View\View.ImportarBaixasTFO.pas' {view_ImportarBaixasTFO},
  DAO.ControleBaixasTFO in 'src\DAO\DAO.ControleBaixasTFO.pas',
  Model.ControleBaixasTFO in 'src\Model\Model.ControleBaixasTFO.pas',
  Control.ControleBaixasTFO in 'src\Control\Control.ControleBaixasTFO.pas',
  Thread.ImportarPlanilhaEntradaEntregas in 'src\Thread\Thread.ImportarPlanilhaEntradaEntregas.pas',
  DAO.PlanilhaEntradaEntregas in 'src\DAO\DAO.PlanilhaEntradaEntregas.pas',
  Model.PlanilhaEntradaRedeForte in 'src\Model\Model.PlanilhaEntradaRedeForte.pas',
  Control.PlanilhaEntradaRedeForte in 'src\Control\Control.PlanilhaEntradaRedeForte.pas',
  Thread.ImportarPlanilhaEntradaCarriers in 'src\Thread\Thread.ImportarPlanilhaEntradaCarriers.pas',
  View.ControleEntregas in 'src\View\View.ControleEntregas.pas' {view_ControleEntregas},
  Model.AtribuicoesExpressas in 'src\Model\Model.AtribuicoesExpressas.pas',
  DAO.AtribuicoesExpressas in 'src\DAO\DAO.AtribuicoesExpressas.pas',
  Control.AtribuicoesExpressas in 'src\Control\Control.AtribuicoesExpressas.pas',
  Model.LogradourosCEP in 'src\Model\Model.LogradourosCEP.pas',
  DAO.LogradourosCEP in 'src\DAO\DAO.LogradourosCEP.pas',
  Control.LogradourosCEP in 'src\Control\Control.LogradourosCEP.pas',
  Model.CidadesCEP in 'src\Model\Model.CidadesCEP.pas',
  DAO.CidadesCEP in 'src\DAO\DAO.CidadesCEP.pas',
  Control.CidadesCEP in 'src\Control\Control.CidadesCEP.pas',
  View.RecepcaoPedidos in 'src\View\View.RecepcaoPedidos.pas' {view_RecepcaoPedidos},
  Model.ExpedicaoExpressas in 'src\Model\Model.ExpedicaoExpressas.pas',
  Control.ExpedicaoExpressas in 'src\Control\Control.ExpedicaoExpressas.pas',
  View.ExpedicaoExpressas in 'src\View\View.ExpedicaoExpressas.pas' {view_ExpedicaoExpressas},
  View.Aviso in 'src\View\View.Aviso.pas' {view_Aviso},
  View.ConferenciaVolumesPedido in 'src\View\View.ConferenciaVolumesPedido.pas' {view_ConferenciaVolumesPedido},
  DAO.CCEPDistribuidor in 'src\DAO\DAO.CCEPDistribuidor.pas',
  Model.CCEPDistribuidor in 'src\Model\Model.CCEPDistribuidor.pas',
  Control.CCEPDistribuidor in 'src\Control\Control.CCEPDistribuidor.pas',
  View.EnvioRespostaCTNC in 'src\View\View.EnvioRespostaCTNC.pas' {view_EnvioRespostaCTNC},
  Model.EmpresasContatos in 'src\Model\Model.EmpresasContatos.pas',
  Control.ContatosContatos in 'src\Control\Control.ContatosContatos.pas',
  DAO.PlanilhaRespostaCTNC in 'src\DAO\DAO.PlanilhaRespostaCTNC.pas',
  Model.PlanilhaRespostaCTNC in 'src\Model\Model.PlanilhaRespostaCTNC.pas',
  Control.PlanilhaRespostaCTNC in 'src\Control\Control.PlanilhaRespostaCTNC.pas',
  Common.EMail in 'src\Common\Common.EMail.pas',
  Thread.ImportaRespostasCTNC in 'src\Thread\Thread.ImportaRespostasCTNC.pas',
  RoB.EnvioEmailResposta in 'src\RoB\RoB.EnvioEmailResposta.pas',
  Thread.ImportarPlanilhaBaixasDIRECT in 'src\Thread\Thread.ImportarPlanilhaBaixasDIRECT.pas',
  Model.PlanilhaBaixasDIRECT in 'src\Model\Model.PlanilhaBaixasDIRECT.pas',
  Control.PlanilhaBaixasDIRECT in 'src\Control\Control.PlanilhaBaixasDIRECT.pas',
  Thread.ImportarPlanilhaEntradaDIRECT in 'src\Thread\Thread.ImportarPlanilhaEntradaDIRECT.pas',
  Control.PlanilhaEntradaDIRECT in 'src\Control\Control.PlanilhaEntradaDIRECT.pas',
  Model.PlanilhaEntradaTracking in 'src\Model\Model.PlanilhaEntradaTracking.pas',
  DAO.PlanilhaEntradaDIRECT in 'src\DAO\DAO.PlanilhaEntradaDIRECT.pas',
  Control.Parametros in 'src\Control\Control.Parametros.pas',
  Model.Parametros in 'src\Model\Model.Parametros.pas',
  DAO.Parametros in 'src\DAO\DAO.Parametros.pas',
  Model.FechamentoExpressas in 'src\Model\Model.FechamentoExpressas.pas',
  Control.FechamentoExpressas in 'src\Control\Control.FechamentoExpressas.pas',
  DAO.ExtratosExpressas in 'src\DAO\DAO.ExtratosExpressas.pas',
  Control.ExtratosExpressas in 'src\Control\Control.ExtratosExpressas.pas',
  Model.RoteirosExpressas in 'src\Model\Model.RoteirosExpressas.pas',
  Control.RoteirosExpressas in 'src\Control\Control.RoteirosExpressas.pas',
  View.RoteirosExpressas in 'src\View\View.RoteirosExpressas.pas' {view_RoteirosExpressas},
  Model.ControleAWB in 'src\Model\Model.ControleAWB.pas',
  Control.ControleAWB in 'src\Control\Control.ControleAWB.pas',
  View.ExtratoExpressas in 'src\View\View.ExtratoExpressas.pas' {view_ExtratoExpressas},
  View.DataFechamento in 'src\View\View.DataFechamento.pas' {view_DataFechamento},
  View.FilterData in 'src\View\View.FilterData.pas' {view_FilterData},
  Model.FilterData in 'src\Model\Model.FilterData.pas',
  Control.FilterData in 'src\Control\Control.FilterData.pas',
  Model.ExtratosExpressas in 'src\Model\Model.ExtratosExpressas.pas',
  Thread.ConsolidaExtratoExpressa in 'src\Thread\Thread.ConsolidaExtratoExpressa.pas',
  Model.Bancos in 'src\Model\Model.Bancos.pas',
  Control.Bancos in 'src\Control\Control.Bancos.pas',
  View.ConsolidacaoExpressas in 'src\View\View.ConsolidacaoExpressas.pas' {view_ConsolidacaoExpressas},
  Control.CadastroGeral in 'src\Control\Control.CadastroGeral.pas',
  Model.CadastroGR in 'src\Model\Model.CadastroGR.pas',
  Control.CadastroGR in 'src\Control\Control.CadastroGR.pas',
  Model.CadastroHistorico in 'src\Model\Model.CadastroHistorico.pas',
  Control.CadastroHistorico in 'src\Control\Control.CadastroHistorico.pas',
  Model.ExpressasExtratos in 'src\Model\Model.ExpressasExtratos.pas',
  Control.ExpressasExtratos in 'src\Control\Control.ExpressasExtratos.pas',
  Model.ExtraviosMultas in 'src\Model\Model.ExtraviosMultas.pas',
  Model.CadastroAnexos in 'src\Model\Model.CadastroAnexos.pas',
  Control.CadastroAnexos in 'src\Control\Control.CadastroAnexos.pas',
  Model.PlanilhaBaixasTFO in 'src\Model\Model.PlanilhaBaixasTFO.pas',
  Control.PlanilhaBaixasTFO in 'src\Control\Control.PlanilhaBaixasTFO.pas',
  View.CadastroEntregadores in 'src\View\View.CadastroEntregadores.pas' {view_CadastroEntregadores},
  View.LancamentosExtratosExpressas in 'src\View\View.LancamentosExtratosExpressas.pas' {view_LancamentosExtratosExpressas},
  Model.PlanilhaEntradaTFO in 'src\Model\Model.PlanilhaEntradaTFO.pas',
  Control.PlanilhaEntradaTFO in 'src\Control\Control.PlanilhaEntradaTFO.pas',
  Thread.ImportarPedidosDIRECT in 'src\Thread\Thread.ImportarPedidosDIRECT.pas',
  Model.PlanilhaEntradaCarriers in 'src\Model\Model.PlanilhaEntradaCarriers.pas',
  Thread.ImportarPedidosRedeForte in 'src\Thread\Thread.ImportarPedidosRedeForte.pas',
  Thread.ImportarBaixasDIRECT in 'src\Thread\Thread.ImportarBaixasDIRECT.pas',
  Thread.ImportarBaixasTFO in 'src\Thread\Thread.ImportarBaixasTFO.pas',
  Thread.ImportarPedidosTFO in 'src\Thread\Thread.ImportarPedidosTFO.pas',
  Control.PlanilhaEntradaCarriers in 'src\Control\Control.PlanilhaEntradaCarriers.pas',
  Thread.ExtratoExpressas in 'src\Thread\Thread.ExtratoExpressas.pas',
  View.ExtratoExpressasDetalhado in 'src\View\View.ExtratoExpressasDetalhado.pas' {view_ExtratoExpressasDetalhado},
  Model.CadastroGeral in 'src\Model\Model.CadastroGeral.pas',
  View.SisGeFPesquisaPessoasV1 in 'src\View\View.SisGeFPesquisaPessoasV1.pas' {view_SisGeFPesquisaPessoas},
  View.EntregadoresExpressasPesquisa in 'src\View\View.EntregadoresExpressasPesquisa.pas' {view_EntregadoresExpressasPesquisa},
  View.PesquisaBasesExpressas in 'src\View\View.PesquisaBasesExpressas.pas' {view_PesquisaBasesExpressas},
  View.PesquisarPessoas in 'src\View\View.PesquisarPessoas.pas' {View_PesquisarPessoas},
  View.DetalheRemessasExtrato in 'src\View\View.DetalheRemessasExtrato.pas' {view_DetalheRemessasExtrato},
  View.VisualizacaoPlanilha in 'src\View\View.VisualizacaoPlanilha.pas' {view_VisualizacaoPlanilhas},
  View.Main in 'src\View\View.Main.pas' {view_Main},
  Model.CapaDIRECT in 'src\Model\Model.CapaDIRECT.pas',
  Control.CapaDIRECT in 'src\Control\Control.CapaDIRECT.pas',
  Thread.ImportaAbrangencia in 'src\Thread\Thread.ImportaAbrangencia.pas',
  Model.EmpresasEnderecos in 'src\Model\Model.EmpresasEnderecos.pas',
  Control.EmpresasEnderecos in 'src\Control\Control.EmpresasEnderecos.pas',
  View.ListaRoteirosLivres in 'src\View\View.ListaRoteirosLivres.pas' {view_ListaRorteirosLivres},
  Thread.AnaliseRoteiroExpressas in 'src\Thread\Thread.AnaliseRoteiroExpressas.pas',
  Model.PlanilhaRoteirosExpressas in 'src\Model\Model.PlanilhaRoteirosExpressas.pas',
  Control.PlanilhaRoteirosExpressas in 'src\Control\Control.PlanilhaRoteirosExpressas.pas',
  View.AnaliseRoteirosExpressas in 'src\View\View.AnaliseRoteirosExpressas.pas' {view_AnaliseRoteirosExpressas},
  Thread.CapaDIRECT in 'src\Thread\Thread.CapaDIRECT.pas',
  Model.AbrangenciaExpressas in 'src\Model\Model.AbrangenciaExpressas.pas',
  Control.AbrangenciaExpressas in 'src\Control\Control.AbrangenciaExpressas.pas',
  View.CadastroAbrangenciaExpressas in 'src\View\View.CadastroAbrangenciaExpressas.pas' {view_CadastroAbrangenciaExpressas},
  Thread.ImportaCEPRoteiro in 'src\Thread\Thread.ImportaCEPRoteiro.pas',
  View.PesquisaEntregadoresExpressas in 'src\View\View.PesquisaEntregadoresExpressas.pas' {view_PesquisaEntregadoresExpressas},
  View.LancamentosExtratosExpressasPesquisa in 'src\View\View.LancamentosExtratosExpressasPesquisa.pas' {view_LancamentosExtratosExpressasPesquisa},
  View.FiltroGenerico in 'src\View\View.FiltroGenerico.pas' {view_FiltroGenerico},
  Thread.SisGeFImportMisplacement in 'src\Thread\Thread.SisGeFImportMisplacement.pas',
  View.ImportaCapaFinanceiroDIRECT in 'src\View\View.ImportaCapaFinanceiroDIRECT.pas' {view_ImportaCapaFinanceiroDIRECT},
  Model.FinanceiroPrazosExtratos in 'src\Model\Model.FinanceiroPrazosExtratos.pas',
  Control.FinanceiroPrazosExtratos in 'src\Control\Control.FinanceiroPrazosExtratos.pas',
  View.ParametrosPrazosExtratos in 'src\View\View.ParametrosPrazosExtratos.pas' {view_ParametrosPrazosExtratos},
  Model.Bases in 'src\Model\Model.Bases.pas',
  Control.Bases in 'src\Control\Control.Bases.pas',
  Control.EnderecosBases in 'src\Control\Control.EnderecosBases.pas',
  Model.EnderecosBases in 'src\Model\Model.EnderecosBases.pas',
  Control.ContatosBases in 'src\Control\Control.ContatosBases.pas',
  Model.ContatosBases in 'src\Model\Model.ContatosBases.pas',
  View.CadastroClientes in 'src\View\View.CadastroClientes.pas' {view_CadastroClientes},
  Vcl.Themes,
  Vcl.Styles,
  View.PesquisaRemessas_201040 in 'src\View\View.PesquisaRemessas_201040.pas' {view_PesquisaRemessas},
  Model.CRMContatosClientes in 'src\Model\Model.CRMContatosClientes.pas',
  Model.CRMClientes in 'src\Model\Model.CRMClientes.pas',
  Model.CRMEnderecosClientes in 'src\Model\Model.CRMEnderecosClientes.pas',
  Model.CRMContatos in 'src\Model\Model.CRMContatos.pas',
  Model.CRMEnderecos in 'src\Model\Model.CRMEnderecos.pas',
  Model.CRMPessoa in 'src\Model\Model.CRMPessoa.pas',
  Controller.CRMContatosClientes in 'src\Control\Controller.CRMContatosClientes.pas',
  Controller.CRMClientes in 'src\Control\Controller.CRMClientes.pas',
  Controller.CRMEnderecosClientes in 'src\Control\Controller.CRMEnderecosClientes.pas',
  View.PesquisaClientes in 'src\View\View.PesquisaClientes.pas' {view_PesquisaClientes},
  Model.APICNPJ in 'src\Model\Model.APICNPJ.pas',
  Model.APICEP in 'src\Model\Model.APICEP.pas',
  Model.CRMCNAEClientes in 'src\Model\Model.CRMCNAEClientes.pas',
  Controller.CRMCNAEClientes in 'src\Control\Controller.CRMCNAEClientes.pas',
  Model.CRMFinanceiroClientes in 'src\Model\Model.CRMFinanceiroClientes.pas',
  Controller.CRMFinanceiroClientes in 'src\Control\Controller.CRMFinanceiroClientes.pas',
  Controller.APICEP in 'src\Control\Controller.APICEP.pas',
  Controller.APICNPJ in 'src\Control\Controller.APICNPJ.pas',
  View.ListaCEPs in 'src\View\View.ListaCEPs.pas' {view_ListaCEPs},
  View.ResultadoConsultaCNPJ in 'src\View\View.ResultadoConsultaCNPJ.pas' {view_ResultadoConsultaCNPJ},
  Model.PlanilhaEntradaENGLOBA in 'src\Model\Model.PlanilhaEntradaENGLOBA.pas',
  Control.PlanilhaEntradaENGLOBA in 'src\Control\Control.PlanilhaEntradaENGLOBA.pas',
  Thread.ImportarPedidosENGLOBA in 'src\Thread\Thread.ImportarPedidosENGLOBA.pas',
  Model.PlanilhaEntradaSIMExpress in 'src\Model\Model.PlanilhaEntradaSIMExpress.pas',
  Thread.ImportarPedidosSIMExpress in 'src\Thread\Thread.ImportarPedidosSIMExpress.pas',
  Control.PlanilhaEntradaSimExpress in 'src\Control\Control.PlanilhaEntradaSimExpress.pas',
  View.CadastroExtravios in 'src\View\View.CadastroExtravios.pas' {view_CadastroExtravios},
  View.SisGeFConfirmPassword in 'src\View\View.SisGeFConfirmPassword.pas' {view_SisGeFConfirmPassword},
  Thread.SisGeFImportExpressWorksheet in 'src\Thread\Thread.SisGeFImportExpressWorksheet.pas',
  View.SisGeFEmployeeRegistrationDetail in 'src\View\View.SisGeFEmployeeRegistrationDetail.pas' {view_SisGeFEmployeeRegistrationDetail},
  Model.SisgeFRHFuncoes in 'src\Model\Model.SisgeFRHFuncoes.pas',
  Control.SisGeFRHFuncoes in 'src\Control\Control.SisGeFRHFuncoes.pas',
  View.PesquisaAgentes in 'src\View\View.PesquisaAgentes.pas' {view_PesquisaPessoasAgentes},
  View.SisaGeFAttachDocuments in 'src\View\View.SisaGeFAttachDocuments.pas' {view_SisgeFAttachDocuments},
  Model.SisgeFVehiclesRegistration in 'src\Model\Model.SisgeFVehiclesRegistration.pas',
  Controller.SisGeFVehiclesRegistration in 'src\Control\Controller.SisGeFVehiclesRegistration.pas',
  View.SisGeFVehicleRegistrationDetail in 'src\View\View.SisGeFVehicleRegistrationDetail.pas' {view_SisGeFVehiclesRegistrationDetail},
  Model.PlanilhaEntradaDIRECT in 'src\Model\Model.PlanilhaEntradaDIRECT.pas',
  Model.SisGeFTrackingExpress in 'src\Model\Model.SisGeFTrackingExpress.pas',
  Controller.SisGeFTrackingExpress in 'src\Control\Controller.SisGeFTrackingExpress.pas',
  Control.PlanilhaEntradaTracking in 'src\Control\Control.PlanilhaEntradaTracking.pas',
  View.ExtraviosSinistrosMultas in 'src\View\View.ExtraviosSinistrosMultas.pas' {view_ExtraviosSinistrosMultas},
  Model.CRMEmpresas in 'src\Model\Model.CRMEmpresas.pas',
  Model.CRMEnderecosEmpresas in 'src\Model\Model.CRMEnderecosEmpresas.pas',
  Model.CRMContatosEmpresa in 'src\Model\Model.CRMContatosEmpresa.pas',
  Model.CRMFinanceiroEmpresas in 'src\Model\Model.CRMFinanceiroEmpresas.pas',
  Model.CRMCNAEEmpresas in 'src\Model\Model.CRMCNAEEmpresas.pas',
  Controller.CRMEmpresas in 'src\Control\Controller.CRMEmpresas.pas',
  Controller.CRMEnderecosEmpresas in 'src\Control\Controller.CRMEnderecosEmpresas.pas',
  Controller.CRMFinanceiroEmpresas in 'src\Control\Controller.CRMFinanceiroEmpresas.pas',
  Controller.CRMCNAEEmpresas in 'src\Control\Controller.CRMCNAEEmpresas.pas',
  View.SisGeFEmployeeRegistration in 'src\View\View.SisGeFEmployeeRegistration.pas' {view_SisGeFEmployeeRegistration},
  View.SisGeFVehiclesRegistration in 'src\View\View.SisGeFVehiclesRegistration.pas' {view_SisGeFVehicleRegistration},
  Controller.CRMContatosEmpresas in 'src\Control\Controller.CRMContatosEmpresas.pas',
  View.CadastroEmpresas in 'src\View\View.CadastroEmpresas.pas' {view_CadastroEmpresas},
  View.PesquisaEmpresas in 'src\View\View.PesquisaEmpresas.pas' {view_PesquisaEmpresas},
  View.SisGeFExpressExtract in 'src\View\View.SisGeFExpressExtract.pas' {view_SisGeFExpressExtract},
  View.PesquisaPessoasCRM in 'src\View\View.PesquisaPessoasCRM.pas' {view_PesquisaPessoasCRM},
  Thread.SisGeFExpressExtract in 'src\Thread\Thread.SisGeFExpressExtract.pas',
  Thread.SisGeFClosingExpressExtract in 'src\Thread\Thread.SisGeFClosingExpressExtract.pas',
  View.Calendario in 'src\View\View.Calendario.pas' {view_Calendario},
  Thread.SisGeFCreditWorksheet in 'src\Thread\Thread.SisGeFCreditWorksheet.pas',
  View.SisGeFCreditWorksheet in 'src\View\View.SisGeFCreditWorksheet.pas' {view_SisGeFCreditWorksheet},
  Thread.SisGeFOMIECP in 'src\Thread\Thread.SisGeFOMIECP.pas',
  View.SisGeFSelectCompany in 'src\View\View.SisGeFSelectCompany.pas' {view_SisGeFSelectCompany},
  View.SisGeFServiceOrders in 'src\View\View.SisGeFServiceOrders.pas' {view_SisGeFServiceOrders},
  Model.SisGeFOrderServices in 'src\Model\Model.SisGeFOrderServices.pas',
  Controller.SisGeFOrderServices in 'src\Control\Controller.SisGeFOrderServices.pas',
  View.PesquisarGeral in 'src\View\View.PesquisarGeral.pas' {View_PesquisarGeral},
  View.SisGeFGeneralSearch in 'src\View\View.SisGeFGeneralSearch.pas' {view_SisGefGeneralSearch},
  View.SisGeFExtractSO in 'src\View\View.SisGeFExtractSO.pas' {view_SisGeFExtractSO},
  Thread.SisGeFProcessExtractSO in 'src\Thread\Thread.SisGeFProcessExtractSO.pas',
  Thread.SisGeFCloseExtractSO in 'src\Thread\Thread.SisGeFCloseExtractSO.pas',
  View.SisGeFContractedDetail in 'src\View\View.SisGeFContractedDetail.pas' {view_SisGeFContractedDetail},
  View.SisGeFPrintRunsImports in 'src\View\View.SisGeFPrintRunsImports.pas' {view_SisGeFPrintRunsImports},
  Thread.PrintRunsImport in 'src\Thread\Thread.PrintRunsImport.pas',
  Model.SisGeFNFsFaturas in 'src\Model\Model.SisGeFNFsFaturas.pas',
  Controller.SisGeFNFsFaturas in 'src\Control\Controller.SisGeFNFsFaturas.pas',
  View.SisGeFExtractPeriodicals in 'src\View\View.SisGeFExtractPeriodicals.pas' {view_SisGeFExtractPeriodicals},
  View.SisGeFRegisterContractors in 'src\View\View.SisGeFRegisterContractors.pas' {view_SisGeFRegisterContractors},
  Model.SisGeFTiragens in 'src\Model\Model.SisGeFTiragens.pas',
  Controller.SisGeFTiragens in 'src\Control\Controller.SisGeFTiragens.pas',
  View.SisGeFNFsFaturas in 'src\View\View.SisGeFNFsFaturas.pas' {view_SisGeFNFsFaturas},
  View.SisGeFWorksheetOMIECP in 'src\View\View.SisGeFWorksheetOMIECP.pas' {view_SisGeFWorksheetOMIECP},
  View.SisGeFWorksheetBIMERCP in 'src\View\View.SisGeFWorksheetBIMERCP.pas' {view_SisGeFWorksheetBIMERCP},
  Thread.SisGeFBIMERCP in 'src\Thread\Thread.SisGeFBIMERCP.pas',
  View.SisGeFERPChooseWorksheet in 'src\View\View.SisGeFERPChooseWorksheet.pas' {SisGeFERPChooseWorksheet},
  View.SisGeFImportWorksheetExpress in 'src\View\View.SisGeFImportWorksheetExpress.pas' {view_SisGeFImportWorksheetExpress},
  Common.SisGeFFunctions in 'src\Common\Common.SisGeFFunctions.pas',
  Thread.EDIClient in 'src\Thread\Thread.EDIClient.pas',
  View.CadastroGeral in 'src\View\View.CadastroGeral.pas' {view_CadastroGeral},
  View.SisGeFContractEmission in 'src\View\View.SisGeFContractEmission.pas' {view_SisGeFContractEmission},
  Model.SisGeFOcorrenciasJornal in 'src\Model\Model.SisGeFOcorrenciasJornal.pas',
  Controller.SisGeFOcorrenciasJornal in 'src\Control\Controller.SisGeFOcorrenciasJornal.pas',
  Model.SisGeFProdutosJornal in 'src\Model\Model.SisGeFProdutosJornal.pas',
  Controller.SisGeFProdutosJornal in 'src\Control\Controller.SisGeFProdutosJornal.pas',
  Model.SisGeFTiposOcorrenciaJornal in 'src\Model\Model.SisGeFTiposOcorrenciaJornal.pas',
  Controller.SisGeFTiposOcorrenciaJornal in 'src\Control\Controller.SisGeFTiposOcorrenciaJornal.pas',
  View.SisGeFOcorrenciasJornal in 'src\View\View.SisGeFOcorrenciasJornal.pas' {view_SisGeFOcorrenciasJornal},
  View.SiseFTravelControl in 'src\View\View.SiseFTravelControl.pas' {PageTravelControl},
  Model.SisGeFFuelSupplies in 'src\Model\Model.SisGeFFuelSupplies.pas',
  Controller.SisGeFFuelSupplies in 'src\Control\Controller.SisGeFFuelSupplies.pas',
  Model.SisGeFTravelControl in 'src\Model\Model.SisGeFTravelControl.pas',
  Controller.SisGeFTravelControl in 'src\Control\Controller.SisGeFTravelControl.pas',
  Model.SisGeFConsumptionInputs in 'src\Model\Model.SisGeFConsumptionInputs.pas',
  DAO.SisGeFCRUDRoutines in 'src\DAO\DAO.SisGeFCRUDRoutines.pas',
  Controller.SisGeFConsumptionInputs in 'src\Control\Controller.SisGeFConsumptionInputs.pas',
  Model.SisGeFTransportInputs in 'src\Model\Model.SisGeFTransportInputs.pas',
  Controller.SisGeFTransportInputs in 'src\Control\Controller.SisGeFTransportInputs.pas',
  Model.SisGeFDestinationTravel in 'src\Model\Model.SisGeFDestinationTravel.pas',
  Controller.SisGeFDestinationTravel in 'src\Control\Controller.SisGeFDestinationTravel.pas',
  Services.SisGeFDAORoutines in 'src\Services\Services.SisGeFDAORoutines.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Sistema Gerenciador de Faturamento';
  Application.CreateForm(TData_Sisgef, Data_Sisgef);
  Application.CreateForm(Tview_Main, view_Main);
  Application.Run;
end.
