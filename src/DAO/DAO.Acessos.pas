unit DAO.Acessos;

interface

uses FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Control.Sistema, Model.Acessos, Vcl.ActnList;

type
  TAcessosDAO = class
  private
    FConexao: TConexao;
  public
    constructor Create;
    destructor Destroy;
    function Inserir(AAcessos: TAcessos): Boolean;
    function Excluir(AAcessos: TAcessos): Boolean;
    function Pesquisar(aParam: array of variant): TFDQuery;
    function AcessoExiste(aParam: array of variant): Boolean;
    function VerificaAcesso(iMenu: Integer; iUsuario: Integer): Boolean;
    function VerificaModulo(iModulo: Integer; iUsuario: Integer): Boolean;
    function VerificaSistema(iSistema: Integer; iUsuario: Integer): Boolean;
  end;
const
  TABLENAME = 'usuarios_acessos';

implementation

{ TAcessosDAO }

function TAcessosDAO.AcessoExiste(aParam: array of variant): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    if Length(aParam) < 2 then Exit;
    FDQuery.SQL.Clear;

    FDQuery.SQL.Add('select * from ' + TABLENAME);
    FDQuery.SQL.Add('WHERE COD_SISTEMA = :PCOD_SISTEMA AND COD_MODULO = :PCOD_MODULO AND COD_MENU = :PCOD_MENU AND ' +
                    'COD_USUARIO = :PCOD_USUARIO');
    FDQuery.ParamByName('PCOD_SISTEMA').AsInteger := aParam[1];
    FDQuery.ParamByName('PCOD_MODULO').AsString := aParam[2];
    FDQuery.ParamByName('PCOD_MENU').AsInteger := aParam[3];
    FDQuery.ParamByName('PCOD_USUARIO').AsInteger := aParam[4];
    FDQuery.Open();
    Result := (not FDQuery.IsEmpty);
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;


constructor TAcessosDAO.Create;
begin
  FConexao := TConexao.Create;
end;

destructor TAcessosDAO.Destroy;
begin
  FConexao.Free;
end;

function TAcessosDAO.Excluir(AAcessos: TAcessos): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery;
    Result := False;
    if AAcessos.Sistema = -1 then
    begin
      FDQuery.ExecSQL('DELETE FROM ' + TABLENAME + ' WHERE COD_USUARIO = :PCOD_USUARIO',
                     [AAcessos.Usuario]);
    end
    else
    begin
      FDQuery.ExecSQL('DELETE FROM ' + TABLENAME + 'WHERE COD_SISTEMA = :PCOD_SISTEMA AND COD_MODULO = :PCOD_MODULO AND ' +
                      'COD_MENU = :PCOD_MENU AND COD_USUARIO = :PCOD_USUARIO',
                     [AAcessos.Sistema, AAcessos.Modulo, AAcessos.Menu, AAcessos.Usuario]);
    end;
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TAcessosDAO.Inserir(AAcessos: TAcessos): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('INSERT INTO ' + TABLENAME + ' (COD_SISTEMA, COD_MODULO, COD_MENU, COD_USUARIO) VALUES ' +
                    '(:PCOD_SISTEMA, :PCOD_MODULO, :PCOD_MENU, :PCOD_USUARIO)',
                    [AAcessos.Sistema, AAcessos.Modulo, AAcessos.Menu, AAcessos.Usuario]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TAcessosDAO.Pesquisar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  if not Assigned(FDQuery) then
  begin
    FDQuery := FConexao.ReturnQuery();
  end;
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;

  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'MODULO' then
  begin
    FDQuery.SQL.Add('WHERE COD_MODULO = :PCOD_MODULO AND COD_USUARIO = :PCOD_USUARIO');
    FDQuery.ParamByName('PCOD_MODULO').AsInteger := aParam[1];
    FDQuery.ParamByName('PCOD_USUARIO').AsInteger := aParam[2];
  end;
  if aParam[0] = 'SISTEMA' then
  begin
    FDQuery.SQL.Add('WHERE COD_SISTEMA = :PCOD_SISTEMA AND COD_USUARIO = :PCOD_USUARIO');
    FDQuery.ParamByName('PCOD_SISTEMA').AsInteger := aParam[1];
    FDQuery.ParamByName('PCOD_USUARIO').AsInteger := aParam[2];
  end;
  if aParam[0] = 'MENU' then
  begin
    FDQuery.SQL.Add('WHERE COD_MENU = :PCOD_MENU AND COD_USUARIO = :PCOD_USUARIO');
    FDQuery.ParamByName('PCOD_MENU').AsInteger := aParam[1];
    FDQuery.ParamByName('PCOD_USUARIO').AsInteger := aParam[2];
  end;
  if aParam[0] = 'USUARIO' then
  begin
    FDQuery.SQL.Add('WHERE COD_USUARIO = :PCOD_USUARIO');
    FDQuery.ParamByName('PCOD_USUARIO').AsInteger := aParam[1];
  end;
  if aParam[0] = 'ACESSO' then
  begin
    FDQuery.SQL.Add('WHERE COD_SISTEMA = :PCOD_SISTEMA AND COD_MODULO = :PCOD_MODULO AND COD_MENU = :PCOD_MENU AND ' +
                    'COD_USUARIO = :PCOD_USUARIO');
    FDQuery.ParamByName('PCOD_SISTEMA').AsInteger := aParam[1];
    FDQuery.ParamByName('PCOD_MODULO').AsString := aParam[2];
    FDQuery.ParamByName('PCOD_MENU').AsInteger := aParam[3];
    FDQuery.ParamByName('PCOD_USUARIO').AsInteger := aParam[4];
  end;
  if aParam[0] = 'FILTRO' then
  begin
    FDQuery.SQL.Add('WHERE ' + aParam[1]);
  end;
  FDQuery.Open();
  Result := FDQuery;
end;

function TAcessosDAO.VerificaAcesso(iMenu, iUsuario: Integer): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.SQL.Add('select * from ' + TABLENAME);
    FDQuery.SQL.Add('WHERE COD_MENU = :PCOD_MENU AND COD_USUARIO = :PCOD_USUARIO');
    FDQuery.ParamByName('PCOD_MENU').AsInteger := iMenu;
    FDQuery.ParamByName('PCOD_USUARIO').AsInteger := iUsuario;
    FDQuery.Open();
    Result := not FDQuery.IsEmpty;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TAcessosDAO.VerificaModulo(iModulo, iUsuario: Integer): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.SQL.Add('select * from ' + TABLENAME);
    FDQuery.SQL.Add('WHERE COD_MODULO = :PCOD_MODULO AND COD_USUARIO = :PCOD_USUARIO');
    FDQuery.ParamByName('PCOD_MODULO').AsInteger := iModulo;
    FDQuery.ParamByName('PCOD_USUARIO').AsInteger := iUsuario;
    FDQuery.Open();
    Result := not FDQuery.IsEmpty;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TAcessosDAO.VerificaSistema(iSistema, iUsuario: Integer): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.SQL.Add('select * from ' + TABLENAME);
    FDQuery.SQL.Add('WHERE COD_SISTEMA = :PCOD_SISTEMA AND COD_USUARIO = :PCOD_USUARIO');
    FDQuery.ParamByName('PCOD_SISTEMA').AsInteger := iSistema;
    FDQuery.ParamByName('PCOD_USUARIO').AsInteger := iUsuario;
    FDQuery.Open();
    Result := not FDQuery.IsEmpty;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

end.
