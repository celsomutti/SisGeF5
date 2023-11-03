unit DAO.CidadesCEP;

interface

uses FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Model.CidadesCEP;

type
  TCidadesCEPDAO= class
  private
    FConexao : TConexao;
  public
    constructor Create;
    function GetID(): Integer;
    function Inserir(ACidades: TCidadesCEP): Boolean;
    function Alterar(ACidades: TCidadesCEP): Boolean;
    function Excluir(ACidades: TCidadesCEP): Boolean;
    function Pesquisar(aParam: array of variant): TFDQuery;
  end;
  const
    TABLENAME = 'cadastro_cidades';

implementation

{ TCidadesCEPDAO }

uses Control.Sistema;

function TCidadesCEPDAO.Alterar(ACidades: TCidadesCEP): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('update ' + TABLENAME + ' set des_descricao = :des_descricao, uf_estado = :uf_estado, cod_ibge = :cod_ibge, ' +
                    'num_ddd  = :num_ddd' +
                    'where id_cidade = :id_cidade;', [ACidades.Descricao, ACidades.UF, Acidades.UF, Acidades.CodigoIBGE,
                    ACidades.DDD]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;end;

constructor TCidadesCEPDAO.Create;
begin
  FConexao := TSistemaControl.GetInstance.Conexao;
end;

function TCidadesCEPDAO.Excluir(ACidades: TCidadesCEP): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where id_cidade = :id_cidade', [ACidades.ID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;end;

function TCidadesCEPDAO.GetID: Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(id_cidade),0) + 1 from ' + TABLENAME);
    try
      Result := FDQuery.Fields[0].AsInteger;
    finally
      FDQuery.Close;
    end;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;end;

function TCidadesCEPDAO.Inserir(ACidades: TCidadesCEP): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    ACidades.ID := GetID;
    FDQuery.ExecSQL('insert into ' + TABLENAME + ' (' +
                    'id_cidade, des_descricao, uf_estado, cod_ibge, num_ddd) ' +
                    'VALUES ' +
                    '(:id_cidade, :des_descricao, :uf_estado, :cod_ibge, :num_ddd);',
                    [ACidades.ID, ACidades.Descricao, ACidades.UF, ACidades.CodigoIBGE, ACidades.DDD]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCidadesCEPDAO.Pesquisar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;
  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'ID' then
  begin
    FDQuery.SQL.Add('where id_cidade = :id_cidade');
    FDQuery.ParamByName('id_cidade').AsInteger := aParam[1];
  end;
  if aParam[0] = 'UF' then
  begin
    FDQuery.SQL.Add('where uf_estado = :uf_estado');
    FDQuery.ParamByName('uf_estado').AsString := aParam[1];
  end;
  if aParam[0] = 'CIDADE' then
  begin
    FDQuery.SQL.Add('where des_descricao like :des_descricao');
    FDQuery.ParamByName('des_descricao').AsString := aParam[1];
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
