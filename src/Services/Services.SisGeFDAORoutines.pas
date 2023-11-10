unit Services.SisGeFDAORoutines;

interface

uses FireDAC.Comp.Client, System.SysUtils,
  Common.Utils, System.DateUtils, DAO.SisGeFCRUDRoutines;

type
  TServicesDAORoutines = class
  private
    FCRUD: TDAOCRUDRoutines;
    FTableName: string;
    FQuery: TFDQuery;
    FCRUDSentence: string;
  public
    property CRUDSentence: string read FCRUDSentence write FCRUDSentence;
    property TableName: string read FTableName write FTableName;
    property Query: TFDQuery read FQuery write FQuery;

    constructor Create;
    function ExecSentence(aParam: array of variant): boolean;

  end;

implementation

{ TServicesDAORoutines }

constructor TServicesDAORoutines.Create;
begin
  FCRUD := TDAOCRUDRoutines.Create;
  FCRUD.TableName := FTableName;
  FCRUD.CRUDSentence := FCRUDSentence;
end;

function TServicesDAORoutines.ExecSentence(aParam: array of variant): boolean;
begin
  Result := False;
  if FCRUD.Search(aParam) then
  begin
    FQuery := FCRUD.Query;
    Result := True;
  end;
end;

end.

