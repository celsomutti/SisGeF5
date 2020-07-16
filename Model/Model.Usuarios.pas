unit Model.Usuarios;

interface

uses Common.ENum, FireDAC.Comp.Client;

type
  TUsuarios = class
  private
    FCodigo: integer;
    FNome: String;
    FLogin: String;
    FEMail: String;
    FSenha: String;
    FGrupo: Integer;
    FPrivilegio: String;
    FExpira: String;
    FDiasExpira: Integer;
    FPrimeiroAcesso: String;
    FAtivo: String;
    FDataSenha: TDate;
    FNivel: Integer;
    FExecutor: String;
    FManutencao: TDateTime;
    FAcao: TAcao;
  public
    property Codigo: integer read FCodigo write FCodigo;
    property Nome: String read FNome write FNome;
    property Login: String read FLogin write FLogin;
    property EMail: String read FEMail write FEMail;
    property Senha: String read FSenha write FSenha;
    property Grupo: Integer read FGrupo write FGrupo;
    property Privilegio: String read FPrivilegio write FPrivilegio;
    property Expira: String read FExpira write FExpira;
    property DiasExpira: Integer read FDiasExpira write FDiasExpira;
    property PrimeiroAcesso: String read FPrimeiroAcesso write FPrimeiroAcesso;
    property Ativo: String read FAtivo write FAtivo;
    property DataSenha: TDate read FDataSenha write FDataSenha;
    property Nivel: Integer read FNivel write FNivel;
    property Executor: String read FExecutor write FExecutor;
    property Manutencao: TDateTime read FManutencao write FManutencao;
    property Acao: TAcao read FAcao write FAcao;

    function GetID: Integer;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
    function ValidaLogin(sLogin: String; sSenha: String): Boolean;
    function AlteraSenha(AUsuarios: TUsuarios): Boolean;
    function LoginExiste(sLogin: String): Boolean;
    function EMailExiste(sEMail: String): Boolean;
    function ValidaLoginEMail(sEMail: String; sSenha: String): Boolean;

  end;

implementation

{ TUsuarios }

uses DAO.Usuarios;

function TUsuarios.AlteraSenha(AUsuarios: TUsuarios): Boolean;
var
  usuarioDAO : TUsuariosDAO;
begin
  try
    Result := False;
    usuarioDAO := TUsuariosDAO.Create;
    Result :=  usuarioDAO.AlteraSenha(AUsuarios);
  finally
    usuarioDAO.Free;
  end;

end;

function TUsuarios.EMailExiste(sEMail: String): Boolean;
var
  usuarioDAO: TUsuariosDAO;
begin
  try
    Result := False;
    usuarioDAO := TUsuariosDAO.Create;
    Result := usuarioDAO.EMailExiste(sEMail);
  finally
    usuarioDAO.Free;
  end;
end;

function TUsuarios.GetID: Integer;
var
  usuarioDAO: TUsuariosDAO;
begin
  try
    usuarioDAO := TUsuariosDAO.Create();
    Result := usuarioDAO.GetId;
  finally
    usuarioDAO.Free;
  end;
end;

function TUsuarios.Gravar: Boolean;
var
  usuarioDAO : TUsuariosDAO;
begin
  try
    Result := False;
    usuarioDAO := TUsuariosDAO.Create;
    case FAcao of
      Common.ENum.tacIncluir: Result := usuarioDAO.Inserir(Self);
      Common.ENum.tacAlterar: Result := usuarioDAO.Alterar(Self);
      Common.ENum.tacExcluir: Result := usuarioDAO.Excluir(Self);
    end;
  finally
    usuarioDAO.Free;
  end;
end;

function TUsuarios.Localizar(aParam: array of variant): TFDQuery;
var
  usuarioDAO: TUsuariosDAO;
begin
  try
    usuarioDAO := TUsuariosDAO.Create();
    Result := usuarioDAO.Pesquisar(aParam);
  finally
    usuarioDAO.Free;
  end;
end;

function TUsuarios.LoginExiste(sLogin: String): Boolean;
var
  usuarioDAO: TUsuariosDAO;
begin
  try
    Result := False;
    usuarioDAO := TUsuariosDAO.Create;
    Result := usuarioDAO.LoginExiste(sLogin);
  finally
    usuarioDAO.Free;
  end;
end;

function TUsuarios.ValidaLogin(sLogin, sSenha: String): Boolean;
var
  usuarioDAO : TUsuariosDAO;
begin
  try
    Result := False;
    usuarioDAO := TUsuariosDAO.Create();
    Result := usuarioDAO.ValidaLogin(sLogin, sSenha);
  finally
    usuarioDAO.Free;
  end;
end;

function TUsuarios.ValidaLoginEMail(sEMail, sSenha: String): Boolean;
var
  usuarioDAO : TUsuariosDAO;
begin
  try
    Result := False;
    usuarioDAO := TUsuariosDAO.Create();
    Result := usuarioDAO.ValidaLoginEMail(sEMail, sSenha);
  finally
    usuarioDAO.Free;
  end;
end;

end.
