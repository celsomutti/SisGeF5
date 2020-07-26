unit Model.PlanilhaBaixasTFO;

interface

uses Generics.Collections, System.Classes, System.SysUtils;

type
  TPlanilhaBaixasTFO = class
  private
    FCodigoClienteTFO: integer;
    FDataEntrega: TDate;
    FPesoCobrado: double;
    FDataPrevisaoEntrega: TDate;
    FDescricaoTipoPeso: string;
    FCodigoAgenteTFO: integer;
    FNomeEntregador: string;
    FObseervacoes: string;
    FDataUltimaAtribuicao: TDateTime;
    FDocumento: string;
    FHoraEntrega: TTime;
    FGrauRelacionamento: string;
    FNomeUsuario: string;
    FNumeroPedido: string;
    FDataDigitacao: TDate;
    FRecebedor: string;
    FNomeAgenteTFO: string;
    FNNRemessa: string;
    FCodigoEntregador: integer;
    FMensagemProcesso: string;
    FPlanilha: TObjectList<TPlanilhaBaixasTFO>;
  public
    property NNRemessa: string read FNNRemessa write FNNRemessa;
    property DataEntrega: TDate read FDataEntrega write FDataEntrega;
    property HoraEntrega: TTime read FHoraEntrega write FHoraEntrega;
    property Recebedor: string read FRecebedor write FRecebedor;
    property GrauRelacionamento: string read FGrauRelacionamento write FGrauRelacionamento;
    property Documento: string read FDocumento write FDocumento;
    property CodigoEntregador: integer read FCodigoEntregador write FCodigoEntregador;
    property NomeEntregador: string read FNomeEntregador write FNomeEntregador;
    property DataUltimaAtribuicao: TDateTime read FDataUltimaAtribuicao write FDataUltimaAtribuicao;
    property Obseervacoes: string read FObseervacoes write FObseervacoes;
    property NomeUsuario: string read FNomeUsuario write FNomeUsuario;
    property DataDigitacao: TDate read FDataDigitacao write FDataDigitacao;
    property CodigoClienteTFO: integer read FCodigoClienteTFO write FCodigoClienteTFO;
    property NumeroPedido: string read FNumeroPedido write FNumeroPedido;
    property DataPrevisaoEntrega: TDate read FDataPrevisaoEntrega write FDataPrevisaoEntrega;
    property CodigoAgenteTFO: integer read FCodigoAgenteTFO write FCodigoAgenteTFO;
    property NomeAgenteTFO: string read FNomeAgenteTFO write FNomeAgenteTFO;
    property PesoCobrado: double read FPesoCobrado write FPesoCobrado;
    property DescricaoTipoPeso: string read FDescricaoTipoPeso write FDescricaoTipoPeso;
    property MensagemProcesso: string read FMensagemProcesso;
    property Planilha: TObjectList<TPlanilhaBaixasTFO> read FPlanilha;
    function GetPlanilha(sFile: String): boolean;
  end;

implementation

{ TPlanilhaBaixasTFO }

uses Common.Utils;

function TPlanilhaBaixasTFO.GetPlanilha(sFile: String): boolean;
var
  ArquivoCSV: TextFile;
  sLinha: string;
  sDetalhe: TStringList;
  i: integer;
begin
  Result := False;
  if not FileExists(sFile) then
  begin
    FMensagemProcesso := 'Arquivo ' + sFile + ' não foi encontrado!';
    Exit;
  end;
  FPlanilha := TObjectList<TPlanilhaBaixasTFO>.Create;
  AssignFile(ArquivoCSV, sFile);
  if sFile.IsEmpty then
  begin
    FMensagemProcesso := 'Arquivo ' + sFile + ' não foi encontrado!';
    CloseFile(ArquivoCSV);
    Exit;
  end;
  sDetalhe := TStringList.Create;
  sDetalhe.StrictDelimiter := True;
  sDetalhe.Delimiter := ';';
  Reset(ArquivoCSV);
  Readln(ArquivoCSV, sLinha);
  if Copy(sLinha, 0, 22) <> 'CONSULTA DE PROTOCOLOS' then
  begin
   FMensagemProcesso := 'Arquivo informado não foi identificado como a Planilha de Baixas de Protocolos TFO!';
   CloseFile(ArquivoCSV);
   Exit;
  end;
  sDetalhe.DelimitedText := sLinha;
  if sDetalhe.Count <> 19 then
  begin
    FMensagemProcesso := 'Quantidade de Colunas não indica ser da Planilha de Baixas de Protocolos TFO!';
    CloseFile(ArquivoCSV);
    Exit;
  end;
  i := 0;
  while not Eoln(ArquivoCSV) do
  begin
    Readln(ArquivoCSV, sLinha);
    sDetalhe.DelimitedText := sLinha + ';';
    if TUtils.ENumero(sDetalhe[0]) then
    begin
      FPlanilha.Add(TPlanilhaBaixasTFO.Create);
      i := Pred(FPlanilha.Count);
      FPlanilha[i].NNRemessa := sDetalhe[0];
      FPlanilha[i].DataEntrega := StrToDateDef(sDetalhe[1],StrToDate('31/12/1899'));
      FPlanilha[i].HoraEntrega := StrToTimeDef(sDetalhe[2],StrToTime('23:59:59'));
      FPlanilha[i].Recebedor := sDetalhe[3];
      FPlanilha[i].GrauRelacionamento := sDetalhe[4];
      FPlanilha[i].Documento:= sDetalhe[5];
      FPlanilha[i].CodigoEntregador := StrToIntDef(sDetalhe[6], 0);
      FPlanilha[i].NomeEntregador := sDetalhe[7];
      FPlanilha[i].DataUltimaAtribuicao := StrToDateTimeDef(sDetalhe[8], StrToDateTime('31/12/1899 23:59:59'));
      FPlanilha[i].Obseervacoes := sDetalhe[9];
      FPlanilha[i].NomeUsuario := sDetalhe[10];
      FPlanilha[i].DataDigitacao := StrToDateTimeDef(sDetalhe[11], StrToDateTime('31/12/1899 23:59:59'));
      FPlanilha[i].CodigoClienteTFO := StrToInt(sDetalhe[12]);
      FPlanilha[i].NumeroPedido := sDetalhe[13];
      FPlanilha[i].DataPrevisaoEntrega := StrToDateDef(sDetalhe[14], StrToDate('31/12/1899'));
      FPlanilha[i].CodigoAgenteTFO := StrToInt(sDetalhe[15]);
      FPlanilha[i].NomeAgenteTFO := sDetalhe[16];
      FPlanilha[i].PesoCobrado := StrToFloat(sDetalhe[17]);
      FPlanilha[i].DescricaoTipoPeso := sDetalhe[18];
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
