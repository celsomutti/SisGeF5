unit DAO.SisGeFCRUDRoutines;

interface

uses Common.ENum, FireDAC.Comp.Client, DAO.Conexao, System.SysUtils,
  Common.Utils, System.DateUtils;

  type
    TDAOCRUDRoutines = class
    private
      FConn: TConexao;
      FCRUDSentence: string;
      FQuery: TFDQuery;
      FTableName: string;
    public
      property Query: TFDQuery read FQuery write FQuery;
      property CRUDSentence: string read FCRUDSentence write FCRUDSentence;
      property TableName: string read FTableName write FTableName;

      constructor Create;

      function UpdateExec(FValuesParam: array of variant): boolean;
      function Search(FValuesParam: array of variant): boolean;
      function GetId: integer;
    end;

implementation

{ DAOCRUDRoutines }

constructor TDAOCRUDRoutines.Create;
begin
  FConn := TConexao.Create;
end;

function TDAOCRUDRoutines.GetId: integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConn.ReturnQuery();
    FDQuery.Open(FCRUDSentence);
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

function TDAOCRUDRoutines.Search(FValuesParam: array of variant): boolean;
begin
  Result := False;
  FQuery := FConn.ReturnQuery();
  FQuery.SQL.Clear;
  FQuery.SQL.Add(FCRUDSentence);
  if FValuesParam[0] = 'FILTRO' then
  begin
    FQuery.SQL.Add('where ' + FValuesParam[1]);
  end;
  if FValuesParam[0] = 'APOIO' then
  begin
    FQuery.SQL.Clear;
    FQuery.SQL.Add('select  ' + FValuesParam[1] + ' from ' + FTableName + ' ' + FValuesParam[2]);
  end;
  if FValuesParam[0] = 'SQL' then
  begin
    FQuery.SQL.Clear;
    FQuery.SQL.Add(FValuesParam[1]);
  end;
  FQuery.Open();
  if FQuery.IsEmpty then
  begin
    Exit;
  end;
  Result := True;
end;

function TDAOCRUDRoutines.UpdateExec(FValuesParam: array of variant): boolean;
var
  FDQuery: TFDQuery;
  iRecords: integer;
begin
  Result := false;
  try
    FDQuery := FConn.ReturnQuery;
    iRecords := FDQuery.ExecSQL(FCRUDSentence, FValuesParam);
    Result := (iRecords > 0);
  finally
    FDQuery.Connection.Connected := False;
  end;
end;

end.
