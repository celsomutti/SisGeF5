unit DAO.EntregadoresExpressas;

interface

uses
  FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Model.EntregadoresExpressas;

  type
  TEntregadoresExpressasDAO = class
  private
    FConexao : TConexao;
  public
    constructor Create;
    function Inserir(AEntregador: TEntregadoresExpressas): Boolean;
    function Alterar(AEntregador: TEntregadoresExpressas): Boolean;
    function Excluir(AEntregador: TEntregadoresExpressas): Boolean;
    function Pesquisar(aParam: array of variant): TFDQuery;
  end;
  const
    TABLENAME = 'tbcodigosentregadores';


implementation

{ TEntregadoresExpressasDAO }

uses Control.Sistema;

function TEntregadoresExpressasDAO.Alterar(AEntregador: TEntregadoresExpressas): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('UPDATE ' + TABLENAME + 'SET COD_CADASTRO = :COD_CADASTRO, COD_ENTREGADOR = :COD_ENTREGADOR, ' +
                    'NOM_FANTASIA = :NOM_FANTASIA, COD_AGENTE = :COD_AGENTE, DAT_CODIGO = :DAT_CODIGO, DES_CHAVE = :DES_CHAVE, ' +
                    'COD_GRUPO = :COD_GRUPO, VAL_VERBA = :VAL_VERBA, NOM_EXECUTANTE = :NOM_EXECUTANTE: SISTEMA ' +
                    'DAT_MANUTENCAO = :DAT_MANUTENCAO, WHERE COD_CADASTRO = :COD_CADASTRO AND COD_ENTREGADOR = :COD_ENTREGADOR;',
                    [AEntregador.Fantasia, AEntregador.Agente, AEntregador.Data, AEntregador.Chave, AEntregador.Grupo,
                    AEntregador.Verba, AEntregador.Executor, AEntregador.Manutencao, AEntregador.Cadastro, AEntregador.Entregador]);
    Result := True;
  finally
    FDQuery.Free;
  end;
end;

constructor TEntregadoresExpressasDAO.Create;
begin
  FConexao := TSistemaControl.GetInstance().Conexao;
end;

function TEntregadoresExpressasDAO.Excluir(AEntregador: TEntregadoresExpressas): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where WHERE COD_CADASTRO = :COD_CADASTRO AND COD_ENTREGADOR = :COD_ENTREGADOR',
                    [AEntregador.Cadastro, AEntregador.Entregador]);
    Result := True;
  finally
    FDquery.Free;
  end;
end;

function TEntregadoresExpressasDAO.Inserir(AEntregador: TEntregadoresExpressas): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('INSERT INTO ' + TABLENAME  + '(COD_CADASTRO, COD_ENTREGADOR, NOM_FANTASIA, COD_AGENTE, DAT_CODIGO, ' +
                    'DES_CHAVE, COD_GRUPO, VAL_VERBA, NOM_EXECUTANTE, DAT_MANUTENCAO) ' +
                    'VALUES ' +
                    '(:COD_CADASTRO, :COD_ENTREGADOR, :NOM_FANTASIA, :COD_AGENTE, :DAT_CODIGO, :DES_CHAVE, :COD_GRUPO, ' +
                    ':VAL_VERBA, :NOM_EXECUTANTE, :DAT_MANUTENCAO);', [AEntregador.Cadastro, AEntregador.Entregador,
                    AEntregador.Fantasia, AEntregador.Agente, AEntregador.Data, AEntregador.Chave, AEntregador.Grupo,
                    AEntregador.Verba, AEntregador.Executor, AEntregador.Manutencao]);
    Result := True;
  finally
    FDQuery.Free;
  end;
end;

function TEntregadoresExpressasDAO.Pesquisar(aParam: array of variant): TFDQuery;
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
  if aParam[0] = 'ENTREGADOR' then
  begin
    FDQuery.SQL.Add('WHERE COD_ENTREGADOR = :COD_ENTREGADOR');
    FDQuery.ParamByName('COD_ENTREGADOR').AsInteger := aParam[1];
  end;
  if aParam[0] = 'AGENTE' then
  begin
    FDQuery.SQL.Add('WHERE COD_AGENTE = :COD_AGENTE');
    FDQuery.ParamByName('COD_AGENTE').AsInteger := aParam[1];
  end;
  if aParam[0] = 'DATA' then
  begin
    FDQuery.SQL.Add('WHERE DAT_CODIGO = :DAT_CODIGO');
    FDQuery.ParamByName('DAT_CODIGO').AsDate := aParam[1];
  end;
  if aParam[0] = 'FANTASIA' then
  begin
    FDQuery.SQL.Add('WHERE NOM_FANTASIA = :NOM_FANTASIA');
    FDQuery.ParamByName('NOM_FANTASIA').AsString := aParam[1];
  end;
  if aParam[0] = 'CHAVE' then
  begin
    FDQuery.SQL.Add('WHERE DES_CHAVE = :DES_CHAVE');
    FDQuery.ParamByName('DES_CHAVE').AsString := aParam[1];
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
