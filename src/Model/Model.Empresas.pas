unit Model.Empresas;

interface

uses Common.ENum, FireDAC.Comp.Client, System.SysUtils, DAO.Conexao;

type
  TEmpresas = class
  private

    FConexao : TConexao;
    FAcao: TAcao;
    FCNPJCPFFavorecido: String;
    FObs: String;
    FCNAE: String;
    FNumeroConta: String;
    FFormaPagamento: String;
    FNumeroAgencia: String;
    FCodigoBanco: String;
    FCodigo: Integer;
    FNomeFavorecido: String;
    FCNPJCPF: String;
    FTipoConta: String;
    FStatus: Integer;
    FRazaoSocial: String;
    FTipoDoc: String;
    FDataCadastro: TDate;
    FCRT: Integer;
    FNomeFantasia: String;
    FQuery: TFDQuery;

    function Inserir(): Boolean;
    function Alterar(): Boolean;
    function Excluir(): Boolean;

  public

    property Codigo: Integer read FCodigo write FCodigo;
    property RazaoSocial: String read FRazaoSocial write FRazaoSocial;
    property NomeFantasia: String read FNomeFantasia write FNomeFantasia;
    property TipoDoc: String read FTipoDoc write FTipoDoc;
    property CNPJCPF: String read FCNPJCPF write FCNPJCPF;
    property CNAE: String read FCNAE write FCNAE;
    property CRT: Integer read FCRT write FCRT;
    property Status: Integer read FStatus write FStatus;
    property Obs: String read FObs write FObs;
    property DataCadastro: TDate read FDataCadastro write FDataCadastro;
    property TipoConta: String read FTipoConta write FTipoConta;
    property CodigoBanco: String read FCodigoBanco write FCodigoBanco;
    property NumeroAgencia: String read FNumeroAgencia write FNumeroAgencia;
    property NumeroConta: String read FNumeroConta write FNumeroConta;
    property NomeFavorecido: String read FNomeFavorecido write FNomeFavorecido;
    property CNPJCPFFavorecido: String read FCNPJCPFFavorecido write FCNPJCPFFavorecido;
    property FormaPagamento: String read FFormaPagamento write FFormaPagamento;
    property Acao: TAcao read FAcao write FAcao;
    property Query: TFDQuery read FQuery write FQuery;

    constructor Create();
    function Localizar(aParam: array of variant): Boolean;
    function Gravar(): Boolean;
    function GetField(sField: String; sKey: String; sKeyValue: String): String;
    function SetupModel(FDQuery: TFDQuery): Boolean;
    procedure ClearModel;

  end;
  const
    TABLENAME = 'crm_empresas';

    SQLUPDATE = 'update ' + TABLENAME + ' set ' +
                'des_razao_social = :des_razao_social, nom_fantasia = :nom_fantasia, ' +
                'des_tipo_doc = :des_tipo_doc, num_cnpj = :num_cnpj, cod_cnae = :cod_cnae, cod_crt = :cod_crt, ' +
                'cod_status = :cod_status, des_observacao = :des_observacao, dat_cadastro = :dat_cadastro, ' +
                'des_tipo_conta = :des_tipo_conta, cod_banco = :cod_banco, cod_agencia = :cod_agencia, num_conta = :num_conta, ' +
                'nom_favorecido = :nom_favorecido, num_cpf_cnpj_favorecido = :num_cpf_cnpj_favorecido, ' +
                'des_forma_pagamento = :des_forma_pagamento ' +
                'where ' +
                'cod_empresa = :cod_empresa;';

    SQLDELETE = 'delete from ' + TABLENAME + ' where cod_empresa = :cod_empresa;';

    SQLINSERT = 'insert into ' + TABLENAME +
                '(cod_empresa, des_razao_social, nom_fantasia, des_tipo_doc, num_cnpj, cod_cnae, cod_crt, cod_status, ' +
                'des_observacao, dat_cadastro, des_tipo_conta, cod_banco, cod_agencia, num_conta, nom_favorecido, ' +
                'num_cpf_cnpj_favorecido, des_forma_pagamento) ' +
                'values ' +
                '(:cod_empresa, :des_razao_social, :nom_fantasia, :des_tipo_doc, :num_cnpj, :cod_cnae, :cod_crt, :cod_status, ' +
                ':des_observacao, :dat_cadastro, :des_tipo_conta, :cod_banco, :cod_agencia, :num_conta, :nom_favorecido, ' +
                ':num_cpf_cnpj_favorecido, :des_forma_pagamento);';

    SQLQUERY  = 'select cod_empresa, des_razao_social, nom_fantasia, des_tipo_doc, num_cnpj, cod_cnae, cod_crt, cod_status, ' +
                'des_observacao, dat_cadastro, des_tipo_conta, cod_banco, cod_agencia, num_conta, nom_favorecido, ' +
                'num_cpf_cnpj_favorecido, des_forma_pagamento ' +
                'from ' + TABLENAME;

implementation

{ TEmpresas }


function TEmpresas.Alterar: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(SQLUPDATE, [FRazaoSocial, FNomeFantasia, FTipoDoc, FCNPJCPF, FCNAE, FCRT, FStatus, FObs, FDataCadastro,
    FTipoConta, FCodigoBanco, FNumeroAgencia, FNumeroConta, FNomeFavorecido, FCNPJCPFFavorecido, FFormaPagamento, FCodigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

procedure TEmpresas.ClearModel();
begin
  FCodigo := 0;
  FRazaoSocial := '';
  FNomeFantasia := '';
  FTipoDoc := '';
  FCNPJCPF := '';
  FCNAE := '';
  FCRT := 0;
  FStatus := 0;
  FObs := '';
  FDataCadastro := StrToDate('31/12/1899');
  FTipoConta := '';
  FCodigoBanco := '';
  FNumeroAgencia := '';
  FNumeroConta := '';
  FNomeFavorecido := '';
  FCNPJCPFFavorecido := '';
  FFormaPagamento := '';
end;

constructor TEmpresas.Create;
begin
   FConexao := TConexao.Create;
end;

function TEmpresas.Excluir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(SQLDELETE, [FCodigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TEmpresas.GetField(sField, sKey, sKeyValue: String): String;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.SQL.Text := 'select ' + sField + ' from ' + TABLENAME + ' where ' + sKey + ' = ' + sKeyValue;
    FDQuery.Open();
    if not FDQuery.IsEmpty then Result := FDQuery.FieldByName(sField).AsString;
  finally
    FDQuery.Free;
  end;
end;

function TEmpresas.Gravar: Boolean;
begin
  Result := False;
  case FAcao of
    tacIncluir: Result := Inserir();
    tacAlterar: Result := Alterar();
    tacExcluir: Result := Excluir();
  end;
end;

function TEmpresas.Inserir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(SQLINSERT,
                    [FCodigo, FRazaoSocial, FNomeFantasia, FTipoDoc, FCNPJCPF, FCNAE, FCRT, FStatus, FObs, FDataCadastro,
                    FTipoConta, FCodigoBanco, FNumeroAgencia, FNumeroConta, FNomeFavorecido, FCNPJCPFFavorecido, FFormaPagamento]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;

end;

function TEmpresas.Localizar(aParam: array of variant): Boolean;
begin
  Result := False;
  if FQuery.Active then
    Fquery.Active := False;
  FQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FQuery.SQL.Clear;
  FQuery.SQL.Add(SQLQUERY);
  if aParam[0] = 'CODIGO' then
  begin
    FQuery.SQL.Add('where cod_empresa = :cod_empresa');
    FQuery.ParamByName('cod_empresa').AsInteger := aParam[1];
  end
  else if aParam[0] = 'CNPJ' then
  begin
    FQuery.SQL.Add('where num_cnpj = :num_cnpj');
    FQuery.ParamByName('num_cnpj').AsString := aParam[1];
  end
  else if aParam[0] = 'RAZAO' then
  begin
    FQuery.SQL.Add('where des_razao_social like :des_razao_social');
    FQuery.ParamByName('des_razao_social').AsString := aParam[1];
  end
  else if aParam[0] = 'FANTASIA' then
  begin
    FQuery.SQL.Add('where nom_fantasia = :nom_fantasia');
    FQuery.ParamByName('nom_fantasia').AsString := aParam[1];
  end
  else if aParam[0] = 'FILTRO' then
  begin
    FQuery.SQL.Add('where ' + aParam[1]);
  end
  else if aParam[0] = 'APOIO' then
  begin
    FQuery.SQL.Clear;
    FQuery.SQL.Add('select  ' + aParam[1] + ' from ' + TABLENAME + ' ' + aParam[2]);
  end;
  FQuery.Open;
  if FQuery.IsEmpty then
  begin
    FQuery.Active := False;
    FQuery.Connection.Connected := False;
    Exit;
  end
  else
    Result := True;
end;



function TEmpresas.SetupModel(FDQuery: TFDQuery): Boolean;
begin
  try
    Result := False;
    FCodigo := FDQuery.FieldByName('cod_empresa').AsInteger;
    FRazaoSocial := FDQuery.FieldByName('des_razao_social').AsString;
    FNomeFantasia := FDQuery.FieldByName('nom_fantasia').AsString;
    FTipoDoc := FDQuery.FieldByName('des_tipo_doc').AsString;
    FCNPJCPF := FDQuery.FieldByName('num_cnpj').AsString;
    FCNAE := FDQuery.FieldByName('cod_cnae').AsString;
    FCRT := FDQuery.FieldByName('cod_crt').AsInteger;
    FStatus := FDQuery.FieldByName('cod_status').AsInteger;
    FObs := FDQuery.FieldByName('des_observacao').AsString;
    FDataCadastro := FDQuery.FieldByName('dat_cadastro').AsDateTime;
    FTipoConta := FDQuery.FieldByName('des_tipo_conta').AsString;
    FCodigoBanco := FDQuery.FieldByName('cod_banco').AsString;
    FNumeroConta := FDQuery.FieldByName('num_conta').AsString;
    FNomeFavorecido := FDQuery.FieldByName('nom_favorecido').AsString;
    FCNPJCPFFavorecido := FDQuery.FieldByName('num_cpf_cnpj_favorecido').AsString;
    FFormaPagamento := FDQuery.FieldByName('des_forma_pagamento').AsString;
  finally
    Result := True;
  end;
end;

end.
