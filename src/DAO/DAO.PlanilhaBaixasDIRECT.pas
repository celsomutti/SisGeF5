unit DAO.PlanilhaBaixasDIRECT;

interface

uses Generics.Collections, System.Classes, System.SysUtils, Forms, Windows, Model.PlanilhaBaixasDIRECT;

type
  TPlanilhaBaixasDIRECTDAO = class
  public
    function GetPlanilha(sFile: String): TObjectList<TPlanilhaBaixasDIRECT>;
  end;

implementation

{ TPlanilhaBaixasDIRECT }

uses Common.Utils;

function TPlanilhaBaixasDIRECTDAO.GetPlanilha(sFile: String): TObjectList<TPlanilhaBaixasDIRECT>;
var
  ArquivoCSV: TextFile;
  sLinha: String;
  sDetalhe: TStringList;
  entradas : TObjectList<TPlanilhaBaixasDIRECT>;
  i : Integer;
  sValor: String;
begin
  try
    entradas := TObjectList<TPlanilhaBaixasDIRECT>.Create;
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
    if Pos('Numero Viagem',sLinha) = 0 then
    begin
      Application.MessageBox('Arquivo informado não foi identificado como a Planilha de Baixas da Carriers!', 'Atenção', MB_ICONWARNING + MB_OK);
      Exit;
    end;
    sDetalhe.DelimitedText := sLinha;
    i := 0;
    while not Eoln(ArquivoCSV) do
    begin
      Readln(ArquivoCSV, sLinha);
      sDetalhe.DelimitedText := sLinha + ';';
      sValor := '0';
      if TUtils.ENumero(sDetalhe[6]) then
      begin
        entradas.Add(TPlanilhaBaixasDIRECT.Create);
        i := entradas.Count - 1;
        entradas[i].NumeroViagem := StrToIntDef(sDetalhe[0], 0);
        entradas[i].DataAtualizacao :=  StrToDateDef(sDetalhe[1], 0);
        entradas[i].Documento := sDetalhe[2];
        entradas[i].Motorista := sDetalhe[3];
        entradas[i].SiglaBase := sDetalhe[4];
        entradas[i].Pedido := sDetalhe[5];
        entradas[i].Remessa := sDetalhe[6];
        entradas[i].NF := sDetalhe[7];
        entradas[i].Municipio := sDetalhe[8];
        entradas[i].CEP := sDetalhe[9];
        entradas[i].Volumes := StrToIntDef(sDetalhe[10], 1);
        entradas[i].Tipo := sDetalhe[11];
        entradas[i].DataRegistro := StrToDateDef(sDetalhe[12], 0);
        sValor := StringReplace(sDetalhe[13], '.', ',', [rfReplaceAll, rfIgnoreCase]);
        entradas[i].Valor := StrToFloatDef(sValor, 0);
        sValor := StringReplace(sDetalhe[14], '.', ',', [rfReplaceAll, rfIgnoreCase]);
        entradas[i].PesoAferido := StrToFloatDef(sValor, 0);
        sValor := StringReplace(sDetalhe[15], '.', ',', [rfReplaceAll, rfIgnoreCase]);
        entradas[i].PesoCubado := StrToFloatDef(sValor, 0);
        sValor := StringReplace(sDetalhe[16], '.', ',', [rfReplaceAll, rfIgnoreCase]);
        entradas[i].PesoNominal := StrToFloatDef(sValor, 0);
        sValor := StringReplace(sDetalhe[17], '.', ',', [rfReplaceAll, rfIgnoreCase]);
        entradas[i].PesoCTE := StrToFloatDef(sValor, 0);
        entradas[i].Operacao := sDetalhe[18];
        entradas[i].Regiao := sDetalhe[19];
      end;
    end;
    Result := entradas;
  finally
    CloseFile(ArquivoCSV);
  end;
end;
end.
