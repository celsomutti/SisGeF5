unit Model.FinanceiroEmpresa;

interface

uses Common.ENum, FireDAC.Comp.Client;

type
  TFinanceiroEmpresa = class
  private
    FID: Integer;
    FSequencia: Integer;
    FTipoConta: String;
    FBanco: String;
    FAgencia: String;
    FConta: String;
    FOperacao: String;
    FAcao: TAcao;
  public
    property ID: Integer read FID write FID;
    property Sequencia: Integer read FSequencia write FSequencia;
    property TipoConta: String read FTipoConta write FTipoConta;
    property Banco: String read FBanco write FBanco;
    property Agencia: String read FAgencia write FAgencia;
    property Conta: String read FConta write FConta;
    property Operacao: String read FOperacao write FOperacao;
    property Acao: TAcao read FAcao write FAcao;

    function GetID(iID: Integer): Integer;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
  end;

implementation

{ TFinanceiroEmpresa }

uses DAO.FinanceiroEmpresa;

function TFinanceiroEmpresa.GetID(iID: Integer): Integer;
var
  financeiroDAO: TFinanceiroEmpresaDAO;
begin
  try
    financeiroDAO := TFinanceiroEmpresaDAO.Create;
    Result := financeiroDAO.GetID(iID);
  finally
    financeiroDAO.Free;
  end;
end;

function TFinanceiroEmpresa.Gravar: Boolean;
var
  financeiroDAO : TFinanceiroEmpresaDAO;
begin
  try
    financeiroDAO := TFinanceiroEmpresaDAO.Create;
    case FAcao of
      tacIncluir: Result := financeiroDAO.Insert(Self);
      tacAlterar: Result := financeiroDAO.Update(Self);
      tacExcluir: Result := financeiroDAO.Delete(Self);
    end;
  finally
    financeiroDAO.Free;
  end;
end;

function TFinanceiroEmpresa.Localizar(aParam: array of variant): TFDQuery;
var
  financeiroDAO: TFinanceiroEmpresaDAO;
begin
  try
    financeiroDAO := TFinanceiroEmpresaDAO.Create;
    Result := financeiroDAO.Localizar(aParam);
  finally
    financeiroDAO.Free;
  end;
end;

end.
