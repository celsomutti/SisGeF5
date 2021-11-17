unit Model.APICNPJ;

interface

uses Model.CRMPessoa, Model.CRMEnderecos, System.StrUtils, Web.HTTPApp, System.JSON, System.SysUtils, Model.CRMContatos;

  type TAPICNPJ = class
  private

    FEnderecos: TCRMEnderecos;
    FMensagem: string;
    FPessoas: TCRMPessoa;
    FContatos: TCRMContatos;

    procedure ClearClass;
    procedure SetupClass;

  public

    constructor Create;
    destructor Destroy; override;
    property Pessoas: TCRMPessoa read FPessoas write FPessoas;
    property Enderecos: TCRMEnderecos read FEnderecos write FEnderecos;
    property Contatos: TCRMContatos read FContatos write FContatos;
    property Mensagem: string read FMensagem write FMensagem;
    function GetCNPJ(sCNPJ: string): boolean;

  end;

implementation

{ TAPICNPJ }

uses Data.SisGeF;



procedure TAPICNPJ.ClearClass;
begin

  Pessoas.Cadastro := 0;
  Pessoas.TipoDoc := '';
  Pessoas.Nome := '';
  Pessoas.Fantasia := '';
  Pessoas.CPFCNPJ := '';
  Pessoas.RG := '';
  Pessoas.Nascimento := 0;
  Pessoas.UFRG := '';
  Pessoas.EMissaoRG := 0;
  Pessoas.EmissorRG := '';
  Pessoas.UFNascimento := '';
  Pessoas.CidadeNascimento := '';
  Pessoas.Pai := '';
  Pessoas.Mae := '';
  Pessoas.CNAE := '';
  Pessoas.CRT := 0;
  Pessoas.NumeroCNH := '';
  Pessoas.RegistroCNH := '';
  Pessoas.CategoriaCNH := '';
  Pessoas.ValidadeCNH := 0;
  Pessoas.EmissaoCNH := 0;
  Pessoas.UFCNH := '';
  Pessoas.DataPrimeiraCNH := 0;
  Pessoas.CodigoCNH := '';
  Pessoas.Status := 0;
  Pessoas.Obs := '';
  Pessoas.DataCadastro := 0;
  Pessoas.TipoConta := '';
  Pessoas.Banco := '';
  Pessoas.AgenciaConta := '';
  Pessoas.NumeroConta := '';
  Pessoas.NomeFavorecido := '';
  Pessoas.CPFCNPJFavorecido := '';
  Pessoas.FormaPagamento := '';
  Pessoas.EmpresaGR := '';
  Pessoas.DataGV := 0;
  Pessoas.NumeroConsultaGR := '';
  Pessoas.ChavePIX := '';
  Pessoas.MEI := '';
  Pessoas.RazaoMEI := '';
  Pessoas.FantasiaMEI := '';
  Pessoas.CNPJMEI := '';

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

  FContatos.Cadastro := 0;
  FContatos.Sequencia := 0;
  FContatos.Descricao := '';
  FContatos.Telefone := '';
  FContatos.EMail := '';

end;

constructor TAPICNPJ.Create;
begin
  FPessoas := TCRMPessoa.Create;
  FEnderecos := TCRMEnderecos.Create;
  FContatos := TCRMContatos.Create;
end;

destructor TAPICNPJ.Destroy;
begin
  FPessoas.Free;
  FEnderecos.Free;
  FContatos.Free;
  inherited;
end;

function TAPICNPJ.GetCNPJ(sCNPJ: string): boolean;
var
  sRetorno : string;
begin
  Result := False;
  if Length(sCNPJ) <> 14 then
  begin
    FMensagem := 'CNPJ inválido!';
    Exit;
  end;
  Data_Sisgef.RESTClient.BaseURL := 'https://www.receitaws.com.br/v1/cnpj';
  Data_Sisgef.RESTRequest.Resource := '/' + sCNPJ;
  Data_Sisgef.RESTResponseDataSetAdapter.Dataset := Data_Sisgef.memTableCNPJ;
  Data_Sisgef.RESTResponseDataSetAdapter.Active := True;
  Data_Sisgef.RESTRequest.Execute;
  sRetorno := Data_Sisgef.RESTResponse.Content;
  if Pos('ERROR',sRetorno) <> 0 then
  begin
    FMensagem := 'Erro na consulta do CNPJ!';
    Exit;
  end;
  ClearClass;
  if not Data_Sisgef.memTableCNPJ.IsEmpty then
  begin
    SetupClass;
  end;
  Result := True;
end;

procedure TAPICNPJ.SetupClass;
var
  sCEP, SCNAE : String;
  jsonObj, jo: TJSONObject;
  jvCNAECodigo, jvCNAEDescricao: TJSONValue;
  ja: TJSONArray;
begin
  ja := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(Data_Sisgef.memTableCNPJatividade_principal.AsString), 0) as TJSONArray;
  jsonObj := (ja.Get(0) as TJSONObject);
  jvCNAECodigo := jsonObj.Get(1).JsonValue;
  jvCNAEDescricao := jsonObj.Get(0).JsonValue;
  sCNAE := jvCNAECodigo.Value;
  Pessoas.Cadastro := 0;
  Pessoas.TipoDoc := '';
  Pessoas.Nome := Data_Sisgef.memTableCNPJnome.AsString;
  Pessoas.Fantasia := Data_Sisgef.memTableCNPJfantasia.AsString;
  Pessoas.CPFCNPJ := '';
  Pessoas.RG := '';
  Pessoas.Nascimento := 0;
  Pessoas.UFRG := '';
  Pessoas.EMissaoRG := 0;
  Pessoas.EmissorRG := '';
  Pessoas.UFNascimento := '';
  Pessoas.CidadeNascimento := '';
  Pessoas.Pai := '';
  Pessoas.Mae := '';
  Pessoas.CNAE := sCNAE;
  Pessoas.CRT := 0;
  Pessoas.NumeroCNH := '';
  Pessoas.RegistroCNH := '';
  Pessoas.CategoriaCNH := '';
  Pessoas.ValidadeCNH := 0;
  Pessoas.EmissaoCNH := 0;
  Pessoas.UFCNH := '';
  Pessoas.DataPrimeiraCNH := 0;
  Pessoas.CodigoCNH := '';
  Pessoas.Status := 0;
  Pessoas.Obs := '';
  Pessoas.DataCadastro := 0;
  Pessoas.TipoConta := '';
  Pessoas.Banco := '';
  Pessoas.AgenciaConta := '';
  Pessoas.NumeroConta := '';
  Pessoas.NomeFavorecido := '';
  Pessoas.CPFCNPJFavorecido := '';
  Pessoas.FormaPagamento := '';
  Pessoas.EmpresaGR := '';
  Pessoas.DataGV := 0;
  Pessoas.NumeroConsultaGR := '';
  Pessoas.ChavePIX := '';
  Pessoas.MEI := '';
  Pessoas.RazaoMEI := '';
  Pessoas.FantasiaMEI := '';
  Pessoas.CNPJMEI := '';


  sCEP :=  ReplaceStr(Data_Sisgef.memTableCNPJcep.AsString,'.','');
  Enderecos.Cadastro := 0;
  Enderecos.Sequencia := 0;
  Enderecos.Tipo := '';
  Enderecos.CEP := sCEP;
  Enderecos.Logradouro := Data_Sisgef.memTableCNPJlogradouro.AsString;
  Enderecos.Numero := Data_Sisgef.memTableCNPJnumero.AsString;
  Enderecos.Complemento := Data_Sisgef.memTableCNPJcomplemento.AsString;
  Enderecos.Bairro := Data_Sisgef.memTableCNPJbairro.AsString;
  Enderecos.Cidade := Data_Sisgef.memTableCNPJmunicipio.AsString;
  Enderecos.UF := Data_Sisgef.memTableCNPJuf.AsString;
  Enderecos.Correspondencia := 0;
  Enderecos.Referencia := '';
  Enderecos.CNPJ := '';
  Enderecos.IE := '';
  Enderecos.IM := '';

  FContatos.Cadastro := 0;
  FContatos.Sequencia := 0;
  FContatos.Descricao := 'Consulta Receita';
  FContatos.Telefone := Data_Sisgef.memTableCNPJtelefone.AsString;
  FContatos.EMail := Data_Sisgef.memTableCNPJemail.AsString;

end;

end.
