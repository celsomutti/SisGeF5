unit Thread.SisGeFExpressExtract;

interface

uses
  System.Classes, DAO.Conexao, FireDAC.Comp.Client, System.SysUtils;

type
  TTHead_ExpressExtract = class(TThread)
  private
    FConnection : TConexao;
    FFiltro: String;
    FTipo: integer;
    FInProcess: boolean;
    FEndDate: TDate;
    FStartDate: TDate;
    FExtraVolume: boolean;
    { Private declarations }
    procedure ExecuteExpressExtractDeliveryDate;
  protected
    procedure Execute; override;
  public
    property Filtro : String read FFiltro write FFiltro;
    property Tipo: integer read FTipo write FTipo;
    property InProcess: boolean read FInProcess;
    property StartDate: TDate read FStartDate write FStartDate;
    property EndDate: TDate read FEndDate write FEndDate;
    property ExtraVolume: boolean read FExtraVolume write FExtraVolume;
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
  FQuery : TFDQuery;
begin
  FInProcess := True;
  FConnection := Tconexao.Create;
  with Data_Sisgef do
  begin
    storedProcExtractExpress.Connection := FConnection.GetConn;
    storedProcExtractExpress.storedProcName := 'sp_generate_express_extract';
    storedProcExtractExpress.SchemaName := 'bderpsisgef';
    storedProcExtractExpress.Prepare;
    storedProcExtractExpress.Params[0].AsDate := FStartDate;
    storedProcExtractExpress.Params[1].AsDate := FEndDate;
    storedProcExtractExpress.Params[2].AsBoolean := FExtraVolume;
    if FFiltro <> '' then
    begin
      storedProcExtractExpress.Filter := FFiltro;
      storedProcExtractExpress.Filtered := True;
    end
    else
    begin
      storedProcExtractExpress.Filtered := False;
      storedProcExtractExpress.Filter := '';
    end;
    storedProcExtractExpress.Active := True;
    mtbExtratosExpressas.Active := True;
    mtbExtratosExpressas.CopyDataSet(storedProcExtractExpress);
    storedProcExtractExpress.Connection.Connected := False;
    FInProcess := False;
  end;
  FInProcess := False;
end;


end.
