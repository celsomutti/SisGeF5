unit Thread.ImportaAbrangencia;

interface

uses
  System.Classes, Control.Bases, System.SysUtils, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Control.PlanilhaRoteirosExpressas, Control.AbrangenciaExpressas;

type
  Thread_ImportaAbrangencia = class(TThread)
  private
    FPlanilha : TPlanilhaRoteirosExpressasControl;
    FArquivo: String;
    FProcesso: Boolean;
    FLog: String;
    FTotalRegistros: Integer;
    FProgresso: Double;
    FCancelar: Boolean;
    FCliente: integer;
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
    property Cliente: integer read FCliente write Fcliente;
    property Cancelar: Boolean read FCancelar write FCancelar;
  end;

implementation

{
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure Thread_ImportaAbrangencia.UpdateCaption;
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

{ Thread_ImportaAbrangencia }

procedure Thread_ImportaAbrangencia.Execute;
var
  aParam: Array of variant;
  iPos, i: Integer;
  sMensagem: String;
  FRoteiros : TAbrangenciaExpressasControl;
begin
  { Place thread code here }
  try
    FProcesso := True;
    FCancelar := False;
    FPlanilha := TPlanilhaRoteirosExpressasControl.Create;
    FRoteiros := TAbrangenciaExpressasControl.Create;
    if FPlanilha.GetPlanilha(FArquivo) then
    begin
      iPos := 0;
      FTotalRegistros := FPlanilha.Planilha.Planilha.Count;
      FProgresso := 0;
      for i := 0 to Pred(FTotalRegistros) do
      begin
        SetLength(aParam,3);
        aParam := ['CEPCLIENTE', FPlanilha.Planilha.Planilha[i].CEPInicial, FCliente];
        if not FRoteiros.Search(aParam) then
        begin
          FRoteiros.Abrangencia.ID := 0;
          FRoteiros.Abrangencia.CEP := FPlanilha.Planilha.Planilha[i].CEPInicial;
          FRoteiros.Abrangencia.Prazo := FPlanilha.Planilha.Planilha[i].Prazo;
          FRoteiros.Abrangencia.Zona := FPlanilha.Planilha.Planilha[i].Zona;
          FRoteiros.Abrangencia.Tipo := FPlanilha.Planilha.Planilha[i].Tipo;
          FRoteiros.Abrangencia.Logradouro := Copy(FPlanilha.Planilha.Planilha[i].Logradouro,1, 70);
          FRoteiros.Abrangencia.Bairro := Copy(FPlanilha.Planilha.Planilha[i].Bairro,1, 70);
          FRoteiros.Abrangencia.Cliente := FCliente;
          FRoteiros.Abrangencia.Acao := tacIncluir;
          if not FRoteiros.Save() then
          begin
            sMensagem := 'Erro ao gravar;' + FPlanilha.Planilha.Planilha[i].CEPInicial;
            UpdateLOG(sMensagem);
          end;
        end;
        Finalize(aParam);
        FRoteiros.Abrangencia.Query.Active := False;
        FRoteiros.Abrangencia.Query.Connection.Connected := False;
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
    FRoteiros.Free;
    FPlanilha.Free;
  Except on E: Exception do
    begin
      sMensagem := '** ERROR **' + 'Classe:' + E.ClassName + chr(13) + 'Mensagem:' + E.Message;
      UpdateLOG(sMensagem);
      FProcesso := False;
    end;
  end;
end;

procedure Thread_ImportaAbrangencia.UpdateLOG(sMensagem: String);
begin
  FLog := FLOG + #13 + sMensagem;
end;

end.
