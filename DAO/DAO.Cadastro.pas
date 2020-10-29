unit DAO.Cadastro;

interface

uses
  FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Model.Cadastro;

  type
    TCadastroDAO = class
    private
      FConexao : TConexao;
    public
      constructor Create;
      function GetID(): Integer;
      function Inserir(ACadastro: TCadastro): Boolean;
      function Alterar(ACadastro: TCadastro): Boolean;
      function Excluir(ACadastro: TCadastro): Boolean;
      function Pesquisar(aParam: array of variant): TFDQuery;
      function GetField(sField: String; sKey: String; sKeyValue: String): String;
  end;
  const
    TABLENAME = 'tbentregadores';

implementation

{ TCadastroDAO }

uses Control.Sistema;

function TCadastroDAO.Alterar(ACadastro: TCadastro): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('UPDATE ' + TABLENAME + ' SET DOM_FUNCIONARIO = :DOM_FUNCIONARIO, COD_ENTREGADOR = :COD_ENTREGADOR, ' +
                    'DES_TIPO_DOC = :DES_TIPO_DOC, DES_RAZAO_SOCIAL = :DES_RAZAO_SOCIAL, NOM_FANTASIA = :NOM_FANTASIA, ' +
                    'NUM_CNPJ = :NUM_CNPJ, NUM_IE = :NUM_IE, DAT_NASCIMENTO = :DAT_NASCIMENTO, UF_RG = :UF_RG, ' +
                    'DAT_EMISSAO_RG = :DAT_EMISSAO_RG, UF_NASCIMENTO = :UF_NASCIMENTO, ' +
                    'NOM_CIDADE_NASCIMENTO = :NOM_CIDADE_NASCIMENTO, NOM_PAI = :NOM_PAI, NOM_MAE = :NOM_MAE, ' +
                    'NUM_IEST = :NUM_IEST, NUM_IM = :NUM_IM, COD_CNAE = :COD_CNAE, COD_CRT = :COD_CRT, ' +
                    'NUM_CNH = :NUM_CNH, NUM_REGISTRO_CNH = :NUM_REGISTRO_CNH, DES_CATEGORIA_CNH = :DES_CATEGORIA_CNH, ' +
                    'DAT_VALIDADE_CNH = :DAT_VALIDADE_CNH, UF_CNH = :UF_CNH, DAT_1_HABILITACAO = :DAT_1_HABILITACAO, ' +
                    'DES_PAGINA = :DES_PAGINA, COD_AGENTE = :COD_AGENTE, COD_STATUS = :COD_STATUS, ' +
                    'DES_OBSERVACAO = :DES_OBSERVACAO, DAT_CADASTRO = :DAT_CADASTRO, COD_USUARIO = :COD_USUARIO, ' +
                    'VAL_VERBA = :VAL_VERBA, VAL_VERBA_COMBUSTIVEL = :VAL_VERBA_COMBUSTIVEL, DES_TIPO_CONTA = :DES_TIPO_CONTA, ' +
                    'COD_BANCO = :COD_BANCO, COD_AGENCIA = :COD_AGENCIA, NUM_CONTA = :NUM_CONTA, ' +
                    'NOM_FAVORECIDO = :NOM_FAVORECIDO, NUM_CPF_CNPJ_FAVORECIDO = :NUM_CPF_CNPJ_FAVORECIDO, ' +
                    'DES_FORMA_PAGAMENTO = :DES_FORMA_PAGAMENTO, COD_CENTRO_CUSTO = :COD_CENTRO_CUSTO, ' +
                    'DOM_VITIMA_ROUBO = :DOM_VITIMA_ROUBO, QTD_VITIMA_ROUBO = :QTD_VITIMA_ROUBO, DOM_ACIDENTES = :DOM_ACIDENTES, ' +
                    'QTD_ACIDENTES = :QTD_ACIDENTES, DOM_TRANSPORTE_EMPRESA = :DOM_TRANSPORTE_EMPRESA, ' +
                    'QTD_TRANSPORTE = :QTD_TRANSPORTE, DOM_GV = :DOM_GV, DAT_GV = :DAT_GV, NOM_EXECUTANTE = :NOM_EXECUTANTE, ' +
                    'DAT_ALTERACAO = :DAT_ALTERACAO, DES_CHAVE = :DES_CHAVE, COD_GRUPO = :COD_GRUPO, COD_ROTEIRO = :COD_ROTEIRO, ' +
                    'COD_MEI = :COD_MEI, NOM_RAZAO_MEI = :NOM_RAZAO_MEI, NOM_FANTASIA_MEI = :NOM_FANTASIA_MEI, ' +
                    'NUM_CNPJ_MEI = :NUM_CNPJ_MEI ' +
                    'WHERE COD_CADASTRO = :COD_CADASTRO;',
                    [aCadastro.Funcionario, aCadastro.Entregador, aCadastro.Doc, aCadastro.Nome, aCadastro.Fantasia,
                    aCadastro.CPFCNPJ, aCadastro.IERG, aCadastro.Nascimento, aCadastro.UFRG, aCadastro.EMissaoRG,
                    aCadastro.UFNascimento, aCadastro.CidadeNascimento, aCadastro.Pai, aCadastro.Mae, aCadastro.IEST,
                    aCadastro.IM, aCadastro.CNAE, aCadastro.CRT, aCadastro.NumeroCNH, aCadastro.RegistroCNH, aCadastro.CategoriaCNH,
                    aCadastro.ValidadeCNH, aCadastro.UFCNH, aCadastro.DataPrimeiraCNH, aCadastro.URL, aCadastro.Agente,
                    aCadastro.Status, aCadastro.Obs, aCadastro.DataCadastro, aCadastro.Usuario, aCadastro.Verba,
                    aCadastro.Combustivel, aCadastro.TipoConta, aCadastro.Banco, aCadastro.AgenciaConta, aCadastro.NumeroConta,
                    aCadastro.NomeFavorecido, aCadastro.CPFCNPJFavorecido, aCadastro.FormaPagamento, aCadastro.CentroCusto,
                    aCadastro.Roubo, aCadastro.QuantosRoubos, aCadastro.Acidentes, aCadastro.QuantosAcidentes,
                    aCadastro.TransporteEmpresa, aCadastro.QuantosTransporteEmptresa, aCadastro.GV, aCadastro.DataGV,
                    aCadastro.Executante, aCadastro.DataAlteracao, aCadastro.Chave, aCadastro.Grupo, aCadastro.Roteiro,
                    aCadastro.MEI, aCadastro.RazaoMEI, aCadastro.FantasiaMEI, aCadastro.CNPJMEI, aCadastro.Cadastro]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TCadastroDAO.Create;
begin
  FConexao := TSistemaControl.GetInstance().Conexao;
end;

function TCadastroDAO.Excluir(ACadastro: TCadastro): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where WHERE COD_CADASTRO = :COD_CADASTRO',
                    [ACadastro.Cadastro]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TCadastroDAO.GetField(sField, sKey, sKeyValue: String): String;
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

function TCadastroDAO.GetID: Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(COD_CADASTRO),0) + 1 from ' + TABLENAME);
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

function TCadastroDAO.Inserir(ACadastro: TCadastro): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('INSERT INTO ' + TABLENAME + '(COD_CADASTRO, DOM_FUNCIONARIO, COD_ENTREGADOR, DES_TIPO_DOC, ' +
                    'DES_RAZAO_SOCIAL, NOM_FANTASIA, NUM_CNPJ, NUM_IE, DAT_NASCIMENTO, UF_RG, DAT_EMISSAO_RG, ' +
                    'UF_NASCIMENTO, NOM_CIDADE_NASCIMENTO, NOM_PAI, NOM_MAE, NUM_IEST, NUM_IM, COD_CNAE, COD_CRT, NUM_CNH, ' +
                    'NUM_REGISTRO_CNH, DES_CATEGORIA_CNH, DAT_VALIDADE_CNH, UF_CNH, DAT_1_HABILITACAO, DES_PAGINA, COD_AGENTE, ' +
                    'COD_STATUS, DES_OBSERVACAO, DAT_CADASTRO, COD_USUARIO, VAL_VERBA, VAL_VERBA_COMBUSTIVEL, DES_TIPO_CONTA, ' +
                    'COD_BANCO, COD_AGENCIA, NUM_CONTA, NOM_FAVORECIDO, NUM_CPF_CNPJ_FAVORECIDO, DES_FORMA_PAGAMENTO, ' +
                    'COD_CENTRO_CUSTO, DOM_VITIMA_ROUBO, QTD_VITIMA_ROUBO, DOM_ACIDENTES, QTD_ACIDENTES, ' +
                    'DOM_TRANSPORTE_EMPRESA, QTD_TRANSPORTE, DOM_GV, DAT_GV, NOM_EXECUTANTE, DAT_ALTERACAO, DES_CHAVE, ' +
                    'COD_GRUPO, COD_ROTEIRO, COD_MEI, NOM_RAZAO_MEI, NOM_FANTASIA_MEI, NUM_CNPJ_MEI) ' +
                    'VALUES ' +
                    '(:COD_CADASTRO, :DOM_FUNCIONARIO, :COD_ENTREGADOR, :DES_TIPO_DOC, :DES_RAZAO_SOCIAL, :NOM_FANTASIA, ' +
                    ':NUM_CNPJ, :NUM_IE, :DAT_NASCIMENTO, :UF_RG, :DAT_EMISSAO_RG, :UF_NASCIMENTO, :NOM_CIDADE_NASCIMENTO, ' +
                    ':NOM_PAI, :NOM_MAE, :NUM_IEST, :NUM_IM, :COD_CNAE, :COD_CRT, :NUM_CNH, :NUM_REGISTRO_CNH, ' +
                    ':DES_CATEGORIA_CNH, :DAT_VALIDADE_CNH, :UF_CNH, :DAT_1_HABILITACAO, :DES_PAGINA, :COD_AGENTE, :COD_STATUS, ' +
                    ':DES_OBSERVACAO, :DAT_CADASTRO, :COD_USUARIO, :VAL_VERBA, :VAL_VERBA_COMBUSTIVEL, :DES_TIPO_CONTA, ' +
                    ':COD_BANCO, :COD_AGENCIA, :NUM_CONTA, :NOM_FAVORECIDO, :NUM_CPF_CNPJ_FAVORECIDO, :DES_FORMA_PAGAMENTO, ' +
                    ':COD_CENTRO_CUSTO, :DOM_VITIMA_ROUBO, :QTD_VITIMA_ROUBO, :DOM_ACIDENTES, :QTD_ACIDENTES, ' +
                    ':DOM_TRANSPORTE_EMPRESA, :QTD_TRANSPORTE, :DOM_GV, :DAT_GV, :NOM_EXECUTANTE, :DAT_ALTERACAO, :DES_CHAVE, ' +
                    ':COD_GRUPO, :COD_ROTEIRO, :COD_MEI, :NOM_RAZAO_MEI, :NOM_FANTASIA_MEI, :NUM_CNPJ_MEI);',
                    [aCadastro.Cadastro, aCadastro.Funcionario, aCadastro.Entregador, aCadastro.Doc, aCadastro.Nome,
                    aCadastro.Fantasia, aCadastro.CPFCNPJ, aCadastro.IERG, aCadastro.Nascimento, aCadastro.UFRG,
                    aCadastro.EMissaoRG, aCadastro.UFNascimento, aCadastro.CidadeNascimento, aCadastro.Pai, aCadastro.Mae,
                    aCadastro.IEST, aCadastro.IM, aCadastro.CNAE, aCadastro.CRT, aCadastro.NumeroCNH, aCadastro.RegistroCNH,
                    aCadastro.CategoriaCNH, aCadastro.ValidadeCNH, aCadastro.UFCNH, aCadastro.DataPrimeiraCNH, aCadastro.URL,
                    aCadastro.Agente, aCadastro.Status, aCadastro.Obs, aCadastro.DataCadastro, aCadastro.Usuario, aCadastro.Verba,
                    aCadastro.Combustivel, aCadastro.TipoConta, aCadastro.Banco, aCadastro.AgenciaConta, aCadastro.NumeroConta,
                    aCadastro.NomeFavorecido, aCadastro.CPFCNPJFavorecido, aCadastro.FormaPagamento, aCadastro.CentroCusto,
                    aCadastro.Roubo, aCadastro.QuantosRoubos, aCadastro.Acidentes, aCadastro.QuantosAcidentes,
                    aCadastro.TransporteEmpresa, aCadastro.QuantosTransporteEmptresa, aCadastro.GV, aCadastro.DataGV,
                    aCadastro.Executante, aCadastro.DataAlteracao, aCadastro.Chave, aCadastro.Grupo, aCadastro.Roteiro,
                    aCadastro.MEI, aCadastro.RazaoMEI, aCadastro.FantasiaMEI, aCadastro.CNPJMEI]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCadastroDAO.Pesquisar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;
  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'CADASTRO' then
  begin
    FDQuery.SQL.Add('WHERE COD_CADASTRO = :COD_CADASTRO');
    FDQuery.ParamByName('COD_CADASTRO').AsInteger := aParam[1];
  end;
  if aParam[0] = 'CPF' then
  begin
    FDQuery.SQL.Add('WHERE NUM_CNPJ = :NUM_CNPJ');
    FDQuery.ParamByName('NUM_CNPJ').AsString := aParam[1];
  end;
  if aParam[0] = 'RG' then
  begin
    FDQuery.SQL.Add('WHERE NUM_IE = :NUM_IE');
    FDQuery.ParamByName('NUM_IE').AsString := aParam[1];
  end;
  if aParam[0] = 'CNPJIMEI' then
  begin
    FDQuery.SQL.Add('WHERE NUM_CNPJ_MEI = :NUM_CNPJ_MEI');
    FDQuery.ParamByName('NUM_CNPJ_MEI').AsString := aParam[1];
  end;
  if aParam[0] = 'IMEI' then
  begin
    FDQuery.SQL.Add('WHERE COD_MEI = :COD_MEI');
    FDQuery.ParamByName('COD_MEI').AsString := aParam[1];
  end;
  if aParam[0] = 'NOME' then
  begin
    FDQuery.SQL.Add('WHERE DES_RAZAO_SOCIAL = :DES_RAZAO_SOCIAL');
    FDQuery.ParamByName('DES_RAZAO_SOCIAL').AsString := aParam[1];
  end;
  if aParam[0] = 'FANTASIA' then
  begin
    FDQuery.SQL.Add('WHERE NOM_FANTASIA = :NOM_FANTASIA');
    FDQuery.ParamByName('NOM_FANTASIA').AsString := aParam[1];
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
  FDQuery.Open;
  Result := FDQuery;
end;

end.
