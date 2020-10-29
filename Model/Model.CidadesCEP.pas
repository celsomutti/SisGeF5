unit Model.CidadesCEP;

interface

uses Common.ENum, FireDAC.Comp.Client;

type
  TCidadesCEP = class
  private
    FDDD: String;
    FUF: String;
    FDescricao: String;
    FCodigoIBGE: Integer;
    FID: Integer;
    FAcao: TAcao;
  public
    property ID: Integer read FID write FID;
    property Descricao: String read FDescricao write FDescricao;
    property UF: String read FUF write FUF;
    property CodigoIBGE: Integer read FCodigoIBGE write FCodigoIBGE;
    property DDD: String read FDDD write FDDD;
    property Acao: TAcao read FAcao write FAcao;

    function GetID(): Integer;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;

  end;

implementation

{ TCidadesCEP }

uses DAO.CidadesCEP;

function TCidadesCEP.GetID: Integer;
var
  cidadesCEPDAO: TCidadesCEPDAO;
begin
  try
    cidadesCEPDAO := TCidadesCEPDAO.Create;
    Result := cidadesCEPDAO.GetID;
  finally
    cidadesCEPDAO.Free;
  end;end;

function TCidadesCEP.Gravar: Boolean;
var
  cidadesCEPDAO: TCidadesCEPDAO;
begin
  try
    Result := False;
    cidadesCEPDAO := TCidadesCEPDAO.Create;
    case FAcao of
      Common.ENum.tacIncluir: Result := cidadesCEPDAO.Inserir(Self);
      Common.ENum.tacAlterar: Result := cidadesCEPDAO.Alterar(Self);
      Common.ENum.tacExcluir: Result := cidadesCEPDAO.Excluir(Self);
    end;
  finally
    cidadesCEPDAO.Free;
  end;end;

function TCidadesCEP.Localizar(aParam: array of variant): TFDQuery;
var
  cidadesCEPDAO: TCidadesCEPDAO;
begin
  try
    cidadesCEPDAO := TCidadesCEPDAO.Create;
    Result := cidadesCEPDAO.Pesquisar(aParam);
  finally
    cidadesCEPDAO.Free;
  end;
end;

end.
