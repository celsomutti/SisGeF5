unit DAO.PlanilhaEntradaSPLOG;

interface

uses Generics.Collections, System.Classes, System.SysUtils, Forms, Windows, Model.PlanilhaEntradasSPLOG;

type
  TPlanilhaEntradaSPLOGDAO = class
  public
    function GetPlanilha(sFile: String): TObjectList<TPlanilhaEntradaSPLOG>;
  end;

implementation

{ TPlanilhaEntradaEntregasDAO }

uses Common.Utils;

function TPlanilhaEntradaSPLOGDAO.GetPlanilha(sFile: String): TObjectList<TPlanilhaEntradaSPLOG>;
var
  ArquivoCSV: TextFile;
  sLinha: String;
  sDetalhe: TStringList;
  entradas : TObjectList<TPlanilhaEntradaSPLOG>;
  i : Integer;
begin
  try
    entradas := TObjectList<TPlanilhaEntradaSPLOG>.Create;
    if not FileExists(sFile) then
    begin
      Application.MessageBox(PChar('Arquivo ' + sFile + ' não foi encontrado!'), 'Atenção', MB_ICONWARNING + MB_OK);
      Exit;
    end;
    AssignFile(ArquivoCSV, sFile);
    if sFile.IsEmpty then Exit;
    sDetalhe := TStringList.Create;
    sDetalhe.StrictDelimiter := True;
    sDetalhe.Delimiter := ';';
    Reset(ArquivoCSV);
    Readln(ArquivoCSV, sLinha);
    sDetalhe.DelimitedText := sLinha;
    i := 0;
    if sDetalhe[2] <> 'SPLOG BRASIL LOG, TRANS E ACAB' then
    begin
      Application.MessageBox('Arquivo informado não foi identificado como a Planilha de Entrada de Entregas da SPLOG!',
                             'Atenção', MB_ICONWARNING + MB_OK);
      Exit;
    end;
    while not Eoln(ArquivoCSV) do
    begin
      Readln(ArquivoCSV, sLinha);
      sDetalhe.DelimitedText := sLinha;
      if (sDetalhe[25] = 'RJ') then
      begin
        if (sDetalhe[0] = '3') then
        begin
          entradas.Add(TPlanilhaEntradaSPLOG.Create);
          i := entradas.Count - 1;
          entradas[i].TipoFrete := sDetalhe[1];
          entradas[i].CTRC := sDetalhe[2];
          entradas[i].CTe := sDetalhe[3];
          entradas[i].DACTE := sDetalhe[4];
          entradas[i].PrococoloCTe := sDetalhe[5];
          entradas[i].DataAutorizacao := sDetalhe[6];
          entradas[i].Situacao := sDetalhe[7];
          entradas[i].TipoDocumento := sDetalhe[8];
          entradas[i].Controle := sDetalhe[9];
          entradas[i].PlacaColeta := sDetalhe[10];
          entradas[i].Emissao := sDetalhe[11];
          entradas[i].Hora := sDetalhe[12];
          entradas[i].Login := sDetalhe[13];
          entradas[i].CNPJTRemetente := sDetalhe[14];
          entradas[i].SEGM := sDetalhe[15];
          entradas[i].NomeRemetente := sDetalhe[16];
          entradas[i].CidadeRemetente := sDetalhe[17];
          entradas[i].UFRemetente := sDetalhe[18];
          entradas[i].CNPJDestinatario := sDetalhe[19];
          entradas[i].SEGM1 := sDetalhe[20];
          entradas[i].NomeDestinatario := sDetalhe[21];
          entradas[i].Praca := sDetalhe[22];
          entradas[i].Diferenciada := sDetalhe[23];
          entradas[i].CidadeDestino := sDetalhe[24];
          entradas[i].UFDestino := sDetalhe[25];
          entradas[i].LocalEntrega := sDetalhe[26];
          entradas[i].EnderecoEntrega := sDetalhe[27];
          entradas[i].CidadeEntrega := sDetalhe[28];
          entradas[i].CEPEntrega := sDetalhe[29];
          entradas[i].DistanciaKM := sDetalhe[30];
          entradas[i].CNPJPagador := sDetalhe[31];
          entradas[i].SEGM2 := sDetalhe[32];
          entradas[i].NomePagador := sDetalhe[33];
          entradas[i].TipoMercadoria := sDetalhe[34];
          entradas[i].EspecieMercadoria := sDetalhe[35];
          entradas[i].NF := sDetalhe[36];
          entradas[i].Volumes := sDetalhe[37];
          entradas[i].Pares := sDetalhe[38];
          entradas[i].PesoReal := sDetalhe[39];
          entradas[i].M3 := sDetalhe[40];
          entradas[i].PesoCubado := sDetalhe[41];
          entradas[i].PesoCalculado := sDetalhe[42];
          entradas[i].FretePeso := sDetalhe[43];
          entradas[i].FreteValor := sDetalhe[44];
          entradas[i].Despacho := sDetalhe[45];
          entradas[i].CAT := sDetalhe[46];
          entradas[i].ITR := sDetalhe[47];
          entradas[i].GRIS := sDetalhe[48];
          entradas[i].Coleta := sDetalhe[49];
          entradas[i].TDE := sDetalhe[50];
          entradas[i].Pedagio := sDetalhe[51];
          entradas[i].Suframa := sDetalhe[52];
          entradas[i].Outros := sDetalhe[53];
          entradas[i].Impostos := sDetalhe[54];
          entradas[i].TAS := sDetalhe[55];
          entradas[i].Reembolso := sDetalhe[56];
          entradas[i].ImpostoCliente := sDetalhe[57];
          entradas[i].DevCanhotoNF := sDetalhe[58];
          entradas[i].TRT := sDetalhe[59];
          entradas[i].AdicionalFrete := sDetalhe[60];
          entradas[i].TDA := sDetalhe[61];
          entradas[i].TAR := sDetalhe[62];
          entradas[i].ValorCalculado := sDetalhe[63];
          entradas[i].ValorFreteComissao := sDetalhe[64];
          entradas[i].TipoCalculo := sDetalhe[65];
          entradas[i].TabelaCalculo := sDetalhe[66];
          entradas[i].ResultadoComercial := sDetalhe[67];
          entradas[i].ValorBaixa := sDetalhe[68];
          entradas[i].NumeroFatura := sDetalhe[69];
          entradas[i].EmissaoFatura := sDetalhe[70];
          entradas[i].VencimentoFatura := sDetalhe[71];
          entradas[i].ICMSTransporte := sDetalhe[72];
          entradas[i].ICMSST := sDetalhe[73];
          entradas[i].ValorMercadoria := sDetalhe[74];
          entradas[i].CodigoUltimaPendencia := sDetalhe[75];
          entradas[i].DataUltimaPendencia := sDetalhe[76];
          entradas[i].DescricaoUltimaPendencia := sDetalhe[77];
          entradas[i].TipoUltimaPendencia := sDetalhe[78];
          entradas[i].CodigoUltimaOcorrencia := sDetalhe[79];
          entradas[i].DataInclusaoUltimaOcorrencia := sDetalhe[80];
          entradas[i].UltimaOcorrencia := sDetalhe[81];
          entradas[i].DataPrevisaoEntrega := sDetalhe[82];
          entradas[i].DataEntregaAgendada := sDetalhe[83];
          entradas[i].DataEntregaRealizada := sDetalhe[84];
          entradas[i].Atraso := sDetalhe[85];
          entradas[i].RecebidoPor := sDetalhe[86];
          entradas[i].NumeroDocumentoRecebedor := sDetalhe[87];
          entradas[i].SerieCTRCOrigem := sDetalhe[88];
          entradas[i].NumeroCTRCOrigem := sDetalhe[89];
          entradas[i].EmissaoCTRCOrigem := sDetalhe[90];
          entradas[i].ValorCTRCOrigem := sDetalhe[91];
          entradas[i].FreteFOBCTRCOrigem := sDetalhe[92];
          entradas[i].TipoFreteOrigem := sDetalhe[93];
          entradas[i].ValorICMSOrigem := sDetalhe[94];
          entradas[i].DemaisNotasFiscais := sDetalhe[95];
          entradas[i].OBS1 := sDetalhe[96];
          entradas[i].OBS2 := sDetalhe[97];
          entradas[i].OBS3 := sDetalhe[98];
          entradas[i].PacoteArquivo := sDetalhe[99];
          entradas[i].CapaRemessa := sDetalhe[100];
          entradas[i].LocalizacaoAtual := sDetalhe[101];
          entradas[i].UltimoRomaneio := sDetalhe[102];
          entradas[i].EmissaoUltimoRomaneio := sDetalhe[103];
          entradas[i].Placa := sDetalhe[104];
          entradas[i].PesoNF := sDetalhe[105];
          entradas[i].PesoBalanca := sDetalhe[106];
          entradas[i].M3NF := sDetalhe[107];
          entradas[i].M3Cubadora := sDetalhe[108];
          entradas[i].M3Conferente := sDetalhe[109];
          entradas[i].UsaCubadora := sDetalhe[110];
          entradas[i].Pedido := sDetalhe[111];
          entradas[i].CFOP := sDetalhe[112];
          entradas[i].AliquotaICMS := sDetalhe[113];
          if not Eoln(ArquivoCSV) then
          begin
            Readln(ArquivoCSV, sLinha);
            sDetalhe.DelimitedText := sLinha;
            if (sDetalhe[0] = '4') then
            begin
              entradas[i].DANFE := sDetalhe[4];
            end;
          end;
        end;
      end;
    end;
    Result := entradas;
  finally
    CloseFile(ArquivoCSV);
  end;
 end;
 end.
