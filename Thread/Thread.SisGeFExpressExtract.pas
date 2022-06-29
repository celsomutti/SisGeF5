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
    FExtraVolume: integer;
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
    property ExtraVolume: integer read FExtraVolume write FExtraVolume;
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
  i: integer;
begin
  FInProcess := True;
  FConnection := Tconexao.Create;
  with Data_Sisgef do
  begin
    storedProcExtractExpress.Connection := FConnection.GetConn;
    storedProcExtractExpress.storedProcName := 'sp_generate_express_extract';
    storedProcExtractExpress.SchemaName := 'bderpsisgef';
    storedProcExtractExpress.Prepare;
    storedProcExtractExpress.ParamByName('pdataInicio').AsDate := FStartDate;
    storedProcExtractExpress.ParamByName('pdataFinal').AsDate := FEndDate;
    storedProcExtractExpress.ParamByName('pvolumeExtra').AsInteger := FExtraVolume;
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
    memTableExtracts.Active := True;
    memTableExtracts.Tag := FExtraVolume;
    if not storedProcExtractExpress.IsEmpty then
      storedProcExtractExpress.First;
    while not storedProcExtractExpress.Eof do
    begin
      memTableExtracts.Insert;
      for i := 0 to Pred(storedProcExtractExpress.FieldCount) do
      begin
        memTableExtracts.FieldByName(storedProcExtractExpress.Fields[i].FieldName).Value :=
        storedProcExtractExpress.Fields[i].Value;
      end;
      memTableExtracts.Post;
      storedProcExtractExpress.Next;
    end;
//    memTableExtracts.CopyDataSet(storedProcExtractExpress);
    storedProcExtractExpress.Connection.Connected := False;
    if not memTableExtracts.IsEmpty then
      memTableExtracts.First;
    FInProcess := False;
  end;
  FInProcess := False;
end;


end.
