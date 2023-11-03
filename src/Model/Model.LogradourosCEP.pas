unit Model.LogradourosCEP;

interface

uses Common.ENum, FireDAC.Comp.Client;

type
  TLogradouroCEP = class
  private
    FAcao: TAcao;
    FBairro: String;
    FDescricaoSemNumero: String;
    FUF: String;
    FDescricao: String;
    FIDCidade: Integer;
    FCodigoIBGE: Integer;
    FCEP: String;
    FID: Integer;
    FComplemento: String;
    FCidade: String;
    FTipo: String;
  public
    property ID: Integer read FID write FID;
    property CEP: String read FCEP write FCEP;
    property Tipo: String read FTipo write FTipo;
    property Descricao: String read FDescricao write FDescricao;
    property IDCidade: Integer read FIDCidade write FIDCidade;
    property UF: String read FUF write FUF;
    property Complemento: String read FComplemento write FComplemento;
    property DescricaoSemNumero: String read FDescricaoSemNumero write FDescricaoSemNumero;
    property Cidade: String read FCidade write FCidade;
    property CodigoIBGE: Integer read FCodigoIBGE write FCodigoIBGE;
    property Bairro: String read FBairro write FBairro;
    property Acao: TAcao read FAcao write FAcao;

    function GetID(): Integer;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;

  end;

implementation

{ TLogradouroCEP }

uses DAO.LogradourosCEP;

function TLogradouroCEP.GetID: Integer;
var
  logradourosCEPDAO: TLogradourosCEPDAO;
begin
  try
    logradourosCEPDAO := TLogradourosCEPDAO.Create;
    Result := logradourosCEPDAO.GetID;
  finally
    logradourosCEPDAO.Free;
  end;
end;

function TLogradouroCEP.Gravar: Boolean;
var
  logradourosCEPDAO: TLogradourosCEPDAO;
begin
  try
    Result := False;
    logradourosCEPDAO := TLogradourosCEPDAO.Create;
    case FAcao of
      Common.ENum.tacIncluir: Result := logradourosCEPDAO.Inserir(Self);
      Common.ENum.tacAlterar: Result := logradourosCEPDAO.Alterar(Self);
      Common.ENum.tacExcluir: Result := logradourosCEPDAO.Excluir(Self);
    end;
  finally
    logradourosCEPDAO.Free;
  end;
end;

function TLogradouroCEP.Localizar(aParam: array of variant): TFDQuery;
var
  logradourosCEPDAO: TLogradourosCEPDAO;
begin
  try
    logradourosCEPDAO := TLogradourosCEPDAO.Create;
    Result := logradourosCEPDAO.Pesquisar(aParam);
  finally
    logradourosCEPDAO.Free;
  end;
end;

end.
