unit Model.ContatosBases;

interface

uses Common.ENum, FireDAC.Comp.Client;

type
  TContatosBase  = class
  private
    FAcao: TAcao;
    FSequencia: Integer;
    FEMail: String;
    FDescricao: String;
    FCodigoDistribuidor: Integer;
    FTelefone: String;
  public
    property CodigoDistribuidor: Integer read FCodigoDistribuidor write FCodigoDistribuidor;
    property Sequencia: Integer read FSequencia write FSequencia;
    property Descricao: String read FDescricao write FDescricao;
    property Telefone: String read FTelefone write FTelefone;
    property EMail: String read FEMail write FEMail;
    property Acao: TAcao read FAcao write FAcao;

    function GetSeq(): Integer;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
  end;

implementation

{ TContatosBase }

uses DAO.ContatosBases;

function TContatosBase.GetSeq: Integer;
var
  contatosDAO : TContatosBasesDAO;
begin
  try
    contatosDAO := TContatosBasesDAO.Create;
    Result := contatosDAO.GetSeq(Self);
  finally
    contatosDAO.Free;
  end;
end;

function TContatosBase.Gravar: Boolean;
var
  contatosDAO : TContatosBasesDAO;
begin
  try
    contatosDAO := TContatosBasesDAO.Create;
    case FAcao of
      Common.ENum.tacIncluir: Result := contatosDAO.Inserir(Self);
      Common.ENum.tacAlterar: Result := contatosDAO.Alterar(Self);
      Common.ENum.tacExcluir: Result := contatosDAO.Excluir(Self);
    end;
  finally
    contatosDAO.Free;
  end;
end;

function TContatosBase.Localizar(aParam: array of variant): TFDQuery;
var
  contatosDAO : TContatosBasesDAO;
begin
  try
    contatosDAO := TContatosBasesDAO.Create;
    Result := contatosDAO.Pesquisar(aParam);
  finally
    contatosDAO.Free;
  end;
end;

end.
