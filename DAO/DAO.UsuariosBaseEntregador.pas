unit DAO.UsuariosBaseEntregador;

interface

uses FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Dialogs, Model.UsuariosBaseEntregador;

type
  TUsuariosBaseEntregadorDAO = class
  private
    FConexao : TConexao;
  public
    constructor Create;
    function Inserir(AUsuarios: TUsuariosBaseEntregador): Boolean;
    function Alterar(AUsuarios: TUsuariosBaseEntregador): Boolean;
    function Excluir(AUsuarios: TUsuariosBaseEntregador): Boolean;
    function Pesquisar(aParam: array of variant): TFDQuery;
  end;
  const
    TABLENAME = 'tbusuariosagentes';

implementation

{ TUsuariosBaseEntregadorDAO }

function TUsuariosBaseEntregadorDAO.Alterar(AUsuarios: TUsuariosBaseEntregador): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    REsult := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('UPDATE ' + TABLENAME + ' SET '+
                    'COD_USUARIO = :pCOD_USUARIO, COD_AGENTE = :pCOD_AGENTE, COD_ENTREGADOR = :pCOD_ENTREGADOR ' +
                    'WHERE ID_USUARIO_AGENTE = :pID_USUARIO_AGENTE;', [aUsuarios.Usuario, aUsuarios.Agente, aUsuarios.Entregador,
                    aUsuarios.ID]);
    Result := True;
  finally
    FDQuery.Free;
    FConexao.Free;
  end;
end;

constructor TUsuariosBaseEntregadorDAO.Create;
begin
  FConexao := TConexao.Create;
end;

function TUsuariosBaseEntregadorDAO.Excluir(AUsuarios: TUsuariosBaseEntregador): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where WHERE ID_USUARIO_AGENTE = :ID_USUARIO_AGENTE', [AUsuarios.ID]);
    Result := True;
  finally
    FDquery.Free;
    FConexao.Free;
  end;
end;

function TUsuariosBaseEntregadorDAO.Inserir(AUsuarios: TUsuariosBaseEntregador): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('INSERT INTO ' + TABLENAME + ' '+
                    '(COD_USUARIO, COD_AGENTE, COD_ENTREGADOR) ' +
                    'VALUES ' +
                    '(:pCOD_USUARIO, :pCOD_AGENTE, :pCOD_ENTREGADOR);' ,
                    [aUsuarios.Usuario, aUsuarios.Agente, aUsuarios.Entregador]);
    Result := True;
  finally
    FDQuery.Free;
    FConexao.Free;
  end;
end;

function TUsuariosBaseEntregadorDAO.Pesquisar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;

  FDQuery.SQL.Add('SELECT * FROM ' + TABLENAME);
  if aParam[0] = 'ID' then
  begin
    FDQuery.SQL.Add('WHERE ID_USUARIO_AGENTE = :ID_USUARIO_AGENTE');
    FDQuery.ParamByName('COD_USUARIO_AGENTE').AsInteger := aParam[1];
  end;
  if aParam[0] = 'CODIGO' then
  begin
    FDQuery.SQL.Add('WHERE COD_USUARIO = :COD_USUARIO');
    FDQuery.ParamByName('COD_USUARIO').AsInteger := aParam[1];
  end;
  if aParam[0] = 'AGENTE' then
  begin
    FDQuery.SQL.Add('WHERE COD_AGENTE = :COD_AGENTE');
    FDQuery.ParamByName('COD_AGENTE').Value := aParam[1];
  end;
  if aParam[0] = 'ENTREGADOR' then
  begin
    FDQuery.SQL.Add('WHERE COD_ENTREGADOR LIKE :COD_ENTREGADOR');
    FDQuery.ParamByName('COD_ENTREGADOR').AsInteger := aParam[1];
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
