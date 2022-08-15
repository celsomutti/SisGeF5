unit THread.SisGeFProcessExtractSO;

interface

uses
  System.Classes, DAO.Conexao, FireDAC.Comp.Client, FireDAC.Comp.DataSet, System.SysUtils;

type
  TTHread_SisGeFProcessExtractSO = class(TThread)
  private
    FEndDate: TDate;
    FAbortProcess: boolean;
    FFiltro: String;
    FStartDate: TDate;
    FMensagem: string;
    FTipo: integer;
    FInProcess: boolean;
    FSituacao: String;
    { Private declarations }
    procedure ExecuteProcessExtractSOByInstallment;
    procedure ExecuteProcessExtractSOByConsumption;
  protected
    procedure Execute; override;
  public
    property Filtro : String read FFiltro write FFiltro;
    property Tipo: integer read FTipo write FTipo;
    property InProcess: boolean read FInProcess;
    property StartDate: TDate read FStartDate write FStartDate;
    property EndDate: TDate read FEndDate write FEndDate;
    property Situacao: String  read FSituacao write FSituacao;
    property Mensagem: string read FMensagem write FMensagem;
    property AbortProcess: boolean read FAbortProcess write FAbortProcess;
  end;

implementation

{ 
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);  

  and UpdateCaption could look like,

    procedure TTHread_SisGeFProcessExtractSO.UpdateCaption;
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

{ TTHread_SisGeFProcessExtractSO }

procedure TTHread_SisGeFProcessExtractSO.Execute;
begin
  { Place thread code here }
end;

procedure TTHread_SisGeFProcessExtractSO.ExecuteProcessExtractSOByConsumption;
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
    storedProcExtractSO.storedProcName := 'sp_extractso_by_consumption';
    storedProcExtractSO.SchemaName := 'bderpsisgef';
    storedProcExtractSO.Prepare;
    storedProcExtractSO.ParamByName('pdateinitial').AsDate := FStartDate;
    storedProcExtractSO.ParamByName('pdatefinal').AsDate := FEndDate;
    storedProcExtractSO.ParamByName('pTypeExtract').AsInteger := FTipo;
    storedProcExtractSO.ParamByName('psituation').AsString := FSituacao;
    if FFiltro <> '' then
    begin
      storedProcExtractSO.Filter := FFiltro;
      storedProcExtractSO.Filtered := True;
    end;
    storedProcExtractSO.Active := True;
    memTableExtractSO.Active := True;
    memTableExtractSO.CopyDataSet(storedProcExtractSO, [coAppend]);
    storedProcExtractSO.Connection.Connected := False;
    if not memTableExtractSO.IsEmpty then
    begin
      memTableExtractSO.First;
    end
    else
    begin
      FMensagem := 'Nenhum registro encontrado!';
      FAbortProcess := True;
      FInProcess := False;
      Exit;
    end;
  end;
  FInProcess := False;
end;

procedure TTHread_SisGeFProcessExtractSO.ExecuteProcessExtractSOByInstallment;
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
    storedProcExtractSO.storedProcName := 'sp_extractso_by_installment';
    storedProcExtractSO.SchemaName := 'bderpsisgef';
    storedProcExtractSO.Prepare;
    storedProcExtractSO.ParamByName('pdateinitial').AsDate := FStartDate;
    storedProcExtractSO.ParamByName('pdatefinal').AsDate := FEndDate;
    storedProcExtractSO.ParamByName('pTypeExtract').AsInteger := FTipo;
    storedProcExtractSO.ParamByName('psituation').AsString := FSituacao;
    if FFiltro <> '' then
    begin
      storedProcExtractSO.Filter := FFiltro;
      storedProcExtractSO.Filtered := True;
    end;
    storedProcExtractSO.Active := True;
    memTableExtractSO.Active := True;
    memTableExtractSO.CopyDataSet(storedProcExtractSO, [coAppend]);
    storedProcExtractSO.Connection.Connected := False;
    if not memTableExtractSO.IsEmpty then
    begin
      memTableExtractSO.First;
    end
    else
    begin
      FMensagem := 'Nenhum registro encontrado!';
      FAbortProcess := True;
      FInProcess := False;
      Exit;
    end;
  end;
  FInProcess := False;
end;

end.
