unit Model.CadastroPessoas;

interface

uses Common.ENum, FireDAC.Comp.Client, DAO.Conexao, Control.Sistema;

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
    FSexo: Integer;
    FNome: String;
    FCategoriaCNH: String;
    FNumeroCNH: String;
    FCodigoSegurancaCNH: String;
    FExpedidor: String;
    FDataEmissaoCNH: TDate;
    FConexao: TConexao;

    function Inserir(): Boolean;
    function Alterar(): Boolean;
    function Excluir(): Boolean;

  public
    property ID: Integer read FID write FID;
    property Nome: String read FNome write FNome;
    property CPF: String read FCPF write FCPF;
    property RG: String read FRG write FRG;
    property Expedidor: String read FExpedidor write FExpedidor;
    property DataRG: TDate read FDataRG write FDataRG;
    property UFRG: String read FUFRG write FUFRG;
    property Nascimento: TDate read FNascimento write FNascimento;
    property NomePai: String read FNomePai write FNomePai;
    property NomeMae: String read FNomeMae write FNomeMae;
    property Naturalidade: String read FNaturalidade write FNaturalidade;
    property UFNaturalidade: String read FUFNaturalidade write FNaturalidade;
    property CodigoSegurancaCNH: String read FCodigoSegurancaCNH write FCodigoSegurancaCNH;
    property NumeroCNH: String read FNumeroCNH write FNumeroCNH;
    property RegistroCNH: String read FRegistroCNH write FRegistroCNH;
    property ValidadeCNH: TDate read FValidadeCNH write FValidadeCNH;
    property CategoriaCNH: String read FCategoriaCNH write FCategoriaCNH;
    property PrimeiraCNH: TDate read FPrimeiraCNH write FPrimeiraCNH;
    property UFCNH: String read FUFCNH write FUFCNH;
    property DataEmissaoCNH: TDate read FDataEmissaoCNH write FDataEmissaoCNH;
    property Sexo: Integer read FSexo write FSexo;
    property EstadoCivil: String read FEstadoCivil write FEstadoCivil;
    property DataCadastro: TDateTime read FDataCadastro write FDataCadastro;
    property Usuario: Integer read FUsuario write FUsuario;
    property Imagem: String read FImagem write FImagem;
    property Acao: TAcao read FAcao write FAcao;

    function GetID(): Integer;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;

  end;
  const
    TABLENAME = 'cadastro_pessoas';

implementation

{ TCadastroGeral }

function TCadastroGeral.Alterar: Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('update ' + TABLENAME + ' set ' +
                    'nom_nome = :nom_nome, num_cpf = :num_cpf, num_rg = :num_rg,des_expedidor = :des_expedidor, ' +
                    'dat_emissao_rg = :dat_emissao_rg, uf_expedidor_rg = :uf_expedidor_rg, ' +
                    'dat_nascimento = :dat_nascimento, nom_pai = :nom_pai, nom_mae = :nom_mae, ' +
                    'des_naturalidade = :des_naturalidade, uf_naturalidade = :uf_naturalidade, ' +
                    'cod_seguranca_cnh = :cod_seguranca_cnh, num_registro_cnh = :num_registro_cnh, ' +
                    'dat_validade_cnh = :dat_validade_cnh, des_categoria = :des_categoria, ' +
                    'dat_emissao_cnh = :dat_emissao_cnh, dat_primeira_cnh = :dat_primeira_cnh, uf_cnh = :uf_cnh, ' +
                    'cod_sexo = :cod_sexo, des_estado_civil = :des_estado_civil, dat_cadastro = :dat_cadastro, ' +
                    'cod_usuario = :cod_usuario, des_imagem = :des_imagem ' +
                    'where id_cadastro = :id_cadastro;',
                    [Self.Nome, Self.CPF, Self.RG, Self.Expedidor, Self.DataRG, Self.UFRG, Self.Nascimento,
                    Self.NomePai, Self.NomeMae, Self.Naturalidade, Self.UFNaturalidade, Self.CodigoSegurancaCNH,
                    Self.RegistroCNH, Self.ValidadeCNH, Self.CategoriaCNH, Self.DataEmissaoCNH, Self.PrimeiraCNH,
                    Self.UFCNH, Self.Sexo, Self.EstadoCivil, Self.DataCadastro, Self.Usuario, Self.Imagem, Self.ID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
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
    FDQuery.ExecSQL('insert into ' + TABLENAME +
                    '(id_cadastro, nom_nome, num_cpf, num_rg, des_expedidor, dat_emissao_rg, uf_expedidor_rg, dat_nascimento, ' +
                    'nom_pai, nom_mae, des_naturalidade, uf_naturalidade, cod_seguranca_cnh, num_registro_cnh, dat_validade_cnh, ' +
                    'des_categoria, dat_emissao_cnh, dat_primeira_cnh, uf_cnh, cod_sexo, des_estado_civil, dat_cadastro, '+
                    'cod_usuario, des_imagem) ' +
                    'values ' +
                    '(:pid_cadastro, :pnom_nome, :pnum_cpf, :pnum_rg, :pdes_expedidor, :pdat_emissao_rg, :puf_expedidor_rg, :pdat_nascimento, ' +
                    ':pnom_pai, :pnom_mae, :pdes_naturalidade, :puf_naturalidade, :pcod_seguranca_cnh, :pnum_registro_cnh, :pdat_validade_cnh, ' +
                    ':pdes_categoria, :pdat_emissao_cnh, :pdat_primeira_cnh, :puf_cnh, :pcod_sexo, :pdes_estado_civil, :pdat_cadastro, '+
                    ':pcod_usuario, :pdes_imagem) ',
                    [Self.ID, Self.Nome, Self.CPF, Self.RG, Self.Expedidor, Self.DataRG, Self.UFRG, Self.Nascimento,
                    Self.NomePai, Self.NomeMae, Self.Naturalidade, Self.UFNaturalidade, Self.CodigoSegurancaCNH,
                    Self.RegistroCNH, Self.ValidadeCNH, Self.CategoriaCNH, Self.DataEmissaoCNH, Self.PrimeiraCNH, Self.UFCNH,
                    Self.Sexo, Self.EstadoCivil, Self.DataCadastro, Self.Usuario, Self.Imagem]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCadastroGeral.Localizar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;

  FDQuery.SQL.Add('select * from ' + TABLENAME);
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
  FDQuery.Open();
  Result := FDQuery;
end;

end.
