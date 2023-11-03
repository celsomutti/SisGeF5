unit Thread.ImportarPedidosDIRECT;

interface

uses
  System.Classes, Control.Entregas, System.SysUtils, System.DateUtils, Control.VerbasExpressas,
  Control.Bases, Control.EntregadoresExpressas, Generics.Collections, System.StrUtils, Control.ControleAWB,
  Control.PlanilhaEntradaDIRECT, FireDAC.Comp.Client;

type
  TThread_ImportarPedidosDIRECT = class(TThread)
  private
    { Private declarations }
    FPlanilha: TPlanilhaEntradaDIRECTControl;
    FEntregas: TEntregasControl;
    FVerbas: TVerbasExpressasControl;
    FBases: TBasesControl;
    FEntregadores: TEntregadoresExpressasControl;
    FControleAWB: TControleAWBControl;
  protected
    procedure Execute; override;
    procedure UpdateLOG(sMensagem: string);
    procedure UpdateProgress(dPosition: Double);
    procedure BeginProcesso;
    procedure TerminateProcess;
  public
    FFile: String;
    iCodigoCliente: Integer;
    bCancel : Boolean;
    bProcess: Boolean;
    dPositionRegister: double;
    sLog: String;
    sAlerta: String;
  end;

implementation

{
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure TThread_ImportarPedidosDIRECT.UpdateCaption;
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

{ TThread_ImportarPedidosDIRECT }

procedure TThread_ImportarPedidosDIRECT.BeginProcesso;
var
  sMensagem: String;
begin
  sLog := '';
  bCancel := False;
  Global.Parametros.pbProcess := True;
  sMensagem := '';
  sMensagem := '>> ' +  FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + ' > tratando os dados da planilha. Aguarde...';
  UpdateLog(sMensagem);
end;

procedure TThread_ImportarPedidosDIRECT.Execute;
var
  aParam: Array of variant;
  iPos, iPosition, iTotal, i, iTipo: Integer;
  sCEP, sMensagem, sOperacao: String;
  dPos, dPerformance, dPeso: double;
  slParam: TStringList;
  bProcess: Boolean;
begin
  try
    try
      BeginProcesso;
      FPlanilha := TPlanilhaEntradaDIRECTControl.Create;
      FEntregas := TEntregasControl.Create;
      if FPLanilha.GetPlanilha(FFile) then
      begin
        sMensagem := '>> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' importando os dados. Aguarde...';
        UpdateLOG(sMensagem);
        iPos := 0;
        iPosition := 0;
        dPos := 0;
        iTotal := FPlanilha.Planilha.Planilha.Count;
        for i := 0 to Pred(iTotal) do
        begin
          SetLength(aParam,3);
          aParam := ['NNCLIENTE', FPlanilha.Planilha.Planilha[i].Remessa, iCodigoCliente];
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
            FEntregas.Entregas.CodCliente := iCodigoCliente;
            FEntregas.Entregas.Status := 909;
            FEntregas.Entregas.Rastreio := '> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' importado por ' +
                                          Global.Parametros.pUser_Name;

            FEntregas.Entregas.Acao := tacIncluir;
          end
          else
          begin
            FEntregas.Entregas.Status := 909;
            FEntregas.Entregas.Rastreio := FEntregas.Entregas.Rastreio + #13 +
                                          '> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' atualizado por importação por ' +
                                          Global.Parametros.pUser_Name;
            FEntregas.Entregas.Acao := tacAlterar;
          end;
          Finalize(aParam);
          if not FEntregas.Gravar() then
          begin
            sMensagem := 'Erro ao gravar o NN ' + Fentregas.Entregas.NN + ' !';
            UpdateLog(sMensagem);
          end;
          iTipo := 0;
          sOperacao := '';
          FControleAWB := TControleAWBControl.Create;
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
          end;
          Finalize(aParam);
          FControleAWB.Free;
          inc(iPos, 1);
          dPos := (iPos / iTotal) * 100;
          if not(Self.Terminated) then
          begin
            UpdateProgress(dPos);
          end
          else
          begin
            Abort;
          end;
        end;
        Synchronize(TerminateProcess);
      end;
    Except on E: Exception do
      begin
        sMensagem := '** ERROR **' + Chr(13) + 'Classe: ' + E.ClassName + chr(13) + 'Mensagem: ' + E.Message;
        UpdateLog(sMensagem);
        bCancel := True;
      end;
    end;
  finally
    FPlanilha.Free;
    FEntregas.Free;
  end;
end;

procedure TThread_ImportarPedidosDIRECT.TerminateProcess;
begin
  Global.Parametros.pbProcess := False;
end;

procedure TThread_ImportarPedidosDIRECT.UpdateLOG(sMensagem: string);
begin
if Global.Parametros.psLog <> '' then
  begin
    Global.Parametros.psLog := Global.Parametros.psLog + #13;
  end;
  Global.Parametros.psLog := Global.Parametros.psLog + sMensagem;
end;

procedure TThread_ImportarPedidosDIRECT.UpdateProgress(dPosition: Double);
begin
  Global.Parametros.pdPos := dPosition;
end;

end.
