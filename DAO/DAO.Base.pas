unit DAO.Base;

interface

uses FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Model.Base;

type
  TBaseDAO = class
  private
    FConexao : TConexao;
  public
    constructor Create;
    function Inserir(ABases: TBase): Boolean;
    function Alterar(ABases: TBase): Boolean;
    function Excluir(ABases: TBase): Boolean;
    function Pesquisar(aParam: array of variant): TFDQuery;
  end;
const
  TABLENAME = 'tbagentes';

implementation

{ TBaseDAO }

function TBaseDAO.Alterar(ABases: TBase): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('UPDATE ' + TABLENAME + ' SET ' +
                    'DES_RAZAO_SOCIAL = :DES_RAZAO_SOCIAL, NOM_FANTASIA = :NOM_FANTASIA, ' +
                    'DES_TIPO_DOC = :DES_TIPO_DOC: CNPJ, NUM_CNPJ = :NUM_CNPJ, NUM_IE = :NUM_IE, NUM_IEST = :NUM_IEST, ' +
                    'NUM_IM = :NUM_IM, COD_CNAE = :COD_CNAE, COD_CRT = :COD_CRT, NUM_CNH = :NUM_CNH, ' +
                    'DES_CATEGORIA_CNH = :DES_CATEGORIA_CNH, DAT_VALIDADE_CNH = :DAT_VALIDADE_CNH, DES_PAGINA = :DES_PAGINA, ' +
                    'COD_STATUS = :COD_STATUS, DES_OBSERVACAO = :DES_OBSERVACAO, DAT_CADASTRO = :DAT_CADASTRO, ' +
                    'DAT_ALTERACAO = :DAT_ALTERACAO, VAL_VERBA = :VAL_VERBA, DES_TIPO_CONTA = :DES_TIPO_CONTA, ' +
                    'COD_BANCO = :COD_BANCO, COD_AGENCIA = :COD_AGENCIA, NUM_CONTA = :NUM_CONTA, ' +
                    'NOM_FAVORECIDO = :NOM_FAVORECIDO, NUM_CPF_CNPJ_FAVORECIDO = :NUM_CPF_CNPJ_FAVORECIDO, ' +
                    'DES_FORMA_PAGAMENTO = :DES_FORMA_PAGAMENTO, COD_CENTRO_CUSTO = :COD_CENTRO_CUSTO, ' +
                    'COD_GRUPO = :COD_GRUPO ' +
                    'WHERE ' +
                    'COD_AGENTE = :COD_AGENTE;',
                   [ABases.Nome, ABases.Alias, ABases.TipoDoc, ABases.CPFCNPJ, ABases.RGIE, ABases.IE_ST, ABases.IM, ABases.CNAE,
                    ABases.CRT, ABases.NumCNH, ABases.CatergoriaCNH, ABases.ValidadeCNH, ABases.Pagina, ABases.Status, ABases.Obs,
                    ABases.DataCadastro, ABases.DataAlteracao, ABases.Verba, ABases.TipoConta, ABases.CodigoBanco,
                    ABases.NumeroAgencia, ABases.NumeroConta, ABases.NomeFavorecido, ABases.CPFCNPJFavorecido,
                    ABases.FormaPagamento, ABases.CentroCusto, ABases.GrupoVerba, ABases.Codigo]);
    Result := True;
  finally
    FDQuery.Free;
  end;
end;

constructor TBaseDAO.Create;
begin
  FConexao := TConexao.Create;
end;

function TBaseDAO.Excluir(ABases: TBase): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery;
    Result := False;
    FDQuery.ExecSQL('DELETE FROM ' + TABLENAME + 'WHERE COD_AGENTE = :PCOD_AGENTE', [ABases.Codigo]);
    Result := True;
  finally
    FDQuery.Free;
  end;
end;

function TBaseDAO.Inserir(ABases: TBase): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('INSERT INTO ' + TABLENAME + '(COD_AGENTE, DES_RAZAO_SOCIAL, NOM_FANTASIA, DES_TIPO_DOC, NUM_CNPJ, NUM_IE, ' +
                    'NUM_IEST, NUM_IM, COD_CNAE, COD_CRT, NUM_CNH, DES_CATEGORIA_CNH, DAT_VALIDADE_CNH, DES_PAGINA, COD_STATUS, ' +
                    'DES_OBSERVACAO, DAT_CADASTRO, DAT_ALTERACAO, VAL_VERBA, DES_TIPO_CONTA, COD_BANCO, COD_AGENCIA, NUM_CONTA, ' +
                    'NOM_FAVORECIDO, NUM_CPF_CNPJ_FAVORECIDO, DES_FORMA_PAGAMENTO, COD_CENTRO_CUSTO, COD_GRUPO) ' +
                    'VALUES ' +
                    '(:COD_AGENTE, :DES_RAZAO_SOCIAL, :NOM_FANTASIA, :DES_TIPO_DOC: CNPJ, :NUM_CNPJ, :NUM_IE, :NUM_IEST, ' +
                    ':NUM_IM, :COD_CNAE, :COD_CRT, :NUM_CNH, :DES_CATEGORIA_CNH, :DAT_VALIDADE_CNH, :DES_PAGINA, :COD_STATUS, ' +
                    ':DES_OBSERVACAO, :DAT_CADASTRO, :DAT_ALTERACAO, :VAL_VERBA, :DES_TIPO_CONTA, :COD_BANCO, :COD_AGENCIA, ' +
                    ':NUM_CONTA, :NOM_FAVORECIDO, :NUM_CPF_CNPJ_FAVORECIDO, :DES_FORMA_PAGAMENTO, :COD_CENTRO_CUSTO, :COD_GRUPO);',
                   [ABases.Codigo, ABases.Nome, ABases.Alias, ABases.TipoDoc, ABases.CPFCNPJ, ABases.RGIE, ABases.IE_ST, ABases.IM,
                    ABases.CNAE, ABases.CRT, ABases.NumCNH, ABases.CatergoriaCNH, ABases.ValidadeCNH, ABases.Pagina, ABases.Status,
                    ABases.Obs, ABases.DataCadastro, ABases.DataAlteracao, ABases.Verba, ABases.TipoConta, ABases.CodigoBanco,
                    ABases.NumeroAgencia, ABases.NumeroConta, ABases.NomeFavorecido, ABases.CPFCNPJFavorecido,
                    ABases.FormaPagamento, ABases.CentroCusto, ABases.GrupoVerba]);
    Result := True;
  finally
    FDQuery.Free;
  end;
end;

function TBaseDAO.Pesquisar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;

  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'CODIGO' then
  begin
    FDQuery.SQL.Add('WHERE COD_AGENTE = :COD_AGENTE');
    FDQuery.ParamByName('PCOD_AGENTE').AsInteger := aParam[1];
  end;
  if aParam[0] = 'NOME' then
  begin
    FDQuery.SQL.Add('WHERE DES_RAZAO_SOCIAL LIKE :DES_RAZAO_SOCIAL');
    FDQuery.ParamByName('DES_RAZAO_SOCIAL').AsString := aParam[1];
  end;
  if aParam[0] = 'ALIAS' then
  begin
    FDQuery.SQL.Add('WHERE NOM_FANTASIA LIKE :NOM_FANTASIA');
    FDQuery.ParamByName('NOM_FANTASIA').AsString := aParam[1];
  end;
  if aParam[0] = 'CNPJ' then
  begin
    FDQuery.SQL.Add('WHERE NUM_CNPJ = :NUM_CNPJ');
    FDQuery.ParamByName('NUM_CNPJ').AsString := aParam[1];
  end;
  if aParam[0] = 'FILTRO' then
  begin
    FDQuery.SQL.Add('WHERE ' + aParam[1]);
  end;
  if aParam[0] = 'APOIO' then
  begin
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT  ' + aParam[1] + ' FROM ' + TABLENAME + ' ' + aParam[2]);
  end;
  FDQuery.Open();
  Result := FDQuery;
end;


end.
