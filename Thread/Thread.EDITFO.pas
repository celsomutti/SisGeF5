unit Thread.EDITFO;

interface

uses
  System.Classes;

type
  Thread_ImportEDITFO = class(TThread)
  private
    FTotalRegistros: Integer;
    FCliente: Integer;
    FTotalInconsistencias: Integer;
    FCancelar: Boolean;
    FLog: String;
    FProgresso: Double;
    FArquivo: String;
    FProcesso: Boolean;
    procedure UpdateLOG(sMensagem: String);
  protected
    procedure Execute; override;
  public
    property Arquivo: String read FArquivo write FArquivo;
    property Processo: Boolean read FProcesso write FProcesso;
    property Log: String read FLog write FLog;
    property Progresso: Double read FProgresso write FProgresso;
    property TotalRegistros: Integer read FTotalRegistros write FTotalRegistros;
    property TotalInconsistencias: Integer read FTotalInconsistencias write FTotalInconsistencias;
    property Cliente: Integer read FCliente write FCliente;
    property Cancelar: Boolean read FCancelar write FCancelar;
  end;

implementation

{ 
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);  

  and UpdateCaption could look like,

    procedure Thread_ImportEDITFO.UpdateCaption;
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

{ Thread_ImportEDITFO }

procedure Thread_ImportEDITFO.Execute;
begin
  { Place thread code here }
end;

procedure Thread_ImportEDITFO.UpdateLOG(sMensagem: String);
begin
  if FLog <> '' then
  begin
    FLog := FLog + #13;
  end;
  FLog := FLog + sMensagem;
end;

end.
