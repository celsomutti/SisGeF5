unit Model.Acessos;

interface

uses Common.ENum, FireDAC.Comp.Client, Vcl.ActnList;

type
  TAcessos = class
  private
    FAcao: TAcao;
    FMenu: Integer;
    FSistema: Integer;
    FUsuario: Integer;
    FModulo: Integer;
    FAdministrador: String;

  public
    property Sistema: Integer read FSistema write FSistema;
    property Modulo: Integer read FModulo write FModulo;
    property Menu: Integer read FMenu write FMenu;
    property Usuario: Integer read FUsuario write FUsuario;
    property Administrador: String read FAdministrador write FAdministrador;
    property Acao: TAcao read FAcao write FAcao;

    function Localizar(aParam: array of variant): TFDQuery;
    function AcessoExiste(aParam: array of variant): Boolean;
    function Gravar(): Boolean;
    function VerificaLogin(iMenu: Integer; iUsuario: Integer): Boolean;
    function VerificaModulo(iModulo: Integer; iUsuario: Integer): Boolean;
    function VerificaSistema(iSistema: Integer; iUsuario: Integer): Boolean;

  end;

implementation

{ TAcessos }

uses DAO.Acessos;

function TAcessos.AcessoExiste(aParam: array of variant): Boolean;
var
  acessosDAO : TAcessosDAO;
begin
  try
    acessosDAO := TAcessosDAO.Create;
    Result := acessosDAO.AcessoExiste(aParam);
  finally
    acessosDAO.Free;
  end;
end;

function TAcessos.Gravar: Boolean;
var
  acessosDAO : TAcessosDAO;
begin
  try
    Result := False;
    acessosDAO := TAcessosDAO.Create;
    case FAcao of
      Common.ENum.tacIncluir: Result := acessosDAO.Inserir(Self);
      Common.ENum.tacExcluir: Result := acessosDAO.Excluir(Self);
    end;
  finally
    acessosDAO.Free;
  end;
end;

function TAcessos.Localizar(aParam: array of variant): TFDQuery;
var
  acessosDAO : TAcessosDAO;
begin
  try
    acessosDAO := TAcessosDAO.Create;
    Result := acessosDAO.Pesquisar(aParam);
  finally
    acessosDAO.Free;
  end;
end;

function TAcessos.VerificaLogin(iMenu, iUsuario: Integer): Boolean;
var
  acessosDAO : TAcessosDAO;
begin
  try
    acessosDAO := TAcessosDAO.Create;
    if Self.Administrador = 'S' then
    begin
      Result := True;
    end
    else if iMenu = 0 then
    begin
      Result := True;
    end
    else
    begin
      Result := acessosDAO.VerificaAcesso(iMenu, iUsuario);
    end;
  finally
    acessosDAO.Free;
  end;
end;

function TAcessos.VerificaModulo(iModulo, iUsuario: Integer): Boolean;
var
  acessosDAO : TAcessosDAO;
begin
  try
    acessosDAO := TAcessosDAO.Create;
    Result := acessosDAO.VerificaModulo(iModulo, iUsuario);
  finally
    acessosDAO.Free;
  end;
end;

function TAcessos.VerificaSistema(iSistema, iUsuario: Integer): Boolean;
var
  acessosDAO : TAcessosDAO;
begin
  try
    acessosDAO := TAcessosDAO.Create;
    Result := acessosDAO.VerificaSistema(iSistema, iUsuario);
  finally
    acessosDAO.Free;
  end;
end;

end.
