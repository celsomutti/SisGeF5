unit DAO.TiposVerbasExpressas;

interface

uses FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Control.Sistema, Model.TiposVerbasExpressas;

type
  TTiposVerbasExpressasDAO = class
  private
    FConexao : TConexao;
  public
    constructor Create();
    function Insert(aTipos: TTiposVerbasExpressas): Boolean;
    function Update(aTipos: TTiposVerbasExpressas): Boolean;
    function Delete(aTipos: TTiposVerbasExpressas): Boolean;
    function Localizar(aParam: Array of variant): TFDQuery;
  end;
const
  TABLENAME = 'expressas_tipos_verbas';

implementation

{ TTiposVerbasExpressasDAO }

constructor TTiposVerbasExpressasDAO.Create;
begin
  FConexao := TConexao.Create;
end;

function TTiposVerbasExpressasDAO.Delete(aTipos: TTiposVerbasExpressas): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where cod_tipo = :pcod_tipoS', [aTipos.Codigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TTiposVerbasExpressasDAO.Insert(aTipos: TTiposVerbasExpressas): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('insert into ' + TABLENAME  + ' (cod_tipo, des_tipo, des_colunas) ' +
                    'values ' +
                    '(:pcod_tipo, :pdes_tipo, :pdes_colunas);',
                    [ATipos.Codigo, ATipos.Descricao, ATipos.Colunas]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TTiposVerbasExpressasDAO.Localizar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  if Length(aParam) < 2 then Exit;
  FDQuery := FConexao.ReturnQuery;
  FDQuery.SQL.Clear;
  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'CODIGO' then
  begin
    FDQuery.SQL.Add('where cod_tipo = :pcod_tipo');
    FDQuery.ParamByName('pcod_tipo').AsInteger := aParam[1];
  end;
  if aParam[0] = 'DESCRICAO' then
  begin
    FDQuery.SQL.Add('where des_tipo like :pdes_tipo');
    FDQuery.ParamByName('pdes_tipo').AsInteger := aParam[1];
  end;
  if aParam[0] = 'FILTRO' then
  begin
    FDQuery.SQL.Add('where ' + aParam[1]);
  end;
  if aParam[0] = 'APOIO' then
  begin
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('select  ' + aParam[1] + ' from ' + TABLENAME + ' ' + aParam[2]);
  end;
  FDQuery.Open();
  Result := FDQuery;
end;

function TTiposVerbasExpressasDAO.Update(aTipos: TTiposVerbasExpressas): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('update ' + TABLENAME  + 'set ' +
                    'cod_tipo = :pcod_tipo, des_tipo = :pdes_tipo, des_colunas = :pdes_colunas ' +
                    'where ' +
                    'cod_tipo = :pcod_tipo;',
                    [ATipos.Descricao, ATipos.Colunas, ATipos.Codigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

end.
