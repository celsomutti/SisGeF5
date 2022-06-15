unit Thread.SisGeFExpressExtract;

interface

uses
  System.Classes, DAO.Conexao;

type
  TTHead_ExpressExtract = class(TThread)
  private
    FConnection : TConexao;
    FFiltro: String;
    FTipo: integer;
    FInProcess: boolean;
    { Private declarations }
    procedure ExecuteExpressExtractDeliveryDate;
  protected
    procedure Execute; override;
  public
    property Filtro : String read FFiltro write FFiltro;
    property Tipo: integer read FTipo write FTipo;
    property InProcess: boolean read FInProcess;
  end;

implementation

{
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure TTHead_ExpressExtract.UpdateCaption;
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

uses Data.SisGeF;

{ TTHead_ExpressExtract }

procedure TTHead_ExpressExtract.Execute;
begin
  { Place thread code here }
  ExecuteExpressExtractDeliveryDate;
end;

procedure TTHead_ExpressExtract.ExecuteExpressExtractDeliveryDate;
var
  FConnection : TConexao;
begin
  FInProcess := True;
  FConnection := Tconexao.Create;
  with Data_Sisgef do
  begin
    storedProc.StoredProcName := 'sp_generate_express_extract';
    storedProc.SchemaName := 'bderpsisgef';
    storedProc.Connection := FConnection.GetConn;
    if FFiltro <> '' then
    begin
      storedProc.Filter := FFiltro;
      storedProc.Filtered := True;
    end
    else
    begin
      storedProc.Filtered := False;
      storedProc.Filter := '';
    end;
    storedProc.Active := True;
    FInProcess := False;
  end;
end;

end.
