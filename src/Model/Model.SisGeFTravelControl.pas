unit Model.SisGeFTravelControl;

interface

uses Common.ENum, FireDAC.Comp.Client, DAO.Conexao, System.SysUtils,
  Common.Utils, System.DateUtils;

type
  TTravelControl = class
  private
    Fconn: TConexao;
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

    constructor Create;
    function Save(): boolean;
    function Search(aParam: array of variant): boolean;
  end;

  const
    TABLENAME = 'tbcontroletransporte';
    CRUDSELECT = 'SELECT ID_CONTROLE, NUM_SM, DAT_TRANSPORTE, COD_CLIENTE, DES_OPERACAO, DES_PLACA, COD_MOTORISTA, ' +
                 'QTD_KM_SAIDA, HOR_SAIDA, QTD_KM_RETORNO, HOR_RETORNO, QTD_KM_RODADO, DES_SERVICO, DES_OBS, VAL_SERVICO, '+
                 'COD_STATUS, DES_LOG ' +
                 'FROM ' + TABLENAME;
    CRUDINSERT = 'INSERT INTO ' + TABLENAME + ' (NUM_SM, DAT_TRANSPORTE, COD_CLIENTE, DES_OPERACAO, DES_PLACA, COD_MOTORISTA, ' +
                 'QTD_KM_SAIDA, HOR_SAIDA, QTD_KM_RETORNO, HOR_RETORNO, QTD_KM_RODADO, DES_SERVICO, DES_OBS, VAL_SERVICO, '+
                 'COD_STATUS, DES_LOG) ' +
                 'VALUES (:NUM_SM, :DAT_TRANSPORTE, :COD_CLIENTE, :DES_OPERACAO, :DES_PLACA, :COD_MOTORISTA, ' +
                 'QTD_KM_SAIDA, :HOR_SAIDA, :QTD_KM_RETORNO, :HOR_RETORNO, :QTD_KM_RODADO, :DES_SERVICO, :DES_OBS, :VAL_SERVICO, :'+
                 'COD_STATUS, :DES_LOG)';
    CRUDUPDATE = 'UPDATE ' + TABLENAME  + ' SET NUM_SM = :NUM_SM, DAT_TRANSPORTE = :DAT_TRANSPORTE, COD_CLIENTE = :COD_CLIENTE, ' +
                 'DES_OPERACAO = :DES_OPERACAO, DES_PLACA = :DES_PLACA, COD_MOTORISTA = :COD_MOTORISTA, ' +
                 'QTD_KM_SAIDA = :QTD_KM_SAIDA, HOR_SAIDA = :HOR_SAIDA, QTD_KM_RETORNO = :QTD_KM_RETORNO, ' +
                 'HOR_RETORNO = :HOR_RETORNO, QTD_KM_RODADO = :QTD_KM_RODADO, DES_SERVICO = :DES_SERVICO, ' +
                 'DES_OBS = :DES_OBS, VAL_SERVICO = :VAL_SERVICO, COD_STATUS = :COD_STATUS, DES_LOG = :DES_LOG ' +
                 'WHERE ID_CONTROLE = :ID_CONTROLE ';
    CRUDDELETE = 'DETELE FROM ' + TABLENAME + ' WHERE ID_CONTROLE = :ID_CONTROLE';

implementation

{ TTravelControl }

constructor TTravelControl.Create;
begin
  FInsertFields := [FSM, FData, FCliente, FOperacao, FPlacaVeiculo, FMotorista, FKMSaida, FHoraSaida,
  FKMRetorno, FHoraRetorno, FKMRodado, FServico, FObservacao, FValorServico, FStatus, FLog];
  FUpdateFields := [FSM, FData, FCliente, FOperacao, FPlacaVeiculo, FMotorista, FKMSaida, FHoraSaida,
  FKMRetorno, FHoraRetorno, FKMRodado, FServico, FObservacao, FValorServico, FStatus, FLog, FID];
  FConn := TConexao.Create;
end;

function TTravelControl.Delete: boolean;
var
  FDQuery : TFDQuery;
  iRecords: integer;
begin
  try
    FDQuery := FConn.ReturnQuery;
    iRecords := FDQuery.ExecSQL(CRUDDELETE,[FID]);
    Result := (iRecords > 0);
  finally
    FDQuery.Connection.Connected := False;
  end;
end;

function TTravelControl.Insert: boolean;
var
  FDQuery: TFDQuery;
  iRecords: integer;
begin
  Result := false;
  try
    FDQuery := FConn.ReturnQuery;
    iRecords := FDQuery.ExecSQL(CRUDINSERT,FInsertFields);
    Result := (iRecords > 0);
  finally
    FDQuery.Connection.Connected := False;
  end;
end;

function TTravelControl.Save: boolean;
begin
  Result := false;
  case FAction of
    tacIncluir : Result := Insert();
    tacAlterar : Result := Update();
    tacExcluir : result := Delete();
    else
      Exit;
  end;
end;

function TTravelControl.Search(aParam: array of variant): boolean;
begin
  Result := False;
  FQuery := FConn.ReturnQuery();
  FQuery.SQL.Clear;
  FQuery.SQL.Add(CRUDSELECT);
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

function TTravelControl.Update: boolean;
var
  FDQuery: TFDQuery;
  iRecords: integer;
begin
  Result := false;
  try
    FDQuery := FConn.ReturnQuery;
    iRecords := FDQuery.ExecSQL(CRUDUPDATE,FUpdateFields);
    Result := (iRecords > 0);
  finally
    FDQuery.Connection.Connected := False;
  end;
end;

end.
