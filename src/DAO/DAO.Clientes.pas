unit DAO.Clientes;

interface

uses
  FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Model.Clientes;

  type

    TClientesDAO = class

  private

    FConexao : TConexao;

  public

    constructor Create;

    function Inserir(ACliente: TClientes): Boolean;
    function Alterar(ACliente: TClientes): Boolean;
    function Excluir(ACliente: TClientes): Boolean;
    function Pesquisar(aParam: array of variant): TFDQuery;

  end;
  const
    TABLENAME = 'tbclientes';

implementation

uses Control.Sistema;

{ TClientesDAO }

function TClientesDAO.Alterar(ACliente: TClientes): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('UPDATE ' + TABLENAME + 'SET NOM_CLIENTE = :NOM_CLIENTE, VAL_VERBA = :VAL_VERBA, DOM_OS = :DOM_OS ' +
    'WHERE COD_CLIENTE_EMPRESA = :COD_CLIENTE_EMPRESA AND COD_CLIENTE = :COD_CLIENTE;', [ACliente.Codigo,
    ACliente.Nome, ACliente.Verba, ACliente.OS, ACliente.Cliente, ACliente.Codigo]);
    Result := True;
  finally
    FDQuery.Free;
  end;
end;

constructor TClientesDAO.Create;
begin
  FConexao := TSistemaControl.GetInstance().Conexao;
end;

function TClientesDAO.Excluir(ACliente: TClientes): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where COD_CLIENTE_EMPRESA = :COD_CLIENTE_EMPRESA and COD_CLIENTE = :COD_CLIENTE',
                   [ACliente.Cliente, ACliente.Codigo]);
    Result := True;
  finally
    FDquery.Free;
  end;
end;

function TClientesDAO.Inserir(ACliente: TClientes): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('INSERT INTO ' + TABLENAME  + ' (COD_CLIENTE_EMPRESA, COD_CLIENTE, NOM_CLIENTE, VAL_VERBA, DOM_OS) ' +
                    'VALUES ' +
                    '(:COD_CLIENTE_EMPRESA, :COD_CLIENTE, :NOM_CLIENTE, :VAL_VERBA, :DOM_OS);',
                    [ACliente.Cliente, ACliente.Codigo, ACliente.Nome, ACliente.OS]);
    Result := True;
  finally
    FDQuery.Free;
  end;
end;

function TClientesDAO.Pesquisar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;
  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'CODIGO' then
  begin
    FDQuery.SQL.Add('WHERE COD_CLIENTE_EMPRESA = :COD_CLIENTE_EMPRESA and COD_CLIENTE = :COD_CLIENTE');
    FDQuery.ParamByName('COD_CLIENTE_EMPRESA').AsInteger := aParam[1];
    FDQuery.ParamByName('COD_CLIENTE').AsInteger := aParam[2];
  end;
  if aParam[0] = 'CLIENTE' then
  begin
    FDQuery.SQL.Add('WHERE COD_CLIENTE_EMPRESA = :COD_CLIENTE_EMPRESA');
    FDQuery.ParamByName('COD_CLIENTE_EMPRESA').AsInteger := aParam[1];
  end;
  if aParam[0] = 'NOME' then
  begin
    FDQuery.SQL.Add('WHERE NOM_CLIENTE LIKE :NOM_CLIENTE');
    FDQuery.ParamByName('NOM_CLIENTE').AsString := aParam[1];
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
