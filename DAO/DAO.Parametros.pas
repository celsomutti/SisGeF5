unit DAO.Parametros;

interface
  uses
    FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Model.Parametros, Control.Sistema;
  type
    TParametrosDAO = class
  private
    FConexao : TConexao;
  public
    constructor Create;
    function Inserir(AParametros: TParametros): Boolean;
    function Alterar(AParametros: TParametros): Boolean;
    function Excluir(AParametros: TParametros): Boolean;
    function Pesquisar(aParam: array of variant): TFDQuery;
  end;
  const
    TABLENAME = 'financeiro_parametros';

implementation


{ TParametrosDAO }

function TParametrosDAO.Alterar(AParametros: TParametros): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('UPDATE ' + TABLENAME + 'SET num_quinzena = :num_quinzena, dia_inicio_quinzena = :dia_inicio_quinzena, ' +
                    'dia_final_quinzena = :dia_final_quinzena, qtd_raio_x = :qtd_raio_x ' +
                    'WHERE id_parametro = :id_parametro;', [AParametros.Quinzena, AParametros.DiaInicio, AParametros.DiaFinal,
                    AParametros.RaioX, AParametros.ID]);
    Result := True;
  finally
    FDQuery.Free;
  end;
end;

constructor TParametrosDAO.Create;
begin
  FConexao := TSistemaControl.GetInstance().Conexao;
end;

function TParametrosDAO.Excluir(AParametros: TParametros): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where WHERE id_parametro = :id_parametro', [AParametros.ID]);
    Result := True;
  finally
    FDquery.Free;
  end;
end;

function TParametrosDAO.Inserir(AParametros: TParametros): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('insert into ' + TABLENAME  + '(id_parametro, num_quinzena, dia_inicio_quinzena, dia_final_quinzena, ' +
                    'qtd_raio_x) ' +
                    'values ' +
                    '(:id_parametro, :num_quinzena, :, :dia_final_quinzena, :qtd_raio_x);',
                    [AParametros.Quinzena, AParametros.DiaInicio, AParametros.DiaFinal,
                    AParametros.RaioX]);
    Result := True;
  finally
    FDQuery.Free;
  end;
end;

function TParametrosDAO.Pesquisar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;
  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'ID' then
  begin
    FDQuery.SQL.Add('WHERE id_parametro = :id_parametro');
    FDQuery.ParamByName('id_parametro').AsInteger := aParam[1];
  end;
  if aParam[0] = 'QUINZENA' then
  begin
    FDQuery.SQL.Add('WHERE num_quinzena = :num_quinzena');
    FDQuery.ParamByName('num_quinzena').AsInteger := aParam[1];
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
  FDQuery.Open;
  Result := FDQuery;
end;

end.
