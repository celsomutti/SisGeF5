unit Model.PlanilhaRoteirosExpressas;

interface

uses Generics.Collections, System.Classes, System.SysUtils;

type
  TPlanilhaRoteiroExpressas = class
  private
    FLogradouro: String;
    FZona: String;
    FBairro: String;
    FPrazo: String;
    FCEPFinal: String;
    FCEPInicial: String;
    FCCEP5: String;
    FTipo: integer;
    FMensagem: String;
    FPlanilha: TObjectList<TPlanilhaRoteiroExpressas>;
  public
    property CEPInicial: String read FCEPInicial write FCEPInicial;
    property CEPFinal: String read FCEPFinal write FCEPFinal;
    property Prazo: String read FPrazo write FPrazo;
    property Zona: String read FZona write FZona;
    property Logradouro: String read FLogradouro write FLogradouro;
    property Bairro: String read FBairro write FBairro;
    property CCEP5: String read FCCEP5 write FCCEP5;
    property Tipo: Integer read FTipo write FTipo;
    property Planilha: TObjectList<TPlanilhaRoteiroExpressas> read FPlanilha write FPlanilha;
    property Mensagem: String read FMensagem write FMensagem;
    function GetPlanilha(sFile: String): Boolean;

  end;

implementation

{ TPlanilhaRoteiroExpressas }

function TPlanilhaRoteiroExpressas.GetPlanilha(sFile: String): Boolean;
var
  ArquivoCSV: TextFile;
  sLinha: String;
  sDetalhe: TStringList;
  i, iTipo : Integer;
  sValor : String;
begin
  try
    Result := False;
    FPlanilha := TObjectList<TPlanilhaRoteiroExpressas>.Create;
    AssignFile(ArquivoCSV, sFile);
    if sFile.IsEmpty then Exit;
    sDetalhe := TStringList.Create;
    sDetalhe.StrictDelimiter := True;
    sDetalhe.Delimiter := ';';
    Reset(ArquivoCSV);
    Readln(ArquivoCSV, sLinha);
    sDetalhe.DelimitedText := sLinha + ';';
    if Pos('CEP INICIAL',sLinha) = 0 then
    begin
      FMensagem := 'Arquivo informado não foi identificado como a Planilha de CEP para Roteiros de Expressas!';
      Exit;
    end;
    i := 0;
    while not Eoln(ArquivoCSV) do
    begin
      Readln(ArquivoCSV, sLinha);
      sDetalhe.DelimitedText := sLinha + ';';
      if StrToIntDef(sDetalhe[0], 0) > 0 then
      begin
        sValor := '0';
        FPlanilha.Add(TPlanilhaRoteiroExpressas.Create);
        i := FPlanilha.Count - 1;
        FPlanilha[i].CEPInicial := sDetalhe[0];
        FPlanilha[i].CEPFinal :=  sDetalhe[1];
        FPlanilha[i].Prazo := sDetalhe[2];
        FPlanilha[i].Zona := Copy(sDetalhe[3],1,1);
        FPlanilha[i].Logradouro := sDetalhe[5];
        FPlanilha[i].Bairro := sDetalhe[6];
        FPlanilha[i].CCEP5 := '000';
        if sDetalhe[4] = 'ABRANG. LEVE e PESADO' then
        begin
          iTipo := 3;
        end
        else if sDetalhe[4] = 'NÃO FAZ' then
        begin
          iTipo := 0;
        end
        else if Pos('FAZ PESADO', sDetalhe[4]) > 0 then
        begin
          iTipo := 2;
        end
        else if sDetalhe[4] = 'SÓ FAZ LEVE' then
        begin
          iTipo := 1;
        end;
        FPlanilha[i].Tipo := iTipo;
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
