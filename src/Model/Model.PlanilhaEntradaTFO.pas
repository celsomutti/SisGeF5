unit Model.PlanilhaEntradaTFO;

interface

uses Generics.Collections, System.Classes, System.SysUtils;

type
  TPlanilhaEntradaTFO = class
    private
      FContainer: String;
      FLogradouro: String;
      FPrevisao: String;
      FPeso: String;
      FCodigoDestino: String;
      FBairro: String;
      FAltura: String;
      FExpedicao: String;
      FNossoNumero: String;
      FNomeEntregador: String;
      FAosCuidados: String;
      FCEP: STring;
      FNomeConsumidor: String;
      FLargura: String;
      FStatus: String;
      FNomeDestiono: String;
      FVolume: String;
      FValorVerba: String;
      FComplemento: String;
      FCodigoCliente: String;
      FValorProuto: String;
      FComprimento: String;
      FDescricaoStatus: String;
      FCidade: String;
      FTelefone: String;
      FNumeroNF: String;
      FMensagem: String;
      FPlanilha: TObjectList<TPlanilhaEntradaTFO>;
    public
      property CodigoDestino : String read FCodigoDestino write FCodigoDestino;
      property NomeDestino : String read FNomeDestiono write FNomeDestiono;
      property NossoNumero: String read FNossoNumero write FNossoNumero;
      property CodigoCliente: String read FCodigoCliente write FCodigoCliente;
      property NumeroNF: String read FNumeroNF write FNumeroNF;
      property NomeConsumidor: String read FNomeConsumidor write FNomeConsumidor;
      property AosCuidados: String read FAosCuidados write FAosCuidados;
      property Logradouro: String read FLogradouro write FLogradouro;
      property Complemento: String read FComplemento write FComplemento;
      property Bairro: String read FBairro write FBairro;
      property Cidade: String read FCidade write FCidade;
      property CEP: STring read FCEP write FCEP;
      property Telefone: String read FTelefone write FTelefone;
      property Expedicao: String read FExpedicao write FExpedicao;
      property Previsao: String read FPrevisao write FPrevisao;
      property Status: String read FStatus write FStatus;
      property DescricaoStatus: String read FDescricaoStatus write FDescricaoStatus;
      property NomeEntregador: String read FNomeEntregador write FNomeEntregador;
      property Container: String read FContainer write FContainer;
      property ValorProuto: String read FValorProuto write FValorProuto;
      property ValorVerba: String read FValorVerba write FValorVerba;
      property Altura: String read FAltura write FAltura;
      property Largura: String read FLargura write FLargura;
      property Comprimento: String read FComprimento write FComprimento;
      property Peso: String read FPeso write FPeso;
      property Volume: String read FVolume write FVolume;
      property MensagemProcesso: String read FMensagem write FMensagem;
      property Planilha: TObjectList<TPlanilhaEntradaTFO> read FPlanilha write FPlanilha;

      function GetPlanilha(sFile: String): Boolean;
  end;

implementation

{ TPlanilhaEntradaTFO }

uses Common.Utils;

function TPlanilhaEntradaTFO.GetPlanilha(sFile: String): boolean;
var
  ArquivoCSV: TextFile;
  sLinha: String;
  sDetalhe: TStringList;
  i : Integer;
  lstRemessa: TStringList;
  iIndex: Integer;
  bFlag: Boolean;
begin
 try
    REsult := False;
    FPlanilha := TObjectList<TPlanilhaEntradaTFO>.Create;
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
    lstRemessa := TStringList.Create;
    Reset(ArquivoCSV);
    Readln(ArquivoCSV, sLinha);
    if Copy(sLinha, 0, 38) <> 'CONSULTA DE ENTREGAS NA WEB POR STATUS' then
    begin
      FMensagem := 'Arquivo informado não foi identificado como a Planilha de Entrada de Entregas!';
      Exit;
    end;
    sDetalhe.DelimitedText := sLinha;
    if sDetalhe.Count <> 26 then
    begin
      FMensagem := 'Quantidade de Colunas não indica ser da Planilha de Entrada de Entregas!';
      Exit;
    end;
    i := 0;
    iIndex := 0;
    while not Eoln(ArquivoCSV) do
    begin
      Readln(ArquivoCSV, sLinha);
      sDetalhe.DelimitedText := sLinha + ';';
      bFlag := False;
      if TUtils.ENumero(sDetalhe[0]) then
      begin
        if StrToIntDef(sDetalhe[25], 1) > 1 then
        begin
          if not lstRemessa.Find(sDetalhe[2], iIndex) then
          begin
            lstRemessa.Add(sDetalhe[2]);
            lstRemessa.Sort;
            bFlag := True;
          end
          else
          begin
            bFlag := False;
          end;
        end
        else
        begin
          bFlag := True;
        end;
        if bFlag then
          begin
          FPlanilha.Add(TPlanilhaEntradaTFO.Create);
          i := FPlanilha.Count - 1;
          FPlanilha[i].CodigoDestino := sDetalhe[0];
          FPlanilha[i].NomeDestino := sDetalhe[1];
          FPlanilha[i].NossoNumero := sDetalhe[2];
          FPlanilha[i].CodigoCliente := sDetalhe[3];
          FPlanilha[i].NumeroNF := sDetalhe[4];
          FPlanilha[i].NomeConsumidor := sDetalhe[5];
          FPlanilha[i].AosCuidados := sDetalhe[6];
          FPlanilha[i].Logradouro := sDetalhe[7];
          FPlanilha[i].Complemento := sDetalhe[8];
          FPlanilha[i].Bairro := sDetalhe[9];
          FPlanilha[i].Cidade := sDetalhe[10];
          FPlanilha[i].CEP := sDetalhe[11];
          FPlanilha[i].Telefone := sDetalhe[12];
          FPlanilha[i].Expedicao := sDetalhe[13];
          FPlanilha[i].Previsao := sDetalhe[14];
          FPlanilha[i].Status := sDetalhe[15];
          FPlanilha[i].DescricaoStatus := sDetalhe[16];
          FPlanilha[i].NomeEntregador := sDetalhe[17];
          FPlanilha[i].Container := sDetalhe[18];
          FPlanilha[i].ValorProuto := sDetalhe[19];
          FPlanilha[i].ValorVerba := sDetalhe[20];
          FPlanilha[i].Altura := sDetalhe[21];
          FPlanilha[i].Largura := sDetalhe[22];
          FPlanilha[i].Comprimento := sDetalhe[23];
          FPlanilha[i].Peso := sDetalhe[24];
          FPlanilha[i].Volume := sDetalhe[25];
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
