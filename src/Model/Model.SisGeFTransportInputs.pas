unit Model.SisGeFTransportInputs;

interface

uses Common.ENum, FireDAC.Comp.Client, System.SysUtils,
  Common.Utils, System.DateUtils, DAO.SisGeFCRUDRoutines;

  type
    TTransportInputs = class
    private
      FCRUD : TDAOCRUDRoutines;
      FDescricao: string;
      FID: integer;
      FLog: string;
      FUnidade: string;
      FInsertFields: array of variant;
      FUpdateFields: array of variant;
      FAction: TAcao;
      FQuery: TFDQuery;

      function GetId(): integer;
      function Insert(): boolean;
      function Update(): boolean;
      function Delete(): boolean;
      procedure SetId(const Value: integer);
    public
      property ID: integer read FID write SetId;
      property Descricao: string read FDescricao write FDescricao;
      property Unidade: string read FUnidade write FUnidade;
      property Log: string read FLog write FLog;
      property Acao: TAcao read FAction write FAction;
      property Query: TFDQuery read FQuery write FQuery;


      constructor Create;
      function Save(): boolean;
      function Search(aParam: array of variant): boolean;
    end;

  const
    TABLENAME = 'tbinsumostransportes';
    CRUDSELECT = 'SELECT ID_INSUMO, DES_INSUMO, DES_UNIDADE, DES_LOG ' +
                 'FROM ' + TABLENAME;
    CRUDINSERT = 'INSERT INTO ' + TABLENAME + ' (ID_INSUMO, DES_INSUMO, DES_UNIDADE, DES_LOG) ' +
                 'VALUES (:ID_INSUMO, :DES_INSUMO, :DES_UNIDADE, :DES_LOG)';
    CRUDUPDATE = 'UPDATE ' + TABLENAME  + ' SET  DES_INSUMO = :DES_INSUMO, DES_UNIDADE = :DES_UNIDADE, DES_LOG = :DES_LOG' +
                 'WHERE ID_INSUMO = :ID_INSUMO ';
    CRUDDELETE = 'DETELE FROM ' + TABLENAME + ' WHERE ID_INSUMO = :ID_INSUMO';
    CRUDGETID  = 'select coalesce(max(ID_INSUMO),0) + 1 from ' + TABLENAME;
implementation

{ TTransportInputs }

constructor TTransportInputs.Create;
begin
  FInsertFields := [FID, FDescricao, FUnidade, FLog];
  FUpdateFields := [FDescricao, FUnidade, FLog, FID];
end;

function TTransportInputs.Delete: boolean;
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

function TTransportInputs.GetId: integer;
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

function TTransportInputs.Insert: boolean;
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

function TTransportInputs.Save: boolean;
begin
  Result := false;
  case FAction of
    tacIncluir : Result := Insert();
    tacAlterar : Result := Update();
    tacExcluir : Result := Delete();
    else
      Exit;
  end;
end;

function TTransportInputs.Search(aParam: array of variant): boolean;
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
      end;
    end;
  finally
    FCRUD.free;
  end;
end;

procedure TTransportInputs.SetId(const Value: integer);
begin
  if FAction = tacIncluir then
    FID := Self.GetId
  else
    FID := Value;
end;

function TTransportInputs.Update: boolean;
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
