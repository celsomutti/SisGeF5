unit Model.LacresDevolucao;

interface

uses Common.ENum, FireDAC.Comp.Client;

type
  TLacresDevolucao = class
  private
    FAcao: TAcao;
    FStatus: Integer;
    FManutencao: TDateTime;
    FBase: Integer;
    FUsuario: String;
    FLacre: String;
  public
    property Base: Integer read FBase write FBase;
    property Lacre: String read FLacre write FLacre;
    property Status: Integer read FStatus write FStatus;
    property Usuario: String read FUsuario write FUsuario;
    property Manutencao: TDateTime read  FManutencao write FManutencao;
    property Acao: TAcao read FAcao write FAcao;

    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
  end;

implementation

{ TLacresDevolucao }

uses DAO.LacresDevolucao;

function TLacresDevolucao.Gravar: Boolean;
var
  lacreDAO : TlacresDevolucaoDAO;
begin
  try
    Result := False;
    lacreDAO := TlacresDevolucaoDAO.Create;
    case FAcao of
      Common.ENum.tacIncluir: Result := lacreDAO.Inserir(Self);
      Common.ENum.tacAlterar: Result := lacreDAO.Alterar(Self);
      Common.ENum.tacExcluir: Result := lacreDAO.Excluir(Self);
    end;
  finally
    lacreDAO.Free;
  end;
end;

function TLacresDevolucao.Localizar(aParam: array of variant): TFDQuery;
var
  lacreDAO : TlacresDevolucaoDAO;
begin
  try
    lacreDAO := TlacresDevolucaoDAO.Create;
    Result := lacreDAO.Pesquisar(aParam);
  finally
    lacreDAO.Free;
  end;
end;

end.
