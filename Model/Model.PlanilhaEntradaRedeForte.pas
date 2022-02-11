unit Model.PlanilhaEntradaRedeForte;

interface

uses Generics.Collections, System.Classes, System.SysUtils;

  type
    TPlanilhaEntradaRedeForte = class
    private
      FEntrega : String;
      FNRArquivo : String;
      FServico: String;
      FParceiro: String;
      FNF: String;
      FDANFE: String;
      FPedido: String;
      FNRCarga: String;
      FNREntrega: String;
      FEmbarcador: String;
      FCNPJEmbarcador: String;
      FEmbarcadorFilial: String;
      FCNPJEmbarcadorFilial: String;
      FSiglaUnidadeAtual: String;
      FSiglaUnidadeDestino: String;
      FSiglaUnidadeEntrega: String;
      FSiglaUnidadeDevolucao: String;
      FSiglaUnidadeRecebimento: String;
      FCidadeUnidadeAtual: String;
      FCidadeUnidadeDestino: String;
      FCidadeUnidadeEntrega: String;
      FCidadeUnidadeDevolucao: String;
      FCidadeUnidadeRecebimento: String;
      FRota: String;
      FDestinatario: String;
      FRGDestinatario: string;
      FDocDestinatario: string;
      FCEP: string;
      FLogradouro: string;
      FNumero: string;
      FComplemento: string;
      FBairro: string;
      FCidade: string;
      FUF: string;
      FReferencia: String;
      FRegiao: STring;
      FRecebedor: String;
      FDocRecebedor: String;
      FOBSRecebedor: String;
      FPesoInformado: String;
      FPesoMedido: String;
      FCubagemInformada: String;
      FCubagemMedida: String;
      FPesoTaxado: String;
      FPesoNF: String;
      FVolumes: String;
      FItens: String;
      FValor: String;
      FValorPendente: String;
      FCTE: String;
      FCTESerie: String;
      FDataEntrega: String;
      FDataDevolucao: String;
      FSituacao: String;
      FDataPrazo: String;
      FDataPrimeiroPrazo: String;
      FDataPrimeiroAtual: String;
      FDataPrimeiroAgendamento: String;
      FDataPrimeiroCadastro: String;
      FDataRecUNEntrega: String;
      FQtdeAtendimentos: String;
      FQtdePendencias: String;
      FPendencias: String;
      FUltPendencia: String;
      FDataUltPendencia: String;
      FUltOcorrencia: String;
      FObsUltOcorrencia: String;
      FDataUltOcorrencia: String;
      FIDUltOcorrencia: String;
      FRomaneio: String;
      FMotorista: String;
      FUltUnidadeOcorrencia: String;
      FMensagem: STring;
      FPlanilha: TObjectList<TPlanilhaEntradaRedeForte>;
      FObsUltPendencia: String;
      FFilialEmbarcador: String;
    public
      property Entrega : String read FEntrega write FEntrega;
      property NRArquivo : String read FNRArquivo write FNRArquivo;
      property Servico: String read FServico write FServico;
      property Parceiro: String read FParceiro write FParceiro;
      property NF: String read FNF write FNF;
      property DANFE: String read FDANFE write FDANFE;
      property Pedido: String read FPedido write FPedido;
      property NRCarga: String read FNRCarga write FNRCarga;
      property NREntrega: String read FNREntrega write FNREntrega;
      property Embarcador: String read FEmbarcador write FEmbarcador;
      property FilialEmbarcador: String read FFilialEmbarcador write FFilialEmbarcador;
      property CNPJEmbarcador: String read FCNPJEmbarcador write FCNPJEmbarcador;
      property EmbarcadorFilial: String read FEmbarcadorFilial write FEmbarcadorFilial;
      property CNPJEmbarcadorFilial: String read FCNPJEmbarcadorFilial write FCNPJEmbarcadorFilial;
      property SiglaUnidadeAtual: String read FSiglaUnidadeAtual write FSiglaUnidadeAtual;
      property SiglaUnidadeDestino: String read FSiglaUnidadeDestino write FSiglaUnidadeDestino;
      property SiglaUnidadeEntrega: String read FSiglaUnidadeEntrega write FSiglaUnidadeEntrega;
      property SiglaUnidadeDevolucao: String read FSiglaUnidadeDevolucao write FSiglaUnidadeDevolucao;
      property SiglaUnidadeRecebimento: String read FSiglaUnidadeRecebimento write FSiglaUnidadeRecebimento;
      property CidadeUnidadeAtual: String read FCidadeUnidadeAtual write FCidadeUnidadeAtual;
      property CidadeUnidadeDestino: String read FCidadeUnidadeDestino write FCidadeUnidadeDestino;
      property CidadeUnidadeEntrega: String read FCidadeUnidadeEntrega write FCidadeUnidadeEntrega;
      property CidadeUnidadeDevolucao: String read FCidadeUnidadeDevolucao write FCidadeUnidadeDevolucao;
      property CidadeUnidadeRecebimento: String read FCidadeUnidadeRecebimento write FCidadeUnidadeRecebimento;
      property Rota: String read FRota write FRota;
      property Destinatario: String read FDestinatario write FDestinatario;
      property RGDestinatario: string read FRGDestinatario write FRGDestinatario;
      property DocDestinatario: string read FDocDestinatario write FDocDestinatario;
      property CEP: string read FCEP write FCEP;
      property Logradouro: string read FLogradouro write FLogradouro;
      property Numero: string read FNumero write FNumero;
      property Complemento: string read FComplemento write FComplemento;
      property Bairro: string read FBairro write FBairro;
      property Cidade: string read FCidade write FCidade;
      property UF: string read FUF write FUF;
      property Referencia: String read FReferencia write FReferencia;
      property Regiao: STring read FRegiao write FRegiao;
      property Recebedor: String read FRecebedor write FRecebedor;
      property DocRecebedor: String read FDocRecebedor write FDocRecebedor;
      property OBSRecebedor: String read FOBSRecebedor write FOBSRecebedor;
      property PesoInformado: String read FPesoInformado write FPesoInformado;
      property PesoMedido: String read FPesoMedido write FPesoMedido;
      property CubagemInformada: String read FCubagemInformada write FCubagemInformada;
      property CubagemMedida: String read FCubagemMedida write FCubagemMedida;
      property PesoTaxado: String read FPesoTaxado write FPesoTaxado;
      property PesoNF: String read FPesoNF write FPesoNF;
      property Volumes: String read FVolumes write FVolumes;
      property Itens: String read FItens write FItens;
      property Valor: String read FValor write FValor;
      property ValorPendente: String read FValorPendente write FValorPendente;
      property CTE: String read FCTE write FCTE;
      property CTESerie: String read FCTESerie write FCTESerie;
      property DataEntrega: String read FDataEntrega write FDataEntrega;
      property DataDevolucao: String read FDataDevolucao write FDataDevolucao;
      property Situacao: String read FSituacao write FSituacao;
      property DataPrazo: String read FDataPrazo write FDataPrazo;
      property DataPrimeiroPrazo: String read FDataPrimeiroPrazo write FDataPrimeiroPrazo;
      property DataPrimeiroAtual: String read FDataPrimeiroAtual write FDataPrimeiroAtual;
      property DataPrimeiroAgendamento: String read FDataPrimeiroAgendamento write FDataPrimeiroAgendamento;
      property DataPrimeiroCadastro: String read FDataPrimeiroCadastro write FDataPrimeiroCadastro;
      property DataRecUNEntrega: String read FDataRecUNEntrega write FDataRecUNEntrega;
      property QtdeAtendimentos: String read FQtdeAtendimentos write FQtdeAtendimentos;
      property QtdePendencias: String read FQtdePendencias write FQtdePendencias;
      property Pendencias: String read FPendencias write FPendencias;
      property UltPendencia: String read FUltPendencia write FUltPendencia;
      property ObsUltPendencia: String read FObsUltPendencia write FObsUltPendencia;
      property DataUltPendencia: String read FDataUltPendencia write FDataUltPendencia;
      property UltOcorrencia: String read FUltOcorrencia write FUltOcorrencia;
      property ObsUltOcorrencia: String read FObsUltOcorrencia write FObsUltOcorrencia;
      property DataUltOcorrencia: String read FDataUltOcorrencia write FDataUltOcorrencia;
      property IDUltOcorrencia: String read FIDUltOcorrencia write FIDUltOcorrencia;
      property Romaneio: String read FRomaneio write FRomaneio;
      property Motorista: String read FMotorista write FMotorista;
      property UltUnidadeOcorrencia: String read FUltUnidadeOcorrencia write FUltUnidadeOcorrencia;
      property Mensagem: STring read FMensagem write FMensagem;
      property Planilha: TObjectList<TPlanilhaEntradaRedeForte> read FPlanilha write FPlanilha;

      function GetPlanilha(sFile: String): boolean;
    end;


implementation

{ TPlanilhaEntradaRedeForte }

uses Common.Utils;

function TPlanilhaEntradaRedeForte.GetPlanilha(sFile: String): boolean;
var
  ArquivoCSV: TextFile;
  sLinha: String;
  sDetalhe: TStringList;
  i : Integer;
  sValor : String;
  lstRemessa: TStringList;
  iIndex: Integer;
begin
  try
    Result := False;
    FPlanilha := TObjectList<TPlanilhaEntradaRedeForte>.Create;
    if not FileExists(sFile) then
    begin
      FMensagem := 'Arquivo ' + sFile + ' não foi encontrado!';
      Exit;
    end;
    AssignFile(ArquivoCSV, sFile);
    if sFile.IsEmpty then Exit;
    sDetalhe := TStringList.Create;
    sDetalhe.StrictDelimiter := True;
    sDetalhe.Delimiter := ';';
    Reset(ArquivoCSV);
    Readln(ArquivoCSV, sLinha);
    sDetalhe.DelimitedText := sLinha + ';';
    lstRemessa := TStringList.Create;
    if Pos('Nro. Carga',sLinha) = 0 then
    begin
      FMensagem := 'Arquivo informado não foi identificado como a Planilha de Entrada da Rede Forte!';
      Exit;
    end;
    i := 0;
    while not Eoln(ArquivoCSV) do
    begin
      Readln(ArquivoCSV, sLinha);
      sDetalhe.DelimitedText := sLinha + ';';
      if TUtils.ENumero(sDetalhe[0]) then
      begin
        Fplanilha.Add(TPlanilhaEntradaRedeForte.Create);
        i := FPlanilha.Count - 1;
        FPlanilha[i].Entrega := sDetalhe[0];
        FPlanilha[i].NRArquivo := sDetalhe[1];
        FPlanilha[i].Servico := sDetalhe[2];
        FPlanilha[i].Parceiro := sDetalhe[3];
        FPlanilha[i].NF := sDetalhe[4];
        FPlanilha[i].DANFE := sDetalhe[5];
        FPlanilha[i].Pedido := sDetalhe[6];
        FPlanilha[i].NRCarga := sDetalhe[7];
        FPlanilha[i].NREntrega := sDetalhe[8];
        FPlanilha[i].Embarcador := sDetalhe[9];
        FPlanilha[i].CNPJEmbarcador := sDetalhe[10];
        FPlanilha[i].FilialEmbarcador := sDetalhe[11];
        FPlanilha[i].CNPJEmbarcadorFilial := sDetalhe[12];
        FPlanilha[i].SiglaUnidadeAtual := sDetalhe[13];
        FPlanilha[i].SiglaUnidadeDestino := sDetalhe[14];
        FPlanilha[i].SiglaUnidadeEntrega := sDetalhe[15];
        FPlanilha[i].SiglaUnidadeDevolucao := sDetalhe[16];
        FPlanilha[i].SiglaUnidadeRecebimento := sDetalhe[17];
        FPlanilha[i].CidadeUnidadeAtual := sDetalhe[18];
        FPlanilha[i].CidadeUnidadeEntrega := sDetalhe[19];
        FPlanilha[i].CidadeUnidadeDevolucao := sDetalhe[20];
        FPlanilha[i].CidadeUnidadeRecebimento := sDetalhe[21];
        FPlanilha[i].Rota := sDetalhe[22];
        FPlanilha[i].Destinatario := sDetalhe[23];
        FPlanilha[i].RGDestinatario := sDetalhe[24];
        FPlanilha[i].DocDestinatario := sDetalhe[25];
        FPlanilha[i].CEP := sDetalhe[26];
        FPlanilha[i].Logradouro := sDetalhe[27];
        FPlanilha[i].Numero := sDetalhe[28];
        FPlanilha[i].Complemento := sDetalhe[29];
        FPlanilha[i].Bairro := sDetalhe[30];
        FPlanilha[i].Cidade := sDetalhe[31];
        FPlanilha[i].UF := sDetalhe[32];
        FPlanilha[i].Referencia := sDetalhe[33];
        FPlanilha[i].Regiao := sDetalhe[34];
        FPlanilha[i].Recebedor := sDetalhe[35];
        FPlanilha[i].DocRecebedor := sDetalhe[36];
        FPlanilha[i].OBSRecebedor := sDetalhe[37];
        FPlanilha[i].PesoInformado := sDetalhe[38];
        FPlanilha[i].PesoMedido := sDetalhe[39];
        FPlanilha[i].CubagemInformada := sDetalhe[40];
        FPlanilha[i].CubagemMedida := sDetalhe[41];
        FPlanilha[i].PesoTaxado := sDetalhe[42];
        FPlanilha[i].PesoNF := sDetalhe[43];
        FPlanilha[i].Volumes := sDetalhe[44];
        FPlanilha[i].Itens := sDetalhe[45];
        FPlanilha[i].Valor := sDetalhe[46];
        FPlanilha[i].ValorPendente := sDetalhe[47];
        FPlanilha[i].CTE := sDetalhe[48];
        FPlanilha[i].CTESerie := sDetalhe[49];
        FPlanilha[i].DataEntrega := sDetalhe[50];
        FPlanilha[i].DataDevolucao := sDetalhe[51];
        FPlanilha[i].Situacao := sDetalhe[52];
        FPlanilha[i].DataPrazo := sDetalhe[53];
        FPlanilha[i].DataPrimeiroPrazo := sDetalhe[54];
        FPlanilha[i].DataPrimeiroAtual := sDetalhe[55];
        FPlanilha[i].DataPrimeiroAgendamento := sDetalhe[56];
        FPlanilha[i].DataPrimeiroCadastro := sDetalhe[57];
        FPlanilha[i].DataRecUNEntrega := sDetalhe[58];
        FPlanilha[i].QtdeAtendimentos := sDetalhe[59];
        FPlanilha[i].QtdePendencias := sDetalhe[60];
        FPlanilha[i].Pendencias := sDetalhe[61];
        FPlanilha[i].UltPendencia := sDetalhe[62];
        FPlanilha[i].ObsUltPendencia := sDetalhe[63];
        FPlanilha[i].DataUltPendencia := sDetalhe[64];
        FPlanilha[i].UltOcorrencia := sDetalhe[65];
        FPlanilha[i].ObsUltOcorrencia := sDetalhe[66];
        FPlanilha[i].DataUltOcorrencia := sDetalhe[67];
        FPlanilha[i].IDUltOcorrencia := sDetalhe[68];
        FPlanilha[i].Romaneio := sDetalhe[69];
        FPlanilha[i].Motorista := sDetalhe[70];
        FPlanilha[i].UltUnidadeOcorrencia := sDetalhe[71];
      end;
    end;
    if FPlanilha.Count = 0 then
    begin
      FMensagem := 'Nenhuma informação foi importada da planilha!';
      Exit;
    end;
    Result := True;
  finally
    CloseFile(ArquivoCSV);
  end;
end;

end.
