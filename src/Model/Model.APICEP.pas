unit Model.APICEP;

interface

uses Model.CRMEnderecos, Web.HTTPApp, System.JSON;

type
  TAPICEP = class
  private
    FEnderecos: TCRMEnderecos;
    FMensagem: string;
    procedure ClearClass;
    procedure SetupClass;

  public

    constructor Create;
    destructor Destroy; override;
    property Enderecos: TCRMEnderecos read FEnderecos write FEnderecos;
    property Mensagem: string read FMensagem write FMensagem;
    function GetAdressByCEP(sCEP: string): boolean;

  end;

implementation

{ TAPICEP }

uses Data.SisGeF;



procedure TAPICEP.ClearClass;
begin
  Enderecos.Cadastro := 0;
  Enderecos.Sequencia := 0;
  Enderecos.Tipo := '';
  Enderecos.CEP := '';
  Enderecos.Logradouro := '';
  Enderecos.Numero := '';
  Enderecos.Complemento := '';
  Enderecos.Bairro := '';
  Enderecos.Cidade := '';
  Enderecos.UF := '';
  Enderecos.Correspondencia := 0;
  Enderecos.Referencia := '';
  Enderecos.CNPJ := '';
  Enderecos.IE := '';
  Enderecos.IM := '';
end;

constructor TAPICEP.Create;
begin
  FEnderecos := TCRMEnderecos.Create;
end;

destructor TAPICEP.Destroy;
begin
  FEnderecos.Free;
  inherited;
end;

function TAPICEP.GetAdressByCEP(sCEP: string): boolean;
var
  sRetorno : string;
begin
  Result := False;
  if Length(sCEP) <> 8 then
  begin
    FMensagem := 'CEP inválido!';
    Exit;
  end;
  Data_Sisgef.RESTClient.BaseURL := 'http://viacep.com.br/ws';
  Data_Sisgef.RESTRequest.Resource := '/' + sCEP + '/json/';
  Data_Sisgef.RESTResponseDataSetAdapter.Dataset := Data_Sisgef.memTableCEP;
  Data_Sisgef.RESTResponseDataSetAdapter.Active := True;
  Data_Sisgef.RESTRequest.Execute;
  sRetorno := Data_Sisgef.RESTResponse.Content;
  if Pos('erro',sRetorno) <> 0 then
  begin
    FMensagem := 'CEP não encontrado!';
    Exit;
  end;
  ClearClass;
  if Data_Sisgef.memTableCEP.RecordCount = 1 then
  begin
    SetupClass;
    Data_Sisgef.memTableCEP.Active := False;
  end;
  Result := True;
end;

procedure TAPICEP.SetupClass;
begin
  if not Data_Sisgef.memTableCEP.IsEmpty then
    Data_Sisgef.memTableCEP.First;
  Enderecos.Cadastro := 0;
  Enderecos.Sequencia := 0;
  Enderecos.Tipo := '';
  Enderecos.CEP := '';
  Enderecos.Logradouro := Data_Sisgef.memTableCEPlogradouro.AsString;
  Enderecos.Numero := '';
  Enderecos.Complemento := Data_Sisgef.memTableCEPcomplemento.AsString;
  Enderecos.Bairro := Data_Sisgef.memTableCEPbairro.AsString;
  Enderecos.Cidade := Data_Sisgef.memTableCEPlocalidade.AsString;
  Enderecos.UF := Data_Sisgef.memTableCEPuf.AsString;
  Enderecos.Correspondencia := 0;
  Enderecos.Referencia := '';
  Enderecos.CNPJ := '';
  Enderecos.IE := '';
  Enderecos.IM := '';
end;

end.
