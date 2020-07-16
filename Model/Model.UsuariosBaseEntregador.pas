unit Model.UsuariosBaseEntregador;

interface

uses Common.ENum, FireDAC.Comp.Client, Forms, Windows;

  type
    TUsuariosBaseEntregador = class
  private
      FAcao: TAcao;
      FID: Integer;
      FEntregador: Integer;
      FAgente: Integer;
      FUsuario: Integer;
    public
      property ID: Integer read FID  write FID;
      property Usuario: Integer read FUsuario write FUsuario;
      property Agente: Integer read FAgente write FAgente;
      property Entregador: Integer read FEntregador write FEntregador;
      property Acao: TAcao read FAcao write FAcao;

      function Localizar(aParam: array of variant): TFDQuery;
      function Gravar(): Boolean;
    end;

implementation

{ TUsuariosBaseEntregador }

uses DAO.UsuariosBaseEntregador;

function TUsuariosBaseEntregador.Gravar: Boolean;
var
  usuarioDAO : TUsuariosBaseEntregadorDAO;
begin
  try
    Result := False;
    usuarioDAO := TUsuariosBaseEntregadorDAO.Create;
    case FAcao of
      Common.ENum.tacIncluir: Result := usuarioDAO.Inserir(Self);
      Common.ENum.tacAlterar: Result := usuarioDAO.Alterar(Self);
      Common.ENum.tacExcluir: Result := usuarioDAO.Excluir(Self);
    end;
  finally
    usuarioDAO.Free;
  end;end;

function TUsuariosBaseEntregador.Localizar(aParam: array of variant): TFDQuery;
var
  usuarioDAO: TUsuariosBaseEntregadorDAO;
begin
  try
    usuarioDAO := TUsuariosBaseEntregadorDAO.Create();
    Result := usuarioDAO.Pesquisar(aParam);
  finally
    usuarioDAO.Free;
  end;
end;

end.
