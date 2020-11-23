unit DAO.Bases;

interface

uses
  FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Model.Bases;

  type
    TBasesDAO = class
  private
    FConexao : TConexao;
  public
    constructor Create;
    function Inserir(ABase: TBases): Boolean;
    function Alterar(ABase: TBases): Boolean;
    function Excluir(ABase: TBases): Boolean;
    function Pesquisar(aParam: array of variant): TFDQuery;
    function LocalizarExato(aParam: array of variant): Boolean;
    function GetField(sField: String; sKey: String; sKeyValue: String): String;
  end;
  const
    TABLENAME = 'tbagentes';


implementation

{ TBasesDAO }

uses Control.Sistema;

function TBasesDAO.Alterar(ABase: TBases): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('UPDATE ' + TABLENAME + 'SET COD_AGENTE = :COD_AGENTE, DES_RAZAO_SOCIAL = :DES_RAZAO_SOCIAL, ' +
    'NOM_FANTASIA = :NOM_FANTASIA, DES_TIPO_DOC = :DES_TIPO_DOC, NUM_CNPJ = :NUM_CNPJ, NUM_IE = :NUM_IE, ' +
    'NUM_IEST = :NUM_IEST, NUM_IM = :NUM_IM, COD_CNAE = :COD_CNAE, COD_CRT = :COD_CRT, NUM_CNH = :NUM_CNH, ' +
    'DES_CATEGORIA_CNH = :DES_CATEGORIA_CNH, DAT_VALIDADE_CNH = :DAT_VALIDADE_CNH, DES_PAGINA = :DES_PAGINA, ' +
    'COD_STATUS = :COD_STATUS, DES_OBSERVACAO = :DES_OBSERVACAO, DAT_CADASTRO = :DAT_CADASTRO, ' +
    'DAT_ALTERACAO = :DAT_ALTERACAO, VAL_VERBA = :VAL_VERBA, DES_TIPO_CONTA = :DES_TIPO_CONTA, COD_BANCO = :COD_BANCO, ' +
    'COD_AGENCIA = :COD_AGENCIA, NUM_CONTA = :NUM_CONTA, NOM_FAVORECIDO = :NOM_FAVORECIDO, ' +
    'NUM_CPF_CNPJ_FAVORECIDO = :NUM_CPF_CNPJ_FAVORECIDO, DES_FORMA_PAGAMENTO = :DES_FORMA_PAGAMENTO, ' +
    'COD_CENTRO_CUSTO = :COD_CENTRO_CUSTO, COD_GRUPO = :COD_GRUPO WHERE COD_AGENTE = :COD_AGENTE;', [ABase.RazaoSocial,
    ABase.NomeFantasia, ABase.TipoDoc, ABase.CNPJCPF, ABase.IE, ABase.IEST, ABase.IM, ABase.CNAE, ABase.CRT,
    ABase.NumeroCNH, ABase.CategoriaCNH, ABase.ValidadeCNH, ABase.PaginaWeb, ABase.Status, ABase.Obs, ABase.DataCadastro,
    ABase.DataAlteracao, ABase.ValorVerba, ABase.TipoConta, ABase.CodigoBanco, ABase.NumeroAgente, ABase.NumeroConta,
    ABase.NomeFavorecido, ABase.CNPJCPFFavorecido, ABase.FormaPagamento, ABase.CentroCusto, ABase.Grupo, ABase.Codigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TBasesDAO.Create;
begin
  FConexao := TSistemaControl.GetInstance().Conexao;
end;

function TBasesDAO.Excluir(ABase: TBases): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where COD_AGENTE = :COD_AGENTE', [ABase.Codigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TBasesDAO.GetField(sField, sKey, sKeyValue: String): String;
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

function TBasesDAO.Inserir(ABase: TBases): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('INSERT INTO ' + TABLENAME  + '(COD_AGENTE, DES_RAZAO_SOCIAL, NOM_FANTASIA, DES_TIPO_DOC, NUM_CNPJ, NUM_IE, ' +
                    'NUM_IEST, NUM_IM, COD_CNAE, COD_CRT, NUM_CNH, DES_CATEGORIA_CNH, DAT_VALIDADE_CNH, DES_PAGINA, COD_STATUS, ' +
                    'DES_OBSERVACAO, DAT_CADASTRO, DAT_ALTERACAO, VAL_VERBA, DES_TIPO_CONTA, COD_BANCO, COD_AGENCIA, NUM_CONTA, ' +
                    'NOM_FAVORECIDO, NUM_CPF_CNPJ_FAVORECIDO, DES_FORMA_PAGAMENTO, COD_CENTRO_CUSTO, COD_GRUPO) ' +
                    'VALUES ' +
                    '(:COD_AGENTE, :DES_RAZAO_SOCIAL, :NOM_FANTASIA, :DES_TIPO_DOC, :NUM_CNPJ, :NUM_IE, :NUM_IEST, :NUM_IM, ' +
                    ':COD_CNAE, :COD_CRT, :NUM_CNH, :DES_CATEGORIA_CNH, :DAT_VALIDADE_CNH, :DES_PAGINA, :COD_STATUS, ' +
                    ':DES_OBSERVACAO, :DAT_CADASTRO, :DAT_ALTERACAO, :VAL_VERBA, :DES_TIPO_CONTA, :COD_BANCO, :COD_AGENCIA, ' +
                    ':NUM_CONTA, :NOM_FAVORECIDO, :NUM_CPF_CNPJ_FAVORECIDO, :DES_FORMA_PAGAMENTO, :COD_CENTRO_CUSTO, :COD_GRUPO);',
                    [ABase.Codigo, ABase.RazaoSocial, ABase.NomeFantasia, ABase.TipoDoc, ABase.CNPJCPF, ABase.IE, ABase.IEST,
                    ABase.IM, ABase.CNAE, ABase.CRT, ABase.NumeroCNH, ABase.CategoriaCNH, ABase.ValidadeCNH, ABase.PaginaWeb,
                    ABase.Status, ABase.Obs, ABase.DataCadastro, ABase.DataAlteracao, ABase.ValorVerba, ABase.TipoConta,
                    ABase.CodigoBanco, ABase.NumeroAgente, ABase.NumeroConta, ABase.NomeFavorecido, ABase.CNPJCPFFavorecido,
                    ABase.FormaPagamento, ABase.CentroCusto, ABase.Grupo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TBasesDAO.LocalizarExato(aParam: array of variant): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    if Length(aParam) < 2 then Exit;
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('select * from ' + TABLENAME);
    if aParam[0] = 'CODIGO' then
    begin
      FDQuery.SQL.Add('WHERE COD_AGENTE = :COD_AGENTE');
      FDQuery.ParamByName('COD_AGENTE').Value := aParam[1];
    end;
    if aParam[0] = 'CNPJ' then
    begin
      FDQuery.SQL.Add('WHERE NUM_CNPJ = :NUM_CNPJ');
      FDQuery.ParamByName('NUM_CNPJ').AsString := aParam[1];
    end;
    if aParam[0] = 'RAZAO' then
    begin
      FDQuery.SQL.Add('WHERE DES_RAZAO_SOCIAL = :DES_RAZAO_SOCIAL');
      FDQuery.ParamByName('DES_RAZAO_SOCIAL').AsString := aParam[1];
    end;
    if aParam[0] = 'FANTASIA' then
    begin
      FDQuery.SQL.Add('WHERE NOM_FANTASIA = :NOM_FANTASIA');
      FDQuery.ParamByName('NOM_FANTASIA').AsString := aParam[1];
    end;
    if aParam[0] = 'IE' then
    begin
      FDQuery.SQL.Add('WHERE NUM_IE = :NUM_IE');
      FDQuery.ParamByName('NUM_IE').AsString := aParam[1];
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
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TBasesDAO.Pesquisar(aParam: array of variant): TFDQuery;
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
    FDQuery.ParamByName('COD_AGENTE').Value := aParam[1];
  end;
  if aParam[0] = 'CNPJ' then
  begin
    FDQuery.SQL.Add('WHERE NUM_CNPJ = :NUM_CNPJ');
    FDQuery.ParamByName('NUM_CNPJ').AsString := aParam[1];
  end;
  if aParam[0] = 'RAZAO' then
  begin
    FDQuery.SQL.Add('WHERE DES_RAZAO_SOCIAL = :DES_RAZAO_SOCIAL');
    FDQuery.ParamByName('DES_RAZAO_SOCIAL').AsString := aParam[1];
  end;
  if aParam[0] = 'FANTASIA' then
  begin
    FDQuery.SQL.Add('WHERE NOM_FANTASIA = :NOM_FANTASIA');
    FDQuery.ParamByName('NOM_FANTASIA').AsString := aParam[1];
  end;
  if aParam[0] = 'IE' then
  begin
    FDQuery.SQL.Add('WHERE NUM_IE = :NUM_IE');
    FDQuery.ParamByName('NUM_IE').AsString := aParam[1];
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
