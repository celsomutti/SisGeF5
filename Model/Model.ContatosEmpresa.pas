unit Model.ContatosEmpresa;

interface

uses Common.ENum, FireDAC.Comp.Client;

  type
    TContatosEmpresa = class
    private
      FID: Integer;
      FSequencia: Integer;
      FDescricao: String;
      FTelefone: String;
      FEMail: String;
      FAcao: TAcao;
    public
      property ID: Integer read FID write FID;
      property Sequencia: Integer read FSequencia write FSequencia;
      property Descricao: String read FDescricao write FDescricao;
      property Telefone: String read FTelefone write FTelefone;
      property EMail: String read FEMail write FEMail;
      property Acao: TAcao read FAcao write FAcao;

      function GetID(iID: Integer): Integer;
      function Localizar(aParam: array of variant): TFDQuery;
      function Gravar(): Boolean;
    end;

implementation

{ TContatosEmpresa }

uses DAO.ContatosEmpresa;

function TContatosEmpresa.GetID(iID: Integer): Integer;
var
  contatosDAO : TContatosEmpresaDAO;
begin
  try
    contatosDAO := TContatosEmpresaDAO.Create;
    Result := contatosDAO.GetID(iID);
  finally
    contatosDAO.Free;
  end;
end;

function TContatosEmpresa.Gravar: Boolean;
var
  contatosDAO: TContatosEmpresaDAO;
begin
  try
    contatosDAO := TContatosEmpresaDAO.Create;
    case FAcao of
      tacIncluir: Result := contatosDAO.Insert(Self);
      tacAlterar: Result := contatosDAO.Update(Self);
      tacExcluir: Result := contatosDAO.Delete(Self);
    end;
  finally
    contatosDAO.Create.Free;
  end;
end;

function TContatosEmpresa.Localizar(aParam: array of variant): TFDQuery;
var
  contatosDAO: TContatosEmpresaDAO;
begin
  try
    contatosDAO := TContatosEmpresaDAO.Create;
    Result := contatosDAO.Localizar(aParam);
  finally
    contatosDAO.Free;
  end;
end;

end.
