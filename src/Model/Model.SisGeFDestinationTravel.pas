unit Model.SisGeFDestinationTravel;

interface

uses Common.ENum, FireDAC.Comp.Client, System.SysUtils,
  Common.Utils, System.DateUtils, DAO.SisGeFCRUDRoutines;

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

    function GetId(): integer;
    function Insert(): boolean;
    function Update(): boolean;
    function Delete(): boolean;
    procedure SetId(const Value: integer);
  public
    property ID: integer read FID write SetId;
    property Descricao: string read FDescricao write FDescricao;
    property Base: integer read FBase write FBase;
    property Log: string read FLog write FLog;
    property Viagem: integer read FViagem write FViagem;
    property Acao: TAcao read FAction write FAction;
    property Query: TFDQuery read FQuery write FQuery;

    constructor Create;
    function Save(): boolean;
    function Search(aParam: array of variant): boolean;
  end;

  const
    TABLENAME = 'trs_destinos';
    CRUDSELECT = 'SELECT ICOD_DESTINO, DES_DESTINO, COD_AGENTE, DES_LOG, ID_CONTROLE ' +
                 'FROM ' + TABLENAME;
    CRUDINSERT = 'INSERT INTO ' + TABLENAME + ' (COD_DESTINO, DES_DESTINO, COD_AGENTE, DES_LOG, ID_CONTROLE) ' +
                 'VALUES (:COD_DESTINO, :DES_DESTINO, :COD_AGENTE, :DES_LOG, :ID_CONTROLE)';
    CRUDUPDATE = 'UPDATE ' + TABLENAME  + ' SET DES_DESTINO = :DES_DESTINO, COD_AGENTE = :COD_AGENTE, DES_LOG = :DES_LOG,' +
                 'ID_CONTROLE = :ID_CONTROLE ' +
                 'WHERE COD_DESTINO = :COD_DESTINO ';
    CRUDDELETE = 'DETELE FROM ' + TABLENAME + ' WHERE COD_DESTINO = :COD_DESTINO';
    CRUDGETID  = 'select coalesce(max(COD_DESTINO),0) + 1 from ' + TABLENAME;


  implementation

{ TDestinationTravel }

constructor TDestinationTravel.Create;
begin
  FInsertFields := [FID, FDescricao, FBase, Log, Viagem];
  FUpdateFields := [FDescricao, FBase, Log, Viagem, FID];
end;

function TDestinationTravel.Delete: boolean;
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

procedure TDestinationTravel.SetId(const Value: integer);
begin
  FID := Value;
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
