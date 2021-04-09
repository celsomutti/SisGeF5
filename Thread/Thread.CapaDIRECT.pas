unit Thread.CapaDIRECT;

interface

uses
  System.Classes, Control.Bases, Control.EntregadoresExpressas, Control.Entregas, Control.VerbasExpressas, Control.CapaDIRECT,
  System.SysUtils;

type
  Thread_CapaDirect = class(TThread)
  private
    FPlanilha : TCapaDirectControl;
    FArquivo: String;
    FCancelar: Boolean;
    FProcesso: Boolean;
    FLog: String;
    FTotalGravados: Integer;
    FTotalRegistros: Integer;
    FTotalInconsistencias: Integer;
    FProgresso: Double;
    FCliente: Integer;
    procedure UpdateLOG(sMensagem: String);
    function RetornaVerba(aParam: array of variant): Double;
    { Private declarations }
  protected
    procedure Execute; override;
  public
    property Arquivo: String read FArquivo write FArquivo;
    property Cancelar: Boolean read FCancelar write FCancelar;
    property Processo: Boolean read FProcesso write FProcesso;
    property Log: String read FLog write FLog;
    property Progresso: Double read FProgresso write FProgresso;
    property TotalRegistros: Integer read FTotalRegistros write FTotalRegistros;
    property TotalGravados: Integer read FTotalGravados write FTotalGravados;
    property TotalInconsistencias: Integer read FTotalInconsistencias write FTotalInconsistencias;
    property Cliente: Integer read FCliente write FCliente;
  end;

implementation

{
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);  

  and UpdateCaption could look like,

    procedure Thread_CapaDirect.UpdateCaption;
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

uses Common.ENum;

{ Thread_CapaDirect }

procedure Thread_CapaDirect.Execute;
var
  aParam: Array of variant;
  iPos, i: Integer;
  dVerba: Double;
  sMensagem: String;
  FEntregas: TEntregasControl;
  FVerbas: TVerbasExpressasControl;
  FBases: TBasesControl;
  FEntregadores: TEntregadoresExpressasControl;
begin
  { Place thread code here }
  try
    try
      FProcesso := True;
      FPlanilha := TCapaDirectControl.Create;
      if FPLanilha.GetPlanilha(FArquivo) then
      begin
        iPos := 0;
        FTotalRegistros := FPlanilha.Planilha.Planilha.Count;
        FTotalGravados := 0;
        FTotalInconsistencias := 0;
        FProgresso := 0;
        for i := 0 to Pred(FTotalRegistros) do
        begin
          dVerba := 0;
          FEntregas := TEntregasControl.Create;
          SetLength(aParam,3);
          aParam := ['NNCLIENTE', FPlanilha.Planilha.Planilha[i].Remessa,FCliente];
          if FEntregas.LocalizarExata(aParam) then
          begin
            if FPlanilha.Planilha.Planilha[i].KGM3 <> FEntregas.Entregas.PesoReal then
            begin
              sMensagem := 'Peso da baixa DIFERENTE do peso da capa;Remessa ' + FPlanilha.Planilha.Planilha[i].Remessa +
                           '; Valor da Baixa ' + FEntregas.Entregas.PesoReal.ToString + '; Valor da Capa' +
                           FPlanilha.Planilha.Planilha[i].KGM3.ToString + ';';
              UpdateLOG(sMensagem);
              Inc(FTotalInconsistencias,1);
            end;
            if FEntregas.Entregas.Baixado <> 'S' then
            begin
              sMensagem := 'Entrega ainda não foi baixada;Remessa ' + FPlanilha.Planilha.Planilha[i].Remessa + ';;;';
              UpdateLOG(sMensagem);
              Inc(FTotalInconsistencias,1);
              dVerba := 0;
            end
            else
            begin
              SetLength(aParam,7);
              aParam := [FEntregas.Entregas.Distribuidor,
                         FEntregas.Entregas.Entregador,
                         FEntregas.Entregas.CEP,
                         FPlanilha.Planilha.Planilha[i].KGM3,
                         FEntregas.Entregas.Baixa,
                         0,
                         0];
              dVerba := RetornaVerba(aParam);
              if dVerba = 0 then
              begin
                sMensagem := 'Verba não foi localizada;Remessa ' + FPlanilha.Planilha.Planilha[i].Remessa + ';Motorista ' +
                             FPlanilha.Planilha.Planilha[i].Motorista + ';;';
                UpdateLOG(sMensagem);
                Inc(FTotalInconsistencias,1);
              end
            end;
            FEntregas.Entregas.PesoCobrado := FPlanilha.Planilha.Planilha[i].KGM3;
            FEntregas.Entregas.VerbaEntregador := dVerba;
            FEntregas.Entregas.VerbaFranquia := FPlanilha.Planilha.Planilha[i].ValorPagar;
            FEntregas.Entregas.Endereco := FPlanilha.Planilha.Planilha[i].EnderecoEntrega;
            FEntregas.Entregas.Conferido := 1;
            FEntregas.Entregas.Acao := tacAlterar;
            if not Fentregas.Gravar() then
            begin
              sMensagem := 'Erro ao gravar;Remessa ' + FPlanilha.Planilha.Planilha[i].Remessa + ';Motorista ' +
                           FPlanilha.Planilha.Planilha[i].Motorista + ';;';
              UpdateLOG(sMensagem);
              Inc(FTotalInconsistencias,1);
            end
            else
            begin
              Inc(FTotalGravados,1);
            end;
          end
          else
          begin
            sMensagem := 'Remessa NÃO ENCONTRADA;Renessa ' + FPlanilha.Planilha.Planilha[i].Remessa + ';;;';
            UpdateLOG(sMensagem);
          end;
          FEntregas.Free;
          Finalize(aParam);
          iPos := i;
          FProgresso := (iPos * FTotalRegistros) * 100;
        end;
      end;
    Except on E: Exception do
      begin
        sMensagem := '** ERROR **;' + Chr(13) + 'Classe:;' + E.ClassName + chr(13) + 'Mensagem:;' + E.Message + ';';
        UpdateLOG(sMensagem);
        FCancelar := True;
      end;
    end;
  finally

  end;
end;

function Thread_CapaDirect.RetornaVerba(aParam: array of variant): Double;
var
  FBase: TBasesControl;
  FEntregador: TEntregadoresExpressasControl;
  FVerbas: TVerbasExpressasControl;
  iTabela, iFaixa: Integer;
  dVerba, dVerbaEntregador: Double;
  FParam: array of variant;
  FTipoVerba: array of string;
begin
  Result := 0;
  iTabela := 0;
  iFaixa := 0;
  dVerba := 0;
  dVerbaEntregador := 0;
  SetLength(FTipoVerba,8);
  // procura dos dados da base referentes à verba
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
        FVerbas.Verbas.Cliente := FCliente;
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
  // pesquisa a tabela de entregadores e apanha os dados referente à verba
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
  // verifica se o entregador possui uma verba fixa, se estiver zerada, verifica com as informações
  // de tabela e faixa.
  if dVerbaEntregador = 0 then
  begin
    if iTabela <> 0 then
    begin
      if iFaixa <> 0 then
      begin
      FVerbas := TVerbasExpressasControl.Create;
      FVerbas.Verbas.Tipo := iTabela;
      FVerbas.Verbas.Cliente := FCliente;
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
  Result := dVerba;
end;

procedure Thread_CapaDirect.UpdateLOG(sMensagem: String);
begin
  FLog := FLog + #13 + sMensagem;
end;

end.
