unit DAO.Estados;

interface

uses FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Control.Sistema, Model.Estados;

type
  TEstadosDAO = class
  private
    FConexao: TConexao;
  public
    constructor Create;
    destructor Destroy;
    function Inserir(aEstados: TEstados): Boolean;
    function Alterar(aEstados: TEstados): Boolean;
    function Excluir(aEsTados: TEstados): Boolean;
    function EstadoExiste(aEstados: TEstados): Boolean;
    function Pesquisar(aParam: array of variant): TFDQuery;
  end;
const
  TABLENAME = 'cadastro_estados';

implementation

{ TEstadosDAO }


function TEstadosDAO.Alterar(aEstados: TEstados): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('update ' + TABLENAME + 'set nom_estado = :pnom_estado, cep_inicial = :pcep_inicial, cep_final = :pcep_final, ' +
    'des_log = :pdes_log ' +
    'where uf_estado = :puf_estado;', [aEstados.Nome, aEstados.CEPInicial, aEstados.CEPFinal, aEstados.LOG, aEstados.UF]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TEstadosDAO.Create;
begin
  FConexao := TConexao.Create;
end;

destructor TEstadosDAO.Destroy;
begin
  FConexao.Free;
end;

function TEstadosDAO.EstadoExiste(aEstados: TEstados): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('select * from ' + TABLENAME +
    'where uf_estado = :puf_estado;', [aEstados.UF]);
    if FDQuery.IsEmpty then Exit;
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TEstadosDAO.Excluir(aEsTados: TEstados): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME +
    'where uf_estado = :puf_estado;', [aEstados.UF]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TEstadosDAO.Inserir(aEstados: TEstados): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('insert into ' + TABLENAME + '(uf_estado, nom_estado, cep_inicial, cep_final, des_log) values' +
    '(:puf_estado, :pnom_estado, :pcep_inicial, :pcep_final, :pdes_log);',
    [aEstados.UF, aEstados.Nome, aEstados.CEPInicial, aEstados.CEPFinal, aEstados.LOG]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TEstadosDAO.Pesquisar(aParam: array of variant): TFDQuery;
var
  FDQuery : TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery;
  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'UF' then
  begin
    FDQuery.SQL.Add('where uf_estado = :puf_estado');
    FDQuery.ParamByName('puf_estado').AsString := aParam[1];
  end
  else if aParam[0] = 'NOME' then
  begin
    FDQuery.SQL.Add('where nom_estado = :pnom_estado');
    FDQuery.ParamByName('pnom_estado').AsString := aParam[1];
  end
  else if aParam[0] = 'CEP' then
  begin
    FDQuery.SQL.Add('where cep_inicial <= :pcep and cep_final >= :pcep');
    FDQuery.ParamByName('pcep').AsString := aParam[1];
  end
  else if aParam[0] = 'FAIXA' then
  begin
    FDQuery.SQL.Add('where cep_inicial <= :pcep_inicial and cep_final >= :pcep_final');
    FDQuery.ParamByName('pcep_inicial').AsString := aParam[1];
    FDQuery.ParamByName('pcep_final').AsString := aParam[2];
  end
  else if aParam[0] = 'APOIO' then
  begin
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT  ' + aParam[1] + ' FROM ' + TABLENAME + ' ' + aParam[2]);
  end;
  FDQuery.Open;
  Result := FDQuery;
end;

end.
