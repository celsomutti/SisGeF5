unit Thread.ImportarBaixasTFO;

interface

uses
  System.Classes, Control.Entregas, System.SysUtils, System.DateUtils, Control.VerbasExpressas,
  Control.Bases, Control.EntregadoresExpressas, Generics.Collections, System.StrUtils, Model.VerbasExpressas,
  Control.PlanilhaBaixasTFO;

type
  TThread_ImportarBaixasTFO = class(TThread)
  private
    { Private declarations }
    FPlanilha: TPlanilhaBaixasTFOControl;
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
    function RetornaAgente(iEntregador: integer): integer;
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

    procedure TThread_ImportarBaixasTFO.UpdateCaption;
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

{ TThread_ImportarBaixasTFO }

procedure TThread_ImportarBaixasTFO.BeginProcesso;
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

procedure TThread_ImportarBaixasTFO.Execute;
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
      FPlanilha := TPlanilhaBaixasTFOControl.Create;
      sMensagem := FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' importando os dados. Aguarde...';
      if FPLanilha.GetPlanilha(FFile) then
      begin
        iPos := 0;
        iPosition := 0;
        dPos := 0;
        iTotal := FPlanilha.Planilha.Planilha.Count;
        for i := 0 to Pred(iTotal) do
        begin
          FEntregas := TEntregasControl.Create;
          SetLength(aParam,2);
          aParam := ['NN', FPlanilha.Planilha.Planilha[i].NNRemessa];
          if not FEntregas.Localizar(aParam).IsEmpty then
          begin
            FEntregas.Entregas.Distribuidor := RetornaAgente(FPlanilha.Planilha.Planilha[i].CodigoEntregador);
            FEntregas.Entregas.Entregador := FPlanilha.Planilha.Planilha[i].CodigoEntregador;
            FEntregas.Entregas.Baixa := FPlanilha.Planilha.Planilha[i].DataDigitacao;
            FEntregas.Entregas.Baixado := 'S';
            FEntregas.Entregas.Status := 909;
            FEntregas.Entregas.Entrega := FPlanilha.Planilha.Planilha[i].DataEntrega;
            if FPlanilha.Planilha.Planilha[i].DataEntrega < FPlanilha.Planilha.Planilha[i].DataDigitacao then
            begin
              FEntregas.Entregas.Atraso := DaysBetween(FPlanilha.Planilha.Planilha[iPos].DataDigitacao, FPlanilha.Planilha.Planilha[iPos].DataEntrega);
            end;
            FEntregas.Entregas.PesoReal := FPlanilha.Planilha.Planilha[I].PesoCobrado;
            FEntregas.Entregas.PesoCobrado := FPlanilha.Planilha.Planilha[I].PesoCobrado;
            SetLength(aParam,7);
            aParam := [FEntregas.Entregas.Distribuidor, FEntregas.Entregas.Entregador, FEntregas.Entregas.CEP,
                       FEntregas.Entregas.PesoReal, FEntregas.Entregas.Baixa, 0, 0];
            FEntregas.Entregas.VerbaEntregador := RetornaVerba(aParam);
            if FEntregas.Entregas.VerbaEntregador = 0 then
            begin
              sMensagem := 'Verba do NN ' + FEntregas.Entregas.NN + ' do entregador ' +
                           FPlanilha.Planilha.Planilha[i].NomeEntregador + ' não atribuida !';
              UpdateLog(sMensagem);
            end;
            FEntregas.Entregas.CodigoFeedback := 0;
            FEntregas.Entregas.Acao := tacAlterar;
          end
          else
          begin
            sMensagem := 'Entrega NN ' + FEntregas.Entregas.NN + ' do entregador ' +
                         FPlanilha.Planilha.Planilha[i].NomeEntregador + ' não encontrada no banco de dados !';
            UpdateLog(sMensagem);
          end;
          Finalize(aParam);
          if not FEntregas.Gravar() then
          begin
            sMensagem := 'Erro ao gravar o NN ' + Fentregas.Entregas.NN + ' !';
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

function TThread_ImportarBaixasTFO.RetornaAgente(iEntregador: integer): integer;
var
  FEntregadores: TEntregadoresExpressasControl;
  aParam: array of variant;
  iRetorno: integer;
begin
  try
    Result := 0;
    iRetorno := 0;
    FEntregadores := TEntregadoresExpressasControl.Create;
    SetLength(aParam, 2);
    aParam := ['ENTREGADOR', iEntregador];
    if FEntregadores.Localizar(aParam).IsEmpty then
    begin
      iRetorno := FEntregadores.Entregadores.Agente;
    end
    else
    begin
      iRetorno := 1;
    end;
    Result := iRetorno;
  finally
    Fentregadores.Free;
  end;
end;

function TThread_ImportarBaixasTFO.RetornaVerba(aParam: array of variant): double;
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

procedure TThread_ImportarBaixasTFO.TerminateProcess;
begin
  bProcess := False;
end;

procedure TThread_ImportarBaixasTFO.UpdateLOG(sMensagem: string);
begin
if sLog <> '' then
  begin
    sLog := sLog + #13;
  end;
  sLog := sLog + sMensagem;
end;

procedure TThread_ImportarBaixasTFO.UpdateProgress(dPosition: Double);
begin
  dPositionRegister := dPosition;
end;

end.
