unit DAO.CCEPDistribuidor;

interface

uses
  FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Model.CCEPDistribuidor;

  type
    TCCEPDistribuidorDAO = class
  private
    FConexao : TConexao;
  public
    constructor Create;
    function Inserir(ACCEP: TCCEPDistribuidor): Boolean;
    function Alterar(ACCEP: TCCEPDistribuidor): Boolean;
    function Excluir(ACCEP: TCCEPDistribuidor): Boolean;
    function Pesquisar(aParam: array of variant): TFDQuery;
  end;
  const
    TABLENAME = 'tbcepagente';

implementation

{ TCCEPDistribuidorDAO }

uses Control.Sistema;

function TCCEPDistribuidorDAO.Alterar(ACCEP: TCCEPDistribuidor): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('update ' + TABLENAME + ' set cod_cabeca_cep = :cod_cabeca_cep, ' +
                    'cod_grupo = :cod_grupo, id_faixa = :id_faixa, des_log = :des_log ' +
                    'where cod_Agente = :cod_Agente',
                    [ACCEP.CCEP, ACCEP.Grupo, ACCEP.Faixa, ACCEP.LOG, ACCEP.CodigoDistribuidor]);
    Result := True;
  finally
    FDquery.Close;
    FDquery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TCCEPDistribuidorDAO.Create;
begin
  FConexao := TSistemaControl.GetInstance.Conexao;
end;

function TCCEPDistribuidorDAO.Excluir(ACCEP: TCCEPDistribuidor): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where cod_Agente = :cod_agente', [ACCEP.CodigoDistribuidor]);
    Result := True;
  finally
    FDquery.Close;
    FDquery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCCEPDistribuidorDAO.Inserir(ACCEP: TCCEPDistribuidor): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('insert into ' + TABLENAME + ' (cod_agente, cod_cabeca_cep cod_grupo, id_faixa, des_log) ' +
                    'values (:cod_agente, :cod_cabeca_cep, :cod_grupo, :id_faixa, :des_log)',
                    [ACCEP.CodigoDistribuidor, ACCEP.CCEP, ACCEP.Grupo, ACCEP.Faixa, ACCEP.LOG]);
    Result := True;
  finally
    FDquery.Close;
    FDquery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCCEPDistribuidorDAO.Pesquisar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;
  FDQuery.SQL.Add('select cod_agente, cod_cabeca_cep cod_grupo, id_faixa, des_log from ' + TABLENAME);
  if aParam[0] = 'AGENTE' then
  begin
    FDQuery.SQL.Add('where cod_agente = :cod_agente');
    FDQuery.ParamByName('cod_agente').AsInteger := aParam[1];
  end;
  if aParam[0] = 'CCEP' then
  begin
    FDQuery.SQL.Add('where cod_cabeca_cep = :cod_cabeca_cep');
    FDQuery.ParamByName('cod_cabeca_cep').AsInteger := aParam[1];
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
