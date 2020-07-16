unit Model.PlanilhaBaixasDIRECT;

interface

uses Generics.Collections;

  type
    TPlanilhaBaixasDIRECT = class
    private
      FRegiao: String;
      FDataRegistro: TDate;
      FOperacao: String;
      FMotorista: String;
      FDataAtualizacao: TDate;
      FPesoNominal: Double;
      FValor: Double;
      FPedido: String;
      FPesoCubado: Double;
      FSiglaBase: String;
      FVolumes: Integer;
      FNF: String;
      FCEP: String;
      FDocumento: String;
      FPesoAferido: Double;
      FMunicipio: String;
      FRemessa: String;
      FPesoCTE: Double;
      FNumeroViagem: Integer;
      FTipo: String;
    public
      property NumeroViagem: Integer read FNumeroViagem write FNumeroViagem;
      property DataAtualizacao: TDate read FDataAtualizacao write FDataAtualizacao;
      property Documento: String read FDocumento write FDocumento;
      property Motorista: String read FMotorista write FMotorista;
      property SiglaBase: String read FSiglaBase write FSiglaBase;
      property Pedido: String read FPedido write FPedido;
      property Remessa: String read FRemessa write FRemessa;
      property NF: String read FNF write FNF;
      property Municipio: String read FMunicipio write FMunicipio;
      property CEP: String read FCEP write FCEP;
      property Volumes: Integer read FVolumes write FVolumes;
      property Tipo: String read FTipo write FTipo;
      property DataRegistro: TDate read FDataRegistro write FDataRegistro;
      property Valor: Double read FValor write FValor;
      property PesoAferido: Double read FPesoAferido write FPesoAferido;
      property PesoCubado: Double read FPesoCubado write FPesoCubado;
      property PesoNominal: Double read FPesoNominal write FPesoNominal;
      property PesoCTE: Double read FPesoCTE write FPesoCTE;
      property Operacao: String read FOperacao write FOperacao;
      property Regiao: String read FRegiao write FRegiao;

      function GetPlanilha(sFile: String): TObjectList<TPlanilhaBaixasDIRECT>;
    end;


implementation

{ TPlanilhaBaixasDIRECT }

uses DAO.PlanilhaBaixasDIRECT;

function TPlanilhaBaixasDIRECT.GetPlanilha(sFile: String): TObjectList<TPlanilhaBaixasDIRECT>;
var
  planilha : TPlanilhaBaixasDIRECTDAO;
begin
  try
    planilha := TPlanilhaBaixasDIRECTDAO.Create;
    Result := planilha.GetPlanilha(sFile);
  finally
    planilha.Free;
  end;
end;

end.
