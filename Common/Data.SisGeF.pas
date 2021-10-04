unit Data.SisGeF;

interface

uses
  System.SysUtils, System.Classes, System.ImageList, Vcl.ImgList, Vcl.Controls, cxGraphics, dxScreenTip, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxLookAndFeels, dxSkinsForm, cxLocalization, cxClasses, dxCustomHint, cxHint, FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait, FireDAC.Phys.MySQLDef, FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Stan.Intf, FireDAC.Comp.UI,
  dxLayoutLookAndFeels, Forms, frxExportCSV, frxExportText, frxExportImage, frxExportRTF, frxExportHTML, frxClass, frxExportPDF,
  frxBarcode, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.StorageBin, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Comp.BatchMove.Text, FireDAC.Comp.BatchMove, FireDAC.Comp.BatchMove.DataSet, cxLookAndFeelPainters,
  dxAlertWindow, Xml.xmldom, Datasnap.Provider, Datasnap.Xmlxform, Datasnap.DBClient, Xml.XMLIntf, Xml.Win.msxmldom, Xml.XMLDoc,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdFTP, ScBridge, ScSSHClient,
  ScSFTPClient, Dialogs, ScSSHUtils, ScUtils, ScSFTPUtils, FireDAC.DApt, frxRich, System.DateUtils,
  frxExportBaseDialog, cxImageList, Control.Bases, Control.Sistema;

type
  TData_Sisgef = class(TDataModule)
    lmi_32_32: TcxImageList;
    cxLocalizer: TcxLocalizer;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    FDPhysMySQLDriverLink: TFDPhysMySQLDriverLink;
    iml_16_16: TcxImageList;
    LayoutLookAndFeelList: TdxLayoutLookAndFeelList;
    LayoutCxLookAndFeel: TdxLayoutCxLookAndFeel;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxBMPExport1: TfrxBMPExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxTIFFExport1: TfrxTIFFExport;
    frxGIFExport1: TfrxGIFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxCSVExport1: TfrxCSVExport;
    frxBarCodeObject1: TfrxBarCodeObject;
    memTableCadastro: TFDMemTable;
    memTableCadastroid_cadastro: TIntegerField;
    memTableCadastrocod_tipo_cadastro: TIntegerField;
    memTableCadastrocod_pessoa: TSmallintField;
    memTableCadastronom_nome_razao: TStringField;
    memTableCadastronom_fantasia: TStringField;
    memTableCadastronum_cpf_cnpj: TStringField;
    memTableCadastronum_rg_ie: TStringField;
    memTableCadastrodes_expedidor: TStringField;
    memTableCadastrodat_emissao_rg: TDateField;
    memTableCadastrouf_expedidor_rg: TStringField;
    memTableCadastrodat_nascimento: TDateField;
    memTableCadastronom_pai: TStringField;
    memTableCadastronom_mae: TStringField;
    memTableCadastrodes_naturalidade: TStringField;
    memTableCadastrouf_naturalidade: TStringField;
    memTableCadastronum_suframa: TStringField;
    memTableCadastronum_cnae: TStringField;
    memTableCadastronum_crt: TIntegerField;
    memTableCadastrocod_cnh: TStringField;
    memTableCadastronum_registro_cnh: TStringField;
    memTableCadastrocod_seguranca_cnh: TStringField;
    memTableCadastrodat_validade_cnh: TDateField;
    memTableCadastrodat_emissao_cnh: TDateField;
    memTableCadastrodes_categoria: TStringField;
    memTableCadastrodat_primeira_cnh: TDateField;
    memTableCadastrouf_cnh: TStringField;
    memTableCadastrodes_estado_civil: TStringField;
    memTableCadastrodat_cadastro: TDateField;
    memTableCadastrocod_usuario: TIntegerField;
    memTableCadastrodes_obs: TMemoField;
    memTableRH: TFDMemTable;
    memTableRHid_cadastro: TIntegerField;
    memTableRHnum_pis: TStringField;
    memTableRHnum_ctps: TStringField;
    memTableRHnum_serie_ctps: TStringField;
    memTableRHuf_ctps: TStringField;
    memTableRHnum_titulo_eleitor: TStringField;
    memTableRHdes_zona_eleitoral: TStringField;
    memTableRHdes_secao_eleitoral: TStringField;
    memTableRHnom_municipio_eleitoral: TStringField;
    memTableRHuf_eleitoral: TStringField;
    memTableRHnum_reservista: TStringField;
    memTableRHid_funcao: TIntegerField;
    memTableRHdat_admissao: TDateField;
    memTableRHdat_demissao: TDateField;
    memTableRHid_folha: TIntegerField;
    memTableRHid_status: TIntegerField;
    memTableRHdes_log: TMemoField;
    memTableEnderecos: TFDMemTable;
    memTableEnderecosid_cadastro: TIntegerField;
    memTableEnderecosdes_tipo_endereco: TStringField;
    memTableEnderecosdes_logradouro: TStringField;
    memTableEnderecosnum_logradouro: TStringField;
    memTableEnderecosdes_complemento: TStringField;
    memTableEnderecosnom_bairro: TStringField;
    memTableEnderecosnom_cidade: TStringField;
    memTableEnderecosuf_estado: TStringField;
    memTableEnderecosnum_cep: TStringField;
    memTableContatos: TFDMemTable;
    memTableContatosid_cadastro: TIntegerField;
    memTableContatosseq_contato: TIntegerField;
    memTableContatosdes_contato: TStringField;
    memTableContatosnum_telefone: TStringField;
    memTableContatosdes_email: TStringField;
    mtbImportacaoExtravios: TFDMemTable;
    FDBTextReaderExtravios: TFDBatchMoveTextReader;
    FDBDSWriterExtravios: TFDBatchMoveDataSetWriter;
    FDBmExtravios: TFDBatchMove;
    mtbBaixasTFO: TFDMemTable;
    FDBTextReader: TFDBatchMoveTextReader;
    FDBDataSetWriter: TFDBatchMoveDataSetWriter;
    FDBatchMove: TFDBatchMove;
    mtbPlanilhas: TFDMemTable;
    dxAlertWindowManager: TdxAlertWindowManager;
    FDBDataSetReader: TFDBatchMoveDataSetReader;
    mtbEntregas: TFDMemTable;
    mtbEntregasNUM_NOSSONUMERO: TStringField;
    mtbEntregasCOD_AGENTE: TIntegerField;
    mtbEntregasCOD_ENTREGADOR: TIntegerField;
    mtbEntregasCOD_CLIENTE: TIntegerField;
    mtbEntregasNUM_NF: TStringField;
    mtbEntregasNOM_CONSUMIDOR: TStringField;
    mtbEntregasDES_ENDERECO: TStringField;
    mtbEntregasDES_COMPLEMENTO: TStringField;
    mtbEntregasDES_BAIRRO: TStringField;
    mtbEntregasNOM_CIDADE: TStringField;
    mtbEntregasNUM_CEP: TStringField;
    mtbEntregasNUM_TELEFONE: TStringField;
    mtbEntregasDAT_EXPEDICAO: TDateField;
    mtbEntregasDAT_PREV_DISTRIBUICAO: TDateField;
    mtbEntregasQTD_VOLUMES: TIntegerField;
    mtbEntregasDAT_ATRIBUICAO: TDateTimeField;
    mtbEntregasDAT_BAIXA: TDateField;
    mtbEntregasDOM_BAIXADO: TStringField;
    mtbEntregasDAT_PAGAMENTO: TDateField;
    mtbEntregasDOM_PAGO: TStringField;
    mtbEntregasDOM_FECHADO: TStringField;
    mtbEntregasCOD_STATUS: TIntegerField;
    mtbEntregasDAT_ENTREGA: TDateField;
    mtbEntregasNUM_EXTRATO: TStringField;
    mtbEntregasQTD_DIAS_ATRASO: TIntegerField;
    mtbEntregasDES_TIPO_PESO: TStringField;
    mtbEntregasDAT_RECEBIDO: TDateField;
    mtbEntregasDOM_RECEBIDO: TStringField;
    mtbEntregasNUM_CTRC: TIntegerField;
    mtbEntregasNUM_MANIFESTO: TIntegerField;
    mtbEntregasDES_RASTREIO: TMemoField;
    mtbEntregasNUM_LOTE_REMESSA: TIntegerField;
    mtbEntregasDES_RETORNO: TStringField;
    mtbEntregasDAT_CREDITO: TDateField;
    mtbEntregasDOM_CREDITO: TStringField;
    mtbEntregasNUM_CONTAINER: TStringField;
    mtbEntregasQTD_ALTURA: TIntegerField;
    mtbEntregasQTD_LARGURA: TIntegerField;
    mtbEntregasQTD_COMPRIMENTO: TIntegerField;
    mtbEntregasCOD_FEEDBACK: TIntegerField;
    mtbEntregasDAT_FEEDBACK: TDateTimeField;
    mtbEntregasDOM_CONFERIDO: TIntegerField;
    mtbEntregasNUM_PEDIDO: TStringField;
    mtbEntregasCOD_CLIENTE_EMPRESA: TIntegerField;
    mtbBases: TFDMemTable;
    mtbEntregadores: TFDMemTable;
    mtbEmbarcadores: TFDMemTable;
    mtbEntregasQTD_PESO_COBRADO: TFloatField;
    mtbEntregasQTD_PESO_REAL: TFloatField;
    mtbEntregasQTD_PESO_FRANQUIA: TFloatField;
    mtbEntregasVAL_VERBA_ENTREGADOR: TFloatField;
    mtbEntregasVAL_PAGO_FRANQUIA: TFloatField;
    mtbEntregasVAL_ADVALOREM: TFloatField;
    mtbEntregasVAL_VERBA_FRANQUIA: TFloatField;
    mtbEntregasQTD_VOLUMES_EXTRA: TSingleField;
    mtbEntregasVAL_VOLUMES_EXTRA: TCurrencyField;
    mtbEntregasVAL_PRODUTO: TSingleField;
    mtbAtribuicao: TFDMemTable;
    mtbAtribuicaoid_atribuicao: TIntegerField;
    mtbAtribuicaodat_atribuicao: TDateTimeField;
    mtbAtribuicaocod_entregador: TIntegerField;
    mtbAtribuicaonum_lote_remessa: TIntegerField;
    mtbAtribuicaodat_retorno: TDateTimeField;
    mtbAtribuicaodes_log: TMemoField;
    mtbAtribuicaocod_cliente: TIntegerField;
    mtbAtribuicaocod_embarcador: TIntegerField;
    mtbAtribuicaonom_embarcador: TStringField;
    mtbAtribuicaodes_endereco: TStringField;
    mtbAtribuicaonum_cep: TStringField;
    mtbAtribuicaonom_bairro: TStringField;
    mtbAtribuicaonom_consumidor: TStringField;
    mtbAtribuicaoqtd_volumes: TIntegerField;
    mtbAtribuicaodes_telefone: TStringField;
    mtbAtribuicaocod_atribuicao: TStringField;
    mtbAtribuicaonum_nossonumero: TStringField;
    mtbAtribuicaodom_retorno: TShortintField;
    mtbAtribuicaocod_retorno: TStringField;
    mtbAtribuicaocod_informativo: TIntegerField;
    ScSFTPClient: TScSFTPClient;
    ScSSHClient: TScSSHClient;
    ScFileStorage: TScFileStorage;
    mtbRecepcaoPedidos: TFDMemTable;
    mtbRecepcaoPedidosnum_nossonumero: TStringField;
    mtbRecepcaoPedidoscod_cliente: TIntegerField;
    mtbRecepcaoPedidosnum_nf: TStringField;
    mtbRecepcaoPedidosnom_consumidor: TStringField;
    mtbRecepcaoPedidosdat_expedicao: TDateTimeField;
    mtbRecepcaoPedidosqtd_volumes: TIntegerField;
    mtbRecepcaoPedidosqtd_peso_real: TFloatField;
    mtbRecepcaoPedidosnum_container: TStringField;
    mtbRecepcaoPedidosnum_pedido: TStringField;
    mtbRecepcaoPedidosdat_recebido: TDateTimeField;
    mtbExpedicao: TFDMemTable;
    mtbResumoExpedicao: TFDMemTable;
    mtbResumoExpedicaodat_expedicao: TDateTimeField;
    mtbResumoExpedicaocod_ccep: TStringField;
    mtbResumoExpedicaocod_base: TIntegerField;
    mtbResumoExpedicaonum_container: TIntegerField;
    mtbResumoExpedicaocod_unitizador: TIntegerField;
    mtbResumoExpedicaocod_embarcador: TIntegerField;
    mtbResumoExpedicaodes_embarcador: TStringField;
    mtbResumoExpedicaoqtd_volumes: TIntegerField;
    mtbResumoExpedicaoqtd_peso: TFloatField;
    mtbResumoExpedicaoqtd_pedidos: TIntegerField;
    mtbResumoExpedicaonum_romaneio: TIntegerField;
    mtbExpedicaoid_expedicao: TIntegerField;
    mtbExpedicaodat_expedicao: TDateTimeField;
    mtbExpedicaocod_ccep: TStringField;
    mtbExpedicaocod_base: TIntegerField;
    mtbExpedicaonum_container: TIntegerField;
    mtbExpedicaocod_unitizador: TIntegerField;
    mtbExpedicaonum_nossonumero: TStringField;
    mtbExpedicaocod_embarcador: TIntegerField;
    mtbExpedicaodes_embarcador: TStringField;
    mtbExpedicaoqtd_volumes: TIntegerField;
    mtbExpedicaoqtd_peso: TSingleField;
    mtbExpedicaodes_executor: TStringField;
    mtbExpedicaodat_execucao: TDateTimeField;
    mtbExpedicaodes_conferente: TStringField;
    mtbExpedicaodat_conferencia: TDateTimeField;
    mtbExpedicaodes_recebedor: TStringField;
    mtbExpedicaodat_recebimento: TDateTimeField;
    mtbExpedicaonum_romaneio: TIntegerField;
    mtbExpedicaodom_ccep: TIntegerField;
    mtbConferenciaPedido: TFDMemTable;
    mtbConferenciaPedidodom_ok: TIntegerField;
    mtbConferenciaPedidonum_nossonumero: TStringField;
    mtbConferenciaPedidonum_volume: TIntegerField;
    mtbRespostas: TFDMemTable;
    mtbRespostasdom_flag: TStringField;
    mtbRespostasdat_retorno: TStringField;
    mtbRespostasnum_nossonumero: TStringField;
    mtbRespostasdes_resposta: TStringField;
    mtbRespostascod_embarcador: TStringField;
    mtbRespostasnom_embarcador: TStringField;
    mtbRespostasnum_pedido: TStringField;
    mtbRespostasnom_consumidor: TStringField;
    mtbRespostasnum_telefone: TStringField;
    mtbRespostasdat_atribuicao: TStringField;
    mtbRespostasnom_entregador: TStringField;
    mtbRespostasdat_previsao: TStringField;
    mtbRespostasdat_leitura: TStringField;
    mtbRespostasnom_usuario: TStringField;
    mtbRespostasnum_sequencia: TStringField;
    mtbRespostasnom_cidade: TStringField;
    mtbRespostasdes_email: TStringField;
    mtbFechamentoExpressas: TFDMemTable;
    mtbFechamentoExpressasqtd_volumes: TIntegerField;
    mtbFechamentoExpressasqtd_entregas: TIntegerField;
    mtbFechamentoExpressasqtd_volumes_extra: TFloatField;
    mtbFechamentoExpressasqtd_atraso: TIntegerField;
    mtbFechamentoExpressasval_producao: TFloatField;
    mtbFechamentoExpressasval_performance: TFloatField;
    mtbFechamentoExpressasval_total_ticket: TFloatField;
    mtbFechamentoExpressasval_ticket_medio: TFloatField;
    mtbFechamentoExpressasval_extravios: TFloatField;
    mtbFechamentoExpressasval_debitos: TFloatField;
    mtbFechamentoExpressasval_creditos: TFloatField;
    mtbFechamentoExpressascod_tipo_expressa: TIntegerField;
    mtbFechamentoExpressasnom_expressa: TStringField;
    mtbFechamentoExpressasval_total: TFloatField;
    mtbFechamentoExpressasnom_banco: TStringField;
    mtbFechamentoExpressasnum_agencia: TStringField;
    mtbFechamentoExpressasnum_conta: TStringField;
    mtbFechamentoExpressasnom_favorecido: TStringField;
    mtbFechamentoExpressasnum_cpf_cnpj: TStringField;
    mtbFechamentoExpressasdes_tipo_conta: TStringField;
    mtbFechamentoExpressasqtd_pfp: TIntegerField;
    frxRichObject1: TfrxRichObject;
    mtbRoteirosExpressas: TFDMemTable;
    mtbRoteirosExpressasid_roteiro: TIntegerField;
    mtbRoteirosExpressascod_ccep5: TStringField;
    mtbRoteirosExpressasdes_roteiro: TStringField;
    mtbRoteirosExpressasnum_cep_inicial: TStringField;
    mtbRoteirosExpressasnum_cep_final: TStringField;
    mtbRoteirosExpressasdes_prazo: TStringField;
    mtbRoteirosExpressasdom_zona: TStringField;
    mtbRoteirosExpressasdes_logradouro: TStringField;
    mtbRoteirosExpressasdes_bairro: TStringField;
    mtbRoteirosExpressascod_cliente: TIntegerField;
    mtbExpedicaodes_roteiro: TStringField;
    mtbFechamentoExpressasval_volume_extra: TFloatField;
    mtbFechamentoExpressascod_expressa: TIntegerField;
    mtbExtratosExpressas: TFDMemTable;
    mtbExtratosExpressascod_base: TIntegerField;
    mtbExtratosExpressasnom_base: TStringField;
    mtbExtratosExpressascod_entregador: TIntegerField;
    mtbExtratosExpressasnom_entregador: TStringField;
    mtbExtratosExpressasnum_extrato: TStringField;
    mtbExtratosExpressasval_verba: TCurrencyField;
    mtbExtratosExpressasqtd_volumes_extra: TFloatField;
    mtbExtratosExpressasval_volumes_extra: TCurrencyField;
    mtbExtratosExpressasqtd_entregas: TIntegerField;
    mtbExtratosExpressasqtd_atraso: TIntegerField;
    mtbExtratosExpressasval_performance: TFloatField;
    mtbExtratosExpressasval_producao: TCurrencyField;
    mtbExtratosExpressasval_creditos: TCurrencyField;
    mtbExtratosExpressasval_debitos: TCurrencyField;
    mtbExtratosExpressasval_extravios: TCurrencyField;
    mtbExtratosExpressasval_total_expressa: TCurrencyField;
    mtbExtratosExpressasval_total_empresa: TCurrencyField;
    mtbClientesEmpresa: TFDMemTable;
    mtbClientesEmpresacod_cliente: TIntegerField;
    mtbClientesEmpresanom_cliente: TStringField;
    mtbExtratosExpressascod_cliente: TIntegerField;
    mtbExtratosExpressasnom_cliente: TStringField;
    mtbExtratosExpressasdat_credito: TDateField;
    mtbBasescod_base: TIntegerField;
    mtbBasesnom_base: TStringField;
    mtbClientesEmpresadom_check: TIntegerField;
    mtbBasesdom_check: TLargeintField;
    mtbExtratosExpressasid_extrato: TLargeintField;
    mtbExtratosExpressasnum_ano: TLargeintField;
    mtbExtratosExpressasnum_mes: TLargeintField;
    mtbExtratosExpressasnum_quinzena: TLargeintField;
    mtbExtratosExpressasqtd_volumes: TIntegerField;
    mtbExtratosExpressasdat_inicio: TDateField;
    mtbExtratosExpressasdat_final: TDateField;
    mtbRoteirosExpressascod_tipo: TIntegerField;
    mtbRoteirosExpressascod_leve: TIntegerField;
    mtbRoteirosExpressascod_pesado: TIntegerField;
    mtbExtravios: TFDMemTable;
    mtbExtravioscod_extravio: TIntegerField;
    mtbExtraviosdes_extravio: TStringField;
    mtbExtraviosnum_nossonumero: TStringField;
    mtbExtravioscod_agente: TIntegerField;
    mtbExtraviosval_produto: TFloatField;
    mtbExtraviosval_multa: TFloatField;
    mtbExtraviosval_verba: TFloatField;
    mtbExtraviosval_total: TFloatField;
    mtbExtraviosdom_restricao: TStringField;
    mtbExtravioscod_entregador: TIntegerField;
    mtbExtravioscod_tipo: TIntegerField;
    mtbExtraviosval_verba_franquia: TFloatField;
    mtbExtraviosval_extrato_franquia: TFloatField;
    mtbExtraviosdom_extrato_franquia: TStringField;
    mtbExtraviosdat_extravio_franquia: TDateField;
    mtbExtraviosdes_envio_correspondencia: TStringField;
    mtbExtraviosdes_retorno_correspondencia: TStringField;
    mtbExtraviosdes_observacoes: TMemoField;
    mtbExtraviosval_percentual_pago: TFloatField;
    mtbExtraviosid_extrato: TIntegerField;
    mtbExtraviosseq_acareacao: TIntegerField;
    mtbExtraviosnom_executor: TStringField;
    mtbExtraviosdat_manutencao: TDateTimeField;
    mtbExtraviosnum_extrato: TStringField;
    mtbExtraviosdat_extravio: TDateField;
    mtbFechamentoExpressascod_banco: TStringField;
    memTableDadosBancarios: TFDMemTable;
    memTableDadosBancariosid_cadastro: TIntegerField;
    memTableDadosBancariosseq_financeiro: TIntegerField;
    memTableDadosBancariosdes_forma_credito: TStringField;
    memTableDadosBancariosdes_tipo_conta: TStringField;
    memTableDadosBancarioscod_banco: TStringField;
    memTableDadosBancariosnum_agencia: TStringField;
    memTableDadosBancariosdes_conta: TStringField;
    dom: TStringField;
    memTableDadosBancariosdom_ativo: TSmallintField;
    memTableBancos: TFDMemTable;
    memTableBancoscod_banco: TStringField;
    memTableBancosnom_banco: TStringField;
    memTableEstados: TFDMemTable;
    memTableEstadosuf_estado: TStringField;
    memTableEstadosnom_estado: TStringField;
    memTableEstadoscep_inicial: TIntegerField;
    memTableEstadoscep_final: TIntegerField;
    memTableEstadosdes_regiao: TStringField;
    memTableEstadosdes_log: TMemoField;
    memTableDadosBancariosnom_favorecido: TStringField;
    memTableDadosBancariosnum_cnpj_cpf_favorecido: TStringField;
    memTableCadastrodes_nacionalidade: TStringField;
    memTableCadastrocod_sexo: TSmallintField;
    memTableCadastrodes_imagem: TStringField;
    memTableCadastroid_status: TIntegerField;
    memTableCadastronum_im: TStringField;
    memTableCadastronum_iest: TStringField;
    skcmain: TdxSkinController;
    mtbFechamentoExpressasdat_inicio: TDateField;
    mtbFechamentoExpressasdat_fim: TDateField;
    mtbExtratosExpressasdes_unique_key: TStringField;
    mtbFechamentoExpressasdes_unique_key: TStringField;
    mtbFechamentoExpressasdat_credito: TDateField;
    mtbFechamentoExpressasdom_boleto: TIntegerField;
    mtbFechamentoExpressasnum_extrato: TStringField;
    mtbFechamentoExpressasCampoEmpresa: TStringField;
    mtbFechamentoExpressasCampoCodigoPessoa: TStringField;
    mtbFechamentoExpressasCampoNomeTitulo: TStringField;
    mtbFechamentoExpressasCampoCNPJCPFPessoa: TStringField;
    mtbFechamentoExpressasCampoNumeroTitulo: TStringField;
    mtbFechamentoExpressasCampoNaturezaLancamento: TStringField;
    mtbFechamentoExpressasCampoFormaPagamento: TStringField;
    mtbFechamentoExpressasCampoAgencia: TStringField;
    mtbFechamentoExpressasCampoConta: TStringField;
    mtbFechamentoExpressasCampoBanco: TStringField;
    mtbFechamentoExpressasCampoValorTitulo: TStringField;
    mtbFechamentoExpressasCampoDtEmissao: TStringField;
    mtbFechamentoExpressasCampoDtVencimento: TStringField;
    mtbFechamentoExpressasCampoModalidade: TStringField;
    FDConnectionMySQL: TFDConnection;
    SaveDialog: TSaveDialog;
    mtbRoteirosLivres: TFDMemTable;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    IntegerField2: TIntegerField;
    StringField7: TStringField;
    StringField8: TStringField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    mtbRoteirosLivresdom_check: TSmallintField;
    mtbRoteirosExpressasdom_check: TSmallintField;
    memTableResumoRoteiros: TFDMemTable;
    memTableResumoRoteirosdes_roteiro: TStringField;
    memTableResumoRoteirosqtd_volumes_leves: TIntegerField;
    memTableResumoRoteirosqtd_remessas_leves: TIntegerField;
    memTableResumoRoteirosqtd_volumes_pesado: TIntegerField;
    memTableResumoRoteirosqtd_remessas_pesado: TIntegerField;
    memTableResumoRoteirosqtd_total_volumes: TIntegerField;
    memTableResumoRoteirosqtd_total_remessas: TIntegerField;
    memTableResumoRoteirosval_total_pgr: TCurrencyField;
    memTableResumoRoteiroscod_roteiro: TStringField;
    memTableResumoRoteirosval_pgr_leves: TCurrencyField;
    memTableResumoRoteirosval_pgr_pesado: TCurrencyField;
    FDMemTable1: TFDMemTable;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    SmallintField1: TSmallintField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    DateField1: TDateField;
    StringField14: TStringField;
    DateField2: TDateField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    IntegerField8: TIntegerField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    DateField3: TDateField;
    StringField25: TStringField;
    DateField4: TDateField;
    DateField5: TDateField;
    StringField26: TStringField;
    SmallintField2: TSmallintField;
    StringField27: TStringField;
    DateField6: TDateField;
    IntegerField9: TIntegerField;
    StringField28: TStringField;
    IntegerField10: TIntegerField;
    MemoField1: TMemoField;
    StringField29: TStringField;
    StringField30: TStringField;
    FDMemTable2: TFDMemTable;
    IntegerField11: TIntegerField;
    memTableEnderecoscod_tipo_cadastro: TIntegerField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    StringField35: TStringField;
    StringField36: TStringField;
    StringField37: TStringField;
    StringField38: TStringField;
    FDMemTable3: TFDMemTable;
    IntegerField12: TIntegerField;
    memTableContatoscod_tipo_cadastro: TIntegerField;
    IntegerField13: TIntegerField;
    StringField39: TStringField;
    StringField40: TStringField;
    StringField41: TStringField;
    FDMemTable4: TFDMemTable;
    IntegerField14: TIntegerField;
    StringField42: TStringField;
    StringField43: TStringField;
    memTableCadastrodes_tipo_doc: TStringField;
    StringField44: TStringField;
    StringField45: TStringField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    MemoField2: TMemoField;
    DateField7: TDateField;
    memTableCadastrodes_tipo_conta: TStringField;
    memTableCadastrocod_banco: TStringField;
    memTableCadastrocod_agencia: TStringField;
    memTableCadastronum_conta: TStringField;
    memTableCadastronom_favorecido: TStringField;
    memTableCadastronum_cpf_cnpj_favorecido: TStringField;
    memTableCadastrodes_forma_pagamento: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure ScSSHClientServerKeyValidate(Sender: TObject; NewServerKey: TScKey; var Accept: Boolean);
    procedure mtbFechamentoExpressasCalcFields(DataSet: TDataSet);
    procedure mtbExtratosExpressasCalcFields(DataSet: TDataSet);
    procedure FDConnectionMySQLBeforeConnect(Sender: TObject);
    procedure memTableResumoRoteirosCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoServerKeyValidate(FileStorage: TScFileStorage;  const HostKeyName: string; NewServerKey: TScKey;
                                  var Accept: Boolean);
  public
    { Public declarations }
    procedure PopulaClientesEmpresa;
    procedure PopulaBases;
  end;

var
  Data_Sisgef: TData_Sisgef;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Global.Parametros;

{$R *.dfm}

procedure TData_Sisgef.DataModuleCreate(Sender: TObject);
begin
    if FileExists(ExtractFilePath(Application.ExeName)+'\devtrans.ini') then
  begin
    cxLocalizer.LoadFromFile(ExtractFilePath(Application.ExeName)+ '\devtrans.ini');
    cxLocalizer.LanguageIndex := 1; // MUDA DE LINGUAGEM
    cxLocalizer.Active := TRUE;     // ATIVA O COMPONENTE
  end;
end;

procedure TData_Sisgef.DoServerKeyValidate(FileStorage: TScFileStorage;
  const HostKeyName: string; NewServerKey: TScKey; var Accept: Boolean);
var
  Key: TScKey;
  fp, msg: string;
begin
  Key := FileStorage.Keys.FindKey(HostKeyName);
  if (Key = nil) or not Key.Ready then begin
    {NewServerKey.GetFingerPrint(haMD5, fp);
    msg := 'A autenticidade do servidor não pode ser verificada.'#13#10 +
           'Impressão digital da chave recebida do servidor: ' + fp + '.'#13#10 +
           'Comprimento da chave: ' + IntToStr(NewServerKey.BitCount) + ' bits.'#13#10 +
           'Tem certeza de que deseja continuar conectando?';

    if MessageDlg(msg, mtConfirmation, [mbOk, mbCancel], 0) = mrOk then begin}
      Key := TScKey.Create(nil);
      try
        Key.Assign(NewServerKey);
        Key.KeyName := HostKeyName;
        FileStorage.Keys.Add(Key);
      except
        Key.Free;
        raise;
      end;

      Accept := True;
   // end;
  end;
end;


procedure TData_Sisgef.FDConnectionMySQLBeforeConnect(Sender: TObject);
begin
  FDConnectionMySQL.ConnectionString := 'DriverID=' + Global.Parametros.pDriverID +
                                        ';Server=' + Global.Parametros.pServer +
                                        ';Database=' + Global.Parametros.pDatabase +
                                        ';Port=' + Global.Parametros.pPort +
                                        ';User_name=' + Global.Parametros.pUBD +
                                        ';Password=' + Global.Parametros.pPBD;
end;

procedure TData_Sisgef.memTableResumoRoteirosCalcFields(DataSet: TDataSet);
begin
  memTableResumoRoteirosqtd_total_remessas.AsInteger := memTableResumoRoteirosqtd_remessas_leves.AsInteger +
                                                       memTableResumoRoteirosqtd_remessas_pesado.AsInteger;
  memTableResumoRoteirosqtd_total_volumes.AsInteger := memTableResumoRoteirosqtd_volumes_leves.AsInteger +
                                                       memTableResumoRoteirosqtd_volumes_pesado.AsInteger;
end;

procedure TData_Sisgef.mtbExtratosExpressasCalcFields(DataSet: TDataSet);
begin
  mtbExtratosExpressasval_volumes_extra.AsFloat := mtbExtratosExpressasqtd_volumes_extra.AsFloat *
                                                   mtbExtratosExpressasval_verba.AsFloat;
  mtbExtratosExpressasval_producao.AsFloat := (mtbExtratosExpressasqtd_entregas.AsInteger *
                                                    mtbExtratosExpressasval_verba.AsFloat) +
                                                    mtbExtratosExpressasval_volumes_extra.AsFloat;
  mtbExtratosExpressasval_total_expressa.AsFloat := mtbExtratosExpressasval_producao.AsFloat +
                                                    mtbExtratosExpressasval_creditos.AsFloat +
                                                    mtbExtratosExpressasval_debitos.AsFloat +
                                                    mtbExtratosExpressasval_extravios.AsFloat;
end;

procedure TData_Sisgef.mtbFechamentoExpressasCalcFields(DataSet: TDataSet);
begin
  mtbFechamentoExpressasval_performance.AsFloat :=  100 - ((mtbFechamentoExpressasqtd_atraso.AsInteger * 100) /
                                                     mtbFechamentoExpressasqtd_entregas.AsInteger);
  mtbFechamentoExpressasval_total.AsFloat := mtbFechamentoExpressasval_producao.AsFloat + mtbFechamentoExpressasval_extravios.AsFloat +
  mtbFechamentoExpressasval_debitos.AsFloat + mtbFechamentoExpressasval_creditos.AsFloat + mtbFechamentoExpressasval_volume_extra.AsFloat;

  mtbFechamentoExpressasval_ticket_medio.AsFloat := mtbFechamentoExpressasval_total.AsFloat /
                                                (mtbFechamentoExpressasqtd_entregas.AsInteger +
                                                mtbFechamentoExpressasqtd_volumes_extra.AsFloat);
end;

procedure TData_Sisgef.PopulaBases;
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

procedure TData_Sisgef.PopulaClientesEmpresa;
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
  Data_Sisgef.mtbClientesEmpresa.Insert;
  Data_Sisgef.mtbClientesEmpresadom_check.AsInteger := 0;
  Data_Sisgef.mtbClientesEmpresacod_cliente.AsInteger := 5;
  Data_Sisgef.mtbClientesEmpresanom_cliente.AsString := 'RODOÊ';
  Data_Sisgef.mtbClientesEmpresa.Post;
  Data_Sisgef.mtbClientesEmpresa.Insert;
  Data_Sisgef.mtbClientesEmpresadom_check.AsInteger := 0;
  Data_Sisgef.mtbClientesEmpresacod_cliente.AsInteger := 6;
  Data_Sisgef.mtbClientesEmpresanom_cliente.AsString := 'COMPLOG';
  Data_Sisgef.mtbClientesEmpresa.Post;
  Data_Sisgef.mtbClientesEmpresa.First;
end;

procedure TData_Sisgef.ScSSHClientServerKeyValidate(Sender: TObject; NewServerKey: TScKey; var Accept: Boolean);
var
  CurHostKeyName: string;
begin
  if ScSSHClient.HostKeyName = '' then
    CurHostKeyName := ScSSHClient.HostName
  else
    CurHostKeyName := ScSSHClient.HostKeyName;
  Data_Sisgef.DoServerKeyValidate(ScFileStorage, CurHostKeyName, NewServerKey, Accept);
end;


end.
