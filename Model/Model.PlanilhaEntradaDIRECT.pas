unit Model.PlanilhaEntradaDIRECT;

interface

uses Generics.Collections, System.Classes, System.SysUtils;

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
      FMensagem: STring;
      FPlanilha: TObjectList<TPlanilhaEntradaDIRECT>;
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
      property Mensagem: STring read FMensagem write FMensagem;
      property Planilha: TObjectList<TPlanilhaEntradaDIRECT> read FPlanilha write FPlanilha;

      function GetPlanilha(sFile: String): boolean;
    end;


implementation

{ TPlanilhaEntradaDIRECT }

uses Common.Utils;

function TPlanilhaEntradaDIRECT.GetPlanilha(sFile: String): boolean;
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
    REsult := False;
    FPlanilha := TObjectList<TPlanilhaEntradaDIRECT>.Create;
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
    if Pos('REMESSA',sLinha) = 0 then
    begin
      FMensagem := 'Arquivo informado não foi identificado como a Planilha de Entrada da DIRECT!';
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
          FPlanilha.Add(TPlanilhaEntradaDIRECT.Create);
          i := FPlanilha.Count - 1;
          FPlanilha[i].Remessa := sDetalhe[0];
          FPlanilha[i].Pedido :=  sDetalhe[1];
          FPlanilha[i].DataRegistro := StrToDateDef(sDetalhe[2], 0);
          FPlanilha[i].HoraRegistro := StrToTimeDef(sDetalhe[3], 0);
          FPlanilha[i].CodigoEmbarcador := StrToIntDef(sDetalhe[4], 0);
          FPlanilha[i].NomeEmbarcador := sDetalhe[5];
          FPlanilha[i].NomeConsumidor := sDetalhe[6];
          FPlanilha[i].Municipio := sDetalhe[7];
          FPlanilha[i].UF := sDetalhe[8];
          FPlanilha[i].CEP := sDetalhe[9];
          FPlanilha[i].Bairro := sDetalhe[10];
          FPlanilha[i].Situacao := sDetalhe[11];
          FPlanilha[i].DataAlteracao := StrToDateDef(sDetalhe[12], 0);
          FPlanilha[i].HoraAlteracao := StrToTimeDef(sDetalhe[13], 0);
          FPlanilha[i].Volumes := StrToIntDef(sDetalhe[14], 0);
          FPlanilha[i].Tipo := sDetalhe[15];
          FPlanilha[i].PakingList := sDetalhe[16];
          FPlanilha[i].NF := sDetalhe[17];
          FPlanilha[i].Serie := sDetalhe[18];
          FPlanilha[i].Emissao :=  StrToDateDef(sDetalhe[19], 0);
          sValor := StringReplace(sDetalhe[20], '.', ',', [rfReplaceAll, rfIgnoreCase]);
          FPlanilha[i].Valor := StrToFloatDef(sValor, 0);
          FPlanilha[i].Chave := sDetalhe[21];
          FPlanilha[i].Operacao := sDetalhe[22];
          FPlanilha[i].TomadorNome := sDetalhe[23];
          FPlanilha[i].CNPJTomador := sDetalhe[24];
          FPlanilha[i].Base := sDetalhe[25];
          FPlanilha[i].BaseSigla := sDetalhe[26];
          sValor := StringReplace(sDetalhe[27], '.', ',', [rfReplaceAll, rfIgnoreCase]);
          FPlanilha[i].PesoCubado := StrToFloatDef(sValor, 0);
          sValor := StringReplace(sDetalhe[28], '.', ',', [rfReplaceAll, rfIgnoreCase]);
          FPlanilha[i].PesoNominal := StrToFloatDef(sValor, 0);
          FPlanilha[i].UltimaOcorrencia := sDetalhe[29];
          FPlanilha[i].QtdeOcorrencia := StrToIntDef(sDetalhe[30], 0);
          FPlanilha[i].DataAgendamento := sDetalhe[31];
          FPlanilha[i].Devolucao := sDetalhe[32];
          FPlanilha[i].UltimaViagem := sDetalhe[33];
          FPlanilha[i].UltimoMotorista := sDetalhe[34];
          FPlanilha[i].Produto := sDetalhe[35];
          FPlanilha[i].AWB1 := sDetalhe[36];
          FPlanilha[i].AWB2 := sDetalhe[37];
          FPlanilha[i].DataChegada := StrToDateDef(sDetalhe[38], 0);
          FPlanilha[i].HoraChegada := StrToTimeDef(sDetalhe[39], 0);
          FPlanilha[i].DataChegadaLM := StrToDateDef(sDetalhe[40], 0);
          FPlanilha[i].HoraChegadaLM := StrToTimeDef(sDetalhe[41], 0);
        end;
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
