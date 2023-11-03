unit Model.PlanilhaEntradaENGLOBA;

interface

uses Generics.Collections, System.Classes, System.SysUtils;

  type
    TPlanilhaEntradaENGLOBA = class
    private
      FPlanilha: TObjectList<TPlanilhaEntradaENGLOBA>;
      FDataExpedicao: TDate;
      FPedido: string;
      FCodigo: string;
      FSubDescricaoServico: string;
      FRomaneioCliente: string;
      FNF: string;
      FDescricaoServico: string;
      FNumeroCliente: string;
      FDataPedido: TDate;
      FDataConfirmacao: TDate;
      FDataRecebimentoBase: TDate;
      FDataUltimaRota: Tdatetime;
      FDataPrevista: TDate;
      FDataPrevistaSemIncucessos: TDate;
      FDataFinalizacao: TDate;
      FNoPrazo: string;
      FInformacoesNoPrazo: string;
      FNoPrazoBase: string;
      FDataUltimaOcorrencia: TDatetime;
      FUltimaOcorrencia: string;
      FUltimoInsucesso: string;
      FDataUltimoInsucesso: tDatetime;
      FSituacao: string;
      FNomeRemetente: string;
      FCidadeRemetente: string;
      FUFRemetente: string;
      FBaseDestino: string;
      FEmpresa: string;
      FDestinatario: string;
      FEnderecoDestinatario: string;
      FNumeroEnderecoDestinatario: string;
      FComplementoEnderecoDestinatario: string;
      FBairroEnderecoDestinatario: string;
      FCidadeEnderecoDestinatario: string;
      FTipoRegiao: string;
      FCEPEnderecoDestinatario: string;
      FUFEnderecoDestinatario: string;
      FTelefone1: string;
      FEdicao: string;
      FItens: integer;
      FVolumes: integer;
      FPesoTransportadora: double;
      FPesoReal: double;
      FPesoCubado: double;
      FPesoTaxado: double;
      FValorPedido: double;
      FDescricaoProduto: string;
      FUltimoMotorista: string;
      FUltimoRomaneioRota: string;
      FFiller01: string;
      FFiller02: string;
      FFiller03: string;
      FFiller04: string;
      FFiller05: string;
      FFiller06: string;
      FFiller07: string;
      FFiller08: string;
      FFiller09: string;
      FFiller10: string;
      FFiller11: string;
      FFiller12: string;
      FFiller13: string;
      FFiller14: string;
      FFiller15: string;
      FFiller16: string;
      FFiller17: string;
      FFiller18: string;
      FMensagem: string;
    public
      property Codigo: string read FCodigo write FCodigo;
      property Pedido: string read FPedido write FPedido;
      property NumeroCliente: string read FNumeroCliente write FNumeroCliente;
      property RomaneioCliente: string read FRomaneioCliente write FRomaneioCliente;
      property NF: string read FNF write FNF;
      property DescricaoServico: string read FDescricaoServico write FDescricaoServico;
      property SubDescricaoServico: string read FSubDescricaoServico write FSubDescricaoServico;
      property DataPedido: TDate read FDataPedido write FDataPedido;
      property DataConfirmacao: TDate read FDataConfirmacao write FDataConfirmacao;
      property DataExpedicao: TDate read FDataExpedicao write FDataExpedicao;
      property DataRecebimentoBase: TDate read FDataRecebimentoBase write FDataRecebimentoBase;
      property DataUltimaRota: TDatetime read FDataUltimaRota write FDataUltimaRota;
      property DataPrevista: TDate read FDataPrevista write FDataPrevista;
      property DataPrevistaSemIncucessos: TDate read FDataPrevistaSemIncucessos write FDataPrevistaSemIncucessos;
      property DataFinalizacao: TDate read FDataFinalizacao write FDataFinalizacao;
      property NoPrazo: string read  FNoPrazo write FNoPrazo;
      property InformacoesNoPrazo: string read FInformacoesNoPrazo write FInformacoesNoPrazo;
      property NoPrazoBase: String read FNoPrazoBase write FNoPrazoBase;
      property DataUltimaOcorrencia: TDatetime read FDataUltimaOcorrencia write FDataUltimaOcorrencia;
      property UltimaOcorrencia: string read FUltimaOcorrencia write FUltimaOcorrencia;
      property UltimoInsucesso: string read FUltimoInsucesso write FUltimoInsucesso;
      property DataUltimoInsucesso: TDatetime read FDataUltimoInsucesso write FDataUltimoInsucesso;
      property Situacao: string read FSituacao write FSituacao;
      property NomeRemetente: string read FNomeRemetente write FNomeRemetente;
      property CidadeRemetente: string read FCidadeRemetente write FCidadeRemetente;
      property UFRemetente: string read FUFRemetente write FUFRemetente;
      property BaseDestino: string read FBaseDestino write FBaseDestino;
      property Empresa: string read FEmpresa write FEmpresa;
      property Destinatario: string read FDestinatario write FDestinatario;
      property EnderecoDestinatario: string read FEnderecoDestinatario write FEnderecoDestinatario;
      property NumeroEnderecoDestinatario: string read FNumeroEnderecoDestinatario write FNumeroEnderecoDestinatario;
      property ComplementoEnderecoDestinatario: string read FComplementoEnderecoDestinatario write FComplementoEnderecoDestinatario;
      property BairroEnderecoDestinatario: string read FBairroEnderecoDestinatario write FBairroEnderecoDestinatario;
      property CidadeEnderecoDestinatario: string read FCidadeEnderecoDestinatario write FCidadeEnderecoDestinatario;
      property TipoRegiao: string read FTipoRegiao write FTipoRegiao;
      property CEPEnderecoDestinatario: string read FCEPEnderecoDestinatario write FCEPEnderecoDestinatario;
      property UFEnderecoDestinatario: string read FUFEnderecoDestinatario write FUFEnderecoDestinatario;
      property Telefone1: string read FTelefone1 write FTelefone1;
      property Edicao: string read FEdicao write FEdicao;
      property Itens: integer read FItens write FItens;
      property Volumes: integer read FVolumes write FVolumes;
      property PesoTransportadora: double read FPesoTransportadora write FPesoTransportadora;
      property PesoReal: double read FPesoReal write FPesoReal;
      property PesoCubado: double read FPesoCubado write FPesoCubado;
      property PesoTaxado: double read FPesoTaxado write FPesoTaxado;
      property ValorPedido: double read FValorPedido write FValorPedido;
      property DescricaoProduto: string read FDescricaoProduto write FDescricaoProduto;
      property UltimoMotorista: string read FUltimoMotorista write FUltimoMotorista;
      property UltimoRomaneioRota:string read FUltimoRomaneioRota write FUltimoRomaneioRota;
      property Filler01: string read FFiller01 write FFiller01;
      property Filler02: string read FFiller02 write FFiller02;
      property Filler03: string read FFiller03 write FFiller03;
      property Filler04: string read FFiller04 write FFiller04;
      property Filler05: string read FFiller05 write FFiller05;
      property Filler06: string read FFiller06 write FFiller06;
      property Filler07: string read FFiller07 write FFiller07;
      property Filler08: string read FFiller08 write FFiller08;
      property Filler09: string read FFiller09 write FFiller09;
      property Filler10: string read FFiller10 write FFiller10;
      property Filler11: string read FFiller11 write FFiller11;
      property Filler12: string read FFiller12 write FFiller12;
      property Filler13: string read FFiller13 write FFiller13;
      property Filler14: string read FFiller14 write FFiller14;
      property Filler15: string read FFiller15 write FFiller15;
      property Filler16: string read FFiller16 write FFiller16;
      property Filler17: string read FFiller17 write FFiller17;
      property Filler18: string read FFiller18 write FFiller18;

      property Planilha: TObjectList<TPlanilhaEntradaENGLOBA> read Fplanilha write FPlanilha;
      property Mensagem: string read FMensagem write FMensagem;
      function GetPlanilha(sFile: String): boolean;
    end;


implementation

{ TPlanilhaEntradaENGLOBA }

uses Common.Utils;

function TPlanilhaEntradaENGLOBA.GetPlanilha(sFile: String): boolean;
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
    Result := False;
    FPlanilha := TObjectList<TPlanilhaEntradaENGLOBA>.Create;
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
    if Pos('NomeViagem',sLinha) = 0 then
    begin
      FMensagem := 'Arquivo informado não foi identificado como a Planilha de Entrada do SIM Express!';
      Exit;
    end;
    i := 0;
    while not Eoln(ArquivoCSV) do
    begin
      Readln(ArquivoCSV, sLinha);
      sDetalhe.DelimitedText := sLinha + ';';
      if TUtils.ENumero(sDetalhe[8]) then
      begin
        Fplanilha.Add(TPlanilhaEntradaENGLOBA.Create);
        i := FPlanilha.Count - 1;
        FPlanilha[i].Codigo := sDetalhe[0];
        FPlanilha[i].Pedido := sDetalhe[1];
        FPlanilha[i].NumeroCliente := sDetalhe[2];
        FPlanilha[i].RomaneioCliente := sDetalhe[3];
        FPlanilha[i].NF := sDetalhe[4];
        FPlanilha[i].DescricaoServico := sDetalhe[5];
        FPlanilha[i].SubDescricaoServico := sDetalhe[6];
        FPlanilha[i].DataPedido := StrToDateDef(sDetalhe[7],0);
        FPlanilha[i].DataConfirmacao := StrToDateDef(sDetalhe[8],0);
        FPlanilha[i].DataExpedicao := StrToDateDef(sDetalhe[9], 0);
        FPlanilha[i].DataRecebimentoBase := StrToDateDef(sDetalhe[10], 0);
        FPlanilha[i].DataUltimaRota := StrToDateTimeDef(sDetalhe[11], 0);
        FPlanilha[i].DataPrevista := StrToDateDef(sDetalhe[12], 0);
        FPlanilha[i].DataPrevistaSemIncucessos := StrToDateDef(sDetalhe[13], 0);
        FPlanilha[i].DataFinalizacao := StrToDateDef(sDetalhe[14], 0);
        FPlanilha[i].NoPrazo := sDetalhe[15];
        FPlanilha[i].InformacoesNoPrazo := sDetalhe[16];
        FPlanilha[i].NoPrazoBase := sDetalhe[17];
        FPlanilha[i].DataUltimaOcorrencia := StrToDateTimeDef(sDetalhe[18], 0);
        FPlanilha[i].UltimaOcorrencia := sDetalhe[19];
        FPlanilha[i].UltimoInsucesso := sDetalhe[20];
        FPlanilha[i].DataUltimoInsucesso := StrToDateTimeDef(sDetalhe[21], 0);
        FPlanilha[i].Situacao := sDetalhe[22];
        FPlanilha[i].NomeRemetente := sDetalhe[23];
        FPlanilha[i].CidadeRemetente := sDetalhe[24];
        FPlanilha[i].UFRemetente := sDetalhe[25];
        FPlanilha[i].BaseDestino := sDetalhe[26];
        FPlanilha[i].Empresa := sDetalhe[27];
        FPlanilha[i].Destinatario := sDetalhe[28];
        FPlanilha[i].EnderecoDestinatario := sDetalhe[29];
        FPlanilha[i].NumeroEnderecoDestinatario := sDetalhe[30];
        FPlanilha[i].ComplementoEnderecoDestinatario := sDetalhe[31];
        FPlanilha[i].BairroEnderecoDestinatario := sDetalhe[32];
        FPlanilha[i].CidadeEnderecoDestinatario := sDetalhe[33];
        FPlanilha[i].TipoRegiao := sDetalhe[34];
        FPlanilha[i].CEPEnderecoDestinatario := sDetalhe[35];
        FPlanilha[i].UFEnderecoDestinatario := sDetalhe[36];
        FPlanilha[i].Telefone1 := sDetalhe[37];
        FPlanilha[i].Edicao := sDetalhe[38];
        FPlanilha[i].Itens := StrToIntDef(sDetalhe[39], 1);
        FPlanilha[i].Volumes := StrToIntDef(sDetalhe[40], 1);
        FPlanilha[i].PesoTransportadora := StrToFloatDef(sDetalhe[41], 0);
        FPlanilha[i].PesoReal := StrToFloatDef(sDetalhe[42], 0);
        FPlanilha[i].PesoCubado := StrToFloatDef(sDetalhe[43], 0);
        FPlanilha[i].PesoTaxado := StrToFloatDef(sDetalhe[44], 0);
        FPlanilha[i].ValorPedido := StrToFloatDef(sDetalhe[45], 0);
        FPlanilha[i].DescricaoProduto := sDetalhe[46];
        FPlanilha[i].UltimoMotorista := sDetalhe[47];
        FPlanilha[i].UltimoRomaneioRota := sDetalhe[48];
        FPlanilha[i].Filler01:= sDetalhe[49];
        FPlanilha[i].Filler02:= sDetalhe[50];
        FPlanilha[i].Filler03:= sDetalhe[51];
        FPlanilha[i].Filler04:= sDetalhe[52];
        FPlanilha[i].Filler05:= sDetalhe[53];
        FPlanilha[i].Filler06:= sDetalhe[54];
        FPlanilha[i].Filler07:= sDetalhe[55];
        FPlanilha[i].Filler08:= sDetalhe[56];
        FPlanilha[i].Filler09:= sDetalhe[57];
        FPlanilha[i].Filler10:= sDetalhe[58];
        FPlanilha[i].Filler01:= sDetalhe[59];
        FPlanilha[i].Filler02:= sDetalhe[60];
        FPlanilha[i].Filler03:= sDetalhe[61];
        FPlanilha[i].Filler04:= sDetalhe[62];
        FPlanilha[i].Filler05:= sDetalhe[63];
        FPlanilha[i].Filler06:= sDetalhe[64];
        FPlanilha[i].Filler07:= sDetalhe[65];
        FPlanilha[i].Filler08:= sDetalhe[66];
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
