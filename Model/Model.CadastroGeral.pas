unit Model.CadastroGeral;

interface

uses Common.ENum, FireDAC.Comp.Client, DAO.Conexao, Control.Sistema, FireDAC.Stan.Option,
System.SysUtils;

type
  TCadastroGeral= class
  private
    FAcao: TAcao;
    FNomePai: String;
    FDataRG: TDate;
    FNaturalidade: String;
    FRG: String;
    FNascimento: TDate;
    FEstadoCivil: String;
    FValidadeCNH: TDate;
    FUFNaturalidade: String;
    FUFRG: String;
    FCPF: String;
    FRegistroCNH: String;
    FID: Integer;
    FImagem: String;
    FUFCNH: String;
    FPrimeiraCNH: TDate;
    FDataCadastro: TDateTime;
    FNomeMae: String;
    FUsuario: Integer;
    FSexo: SmallInt;
    FNome: String;
    FCategoriaCNH: String;
    FNumeroCNH: String;
    FCodigoSegurancaCNH: String;
    FExpedidor: String;
    FDataEmissaoCNH: TDate;
    FConexao: TConexao;
    FCNAE: String;
    FPessoa: SmallInt;
    FSuframa: String;
    FAlias: String;
    FTipoCadastro: Integer;
    FCRT: Integer;
    FObs: String;
    FNacionalidade: String;
    FStatus: Integer;
    FIEST: String;
    FInscricaoMunicipal: String;

    function Inserir(): Boolean;
    function Alterar(): Boolean;
    function Excluir(): Boolean;

  public
    Constructor Create();
    property ID: Integer read FID write FID;
    property TipoCadastro: Integer read FTipoCadastro write FTipoCadastro;
    property Pessoa: SmallInt read FPessoa write FPessoa;
    property Nome: String read FNome write FNome;
    property Alias: String read FAlias write FAlias;
    property CPF: String read FCPF write FCPF;
    property RG: String read FRG write FRG;
    property Expedidor: String read FExpedidor write FExpedidor;
    property DataRG: TDate read FDataRG write FDataRG;
    property UFRG: String read FUFRG write FUFRG;
    property Nascimento: TDate read FNascimento write FNascimento;
    property NomePai: String read FNomePai write FNomePai;
    property NomeMae: String read FNomeMae write FNomeMae;
    property Nacionalidade: String read FNacionalidade write FNacionalidade;
    property Naturalidade: String read FNaturalidade write FNaturalidade;
    property UFNaturalidade: String read FUFNaturalidade write FNaturalidade;
    property Suframa: String read FSuframa write FSuframa;
    property CNAE: String read FCNAE write FCNAE;
    property CRT: Integer read FCRT write FCRT;
    property CodigoSegurancaCNH: String read FCodigoSegurancaCNH write FCodigoSegurancaCNH;
    property NumeroCNH: String read FNumeroCNH write FNumeroCNH;
    property RegistroCNH: String read FRegistroCNH write FRegistroCNH;
    property ValidadeCNH: TDate read FValidadeCNH write FValidadeCNH;
    property CategoriaCNH: String read FCategoriaCNH write FCategoriaCNH;
    property DataEmissaoCNH: TDate read FDataEmissaoCNH write FDataEmissaoCNH;
    property PrimeiraCNH: TDate read FPrimeiraCNH write FPrimeiraCNH;
    property UFCNH: String read FUFCNH write FUFCNH;
    property Sexo: SmallInt read FSexo write FSexo;
    property EstadoCivil: String read FEstadoCivil write FEstadoCivil;
    property DataCadastro: TDateTime read FDataCadastro write FDataCadastro;
    property Usuario: Integer read FUsuario write FUsuario;
    property Imagem: String read FImagem write FImagem;
    property Status: Integer read FStatus write FStatus;
    property Obs: String read FObs write FObs;
    property InscricaoMunicipal: String read FInscricaoMunicipal write FInscricaoMunicipal;
    property IEST: String read FIEST write FIEST;
    property Acao: TAcao read FAcao write FAcao;

    function GetID(): Integer;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
    procedure SetupSelf(fdQuery: TFDQuery);
    procedure ClearSelf;

  end;
  const
    TABLENAME = 'cadastro_geral';
    SQLINSERT = 'insert into ' + TABLENAME +
                '(id_cadastro, cod_tipo_cadastro, cod_pessoa, nom_nome_razao, nom_fantasia, num_cpf_cnpj, num_rg_ie, ' +
                'des_expedidor, dat_emissao_rg, uf_expedidor_rg, dat_nascimento, nom_pai, nom_mae, des_nacionalidade, ' +
                'des_naturalidade, uf_naturalidade, num_suframa, num_cnae, num_crt, cod_seguranca_cnh, cod_cnh, ' +
                'num_registro_cnh, dat_validade_cnh, des_categoria, dat_emissao_cnh, dat_primeira_cnh, uf_cnh, cod_sexo, ' +
                'des_estado_civil, dat_cadastro, cod_usuario, des_imagem, id_status, des_obs, num_im, num_iest) ' +
                'values ' +
                '(:id_cadastro, :cod_tipo_cadastro, :cod_pessoa, :nom_nome_razao, :nom_fantasia, :num_cpf_cnpj, :num_rg_ie, ' +
                ':des_expedidor, :dat_emissao_rg, :uf_expedidor_rg, :dat_nascimento, :nom_pai, :nom_mae, :des_nacionalidade, ' +
                ':des_naturalidade, :uf_naturalidade, :num_suframa, :num_cnae, :num_crt, :cod_seguranca_cnh, :cod_cnh, ' +
                ':num_registro_cnh, :dat_validade_cnh, :des_categoria, :dat_emissao_cnh, :dat_primeira_cnh, :uf_cnh, :cod_sexo, ' +
                ':des_estado_civil, :dat_cadastro, :cod_usuario, :des_imagem, :id_status, :des_obs, :num_im, :num_iest);';
    SQLUPDATE = 'update ' + TABLENAME + ' set ' +
                'cod_tipo_cadastro = :cod_tipo_cadastro, cod_pessoa = :cod_pessoa, nom_nome_razao = :nom_nome_razao, ' +
                'nom_fantasia = :nom_fantasia, num_cpf_cnpj = :num_cpf_cnpj, num_rg_ie = :num_rg_ie, ' +
                'des_expedidor = :des_expedidor, dat_emissao_rg = :dat_emissao_rg, uf_expedidor_rg = :uf_expedidor_rg, ' +
                'dat_nascimento = :dat_nascimento, nom_pai = :nom_pai, nom_mae = :nom_mae, ' +
                'des_nacionalidade = :des_nacionalidade, des_naturalidade = :des_naturalidade, ' +
                'uf_naturalidade = :uf_naturalidade, num_suframa = :num_suframa, num_cnae = :num_cnae, num_crt = :num_crt, ' +
                'cod_seguranca_cnh = :cod_seguranca_cnh, cod_cnh = :cod_cnh, num_registro_cnh = :num_registro_cnh, ' +
                'dat_validade_cnh + :dat_validade_cnh, des_categoria = :des_categoria, dat_emissao_cnh = :dat_emissao_cnh, ' +
                'dat_primeira_cnh = :dat_primeira_cnh, uf_cnh = :uf_cnh, cod_sexo = :cod_sexo, ' +
                'des_estado_civil = :des_estado_civil, dat_cadastro = :dat_cadastro, cod_usuario = :cod_usuario, ' +
                'des_imagem + :des_imagem, id_status = :id_status, des_obs = :des_obs ' +
                'num_im = :num_im, num_iest = :num_iest ' +
                'where ' +
                'id_cadastro = :id_cadastro';
    SQLQUERY =  'select ' +
                'id_cadastro, cod_tipo_cadastro, cod_pessoa, nom_nome_razao, nom_fantasia, num_cpf_cnpj, num_rg_ie, ' +
                'des_expedidor, dat_emissao_rg, uf_expedidor_rg, dat_nascimento, nom_pai, nom_mae, des_nacionalidade, ' +
                'des_naturalidade, uf_naturalidade, num_suframa, num_cnae, num_crt, cod_seguranca_cnh, cod_cnh, ' +
                'num_registro_cnh, dat_validade_cnh, des_categoria, dat_emissao_cnh, dat_primeira_cnh, uf_cnh, cod_sexo, ' +
                'des_estado_civil, dat_cadastro, cod_usuario, des_imagem, id_status, des_obs, num_iest ' +
                'from ' + TABLENAME + ';';
implementation

{ TCadastroGeral }

function TCadastroGeral.Alterar: Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(SQLUPDATE,
                    [Self.TipoCadastro, Self.Pessoa, Self.Nome, Self.Alias, Self.CPF, Self.RG, Self.Expedidor, Self.DataRG,
                    Self.UFRG, Self.Nascimento, Self.NomePai, Self.NomeMae, Self.Nacionalidade, Self.Naturalidade,
                    Self.UFNaturalidade, Self.Suframa, Self.CNAE, Self.CRT, Self.CodigoSegurancaCNH, Self.RegistroCNH,
                    Self.ValidadeCNH, Self.CategoriaCNH, Self.DataEmissaoCNH, Self.PrimeiraCNH, Self.UFCNH, Self.Sexo,
                    Self.EstadoCivil, Self.DataCadastro, Self.Usuario, Self.Imagem, Self.Status, Self.Obs,
                    Self.InscricaoMunicipal, Self.IEST, Self.ID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

procedure TCadastroGeral.ClearSelf;
begin
    ID :=  0;
    TipoCadastro :=  0;
    Pessoa :=  '';
    Nome :=  '';
    Alias :=  '';
    CPF :=  '';
    RG :=  '';
    Expedidor :=  '';
    DataRG :=  StrToDate('1899-12-31');
    UFRG :=  '';
    Nascimento :=  StrToDate('1899-12-31');;
    NomePai :=  '';
    NomeMae :=  '';
    Nacionalidade :=  '';
    Naturalidade :=  '';
    UFNaturalidade :=  '';
    Suframa :=  '';
    CNAE :=  '';
    CRT := 0;
    CodigoSegurancaCNH :=  '';
    NumeroCNH :=  '';
    RegistroCNH :=  '';
    ValidadeCNH :=  StrToDate('1899-12-31');;
    CategoriaCNH :=  '';
    DataEmissaoCNH :=  StrToDate('1899-12-31');;
    PrimeiraCNH :=  StrToDate('1899-12-31');;
    UFCNH :=  '';
    Sexo :=  0;
    EstadoCivil :=  '';
    DataCadastro :=  StrToDate('1899-12-31');;
    Usuario :=  0;
    Imagem :=  '';
    Status :=  0;
    Obs :=  '';
    InscricaoMunicipal :=  '';
    IEST :=  '';
end;

constructor TCadastroGeral.Create;
begin
  Fconexao := TConexao.Create;
end;

function TCadastroGeral.Excluir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where id_cadastro = :id_cadastro', [Self.ID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;

end;

function TCadastroGeral.GetID: Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(id_cadastro),0) + 1 from ' + TABLENAME);
    try
      Result := FDQuery.Fields[0].AsInteger;
    finally
      FDQuery.Close;
    end;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCadastroGeral.Gravar: Boolean;
begin
  case FAcao of
    tacIncluir: Result := Self.Inserir();
    tacAlterar: Result := Self.Alterar();
    tacExcluir: Result := Self.Excluir();
  end;
end;

function TCadastroGeral.Inserir: Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    Self.ID := GetId();
    FDQuery.ExecSQL(SQLINSERT,
                    [Self.ID, Self.TipoCadastro, Self.Pessoa, Self.Nome, Self.Alias, Self.CPF, Self.RG, Self.Expedidor, Self.DataRG,
                    Self.UFRG, Self.Nascimento, Self.NomePai, Self.NomeMae, Self.Nacionalidade, Self.Naturalidade,
                    Self.UFNaturalidade, Self.Suframa, Self.CNAE, Self.CRT, Self.CodigoSegurancaCNH, Self.RegistroCNH,
                    Self.ValidadeCNH, Self.CategoriaCNH, Self.DataEmissaoCNH, Self.PrimeiraCNH, Self.UFCNH, Self.Sexo,
                    Self.EstadoCivil, Self.DataCadastro, Self.Usuario, Self.Imagem, Self.Status, Self.Obs, Self.InscricaoMunicipal,
                    Self.IEST]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCadastroGeral.Localizar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
  sfields: String;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;

  FDQuery.SQL.Add(SQLQUERY);
  if aParam[0] = 'ID' then
  begin
    FDQuery.SQL.Add('where id_cadastro = :id_cadastro');
    FDQuery.ParamByName('id_cadastro').AsInteger := aParam[1];
  end;
  if aParam[0] = 'RG' then
  begin
    FDQuery.SQL.Add('where um_rg = :um_rg');
    FDQuery.ParamByName('um_rg').AsString := aParam[1];
  end;
  if aParam[0] = 'CPFCNPJ' then
  begin
    FDQuery.SQL.Add('where num_cpf = :num_cpf');
    FDQuery.ParamByName('num_cpf').AsString := aParam[1];
  end;
  if aParam[0] = 'SEGCNH' then
  begin
    FDQuery.SQL.Add('where cod_seguranca_cnh = :cod_seguranca_cnh');
    FDQuery.ParamByName('cod_seguranca_cnh').AsString := aParam[1];
  end;
  if aParam[0] = 'REGISTROCNH' then
  begin
    FDQuery.SQL.Add('where num_registro_cnh = :num_registro_cnh');
    FDQuery.ParamByName('num_registro_cnh').AsString := aParam[1];
  end;
  if aParam[0] = 'NOME' then
  begin
    FDQuery.SQL.Add('where nom_nome_razao LIKE :nom_nome_razao');
    FDQuery.ParamByName('nom_nome_razao').AsString := aParam[1];
  end;
  if aParam[0] = 'ALIAS' then
  begin
    FDQuery.SQL.Add('where nom_fantasia LIKE :nom_fantasia');
    FDQuery.ParamByName('nom_fantasia').AsString := aParam[1];
  end;
  if aParam[0] = 'FILTRO' then
  begin
    FDQuery.SQL.Add('where ' + aParam[1]);
  end;
  if aParam[0] = 'APOIO' then
  begin
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('select  ' + aParam[1] + ' from ' + TABLENAME + ' ' + aParam[2]);
  end;
  if aParam[0] = 'MACRO' then
  begin
    if aParam[1] = '*' then
    begin
      sFields :=  'id_cadastro, cod_tipo_cadastro, cod_pessoa, nom_nome_razao, nom_fantasia, num_cpf_cnpj, num_rg_ie, ' +
                'des_expedidor, dat_emissao_rg, uf_expedidor_rg, dat_nascimento, nom_pai, nom_mae, des_nacionalidade, ' +
                'des_naturalidade, uf_naturalidade, num_suframa, num_cnae, num_crt, cod_seguranca_cnh, cod_cnh, ' +
                'num_registro_cnh, dat_validade_cnh, des_categoria, dat_emissao_cnh, dat_primeira_cnh, uf_cnh, cod_sexo, ' +
                'des_estado_civil, dat_cadastro, cod_usuario, des_imagem, id_status, des_obs, num_im, num_iest';
    end
    else
    begin
      sFields := aParam[1];
    end;
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('select !colums from !table {if !where } where !where {fi}');
    FDQuery.MacroByName('colums').AsRaw := sFields;
    FDQuery.MacroByName('table').AsRaw := TABLENAME;
    FDQuery.MacroByName('where').AsRaw := aParam[2];
  end;
  FDQuery.Open();
  if not FDQuery.IsEmpty then
  begin
    FDQuery.First;
    if aParam[0] <> 'APOIO' then
    begin
      SetupSelf(FDQuery);
    end;
  end
  else
  begin
    ClearSelf;
  end;
  Result := FDQuery;
end;

procedure TCadastroGeral.SetupSelf(fdQuery: TFDQuery);
begin
    ID :=  fdQuery.FieldByName('id_cadastro').asInteger;
    TipoCadastro :=  fdQuery.FieldByName('cod_tipo_cadastro').AsInteger;
    Pessoa :=  fdQuery.FieldByName('cod_pessoa').AsInteger;
    Nome :=  fdQuery.FieldByName('nom_nome_razao').AsString;
    Alias :=  fdQuery.FieldByName('nom_fantasia').AsString;
    CPF :=  fdQuery.FieldByName('num_cpf_cnpj').AsString;
    RG :=  fdQuery.FieldByName('num_rg_ie').AsString;
    Expedidor :=  fdQuery.FieldByName('des_expedidor').AsString;
    DataRG :=  fdQuery.FieldByName('dat_emissao_rg').AsDateTime;
    UFRG :=  fdQuery.FieldByName('uf_expedidor_rg').AsString;
    Nascimento :=  fdQuery.FieldByName('dat_nascimento').AsDateTime;
    NomePai :=  fdQuery.FieldByName('nom_pai').AsString;
    NomeMae :=  fdQuery.FieldByName('nom_mae').AsString;
    Nacionalidade :=  fdQuery.FieldByName('des_nacionalidade').AsString;
    Naturalidade :=  fdQuery.FieldByName('des_naturalidade').AsString;
    UFNaturalidade :=  fdQuery.FieldByName('uf_naturalidade').AsString;
    Suframa :=  fdQuery.FieldByName('num_suframa').AsString;
    CNAE :=  fdQuery.FieldByName('num_cnae').AsString;
    CRT :=  fdQuery.FieldByName('num_crt').AsInteger;
    CodigoSegurancaCNH :=  fdQuery.FieldByName('cod_seguranca_cnh').AsString;
    NumeroCNH :=  fdQuery.FieldByName('cod_cnh').AsString;
    RegistroCNH :=  fdQuery.FieldByName('num_registro_cnh').AsString;
    ValidadeCNH :=  fdQuery.FieldByName('dat_validade_cnh').AsDateTime;
    CategoriaCNH :=  fdQuery.FieldByName('des_categoria').AsString;
    DataEmissaoCNH :=  fdQuery.FieldByName('dat_emissao_cnh').AsDateTime;
    PrimeiraCNH :=  fdQuery.FieldByName('dat_primeira_cnh').AsDateTime;
    UFCNH :=  fdQuery.FieldByName('uf_cnh').AsString;
    Sexo :=  fdQuery.FieldByName('cod_sexo').AsInteger;
    EstadoCivil :=  fdQuery.FieldByName('des_estado_civil').AsString;
    DataCadastro :=  fdQuery.FieldByName('dat_cadastro').AsDateTime;
    Usuario :=  fdQuery.FieldByName('cod_usuario').AsInteger;
    Imagem :=  fdQuery.FieldByName('des_imagem').AsString;
    Status :=  fdQuery.FieldByName('id_status').AsInteger;
    Obs :=  fdQuery.FieldByName('des_obs').AsString;
    InscricaoMunicipal :=  fdQuery.FieldByName('num_im').AsString;
    IEST :=  fdQuery.FieldByName('num_iest').AsString;
end;

end.
