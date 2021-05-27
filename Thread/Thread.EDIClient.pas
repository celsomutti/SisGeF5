unit Thread.EDIClient;

interface

uses
  System.Classes, Control.Entregas, Control.PlanilhaEntradaTFO, System.SysUtils, System.DateUtils, Control.VerbasExpressas,
  Control.Bases, Control.EntregadoresExpressas, Generics.Collections, System.StrUtils, Control.PlanilhaEntradaDIRECT,
  Control.PlanilhaEntradaSimExpress, Control.ControleAWB;

type
  Thread_ImportEDIClient = class(TThread)
  private
    FTotalRegistros: Integer;
    FCliente: Integer;
    FTotalInconsistencias: Integer;
    FTotalGravados: Integer;
    FCancelar: Boolean;
    FLog: String;
    FProgresso: Double;
    FArquivo: String;
    FProcesso: Boolean;

    aParam: Array of variant;
    iPos : Integer;
    dVerba: Double;
    sMensagem: String;
    FEntregas: TEntregasControl;
    FVerbas: TVerbasExpressasControl;
    FBases: TBasesControl;
    FEntregadores: TEntregadoresExpressasControl;
    FControleAWB : TControleAWBControl;

    procedure UpdateLOG(sMensagem: String);
    procedure ProcessTFO;
    procedure ProcessSIM;
    procedure ProcessDIRECT;
    function RetornaVerba(aParam: array of variant): double;
  protected
    procedure Execute; override;
  public
    property Arquivo: String read FArquivo write FArquivo;
    property Processo: Boolean read FProcesso write FProcesso;
    property Log: String read FLog write FLog;
    property Progresso: Double read FProgresso write FProgresso;
    property TotalRegistros: Integer read FTotalRegistros write FTotalRegistros;
    property TotalGravados: Integer read FTotalGravados write FTotalGravados;
    property TotalInconsistencias: Integer read FTotalInconsistencias write FTotalInconsistencias;
    property Cliente: Integer read FCliente write FCliente;
    property Cancelar: Boolean read FCancelar write FCancelar;
  end;

implementation

{ 
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);  

  and UpdateCaption could look like,

    procedure Thread_ImportEDIClient.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end;

    or
    
    Synchronize(
      procedure 
      begin
        Form1.Caption := 'Updated in thread via an anonymous method' 
      end
      )
    );

  where an anonymous method is passed.

  Similarly, the developer can call the Queue method with similar parameters as
  above, instead passing another TThread class as the first parameter, putting
  the calling thread in a queue with the other thread.

}

uses Common.ENum, Global.Parametros;

{ Thread_ImportEDIClient }

procedure Thread_ImportEDIClient.Execute;
begin
  case FCliente of
    1 : ProcessTFO;
    2 : ProcessSIM;
    4 : ProcessDIRECT;
    5 : ProcessSIM;
    else
      begin
        sMensagem := '>> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' - Cliente inválido! Processamento cancelado.';
        UpdateLOG(sMensagem);
        FCancelar := True;
      end;
  end;
end;

procedure Thread_ImportEDIClient.ProcessDIRECT;
var
  FPlanilha : TPlanilhaEntradaDIRECTControl;
  iTipo, i : integer;
  sOperacao : string;
  dPeso: double;
begin
  try
    try
      FProcesso := True;
      FCancelar := False;
      FPlanilha := TPlanilhaEntradaDIRECTControl.Create;
      FEntregas := TEntregasControl.Create;
      FControleAWB := TControleAWBControl.Create;
      sMensagem := '>> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' - Preparando a importação. Aguarde...';
      UpdateLog(sMensagem);
      if not FPLanilha.GetPlanilha(FArquivo) then
      begin
        UpdateLOG(FPlanilha.Planilha.Mensagem);
        FCancelar := True;
        Exit;
      end;
      sMensagem := '>> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' - Iniciando a importação do arquivo ' + FArquivo +
                '. Aguarde...';
      UpdateLog(sMensagem);
      iPos := 0;
      FTotalRegistros := FPlanilha.Planilha.Planilha.Count;
      FTotalGravados := 0;
      FTotalInconsistencias := 0;
      FProgresso := 0;
      for i := 0 to Pred(FTotalRegistros) do
      begin
        SetLength(aParam,3);
        aParam := ['NNCLIENTE', FPlanilha.Planilha.Planilha[i].Remessa, FCliente];
        if not FEntregas.LocalizarExata(aParam) then
        begin
          FEntregas.Entregas.NN := FPlanilha.Planilha.Planilha[i].Remessa;
          FEntregas.Entregas.Distribuidor := 0;
          FEntregas.Entregas.Entregador := 0;
          FEntregas.Entregas.Cliente := FPlanilha.Planilha.Planilha[i].CodigoEmbarcador;
          FEntregas.Entregas.NF := FPlanilha.Planilha.Planilha[i].NF;
          FEntregas.Entregas.Consumidor := FPlanilha.Planilha.Planilha[i].NomeConsumidor;
          FEntregas.Entregas.Endereco := '';
          FEntregas.Entregas.Complemento := '';
          FEntregas.Entregas.Bairro := FPlanilha.Planilha.Planilha[i].Bairro;
          FEntregas.Entregas.Cidade := FPlanilha.Planilha.Planilha[i].Municipio;
          FEntregas.Entregas.Cep := FPlanilha.Planilha.Planilha[i].CEP;
          FEntregas.Entregas.Telefone := '';
          FEntregas.Entregas.Expedicao := FPlanilha.Planilha.Planilha[i].DataRegistro;
          FEntregas.Entregas.Previsao := IncDay(FPlanilha.Planilha.Planilha[i].DataChegadaLM, 1);
          FEntregas.Entregas.Volumes := FPlanilha.Planilha.Planilha[i].Volumes;
          FEntregas.Entregas.Atribuicao := StrToDate('30/12/1899');
          FEntregas.Entregas.Baixa := StrToDate('30/12/1899');
          FEntregas.Entregas.Baixado := 'N';
          FEntregas.Entregas.Pagamento := StrToDate('30/12/1899');
          FEntregas.Entregas.Pago := 'N';
          FEntregas.Entregas.Fechado := 'N';
          FEntregas.Entregas.Status := 0;
          FEntregas.Entregas.Entrega := StrToDate('30/12/1899');
          FEntregas.Entregas.TipoPeso := FPlanilha.Planilha.Planilha[i].Tipo;
          dPeso := 0;
          if FPlanilha.Planilha.Planilha[i].PesoCubado > FPlanilha.Planilha.Planilha[i].PesoNominal then
          begin
            FEntregas.Entregas.PesoReal := FPlanilha.Planilha.Planilha[i].PesoCubado;
          end
          else
          begin
            FEntregas.Entregas.PesoReal := FPlanilha.Planilha.Planilha[i].PesoNominal;
          end;
          dPeso := FEntregas.Entregas.PesoReal;
          FEntregas.Entregas.PesoFranquia := 0;
          FEntregas.Entregas.Advalorem := 0;
          FEntregas.Entregas.PagoFranquia := 0;
          FEntregas.Entregas.VerbaEntregador := 0;
          FEntregas.Entregas.Extrato := '0';
          FEntregas.Entregas.Atraso := 0;
          FEntregas.Entregas.VolumesExtra := 0;
          FEntregas.Entregas.ValorVolumes := 0;
          FEntregas.Entregas.PesoCobrado := FEntregas.Entregas.PesoReal;
          FEntregas.Entregas.Recebimento := StrToDate('30/12/1899');
          FEntregas.Entregas.Recebido := 'N';
          FEntregas.Entregas.CTRC := 0;
          FEntregas.Entregas.Manifesto := 0;
          FEntregas.Entregas.Rastreio := '';
          FEntregas.Entregas.VerbaFranquia := 0;
          FEntregas.Entregas.Lote := 0;
          FEntregas.Entregas.Retorno := FPlanilha.Planilha.Planilha[i].Chave;
          FEntregas.Entregas.Credito := StrToDate('30/12/1899');;
          FEntregas.Entregas.Creditado := 'N';
          FEntregas.Entregas.Container := '0';
          FEntregas.Entregas.ValorProduto := FPlanilha.Planilha.Planilha[i].Valor;
          FEntregas.Entregas.Altura := 0;
          FEntregas.Entregas.Largura := 0;
          FEntregas.Entregas.Comprimento := 0;
          FEntregas.Entregas.CodigoFeedback := 0;
          FEntregas.Entregas.DataFeedback := StrToDate('30/12/1899');
          FEntregas.Entregas.Conferido := 0;
          FEntregas.Entregas.Pedido := FPlanilha.Planilha.Planilha[i].Pedido;
          FEntregas.Entregas.CodCliente := FCliente;
          FEntregas.Entregas.Status := 0;
          FEntregas.Entregas.Rastreio := '';
          FEntregas.Entregas.Acao := tacIncluir;
          if not FEntregas.Gravar() then
          begin
            sMensagem := '>> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' - Erro ao gravar o NN ' + FEntregas.Entregas.NN + ' !';
            UpdateLog(sMensagem);
            Inc(FTotalInconsistencias,1);
          end;
        end;
        Finalize(aParam);
        iTipo := 0;
        sOperacao := '';
        if Pos('- TD -', FPlanilha.Planilha.Planilha[iPos].Operacao) > 0 then
        begin
          sOperacao := 'TD';
        end
        else if Pos('- TC -', FPlanilha.Planilha.Planilha[iPos].Operacao) > 0 then
        begin
          sOperacao := 'TC';
        end;
        SetLength(aParam, 3);
        aParam := ['REMESSAAWB1', FPlanilha.Planilha.Planilha[iPos].Remessa,FPlanilha.Planilha.Planilha[iPos].AWB1];
        if not FControleAWB.LocalizarExato(aParam) then
        begin
          FControleAWB.ControleAWB.Remessa := FPlanilha.Planilha.Planilha[iPos].Remessa;
          FControleAWB.ControleAWB.AWB1 := FPlanilha.Planilha.Planilha[iPos].AWB1;
          FControleAWB.ControleAWB.AWB2 := FPlanilha.Planilha.Planilha[iPos].AWB2;
          FControleAWB.ControleAWB.CEP := ReplaceStr(FPlanilha.Planilha.Planilha[iPos].CEP,'-','');
          FControleAWB.ControleAWB.Operacao := sOperacao;
          FControleAWB.ControleAWB.Tipo := iTipo;
          FControleAWB.ControleAWB.Peso := dPeso;
          FControleAWB.ControleAWB.Acao := tacIncluir;
          if not FControleAWB.Gravar() then
          begin
            sMensagem := '>> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' - Erro ao gravar o AWB ' +
                         FControleAWB.ControleAWB.AWB1 + ' !';
            UpdateLog(sMensagem);
          end;
        end;
        Finalize(aParam);
        Inc(FTotalGravados,1);
        iPos := i;
        FProgresso := (iPos / FTotalRegistros) * 100;
        if Self.Terminated then Abort;
      end;
      FProcesso := False;
    Except on E: Exception do
      begin
        sMensagem := '>> ** ERROR DIRECT**' + Chr(13) + 'Classe: ' + E.ClassName + chr(13) + 'Mensagem: ' + E.Message;
        UpdateLog(sMensagem);
        FProcesso := False;
        FCancelar := True;
      end;
    end;
  finally
    FPlanilha.Free;
    FEntregas.Free;
    FControleAWB.Free;
  end;
end;

procedure Thread_ImportEDIClient.ProcessSIM;
var
  FPlanilha : TPlanilhaEntradaSimExpressControl;
  i: integer;
begin
  try
    try
      FProcesso := True;
      FCancelar := False;
      FPlanilha := TPlanilhaEntradaSimExpressControl.Create;
      FEntregadores := TEntregadoresExpressasControl.Create;
      FEntregas := TEntregasControl.Create;
      sMensagem := '>> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' - Preparando a importação. Aguarde...';
      UpdateLog(sMensagem);
      if not FPLanilha.GetPlanilha(FArquivo) then
      begin
        UpdateLOG(FPlanilha.Planilha.Mensagem);
        FCancelar := True;
        Exit;
      end;
      sMensagem := '>> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' - Iniciando a importação do arquivo ' + FArquivo +
                '. Aguarde...';
      UpdateLog(sMensagem);
      iPos := 0;
      FTotalRegistros := FPlanilha.Planilha.Planilha.Count;
      FTotalGravados := 0;
      FTotalInconsistencias := 0;
      FProgresso := 0;
      for i := 0 to Pred(FTotalRegistros) do
      begin
        SetLength(aParam,3);
        aParam := ['NNCLIENTE', FPlanilha.Planilha.Planilha[i].IDPedido, FCliente];
        if not FEntregas.LocalizarExata(aParam) then
        begin
          FEntregas.Entregas.Acao := tacIncluir;
        end
        else
        begin
          FEntregas.Entregas.Acao := tacAlterar;
        end;
        Finalize(aParam);
        SetLength(aParam,3);
        aParam := ['CHAVECLIENTE', FPlanilha.Planilha.Planilha[i].IdMotorista, FCliente];
        if not FEntregadores.LocalizarExato(aParam) then
        begin
          sMensagem := '>> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' - Entregador não encontrado ' +
                       FPlanilha.Planilha.Planilha[i].Motorista;
          UpdateLog(sMensagem);
          Inc(FTotalInconsistencias,1);
          FEntregas.Entregas.Distribuidor := 1;
          FEntregas.Entregas.Entregador := 781;
        end
        else
        begin
          FEntregas.Entregas.Distribuidor := FEntregadores.Entregadores.Agente;
          FEntregas.Entregas.Entregador := Fentregadores.Entregadores.Entregador;
        end;
        Finalize(aParam);

        FEntregas.Entregas.Cliente := 0;
        FEntregas.Entregas.NN := FPlanilha.Planilha.Planilha[i].IDPedido;
        FEntregas.Entregas.NF := FPlanilha.Planilha.Planilha[I].NF;
        FEntregas.Entregas.Consumidor := LeftStr(FPlanilha.Planilha.Planilha[I].Destinatario,70);
        FEntregas.Entregas.Retorno := FormatFloat('00000000000', StrToIntDef(FPlanilha.Planilha.Planilha[i].NREntrega,0));
        FEntregas.Entregas.Endereco := LeftStr(FPlanilha.Planilha.Planilha[I].Endereco,70);
        FEntregas.Entregas.Complemento := '';
        FEntregas.Entregas.Bairro := LeftStr(FPlanilha.Planilha.Planilha[I].Bairro, 70);
        FEntregas.Entregas.Cidade := LeftStr(FPlanilha.Planilha.Planilha[I].Municipio,70);
        FEntregas.Entregas.Cep := FPlanilha.Planilha.Planilha[I].CEP;
        FEntregas.Entregas.Telefone := '';
        if FPlanilha.Planilha.Planilha[I].Coleta <> '00/00/0000' then
          FEntregas.Entregas.Expedicao := StrToDate(FPlanilha.Planilha.Planilha[I].Coleta);
        FEntregas.Entregas.Previsao := StrToDate(FPlanilha.Planilha.Planilha[I].Viagem);
        FEntregas.Entregas.Status := 0;
        if FPlanilha.Planilha.Planilha[i].Ocorrencia = 'REALIZADA' then
        begin
          FEntregas.Entregas.Baixa := StrToDate(FPlanilha.Planilha.Planilha[i].DataEntrega);
          FEntregas.Entregas.Entrega := StrToDate(FPlanilha.Planilha.Planilha[i].DataEntrega);
          FEntregas.Entregas.Baixado := 'S';
          if FEntregas.Entregas.Previsao < FEntregas.Entregas.Entrega then
          begin
            FEntregas.Entregas.Atraso := DaysBetween(FEntregas.Entregas.Previsao,FEntregas.Entregas.Entrega);
          end
          else
          begin
            FEntregas.Entregas.Atraso := 0;
          end;
          SetLength(aParam,7);
          aParam := [FEntregas.Entregas.Distribuidor, FEntregas.Entregas.Entregador, FEntregas.Entregas.CEP,
                     FEntregas.Entregas.PesoReal, FEntregas.Entregas.Baixa, 0, 0];
          FEntregas.Entregas.VerbaEntregador := RetornaVerba(aParam);
          Finalize(aParam);
          if FEntregas.Entregas.VerbaEntregador = 0 then
          begin
            sMensagem := '>> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + 'Verba do NN ' + FEntregas.Entregas.NN + ' do entregador ' +
                         FPlanilha.Planilha.Planilha[i].Motorista + ' não encontrada !';
            UpdateLog(sMensagem);
            if FEntregas.Entregas.Entregador <> 781 then
              Inc(FTotalInconsistencias,1);
          end;
        end
        else
        begin
          FEntregas.Entregas.Baixado := 'N';
        end;
        FEntregas.Entregas.VerbaFranquia := 0;
        FEntregas.Entregas.PesoReal := StrToFloatDef(FPlanilha.Planilha.Planilha[I].Peso,0);
        FEntregas.Entregas.PesoCobrado := StrToFloatDef(FPlanilha.Planilha.Planilha[I].Peso,0);
        FEntregas.Entregas.Volumes := StrToInt(FPlanilha.Planilha.Planilha[I].Volumes);
        FEntregas.Entregas.VolumesExtra := 0;
        FEntregas.Entregas.ValorVolumes := 0;
        FEntregas.Entregas.Container := '0';
        FEntregas.Entregas.ValorProduto := StrToFloatDef(FPlanilha.Planilha.Planilha[I].Valor,0);
        FEntregas.Entregas.Atribuicao := StrToDate(FPlanilha.Planilha.Planilha[I].Viagem);
        FEntregas.Entregas.Altura := 0;
        FEntregas.Entregas.Largura := 0;
        FEntregas.Entregas.Comprimento := 0;
        FEntregas.Entregas.Rastreio := '';
        FEntregas.Entregas.Pedido := FPlanilha.Planilha.Planilha[I].Pedido;
        FEntregas.Entregas.CodCliente := FCliente;

        if not FEntregas.Gravar() then
        begin
          sMensagem := '>> ' + FormatDateTime('yyyy-mm-dd hh:mm:ss', Now) + ' - Erro ao gravar o NN ' + FEntregas.Entregas.NN + ' !';
          UpdateLog(sMensagem);
          Inc(FTotalInconsistencias,1);
        end;
        Finalize(aParam);
        Inc(FTotalGravados,1);
        iPos := i;
        FProgresso := (iPos / FTotalRegistros) * 100;
        if Self.Terminated then Abort;
      end;
      FProcesso := False;
    Except on E: Exception do
      begin
        sMensagem := '>> ** ERROR SIM EXPRESS **' + Chr(13) + 'Classe: ' + E.ClassName + chr(13) + 'Mensagem: ' + E.Message;
        UpdateLog(sMensagem);
        FProcesso := False;
        FCancelar := True;
      end;
    end;
  finally
    FPlanilha.Free;
    FEntregas.Free;
    FEntregadores.Free;
  end;
end;

procedure Thread_ImportEDIClient.ProcessTFO;
var
  FPlanilha : TPlanilhaEntradaTFOControl;
  i: integer;
begin
  try
    try
      FProcesso := True;
      FCancelar := False;
      FPlanilha := TPlanilhaEntradaTFOControl.Create;
      FEntregas := TEntregasControl.Create;
      sMensagem := '>> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' - Preparando a importação. Aguarde...';
      UpdateLog(sMensagem);
      if not FPLanilha.GetPlanilha(FArquivo) then
      begin
        UpdateLOG(FPlanilha.Planilha.MensagemProcesso);
        FCancelar := True;
        Exit;
      end;
      sMensagem := '>> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' - Iniciando a importação do arquivo ' + FArquivo +
                '. Aguarde...';
      UpdateLog(sMensagem);
      iPos := 0;
      FTotalRegistros := FPlanilha.Planilha.Planilha.Count;
      FTotalGravados := 0;
      FTotalInconsistencias := 0;
      FProgresso := 0;
      for i := 0 to Pred(FTotalRegistros) do
      begin
        SetLength(aParam,3);
        aParam := ['NNCLIENTE', FPlanilha.Planilha.Planilha[i].NossoNumero, FCliente];
        if not FEntregas.LocalizarExata(aParam) then
        begin
          FEntregas.Entregas.NN := FPlanilha.Planilha.Planilha[i].NossoNumero;
          FEntregas.Entregas.Distribuidor := 0;
          FEntregas.Entregas.Entregador := 0;
          FEntregas.Entregas.Cliente := StrToIntDef(FPlanilha.Planilha.Planilha[i].CodigoCliente,0);
          FEntregas.Entregas.NF := FPlanilha.Planilha.Planilha[i].NumeroNF;
          FEntregas.Entregas.Consumidor := FPlanilha.Planilha.Planilha[i].NomeConsumidor;
          FEntregas.Entregas.Endereco := FPlanilha.Planilha.Planilha[i].Logradouro;
          FEntregas.Entregas.Complemento := Copy(FPlanilha.Planilha.Planilha[i].Complemento + ' - ' + FPlanilha.Planilha.Planilha[i].AosCuidados,1,70);
          FEntregas.Entregas.Bairro := FPlanilha.Planilha.Planilha[i].Bairro;
          FEntregas.Entregas.Cidade := FPlanilha.Planilha.Planilha[i].Cidade;
          FEntregas.Entregas.Cep := FPlanilha.Planilha.Planilha[i].CEP;
          FEntregas.Entregas.Telefone := Copy(FPlanilha.Planilha.Planilha[i].Telefone,1,30);
          FEntregas.Entregas.Expedicao := StrToDateDef(FPlanilha.Planilha.Planilha[i].Expedicao, StrToDate('30/12/1899'));
          FEntregas.Entregas.Previsao := StrToDateDef(FPlanilha.Planilha.Planilha[i].Previsao, StrToDate('30/12/1899'));
          FEntregas.Entregas.Volumes := StrToIntDef(FPlanilha.Planilha.Planilha[i].Volume,1);
          FEntregas.Entregas.Atribuicao := StrToDate('30/12/1899');
          FEntregas.Entregas.Baixa := StrToDate('30/12/1899');
          FEntregas.Entregas.Baixado := 'N';
          FEntregas.Entregas.Pagamento := StrToDate('30/12/1899');
          FEntregas.Entregas.Pago := 'N';
          FEntregas.Entregas.Fechado := 'N';
          FEntregas.Entregas.Status := 0;
          FEntregas.Entregas.Entrega := StrToDate('30/12/1899');
          FPlanilha.Planilha.Planilha[I].Peso := ReplaceStr(FPlanilha.Planilha.Planilha[I].Peso, ' KG', '');
          FPlanilha.Planilha.Planilha[I].Peso := ReplaceStr(FPlanilha.Planilha.Planilha[I].Peso, '.', ',');
          FEntregas.Entregas.PesoReal := StrToFloatDef(FPlanilha.Planilha.Planilha[I].Peso,0);
          FEntregas.Entregas.TipoPeso := '';
          FEntregas.Entregas.PesoFranquia := 0;
          FEntregas.Entregas.Advalorem := 0;
          FEntregas.Entregas.PagoFranquia := 0;
          FEntregas.Entregas.VerbaEntregador := 0;
          FEntregas.Entregas.Extrato := '0';
          FEntregas.Entregas.Atraso := 0;
          FEntregas.Entregas.VolumesExtra := 0;
          FEntregas.Entregas.ValorVolumes := 0;
          FEntregas.Entregas.PesoCobrado := 0;
          FEntregas.Entregas.Recebimento := StrToDate('30/12/1899');
          FEntregas.Entregas.Recebido := 'N';
          FEntregas.Entregas.CTRC := 0;
          FEntregas.Entregas.Manifesto := 0;
          FEntregas.Entregas.Rastreio := '';
          FPlanilha.Planilha.Planilha[I].ValorVerba := ReplaceStr(FPlanilha.Planilha.Planilha[I].ValorVerba, 'R$ ', '');
          FEntregas.Entregas.VerbaFranquia := StrToFloatDef(FPlanilha.Planilha.Planilha[I].ValorVerba, 0);
          FEntregas.Entregas.Lote := 0;
          FEntregas.Entregas.Retorno := '';
          FEntregas.Entregas.Credito := StrToDate('30/12/1899');;
          FEntregas.Entregas.Creditado := 'N';
          FEntregas.Entregas.Container :=FPlanilha.Planilha.Planilha[I].Container;
          FPlanilha.Planilha.Planilha[I].ValorProuto := ReplaceStr(FPlanilha.Planilha.Planilha[I].ValorProuto, 'R$ ', '');
          FPlanilha.Planilha.Planilha[I].ValorProuto := ReplaceStr(FPlanilha.Planilha.Planilha[I].ValorProuto, '.', '');
          FEntregas.Entregas.ValorProduto := StrToFloatDef(FPlanilha.Planilha.Planilha[i].ValorProuto, 0);
          FEntregas.Entregas.Altura := StrToIntDef(FPlanilha.Planilha.Planilha[I].Altura, 0);
          FEntregas.Entregas.Largura := StrToIntDef(FPlanilha.Planilha.Planilha[I].Largura, 0);;
          FEntregas.Entregas.Comprimento := StrToIntDef(FPlanilha.Planilha.Planilha[I].Comprimento, 0);;
          FEntregas.Entregas.CodigoFeedback := 0;
          FEntregas.Entregas.DataFeedback := StrToDate('30/12/1899');
          FEntregas.Entregas.Conferido := 0;
          FEntregas.Entregas.Pedido := '0';;
          FEntregas.Entregas.CodCliente := FCliente;
          FEntregas.Entregas.Acao := tacIncluir;
          if not FEntregas.Gravar() then
          begin
            sMensagem := '>> ' + FormatDateTime('yyyy-mm-dd hh:mm:ss', now) + ' - Erro ao gravar o NN ' + FEntregas.Entregas.NN + ' !';
            UpdateLog(sMensagem);
            Inc(FTotalInconsistencias,1);
          end;
        end;
        Finalize(aParam);
        Inc(FTotalGravados,1);
        iPos := i;
        FProgresso := (iPos / FTotalRegistros) * 100;
        if Self.Terminated then Abort;
      end;
      FProcesso := False;
    Except on E: Exception do
      begin
        sMensagem := '>> ** ERROR TFO **' + Chr(13) + 'Classe: ' + E.ClassName + chr(13) + 'Mensagem: ' + E.Message;
        UpdateLog(sMensagem);
        FProcesso := False;
        FCancelar := True;
      end;
    end;
  finally
    FPlanilha.Free;
    FEntregas.Free;
  end;
end;

function Thread_ImportEDIClient.RetornaVerba(aParam: array of variant): double;
var
  iTabela, iFaixa: Integer;
  dVerba, dVerbaEntregador: Double;
  FParam: array of variant;
begin
  try
    Result := 0;
    iTabela := 0;
    iFaixa := 0;
    dVerba := 0;
    dVerbaEntregador := 0;

    FBases := TBasesControl.Create;
    FVerbas := TVerbasExpressasControl.Create;

    // procura dos dados da base referentes à verba

    SetLength(FParam,2);
    FParam := ['CODIGO',aParam[0]];
    if FBases.LocalizarExato(FParam) then
    begin
      iTabela := FBases.Bases.Tabela;
      iFaixa := FBases.Bases.Grupo;
      dVerba := FBases.Bases.ValorVerba;
    end;
    Finalize(FParam);

    // se a base não possui uma verba fixa, verifica se a base possui uma vinculação a uma
    // tabela e faixa.

    if dVerba = 0 then
    begin
      if iTabela <> 0 then
      begin
        if iFaixa <> 0 then
        begin
          FVerbas.Verbas.Tipo := iTabela;
          FVerbas.Verbas.Cliente := FCliente;
          FVerbas.Verbas.Grupo := iFaixa;
          FVerbas.Verbas.Vigencia := aParam[4];
          FVerbas.Verbas.CepInicial := aParam[2];
          FVerbas.Verbas.PesoInicial := aParam[3];
          FVerbas.Verbas.Roteiro := aParam[5];
          FVerbas.Verbas.Performance := aParam[6];
          dVerba := FVerbas.RetornaVerba();
        end;
      end;
    end;

    // pesquisa a tabela de entregadores e apanha os dados referente à verba

    if dVerba = 0 then
    begin
      SetLength(FParam,2);
      FParam := ['ENTREGADOR', aParam[1]];
      if not Fentregadores.Localizar(FParam).IsEmpty then
      begin
        iTabela := FEntregadores.Entregadores.Tabela;
        iFaixa := FEntregadores.Entregadores.Grupo;
        dVerbaEntregador := FEntregadores.Entregadores.Verba;
      end;
      Finalize(FParam);

      // verifica se o entregador possui uma verba fixa, se estiver zerada, verifica com as informações
      // de tabela e faixa.

      if dVerbaEntregador = 0 then
      begin
        if iTabela <> 0 then
        begin
          if iFaixa <> 0 then
          begin
          FVerbas.Verbas.Tipo := iTabela;
          FVerbas.Verbas.Cliente := FCliente;
          FVerbas.Verbas.Grupo := iFaixa;
          FVerbas.Verbas.Vigencia := aParam[4];
          FVerbas.Verbas.CepInicial := aParam[2];
          FVerbas.Verbas.PesoInicial := aParam[3];
          FVerbas.Verbas.Roteiro := aParam[5];
          FVerbas.Verbas.Performance := aParam[6];
          dVerbaEntregador := FVerbas.RetornaVerba();
          end;
        end;
      end;
      if dVerbaEntregador > 0 then
      begin
        dVerba := dVerbaEntregador;
      end;
    end;
    Result := dVerba;
  finally
    FBases.Free;
    FVerbas.Free;
  end;
end;

procedure Thread_ImportEDIClient.UpdateLOG(sMensagem: String);
begin
  if FLog <> '' then
  begin
    FLog := FLog + #13;
  end;
  FLog := FLog + sMensagem;
end;

end.
