unit Thread.SisGeFClosingExpressExtract;

interface

uses
  System.Classes, DAO.Conexao, FireDAC.Comp.Client;

type
  TThread_SisGeFClosingExpressExtract = class(TThread)
  private
    FEndDate: TDate;
    FAbortProcess: boolean;
    FStartDate: TDate;
    FMensagem: string;
    FCreditDate: TDate;
    FTipo: integer;
    FInProcess: boolean;
    FExtract: string;
    FDeliverymam: integer;
    FUniqueExtract: string;
    FPosfix: string;
    { Private declarations }
    procedure ExecuteClosingExpressDeliverires;
    procedure ExecuteClosingExpressFinancialPostings;
    procedure ExecuteCloseDeliveryLosses;
  protected
    procedure Execute; override;
  public
    property Tipo: integer read FTipo write FTipo;
    property InProcess: boolean read FInProcess;
    property Extract: string read FExtract write FExtract;
    property Deliverymam: integer read FDeliverymam write FDeliverymam;
    property StartDate: TDate read FStartDate write FStartDate;
    property EndDate: TDate read FEndDate write FEndDate;
    property CreditDate: TDate read FCreditDate write FCreditDate;
    property UniqueExtract: string read FUniqueExtract write FUniqueExtract;
    property Mensagem: string read FMensagem write FMensagem;
    property AbortProcess: boolean read FAbortProcess write FAbortProcess;
    property Posfix: string read FPosfix write FPosfix;
  end;

implementation

{ 
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);  

  and UpdateCaption could look like,

    procedure TThread_SisGeFClosingExpressExtract.UpdateCaption;
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

uses Data.SisGeF, Common.Utils;

{ TThread_SisGeFClosingExpressExtract }

procedure TThread_SisGeFClosingExpressExtract.ExecuteCloseDeliveryLosses;
var
  FConnection : TConexao;
  FQuery : TFDQuery;
begin
  FInProcess := True;
  FAbortProcess := False;
  FConnection := Tconexao.Create;
  with Data_Sisgef do
  begin
    storedProcClosingExpress.Active := False;
    storedProcClosingExpress.Filtered := False;
    storedProcClosingExpress.Filter := '';
    storedProcClosingExpress.Connection := FConnection.GetConn;
    storedProcClosingExpress.storedProcName := 'sp_close_delivery_losses';
    storedProcClosingExpress.SchemaName := 'bderpsisgef';
    storedProcClosingExpress.Prepare;
    storedProcClosingExpress.ParamByName('pExtract').AsString := FExtract;
    storedProcClosingExpress.ParamByName('pDeliveryman').AsInteger := FDeliverymam;
    storedProcClosingExpress.ExecProc;
    storedProcClosingExpress.Connection.Connected := False;
  end;
  FInProcess := False;
end;

procedure TThread_SisGeFClosingExpressExtract.Execute;
var
  FUtils : Common.Utils.TUtils;
begin
  FUtils := Common.Utils.TUtils.Create;
  FUniqueExtract := FUtils.ExpressStatementNumber(FStartDate,FEndDate,0) + FPosfix;
  with Data_Sisgef do
  begin
    if not memTableExtracts.IsEmpty then memTableExtracts.First;
    while not memTableExtracts.Eof do
    begin
      FExtract := FUtils.ExpressStatementNumber(FStartDate,FEndDate,memTableExtractscod_entregador.AsInteger);
      FDeliverymam := memTableExtractscod_entregador.AsInteger;
      ExecuteClosingExpressDeliverires;
      ExecuteClosingExpressFinancialPostings;
      ExecuteCloseDeliveryLosses;
      memTableExtracts.Next;
    end;
    memTableExtracts.Active := False;
  end;
end;

procedure TThread_SisGeFClosingExpressExtract.ExecuteClosingExpressDeliverires;
var
  FConnection : TConexao;
  FQuery : TFDQuery;
  i: integer;
begin
  FInProcess := True;
  FAbortProcess := False;
  FConnection := Tconexao.Create;
  with Data_Sisgef do
  begin
    storedProcClosingExpress.Active := False;
    storedProcClosingExpress.Filtered := False;
    storedProcClosingExpress.Filter := '';
    storedProcClosingExpress.Connection := FConnection.GetConn;
    storedProcClosingExpress.storedProcName := 'sp_closing_express_deliveries';
    storedProcClosingExpress.SchemaName := 'bderpsisgef';
    storedProcClosingExpress.Prepare;
    storedProcClosingExpress.ParamByName('pExtract').AsString := FExtract;
    storedProcClosingExpress.ParamByName('pCreditDate').AsDate := FCreditDate;
    storedProcClosingExpress.ParamByName('pDeliveryman').AsInteger := FDeliverymam;
    storedProcClosingExpress.ParamByName('pInitialDate').AsDate := StartDate;
    storedProcClosingExpress.ParamByName('pFinalDate').AsDate := EndDate;
    storedProcClosingExpress.ExecProc;
    storedProcClosingExpress.Connection.Connected := False;;
  end;
  FInProcess := False;
end;

procedure TThread_SisGeFClosingExpressExtract.ExecuteClosingExpressFinancialPostings;
var
  FConnection : TConexao;
  FQuery : TFDQuery;
begin
  FInProcess := True;
  FAbortProcess := False;
  FConnection := Tconexao.Create;
  with Data_Sisgef do
  begin
    storedProcClosingExpress.Active := False;
    storedProcClosingExpress.Filtered := False;
    storedProcClosingExpress.Filter := '';
    storedProcClosingExpress.Connection := FConnection.GetConn;
    storedProcClosingExpress.storedProcName := 'sp_closing_express_financial_postings';
    storedProcClosingExpress.SchemaName := 'bderpsisgef';
    storedProcClosingExpress.Prepare;
    storedProcClosingExpress.ParamByName('pExtract').AsString := FExtract;
    storedProcClosingExpress.ParamByName('pCreditDate').AsDate := FCreditDate;
    storedProcClosingExpress.ParamByName('pDeliveryman').AsInteger := FDeliverymam;
    storedProcClosingExpress.ParamByName('pFinalDate').AsDate := EndDate;
    storedProcClosingExpress.ExecProc;
    storedProcClosingExpress.Connection.Connected := False;;
    FInProcess := False;
  end;
  FInProcess := False;
end;

end.
