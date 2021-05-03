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
          FRoteiros.Roteiros.Acao := tacIncluir;
          if not FRoteiros.Gravar() then
          begin
            sMensagem := 'Erro ao gravar;' + FPlanilha.Planilha.Planilha[i].CEPInicial;
            UpdateLOG(sMensagem);
          end;
        end;
        FRoteiros.Free;
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

procedure Thread_ImportaCEPRoteiro.UpdateLOG(sMensagem: String);
begin
  FLog := FLOG + #13 + sMensagem;
end;

end.
