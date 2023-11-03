unit DAO.PlanilhaEntradaDIRECT;

interface

uses Generics.Collections, System.Classes, System.SysUtils, Forms, Windows, Model.PlanilhaEntradaDIRECT;

type
  TPlanilhaEntradaDIRECTDAO = class
  public
    function GetPlanilha(sFile: String): TObjectList<TPlanilhaEntradaDIRECT>;
  end;

implementation

{ TPlanilhaEntradaDIRECTDAO }

uses Common.Utils;

function TPlanilhaEntradaDIRECTDAO.GetPlanilha(sFile: String): TObjectList<TPlanilhaEntradaDIRECT>;
var
  ArquivoCSV: TextFile;
  sLinha: String;
  sDetalhe: TStringList;
  entradas : TObjectList<TPlanilhaEntradaDIRECT>;
  i : Integer;
  sValor : String;
  lstRemessa: TStringList;
  iIndex: Integer;
begin
  try
    entradas := TObjectList<TPlanilhaEntradaDIRECT>.Create;
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
    sDetalhe.DelimitedText := sLinha + ';';
    lstRemessa := TStringList.Create;
    if Pos('REMESSA',sLinha) = 0 then
    begin
      Application.MessageBox('Arquivo informado não foi identificado como a Planilha de Entrada da DIRECT!', 'Atenção', MB_ICONWARNING + MB_OK);
      Exit;
    end;
    i := 0;
    while not Eoln(ArquivoCSV) do
    begin
      Readln(ArquivoCSV, sLinha);
      sDetalhe.DelimitedText := sLinha + ';';
      if TUtils.ENumero(sDetalhe[0]) then
      begin
        if not lstRemessa.Find(sDetalhe[0], iIndex) then
        begin
          lstRemessa.Add(sDetalhe[0]);
          lstRemessa.Sort;
          sValor := '0';
          entradas.Add(TPlanilhaEntradaDIRECT.Create);
          i := entradas.Count - 1;
          entradas[i].Remessa := sDetalhe[0];
          entradas[i].Pedido :=  sDetalhe[1];
          entradas[i].DataRegistro := StrToDateDef(sDetalhe[2], 0);
          entradas[i].HoraRegistro := StrToTimeDef(sDetalhe[3], 0);
          entradas[i].CodigoEmbarcador := StrToIntDef(sDetalhe[4], 0);
          entradas[i].NomeEmbarcador := sDetalhe[5];
          entradas[i].NomeConsumidor := sDetalhe[6];
          entradas[i].Municipio := sDetalhe[7];
          entradas[i].UF := sDetalhe[8];
          entradas[i].CEP := sDetalhe[9];
          entradas[i].Bairro := sDetalhe[10];
          entradas[i].Situacao := sDetalhe[11];
          entradas[i].DataAlteracao := StrToDateDef(sDetalhe[12], 0);
          entradas[i].HoraAlteracao := StrToTimeDef(sDetalhe[13], 0);
          entradas[i].Volumes := StrToIntDef(sDetalhe[14], 0);
          entradas[i].Tipo := sDetalhe[15];
          entradas[i].PakingList := sDetalhe[16];
          entradas[i].NF := sDetalhe[17];
          entradas[i].Serie := sDetalhe[18];
          entradas[i].Emissao :=  StrToDateDef(sDetalhe[19], 0);
          sValor := StringReplace(sDetalhe[20], '.', ',', [rfReplaceAll, rfIgnoreCase]);
          entradas[i].Valor := StrToFloatDef(sValor, 0);
          entradas[i].Chave := sDetalhe[21];
          entradas[i].Operacao := sDetalhe[22];
          entradas[i].TomadorNome := sDetalhe[23];
          entradas[i].CNPJTomador := sDetalhe[24];
          entradas[i].Base := sDetalhe[25];
          entradas[i].BaseSigla := sDetalhe[26];
          sValor := StringReplace(sDetalhe[27], '.', ',', [rfReplaceAll, rfIgnoreCase]);
          entradas[i].PesoCubado := StrToFloatDef(sValor, 0);
          sValor := StringReplace(sDetalhe[28], '.', ',', [rfReplaceAll, rfIgnoreCase]);
          entradas[i].PesoNominal := StrToFloatDef(sValor, 0);
          entradas[i].UltimaOcorrencia := sDetalhe[29];
          entradas[i].QtdeOcorrencia := StrToIntDef(sDetalhe[30], 0);
          entradas[i].DataAgendamento := sDetalhe[31];
          entradas[i].Devolucao := sDetalhe[32];
          entradas[i].UltimaViagem := sDetalhe[33];
          entradas[i].UltimoMotorista := sDetalhe[34];
          entradas[i].Produto := sDetalhe[35];
          entradas[i].AWB1 := sDetalhe[36];
          entradas[i].AWB2 := sDetalhe[37];
          entradas[i].DataChegada := StrToDateDef(sDetalhe[38], 0);
          entradas[i].HoraChegada := StrToTimeDef(sDetalhe[39], 0);
          entradas[i].DataChegadaLM := StrToDateDef(sDetalhe[40], 0);
          entradas[i].HoraChegadaLM := StrToTimeDef(sDetalhe[41], 0);
        end;
      end;
    end;
    Result := entradas;
  finally
    CloseFile(ArquivoCSV);
  end;
end;
end.
