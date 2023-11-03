unit DAO.DestinosTransporte;

interface

uses FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Control.Sistema, Model.DestinosTransportes;

type
  TDestinosTransporteDAO = class
  private
    FConexao: TConexao;
  public
    constructor Create;
    function Insert(aDestinos: TDestinosTransporte): Boolean;
    function Update(aDestinos: TDestinosTransporte): Boolean;
    function Delete(aDestinos: TDestinosTransporte): Boolean;
    function Find(aParam: array of Variant): TFDQuery;
  end;
const
  TABLENAME = 'trs_destinos';

implementation

{ tDestinosTransporteDAO }

constructor TDestinosTransporteDAO.Create;
begin
  FConexao := TConexao.Create;
end;

function tDestinosTransporteDAO.Delete(aDestinos: TDestinosTransporte): Boolean;
var
  sSQL: String;
  sWhere: String;
  FDQuery : TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery;
    Result := False;
    FDQuery.ExecSQL('DELETE FROM ' + TABLENAME + 'WHERE COD_DESTINO = :PCOD_DESTINO',
                   [aDestinos.Destino]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function tDestinosTransporteDAO.Find(aParam: array of Variant): TFDQuery;
var
  FdQuery : TFDQuery;
begin
  if Length(aParam) <= 1 then Exit;
  FDQuery := FConexao.ReturnQuery;
  FdQuery.SQL.Add('SELECT * FROM ' + TABLENAME);
  if aParam[0] = 'CODIGO' then
  begin
    FDQuery.SQL.Add('WHERE COD_DESTINO = :CODIGO');
    FDQuery.ParamByName('CODIGO').AsInteger := aParam[1];
  end;
  if aParam[0] = 'DESCRICAO' then
  begin
    FDQuery.SQL.Add('WHERE DES_DESTINO = :DESTINO');
    FDQuery.ParamByName('DESTINO').AsString := aParam[1];
  end;
  if aParam[0] = 'FILTRO' then
  begin
    FDQuery.SQL.Add('WHERE ' + aParam[1]);
  end;
  FDQuery.Open();
  Result := FDQuery;
end;

function tDestinosTransporteDAO.Insert(aDestinos: TDestinosTransporte): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('INSERT INTO ' + TABLENAME + '(COD_DESTINO, DES_DESTINO, DES_LOG) VALUES (:PCOD_DESTINO, :PDES_DESTINO, ' +
    ':PDES_LOG)',
    [aDestinos.Destino, aDestinos.Descricao, aDestinos.Log]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function tDestinosTransporteDAO.Update(aDestinos: TDestinosTransporte): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('UPDATE ' + TABLENAME + 'SET DES_DESTINO = :PDES_DESTINO, DES_LOG = :PDES_LOG WHERE COD_DESTINO = :PCOD_DESTINO',
    [aDestinos.Descricao, aDestinos.Log, aDestinos.Destino]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

end.



