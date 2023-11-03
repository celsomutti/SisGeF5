unit DAO.ControleBaixasTFO;

interface

uses FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Control.Sistema, Model.ControleBaixasTFO;

type
  TControleBaixaTFODAO = class
  private
    FConexao: TConexao;
  public
    constructor Create;
    function Insert(aControle: TControleBaixasTFO): Boolean;
    function Update(aControle: TControleBaixasTFO): Boolean;
    function Detele(aControle: TControleBaixasTFO): Boolean;
    function Find(aParam:array of Variant): TFDQuery;
  end;
  const
    TABLENAME = 'exp_controle_baixas_TFO';


implementation

{ TControleBaixaTFODAO }

constructor TControleBaixaTFODAO.Create;
begin
  FConexao := TConexao.Create;
end;

function TControleBaixaTFODAO.Detele(aControle: TControleBaixasTFO): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery;
    Result := False;
    FDQuery.ExecSQL('DELETE FROM ' + TABLENAME + 'WHERE ID_CONTROLE = :PID_CONTROLE',
                   [aControle.Id]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TControleBaixaTFODAO.Find(aParam: array of Variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;

  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'ID' then
  begin
    FDQuery.SQL.Add('WHERE ID_CONTROLE = :PID_CONTROLE');
    FDQuery.ParamByName('PID_CONTROLE').AsInteger := aParam[1];
  end;
  if aParam[0] = 'DATA' then
  begin
    FDQuery.SQL.Add('WHERE DAT_CONTROLE = :PDAT_CONTROLE');
    FDQuery.ParamByName('PDAT_CONTROLE').AsDateTime := aParam[1];
  end;
  if aParam[0] = 'STATUS' then
  begin
    FDQuery.SQL.Add('WHERE DOM_STATUS = :PDOM_STATUS');
    FDQuery.ParamByName('PDOM_STATUS').AsInteger := aParam[1];
  end;
  if aParam[0] = 'FILTRO' then
  begin
    FDQuery.SQL.Add('WHERE ' + aParam[1]);
  end;
  if aParam[0] = 'APOIO' then
  begin
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT  ' + aParam[1] + ' FROM ' + TABLENAME + ' ' + aParam[2]);
  end;
  FDQuery.Open();
  Result := FDQuery;
end;

function TControleBaixaTFODAO.Insert(aControle: TControleBaixasTFO): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('INSERT INTO ' + TABLENAME + ' (ID_CONTROLE, DAT_CONTROLE, DOM_STATUS, DES_LOG) VALUES ' +
                    '(:PID_CONTROLE, :PDAT_CONTROLE, :PDOM_STATUS, :PDES_LOG)',
                    [aControle.Id, aControle.Data, aControle.Status, aControle.Log]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TControleBaixaTFODAO.Update(aControle: TControleBaixasTFO): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('UPDATE ' + TABLENAME + ' SET DAT_CONTROLE = :PDAT_CONTROLE, DOM_STATUS = :PDOM_STATUS, DES_LOG = :PDES_LOG ' +
                    'WHERE ID_CONTROLE = :PID_CONTROLE',
                   [aControle.Data, aControle.Status, aControle.Log, aControle.Id]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

end.
