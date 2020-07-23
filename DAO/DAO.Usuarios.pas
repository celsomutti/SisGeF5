unit DAO.Usuarios;

interface

uses FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Model.Usuarios, Dialogs;

type
  TUsuariosDAO = class
  private
    FConexao : TConexao;
  public
    constructor Create;
    function GetId(): Integer;
    function Inserir(AUsuarios: TUsuarios): Boolean;
    function Alterar(AUsuarios: TUsuarios): Boolean;
    function Excluir(AUsuarios: TUsuarios): Boolean;
    function Pesquisar(aParam: array of variant): TFDQuery;
    function ValidaLogin(sLogin: String; sSenha: String): Boolean;
    function AlteraSenha(AUsuarios: TUsuarios): Boolean;
    function LoginExiste(sLogin: String): Boolean;
    function EMailExiste(sEMail: String): Boolean;
    function ValidaLoginEMail(sEMail: String; sSenha: String): Boolean;
  end;
const
  TABLENAME = 'tbusuarios';
  CHAVE = 'ABCDEFGHIJ0987654321KLMNOPQRSTUVXZ0123456789';

implementation

{ TUsuariosDAO }

uses Control.Sistema;

function TUsuariosDAO.Alterar(AUsuarios: TUsuarios): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    REsult := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('UPDATE ' + TABLENAME + ' SET '+
                    'NOM_USUARIO = :pNOM_USUARIO, DES_LOGIN = :pDES_LOGIN, DES_EMAIL = :pDES_EMAIL, ' +
                    'DES_SENHA = AES_ENCRYPT(:pDES_SENHA,' + QuotedStr(CHAVE) + '), COD_GRUPO = :pCOD_GRUPO, ' +
                    'DOM_PRIVILEGIO = :pDOM_PRIVILEGIO, DOM_EXPIRA = :pDOM_EXPIRA, QTD_DIAS_EXPIRA = :pQTD_DIAS_EXPIRA, ' +
                    'DOM_PRIMEIRO_ACESSO = :pDOM_PRIMEIRO_ACESSO, DOM_ATIVO = :pDOM_ATIVO, ' +
                    'DAT_SENHA = :pDAT_SENHA, COD_NIVEL = :pCOD_NIVEL, NOM_EXECUTOR = :pNOM_EXECUTOR, ' +
                    'DAT_MANUTENCAO = :pDAT_MANUTENCAO ' +
                    'WHERE COD_USUARIO = :pCOD_USUARIO;', [aUsuarios.Nome, aUsuarios.Login, aUsuarios.EMail, aUsuarios.Senha,
                    aUsuarios.Grupo, aUsuarios.Privilegio, aUsuarios.Expira, aUsuarios.DiasExpira, aUsuarios.PrimeiroAcesso,
                    aUsuarios.Ativo, FloatToDateTime(aUsuarios.DataSenha), aUsuarios.Nivel, aUsuarios.Executor, aUsuarios.Manutencao,
                    aUsuarios.Codigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FConexao.Free;
  end;
end;

function TUsuariosDAO.AlteraSenha(AUsuarios: TUsuarios): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    REsult := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('UPDATE ' + TABLENAME + ' SET '+
                    'DES_SENHA = AES_ENCRYPT(:pDES_SENHA,' + QuotedStr(CHAVE) + '), ' +
                    'DOM_PRIMEIRO_ACESSO = :pDOM_PRIMEIRO_ACESSO, ' +
                    'DAT_SENHA = :pDAT_SENHA, NOM_EXECUTOR = :pNOM_EXECUTOR, DAT_MANUTENCAO = :pDAT_MANUTENCAO ' +
                    'WHERE COD_USUARIO = :pCOD_USUARIO;', [aUsuarios.Senha, aUsuarios.PrimeiroAcesso,
                    FloatToDateTime(aUsuarios.DataSenha), aUsuarios.Executor, aUsuarios.Manutencao, aUsuarios.Codigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FConexao.Free;
  end;
end;

constructor TUsuariosDAO.Create;
begin
  FConexao := TConexao.Create;
end;

function TUsuariosDAO.EMailExiste(sEMail: String): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDquery := FConexao.ReturnQuery;
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT * FROM ' + TABLENAME);
    FDQuery.SQL.Add(' WHERE DES_EMAIL = :pDES_EMAIL');
    FDQuery.ParamByName('pDES_EMAIL').AsString := sEMail;
    FDQuery.Open();
    Result  := (not FDQuery.IsEmpty);
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TUsuariosDAO.Excluir(AUsuarios: TUsuarios): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where WHERE COD_USUARIO = :COD_USUARIO', [AUsuarios.Codigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TUsuariosDAO.GetId: Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery;
    FDQuery.Open('select coalesce(max(COD_USUARIO),0) + 1 from ' + TABLENAME);
    try
      Result := FDQuery.Fields[0].AsInteger;
    finally
      FDQuery.Close;
    end;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TUsuariosDAO.Inserir(AUsuarios: TUsuarios): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('INSERT INTO ' + TABLENAME + ' '+
                    '(NOM_USUARIO, DES_LOGIN, DES_EMAIL, DES_SENHA, COD_GRUPO, DOM_PRIVILEGIO, ' +
                    'DOM_EXPIRA, QTD_DIAS_EXPIRA, DOM_PRIMEIRO_ACESSO, DOM_ATIVO, DAT_SENHA, COD_NIVEL, ' +
                    'NOM_EXECUTOR, DAT_MANUTENCAO) ' +
                    'VALUES ' +
                    '(:pNOM_USUARIO, :pDES_LOGIN, :pDES_EMAIL, AES_ENCRYPT(:pDES_SENHA,' + QuotedStr(CHAVE) + '), ' +
                    ':pCOD_GRUPO, :pDOM_PRIVILEGIO, :pDOM_EXPIRA, :pQTD_DIAS_EXPIRA, :pDOM_PRIMEIRO_ACESSO, ' +
                    ':pDOM_ATIVO, :pDAT_SENHA, :pCOD_NIVEL, :pNOM_EXECUTOR, :pDAT_MANUTENCAO);' ,
                    [aUsuarios.Nome, aUsuarios.Login, aUsuarios.EMail, aUsuarios.Senha,
                    aUsuarios.Grupo, aUsuarios.Privilegio, aUsuarios.Expira, aUsuarios.DiasExpira, aUsuarios.PrimeiroAcesso,
                    aUsuarios.Ativo, FloatToDateTime(aUsuarios.DataSenha), aUsuarios.Nivel, aUsuarios.Executor, aUsuarios.Manutencao]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TUsuariosDAO.LoginExiste(sLogin: String): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDquery := FConexao.ReturnQuery;
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT * FROM ' + TABLENAME);
    FDQuery.SQL.Add(' WHERE DES_LOGIN = :pDES_LOGIN');
    FDQuery.ParamByName('pDES_LOGIN').AsString := sLogin;
    FDQuery.Open();
    Result  := (not FDQuery.IsEmpty);
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TUsuariosDAO.Pesquisar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  if not Assigned(FDQuery) then
  begin
    FDQuery := FConexao.ReturnQuery;
  end;
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;

  FDQuery.SQL.Add('SELECT COD_USUARIO, NOM_USUARIO, DES_LOGIN, DES_EMAIL, DES_SENHA, AES_DECRYPT(DES_SENHA, ' + QuotedStr(CHAVE) +
                  ') as PWD, '+
                  'COD_GRUPO, DOM_PRIVILEGIO, DOM_EXPIRA, QTD_DIAS_EXPIRA, DOM_PRIMEIRO_ACESSO, DOM_ATIVO, DAT_SENHA, ' +
                  'COD_NIVEL, NOM_EXECUTOR, DAT_MANUTENCAO FROM ' + TABLENAME);
  if aParam[0] = 'CODIGO' then
  begin
    FDQuery.SQL.Add('WHERE COD_USUARIO = :COD_USUARIO');
    FDQuery.ParamByName('COD_USUARIO').AsInteger := aParam[1];
  end;
  if aParam[0] = 'LOGIN' then
  begin
    FDQuery.SQL.Add('WHERE DES_LOGIN = :DES_LOGIN');
    FDQuery.ParamByName('DES_LOGIN').AsString := aParam[1];
  end;
  if aParam[0] = 'NOME' then
  begin
    FDQuery.SQL.Add('WHERE NOM_USUARIO LIKE :NOM_USUARIO');
    FDQuery.ParamByName('NOM_USUARIO').AsString := aParam[1];
  end;
  if aParam[0] = 'EMAIL' then
  begin
    FDQuery.SQL.Add('WHERE DES_EMAIL = :DES_EMAIL');
    FDQuery.ParamByName('DES_EMAIL').AsString := aParam[1];
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

function TUsuariosDAO.ValidaLogin(sLogin, sSenha: String): Boolean;
var
  FDquery : TFDQuery;
begin
  try
    Result := False;
    FDquery := FConexao.ReturnQuery;
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT AES_DECRYPT(DES_SENHA,:pCHAVE) AS SENHA FROM ' + TABLENAME);
    FDQuery.SQL.Add(' WHERE DES_LOGIN = :pDES_LOGIN');
    FDQuery.ParamByName('pDES_LOGIN').AsString := sLogin;
    FDQuery.ParamByName('pCHAVE').AsString := CHAVE;
    FDQuery.Open();
    if FDquery.IsEmpty then Exit;
    if not FDquery.FieldByName('SENHA').AsString.Equals(sSenha) then Exit;
    Result  :=  True;
  finally
    FDquery.Connection.Close;
    FDquery.Free;
  end;
end;

function TUsuariosDAO.ValidaLoginEMail(sEMail, sSenha: String): Boolean;
var
  FDquery : TFDQuery;
begin
  try
    Result := False;
    FDquery := FConexao.ReturnQuery;
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT AES_DECRYPT(DES_SENHA,:pCHAVE) AS SENHA FROM ' + TABLENAME);
    FDQuery.SQL.Add(' WHERE DES_EMAIL = :pDES_EMAIL');
    FDQuery.ParamByName('pDES_EMAIL').AsString := sEMail;
    FDQuery.ParamByName('pCHAVE').AsString := CHAVE;
    FDQuery.Open();
    if FDquery.IsEmpty then Exit;
    if not FDquery.FieldByName('SENHA').AsString.Equals(sSenha) then Exit;
    Result  :=  True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

end.
