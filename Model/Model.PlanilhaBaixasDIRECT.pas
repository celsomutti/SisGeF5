unit Model.PlanilhaBaixasDIRECT;

interface

uses Generics.Collections, System.Classes, System.SysUtils;

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
      FMensagemProcesso: string;
      FPlanilha: TObjectList<TPlanilhaBaixasDIRECT>;
      FLoja: String;

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
      property Loja: String read FLoja write FLoja;
      property MensagemProcesso: string read FMensagemProcesso;
      property Planilha: TObjectList<TPlanilhaBaixasDIRECT> read FPlanilha;

      function GetPlanilha(sFile: String): boolean;
    end;


implementation

{ TPlanilhaBaixasDIRECT }

uses Common.Utils;

function TPlanilhaBaixasDIRECT.GetPlanilha(sFile: String): boolean;
var
  ArquivoCSV: TextFile;
  sLinha: String;
  sDetalhe: TStringList;
  FPlanilha : TObjectList<TPlanilhaBaixasDIRECT>;
  i : Integer;
  sValor: String;
begin
  FPlanilha := TObjectList<TPlanilhaBaixasDIRECT>.Create;
  if not FileExists(sFile) then
  begin
    FMensagemProcesso := 'Arquivo ' + sFile + ' não foi encontrado!';
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
    FMensagemProcesso := 'Arquivo ' + sFile + ' não foi encontrado!';
    CloseFile(ArquivoCSV);
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
      FPlanilha.Add(TPlanilhaBaixasDIRECT.Create);
      i := FPlanilha.Count - 1;
      FPlanilha[i].NumeroViagem := StrToIntDef(sDetalhe[0], 0);
      FPlanilha[i].DataAtualizacao :=  StrToDateDef(sDetalhe[1], 0);
      FPlanilha[i].Documento := sDetalhe[2];
      FPlanilha[i].Motorista := sDetalhe[3];
      FPlanilha[i].SiglaBase := sDetalhe[4];
      FPlanilha[i].Pedido := sDetalhe[5];
      FPlanilha[i].Remessa := sDetalhe[6];
      FPlanilha[i].NF := sDetalhe[7];
      FPlanilha[i].Municipio := sDetalhe[8];
      FPlanilha[i].CEP := sDetalhe[9];
      FPlanilha[i].Volumes := StrToIntDef(sDetalhe[10], 1);
      FPlanilha[i].Tipo := sDetalhe[11];
      FPlanilha[i].DataRegistro := StrToDateDef(sDetalhe[12], 0);
      sValor := StringReplace(sDetalhe[13], '.', ',', [rfReplaceAll, rfIgnoreCase]);
      FPlanilha[i].Valor := StrToFloatDef(sValor, 0);
      sValor := StringReplace(sDetalhe[14], '.', ',', [rfReplaceAll, rfIgnoreCase]);
      FPlanilha[i].PesoAferido := StrToFloatDef(sValor, 0);
      sValor := StringReplace(sDetalhe[15], '.', ',', [rfReplaceAll, rfIgnoreCase]);
      FPlanilha[i].PesoCubado := StrToFloatDef(sValor, 0);
      sValor := StringReplace(sDetalhe[16], '.', ',', [rfReplaceAll, rfIgnoreCase]);
      FPlanilha[i].PesoNominal := StrToFloatDef(sValor, 0);
      sValor := StringReplace(sDetalhe[17], '.', ',', [rfReplaceAll, rfIgnoreCase]);
      FPlanilha[i].PesoCTE := StrToFloatDef(sValor, 0);
      FPlanilha[i].Operacao := sDetalhe[18];
      FPlanilha[i].Regiao := sDetalhe[19];
      FPLanilha[i].Loja := sDetalhe[20];
    end;
  end;
  CloseFile(ArquivoCSV);
  if FPlanilha.Count = 0 then
  begin
    FMensagemProcesso := 'Nenhuma informação foi importada da planilha!';
    Exit;
  end;
  Result := True;
end;

end.
