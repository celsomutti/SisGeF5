unit Thread.ImportarPedidosENGLOBA;

interface

uses
  System.Classes, Control.Entregas, System.SysUtils, System.DateUtils, Control.VerbasExpressas,
  Control.Bases, Control.EntregadoresExpressas, Generics.Collections, System.StrUtils, Control.PlanilhaEntradaENGLOBA;

type
  TThread_ImportarPedidosENGLOBA = class(TThread)
  private
    { Private declarations }
    FPlanilha: TPlanilhaEntradaENGLOBAControl;
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
    function RetornaVerba(aParam: array of variant): double;
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

    procedure TThread_ImportarPedidosENGLOBA.UpdateCaption;
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

{ TThread_ImportarPedidosENGLOBA }

procedure TThread_ImportarPedidosENGLOBA.BeginProcesso;
var
  sMensagem: String;
begin
  sLog := '';
  bCancel := False;
  Global.Parametros.pbProcess := True;
  sMensagem := '';
  sMensagem := '>> ' +  FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + ' > iniciando importa��o do arquivo ' + FFile;
  UpdateLog(sMensagem);
  sMensagem := '>> ' +  FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + ' > tratando os dados da planilha. Aguarde...';
  UpdateLog(sMensagem);
end;

procedure TThread_ImportarPedidosENGLOBA.Execute;
var
  FEntregadores : TEntregadoresExpressasControl;
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
      FPlanilha := TPlanilhaEntradaENGLOBAControl.Create;
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
          aParam := ['NNCLIENTE', FPlanilha.Planilha.Planilha[i].Codigo, iCodigoCliente];
          if not FEntregas.LocalizarExata(aParam) then
          begin
            FEntregas.Entregas.Acao := tacIncluir;
          end
          else
          begin
            FEntregas.Entregas.Acao := tacAlterar;
          end;
          FEntregadores := TEntregadoresExpressasControl.Create;
          Finalize(aParam);
          SetLength(aParam,3);
          aParam := ['CHAVECLIENTE',FPlanilha.Planilha.Planilha[i].UltimoMotorista, iCodigoCliente];
          if not FEntregadores.LocalizarExato(aParam) then
          begin
            sMensagem := FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' entregador n�o encontrado ' + FPlanilha.Planilha.Planilha[i].UltimoMotorista;
            UpdateLog(sMensagem);
            FEntregas.Entregas.Distribuidor := 1;
            FEntregas.Entregas.Entregador := 781;
          end
          else
          begin
            FEntregas.Entregas.Distribuidor := FEntregadores.Entregadores.Agente;
            FEntregas.Entregas.Entregador := Fentregadores.Entregadores.Entregador;
          end;
          Finalize(aParam);
          FEntregadores.Free;
          FEntregas.Entregas.Cliente := 0;
          FEntregas.Entregas.NN := FPlanilha.Planilha.Planilha[i].Codigo;
          FEntregas.Entregas.NF := FPlanilha.Planilha.Planilha[I].NF;
          FEntregas.Entregas.Consumidor := LeftStr(FPlanilha.Planilha.Planilha[I].Destinatario,70);
          FEntregas.Entregas.Retorno := FPlanilha.Planilha.Planilha[I].NumeroCliente;
          FEntregas.Entregas.Endereco := LeftStr(FPlanilha.Planilha.Planilha[I].EnderecoDestinatario,60) + ', ' +
           LeftStr(FPlanilha.Planilha.Planilha[I].NumeroEnderecoDestinatario,8);
          FEntregas.Entregas.Complemento := LeftStr(FPlanilha.Planilha.Planilha[I].ComplementoEnderecoDestinatario,50);
          FEntregas.Entregas.Bairro := LeftStr(FPlanilha.Planilha.Planilha[I].BairroEnderecoDestinatario, 70);
          FEntregas.Entregas.Cidade := LeftStr(FPlanilha.Planilha.Planilha[I].CidadeRemetente,70);
          FEntregas.Entregas.Cep := Trim(FPlanilha.Planilha.Planilha[I].CEPEnderecoDestinatario);
          FEntregas.Entregas.Telefone := LeftStr(FPlanilha.Planilha.Planilha[I].Telefone1,20);
          FEntregas.Entregas.Expedicao := FPlanilha.Planilha.Planilha[I].DataExpedicao;
          FEntregas.Entregas.Previsao := FPlanilha.Planilha.Planilha[I].DataPrevista;
          FEntregas.Entregas.Status := 909;
          FEntregas.Entregas.VerbaFranquia := 0;
          FEntregas.Entregas.PesoReal := FPlanilha.Planilha.Planilha[I].PesoReal;
          FEntregas.Entregas.PesoCobrado := FPlanilha.Planilha.Planilha[I].PesoTaxado;
          FEntregas.Entregas.Volumes := FPlanilha.Planilha.Planilha[I].Volumes;
          FEntregas.Entregas.VolumesExtra := 0;
          FEntregas.Entregas.ValorVolumes := 0;
          FEntregas.Entregas.Atraso := 0;
          FEntregas.Entregas.Container := '0';
          FEntregas.Entregas.ValorProduto := FPlanilha.Planilha.Planilha[I].ValorPedido;
          FEntregas.Entregas.Atribuicao := FPlanilha.Planilha.Planilha[I].DataUltimaRota;
          FEntregas.Entregas.Altura := 0;
          FEntregas.Entregas.Largura := 0;
          FEntregas.Entregas.Comprimento := 0;
          FEntregas.Entregas.Rastreio := '> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' inserido por importa��o por ' +
                                        Global.Parametros.pUser_Name;
          FEntregas.Entregas.Pedido := FPlanilha.Planilha.Planilha[I].Pedido;
          FEntregas.Entregas.CodCliente := iCodigoCliente;

          if POS(FPlanilha.Planilha.Planilha[i].UltimaOcorrencia, 'Entregue') > 0 then
          begin
            FEntregas.Entregas.Baixa := FPlanilha.Planilha.Planilha[i].DataUltimaOcorrencia;
            FEntregas.Entregas.Entrega  := FPlanilha.Planilha.Planilha[i].DataUltimaOcorrencia;
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
              sMensagem := 'Verba do NN ' + FEntregas.Entregas.NN + ' do entregador ' +
                           FPlanilha.Planilha.Planilha[i].UltimoMotorista + ' n�o atribuida !';
              UpdateLog(sMensagem);
            end;
          end
          else
          begin
            FEntregas.Entregas.Baixado := 'N';
          end;
          if not FEntregas.Gravar() then
          begin
            sMensagem := 'Erro ao gravar o NN ' + FEntregas.Entregas.NN + ' !';
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
      end
      else
      begin
        sMensagem := FPlanilha.Planilha.Mensagem;
        bCancel := True;
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

function TThread_ImportarPedidosENGLOBA.RetornaVerba(aParam: array of variant): double;
var
  FBase: TBasesControl;
  FEntregador: TEntregadoresExpressasControl;
  FVerbas: TVerbasExpressasControl;
  iTabela, iFaixa: Integer;
  dVerba, dVerbaEntregador: Double;
  FParam: array of variant;
  FTipoVerba: array of string;
begin
  try
    Result := 0;
    iTabela := 0;
    iFaixa := 0;
    dVerba := 0;
    dVerbaEntregador := 0;
    SetLength(FTipoVerba,8);
    //cria um array com as formas de pesquisa da classe
    FTipoVerba := ['NONE','FIXA','FIXACEP','FIXAPESO','SLA','CEPPESO','ROTEIROFIXA','ROTEIROPESO'];
    // procura dos dados da base referentes � verba
    FBase := TBasesControl.Create;
    SetLength(FParam,2);
    FParam := ['CODIGO',aParam[0]];
    if FBase.LocalizarExato(FParam) then
    begin
      iTabela := FBase.Bases.Tabela;
      iFaixa := FBase.Bases.Grupo;
      dVerba := FBase.Bases.ValorVerba;
    end;
    Finalize(FParam);
    FBase.Free;
    // se a base n�o possui uma verba fixa, verifica se a base possui uma vincula��o a uma
    // tabela e faixa.
    if dVerba = 0 then
    begin
      if iTabela <> 0 then
      begin
        if iFaixa <> 0 then
        begin
          FVerbas := TVerbasExpressasControl.Create;
          FVerbas.Verbas.Tipo := iTabela;
          FVerbas.Verbas.Cliente := iCodigoCliente;
          FVerbas.Verbas.Grupo := iFaixa;
          FVerbas.Verbas.Vigencia := aParam[4];
          FVerbas.Verbas.CepInicial := aParam[2];
          FVerbas.Verbas.PesoInicial := aParam[3];
          FVerbas.Verbas.Roteiro := aParam[5];
          FVerbas.Verbas.Performance := aParam[6];
          dVerba := FVerbas.RetornaVerba();
          FVerbas.Free;
        end;
      end;
    end;
    // pesquisa a tabela de entregadores e apanha os dados referente � verba
    if dVerba = 0 then
    begin
      FEntregador := TEntregadoresExpressasControl.Create;
      SetLength(FParam,2);
      FParam := ['ENTREGADOR', aParam[1]];
      if not Fentregador.Localizar(FParam).IsEmpty then
      begin
        iTabela := FEntregador.Entregadores.Tabela;
        iFaixa := FEntregador.Entregadores.Grupo;
        dVerbaEntregador := FEntregador.Entregadores.Verba;
      end;
      Finalize(FParam);
      FEntregador.Free;
      // verifica se o entregador possui uma verba fixa, se estiver zerada, verifica com as informa��es
      // de tabela e faixa.
      if dVerbaEntregador = 0 then
      begin
        if iTabela <> 0 then
        begin
          if iFaixa <> 0 then
          begin
          FVerbas := TVerbasExpressasControl.Create;
          FVerbas.Verbas.Tipo := iTabela;
          FVerbas.Verbas.Cliente := iCodigoCliente;
          FVerbas.Verbas.Grupo := iFaixa;
          FVerbas.Verbas.Vigencia := aParam[4];
          FVerbas.Verbas.CepInicial := aParam[2];
          FVerbas.Verbas.PesoInicial := aParam[3];
          FVerbas.Verbas.Roteiro := aParam[5];
          FVerbas.Verbas.Performance := aParam[6];
          dVerbaEntregador := FVerbas.RetornaVerba();
          FVerbas.Free;
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
    Finalize(FTipoVerba);
  end;
end;

procedure TThread_ImportarPedidosENGLOBA.TerminateProcess;
begin
  Global.Parametros.pbProcess := False;
end;

procedure TThread_ImportarPedidosENGLOBA.UpdateLOG(sMensagem: string);
begin
if Global.Parametros.psLog <> '' then
  begin
    Global.Parametros.psLog := Global.Parametros.psLog + #13;
  end;
  Global.Parametros.psLog := Global.Parametros.psLog + sMensagem;
end;

procedure TThread_ImportarPedidosENGLOBA.UpdateProgress(dPosition: Double);
begin
  Global.Parametros.pdPos := dPosition;
end;

end.
