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
    FQuinzena: integer;
    FMes: integer;
    FAno: integer;
    FLancamentos: string;
    FExtravios: string;
    FConnection : Tconexao;
    { Private declarations }
    procedure ExecuteSaveExtractExpress;
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
    property Ano: integer read FAno write FAno;
    property Mes: integer read FMes write FMes;
    property Quinzena: integer read FQuinzena write FQuinzena;
    property Extravios: string read FExtravios write FExtravios;
    property Lancamentos: string read FLancamentos write FLancamentos;
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

uses Data.SisGeF, Common.Utils, Global.Parametros;

{ TThread_SisGeFClosingExpressExtract }

procedure TThread_SisGeFClosingExpressExtract.ExecuteCloseDeliveryLosses;
var
  FUtils : Common.Utils.TUtils;
begin
  FConnection := Tconexao.Create;
  with Data_Sisgef do
  begin
    FUtils := Common.Utils.TUtils.Create;
    memTableExtracts.First;
    while not memTableExtracts.Eof do
    begin
      storedProcClosingExpress.Active := False;
      storedProcClosingExpress.Filtered := False;
      storedProcClosingExpress.Filter := '';
      storedProcClosingExpress.Connection := FConnection.GetConn;
      if FTipo = 0 then
      begin
        FExtract := FUtils.ExpressStatementNumber(StartDate, EndDate,memTableExtractscod_entregador.AsInteger,'');
        storedProcClosingExpress.storedProcName := 'sp_close_delivery_losses'
      end
      else if FTipo = 1 then
      begin
        FExtract := memTableExtractsnum_extrato.AsString;
        storedProcClosingExpress.storedProcName := 'sp_reopen_delivery_losses';
      end;
      FDeliverymam := memTableExtractscod_entregador.AsInteger;
      storedProcClosingExpress.SchemaName := Global.Parametros.pDatabase;
      storedProcClosingExpress.Prepare;
      storedProcClosingExpress.ParamByName('pExtract').AsString := FExtract;
      storedProcClosingExpress.ParamByName('pDeliveryman').AsInteger := FDeliverymam;
      storedProcClosingExpress.ParamByName('pType').AsInteger := FTipo;
      storedProcClosingExpress.ExecProc;
      memTableExtracts.Next;
    end;
    storedProcClosingExpress.Connection.Connected := False;
    FUtils.Free;
  end;
end;

procedure TThread_SisGeFClosingExpressExtract.Execute;
begin
  FConnection := Tconexao.Create;
  FAbortProcess := False;
  ExecuteSaveExtractExpress;
  FConnection.Free;
end;

procedure TThread_SisGeFClosingExpressExtract.ExecuteClosingExpressDeliverires;
var
  i: integer;
  FUtils : Common.Utils.TUtils;
begin
  with Data_Sisgef do
  begin
    FUtils := Common.Utils.TUtils.Create;
    memTableExtracts.First;
    while not memTableExtracts.Eof do
    begin
      storedProcClosingExpress.Active := False;
      storedProcClosingExpress.Filtered := False;
      storedProcClosingExpress.Filter := '';
      storedProcClosingExpress.Connection := FConnection.GetConn;
      if FTipo = 0 then
      begin
        FExtract := FUtils.ExpressStatementNumber(FStartDate, FEndDate, memTableExtractscod_entregador.AsInteger, '');
        storedProcClosingExpress.storedProcName := 'sp_closing_express_deliveries'
      end
      else if FTipo = 1 then
      begin
        FExtract := memTableExtractsnum_extrato.AsString;
        storedProcClosingExpress.storedProcName := 'sp_reopen_express_deliveries';
      end;
      storedProcClosingExpress.SchemaName := Global.Parametros.pDatabase;
      storedProcClosingExpress.Prepare;
      storedProcClosingExpress.ParamByName('pExtract').AsString := FExtract;
      storedProcClosingExpress.ParamByName('pCreditDate').AsDate := FCreditDate;
      storedProcClosingExpress.ParamByName('pDeliveryman').AsInteger := memTableExtractscod_entregador.AsInteger;
      storedProcClosingExpress.ParamByName('pInitialDate').AsDate := StartDate;
      storedProcClosingExpress.ParamByName('pFinalDate').AsDate := EndDate;
      storedProcClosingExpress.ParamByName('pType').AsInteger := FTipo;
      storedProcClosingExpress.ExecProc;
      memTableExtracts.Next;
    end;
    FUtils.Free;
  end;
end;

procedure TThread_SisGeFClosingExpressExtract.ExecuteClosingExpressFinancialPostings;
var
  FUtils : Common.Utils.TUtils;
begin
  with Data_Sisgef do
  begin
    FUtils := Common.Utils.TUtils.Create;
    memTableExtracts.First;
    while not memTableExtracts.Eof do
    begin
      storedProcClosingExpress.Active := False;
      storedProcClosingExpress.Filtered := False;
      storedProcClosingExpress.Filter := '';
      if FTipo = 0 then
      begin
        FExtract := FUtils.ExpressStatementNumber(FStartDate, FEndDate, memTableExtractscod_entregador.AsInteger, '');
        storedProcClosingExpress.storedProcName := 'sp_closing_express_financial_postings'
      end
      else if FTipo = 1 then
      begin
        FExtract := memTableExtractsnum_extrato.AsString;
        storedProcClosingExpress.storedProcName := 'sp_reopen_express_financial_postings';
      end;
      FDeliverymam := memTableExtractscod_entregador.AsInteger;
      storedProcClosingExpress.SchemaName := Global.Parametros.pDatabase;
      storedProcClosingExpress.Prepare;
      storedProcClosingExpress.ParamByName('pExtract').AsString := FExtract;
      storedProcClosingExpress.ParamByName('pCreditDate').AsDate := FCreditDate;
      storedProcClosingExpress.ParamByName('pDeliveryman').AsInteger := FDeliverymam;
      storedProcClosingExpress.ParamByName('pFinalDate').AsDate := EndDate;
      storedProcClosingExpress.ParamByName('pType').AsInteger := FTipo;
      storedProcClosingExpress.ExecProc;
      memTableExtracts.Next;
    end;
    FUtils.Free;
  end;
end;

procedure TThread_SisGeFClosingExpressExtract.ExecuteSaveExtractExpress;
var
  sParamName : string;
  i : integer;
  FUtils : Common.Utils.TUtils;
begin
  FUtils := Common.Utils.TUtils.Create;
  FInProcess := True;
  FAbortProcess := False;
  with Data_Sisgef do
  begin
    if not memTableExtracts.IsEmpty then memTableExtracts.First;
    storedProcClosingExpress.Active := False;
    storedProcClosingExpress.Filtered := False;
    storedProcClosingExpress.Filter := '';
    storedProcClosingExpress.Connection := FConnection.GetConn;
    if FTipo = 0 then
    begin
      while not memTableExtracts.Eof do
      begin
        storedProcClosingExpress.storedProcName := 'sp_insert_extract_express';
        storedProcClosingExpress.SchemaName := Global.Parametros.pDatabase;
        storedProcClosingExpress.Prepare;
        for i := 0 to Pred(memTableExtracts.FieldCount) do
        begin
          if Pos(memTableExtracts.Fields[i].FieldName, 'nom_cliente, nom_base, nom_entregador,dat_baixa,id_extrato') = 0 then
          begin
            sParamName := 'p' + memTableExtracts.Fields[i].FieldName;
            if memTableExtracts.Fields[i].FieldName = 'num_ano' then
              storedProcClosingExpress.ParamByName(sParamName).Value := FAno
            else if memTableExtracts.Fields[i].FieldName = 'num_mes' then
              storedProcClosingExpress.ParamByName(sParamName).Value := FMes
            else if memTableExtracts.Fields[i].FieldName = 'num_quinzena' then
              storedProcClosingExpress.ParamByName(sParamName).Value := FQuinzena
            else if memTableExtracts.Fields[i].FieldName = 'dat_inicio' then
              storedProcClosingExpress.ParamByName(sParamName).Value := FStartDate
            else if memTableExtracts.Fields[i].FieldName = 'dat_final' then
              storedProcClosingExpress.ParamByName(sParamName).Value := FEndDate
            else if memTableExtracts.Fields[i].FieldName = 'dat_credito' then
              storedProcClosingExpress.ParamByName(sParamName).Value := FCreditDate
            else if memTableExtracts.Fields[i].FieldName = 'num_extrato' then
            begin
              FExtract := FUtils.ExpressStatementNumber(FStartDate, FEndDate, memTableExtractscod_entregador.AsInteger, '');
              storedProcClosingExpress.ParamByName(sParamName).Value := FExtract;
            end
            else if memTableExtracts.Fields[i].FieldName = 'des_unique_key' then
            begin
              FUniqueExtract := FUtils.ExpressStatementNumber(FStartDate, FEndDate, 0, FPosfix);
              storedProcClosingExpress.ParamByName(sParamName).Value := FUniqueExtract;
            end
            else
              storedProcClosingExpress.ParamByName(sParamName).Value := memTableExtracts.Fields[i].Value;
          end;
        end;
        storedProcClosingExpress.ExecProc;
        memTableExtracts.Next;
      end;
    end
    else if FTipo = 1 then
    begin
      memTableExtracts.First;
      while not memTableExtracts.Eof do
      begin
        storedProcClosingExpress.storedProcName := 'sp_clear_extract_express';
        storedProcClosingExpress.SchemaName := Global.Parametros.pDatabase;
        storedProcClosingExpress.Prepare;
        storedProcClosingExpress.ParamByName('pKey').Value := memTableExtractsnum_extrato.AsString;
        storedProcClosingExpress.ExecProc;
        memTableExtracts.Next;
      end;
    end;
    ExecuteClosingExpressDeliverires;
    if FLancamentos <> 'X' then
      ExecuteClosingExpressFinancialPostings;
    if FExtravios <> 'X' then
      ExecuteCloseDeliveryLosses;
    storedProcClosingExpress.Connection.Connected := False;
    FInProcess := False;
  end;
  FInProcess := False;
end;

end.
