unit Model.SisGeFTravelControl;

interface

uses Common.ENum, FireDAC.Comp.Client, System.SysUtils,
  Common.Utils, System.DateUtils, DAO.SisGeFCRUDRoutines;

type
  TTravelControl = class
  private
    FFieldsQuery: array of variant;
    FCRUD: TDAOCRUDRoutines;
    FAction: TAcao;
    FHoraSaida: ttime;
    FKMSaida: double;
    FOperacao: string;
    FObservacao: string;
    FMotorista: integer;
    FServico: string;
    FKMRodado: double;
    FKMRetorno: double;
    FValorServico: double;
    FCliente: integer;
    FQuery: TFDQuery;
    FID: integer;
    FStatus: integer;
    FPlacaVeiculo: string;
    FData: tdate;
    FSM: string;
    FInsertFields: array of variant;
    FUpdateFields: array of variant;
    FHoraRetorno: ttime;
    FLog: string;
    FMessage: string;
    function Insert(): boolean;
    function Update(): boolean;
    function Delete(): boolean;
  public
    property ID: integer read FID write FID;
    property SM: string read FSM write FSM;
    property Data: tdate read FData write FData;
    property Cliente: integer read FCliente write FCliente;
    property Operacao: string read FOperacao write FOperacao;
    property PlacaVeiculo: string read FPlacaVeiculo write FPlacaVeiculo;
    property Motorista: integer read FMotorista write FMotorista;
    property KMSaida: double read FKMSaida write FKMSaida;
    property HoraSaida: ttime read FHoraSaida write FHoraSaida;
    property KMRetorno: double read FKMRetorno write FKMRetorno;
    property HoraRetorno: ttime read FHoraRetorno write FHoraRetorno;
    property KMRodado: double read FKMRodado write FKMRodado;
    property Servico: string read FServico write FServico;
    property Observacao: string read FObservacao write FObservacao;
    property ValorServico: double read FValorServico write FValorServico;
    property Status: integer read FStatus write FStatus;
    property Log: string read FLog write FLog;
    property Acao: TAcao read FAction write FAction;
    property Query: TFDQuery read FQuery write FQuery;
    property Mensagem: string read FMessage;

    constructor Create;
    function Save(): boolean;
    function Search(aParam: array of variant): boolean;
    function SetupFieldsClass(): boolean;
    function GetValueField(aParam: array of variant): string;
    function ValidateData(): boolean;
    function SetupFieldsData(aParam: array of variant): boolean;
    function ValidateFinalization(): boolean;
    function GetId: integer;
  end;

const
  TABLENAME = 'tbcontroletransporte';
  CRUDSELECT =
    'SELECT ID_CONTROLE, NUM_SM, DAT_TRANSPORTE, COD_CLIENTE, DES_OPERACAO, DES_PLACA, COD_MOTORISTA, '
    + 'QTD_KM_SAIDA, HOR_SAIDA, QTD_KM_RETORNO, HOR_RETORNO, QTD_KM_RODADO, DES_SERVICO, DES_OBS, VAL_SERVICO, '
    + 'COD_STATUS, DES_LOG ' + 'FROM ' + TABLENAME;
  CRUDINSERT = 'INSERT INTO ' + TABLENAME +
    ' (NUM_SM, DAT_TRANSPORTE, COD_CLIENTE, DES_OPERACAO, DES_PLACA, COD_MOTORISTA, '
    + 'QTD_KM_SAIDA, HOR_SAIDA, QTD_KM_RETORNO, HOR_RETORNO, QTD_KM_RODADO, DES_SERVICO, DES_OBS, VAL_SERVICO, '
    + 'COD_STATUS, DES_LOG) ' +
    'VALUES (:NUM_SM, :DAT_TRANSPORTE, :COD_CLIENTE, :DES_OPERACAO, :DES_PLACA, :COD_MOTORISTA, '
    + ':QTD_KM_SAIDA, :HOR_SAIDA, :QTD_KM_RETORNO, :HOR_RETORNO, :QTD_KM_RODADO, :DES_SERVICO, :DES_OBS, :VAL_SERVICO, '
    + ':COD_STATUS, :DES_LOG)';
  CRUDUPDATE = 'UPDATE ' + TABLENAME +
    ' SET NUM_SM = :NUM_SM, DAT_TRANSPORTE = :DAT_TRANSPORTE, COD_CLIENTE = :COD_CLIENTE, '
    + 'DES_OPERACAO = :DES_OPERACAO, DES_PLACA = :DES_PLACA, COD_MOTORISTA = :COD_MOTORISTA, '
    + 'QTD_KM_SAIDA = :QTD_KM_SAIDA, HOR_SAIDA = :HOR_SAIDA, QTD_KM_RETORNO = :QTD_KM_RETORNO, '
    + 'HOR_RETORNO = :HOR_RETORNO, QTD_KM_RODADO = :QTD_KM_RODADO, DES_SERVICO = :DES_SERVICO, '
    + 'DES_OBS = :DES_OBS, VAL_SERVICO = :VAL_SERVICO, COD_STATUS = :COD_STATUS, DES_LOG = :DES_LOG '
    + 'WHERE ID_CONTROLE = :ID_CONTROLE ';
  CRUDDELETE = 'DETELE FROM ' + TABLENAME + ' WHERE ID_CONTROLE = :ID_CONTROLE';
  CRUDGETID  = 'select coalesce(max(ID_CONTROLE),0) + 1 from ' + TABLENAME;


implementation

{ TTravelControl }

constructor TTravelControl.Create;
begin
  FFieldsQuery := ['ID_CONTROLE', 'NUM_SM', 'DAT_TRANSPORTE', 'COD_CLIENTE',
    'DES_OPERACAO', 'DES_PLACA', 'COD_MOTORISTA', 'QTD_KM_SAIDA', 'HOR_SAIDA',
    'QTD_KM_RETORNO', 'HOR_RETORNO', 'QTD_KM_RODADO', 'DES_SERVICO', 'DES_OBS',
    'VAL_SERVICO', 'COD_STATUS', 'DES_LOG'];
  FInsertFields := [FSM, FData, FCliente, FOperacao, FPlacaVeiculo, FMotorista,
    FKMSaida, FHoraSaida, FKMRetorno, FHoraRetorno, FKMRodado, FServico,
    FObservacao, FValorServico, FStatus, FLog];
end;

function TTravelControl.Delete: boolean;
begin
  Result := False;
  try
    FCRUD := TDAOCRUDRoutines.Create;
    FCRUD.CRUDSentence := CRUDDELETE;
    Result := FCRUD.UpdateExec([FID]);
  finally
    FCRUD.free;
  end;
end;

function TTravelControl.GetId: integer;
begin
  Result := 0;
  try
    FCRUD := TDAOCRUDRoutines.Create;
    FCRUD.CRUDSentence := CRUDGETID;
    Result := FCRUD.GetId;
  finally
    FCRUD.free;
  end;
end;

function TTravelControl.GetValueField(aParam: array of variant): string;
begin
  Result := '';
  try
    FCRUD := TDAOCRUDRoutines.Create;
    FCRUD.TABLENAME := TABLENAME;

    if FCRUD.Search(aParam) then
    begin
      if not FCRUD.Query.IsEmpty then
      begin
        Result := FCRUD.Query.FieldByName(aParam[1]).asString;
      end;
    end;
  finally
    FCRUD.free;
  end;
end;

function TTravelControl.Insert: boolean;
begin
  Result := False;
  try
    FId := GetId;
    FCRUD := TDAOCRUDRoutines.Create;
    FCRUD.CRUDSentence := CRUDINSERT;
    Result := FCRUD.UpdateExec(FInsertFields);
  finally
    FCRUD.free;
  end;
end;

function TTravelControl.Save: boolean;
begin
  Result := False;
  case FAction of
    tacIncluir:
      Result := Insert();
    tacAlterar:
      Result := Update();
    tacExcluir:
      Result := Delete();
  else
    Exit;
  end;
end;

function TTravelControl.Search(aParam: array of variant): boolean;
begin
  Result := False;
  try
    FCRUD := TDAOCRUDRoutines.Create;
    FCRUD.CRUDSentence := CRUDSELECT;
    FCRUD.TABLENAME := TABLENAME;

    if FCRUD.Search(aParam) then
    begin
      if not FCRUD.Query.IsEmpty then
      begin
        FQuery := FCRUD.Query;
        Result := True;
      end
      else
      begin
        Result := False;
      end;
    end;
  finally
    FCRUD.free;
  end;
end;

function TTravelControl.SetupFieldsClass: boolean;
begin
  Result := False;
  FID := FQuery.FieldByName(FFieldsQuery[0]).Value;
  FSM := FQuery.FieldByName(FFieldsQuery[1]).Value;
  FData := FQuery.FieldByName(FFieldsQuery[2]).Value;
  FCliente := FQuery.FieldByName(FFieldsQuery[3]).Value;
  FOperacao := FQuery.FieldByName(FFieldsQuery[4]).Value;
  FPlacaVeiculo := FQuery.FieldByName(FFieldsQuery[5]).Value;
  FMotorista := FQuery.FieldByName(FFieldsQuery[6]).Value;
  FKMSaida := FQuery.FieldByName(FFieldsQuery[7]).Value;
  FHoraSaida := FQuery.FieldByName(FFieldsQuery[8]).Value;
  FKMRetorno := FQuery.FieldByName(FFieldsQuery[9]).Value;
  FHoraRetorno := FQuery.FieldByName(FFieldsQuery[10]).Value;
  FKMRodado := FQuery.FieldByName(FFieldsQuery[11]).Value;
  FServico := FQuery.FieldByName(FFieldsQuery[12]).Value;
  FObservacao := FQuery.FieldByName(FFieldsQuery[13]).Value;
  FValorServico := FQuery.FieldByName(FFieldsQuery[14]).Value;
  FStatus := FQuery.FieldByName(FFieldsQuery[15]).Value;
  FLog := FQuery.FieldByName(FFieldsQuery[16]).Value;
  Result := True;
end;

function TTravelControl.SetupFieldsData(aParam: array of variant): boolean;
begin
  Result := False;
  FID := aParam[0];
  FSM := aParam[1];
  FData := aParam[2];
  FCliente := aParam[3];
  FOperacao := aParam[4];
  FPlacaVeiculo := aParam[5];
  FMotorista := aParam[6];
  FKMSaida := aParam[7];
  FHoraSaida := aParam[8];
  FKMRetorno := aParam[9];
  FHoraRetorno := aParam[10];
  FKMRodado := aParam[11];
  FServico := aParam[12];
  FObservacao := aParam[13];
  FValorServico := aParam[14];
  FStatus := aParam[15];
  FLog := aParam[16];
  if FAction = tacAlterar then
  begin
    FUpdateFields := [FSM, FloatToDateTime(FData), FCliente, FOperacao,
      FPlacaVeiculo, FMotorista, FKMSaida, FloatToDateTime(FHoraSaida),
      FKMRetorno, FloatToDateTime(FHoraRetorno), FKMRodado, FServico, FObservacao,
      FValorServico, FStatus, FLog, FID];
  end
  else if FAction = tacIncluir then
  begin
    FInsertFields := [FSM, FloatToDateTime(FData), FCliente, FOperacao,
      FPlacaVeiculo, FMotorista, FKMSaida, FloatToDateTime(FHoraSaida),
      FKMRetorno, FloatToDateTime(FHoraRetorno), FKMRodado, FServico, FObservacao,
      FValorServico, FStatus, FLog];
  end;
  Result := True;
end;

function TTravelControl.Update: boolean;
begin
  Result := False;
  try
    FCRUD := TDAOCRUDRoutines.Create;
    FCRUD.CRUDSentence := CRUDUPDATE;
    Result := FCRUD.UpdateExec(FUpdateFields);
  finally
    FCRUD.free;
  end;
end;

function TTravelControl.ValidateData: boolean;
begin
  Result := False;
  if FData = 0 then
  begin
    FMessage := 'Informe a data da viagem.';
    Exit;
  end;
  if Pos('Selecione', FOperacao) <> 0 then
  begin
    FMessage := 'Selecione o tipo de operação.';
    Exit;
  end;
  if FCliente = 0 then
  begin
    FMessage := 'Informe o Cliente / Tomador.';
    Exit;
  end;
  if FMotorista = 0 then
  begin
    FMessage := 'Informe o motorista.';
    Exit;
  end;
  if FPlacaVeiculo.IsEmpty then
  begin
    FMessage := 'Informe o veículo.';
    Exit;
  end;
  if FKMRetorno > 0 then
  begin
    if FKMRetorno < FKMSaida then
    begin
      FMessage := 'KM Final menor que KM inicial.';
      Exit;
    end;
  end;
  Result := True;
end;

function TTravelControl.ValidateFinalization: boolean;
begin
  Result := false;
  if FHoraSaida = 0 then
  begin
    FMessage := 'Informe a hora de saída.';
    Exit;
  end;
  if FHoraRetorno = 0 then
  begin
    FMessage := 'Informe a hora de retorno.';
    Exit;
  end;
  if FHoraRetorno < FHoraSaida then
  begin
    FMessage := 'Hora de retorno menor que hora de saída.';
    Exit;
  end;

  if KMSaida = 0 then
  begin
    FMessage := 'Informe KM de saída.';
    Exit;
  end;
  if KMRetorno = 0 then
  begin
    FMessage := 'Informe KM de chegada.';
    Exit;
  end;
  KMRodado := KMRetorno - KMSaida;
  Result := true;

end;

end.
