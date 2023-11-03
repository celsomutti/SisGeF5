unit Model.CadastroEmpresa;

interface

uses Common.ENum, FireDAC.Comp.Client, Dialogs;

  type
    TCadastroEmpresa = class
      private
        FID: Integer;
        FCPFCNPJ: System.String;
        FTipoDoc: String;
        FNome: System.String;
        FAlias: System.string;
        FSUFRAMA: System.String;
        FCRT: System.String;
        FCNAE: System.String;
        FStatus: System.Boolean;
        FLog: String;
        FAcao: TAcao;
      public
        property ID: Integer read FID write FID;
        property CPFCNPJ: String read FCPFCNPJ write FCPFCNPJ;
        property TipoDoc: String read FTipoDoc write FTipoDoc;
        property Nome: String read FNome write FNome;
        property Alias: String read FAlias write FAlias;
        property SUFRAMA: String read FSUFRAMA write FSUFRAMA;
        property CRT: String read FCRT write FCRT;
        property CNAE: String read FCNAE write FCNAE;
        property Status: Boolean read FStatus write FStatus;
        property Log: String read FLog write FLog;
        property Acao: TAcao read FAcao write FAcao;

        function GetID(): Integer;
        function Localizar(aParam: array of variant): TFDQuery;
        function Gravar(): Boolean;
    end;

implementation


{ TCadastroEmpresa }

uses DAO.CadastroEmpresa, Common.Utils;

function TCadastroEmpresa.GetID: Integer;
var
  cadastrosDAO : TCadastroEmpresaDAO;
begin
  try
    cadastrosDAO := TCadastroEmpresaDAO.Create;
    Result := cadastrosDAO.GetId();
  finally
    cadastrosDAO.Free;
  end;
end;

function TCadastroEmpresa.Gravar: Boolean;
var
  cadastrosDAO: TCadastroEmpresaDAO;
begin
  try
    cadastrosDAO := TCadastroEmpresaDAO.Create;
    case FAcao of
      tacIncluir: Result := cadastrosDAO.Insert(Self);
      tacAlterar: Result := cadastrosDAO.Update(Self);
      tacExcluir: Result := cadastrosDAO.Delete(Self);
    end;
  finally
    cadastrosDAO.Free;
  end;
end;

function TCadastroEmpresa.Localizar(aParam: array of variant): TFDQuery;
var
  cadastrosDAO : TCadastroEmpresaDAO;
begin
  try
    cadastrosDAO := TCadastroEmpresaDAO.Create;
    Result := cadastrosDAO.lOCALIZAR(aParam);
  finally
    cadastrosDAO.Free;
  end;
end;

end.
