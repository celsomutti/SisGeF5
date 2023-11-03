unit DAO.CadastroGeral;

interface

uses FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Control.Sistema, Model.CadastroGeral;

type
  TCadastroGeralDAO = class
  private
    FConexao: TConexao;
  public
    constructor Create;
    function GetId(): Integer;
    function Inserir(ACadastros: TCadastroGeral): Boolean;
    function Alterar(ACadastros: TCadastroGeral): Boolean;
    function Excluir(ACadastros: TCadastroGeral): Boolean;
    function Pesquisar(aParam: array of variant): TFDQuery;
  end;
  const
    TABLENAME = 'cadastro_geral';

implementation

{ TCadastroGeralDAO }

function TCadastroGeralDAO.Alterar(ACadastros: TCadastroGeral): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('update ' + TABLENAME + ' set ' +
                    'cod_tipo_cadastro = :cod_tipo_cadastro, cod_pessoa = :cod_pessoa, nom_nome_razao = :nom_nome_razao, ' +
                    'nom_fantasia = :nom_fantasia, num_cpf_cnpj = :num_cpf_cnpj, num_rg_ie = :num_rg_ie, ' +
                    'des_expedidor = :des_expedidor, dat_emissao_rg = :dat_emissao_rg, uf_expedidor_rg = :uf_expedidor_rg, ' +
                    'dat_nascimento = :dat_nascimento, nom_pai = :nom_pai, nom_mae = :nom_mae, ' +
                    'des_naturalidade = :des_naturalidade, uf_naturalidade = :uf_naturalidade, num_suframa = :num_suframa, ' +
                    'num_cnae = :num_cnae, num_crt = :num_crt, cod_seguranca_cnh = :cod_seguranca_cnh, ' +
                    'num_registro_cnh = :num_registro_cnh, dat_validade_cnh = :dat_validade_cnh, des_categoria = :des_categoria, ' +
                    'dat_emissao_cnh = :dat_emissao_cnh, dat_primeira_cnh = :dat_primeira_cnh, uf_cnh = :uf_cnh, ' +
                    'cod_sexo = :cod_sexo, des_estado_civil = :des_estado_civil, dat_cadastro = :dat_cadastro, ' +
                    'cod_usuario = :cod_usuario, des_imagem = :des_imagem, des_log = :des_log ' +
                    'where id_cadastro = :id_cadastro;',
                    [aCadastros.Tipo, aCadastros.Pessoa, aCadastros.Nome, aCadastros.Alias, aCadastros.CPFCNPJ,
                    aCadastros.RGIE, aCadastros.Expedidor, aCadastros.DataRG, aCadastros.UFRG, aCadastros.Nascimento,
                    aCadastros.NomePai, aCadastros.NomeMae, aCadastros.Naturalidade, aCadastros.UFNaturalidade, aCadastros.SUFRAMA,
                    aCadastros.CNAE, aCadastros.CRT, aCadastros.CodigoSegurancaCNH, aCadastros.RegistroCNH, aCadastros.ValidadeCNH,
                    aCadastros.CategoriaCNH, aCadastros.DataEmissaoCNH, aCadastros.PrimeiraCNH, aCadastros.UFCNH, aCadastros.Sexo,
                    aCadastros.EstadoCivil, aCadastros.DataCadastro, aCadastros.Usuario, aCadastros.Imagem, aCadastros.Log,
                    aCadastros.ID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TCadastroGeralDAO.Create;
begin
  FConexao := Tconexao.Create;
end;

function TCadastroGeralDAO.Excluir(ACadastros: TCadastroGeral): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where id_cadastro = :id_cadastro', [ACadastros.ID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TCadastroGeralDAO.GetId: Integer;
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

function TCadastroGeralDAO.Inserir(ACadastros: TCadastroGeral): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    ACadastros.ID := GetId();
    FDQuery.ExecSQL('insert into ' + TABLENAME +
                    '(id_cadastro, cod_tipo_cadastro, cod_pessoa, nom_nome_razao, nom_fantasia, num_cpf_cnpj, num_rg_ie, ' +
                    'des_expedidor, dat_emissao_rg, uf_expedidor_rg, dat_nascimento, nom_pai, nom_mae, des_naturalidade, ' +
                    'uf_naturalidade, num_suframa, num_cnae, num_crt, cod_seguranca_cnh, num_registro_cnh, dat_validade_cnh, ' +
                    'des_categoria, dat_emissao_cnh, dat_primeira_cnh, uf_cnh, cod_sexo, des_estado_civil, dat_cadastro, '+
                    'cod_usuario, des_imagem, des_log) ' +
                    'values ' +
                    '(:id_cadastro, :cod_tipo_cadastro, :cod_pessoa, :nom_nome_razao, :nom_fantasia, :num_cpf_cnpj, :num_rg_ie, ' +
                    ':des_expedidor, :dat_emissao_rg, :uf_expedidor_rg, :dat_nascimento, :nom_pai, :nom_mae, :des_naturalidade, ' +
                    ':uf_naturalidade,:num_suframa,:num_cnae, :num_crt, :cod_seguranca_cnh, :num_registro_cnh, :dat_validade_cnh, ' +
                    ':des_categoria, :dat_emissao_cnh, :dat_primeira_cnh, :uf_cnh, :cod_sexo, :des_estado_civil, :dat_cadastro, '+
                    ':cod_usuario, :des_imagem, :des_log);',
                    [aCadastros.ID, aCadastros.Tipo, aCadastros.Pessoa, aCadastros.Nome, aCadastros.Alias, aCadastros.CPFCNPJ,
                    aCadastros.RGIE, aCadastros.Expedidor, aCadastros.DataRG, aCadastros.UFRG, aCadastros.Nascimento,
                    aCadastros.NomePai, aCadastros.NomeMae, aCadastros.Naturalidade, aCadastros.UFNaturalidade, aCadastros.SUFRAMA,
                    aCadastros.CNAE, aCadastros.CRT, aCadastros.CodigoSegurancaCNH, aCadastros.RegistroCNH, aCadastros.ValidadeCNH,
                    aCadastros.CategoriaCNH, aCadastros.DataEmissaoCNH, aCadastros.PrimeiraCNH, aCadastros.UFCNH, aCadastros.Sexo,
                    aCadastros.EstadoCivil, aCadastros.DataCadastro, aCadastros.Usuario, aCadastros.Imagem, aCadastros.Log]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCadastroGeralDAO.Pesquisar(aParam: array of variant): TFDQuery;
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
    FDQuery.SQL.Add('where um_rg_ie = :um_rg_ie');
    FDQuery.ParamByName('um_rg_ie').AsString := aParam[1];
  end;
  if aParam[0] = 'CPFCNPJ' then
  begin
    FDQuery.SQL.Add('where num_cpf_cnpj = :num_cpf_cnpj');
    FDQuery.ParamByName('num_cpf_cnpj').AsString := aParam[1];
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
