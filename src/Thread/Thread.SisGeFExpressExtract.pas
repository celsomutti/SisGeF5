unit Thread.SisGeFExpressExtract;

interface

uses
  System.Classes, DAO.Conexao, FireDAC.Comp.Client, FireDAC.Comp.DataSet, System.SysUtils;

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
    FDomExtravio: string;
    FMensagem: string;
    FAbortProcess: boolean;
    FQuinzena: integer;
    FMes: integer;
    FAno: integer;
    FPosfix: string;
    FTipoData: integer;
    { Private declarations }
    procedure ExecuteExpressExtractDeliveryDate;
    procedure ExecuteExpressPostingValuesStatement;
    procedure ExecuteExpressStrays;
    procedure ExecuteListExpressExtractDelivery;
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
    property DomExtravio: string read FDomExtravio write FDomExtravio;
    property Mensagem: string read FMensagem write FMensagem;
    property AbortProcess: boolean read FAbortProcess write FAbortProcess;
    property Ano: integer read FAno write FAno;
    property Mes: integer read FMes write FMes;
    property Quinzena: integer read FQuinzena write FQuinzena;
    property TipoData: integer read FTipoData write FTipoData;
    property Posfix: string read FPosfix write FPosfix;
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

uses Data.SisGeF, Global.Parametros;

{ TTHead_ExpressExtract }

procedure TTHead_ExpressExtract.Execute;
begin
  { Place thread code here }
  if FTipo = 1 then
    ExecuteExpressExtractDeliveryDate
  else if FTipo = 2 then
    ExecuteListExpressExtractDelivery;
end;

procedure TTHead_ExpressExtract.ExecuteExpressExtractDeliveryDate;
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
    storedProcExtractExpress.Active := False;
    storedProcExtractExpress.Filtered := False;
    storedProcExtractExpress.Filter := '';
    storedProcExtractExpress.Connection := FConnection.GetConn;
    if FTipoData = 1 then
      storedProcExtractExpress.storedProcName := 'sp_generate_express_extract'
    else
      storedProcExtractExpress.storedProcName := 'sp_generate_express_extract_by_expedition';
    storedProcExtractExpress.SchemaName := Global.Parametros.pDatabase;
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
    memTableExtracts.CopyDataSet(storedProcExtractExpress, [coAppend]);
    storedProcExtractExpress.Connection.Connected := False;
    if not memTableExtracts.IsEmpty then
    begin
      memTableExtracts.First;
    end
    else
    begin
      FMensagem := 'Nenhum registro encontrado!';
      FAbortProcess := True;
      FInProcess := False;
      Exit;
    end;
    if FDomLancamento <> 'X' then
      ExecuteExpressPostingValuesStatement;
    if FDomExtravio <> 'X' then
      ExecuteExpressStrays;
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
    storedProcPostingValuesStatement.SchemaName := Global.Parametros.pDatabase;
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
  end;
end;

procedure TTHead_ExpressExtract.ExecuteExpressStrays;
var
  FConnection : TConexao;
  FQuery : TFDQuery;
  i: integer;
  dNewValue: double;
begin
  FConnection := Tconexao.Create;
  with Data_Sisgef do
  begin
    storedProcExpressStrays.Active := False;
    storedProcExpressStrays.Filtered := False;
    storedProcExpressStrays.Filter := '';
    storedProcExpressStrays.Connection := FConnection.GetConn;
    storedProcExpressStrays.storedProcName := 'sp_express_extract_loss';
    storedProcExpressStrays.SchemaName := Global.Parametros.pDatabase;
    storedProcExpressStrays.Prepare;
    storedProcExpressStrays.ParamByName('pdomFinalize').AsString := FDomExtravio;
    if FFiltro <> '' then
    begin
      storedProcExpressStrays.Filter := FFiltro;
      storedProcExpressStrays.Filtered := True;
    end;
    storedProcExpressStrays.Active := True;
    if not storedProcExpressStrays.IsEmpty then
      storedProcExpressStrays.First;
    while not storedProcExpressStrays.Eof do
    begin
      dNewValue := 0;
      if memTableExtracts.Locate('cod_entregador', storedProcExpressStrayscod_entregador.asinteger, [])  then
      begin
        dNewValue := memTableExtractsval_extravios.AsFloat + (0 - storedProcExpressStraysval_total.AsFloat);
        memTableExtracts.Edit;
        memTableExtractsval_extravios.AsFloat := dNewValue;
        memTableExtracts.Post;
      end
      else
      begin
        memTableExtracts.insert;
        memTableExtractscod_base.AsInteger := storedProcExpressStrayscod_base.AsInteger;
        memTableExtractsnom_base.AsString := storedProcExpressStraysnom_base.AsString;
        memTableExtractscod_entregador.AsInteger := storedProcExpressStrayscod_entregador.AsInteger;
        memTableExtractsnom_entregador.AsString := storedProcExpressStraysnom_entregador.AsString;
        memTableExtractscod_cliente.AsInteger := storedProcExpressStrayscod_cliente.AsInteger;
        memTableExtractsnom_cliente.AsString := storedProcExpressStraysnom_cliente.AsString;
        memTableExtractscod_base.AsInteger := storedProcExpressStrayscod_base.AsInteger;
        dNewValue := memTableExtractsval_extravios.AsFloat + (0 - storedProcExpressStraysval_total.AsFloat);
        memTableExtractsval_extravios.AsFloat := dNewValue;
        memTableExtracts.Post
      end;
      storedProcExpressStrays.Next;
    end;
    storedProcExpressStrays.Connection.Connected := False;
  end;
end;

procedure TTHead_ExpressExtract.ExecuteListExpressExtractDelivery;
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
    FQuery := FConnection.ReturnQuery();
    FQuery.SQL.Text := 'select * from view_list_express_extract ';
    if FFiltro <> '' then
    begin
      FQuery.Filter := FFiltro;
      FQuery.SQL.Add('where ' + FFiltro);
    end;
    FQuery.Open();
    memTableExtracts.Active := True;
    memTableExtracts.Tag := FExtraVolume;
    memTableExtracts.CopyDataSet(FQuery, [coAppend]);
    if not memTableExtracts.IsEmpty then
    begin
      memTableExtracts.First;
    end
    else
    begin
      FMensagem := 'Nenhum registro encontrado!';
      FAbortProcess := True;
    end;
  end;
  FInProcess := False;
end;

end.
