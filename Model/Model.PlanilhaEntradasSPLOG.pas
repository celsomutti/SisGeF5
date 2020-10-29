unit Model.PlanilhaEntradasSPLOG;

interface

uses Generics.Collections;

  type
    TPlanilhaEntradaSPLOG = class
    private
    FCodigoUltimaOcorrencia: String;
    FICMSTransporte: String;
    FFreteValor: String;
    FPesoCalculado: String;
    FPares: String;
    FPlacaColeta: String;
    FNumeroFatura: String;
    FEmissaoUltimoRomaneio: String;
    FTipoCalculo: String;
    FValorCalculado: String;
    FUFDestino: String;
    FDespacho: String;
    FAtraso: String;
    FCNPJPagador: String;
    FCTRC: String;
    FLocalizacaoAtual: String;
    FEmissaoFatura: String;
    FReembolso: String;
    FValor: String;
    FValorCTRCOrigem: String;
    FColeta: String;
    FEnderecoEntrega: String;
    FCNPJDestinatario: String;
    FHora: STring;
    FPedido: String;
    FM3Cubadora: String;
    FCapaRemessa: String;
    FDataPrevisaoEntrega: String;
    FResultadoComercial: String;
    FPrococoloCTe: String;
    FUsaCubadora: String;
    FRecebidoPor: String;
    FDataInclusaoUltimaOcorrencia: String;
    FImpostoCliente: String;
    FLocalEntrega: String;
    FValorICMSOrigem: String;
    FTipoUltimaPendencia: String;
    FDACTE: String;
    FPesoCubado: String;
    FDistanciaKM: String;
    FTipoDocumento: String;
    FM3NF: String;
    FDataUltimaPendencia: String;
    FPraca: String;
    FDataEntregaRealizada: String;
    FTipoMercadoria: String;
    FNomeRemetente: String;
    FUltimoRomaneio: String;
    FSerieCTRCOrigem: String;
    FVolumes: String;
    FNF: String;
    FCidadeRemetente: String;
    FCAT: String;
    FSEGM2: String;
    FDataAutorizacao: String;
    FCFOP: String;
    FPedagio: String;
    FPesoNF: String;
    FNumeroCTRCOrigem: String;
    FTabelaCalculo: String;
    FTRT: String;
    FFreteFOBCTRCOrigem: String;
    FValorFreteComissao: String;
    FOutros: String;
    FSuframa: String;
    FSEGM1: String;
    FCNPJTRemetente: String;
    FValorBaixa: String;
    FCTe: String;
    FPacoteArquivo: String;
    FTipoFreteOrigem: String;
    FTDA: String;
    FAdicionalFrete: String;
    FTEmissao: String;
    FEmissaoCTRCOrigem: String;
    FUltimaOcorrencia: String;
    FCidadeDestino: String;
    FSituacao: String;
    FValorMercadoria: String;
    FImpostos: String;
    FITR: String;
    FEspecieMercadoria: String;
    FNumeroDocumentoRecebedor: String;
    FPesoReal: String;
    FTipoFrete: String;
    FPesoBalanca: String;
    FDescricaoUltimaPendencia: String;
    FTDE: String;
    FCEPEntrega: String;
    FSEGM: String;
    FM3Conferente: String;
    FCodigoUltimaPendencia: String;
    FPlaca: String;
    FOBS2: String;
    FLogin: String;
    FControle: String;
    FOBS3: String;
    FDiferenciada: String;
    FUFRemetente: String;
    FAliquotaICMS: String;
    FDemaisNotasFiscais: String;
    FDataEntregaAgendada: String;
    FNomePagador: String;
    FOBS1: String;
    FICMSST: String;
    FGRIS: String;
    FTAR: String;
    FFretePeso: String;
    FM3: String;
    FNomeDestinatario: String;
    FVencimentoFatura: String;
    FDevCanhotoNF: String;
    FTAS: String;
    FEmissao: String;
    FDANFE: String;

    public
      property TipoFrete : String read FTipoFrete write FTipoFrete;
      property CTRC : String read FCTRC write FCTRC;
      property CTe: String read FCTe write FCTe;
      property DACTE: String read FDACTE write FDACTE;
      property PrococoloCTe: String read FPrococoloCTe write FPrococoloCTe;
      property DataAutorizacao: String read FDataAutorizacao write FDataAutorizacao;
      property Situacao: String read FSituacao write FSituacao;
      property TipoDocumento: String read FTipoDocumento write FTipoDocumento;
      property Controle: String read FControle write FControle;
      property PlacaColeta: String read FPlacaColeta write FPlacaColeta;
      property Emissao: String read FEmissao write FEmissao;
      property Hora: STring read FHora write FHora;
      property Login: String read FLogin write FLogin;
      property CNPJTRemetente: String read FCNPJTRemetente write FCNPJTRemetente;
      property SEGM: String read FSEGM write FSEGM;
      property NomeRemetente: String read FNomeRemetente write FNomeRemetente;
      property CidadeRemetente: String read FCidadeRemetente write FCidadeRemetente;
      property UFRemetente: String read FUFRemetente write FUFRemetente;
      property CNPJDestinatario: String read FCNPJDestinatario write FCNPJDestinatario;
      property SEGM1: String read FSEGM1 write FSEGM1;
      property NomeDestinatario: String read FNomeDestinatario write FNomeDestinatario;
      property Praca: String read FPraca write FPraca;
      property Diferenciada: String read FDiferenciada write FDiferenciada;
      property CidadeDestino: String read FCidadeDestino write FCidadeDestino;
      property UFDestino: String read FUFDestino write FUFDestino;
      property LocalEntrega: String read FLocalEntrega write FLocalEntrega;
      property EnderecoEntrega: String read FEnderecoEntrega write FEnderecoEntrega;
      property CidadeEntrega: String read FValor write FValor;
      property CEPEntrega: String read FCEPEntrega write FCEPEntrega;
      property DistanciaKM: String read FDistanciaKM write FDistanciaKM;
      property CNPJPagador: String read FCNPJPagador write FCNPJPagador;
      property SEGM2: String read FSEGM2 write FSEGM2;
      property NomePagador: String read FNomePagador write FNomePagador;
      property TipoMercadoria: String read FTipoMercadoria write FTipoMercadoria;
      property EspecieMercadoria: String read FEspecieMercadoria write FEspecieMercadoria;
      property NF: String read FNF write FNF;
      property Volumes: String read FVolumes write FVolumes;
      property Pares: String read FPares write FPares;
      property PesoReal: String read FPesoReal write FPesoReal;
      property M3: String read FM3 write FM3;
      property PesoCubado: String read FPesoCubado write FPesoCubado;
      property PesoCalculado: String read FPesoCalculado write FPesoCalculado;
      property FretePeso: String read FFretePeso write FFretePeso;
      property FreteValor: String read FFreteValor write FFreteValor;
      property Despacho: String read FDespacho write FDespacho;
      property CAT: String read FCAT write FCAT;
      property ITR: String read FITR write FITR;
      property GRIS: String read FGRIS write FGRIS;
      property Coleta: String read FColeta write FColeta;
      property TDE: String read FTDE write FTDE;
      property Pedagio: String read FPedagio write FPedagio;
      property Suframa: String read FSuframa write FSuframa;
      property Outros: String read FOutros write FOutros;
      property Impostos: String read FImpostos write FImpostos;
      property TAS: String read FTAS write FTAS;
      property Reembolso: String read FReembolso write FReembolso;
      property ImpostoCliente: String read FImpostoCliente write FImpostoCliente;
      property DevCanhotoNF: String read FDevCanhotoNF write FDevCanhotoNF;
      property TRT: String read FTRT write FTRT;
      property AdicionalFrete: String read FAdicionalFrete write FAdicionalFrete;
      property TDA: String read FTDA write FTDA;
      property TAR: String read FTAR write FTAR;
      property ValorCalculado: String read FValorCalculado write FValorCalculado;
      property ValorFreteComissao: String read FValorFreteComissao write FValorFreteComissao;
      property TipoCalculo: String read FTipoCalculo write FTipoCalculo;
      property TabelaCalculo: String read FTabelaCalculo write FTabelaCalculo;
      property ResultadoComercial: String read FResultadoComercial write FResultadoComercial;
      property ValorBaixa: String read FValorBaixa write FValorBaixa;
      property NumeroFatura: String read FNumeroFatura write FNumeroFatura;
      property EmissaoFatura: String read FEmissaoFatura write FEmissaoFatura;
      property VencimentoFatura: String read FVencimentoFatura write FVencimentoFatura;
      property ICMSTransporte: String read FICMSTransporte write FICMSTransporte;
      property ICMSST: String read FICMSST write FICMSST;
      property ValorMercadoria: String read FValorMercadoria write FValorMercadoria;
      property CodigoUltimaPendencia: String read FCodigoUltimaPendencia write FCodigoUltimaPendencia;
      property DataUltimaPendencia: String read FDataUltimaPendencia write FDataUltimaPendencia;
      property DescricaoUltimaPendencia: String read FDescricaoUltimaPendencia write FDescricaoUltimaPendencia;
      property TipoUltimaPendencia: String read FTipoUltimaPendencia write FTipoUltimaPendencia;
      property CodigoUltimaOcorrencia: String read FCodigoUltimaOcorrencia write FCodigoUltimaOcorrencia;
      property DataInclusaoUltimaOcorrencia: String read FDataInclusaoUltimaOcorrencia write FDataInclusaoUltimaOcorrencia;
      property UltimaOcorrencia: String read FUltimaOcorrencia write FUltimaOcorrencia;
      property DataPrevisaoEntrega: String read FDataPrevisaoEntrega write FDataPrevisaoEntrega;
      property DataEntregaAgendada: String read FDataEntregaAgendada write FDataEntregaAgendada;
      property DataEntregaRealizada: String read FDataEntregaRealizada write FDataEntregaRealizada;
      property Atraso: String read FAtraso write FAtraso;
      property RecebidoPor: String read FRecebidoPor write FRecebidoPor;
      property NumeroDocumentoRecebedor: String read FNumeroDocumentoRecebedor write FNumeroDocumentoRecebedor;
      property SerieCTRCOrigem: String read FSerieCTRCOrigem write FSerieCTRCOrigem;
      property NumeroCTRCOrigem: String read FNumeroCTRCOrigem write FNumeroCTRCOrigem;
      property EmissaoCTRCOrigem: String read FEmissaoCTRCOrigem write FEmissaoCTRCOrigem;
      property ValorCTRCOrigem: String read FValorCTRCOrigem write FValorCTRCOrigem;
      property FreteFOBCTRCOrigem: String read FFreteFOBCTRCOrigem write FFreteFOBCTRCOrigem;
      property TipoFreteOrigem: String read FTipoFreteOrigem write FTipoFreteOrigem;
      property ValorICMSOrigem: String read FValorICMSOrigem write FValorICMSOrigem;
      property DemaisNotasFiscais: String read FDemaisNotasFiscais write FDemaisNotasFiscais;
      property OBS1: String read FOBS1 write FOBS1;
      property OBS2: String read FOBS2 write FOBS2;
      property OBS3: String read FOBS3 write FOBS3;
      property PacoteArquivo: String read FPacoteArquivo write FPacoteArquivo;
      property CapaRemessa: String read FCapaRemessa write FCapaRemessa;
      property LocalizacaoAtual: String read FLocalizacaoAtual write FLocalizacaoAtual;
      property UltimoRomaneio: String read FUltimoRomaneio write FUltimoRomaneio;
      property EmissaoUltimoRomaneio: String read FEmissaoUltimoRomaneio write FEmissaoUltimoRomaneio;
      property Placa: String read FPlaca write FPlaca;
      property PesoNF: String read FPesoNF write FPEsoNF;
      property PesoBalanca: String read FPesoBalanca write FPesoBalanca;
      property M3NF: String read FM3NF write FM3NF;
      property M3Cubadora: String read FM3Cubadora write FM3Cubadora;
      property M3Conferente: String read FM3Conferente write FM3Conferente;
      property UsaCubadora: String read FUsaCubadora write FUsaCubadora;
      property Pedido: String read FPedido write FPedido;
      property CFOP: String read FCFOP write FCFOP;
      property AliquotaICMS: String read FAliquotaICMS write FAliquotaICMS;
      property DANFE: String read FDANFE write FDANFE;

      function GetPlanilha(sFile: String): TObjectList<TPlanilhaEntradaSPLOG>;
    end;


implementation

{ TPlanilhaEntradaEntregas }

uses DAO.PlanilhaEntradaSPLOG;

function TPlanilhaEntradaSPLOG.GetPlanilha(sFile: String): TObjectList<TPlanilhaEntradaSPLOG>;
var
  planilha : TPlanilhaEntradaSPLOGDAO;
begin
  try
    planilha := TPlanilhaEntradaSPLOGDAO.Create;
    Result := planilha.GetPlanilha(sFile);
  finally
    planilha.Free;
  end;
end;

end.
