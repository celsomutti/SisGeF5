unit DAO.Sistemas;

interface

uses FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Model.Sistemas, Control.Sistema;

type
  TSistemasDAO = class
  private
    FConexao : TConexao;
  public
    constructor Create;
    function Inserir(ASistemas: TSistemas): Boolean;
    function Alterar(ASistemas: TSistemas): Boolean;
    function Excluir(ASistemas: TSistemas): Boolean;
    function Pesquisar(aParam: array of variant): TFDQuery;
  end;
const
  TABLENAME = 'seguranca_sistemas';

implementation

{ TSistemasDAO }

function TSistemasDAO.Alterar(ASistemas: TSistemas): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('UPDATE ' + TABLENAME + ' SET DES_SISTEMA = :PDES_SISTEMA WHERE COD_SISTEMA = :PCOD_SISTEMA',
                   [ASistemas.Descricao, ASistemas.Codigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TSistemasDAO.Create;
begin
  FConexao := TConexao.Create;
end;

function TSistemasDAO.Excluir(ASistemas: TSistemas): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery;
    Result := False;
    FDQuery.ExecSQL('DELETE FROM ' + TABLENAME + 'WHERE COD_SISTEMA = :PCOD_SISTEMA', [ASistemas.Codigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TSistemasDAO.Inserir(ASistemas: TSistemas): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('INSERT INTO ' + TABLENAME + ' (COD_SISTEMA, DES_SISTEMA) VALUES (:PCOD_SISTEMA, :PDES_SISTEMA)',
                   [ASistemas.Codigo, ASistemas.Descricao]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TSistemasDAO.Pesquisar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;

  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'CODIGO' then
  begin
    FDQuery.SQL.Add('WHERE COD_SISTEMA = :PCOD_SISTEMA');
    FDQuery.ParamByName('PCOD_SISTEMA').AsInteger := aParam[1];
  end;
  if aParam[0] = 'DESCRICAO' then
  begin
    FDQuery.SQL.Add('WHERE DES_SISTEMA = :PDES_SISTEMA');
    FDQuery.ParamByName('PDES_SISTEMA').AsString := aParam[1];
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

end.
