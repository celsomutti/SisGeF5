unit Model.SisGeFTravelControl;

interface

uses Common.ENum, FireDAC.Comp.Client, System.SysUtils,
  Common.Utils, System.DateUtils, DAO.Conexao;

type
  TTravelControl = class
  private
    FFieldsQuery: array of variant;
    FConexao : TConexao;
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
    function SetupFieldsData(aParam: array of variant): boolean;
    function GetValueField(sField, sKey, sKeyValue: String): String;
    function ValidateData(): boolean;
    function GetFieldsParam(var aParam: array of variant): boolean;
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
    + 'QTD_KM_SAIDA, :HOR_SAIDA, :QTD_KM_RETORNO, :HOR_RETORNO, :QTD_KM_RODADO, :DES_SERVICO, :DES_OBS, :VAL_SERVICO, :'
    + 'COD_STATUS, :DES_LOG)';
  CRUDUPDATE = 'UPDATE ' + TABLENAME +
    ' SET NUM_SM = :NUM_SM, DAT_TRANSPORTE = :DAT_TRANSPORTE, COD_CLIENTE = :COD_CLIENTE, '
    + 'DES_OPERACAO = :DES_OPERACAO, DES_PLACA = :DES_PLACA, COD_MOTORISTA = :COD_MOTORISTA, '
    + 'QTD_KM_SAIDA = :QTD_KM_SAIDA, HOR_SAIDA = :HOR_SAIDA, QTD_KM_RETORNO = :QTD_KM_RETORNO, '
    + 'HOR_RETORNO = :HOR_RETORNO, QTD_KM_RODADO = :QTD_KM_RODADO, DES_SERVICO = :DES_SERVICO, '
    + 'DES_OBS = :DES_OBS, VAL_SERVICO = :VAL_SERVICO, COD_STATUS = :COD_STATUS, DES_LOG = :DES_LOG '
    + 'WHERE ID_CONTROLE = :ID_CONTROLE ';
  CRUDDELETE = 'DETELE FROM ' + TABLENAME + ' WHERE ID_CONTROLE = :ID_CONTROLE';

implementation

{ TTravelControl }

constructor TTravelControl.Create;
begin
  FConexao := TConexao.Create;
  FFieldsQuery := ['ID_CONTROLE', 'NUM_SM', 'DAT_TRANSPORTE', 'COD_CLIENTE',
    'DES_OPERACAO', 'DES_PLACA', 'COD_MOTORISTA', 'QTD_KM_SAIDA', 'HOR_SAIDA',
    'QTD_KM_RETORNO', 'HOR_RETORNO', 'QTD_KM_RODADO', 'DES_SERVICO', 'DES_OBS',
    'VAL_SERVICO', 'COD_STATUS', 'DES_LOG'];
end;

function TTravelControl.Delete: boolean;
var
  iRecords : integer;
begin
  Result := False;
  iRecords := 0;
  try
    FQuery := FConexao.ReturnQuery;
    iRecords := FQuery.ExecSQL(CRUDDELETE, [FID]);
    Result := (iRecords > 0);
  finally
    FQuery.Connection.Connected := false;
  end;
end;

function TTravelControl.GetFieldsParam(var aParam: array of variant): boolean;
var
  i: integer;
begin
  Result := False;
  for i := 0 to Pred(FQuery.FieldCount) do
  begin
    aParam[i] := FQuery.FieldByName(FFieldsQuery[i]).Value;
  end;
  Result := True;
end;

function TTravelControl.GetValueField(sField, sKey, sKeyValue: String): String;
begin
  try
    Result := '';
    FQuery := FConexao.ReturnQuery();
    if not sKeyValue.IsEmpty then
    begin
      FQuery.SQL.Text := 'select ' + sField + ' from ' + TABLENAME + ' where ' + sKey + ' = ' + sKeyValue;
      FQuery.Open();
      if not FQuery.IsEmpty then Result := FQuery.FieldByName(sField).AsString;
    end;
  finally
    FQuery.Connection.Connected := False;
  end;
end;

function TTravelControl.Insert: boolean;
var
  iRecords : integer;
begin
  Result := False;
  iRecords := 0;
  try
    FQuery := FConexao.ReturnQuery;
    iRecords := FQuery.ExecSQL(CRUDINSERT,[FSM, FData, FCliente, FOperacao, FPlacaVeiculo,
      FMotorista, FKMSaida, FHoraSaida, FKMRetorno, FHoraRetorno, FKMRodado,
      FServico, FObservacao, FValorServico, FStatus, FLog]);
    Result := (iRecords > 0);
  finally
    FQuery.Connection.Connected := false;
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
  Result := True;
end;

function TTravelControl.Update: boolean;
begin
  Result := False;
  try
    FCRUD := TDAOCRUDRoutines.Create;
    FCRUD.CRUDSentence := CRUDUPDATE;
    Result := FCRUD.UpdateExec([FSM, FData, FCliente, FOperacao, FPlacaVeiculo, FMotorista,
    FKMSaida, FHoraSaida, FKMRetorno, FHoraRetorno, FKMRodado, FServico,
    FObservacao, FValorServico, FStatus, FLog, FID]);
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
  Result := True;
end;

end.
