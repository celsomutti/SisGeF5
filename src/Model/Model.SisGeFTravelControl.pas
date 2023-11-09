unit Model.SisGeFTravelControl;

interface

uses Common.ENum, FireDAC.Comp.Client, System.SysUtils,
  Common.Utils, System.DateUtils, DAO.SisGeFCRUDRoutines;

type
  TTravelControl = class
  private
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

function TTravelControl.Insert: boolean;
begin
  Result := False;
  try
    FCRUD := TDAOCRUDRoutines.Create;
    FCRUD.CRUDSentence := CRUDINSERT;
    Result := FCRUD.UpdateExec(FInsertFields);
  finally
    FCRUD.free;
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
  try
    FCRUD := TDAOCRUDRoutines.Create;
    FCRUD.CRUDSentence := CRUDSELECT;
    FCRUD.TableName := TABLENAME;
    FQuery.Active := False;
    if FCRUD.Search(aParam) then
    begin
      if not FCRUD.Query.IsEmpty then
      begin
        FQuery := FCRUD.Query;
        FCRUD.Query.Connection.Connected := False;
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

end.
