unit Thread.ImportarPedidosSIMExpress;

interface

uses
  System.Classes, Control.Entregas, Control.PlanilhaEntradaSIMExpress, System.SysUtils, System.DateUtils, Control.VerbasExpressas,
  Control.Bases, Control.EntregadoresExpressas, Generics.Collections, System.StrUtils;

type
  TThread_ImportarPedidosSIMExpress = class(TThread)
  private
    { Private declarations }
    FPlanilha: TPlanilhaEntradaSimExpressControl;
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

    procedure TThread_ImportarPedidosSIMExpress.UpdateCaption;
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

{ TThread_ImportarPedidosSIMExpress }

procedure TThread_ImportarPedidosSIMExpress.BeginProcesso;
var
  sMensagem: String;
begin
  sLog := '';
  bCancel := False;
  bProcess := True;
  sMensagem := '';
  sMensagem := '>> ' +  FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + ' > iniciando importação do arquivo ' + FFile;
  UpdateLog(sMensagem);
  sMensagem := '>> ' +  FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + ' > tratando os dados da planilha. Aguarde...';
  UpdateLog(sMensagem);
end;

procedure TThread_ImportarPedidosSIMExpress.Execute;
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
      BeginProcesso;
      FPlanilha := TPlanilhaEntradaSIMExpressControl.Create;
      FEntregas := TEntregasControl.Create;
      sMensagem := FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' importando os dados. Aguarde...';
      if FPLanilha.GetPlanilha(FFile) then
      begin
        iPos := 0;
        iPosition := 0;
        dPos := 0;
        iTotal := FPlanilha.Planilha.Planilha.Count;
        for i := 0 to Pred(iTotal) do
        begin
          SetLength(aParam,2);
          aParam := ['NN', FormatFloat('00000000000', StrToIntDef(FPlanilha.Planilha.Planilha[i].IDVolume,0))];
          if FEntregas.LocalizarExata(aParam) then
          begin
            FEntregas.Entregas.Acao := tacIncluir;
          end
          else
          begin
            FEntregas.Entregas.Acao := tacAlterar;
          end;
          FEntregadores := TEntregadoresExpressasControl.Create;
          Finalize(aParam);
          SetLength(aParam,2);
          aParam := ['FANTASIA',FPlanilha.Planilha.Planilha[i].Motorista];
          if FEntregadores.LocalizarExato(aParam) then
          begin
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
          FEntregas.Entregas.NN := FormatFloat('00000000000', StrToIntDef(FPlanilha.Planilha.Planilha[i].IDVolume,0));
          FEntregas.Entregas.NF := FPlanilha.Planilha.Planilha[I].NF;
          FEntregas.Entregas.Consumidor := FPlanilha.Planilha.Planilha[I].Destinatario;
          FEntregas.Entregas.Retorno := FormatFloat('00000000000', StrToIntDef(FPlanilha.Planilha.Planilha[i].NREntrega,0));
          FEntregas.Entregas.Endereco := FPlanilha.Planilha.Planilha[I].Endereco;
          FEntregas.Entregas.Complemento := '';
          FEntregas.Entregas.Bairro := FPlanilha.Planilha.Planilha[I].Bairro;
          FEntregas.Entregas.Cidade := FPlanilha.Planilha.Planilha[I].Municipio;
          FEntregas.Entregas.Cep := FPlanilha.Planilha.Planilha[I].CEP;
          FEntregas.Entregas.Telefone := '';
          if FPlanilha.Planilha.Planilha[I].Coleta <> '00/00/0000' then FEntregas.Entregas.Expedicao := StrToDate(FPlanilha.Planilha.Planilha[I].Coleta);
          FEntregas.Entregas.Previsao := StrToDate(FPlanilha.Planilha.Planilha[I].Viagem);
          FEntregas.Entregas.Status := 909;
          if FPlanilha.Planilha.Planilha[i].Ocorrencia = 'REALIZADA' then
          begin
            FEntregas.Entregas.Baixa := StrToDate(FPlanilha.Planilha.Planilha[i].DataEntrega);
            FEntregas.Entregas.Entrega  := StrToDate(FPlanilha.Planilha.Planilha[i].DataEntrega);
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
            if FEntregas.Entregas.VerbaEntregador = 0 then
            begin
              sMensagem := 'Verba do NN ' + FEntregas.Entregas.NN + ' do entregador ' +
                           FPlanilha.Planilha.Planilha[i].Motorista + ' não atribuida !';
              UpdateLog(sMensagem);
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
          FEntregas.Entregas.Atraso := 0;
          FEntregas.Entregas.Container := '0';
          FEntregas.Entregas.ValorProduto := StrToFloatDef(FPlanilha.Planilha.Planilha[I].Valor,0);
          FEntregas.Entregas.Atribuicao := StrToDate(FPlanilha.Planilha.Planilha[I].Viagem);
          FEntregas.Entregas.Altura := 0;
          FEntregas.Entregas.Largura := 0;
          FEntregas.Entregas.Comprimento := 0;
          FEntregas.Entregas.Rastreio := '> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' inserido por importação por ' +
                                        Global.Parametros.pUser_Name;
          FEntregas.Entregas.Pedido := FPlanilha.Planilha.Planilha[I].Pedido;
          FEntregas.Entregas.CodCliente := iCodigoCliente;

          if not FEntregas.Gravar() then
          begin
            sMensagem := 'Erro ao gravar o NN ' + FEntregas.Entregas.NN + ' !';
            UpdateLog(sMensagem);
          end;
          FEntregas.Free;
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
  end;
end;

function TThread_ImportarPedidosSIMExpress.RetornaVerba(aParam: array of variant): double;
var
  FBase: TBasesControl;
  FEntregador: TEntregadoresExpressasControl;
  FVerbas: TVerbasExpressasControl;
  iTabela, iFaixa: Integer;
  dVerba: Double;
  FParam: array of variant;
  FTipoVerba: array of string;
begin
  try
    Result := 0;
    iTabela := 0;
    iFaixa := 0;
    dVerba := 0;
    SetLength(FTipoVerba,8);
    FTipoVerba := ['NONE','FIXA','FIXACEP','FIXAPESO','SLA','CEPPESO','ROTEIROFIXA','ROTEIROPESO'];
    FBase := TBasesControl.Create;
    SetLength(FParam,2);
    FParam := ['CODIGO',aParam[0]];
    if FBase.Localizar(FParam).IsEmpty then
    begin
      iTabela := FBase.Bases.Grupo;
      iFaixa := FBase.Bases.CentroCusto;
      dVerba := FBase.Bases.ValorVerba;
    end;
    Finalize(FParam);
    FBase.Free;
    if dVerba = 0 then
    begin
      if iTabela <> 0 then
      begin
        if iFaixa <> 0 then
        begin
          SetLength(FParam,9);
          FParam := [FTipoVerba[iTabela], iTabela, iCodigoCliente, iFaixa, aParam[4], aParam[2], aParam[3], aParam[6], aParam[7]];
          FVerbas := TVerbasExpressasControl.Create;
          if not FVerbas.Localizar(aParam).IsEmpty then
          begin
            dVerba := FVerbas.Verbas.Verba
          end;
          Finalize(FParam);
          FVerbas.Free;
        end;
      end;
    end;
    if dVerba = 0 then
    begin
      FEntregador := TEntregadoresExpressasControl.Create;
      SetLength(FParam,2);
      FParam := ['ENTREGADOR', aParam[1]];
      if not Fentregador.Localizar(FParam).IsEmpty then
      begin
        iTabela := FEntregador.Entregadores.Tabela;
        iFaixa := FEntregador.Entregadores.Grupo;
        dVerba := FEntregador.Entregadores.Verba;
      end;
      Finalize(FParam);
      FEntregador.Free;
      if dVerba = 0 then
      begin
        if iTabela <> 0 then
        begin
          if iFaixa <> 0 then
          begin
            SetLength(FParam,9);
            FParam := [FTipoVerba[iTabela], iTabela, iCodigoCliente, iFaixa, aParam[4], aParam[2], aParam[3], aParam[6], aParam[7]];
            FVerbas := TVerbasExpressasControl.Create;
            if not FVerbas.Localizar(aParam).IsEmpty then
            begin
              dVerba := FVerbas.Verbas.Verba
            end;
            Finalize(FParam);
            FVerbas.Free;
          end;
        end;
      end;
    end;
    Result := dVerba;
  finally
    Finalize(FTipoVerba);
  end;
end;

procedure TThread_ImportarPedidosSIMExpress.TerminateProcess;
begin
  bProcess := False;
end;

procedure TThread_ImportarPedidosSIMExpress.UpdateLOG(sMensagem: string);
begin
if sLog <> '' then
  begin
    sLog := sLog + #13;
  end;
  sLog := sLog + sMensagem;
end;

procedure TThread_ImportarPedidosSIMExpress.UpdateProgress(dPosition: Double);
begin
  dPositionRegister := dPosition;
end;

end.
