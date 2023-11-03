unit DAO.LogradourosCEP;

interface

uses FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Model.LogradourosCEP;

type
  TLogradourosCEPDAO = class
  private
    FConexao: TConexao;
  public
    constructor Create;
    function GetID(): Integer;
    function Inserir(ALogradouros: TLogradouroCEP): Boolean;
    function Alterar(ALogradouros: TLogradouroCEP): Boolean;
    function Excluir(ALogradouros: TLogradouroCEP): Boolean;
    function Pesquisar(aParam: array of variant): TFDQuery;
  end;
  const
    TABLENAME = 'cadastro_logradouros';

implementation

uses Control.Sistema;

{ TLogradourosCEPDAO }

function TLogradourosCEPDAO.Alterar(ALogradouros: TLogradouroCEP): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('update ' + TABLENAME + ' set num_cep = :num_cep, des_tipo = :des_tipo, ' +
                    'des_descricao = :des_descricao, id_cidade = :id_cidade, uf_estado = :uf_estado, ' +
                    'des_complemento = :des_complemento, des_descricao_sem_numero = :des_descricao_sem_numero, ' +
                    'des_descricao_cidade = :des_descricao_cidade, cod_cidade_ibge = :cod_cidade_ibge, des_bairro = :des_bairro ' +
                    'where id_logradouro = :id_logradouro;', [ALogradouros.CEP, ALogradouros.Tipo, ALogradouros.Descricao,
                    ALogradouros.IDCidade, ALogradouros.UF, ALogradouros.Complemento, ALogradouros.DescricaoSemNumero,
                    ALogradouros.Cidade, ALogradouros.CodigoIBGE, ALogradouros.Bairro, ALogradouros.ID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TLogradourosCEPDAO.Create;
begin
  FConexao := TSistemaControl.GetInstance.Conexao;
end;

function TLogradourosCEPDAO.Excluir(ALogradouros: TLogradouroCEP): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where id_logradouro = :id_logradouro', [ALogradouros.ID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TLogradourosCEPDAO.GetID: Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(id_logradouro),0) + 1 from ' + TABLENAME);
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

function TLogradourosCEPDAO.Inserir(ALogradouros: TLogradouroCEP): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('insert into ' + TABLENAME + '(id_logradouro, num_cep, des_tipo, des_descricao, id_cidade, uf_estado, ' +
                    'des_complemento, des_descricao_sem_numero, des_descricao_cidade, cod_cidade_ibge, des_bairro)' +
                    'vales ' +
                    '(:id_logradouro, :num_cep, :des_tipo, :des_descricao, :id_cidade, :uf_estado, :des_complemento, ' +
                    ':des_descricao_sem_numero, :des_descricao_cidade, :cod_cidade_ibge, :des_bairro);' , [ALogradouros.ID,
                    ALogradouros.CEP, ALogradouros.Tipo, ALogradouros.Descricao, ALogradouros.IDCidade, ALogradouros.UF,
                    ALogradouros.Complemento, ALogradouros.DescricaoSemNumero, ALogradouros.Cidade, ALogradouros.CodigoIBGE,
                    ALogradouros.Bairro]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TLogradourosCEPDAO.Pesquisar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;
  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'ID' then
  begin
    FDQuery.SQL.Add('where id_logradouro = :id_logradouro');
    FDQuery.ParamByName('id_logradouro').AsInteger := aParam[1];
  end;
  if aParam[0] = 'CEP' then
  begin
    FDQuery.SQL.Add('where num_cep = :num_cep');
    FDQuery.ParamByName('num_cep').AsString := aParam[1];
  end;
  if aParam[0] = 'UF' then
  begin
    FDQuery.SQL.Add('where uf_estado = :uf_estado');
    FDQuery.ParamByName('uf_estado').AsString := aParam[1];
  end;
  if aParam[0] = 'LOGRADOURO' then
  begin
    FDQuery.SQL.Add('where des_descricao_sem_numero like :des_descricao_sem_numero');
    FDQuery.ParamByName('des_descricao_sem_numero').AsString := aParam[1];
  end;
  if aParam[0] = 'CIDADE' then
  begin
    FDQuery.SQL.Add('where des_descricao_cidade like :des_descricao_cidade');
    FDQuery.ParamByName('des_descricao_cidade').AsString := aParam[1];
  end;
  if aParam[0] = 'BAIRRO' then
  begin
    FDQuery.SQL.Add('where des_bairro like :des_bairro');
    FDQuery.ParamByName('num_nossonumero').AsString := aParam[1];
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
  FDQuery.Open;
  Result := FDQuery;
end;

end.
