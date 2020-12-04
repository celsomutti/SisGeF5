unit Thread.ImportarBaixasDIRECT;

interface

uses
  System.Classes, Control.Entregas, System.SysUtils, System.DateUtils, Control.VerbasExpressas,
  Control.Bases, Control.EntregadoresExpressas, Generics.Collections, System.StrUtils, Model.VerbasExpressas,
  Control.PlanilhaBaixasDIRECT;

type
  TThread_ImportarBaixasDIRECT = class(TThread)
  private
    { Private declarations }
    FPlanilha: TPlanilhaBaixasDIRECTControl;
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
    function RetornaAgente(sChave: string): integer;
    function RetornaEntregador(sChave: string): integer;
  public
    FFile: String;
    iCodigoCliente: Integer;
    bCancel : Boolean;
    bProcess: Boolean;
    dPositionRegister: double;
    sLog: String;
    sAlerta: String;
    bLojas: boolean;
  end;

implementation

{
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure TThread_ImportarBaixasDIRECT.UpdateCaption;
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

{ TThread_ImportarBaixasDIRECT }

procedure TThread_ImportarBaixasDIRECT.BeginProcesso;
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

procedure TThread_ImportarBaixasDIRECT.Execute;
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
      FPlanilha := TPlanilhaBaixasDIRECTControl.Create;
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
          aParam := ['NN', FPlanilha.Planilha.Planilha[i].Remessa];
          if not FEntregas.LocalizarExata(aParam) then
          begin
            if UpperCase(FPlanilha.Planilha.Planilha[iPos].Tipo) = 'REVERSA' then
            begin
              FEntregas.Entregas.NN := FPlanilha.Planilha.Planilha[i].Remessa;
              FEntregas.Entregas.Distribuidor := RetornaAgente(FPlanilha.Planilha.Planilha[i].Documento);
              FEntregas.Entregas.Entregador := RetornaEntregador(FPlanilha.Planilha.Planilha[i].Documento);
              FEntregas.Entregas.NF := FPlanilha.Planilha.Planilha[i].NF;
              FEntregas.Entregas.Consumidor := 'REVERSA';
              FEntregas.Entregas.Cidade := FPlanilha.Planilha.Planilha[i].Municipio;
              FEntregas.Entregas.Cep :=FPlanilha.Planilha.Planilha[i].CEP;
              FEntregas.Entregas.Expedicao := FPlanilha.Planilha.Planilha[i].DataAtualizacao;
              FEntregas.Entregas.Previsao := FPlanilha.Planilha.Planilha[i].DataAtualizacao;
              FEntregas.Entregas.Volumes := 1;
              FEntregas.Entregas.Atribuicao := FPlanilha.Planilha.Planilha[i].DataAtualizacao;
              FEntregas.Entregas.Baixa := FPlanilha.Planilha.Planilha[i].DataAtualizacao;
              FEntregas.Entregas.Baixado := 'S';
              FEntregas.Entregas.Status := 909;
              FEntregas.Entregas.Entrega := FPlanilha.Planilha.Planilha[i].DataAtualizacao;
              if FPlanilha.Planilha.Planilha[i].PesoNominal > FPlanilha.Planilha.Planilha[i].PesoCubado then
              begin
                FEntregas.Entregas.PesoReal := FPlanilha.Planilha.Planilha[i].PesoNominal;
                FEntregas.Entregas.PesoCobrado := FPlanilha.Planilha.Planilha[i].PesoNominal;
                FEntregas.Entregas.TipoPeso := 'NORMAL';
              end
              else
              begin
                FEntregas.Entregas.PesoReal := FPlanilha.Planilha.Planilha[i].PesoCubado;
                FEntregas.Entregas.PesoCobrado := FPlanilha.Planilha.Planilha[i].PesoCubado;
                FEntregas.Entregas.TipoPeso := 'CUBADO';
              end;
              FEntregas.Entregas.PesoFranquia := 0;
              FEntregas.Entregas.Advalorem := 0;
              FEntregas.Entregas.PagoFranquia := 0;
              FEntregas.Entregas.VerbaEntregador := 0;
              FEntregas.Entregas.Extrato := '0';
              FEntregas.Entregas.Atraso := 0;
              FEntregas.Entregas.VolumesExtra := 0;
              FEntregas.Entregas.ValorVolumes := 0;
              FEntregas.Entregas.Recebimento := StrToDate('30/12/1899');
              FEntregas.Entregas.Recebido := 'S';
              FEntregas.Entregas.Pedido := FPlanilha.Planilha.Planilha[i].Pedido;
              FEntregas.Entregas.CodCliente := iCodigoCliente;
              Finalize(aParam);
              SetLength(aParam,7);
              aParam := [FEntregas.Entregas.Distribuidor, FEntregas.Entregas.Entregador, FEntregas.Entregas.CEP,
                         FEntregas.Entregas.PesoReal, FEntregas.Entregas.Baixa, 0, 0];
              FEntregas.Entregas.VerbaEntregador := RetornaVerba(aParam);
              FEntregas.Entregas.Acao := tacIncluir;
              Finalize(aParam);
              if FEntregas.Entregas.VerbaEntregador = 0 then
              begin
                sMensagem := 'Verba do NN ' + FEntregas.Entregas.NN + ' do entregador ' +
                             FPlanilha.Planilha.Planilha[i].Motorista + ' não atribuida !';
                UpdateLog(sMensagem);
              end;
              if not FEntregas.Gravar() then
              begin
                sMensagem := 'Erro ao gravar o NN ' + Fentregas.Entregas.NN + ' !';
                UpdateLog(sMensagem);
              end;
            end
            else
            begin
              sMensagem := 'Entrega NN ' + FPlanilha.Planilha.Planilha[i].Remessa + ' do entregador ' +
                           FPlanilha.Planilha.Planilha[i].Motorista + ' não encontrada no banco de dados !';
              UpdateLog(sMensagem);
            end;
          end
          else
          begin
            FEntregas.Entregas.Distribuidor := RetornaAgente(FPlanilha.Planilha.Planilha[i].Documento);
            FEntregas.Entregas.Entregador := RetornaEntregador(FPlanilha.Planilha.Planilha[i].Documento);
            FEntregas.Entregas.Baixa := FPlanilha.Planilha.Planilha[i].DataAtualizacao;
            FEntregas.Entregas.Baixado := 'S';
            FEntregas.Entregas.Status := 909;
            FEntregas.Entregas.Entrega := FPlanilha.Planilha.Planilha[i].DataAtualizacao;
            FEntregas.Entregas.Atraso := 0;
            FEntregas.Entregas.PesoReal := FPlanilha.Planilha.Planilha[I].PesoNominal;
            FEntregas.Entregas.PesoCobrado := FPlanilha.Planilha.Planilha[I].PesoNominal;
            Finalize(aParam);
            SetLength(aParam,7);
            aParam := [FEntregas.Entregas.Distribuidor, FEntregas.Entregas.Entregador, FEntregas.Entregas.CEP,
                       FEntregas.Entregas.PesoReal, FEntregas.Entregas.Baixa, 0, 0];
            FEntregas.Entregas.CodigoFeedback := 0;
            FEntregas.Entregas.VerbaEntregador := RetornaVerba(aParam);
            Finalize(aParam);
            if FEntregas.Entregas.VerbaEntregador = 0 then
            begin
              sMensagem := 'Verba do NN ' + FEntregas.Entregas.NN + ' do entregador ' +
                           FPlanilha.Planilha.Planilha[i].Motorista + ' não atribuida !';
              UpdateLog(sMensagem);
            end
            else
            begin
              if bLojas then
              begin
                if FPlanilha.Planilha.Planilha[i].Loja = 'S' then
                begin
                  dVerba := FEntregas.Entregas.VerbaEntregador;
                  FEntregas.Entregas.VerbaEntregador := (dVerba / 2);
                  FEntregas.Entregas.CodigoFeedback := 99318;
                end;
              end;
            end;
            FEntregas.Entregas.Acao := tacAlterar;
              if not FEntregas.Gravar() then
              begin
                sMensagem := 'Erro ao gravar o NN ' + Fentregas.Entregas.NN + ' !';
                UpdateLog(sMensagem);
              end;
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

function TThread_ImportarBaixasDIRECT.RetornaAgente(sChave: string): integer;
var
  FEntregadores: TEntregadoresExpressasControl;
  aParam: array of variant;
  iRetorno: integer;
begin
  try
    Result := 0;
    iRetorno := 0;
    FEntregadores := TEntregadoresExpressasControl.Create;
    SetLength(aParam, 3);
    aParam := ['CHAVECLIENTE', sChave, iCodigoCliente];
    if FEntregadores.LocalizarExato(aParam) then
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

function TThread_ImportarBaixasDIRECT.RetornaEntregador(sChave: string): integer;
var
  FEntregadores: TEntregadoresExpressasControl;
  aParam: array of variant;
  iRetorno: integer;
begin
  try
    Result := 0;
    iRetorno := 0;
    FEntregadores := TEntregadoresExpressasControl.Create;
    SetLength(aParam, 3);
    aParam := ['CHAVECLIENTE', sChave, iCodigoCliente];
    if Fentregadores.LocalizarExato(aParam) then
    begin
      iRetorno := FEntregadores.Entregadores.Entregador;
    end
    else
    begin
      iRetorno := 1;
    end;
    Finalize(aParam);
    Result := iRetorno;
  finally
    Fentregadores.Free;
  end;
end;

function TThread_ImportarBaixasDIRECT.RetornaVerba(aParam: array of variant): double;
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
    //cria um array com as formas de pesquisa da classe
    FTipoVerba := ['NONE','FIXA','FIXACEP','FIXAPESO','SLA','CEPPESO','ROTEIROFIXA','ROTEIROPESO'];
    // procura dos dados da base referentes à verba
    FBase := TBasesControl.Create;
    SetLength(FParam,2);
    FParam := ['CODIGO',aParam[0]];
    if FBase.LocalizarExato(FParam) then
    begin
      iTabela := FBase.Bases.CentroCusto;
      iFaixa := FBase.Bases.Grupo;
      dVerba := FBase.Bases.ValorVerba;
    end;
    Finalize(FParam);
    FBase.Free;
    // se a base não possui uma verba fixa, verifica se a base possui uma vinculação a uma
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
    // se a verba ainda estiver zerada, indica que a verba deve estar cadastrada para o entregador
    // pesquisa a tabela de entregadores e apanha os dados referente à verba
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
      // verifica se o entregador possui uma verba fixa, se estiver zerada, verifica com as informações
      // de tabela e faixa.
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
    end;
    Result := dVerba;
  finally
    Finalize(FTipoVerba);
  end;
end;

procedure TThread_ImportarBaixasDIRECT.TerminateProcess;
begin
  bProcess := False;
end;

procedure TThread_ImportarBaixasDIRECT.UpdateLOG(sMensagem: string);
begin
if sLog <> '' then
  begin
    sLog := sLog + #13;
  end;
  sLog := sLog + sMensagem;
end;

procedure TThread_ImportarBaixasDIRECT.UpdateProgress(dPosition: Double);
begin
  dPositionRegister := dPosition;
end;

end.
