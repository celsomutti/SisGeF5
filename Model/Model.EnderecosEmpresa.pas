unit Model.EnderecosEmpresa;

interface

uses Common.ENum, FireDAC.Comp.Client, Dialogs;

  type
    TEnderecosEmpresa = class
    private
      FID: Integer;
      FSeq: Integer;
      FTipo: String;
      FCEP: String;
      FLogradouro: String;
      FNumero: String;
      FComplemento: String;
      FBairro: String;
      FCidade: String;
      FUF: String;
      FCNPJ: String;
      FIE: String;
      FIEST: String;
      FIM: String;
      FAcao: TAcao;
    public
      property ID: Integer read FID write FID;
      property Sequencia: Integer read FSeq write FSeq;
      property Tipo: String read FTipo write FTipo;
      property CEP: String read FCEP write FCEP;
      property Logradouro: String read FLogradouro write FLogradouro;
      property Numero: String read FNumero write FNumero;
      property Complemento: String read FComplemento write FComplemento;
      property Bairro: String read FBairro write FBairro;
      property Cidade: String read FCidade write FCidade;
      property UF: String read FUF write FUF;
      property CNPJ: String read FCNPJ write FCNPJ;
      property IE: String read FIE write FIE;
      property IEST: String read FIEST write FIEST;
      property IM: String read FIM write FIM;
      property Acao: TAcao read FAcao write FAcao;

      function GetID(iID: Integer): Integer;
      function Localizar(aParam: array of variant): TFDQuery;
      function Gravar(): Boolean;
      function ValidaDados(): Boolean;

    end;

implementation


{ TEnderecosEmpresa }

uses DAO.EnderecosEmpresa, Common.Utils;

function TEnderecosEmpresa.GetID(iID: Integer): Integer;
var
  enderecosDAO : TEnderecosEmpresaDAO;
begin
  try
    enderecosDAO := TEnderecosEmpresaDAO.Create;
    Result := enderecosDAO.GetId(iID);
  finally
    enderecosDAO.Free;
  end;
end;

function TEnderecosEmpresa.Gravar: Boolean;
var
  enderecosDAO: TEnderecosEmpresaDAO;
begin
  try
    enderecosDAO := TEnderecosEmpresaDAO.Create;
    case FAcao of
      tacIncluir: Result := enderecosDAO.Insert(Self);
      tacAlterar: Result := enderecosDAO.Update(Self);
      tacExcluir: Result := enderecosDAO.Delete(Self);
    end;
  finally
    enderecosDAO.Free;
  end;
end;

function TEnderecosEmpresa.Localizar(aParam: array of variant): TFDQuery;
var
  enderecosDAO : TEnderecosEmpresaDAO;
begin
  try
    enderecosDAO := TEnderecosEmpresaDAO.Create;
    Result := enderecosDAO.lOCALIZAR(aParam);
  finally
    enderecosDAO.Free;
  end;
end;

function TEnderecosEmpresa.ValidaDados: Boolean;
begin
  if not Common.Utils.TUtils.CNPJ(FCNPJ) then
  begin
    ShowMessage('CNPJ INVALIDO');
    Result := False;
    Exit;
  end;
  Result := True;
end;

end.
