unit DAO.Modulos;

interface

uses FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Model.Modulos, Control.Sistema;

type
  TModulosDAO = class
  private
    FConexao : TConexao;
  public
    constructor Create;
    function Inserir(AModulos: TModulos): Boolean;
    function Alterar(AModulos: TModulos): Boolean;
    function Excluir(AModulos: TModulos): Boolean;
    function Pesquisar(aParam: array of variant): TFDQuery;
  end;
  const
    TABLENAME = 'seguranca_modulos';

implementation

{ TModulosDAO }

function TModulosDAO.Alterar(AModulos: TModulos): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('UPDATE ' + TABLENAME + ' SET DES_MODULO = :PDES_MODULO WHERE COD_MODULO = :PCOD_MODULO AND ' +
                    'COD_SISTEMA = :PCOD_SISTEMA',
                   [AModulos.Descricao, AModulos.Codigo, AModulos.Sistema]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TModulosDAO.Create;
begin
  FConexao := TConexao.Create;
end;

function TModulosDAO.Excluir(AModulos: TModulos): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery;
    Result := False;
    FDQuery.ExecSQL('DELETE FROM ' + TABLENAME + 'WHERE COD_MODULO = :PCOD_MODULO AND COD_SISTEMA = :PCOD_SISTEMA',
                   [AModulos.Codigo, AModulos.Sistema]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TModulosDAO.Inserir(AModulos: TModulos): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('INSERT INTO ' + TABLENAME + ' (COD_MODULO, COD_SISTEMA, DES_SISTEMA) VALUES ' +
                    '(:PCOD_MODULO, :PCOD_SISTEMA, :PDES_MODULO)',
                    [AModulos.Codigo, AModulos.Sistema, AModulos.Descricao]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TModulosDAO.Pesquisar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;

  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'CODIGO' then
  begin
    FDQuery.SQL.Add('WHERE COD_MODULO = :PCOD_MODULO');
    FDQuery.ParamByName('PCOD_MODULO').AsInteger := aParam[1];
  end;
  if aParam[0] = 'SISTEMA' then
  begin
    FDQuery.SQL.Add('WHERE COD_SISTEMA = :PCOD_SISTEMA');
    FDQuery.ParamByName('PCOD_SISTEMA').AsInteger := aParam[1];
  end;
  if aParam[0] = 'MODULO' then
  begin
    FDQuery.SQL.Add('WHERE COD_SISTEMA = :PCOD_SISTEMA AND COD_MODULO = :PCOD_MODULO');
    FDQuery.ParamByName('PCOD_SISTEMA').AsInteger := aParam[1];
    FDQuery.ParamByName('PCOD_MODULO').AsInteger := aParam[2];
  end;
  if aParam[0] = 'DESCRICAO' then
  begin
    FDQuery.SQL.Add('WHERE DES_MODULO = :PDES_MODULO');
    FDQuery.ParamByName('PDES_MODULO').AsString := aParam[1];
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
