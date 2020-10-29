unit Model.PlanilhaEntradaDIRECT;

interface

uses Generics.Collections;

  type
    TPlanilhaEntradaDIRECT = class
    private
      FProduto: String;
      FCodigoEmbarcador: Integer;
      FDataRegistro: TDate;
      FDataChegada: TDate;
      FOperacao: String;
      FAWB2: String;
      FPesoNominal: Double;
      FValor: Double;
      FBairro: String;
      FAWB1: String;
      FPedido: String;
      FUF: String;
      FHoraRegistro: TTime;
      FHoraChegada: TTime;
      FPesoCubado: Double;
      FBaseSigla: String;
      FDataChegadaLM: TDate;
      FNF: String;
      FVolumes: Integer;
      FUltimoMotorista: String;
      FDataAlteracao: TDate;
      FCEP: String;
      FPakingList: String;
      FNomeConsumidor: String;
      FNomeEmbarcador: String;
      FMunicipio: String;
      FDevolucao: String;
      FRemessa: String;
      FDataAgendamento: String;
      FTomadorNome: String;
      FEmissao: TDate;
      FHoraChegadaLM: TTime;
      FQtdeOcorrencia: Integer;
      FUltimaOcorrencia: String;
      FSituacao: String;
      FBase: String;
      FHoraAlteracao: TTime;
      FUltimaViagem: String;
      FChave: String;
      FTipo: String;
    FSerie: String;
    FCNPJTomador: String;
    public
      property Remessa: String read FRemessa write FRemessa;
      property Pedido: String read FPedido write FPedido;
      property DataRegistro: TDate read FDataRegistro write FDataRegistro;
      property HoraRegistro: TTime read FHoraRegistro write FHoraRegistro;
      property CodigoEmbarcador: Integer read FCodigoEmbarcador write FCodigoEmbarcador;
      property NomeEmbarcador: String read FNomeEmbarcador write FNomeEmbarcador;
      property NomeConsumidor: String read FNomeConsumidor write FNomeConsumidor;
      property Municipio: String read FMunicipio write FMunicipio;
      property UF: String read FUF write FUF;
      property CEP: String read FCEP write FCEP;
      property Bairro: String read FBairro write FBairro;
      property Situacao: String read FSituacao write FSituacao;
      property DataAlteracao: TDate read FDataAlteracao write FDataAlteracao;
      property HoraAlteracao: TTime read FHoraAlteracao write FHoraAlteracao;
      property Volumes: Integer read FVolumes write FVolumes;
      property Tipo: String read FTipo write FTipo;
      property PakingList: String read FPakingList write FPakingList;
      property NF: String read FNF write FNF;
      property Serie: String read FSerie write FSerie;
      property Emissao: TDate read FEmissao write FEmissao;
      property Valor: Double read FValor write FValor;
      property Chave: String read FChave write FChave;
      property Operacao: String read FOperacao write FOperacao;
      property TomadorNome: String read FTomadorNome write FTomadorNome;
      property CNPJTomador: String read FCNPJTomador write FCNPJTomador;
      property Base: String read FBase write FBase;
      property BaseSigla: String read FBaseSigla write FBaseSigla;
      property PesoCubado: Double read FPesoCubado write FPesoCubado;
      property PesoNominal: Double read FPesoNominal write FPesoNominal;
      property UltimaOcorrencia: String read FUltimaOcorrencia write FUltimaOcorrencia;
      property QtdeOcorrencia: Integer read FQtdeOcorrencia write FQtdeOcorrencia;
      property DataAgendamento: String read FDataAgendamento write FDataAgendamento;
      property Devolucao: String read FDevolucao write FDevolucao;
      property UltimaViagem: String read FUltimaViagem write FUltimaViagem;
      property UltimoMotorista: String read FUltimoMotorista write FUltimoMotorista;
      property Produto: String read FProduto write FProduto;
      property AWB1: String read FAWB1 write FAWB1;
      property AWB2: String read FAWB2 write FAWB2;
      property DataChegada: TDate read FDataChegada write FDataChegada;
      property HoraChegada: TTime read FHoraChegada write FHoraChegada;
      property DataChegadaLM: TDate read FDataChegadaLM write FDataChegadaLM;
      property HoraChegadaLM: TTime read FHoraChegadaLM write FHoraChegadaLM;

      function GetPlanilha(sFile: String): TObjectList<TPlanilhaEntradaDIRECT>;
    end;


implementation

{ TPlanilhaEntradaEntregas }

uses DAO.PlanilhaEntradadirect;

function TPlanilhaEntradaDIRECT.GetPlanilha(sFile: String): TObjectList<TPlanilhaEntradaDIRECT>;
var
  planilha : TPlanilhaEntradaDIRECTDAO;
begin
  try
    planilha := TPlanilhaEntradaDIRECTDAO.Create;
    Result := planilha.GetPlanilha(sFile);
  finally
    planilha.Free;
  end;
end;

end.
