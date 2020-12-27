unit Model.PlanilhaEntradaSIMExpress;

interface

uses Generics.Collections, System.Classes, System.SysUtils;

  type
    TPlanilhaEntradaSIMExpress = class
    private
      FNRRota: String;
      FRota: String;
      FMotorista: String;
      FOrdemRota: String;
      FEmbarcador: String;
      FDestinatario: String;
      FNREntrega: String;
      FNF: String;
      FPedido: String;
      FTipo: String;
      FVolumes: STring;
      FACobrar: String;
      FOBSEntrega: String;
      FIDViagem: String;
      FDataEntrega: String;
      FDataOcorrencia: String;
      FOcorrencia: String;
      FIDRemessa: String;
      FEndereco: String;
      FBairro: String;
      FMunicipio: String;
      FCEP: String;
      FSituacaoEntrega: String;
      FPeso: String;
      FValor: String;
      FTentativa: String;
      FColeta: String;
      FViagem: String;
      FTipoBaixa: String;
      FIDVolume: String;
      FSituacao: String;
      FOBS: String;
      FNomeBase: String;
      FLatitude: String;
      FLongitude: String;
      FIDPedido: String;
      FPlanilha: TObjectList<TPlanilhaEntradaSIMExpress>;
      FMensagem: STring;
      FTransportadora: String;
      FPedidoID: String;
    public
      property NRRota : String read FNRRota write FNRRota;
      property Rota : String read FRota write FRota;
      property Motorista: String read FMotorista write FMotorista;
      property OrdemRota: String read FOrdemRota write FOrdemRota;
      property Transportadora: String read FTransportadora write FTransportadora;
      property Embarcador: String read FEmbarcador write FEmbarcador;
      property Destinatario: String read FDestinatario write FDestinatario;
      property PedidoID: String read FPedidoID write FPedidoID;
      property NREntrega: String read FNREntrega write FNREntrega;
      property NF: String read FNF write FNF;
      property Pedido: String read FPedido write FPedido;
      property Tipo: String read FTipo write FTipo;
      property Volumes: STring read FVolumes write FVolumes;
      property ACobrar: String read FACobrar write FACobrar;
      property OBSEntrega: String read FOBSEntrega write FOBSEntrega;
      property IDViagem: String read FIDViagem write FIDViagem;
      property DataEntrega: String read FDataEntrega write FDataEntrega;
      property DataOcorrencia: String read FDataOcorrencia write FDataOcorrencia;
      property Ocorrencia: String read FOcorrencia write FOcorrencia;
      property IDRemessa: String read FIDRemessa write FIDRemessa;
      property Endereco: String read FEndereco write FEndereco;
      property Bairro: String read FBairro write FBairro;
      property Municipio: String read FMunicipio write FMunicipio;
      property CEP: String read FCEP write FCEP;
      property SituacaoEntrega: String read FSituacao write FSituacao;
      property Peso: String read FPeso write FPeso;
      property Valor: String read FValor write FValor;
      property Tentativa: String read FTentativa write FTentativa;
      property Coleta: String read FColeta write FColeta;
      property Viagem: String read FViagem write FViagem;
      property TipoBaixa: String read FTipoBaixa write FTipoBaixa;
      property IDVolume: String read FIDVolume write FIDVolume;
      property Situacao: String read FSituacao write FSituacao;
      property OBS: String read FOBS write FOBS;
      property NomeBase: String read FNomeBase write FNomeBase;
      property Latitude: String read FLatitude write FLatitude;
      property Longitude: String read FLongitude write FLongitude;
      property IDPedido: String read FIDPedido write FIDPedido;
      property Mensagem: STring read FMensagem write FMensagem;
      property Planilha: TObjectList<TPlanilhaEntradaSIMExpress> read FPlanilha write FPlanilha;

      function GetPlanilha(sFile: String): boolean;
    end;


implementation

{ TPlanilhaEntradaSIMExpress }

uses Common.Utils;

function TPlanilhaEntradaSIMExpress.GetPlanilha(sFile: String): boolean;
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
    FPlanilha := TObjectList<TPlanilhaEntradaSIMExpress>.Create;
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
    if Pos('Nr Rota',sLinha) = 0 then
    begin
      FMensagem := 'Arquivo informado não foi identificado como a Planilha de Entrada do SIM Express!';
      Exit;
    end;
    i := 0;
    while not Eoln(ArquivoCSV) do
    begin
      Readln(ArquivoCSV, sLinha);
      sDetalhe.DelimitedText := sLinha + ';';
      if TUtils.ENumero(sDetalhe[7]) then
      begin
        Fplanilha.Add(TPlanilhaEntradaSIMExpress.Create);
        i := FPlanilha.Count - 1;
        FPlanilha[i].NRRota := sDetalhe[0];
        FPlanilha[i].Rota :=  sDetalhe[1];
        FPlanilha[i].Motorista := sDetalhe[2];
        FPlanilha[i].OrdemRota := sDetalhe[3];
        FPlanilha[i].Transportadora := sDetalhe[4];
        FPlanilha[i].Embarcador := sDetalhe[5];
        FPlanilha[i].Destinatario := sDetalhe[6];
        FPlanilha[i].PedidoID := sDetalhe[7];
        FPlanilha[i].NREntrega := sDetalhe[8];
        FPlanilha[i].NF := sDetalhe[9];
        FPlanilha[i].Pedido := sDetalhe[10];
        FPlanilha[i].Tipo := sDetalhe[11];
        FPlanilha[i].Volumes := sDetalhe[12];
        FPlanilha[i].ACobrar := sDetalhe[13];
        FPlanilha[i].OBSEntrega := sDetalhe[14];
        FPlanilha[i].IDViagem := sDetalhe[15];
        FPlanilha[i].DataEntrega := sDetalhe[16];
        FPlanilha[i].DataOcorrencia := sDetalhe[17];
        FPlanilha[i].Ocorrencia := sDetalhe[18];
        FPlanilha[i].IDRemessa := sDetalhe[19];
        FPlanilha[i].Endereco := sDetalhe[20];
        FPlanilha[i].Bairro := sDetalhe[21];
        FPlanilha[i].Municipio := sDetalhe[22];
        FPlanilha[i].CEP := sDetalhe[23];
        FPlanilha[i].SituacaoEntrega := sDetalhe[24];
        FPlanilha[i].Peso := sDetalhe[25];
        FPlanilha[i].Valor := sDetalhe[26];
        FPlanilha[i].Tentativa := sDetalhe[27];
        FPlanilha[i].Coleta := sDetalhe[28];
        FPlanilha[i].Viagem := sDetalhe[29];
        FPlanilha[i].TipoBaixa := sDetalhe[30];
        FPlanilha[i].IDVolume := sDetalhe[31];
        FPlanilha[i].Situacao := sDetalhe[32];
        FPlanilha[i].OBS := sDetalhe[33];
        FPlanilha[i].NomeBase := sDetalhe[34];
        FPlanilha[i].Latitude := sDetalhe[35];
        FPlanilha[i].Longitude := sDetalhe[36];
        FPlanilha[i].IDPedido := sDetalhe[37];
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
