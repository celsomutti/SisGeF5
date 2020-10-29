object view_Main: Tview_Main
  Left = 0
  Top = 0
  Caption = 'view_Main'
  ClientHeight = 529
  ClientWidth = 1183
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  KeyPreview = True
  OldCreateOrder = False
  ShowHint = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 509
    Width = 1183
    Height = 20
    Panels = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object actMain: TActionList
    Left = 768
    Top = 216
    object actCadastroAgentes: TAction
      Category = 'Cadastro'
      Caption = 'A&gentes'
      Hint = 'Cadastro de Empresas/Agentes'
    end
    object actCadastroEntregadores: TAction
      Category = 'Cadastro'
      Caption = '&Entregadores e Colaboradores'
      Hint = 'Cadastro de Entregadores e Colaboradores'
    end
    object actCadastroClientes: TAction
      Category = 'Cadastro'
      Caption = '&Clientes'
      Hint = 'Cadastro de Clientes'
    end
    object actCadastroProdutos: TAction
      Category = 'Cadastro'
      Caption = '&Produtos'
      Hint = 'Cadastro de Produtos'
      Visible = False
    end
    object actCadastroServicos: TAction
      Category = 'Cadastro'
      Caption = '&Servi'#231'os'
      Hint = 'Cadastro de Servi'#231'os'
    end
    object actCadastroVeiculos: TAction
      Category = 'Cadastro'
      Caption = '&Ve'#237'culos'
      Hint = 'Cadastro de Ve'#237'culos'
    end
    object actCadastroVerbasExpressas: TAction
      Category = 'Cadastro'
      Caption = 'Verbas de E&xpressas'
      Hint = 'Cadasto de Verbas de Entrega de Expressas'
    end
    object actCadastroVerbaTiragem: TAction
      Category = 'Cadastro'
      Caption = 'Verbas &Tiragem'
      Hint = 'Cadastro de Verbas de Entrega de Publica'#231#245'es'
    end
    object actImportarEntregas: TAction
      Category = 'Expressas'
      Caption = 'Importar En&tregas'
      Hint = 'Importar Dados de Entregas'
    end
    object actImportarBaixas: TAction
      Category = 'Expressas'
      Caption = 'Importar &Baixas (TFO)'
      Hint = 'Importar Dados de Baixas de Entregas do STD Cliente'
    end
    object actImportarAbastecimentos: TAction
      Category = 'Transportes e Servi'#231'os'
      Caption = 'Importar A&bastecimentos'
      Hint = 'Importar Planilhas de Abastecimentos (Posto Jatinho)'
    end
    object actImportarFinanceiro: TAction
      Category = 'Financeiro'
      Caption = 'Importar &Financeiro (TFO)'
      Hint = 'Importar Consulta Anal'#237'tica do Financeiro da Franquia'
    end
    object actImportarTiragem: TAction
      Category = 'Jornal'
      Caption = 'Importar &Tiragem (TFO)'
      Hint = 'Importar N'#250'meros das Tiragens dos Agentes'
    end
    object actCadastroVerbaCEP: TAction
      Category = 'Cadastro'
      Caption = 'Verbas CE&P'
      Hint = 'Verba de Entrega por CEP'
    end
    object actArquivoArquivar: TAction
      Category = 'Arquivo'
      Caption = '&Arquivar'
      Hint = 'Arquivar Dados do Banco de Dados'
    end
    object actArquivoSair: TAction
      Category = 'Arquivo'
      Caption = 'Sair'
      Hint = 'Sair do Sistema'
      ShortCut = 16467
      OnExecute = actArquivoSairExecute
    end
    object actExpressasEntregas: TAction
      Category = 'Expressas'
      Caption = '&Entregas'
      Hint = 'Entregas Expressas'
    end
    object actExpressasExtravios: TAction
      Category = 'Expressas'
      Caption = 'E&xtravios'
      Hint = 'Registro de Extravios de Entregas'
    end
    object actExpressasResumoEntregas: TAction
      Category = 'Expressas'
      Caption = 'Res&umo de Entregas Baixadas'
      Hint = 'Calculo e Resumo das Entregas Baixadas'
    end
    object actOperacaoMalote: TAction
      Category = 'Transportes e Servi'#231'os'
      Caption = '&Malotes (Sele'#231#245'es)'
      Hint = 'Controle de Entrega e Retiradas de Malotes'
    end
    object actOperacaoOrdemServico: TAction
      Category = 'Transportes e Servi'#231'os'
      Caption = '&Ordens de Servi'#231'o'
      Hint = 'Controle e Emiss'#227'o de Ordens de Servi'#231'os'
    end
    object actOperacaoAbastecimentos: TAction
      Category = 'Transportes e Servi'#231'os'
      Caption = '&Abastecimentos'
      Hint = 'Controle e Manuten'#231#227'o de Abastecimentos'
    end
    object actOperacaoControleKM: TAction
      Category = 'Transportes e Servi'#231'os'
      Caption = 'Controle de &KM'
      Hint = 'Registro e Controle de KM de Ve'#237'culos'
    end
    object actFinanceiroLancamentos: TAction
      Category = 'Financeiro'
      Caption = '&Lan'#231'amentos de D'#233'bito e Cr'#233'dito'
      Hint = 'Lan'#231'amento de D'#233'bitos e Cr'#233'ditos para Agentes e Entregadores'
    end
    object actFinanceiroRestricoes: TAction
      Category = 'Financeiro'
      Caption = 'Manuten'#231#227'o das &Restri'#231#245'es'
      Hint = 'Manuten'#231#227'o das Restri'#231#245'es dos Agentes e Entregadores'
    end
    object actFinanceiroFechamentoExpressas: TAction
      Category = 'Financeiro'
      Caption = 'Fechamento de &Expressas'
      Hint = 'Fechamento Valores de Expressas'
    end
    object actFinanceiroFechamentoTiragens: TAction
      Category = 'Jornal'
      Caption = 'Fechamento de &Tiragens'
      Hint = 'Fechamento de Valores de Tiragens '
    end
    object actFinanceiroExtratoAgentes: TAction
      Category = 'Expressas'
      Caption = 'Extratos de &Agentes'
      Hint = 'Gera'#231#227'o de Extratos Financeiros dos Agentes'
    end
    object actFinanceiroExtratoFranquia: TAction
      Category = 'Financeiro'
      Caption = 'Extrato Fran&quia'
      Hint = 'Gera'#231#227'o do Extrato Financeiro da Franquia'
    end
    object actSistemaParametros: TAction
      Category = 'Sistema'
      Caption = '&Par'#226'metros do Sistema'
      Hint = 'Tela de Par'#226'metros Globais do Sistema'
    end
    object actSistemaConfiguracaoImpressora: TAction
      Category = 'Sistema'
      Caption = 'Configura'#231#227'o da &Impressora'
      Hint = 'Sele'#231#227'o e Configura'#231#227'o da Impressora'
    end
    object actSegurancaUsuario: TAction
      Category = 'Sistema'
      Caption = '&Usu'#225'rios'
      Hint = 'Cadastro e Manuten'#231#227'o de Usu'#225'rios e Perfil de Usu'#225'rio'
    end
    object actSistemaSenha: TAction
      Category = 'Sistema'
      Caption = 'Alterar &Senha'
      Hint = 'Alterar a Senha do usu'#225'rio atual'
      ShortCut = 16507
    end
    object actSistemaTrocaUsuario: TAction
      Category = 'Sistema'
      Caption = '&Troca de Usu'#225'rio'
      Hint = 'Logoff do usu'#225'rio atual'
    end
    object actSistemaHistorico: TAction
      Category = 'Sistema'
      Caption = '&Hist'#243'rico'
      Hint = 'Registro do Hist'#243'rico de Movimenta'#231#245'es do Banco de Dados'
    end
    object actSistemaMensagem: TAction
      Category = 'Sistema'
      Caption = '&Mensagens'
      Hint = 'Troca de Mensagens entre usu'#225'rios do sistema'
    end
    object actOperacaoPrazoEntrega: TAction
      Category = 'Expressas'
      Caption = 'Pra&zos de Entregas'
      Hint = 'Acompanhamento de Prazos de Entregas'
    end
    object actFinanceirroPlanilhaCrerdito: TAction
      Category = 'Financeiro'
      Caption = '&Planilha de Cr'#233'dito'
      Hint = 'Planilha de Cr'#233'dito'
    end
    object actOperacaoAcompanhamento: TAction
      Category = 'Transportes e Servi'#231'os'
      Caption = 'Controle de &Transportes'
      Hint = 'Controle Operacional de Transportes'
    end
    object actFinanceiroContasReceber: TAction
      Category = 'Financeiro'
      Caption = 'Contas a &Receber'
      Hint = 'Controle de Contas a Receber'
    end
    object actCadastroCentroCusto: TAction
      Category = 'Cadastro'
      Caption = 'Centro de C&usto'
      Hint = 'Cadastro de Centro de Custo'
    end
    object actExpressasAtribuicoes: TAction
      Category = 'Expressas'
      Caption = 'Atr&ibui'#231#245'es'
      Hint = 'Atribui'#231#245'es de Entregas'
    end
    object actExpressasRecepcaoHermes: TAction
      Category = 'Expressas'
      Caption = 'Recep'#231#227'o Hermes'
      Hint = 'Recep'#231#227'o de Carga Aeronova / Hermes'
    end
    object actExpressasRetornoBaixa: TAction
      Category = 'Expressas'
      Caption = 'Ret&orno / Baixa'
      Hint = 'Retorno e Baixa de Expressas'
    end
    object actCadastroGruposVerbas: TAction
      Category = 'Cadastro'
      Caption = '&Grupos de Verbas'
      Hint = 'Cadastro de Grupos de Verbas de Expressas'
    end
    object actSegurancaGruposUsuarios: TAction
      Category = 'Sistema'
      Caption = '&Grupos de Usu'#225'rios'
      Hint = 'Cadastro de Manuten'#231#227'o de Grupos de Usu'#225'rios'
    end
    object actOperacaoExpectativas: TAction
      Category = 'Expressas'
      Caption = '&Devolu'#231#245'es'
      Hint = 'Cria'#231#227'o do Fluxo de Devolu'#231#245'es de Objetos'
    end
    object actOperacaoDevolucaoBase: TAction
      Category = 'Expressas'
      Caption = '&Devolu'#231#245'es Base'
      Hint = 'Devolu'#231#227'o de objetos pela base'
    end
    object actOperacaoRetirada: TAction
      Category = 'Expressas'
      Caption = '&Retirada de Objetos'
      Hint = 'REtirada de objetos pelo motorista'
    end
    object actOperacaoReceberContainer: TAction
      Category = 'Expressas'
      Caption = 'Recep'#231#227'o de Container'
      Hint = 'Recep'#231#227'o de Containers de Devolu'#231#227'o'
    end
    object actCadastroLacres: TAction
      Category = 'Cadastro'
      Caption = 'Lacres'
      Hint = 'Cadastro de Lacres'
    end
    object actExpressasAcareacoes: TAction
      Category = 'Expressas'
      Caption = '&Acarea'#231#245'es'
      Hint = 'Registro de Acarea'#231#245'es'
    end
    object actJornalAgentes: TAction
      Category = 'Jornal'
      Caption = '&Agentes'
      Hint = 'Cadastro de Agentes (Jornal)'
      ImageIndex = 57
    end
    object actJornalProdutos: TAction
      Category = 'Cadastro'
      Caption = '&Produtos'
      Hint = 'Cadastro de Produtos'
      ImageIndex = 13
    end
    object actJornalAssinante: TAction
      Category = 'Cadastro'
      Caption = 'A&ssinantes Revistas'
      Hint = 'Cadastro de Assinates'
      ImageIndex = 96
    end
    object actJornalImportarEtiquetas: TAction
      Category = 'Jornal'
      Caption = 'Importar E&tiquetas'
      Hint = 'Importar dados de etiquetas'
      ImageIndex = 85
    end
    object actJornalEtiquetas: TAction
      Category = 'Jornal'
      Caption = '&Etiquetas Protocolos'
      Hint = 'Impress'#227'o de Etiquetas'
      ImageIndex = 15
    end
    object actJornalAtribuicoes: TAction
      Category = 'Jornal'
      Caption = 'A&tribui'#231#245'es'
      Hint = 'Atribui'#231#245'es de Pedi'#243'dicos'
      ImageIndex = 86
    end
    object actArquivoEmpresas: TAction
      Category = 'Cadastro'
      Caption = 'Em&presas'
      Hint = 'Cadastro de Empresas'
    end
    object actJornalBaixaProtocolo: TAction
      Category = 'Jornal'
      Caption = 'Baixa Protocolos'
      Hint = 'Baixa de Protocolos'
      ImageIndex = 51
    end
    object actCadastroCadastro: TAction
      Category = 'Cadastro'
      Caption = 'Cadastro'
    end
    object actSistemaAmbiente: TAction
      Category = 'Sistema'
      Caption = 'Ambiente'
      Hint = 'Ambiente de Trabalho'
      ShortCut = 16503
    end
    object actJornalAssinaturas: TAction
      Category = 'Cadastro'
      Caption = 'Assinaturas &Jornal'
      Hint = 'Assinaturas do Jornal'
      ImageIndex = 84
    end
    object actJornalOcorrencias: TAction
      Category = 'Jornal'
      Caption = 'Ocorr'#234'ncias'
      Hint = 'Acompanhamento de Ocorr'#234'ncias de Assinaturas'
      ImageIndex = 50
    end
    object actJornalRoteiros: TAction
      Category = 'Cadastro'
      Caption = 'Roteiros'
      Hint = 'Roteiros /Entregadores'
      ImageIndex = 97
    end
    object actJornalOperacional: TAction
      Category = 'Jornal'
      Caption = 'Operacional'
      Hint = 'Planilha Operacional'
      ImageIndex = 98
    end
    object actFinanceiroCusteioOcorrencias: TAction
      Category = 'Financeiro'
      Caption = 'Custeio Ocorr'#234'ncias Jornal'
      Hint = 'Custeio das Ocorr'#234'ncias do Jornal'
      ImageIndex = 12
    end
    object actCadastroFaixaPeso: TAction
      Category = 'Cadastro'
      Caption = 'Verbas por Faixa de Peso'
    end
    object actCadastroCepDistribuidor: TAction
      Category = 'Cadastro'
      Caption = 'CEP Distribuidor'
      Hint = 'Cadastro de Faixas de CEP por Distribuidor'
    end
    object actRecados: TAction
      Category = 'Jornal'
      Caption = 'Recados'
      Hint = 'Recados do Jornal'
    end
    object actTransporteInsumos: TAction
      Category = 'Cadastro'
      Caption = '&Insumos de Transportes'
      Hint = 'Cadastro de Insumos de Transportes'
      ImageIndex = 110
    end
    object actEstoquesInsumos: TAction
      Category = 'Transportes e Servi'#231'os'
      Caption = 'Estoques Insumos'
      Hint = 'Controle de Estiques de Insumos'
    end
    object actCadastroItensManutencao: TAction
      Category = 'Cadastro'
      Caption = 'Itens de Manuten'#231#227'o'
      Hint = 'Itens de Manuten'#231#227'o de Ve'#237'culos'
    end
    object actOperacaoManutencao: TAction
      Category = 'Transportes e Servi'#231'os'
      Caption = 'Manuten'#231#227'o'
      Hint = 'Manuten'#231#227'o de veiculos'
    end
    object actTabelasAuxiliares: TAction
      Category = 'Cadastro'
      Caption = 'Tabelas Auxiliares'
      Hint = 'Tabelas auxiliares de cadastro'
    end
  end
  object bmMain: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeIcons = True
    MenusShowRecentItemsFirst = False
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 832
    Top = 216
    DockControlHeights = (
      0
      0
      57
      0)
    object bmMainBar1: TdxBar
      Caption = 'Menu'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 1073
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem5'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem6'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem8'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem9'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem10'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRecentItems = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object bmMainBar2: TdxBar
      Caption = 'Barra'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 22
      DockingStyle = dsTop
      FloatLeft = 1073
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton10'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton11'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton12'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton13'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton14'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton15'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton16'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton17'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton18'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton19'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton20'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton21'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton22'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton23'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton24'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton27'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton28'
        end>
      OneOnRow = True
      Row = 1
      ShowMark = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'C&adastro'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem2'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem3'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton22'
        end>
    end
    object dxBarButton1: TdxBarButton
      Action = actCadastroAgentes
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actCadastroEntregadores
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton4: TdxBarButton
      Action = actCadastroClientes
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = actCadastroServicos
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = actCadastroVeiculos
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = actCadastroGruposVerbas
      Category = 0
    end
    object dxBarButton8: TdxBarButton
      Action = actCadastroVerbasExpressas
      Category = 0
    end
    object dxBarButton9: TdxBarButton
      Action = actCadastroVerbaTiragem
      Category = 0
    end
    object dxBarButton10: TdxBarButton
      Action = actCadastroVerbaCEP
      Category = 0
    end
    object dxBarButton11: TdxBarButton
      Action = actCadastroFaixaPeso
      Category = 0
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'E&xpressas'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton13'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          Visible = True
          ItemName = 'dxBarButton11'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton12'
        end>
    end
    object dxBarButton12: TdxBarButton
      Action = actCadastroLacres
      Category = 0
    end
    object dxBarButton13: TdxBarButton
      Action = actCadastroCepDistribuidor
      Category = 0
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = '&Di'#225'rio'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton16'
        end
        item
          Visible = True
          ItemName = 'dxBarButton15'
        end
        item
          Visible = True
          ItemName = 'dxBarButton14'
        end
        item
          Visible = True
          ItemName = 'dxBarButton17'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton9'
        end>
    end
    object dxBarButton14: TdxBarButton
      Action = actJornalProdutos
      Category = 0
    end
    object dxBarButton15: TdxBarButton
      Action = actJornalAssinante
      Category = 0
    end
    object dxBarButton16: TdxBarButton
      Action = actJornalAssinaturas
      Category = 0
    end
    object dxBarButton17: TdxBarButton
      Action = actJornalRoteiros
      Category = 0
    end
    object dxBarButton18: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarSubItem4: TdxBarSubItem
      Caption = '&Transportes'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton19'
        end>
    end
    object dxBarButton19: TdxBarButton
      Action = actTransporteInsumos
      Category = 0
    end
    object dxBarButton20: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton21: TdxBarButton
      Action = actArquivoSair
      Category = 0
    end
    object dxBarButton22: TdxBarButton
      Action = actArquivoSair
      Category = 0
    end
    object dxBarSubItem5: TdxBarSubItem
      Caption = 'E&xpressas'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton23'
        end
        item
          Visible = True
          ItemName = 'dxBarButton24'
        end
        item
          Visible = True
          ItemName = 'dxBarButton25'
        end
        item
          Visible = True
          ItemName = 'dxBarButton27'
        end
        item
          Visible = True
          ItemName = 'dxBarButton26'
        end
        item
          Visible = True
          ItemName = 'dxBarButton28'
        end
        item
          Visible = True
          ItemName = 'dxBarButton29'
        end
        item
          Visible = True
          ItemName = 'dxBarButton30'
        end>
    end
    object dxBarButton23: TdxBarButton
      Action = actImportarEntregas
      Category = 0
    end
    object dxBarButton24: TdxBarButton
      Action = actImportarBaixas
      Category = 0
    end
    object dxBarButton25: TdxBarButton
      Action = actExpressasEntregas
      Category = 0
    end
    object dxBarButton26: TdxBarButton
      Action = actExpressasExtravios
      Category = 0
    end
    object dxBarButton27: TdxBarButton
      Action = actExpressasAcareacoes
      Category = 0
    end
    object dxBarButton28: TdxBarButton
      Action = actOperacaoExpectativas
      Category = 0
    end
    object dxBarButton29: TdxBarButton
      Action = actOperacaoDevolucaoBase
      Category = 0
    end
    object dxBarButton30: TdxBarButton
      Action = actOperacaoReceberContainer
      Category = 0
    end
    object dxBarButton31: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarSubItem6: TdxBarSubItem
      Caption = '&Financeiro'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton32'
        end
        item
          Visible = True
          ItemName = 'dxBarButton34'
        end
        item
          Visible = True
          ItemName = 'dxBarButton39'
        end
        item
          Visible = True
          ItemName = 'dxBarButton33'
        end
        item
          Visible = True
          ItemName = 'dxBarButton35'
        end
        item
          Visible = True
          ItemName = 'dxBarButton36'
        end
        item
          Visible = True
          ItemName = 'dxBarButton37'
        end
        item
          Visible = True
          ItemName = 'dxBarButton38'
        end>
    end
    object dxBarButton32: TdxBarButton
      Action = actImportarFinanceiro
      Category = 0
    end
    object dxBarButton33: TdxBarButton
      Action = actFinanceiroCusteioOcorrencias
      Category = 0
    end
    object dxBarButton34: TdxBarButton
      Action = actFinanceiroFechamentoExpressas
      Category = 0
    end
    object dxBarButton35: TdxBarButton
      Action = actFinanceiroFechamentoTiragens
      Category = 0
    end
    object dxBarButton36: TdxBarButton
      Action = actFinanceiroLancamentos
      Category = 0
    end
    object dxBarButton37: TdxBarButton
      Action = actFinanceiroRestricoes
      Category = 0
    end
    object dxBarButton38: TdxBarButton
      Action = actFinanceirroPlanilhaCrerdito
      Category = 0
    end
    object dxBarSubItem7: TdxBarSubItem
      Caption = 'E&xpressas'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton39: TdxBarButton
      Action = actFinanceiroExtratoAgentes
      Category = 0
    end
    object dxBarSubItem8: TdxBarSubItem
      Caption = '&Di'#225'rio'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton40'
        end
        item
          Visible = True
          ItemName = 'dxBarButton41'
        end
        item
          Visible = True
          ItemName = 'dxBarButton42'
        end
        item
          Visible = True
          ItemName = 'dxBarButton43'
        end
        item
          Visible = True
          ItemName = 'dxBarButton44'
        end
        item
          Visible = True
          ItemName = 'dxBarButton45'
        end
        item
          Visible = True
          ItemName = 'dxBarButton46'
        end
        item
          Visible = True
          ItemName = 'dxBarButton47'
        end>
    end
    object dxBarButton40: TdxBarButton
      Action = actImportarTiragem
      Category = 0
    end
    object dxBarButton41: TdxBarButton
      Action = actJornalImportarEtiquetas
      Category = 0
    end
    object dxBarButton42: TdxBarButton
      Action = actJornalOperacional
      Category = 0
    end
    object dxBarButton43: TdxBarButton
      Action = actJornalOcorrencias
      Category = 0
    end
    object dxBarButton44: TdxBarButton
      Action = actRecados
      Category = 0
    end
    object dxBarButton45: TdxBarButton
      Action = actJornalEtiquetas
      Category = 0
    end
    object dxBarButton46: TdxBarButton
      Action = actJornalAtribuicoes
      Category = 0
    end
    object dxBarButton47: TdxBarButton
      Action = actJornalBaixaProtocolo
      Category = 0
    end
    object dxBarSubItem9: TdxBarSubItem
      Caption = '&Transportes'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton48'
        end
        item
          Visible = True
          ItemName = 'dxBarButton49'
        end
        item
          Visible = True
          ItemName = 'dxBarButton50'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton51'
        end
        item
          Visible = True
          ItemName = 'dxBarButton52'
        end>
    end
    object dxBarButton48: TdxBarButton
      Action = actOperacaoOrdemServico
      Category = 0
    end
    object dxBarButton49: TdxBarButton
      Action = actOperacaoMalote
      Category = 0
    end
    object dxBarButton50: TdxBarButton
      Action = actOperacaoAbastecimentos
      Category = 0
    end
    object dxBarButton51: TdxBarButton
      Action = actOperacaoAcompanhamento
      Category = 0
    end
    object dxBarButton52: TdxBarButton
      Action = actOperacaoManutencao
      Category = 0
    end
    object dxBarSubItem10: TdxBarSubItem
      Caption = '&Sistema'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton53'
        end
        item
          Visible = True
          ItemName = 'dxBarButton54'
        end
        item
          Visible = True
          ItemName = 'dxBarButton55'
        end>
    end
    object dxBarButton53: TdxBarButton
      Action = actSegurancaUsuario
      Category = 0
    end
    object dxBarButton54: TdxBarButton
      Action = actSistemaSenha
      Category = 0
    end
    object dxBarButton55: TdxBarButton
      Action = actSistemaTrocaUsuario
      Category = 0
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actCadastroAgentes
      Category = 0
      LargeImageIndex = 2
      ShowCaption = False
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actCadastroEntregadores
      Category = 0
      LargeImageIndex = 9
      ShowCaption = False
    end
    object dxBarButton56: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = actCadastroVeiculos
      Category = 0
      LargeImageIndex = 5
      ShowCaption = False
    end
    object dxBarButton57: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = actCadastroLacres
      Category = 0
      LargeImageIndex = 18
      ShowCaption = False
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = actJornalAssinaturas
      Category = 0
      LargeImageIndex = 3
      ShowCaption = False
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = actImportarEntregas
      Category = 0
      LargeImageIndex = 15
      ShowCaption = False
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = actImportarBaixas
      Category = 0
      LargeImageIndex = 14
      ShowCaption = False
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Action = actExpressasEntregas
      Category = 0
      LargeImageIndex = 8
      ShowCaption = False
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Action = actExpressasAcareacoes
      Category = 0
      LargeImageIndex = 1
      ShowCaption = False
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Action = actExpressasExtravios
      Category = 0
      LargeImageIndex = 12
      ShowCaption = False
    end
    object dxBarLargeButton11: TdxBarLargeButton
      Action = actOperacaoExpectativas
      Category = 0
      LargeImageIndex = 7
      ShowCaption = False
    end
    object dxBarLargeButton12: TdxBarLargeButton
      Action = actOperacaoDevolucaoBase
      Category = 0
      LargeImageIndex = 7
      ShowCaption = False
    end
    object dxBarLargeButton13: TdxBarLargeButton
      Action = actOperacaoReceberContainer
      Category = 0
      LargeImageIndex = 25
      ShowCaption = False
    end
    object dxBarLargeButton14: TdxBarLargeButton
      Action = actFinanceiroExtratoAgentes
      Category = 0
      LargeImageIndex = 11
      ShowCaption = False
    end
    object dxBarLargeButton15: TdxBarLargeButton
      Action = actFinanceiroLancamentos
      Category = 0
      LargeImageIndex = 19
      ShowCaption = False
    end
    object dxBarLargeButton16: TdxBarLargeButton
      Action = actFinanceiroRestricoes
      Category = 0
      LargeImageIndex = 26
      ShowCaption = False
    end
    object dxBarLargeButton17: TdxBarLargeButton
      Action = actFinanceiroFechamentoExpressas
      Category = 0
      LargeImageIndex = 13
      ShowCaption = False
    end
    object dxBarLargeButton18: TdxBarLargeButton
      Action = actImportarTiragem
      Category = 0
      LargeImageIndex = 17
      ShowCaption = False
    end
    object dxBarLargeButton19: TdxBarLargeButton
      Action = actJornalImportarEtiquetas
      Category = 0
      LargeImageIndex = 16
      ShowCaption = False
    end
    object dxBarLargeButton20: TdxBarLargeButton
      Action = actJornalOperacional
      Category = 0
      LargeImageIndex = 23
      ShowCaption = False
    end
    object dxBarLargeButton21: TdxBarLargeButton
      Action = actJornalOcorrencias
      Category = 0
      LargeImageIndex = 22
      ShowCaption = False
    end
    object dxBarLargeButton22: TdxBarLargeButton
      Action = actRecados
      Category = 0
      LargeImageIndex = 29
      ShowCaption = False
    end
    object dxBarLargeButton23: TdxBarLargeButton
      Action = actJornalEtiquetas
      Category = 0
      LargeImageIndex = 10
      ShowCaption = False
    end
    object dxBarLargeButton24: TdxBarLargeButton
      Action = actOperacaoOrdemServico
      Category = 0
      LargeImageIndex = 24
      ShowCaption = False
    end
    object dxBarLargeButton25: TdxBarLargeButton
      Action = actOperacaoMalote
      Category = 0
      LargeImageIndex = 20
      ShowCaption = False
    end
    object dxBarLargeButton26: TdxBarLargeButton
      Action = actOperacaoAbastecimentos
      Category = 0
      LargeImageIndex = 0
      ShowCaption = False
    end
    object dxBarButton58: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton27: TdxBarLargeButton
      Action = actOperacaoAcompanhamento
      Category = 0
      LargeImageIndex = 27
      ShowCaption = False
    end
    object dxBarLargeButton28: TdxBarLargeButton
      Action = actArquivoSair
      Category = 0
      LargeImageIndex = 30
      ShowCaption = False
    end
  end
end
