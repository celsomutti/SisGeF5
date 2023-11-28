unit Model.SisGeFDestinationTravel;

interface

uses Common.ENum, FireDAC.Comp.Client, System.SysUtils,
  Common.Utils, System.DateUtils, DAO.SisGeFCRUDRoutines, System.Variants;

type
  TDestinationTravel = class
  private
    FCRUD : TDAOCRUDRoutines;
    FViagem: integer;
    FDescricao: string;
    FID: integer;
    FLog: string;
    FBase: integer;
    FAction: TAcao;
    FQuery: TFDQuery;
    FInsertFields: array of variant;
    FUpdateFields: array of variant;
    FFieldsQuery: array of variant;

    function GetId(): integer;
    function Insert(): boolean;
    function Update(): boolean;
    function Delete(): boolean;
  public
    property ID: integer read FID write FID;
    property Descricao: string read FDescricao write FDescricao;
    property Base: integer read FBase write FBase;
    property Log: string read FLog write FLog;
    property Viagem: integer read FViagem write FViagem;
    property Acao: TAcao read FAction write FAction;
    property Query: TFDQuery read FQuery write FQuery;

    constructor Create;
    function Save(): boolean;
    function Search(aParam: array of variant): boolean;
    function SetupFieldsData(aParam: array of variant): boolean;
    function SetupFieldsClass(): boolean;
  end;

  const
    TABLENAME = 'trs_destinos';
    CRUDSELECT = 'SELECT COD_DESTINO, DES_DESTINO, COD_AGENTE, DES_LOG, ID_CONTROLE ' +
                 'FROM ' + TABLENAME;
    CRUDINSERT = 'INSERT INTO ' + TABLENAME + ' (COD_DESTINO, DES_DESTINO, COD_AGENTE, DES_LOG, ID_CONTROLE) ' +
                 'VALUES (:COD_DESTINO, :DES_DESTINO, :COD_AGENTE, :DES_LOG, :ID_CONTROLE)';
    CRUDUPDATE = 'UPDATE ' + TABLENAME  + ' SET DES_DESTINO = :DES_DESTINO, COD_AGENTE = :COD_AGENTE, DES_LOG = :DES_LOG,' +
                 'ID_CONTROLE = :ID_CONTROLE ' +
                 'WHERE COD_DESTINO = :COD_DESTINO ';
    CRUDDELETE = 'DELETE FROM ' + TABLENAME;
    CRUDGETID  = 'select coalesce(max(COD_DESTINO),0) + 1 from ' + TABLENAME;


  implementation

{ TDestinationTravel }

constructor TDestinationTravel.Create;
begin
  FFieldsQuery := ['COD_DESTINO', 'DES_DESTINO', 'COD_AGENTE', 'DES_LOG', 'ID_CONTROLE'];
end;

function TDestinationTravel.Delete: boolean;
begin
  Result := False;
  try
    FCRUD := TDAOCRUDRoutines.Create;
    if FID = -1 then
      FCRUD.CRUDSentence := CRUDDELETE + ' WHERE ID_CONTROLE = ' + FViagem.ToString
    else
      FCRUD.CRUDSentence := CRUDDELETE + ' WHERE COD_DESTINO = ' + FID.ToString;
    Result := FCRUD.UpdateExec([FID]);
  finally
    FCRUD.free;
  end;
end;

function TDestinationTravel.GetId: integer;
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

function TDestinationTravel.Insert: boolean;
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

function TDestinationTravel.Save: boolean;
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

function TDestinationTravel.Search(aParam: array of variant): boolean;
begin
  Result := False;
  try
    FCRUD := TDAOCRUDRoutines.Create;
    FCRUD.CRUDSentence := CRUDSELECT;
    FCRUD.TableName := TABLENAME;

    if FCRUD.Search(aParam) then
    begin
      if not FCRUD.Query.IsEmpty then
      begin
        FQuery := FCRUD.Query;
        Result := True;
      end
      else
      begin
        Result := false;
      end;
    end;
  finally
    FCRUD.free;
  end;
end;

function TDestinationTravel.SetupFieldsClass: boolean;
begin
  Result := False;
  FID := FQuery.FieldByName(FFieldsQuery[0]).Value;
  FDescricao := FQuery.FieldByName(FFieldsQuery[1]).Value;
  FBase := FQuery.FieldByName(FFieldsQuery[2]).Value;
  FLog := FQuery.FieldByName(FFieldsQuery[3]).Value;
  FViagem := FQuery.FieldByName(FFieldsQuery[4]).Value;
  Result := True;
end;

function TDestinationTravel.SetupFieldsData(aParam: array of variant): boolean;
begin
  FID := aParam[0];
  FDescricao := aParam[1];
  FBase := aParam[2];
  FLog := aParam[3];
  FViagem := aParam[4];
  if FAction = tacIncluir then
  begin
    FID := GetId;
    FInsertFields := [FID, FDescricao, FBase, Log, Viagem]
  end
  else if FAction = tacAlterar then
  begin
    FUpdateFields := [FDescricao, FBase, Log, Viagem, FID];
  end;
end;

function TDestinationTravel.Update: boolean;
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
