unit Model.PlanilhaEntradaTracking;

interface

uses Generics.Collections, System.Classes, System.SysUtils, System.StrUtils;

  type
    TPlanilhaEntradaTracking = class
    private
      FRemessa: String;
      FRemetente: String;
      FCidadeUF: String;
      FCEP: String;
      FData: TDate;
      FHora: TTime;
      FAgendada: String;
      FPedido: String;
      FAWB: String;
      FNF: String;
      FDANFE: String;
      FCOD: String;
      FResponsavel: String;
      FProduto: String;
      FOcorrencia: String;
      FPeso: Double;
      FVolumes: Integer;
      FValor: Double;
      FDescricaoProduto: String;
      FDataStatus: TDate;
      FStatus: String;
      FUnidadeStatus: String;
      FRecebedor: String;
      FIdentificacao: String;
      FDocumento: String;
      FDataBaixa: TDateTime;
      FQtdeOcorrencia: Integer;
      FFaturado: String;
      FUnidadeEntrega: String;
      FTipoEntrega: String;
      FRota: String;
      FUnidadeColeta: String;
      FEndereco: String;
      FBairro: String;
      FNumero: String;
      FDestinatario: String;
      FEMail: String;
      FTelefone1: String;
      FTelefone2: String;
      FTelefone3: String;
      FOBS: String;
      FComplemento: String;
      FSaca: String;
      FDataAgendado: String;
      FDataReAgendado: String;
      FSorter: String;

      FMensagem: STring;
      FPlanilha: TObjectList<TPlanilhaEntradaTracking>;
    public
      property Remessa: String read FRemessa write FRemessa;
      property Remetente: String read FRemetente write FRemetente;
      property CidadeUF: String read FCidadeUF write FCidadeUF;
      property CEP: String read FCEP write FCEP;
      property Data: TDate read FData write FData;
      property Hora: TTime read FHora write FHora;
      property Agendada: String read FAgendada write FAgendada;
      property Pedido: String read FPedido write FPedido;
      property AWB: String read FAWB write FAWB;
      property NF: String read FNF write FNF;
      property DANFE: String read FDANFE write FDANFE;
      property COD: String read FCOD write FCOD;
      property Responsavel: String read FResponsavel write FResponsavel;
      property Produto: String read FProduto write FProduto;
      property Ocorrencia: String read FOcorrencia write FOcorrencia;
      property Peso: Double read FPeso write FPeso;
      property Volumes: Integer read FVolumes write FVolumes;
      property Valor: Double read FValor write FValor;
      property DescricaoProduto: String read FDescricaoProduto write FDescricaoProduto;
      property DataStatus: TDate read FDataStatus write FDataStatus;
      property Status: String read FStatus write FStatus;
      property UnidadeStatus: String read FUnidadeStatus write FUnidadeStatus;
      property Recebedor: String read FRecebedor write FRecebedor;
      property Identificacao: String read FIdentificacao write FIdentificacao;
      property Documento: String read FDocumento write FDocumento;
      property DataBaixa: TDateTime read FDataBaixa write FDataBaixa;
      property QtdeOcorrencia: Integer read FQtdeOcorrencia write FQtdeOcorrencia;
      property Faturado: String read FFaturado write FFaturado;
      property UnidadeEntrega: String read FUnidadeEntrega write FUnidadeEntrega;
      property TipoEntrega: String read FTipoEntrega write FTipoEntrega;
      property Rota: String read FRota write FRota;
      property UnidadeColeta: String read FUnidadeColeta write FUnidadeColeta;
      property Endereco: String read FEndereco write FEndereco;
      property Bairro: String read FBairro write FBairro;
      property Numero: String read FNumero write FNumero;
      property Destinatario: String read FDestinatario write FDestinatario;
      property EMail: String read FEMail write FEMail;
      property Telefone1: String read FTelefone1 write FTelefone1;
      property Telefone2: String read FTelefone2 write FTelefone2;
      property Telefone3: String read FTelefone3 write FTelefone3;
      property OBS: String read FOBS write FOBS;
      property Complemento: String read FComplemento write FComplemento;
      property Saca: String read FSaca write FSaca;
      property DataAgendado: String read FDataAgendado write FDataAgendado;
      property DataReAgendado: String read FDataReAgendado write FDataReAgendado;
      property Sorter: String read FSorter write FSorter;
      property Mensagem: STring read FMensagem write FMensagem;
      property Planilha: TObjectList<TPlanilhaEntradaTracking> read FPlanilha write FPlanilha;

      function GetPlanilha(sFile: String): boolean;
    end;


implementation

{ TPlanilhaEntradaTracking }

uses Common.Utils;

function TPlanilhaEntradaTracking.GetPlanilha(sFile: String): boolean;
var
  ArquivoCSV: TextFile;
  sLinha, sRemessa: String;
  sDetalhe: TStringList;
  i : Integer;
  sValor : String;
  lstRemessa: TStringList;
  iIndex: Integer;
begin
  try
    Result := False;
    FPlanilha := TObjectList<TPlanilhaEntradaTracking>.Create;
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
    if Pos('TRACKING',sLinha) = 0 then
    begin
      FMensagem := 'Arquivo informado não foi identificado como a Planilha de Entrada dE Tracking!';
      Exit;
    end;
    i := 0;
    while not Eoln(ArquivoCSV) do
    begin
      Readln(ArquivoCSV, sLinha);
      sDetalhe.DelimitedText := sLinha + ';';
      sRemessa := ReplaceStr(sDetalhe[0],'''', '');
      if TUtils.ENumero(sRemessa) then
      begin
        if not lstRemessa.Find(sDetalhe[0], iIndex) then
        begin
          lstRemessa.Add(sDetalhe[0]);
          lstRemessa.Sort;
          sValor := '0';
          FPlanilha.Add(TPlanilhaEntradaTracking.Create);
          i := FPlanilha.Count - 1;
          FPlanilha[i].Remessa := sRemessa;
          FPlanilha[i].Remetente :=  sDetalhe[1];
          FPlanilha[i].CidadeUF :=sDetalhe[2];
          FPlanilha[i].CEP := sDetalhe[3];
          FPlanilha[i].Data := StrToDateDef(sDetalhe[4], 0);
          FPlanilha[i].Hora := StrToTimeDef(sDetalhe[5],StrToTime('00:00:00'));
          FPlanilha[i].Agendada := sDetalhe[6];
          FPlanilha[i].Pedido := ReplaceStr(sDetalhe[7],'''', '');
          FPlanilha[i].AWB := ReplaceStr(sDetalhe[8],'''', '');
          FPlanilha[i].NF := sDetalhe[9];
          FPlanilha[i].DANFE := ReplaceStr(sDetalhe[10],'''', '');
          FPlanilha[i].COD := sDetalhe[11];
          FPlanilha[i].Responsavel := sDetalhe[12];
          FPlanilha[i].Produto := sDetalhe[13];
          FPlanilha[i].Ocorrencia := sDetalhe[14];
          FPlanilha[i].Peso := StrToFloatDef(sDetalhe[15],0);
          FPlanilha[i].Volumes := StrToIntDef(sDetalhe[16],1);
          FPlanilha[i].Valor := StrToFloatDef(sDetalhe[17],0);
          FPlanilha[i].DescricaoProduto := sDetalhe[18];
          FPlanilha[i].DataStatus :=  StrToDateDef(sDetalhe[19], 0);
          FPlanilha[i].Status := sDetalhe[20];
          FPlanilha[i].UnidadeStatus := sDetalhe[21];
          FPlanilha[i].Recebedor := sDetalhe[22];
          FPlanilha[i].Identificacao := sDetalhe[23];
          FPlanilha[i].Documento := sDetalhe[24];
          FPlanilha[i].DataBaixa := StrToDateDef(sDetalhe[25], 0);
          FPlanilha[i].QtdeOcorrencia := StrToIntDef(sDetalhe[26], 0);
          FPlanilha[i].Faturado := sDetalhe[27];
          FPlanilha[i].UnidadeEntrega := sDetalhe[28];
          FPlanilha[i].TipoEntrega := sDetalhe[29];
          FPlanilha[i].Rota := sDetalhe[30];
          FPlanilha[i].UnidadeColeta := sDetalhe[31];
          FPlanilha[i].Endereco := sDetalhe[32];
          FPlanilha[i].Bairro := sDetalhe[33];
          FPlanilha[i].Numero := sDetalhe[34];
          FPlanilha[i].Destinatario := sDetalhe[35];
          FPlanilha[i].EMail := sDetalhe[36];
          FPlanilha[i].Telefone1 := sDetalhe[37];
          FPlanilha[i].Telefone2 := sDetalhe[38];
          FPlanilha[i].Telefone3 := sDetalhe[39];
          FPlanilha[i].OBS := sDetalhe[40];
          FPlanilha[i].Complemento := sDetalhe[41];
          FPlanilha[i].Saca := sDetalhe[42];
          FPlanilha[i].DataAgendado := sDetalhe[43];
          FPlanilha[i].DataReAgendado := sDetalhe[44];
          FPlanilha[i].Sorter := sDetalhe[45];
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
