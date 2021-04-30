unit Thread.ImportaCEPRoteiro;

interface

uses
  System.Classes, Control.Bases, System.SysUtils, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Control.RoteirosExpressas,
  Control.PlanilhaRoteirosExpressas;

type
  Thread_ImportaCEPRoteiro = class(TThread)
  private
    FPlanilha : TPlanilhaRoteirosExpressasControl;
    FArquivo: String;
    FProcesso: Boolean;
    FLog: String;
    FTotalRegistros: Integer;
    FProgresso: Double;
    FCancelar: Boolean;
    FMemTab: TFDMemTable;
    procedure UpdateLOG(sMensagem: String);
    { Private declarations }
  protected
    procedure Execute; override;
  public
    property Arquivo: String read FArquivo write FArquivo;
    property Processo: Boolean read FProcesso write FProcesso;
    property Log: String read FLog write FLog;
    property Progresso: Double read FProgresso write FProgresso;
    property TotalRegistros: Integer read FTotalRegistros write FTotalRegistros;
    property Cancelar: Boolean read FCancelar write FCancelar;
    property MemTab: TFDMemTable read FMemTab write FMemTab;
  end;

implementation

{
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);  

  and UpdateCaption could look like,

    procedure Thread_ImportaCEPRoteiro.UpdateCaption;
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

{ Thread_ImportaCEPRoteiro }

procedure Thread_ImportaCEPRoteiro.Execute;
var
  aParam: Array of variant;
  iPos, i: Integer;
  sMensagem: String;
  FRoteiros : TRoteirosExpressasControl;
begin
  { Place thread code here }
  try
    FProcesso := True;
    FCancelar := False;
    FPlanilha := TPlanilhaRoteirosExpressasControl.Create;
    FRoteiros := TRoteirosExpressasControl.Create;
    if FPlanilha.GetPlanilha(FArquivo) then
    begin
      iPos := 0;
      FTotalRegistros := FPlanilha.Planilha.Planilha.Count;
      FProgresso := 0;
      for i := 0 to Pred(FTotalRegistros) do
      begin
        SetLength(aParam,3);
        aParam := ['CEP', FPlanilha.Planilha.Planilha[i].CEPInicial,FPlanilha.Planilha.Planilha[i].CEPFinal];
        if FRoteiros.Localizar(aParam).IsEmpty then
        begin
          FRoteiros.Roteiros.ID := 0;
          FRoteiros.Roteiros.CCEP5 := FPlanilha.Planilha.Planilha[i].CCEP5;
          FRoteiros.Roteiros.Descricao := '';
          FRoteiros.Roteiros.CEPInicial := FPlanilha.Planilha.Planilha[i].CEPInicial;
          FRoteiros.Roteiros.CEPFinal := FPlanilha.Planilha.Planilha[i].CEPFinal;
          FRoteiros.Roteiros.Prazo := FPlanilha.Planilha.Planilha[i].Prazo;
          FRoteiros.Roteiros.Zona := FPlanilha.Planilha.Planilha[i].Zona;
          FRoteiros.Roteiros.Tipo := FPlanilha.Planilha.Planilha[i].Tipo;
          FEntregas.Entregas.Conferido := 1;
          FEntregas.Entregas.Acao := tacAlterar;
          if not Fentregas.Gravar() then
          begin
            sMensagem := 'Erro ao gravar;' + FPlanilha.Planilha.Planilha[i].Remessa +
                         ';' + FEntregas.Entregas.PesoReal.ToString + ';' + FPlanilha.Planilha.Planilha[i].KGM3.ToString + ';' +
                         FEntregas.Entregas.VerbaEntregador.ToString + ';' + FEntregas.Entregas.VerbaFranquia.ToString + ';' +
                         FPlanilha.Planilha.Planilha[i].Motorista + ';' + FEntregas.Entregas.CEP;
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
          sMensagem := 'Remessa NÃO ENCONTRADA;' + FPlanilha.Planilha.Planilha[i].Remessa +
                       ';0,0;' + FPlanilha.Planilha.Planilha[i].KGM3.ToString + ';0,00;0,00;' +
                       FPlanilha.Planilha.Planilha[i].Motorista + ';' + FPlanilha.Planilha.Planilha[i].CEPEntrega;
          Inc(FTotalInconsistencias,1);
          UpdateLOG(sMensagem);
        end;
        FEntregas.Free;
        Finalize(aParam);
        iPos := i;
        FProgresso := (iPos / FTotalRegistros) * 100;
        if Self.Terminated then Abort;
      end;
      FProcesso := False;
    end
    else
    begin
      UpdateLOG(FPlanilha.Planilha.Mensagem);
    end;
  Except on E: Exception do
    begin
      sMensagem := '** ERROR **' + 'Classe:' + E.ClassName + chr(13) + 'Mensagem:' + E.Message;
      UpdateLOG(sMensagem);
      FProcesso := False;
    end;
  end;
end;

function Thread_ImportaCEPRoteiro.RetornaVerba(aParam: array of variant): Double;
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
    if UpperCase(aParam[7]) = 'LOJA' then
    begin
      dVerba := dVerbaEntregador / 2;
    end;
  end;
  Result := dVerba;
end;

procedure Thread_ImportaCEPRoteiro.UpdateLOG(sMensagem: String);
var
  sDetalhe: TStringList;
begin
  sDetalhe := TStringList.Create;
  sDetalhe.StrictDelimiter := True;
  sDetalhe.Delimiter := ';';
  sDetalhe.DelimitedText := sMensagem;
  if sDetalhe.Count = 8 then
  begin
    memTab.Insert;
    memTab.Fields[0].Value := sDetalhe[0];
    memTab.Fields[1].Value := sDetalhe[1];
    memTab.Fields[2].Value := StrToFloatDef(sDetalhe[2], 0);
    memTab.Fields[3].Value := StrToFloatDef(sDetalhe[3], 0);
    memTab.Fields[4].Value := StrToFloatDef(sDetalhe[4], 0);
    memTab.Fields[5].Value := StrToFloatDef(sDetalhe[5], 0);
    memTab.Fields[6].Value := sDetalhe[6];
    memTab.Fields[7].Value := sDetalhe[7];
    MemTab.Post;
  end
  else
  begin
    memTab.Insert;
    memTab.Fields[0].Value := sDetalhe[0];
    MemTab.Post;
  end;
end;

end.
