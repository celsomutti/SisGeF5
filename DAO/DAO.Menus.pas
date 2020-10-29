unit DAO.Menus;

interface

uses FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Control.Sistema, Model.Menus;

  type TMenusDAO = class
  private
    FConexao: TConexao;
  public
    constructor Create;
    function Inserir(AMenus: TMenus): Boolean;
    function Alterar(AMenus: TMenus): Boolean;
    function Excluir(AMenus: TMenus): Boolean;
    function Pesquisar(aParam: array of variant): TFDQuery;
  end;
const
  TABLENAME = 'seguranca_menus';

implementation

{ TMenusDAO }

function TMenusDAO.Alterar(AMenus: TMenus): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('UPDATE ' + TABLENAME + ' SET DES_MENU = :PDES_MENU WHERE COD_SISTEMA = :PCOD_SISTEMA ' +
                    'AND COD_MODULO = :PCOD_MODULO AND COD_MENU = :PCOD_MENU',
                   [Amenus.Descricao, AMenus.Sistema, AMenus.Modulo, AMenus.Codigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TMenusDAO.Create;
begin
  FConexao := TConexao.Create;
end;

function TMenusDAO.Excluir(AMenus: TMenus): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery;
    Result := False;
    FDQuery.ExecSQL('DELETE FROM ' + TABLENAME + 'WHERE COD_SISTEMA = :PCOD_SISTEMA AND COD_MODULO = :PCOD_MODULO AND ' +
                    'COD_MENU = :PCOD_MENU',
                   [AMenus.Sistema, AMenus.Modulo, AMenus.Codigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TMenusDAO.Inserir(AMenus: TMenus): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('INSERT INTO ' + TABLENAME + ' (COD_SISTEMA, COD_MODULO, COD_MENU, DES_MENU) VALUES ' +
                    ':P(COD_SISTEMA, :PCOD_MODULO, :PCOD_MENU, :PDES_MENU)',
                    [AMenus.Sistema, AMenus.Modulo, AMenus.Codigo, AMenus.Descricao]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TMenusDAO.Pesquisar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;

  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'MODULO' then
  begin
    FDQuery.SQL.Add('WHERE COD_MODULO = :PCOD_MODULO');
    FDQuery.ParamByName('PCOD_MODULO').AsInteger := aParam[1];
  end;
  if aParam[0] = 'SISTEMA' then
  begin
    FDQuery.SQL.Add('WHERE COD_SISTEMA = :PCOD_SISTEMA');
    FDQuery.ParamByName('PCOD_SISTEMA').AsInteger := aParam[1];
  end;
  if aParam[0] = 'CODIGO' then
  begin
    FDQuery.SQL.Add('WHERE COD_MENU = :PCOD_MENU');
    FDQuery.ParamByName('PCOD_MENU').AsInteger := aParam[1];
  end;
  if aParam[0] = 'DESCRICAO' then
  begin
    FDQuery.SQL.Add('WHERE DES_MODULO = :PDES_MODULO');
    FDQuery.ParamByName('PDES_MODULO').AsString := aParam[1];
  end;
  if aParam[0] = 'MENU' then
  begin
    FDQuery.SQL.Add('WHERE COD_SISTEMA = :PCOD_SISTEMA AND COD_MODULO = :PCOD_MODULO AND COD_MENU = :PCOD_MENU');
    FDQuery.ParamByName('PCOD_SISTEMA').AsInteger := aParam[1];
    FDQuery.ParamByName('PCOD_MODULO').AsString := aParam[2];
    FDQuery.ParamByName('PCOD_MENU').AsInteger := aParam[3];
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
