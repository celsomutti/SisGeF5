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
    FDomLancamento: string;
    { Private declarations }
    procedure ExecuteExpressExtractDeliveryDate;
    procedure ExecuteExpressPostingValuesStatement;
  protected
    procedure Execute; override;
  public
    property Filtro : String read FFiltro write FFiltro;
    property Tipo: integer read FTipo write FTipo;
    property InProcess: boolean read FInProcess;
    property StartDate: TDate read FStartDate write FStartDate;
    property EndDate: TDate read FEndDate write FEndDate;
    property ExtraVolume: integer read FExtraVolume write FExtraVolume;
    property DomLancamento: string read FDomLancamento write FDomLancamento;
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
    storedProcExtractExpress.Active := False;
    storedProcExtractExpress.Filtered := False;
    storedProcExtractExpress.Filter := '';
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
    end;
    storedProcExtractExpress.Active := True;
    memTableExtracts.Active := True;
    memTableExtracts.Tag := FExtraVolume;
    memTableExtracts.CopyDataSet(storedProcExtractExpress);
    storedProcExtractExpress.Connection.Connected := False;
    ExecuteExpressPostingValuesStatement;
    if not memTableExtracts.IsEmpty then
      memTableExtracts.First;
    FInProcess := False;
  end;
  FInProcess := False;
end;


procedure TTHead_ExpressExtract.ExecuteExpressPostingValuesStatement;
var
  FConnection : TConexao;
  FQuery : TFDQuery;
  i: integer;
  dNewValue: double;
begin
  FConnection := Tconexao.Create;
  with Data_Sisgef do
  begin
    storedProcPostingValuesStatement.Active := False;
    storedProcPostingValuesStatement.Filtered := False;
    storedProcPostingValuesStatement.Filter := '';
    storedProcPostingValuesStatement.Connection := FConnection.GetConn;
    storedProcPostingValuesStatement.storedProcName := 'sp_posting_values_statement';
    storedProcPostingValuesStatement.SchemaName := 'bderpsisgef';
    storedProcPostingValuesStatement.Prepare;
    storedProcPostingValuesStatement.ParamByName('pdateBase').AsDate := FEndDate;
    storedProcPostingValuesStatement.ParamByName('pclosedRelease').AsString := FDomLancamento;
    if FFiltro <> '' then
    begin
      storedProcPostingValuesStatement.Filter := FFiltro;
      storedProcPostingValuesStatement.Filtered := True;
    end;
    storedProcPostingValuesStatement.Active := True;
    if not storedProcPostingValuesStatement.IsEmpty then
      storedProcPostingValuesStatement.First;
    while not storedProcPostingValuesStatement.Eof do
    begin
      dNewValue := 0;
      if memTableExtracts.Locate('cod_entregador', storedProcPostingValuesStatementcod_entregador.asinteger, [])  then
      begin
        if storedProcPostingValuesStatementdes_tipo.AsString = 'CREDITO' then
        begin
          dNewValue := memTableExtractsval_creditos.AsFloat + storedProcPostingValuesStatementval_total.AsFloat;
          memTableExtracts.Edit;
          memTableExtractsval_creditos.AsFloat := dNewValue;
          memTableExtracts.Post;
        end
        else
        begin
          dNewValue := memTableExtractsval_debitos.AsFloat + (0 - storedProcPostingValuesStatementval_total.AsFloat);
          memTableExtracts.Edit;
          memTableExtractsval_debitos.AsFloat := dNewValue;
          memTableExtracts.Post;
        end;
      end
      else
      begin
        memTableExtracts.insert;
        memTableExtractscod_base.AsInteger := storedProcPostingValuesStatementcod_base.AsInteger;
        memTableExtractsnom_base.AsString := storedProcPostingValuesStatementnom_base.AsString;
        memTableExtractscod_entregador.AsInteger := storedProcPostingValuesStatementcod_entregador.AsInteger;
        memTableExtractsnom_entregador.AsString := storedProcPostingValuesStatementnom_entregador.AsString;
        memTableExtractscod_cliente.AsInteger := storedProcPostingValuesStatementcod_cliente.AsInteger;
        memTableExtractsnom_cliente.AsString := storedProcPostingValuesStatementnom_cliente.AsString;
        memTableExtractscod_base.AsInteger := storedProcPostingValuesStatementcod_base.AsInteger;
        if storedProcPostingValuesStatementdes_tipo.AsString = 'CREDITO' then
        begin
          dNewValue := memTableExtractsval_creditos.AsFloat + storedProcPostingValuesStatementval_total.AsFloat;
          memTableExtractsval_creditos.AsFloat := dNewValue;
        end
        else
        begin
          dNewValue := memTableExtractsval_debitos.AsFloat + (0 - storedProcPostingValuesStatementval_total.AsFloat);
          memTableExtractsval_debitos.AsFloat := dNewValue;
        end;
        memTableExtracts.Post
      end;
      storedProcPostingValuesStatement.Next;
    end;
    storedProcPostingValuesStatement.Connection.Connected := False;
    if not memTableExtracts.IsEmpty then
      memTableExtracts.First;
    FInProcess := False;
  end;
end;

end.
