unit Thread.ImportarPedidosTFO;

interface

uses
  System.Classes, Control.Entregas, Control.PlanilhaEntradaTFO, System.SysUtils, System.DateUtils, Control.VerbasExpressas,
  Control.Bases, Control.EntregadoresExpressas, Generics.Collections, System.StrUtils;

type
  TThread_ImportarPedidosTFO = class(TThread)
  private
    { Private declarations }
    FPlanilha: TPlanilhaEntradaTFOControl;
    FEntregas: TEntregasControl;
    FVerbas: TVerbasExpressasControl;
    FBases: TBasesControl;
    FEntregadores: TEntregadoresExpressasControl;
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

    procedure TThread_ImportarPedidosTFO.UpdateCaption;
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

{ TThread_ImportarPedidosTFO }

procedure TThread_ImportarPedidosTFO.BeginProcesso;
var
  sMensagem: String;
begin
  sLog := '';
  bCancel := False;
  Global.Parametros.pbProcess := True;
  sMensagem := '';
  sMensagem := '>> ' +  FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + ' > iniciando importação do arquivo ' + FFile;
  UpdateLog(sMensagem);
  sMensagem := '>> ' +  FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + ' > tratando os dados da planilha. Aguarde...';
  UpdateLog(sMensagem);
end;

procedure TThread_ImportarPedidosTFO.Execute;
var
  aParam: Array of variant;
  iPos, iPosition, iTotal, iTabela, iFaixa, iAgente, iEntregador,i: Integer;
  sCEP, sMensagem: String;
  dPos, dPerformance, dVerba, dVerbaTabela: double;
  slParam: TStringList;
  bProcess: Boolean;
begin
  try
    try
      Synchronize(BeginProcesso);
      FPlanilha := TPlanilhaEntradaTFOControl.Create;
      FEntregas := TEntregasControl.Create;
      sMensagem := FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' importando os dados. Aguarde...';
      UpdateLog(sMensagem);
      if FPLanilha.GetPlanilha(FFile) then
      begin
        iPos := 0;
        iPosition := 0;
        dPos := 0;
        iTotal := FPlanilha.Planilha.Planilha.Count;
        for i := 0 to Pred(iTotal) do
        begin
          SetLength(aParam,3);
          aParam := ['NNCLIENTE', FPlanilha.Planilha.Planilha[i].NossoNumero, icodigoCliente];
          if not FEntregas.LocalizarExata(aParam) then
          begin
            FEntregas.Entregas.NN := FPlanilha.Planilha.Planilha[i].NossoNumero;
            FEntregas.Entregas.Distribuidor := 0;
            FEntregas.Entregas.Entregador := 0;
            FEntregas.Entregas.Cliente := StrToIntDef(FPlanilha.Planilha.Planilha[i].CodigoCliente,0);
            FEntregas.Entregas.NF := FPlanilha.Planilha.Planilha[i].NumeroNF;
            FEntregas.Entregas.Consumidor := FPlanilha.Planilha.Planilha[i].NomeConsumidor;
            FEntregas.Entregas.Endereco := FPlanilha.Planilha.Planilha[i].Logradouro;
            FEntregas.Entregas.Complemento := Copy(FPlanilha.Planilha.Planilha[i].Complemento + ' - ' +
                                                   FPlanilha.Planilha.Planilha[i].AosCuidados,1,70);
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
            FEntregas.Entregas.Status := StrToIntDef(FPlanilha.Planilha.Planilha[I].Status,0);
            FEntregas.Entregas.Entrega := StrToDate('30/12/1899');
            FPlanilha.Planilha.Planilha[I].Peso := ReplaceStr(FPlanilha.Planilha.Planilha[I].Peso, ' KG', '');
            FPlanilha.Planilha.Planilha[I].Peso := ReplaceStr(FPlanilha.Planilha.Planilha[I].Peso, '.', ',');
            FEntregas.Entregas.PesoReal := StrToFloatDef(FPlanilha.Planilha.Planilha[I].Peso,0);
            FEntregas.Entregas.TipoPeso := 'Entrega';
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
            FEntregas.Entregas.CodCliente := iCodigoCliente;
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
          if not FEntregas.Gravar() then
          begin
            sMensagem := 'Erro ao gravar o NN ' + Fentregas.Entregas.NN + ' !';
            UpdateLog(sMensagem);
          end;
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

procedure TThread_ImportarPedidosTFO.TerminateProcess;
begin
  Global.Parametros.pbProcess := False;
end;

procedure TThread_ImportarPedidosTFO.UpdateLOG(sMensagem: string);
begin
if Global.Parametros.psLog <> '' then
  begin
    Global.Parametros.psLog := Global.Parametros.psLog + #13;
  end;
  Global.Parametros.psLog := Global.Parametros.psLog + sMensagem;
end;

procedure TThread_ImportarPedidosTFO.UpdateProgress(dPosition: Double);
begin
  Global.Parametros.pdPos := dPosition;
end;

end.
