unit Model.SisGeFOrderServices;

interface

uses Common.ENum, FireDAC.Comp.Client, DAO.Conexao, System.SysUtils;

type
  TSisGeFOrderServices = class
  private
      FServiceDescription: string;
      FClientCode: integer;
      FControllerId: integer;
      FServiceValue: Double;
      FMaintenanceDate: TDateTime;
      FDepartureTime: string;
      FClosedFlag: string;
      FExecutorName: string;
      FReturnTime: string;
      FVehicleCode: integer;
      FDeliveryManCode: integer;
      FQuery: TFDQuery;
      FOSNumber: integer;
      FServiceOrderTypeCode: integer;
      FInitialMileage: integer;
      FExtractNumber: string;
      FRouteDescription: string;
      FPayDay: TDateTime;
      FFinalMileage: integer;
      FOSDate: TDateTime;
      FClosureFlag: integer;
      FConnection: TConexao;
      FAction: TAcao;
      FOSMessage: string;

      function Insert(): boolean;
      function Update(): boolean;
      function Delete(): boolean;

    public
      constructor Create;
      property OSNumber : integer read FOSNumber write FOSNumber;
      property OSDate : TDateTime read FOSDate write FOSDate;
      property DeliveryManCode : integer read FDeliveryManCode write FDeliveryManCode;
      property ClientCode : integer read FClientCode write FClientCode;
      property VehicleCode : integer read FVehicleCode write FVehicleCode;
      property RouteDescription : string read FRouteDescription write FRouteDescription;
      property InitialMileage : integer read FInitialMileage write FInitialMileage;
      property FinalMileage : integer read FFinalMileage write FFinalMileage;
      property DepartureTime : string read FDepartureTime write FDepartureTime;
      property ReturnTime : string read FReturnTime write FReturnTime;
      property ServiceDescription : string read FServiceDescription write FServiceDescription;
      property ServiceValue : Double read FServiceValue write FServiceValue;
      property ClosedFlag : string read FClosedFlag write FClosedFlag;
      property PayDay : TDateTime read FPayDay write FPayDay;
      property ExtractNumber : string read FExtractNumber write FExtractNumber;
      property ExecutorName : string read FExecutorName write FExecutorName;
      property MaintenanceDate : TDateTime read FMaintenanceDate write FMaintenanceDate;
      property ControllerId : integer read FControllerId write FControllerId;
      property ClosureFlag : integer read FClosureFlag write FClosureFlag;
      property ServiceOrderTypeCode : integer read FServiceOrderTypeCode write FServiceOrderTypeCode;
      property Query : TFDQuery read FQuery write FQuery;
      property OSMessage: string read FOSMessage write FOSMessage;
      property Action : TAcao read FAction write FAction;

      function Search(aParam: array of variant): boolean;
      function Save(): boolean;
      function SetupClass(): boolean;
      function GetId(): integer;
      function Validade(): boolean;

  end;
  const
    TABLENAME = 'tbordemservico';
    SQLSELECT = 'SELECT NUM_OS, DAT_OS, COD_ENTREGADOR, COD_CLIENTE, COD_VEICULO, DES_ROTA, QTD_KM_INICIAL, QTD_KM_FINAL, ' +
                'DES_HORA_SAIDA, DES_HORA_RETORNO, DES_SERVICO, VAL_DIARIA, DOM_FECHADO, DAT_PAGO, NUM_EXTRATO, NOM_EXECUTOR, ' +
                'DAT_MANUTENCAO, ID_CONTROLE, DOM_ENCERRADO, COD_TIPO_OS ' +
                'FROM ' + TABLENAME;
    SQLINSERT = 'INSERT INTO ' + TABLENAME + ' (NUM_OS, DAT_OS, COD_ENTREGADOR, COD_CLIENTE, COD_VEICULO, DES_ROTA, ' +
                'QTD_KM_INICIAL, QTD_KM_FINAL, DES_HORA_SAIDA, DES_HORA_RETORNO, DES_SERVICO, VAL_DIARIA, DOM_FECHADO, ' +
                'DAT_PAGO, NUM_EXTRATO, NOM_EXECUTOR, DAT_MANUTENCAO, ID_CONTROLE, DOM_ENCERRADO, COD_TIPO_OS) ' +
                'VALUES (:NUM_OS, :DAT_OS, :COD_ENTREGADOR, :COD_CLIENTE, :COD_VEICULO, :DES_ROTA, ' +
                ':QTD_KM_INICIAL, :QTD_KM_FINAL, :DES_HORA_SAIDA, :DES_HORA_RETORNO, :DES_SERVICO, :VAL_DIARIA, :DOM_FECHADO, ' +
                ':DAT_PAGO, :NUM_EXTRATO, :NOM_EXECUTOR, :DAT_MANUTENCAO, :ID_CONTROLE, :DOM_ENCERRADO, :COD_TIPO_OS);';
    SQLUPDATE = 'UPDATE ' + TABLENAME + ' SET DAT_OS = :DAT_OS, COD_ENTREGADOR = :COD_ENTREGADOR, COD_CLIENTE = :COD_CLIENTE, ' +
                'COD_VEICULO = :COD_VEICULO, DES_ROTA = :DES_ROTA, QTD_KM_INICIAL = :QTD_KM_INICIAL, ' +
                'QTD_KM_FINAL = :QTD_KM_FINAL, DES_HORA_SAIDA = :DES_HORA_SAIDA, DES_HORA_RETORNO = :DES_HORA_RETORNO, ' +
                'DES_SERVICO = :DES_SERVICO, VAL_DIARIA = :VAL_DIARIA, DOM_FECHADO = :DOM_FECHADO, ' +
                'DAT_PAGO = :DAT_PAGO, NUM_EXTRATO = :NUM_EXTRATO, NOM_EXECUTOR = :NOM_EXECUTOR, ' +
                'DAT_MANUTENCAO = :DAT_MANUTENCAO, ID_CONTROLE = :ID_CONTROLE, DOM_ENCERRADO = :DOM_ENCERRADO, ' +
                'COD_TIPO_OS = :COD_TIPO_OS ' +
                'WHERE NUM_OS = :NUMOS;';
    SQLDELETE = 'DELETE FROM ' + TABLENAME +
                ' WHERE NUM_OS = :NUMOS;';
    SQLGETID  = 'select coalesce(max(NUM_OS),0) + 1 from ' + TABLENAME;


implementation

{ TSisGeFOrderServices }

constructor TSisGeFOrderServices.Create;
begin
  FConnection := TConexao.Create;
end;

function TSisGeFOrderServices.Delete: boolean;
begin
  try
    Result := False;
    FQuery := FConnection.ReturnQuery;
    FQuery.ExecSQL(SQLDELETE, [FOSNumber]);
    Result := True;
  finally
    FQuery.Connection.Connected := False;
    FQuery.Free;
  end;
end;

function TSisGeFOrderServices.GetId: integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConnection.ReturnQuery();
    FDQuery.Open(SQLGETID);
    try
      Result := FDQuery.Fields[0].AsInteger;
    finally
      FDQuery.Close;
    end;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TSisGeFOrderServices.Insert: boolean;
begin
  try
    Result := False;
    FQuery := FConnection.ReturnQuery;
    FOSNumber := GetId;
    FQuery.ExecSQL(SQLINSERT, [FOSNumber, FOSDate, FDeliveryManCode, FClientCode, FVehicleCode, FRouteDescription, FInitialMileage,
                              FFinalMileage, FDepartureTime, FReturnTime, FServiceDescription, FServiceValue, FClosedFlag, FPayDay,
                              FExtractNumber, FExecutorName, FMaintenanceDate, FControllerId, FClosureFlag, FServiceOrderTypeCode]);
    Result := True;
  finally
    FQuery.Connection.Connected := False;
    FQuery.Free;
  end;
end;

function TSisGeFOrderServices.Save: boolean;
begin
  Result := False;
  case FAction of
    tacIncluir : Result := Insert();
    tacAlterar : Result := Update();
    tacExcluir : result := Delete();
    else
      Exit;
  end;
end;

function TSisGeFOrderServices.Search(aParam: array of variant): boolean;
begin
  Result := False;
  FQuery := FConnection.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FQuery.SQL.Clear;

  FQuery.SQL.Add(SQLSELECT);
  if aParam[0] = 'OS' then
  begin
    FQuery.SQL.Add('where NUM_OS = :NUM_OS');
    FQuery.ParamByName('NUM_OS').AsInteger := aParam[1];
  end;
  if aParam[0] = 'DATA' then
  begin
    FQuery.SQL.Add('where DAT_OS = :DAT_OS');
    FQuery.ParamByName('DAT_OS').AsDate := aParam[1];
  end;
  if aParam[0] = 'CADASTRO' then
  begin
    FQuery.SQL.Add('where COD_ENTREGADOR = :COD_ENTREGADOR');
    FQuery.ParamByName('COD_ENTREGADOR').AsInteger := aParam[1];
  end;
  if aParam[0] = 'CLIENTE' then
  begin
    FQuery.SQL.Add('where COD_CLIENTE = :COD_CLIENTE');
    FQuery.ParamByName('COD_CLIENTE').AsInteger := aParam[1];
  end;
  if aParam[0] = 'FILTRO' then
  begin
    FQuery.SQL.Add('where ' + aParam[1]);
  end;
  if aParam[0] = 'APOIO' then
  begin
    FQuery.SQL.Clear;
    FQuery.SQL.Add('select  ' + aParam[1] + ' from ' + TABLENAME + ' ' + aParam[2]);
  end;
  FQuery.Open();
  if FQuery.IsEmpty then
  begin
    Exit;
  end;
  Result := True;
end;

function TSisGeFOrderServices.SetupClass: boolean;
begin
  Result := False;
  FServiceDescription := FQuery.FieldByName('DES_SERVICO').AsString;
  FClientCode := FQuery.FieldByName('COD_CLIENTE').AsInteger;
  FControllerId := FQuery.FieldByName('ID_CONTROLE').AsInteger;
  FServiceValue := FQuery.FieldByName('VAL_DIARIA').AsFloat;
  FMaintenanceDate := FQuery.FieldByName('DAT_MANUTENCAO').AsDateTime;
  FDepartureTime := FQuery.FieldByName('DES_HORA_SAIDA').AsString;
  FClosedFlag := FQuery.FieldByName('DOM_FECHADO').AsString;
  FExecutorName := FQuery.FieldByName('NOM_EXECUTOR').AsString;
  FReturnTime := FQuery.FieldByName('DES_HORA_RETORNO').AsString;
  FVehicleCode := FQuery.FieldByName('COD_VEICULO').AsInteger;
  FDeliveryManCode := FQuery.FieldByName('COD_ENTREGADOR').AsInteger;
  FOSNumber := FQuery.FieldByName('NUM_OS').AsInteger;
  FServiceOrderTypeCode := FQuery.FieldByName('COD_TIPO_OS').AsInteger;
  FInitialMileage := FQuery.FieldByName('QTD_KM_INICIAL').AsInteger;
  FExtractNumber := FQuery.FieldByName('NUM_EXTRATO').AsString;
  FRouteDescription := FQuery.FieldByName('DES_ROTA').AsString;
  FPayDay := FQuery.FieldByName('DAT_PAGO').AsDateTime;
  FFinalMileage := FQuery.FieldByName('QTD_KM_FINAL').AsInteger;
  FOSDate := FQuery.FieldByName('DAT_OS').AsDateTime;
  FClosureFlag := FQuery.FieldByName('DOM_ENCERRADO').AsInteger;
  Result := True;
end;

function TSisGeFOrderServices.Update: boolean;
begin
  try
    Result := False;
    FQuery := FConnection.ReturnQuery;
    FQuery.ExecSQL(SQLUPDATE, [FOSDate, FDeliveryManCode, FClientCode, FVehicleCode, FRouteDescription, FInitialMileage,
                              FFinalMileage, FDepartureTime, FReturnTime, FServiceDescription, FServiceValue, FClosedFlag, FPayDay,
                              FExtractNumber, FExecutorName, FMaintenanceDate, FControllerId, FClosureFlag, FServiceOrderTypeCode,
                              FOSNumber]);
    Result := True;
  finally
    FQuery.Connection.Connected := False;
    FQuery.Free;
  end;
end;

function TSisGeFOrderServices.Validade: boolean;
begin
  Result := False;
  if FOSDate = 0 then
  begin
    FOSMessage := 'Informe a data da ordem de serviço!';
    Exit;
  end;
  if FServiceOrderTypeCode = 0 then
  begin
    FOSMessage := 'Informe o tipo de ordem de serviço!';
    Exit;
  end;
  if FServiceOrderTypeCode = 2 then
  begin
    if FClientCode = 0 then
    begin
      FOSMessage := 'Informe o cliente desta ordem de serviço!';
      Exit;
    end;
  end;
  if FServiceOrderTypeCode = 1 then
  begin
    if FDeliveryManCode = 0 then
    begin
      FOSMessage := 'Informe o Motorista/Terceirizado desta ordem de serviço!';
      Exit;
    end;
  end;
  if FInitialMileage > FFinalMileage then
  begin
    FOSMessage := 'Quilometragem inicial e final inválidos!';
    Exit;
  end;
  if FServiceDescription.IsEmpty then
  begin
    FOSMessage := 'Nenhum serviço informado para esta ordem de serviço!';
    Exit;
  end;
  if FServiceValue = 0 then
  begin
    FOSMessage := 'Informe o valor desta ordem de serviço!';
    Exit;
  end;

  Result := True;
end;

end.
