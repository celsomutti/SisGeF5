unit Model.Estados;

interface

uses Common.ENum, FireDAC.Comp.Client, service.connectionMySQL;


type
  TEstados = class
  private
    FAcao: TAcao;
    FUF: String;
    FNome: String;
    FQuery: TFDQuery;
    FConexao: TConnectionMySQL;
  public
    property UF: String read FUF write FUF;
    property Nome: String read FNome write FNome;
    property Query: TFDQuery read FQuery write FQuery;
    property Acao: TAcao read FAcao write FAcao;

    constructor Create;
    destructor Destroy;
    function Inserir(): Boolean;
    function Alterar(): Boolean;
    function Excluir(): Boolean;
    function EstadoExiste(): Boolean;
    function Pesquisar(aParam: array of variant): TFDQuery;
    function PesquisarExt(aParam: array of variant): Boolean;
    function Gravar(): Boolean;

  end;
  const
    TABLENAME = 'tbestados';


implementation

{ TEstados }

function TEstados.Alterar: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.GetQuery();
    FDQuery.ExecSQL('update ' + TABLENAME + 'set nom_estado = :pnom_estado' +
    'where uf_estado = :puf_estado;', [FNome, FUF]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TEstados.Create;
begin
  FConexao := TConnectionMySQL.Create;
end;

destructor TEstados.Destroy;
begin
  FConexao.Free;
end;

function TEstados.EstadoExiste: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.GetQuery();
    FDQuery.ExecSQL('select * from ' + TABLENAME +
    'where uf_estado = :puf_estado;', [FUF]);
    if FDQuery.IsEmpty then Exit;
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TEstados.Excluir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.GetQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME +
    'where uf_estado = :puf_estado;', [FUF]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TEstados.Gravar: Boolean;
begin
  Result := False;
  case FAcao of
    Common.ENum.tacIncluir: Result := Inserir();
    Common.ENum.tacAlterar: Result := Alterar();
    Common.ENum.tacExcluir: Result := Excluir();
  end;
end;

function TEstados.Inserir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.GetQuery();
    FDQuery.ExecSQL('insert into ' + TABLENAME + '(uf_estado, nom_estado) values' +
    '(:puf_estado, :pnom_estado);',
    [FUF, FNome]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TEstados.Pesquisar(aParam: array of variant): TFDQuery;
var
  FDQuery : TFDQuery;
begin
  FDQuery := FConexao.GetQuery;
  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'UF' then
  begin
    FDQuery.SQL.Add('where uf_estado = :puf_estado');
    FDQuery.ParamByName('puf_estado').AsString := aParam[1];
  end
  else if aParam[0] = 'NOME' then
  begin
    FDQuery.SQL.Add('where nom_estado = :pnom_estado');
    FDQuery.ParamByName('pnom_estado').AsString := aParam[1];
  end
  else if aParam[0] = 'APOIO' then
  begin
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT  ' + aParam[1] + ' FROM ' + TABLENAME + ' ' + aParam[2]);
  end;
  FDQuery.Open;
  Result := FDQuery;
end;


function TEstados.PesquisarExt(aParam: array of variant): Boolean;
var
  FDQuery : TFDQuery;
begin
  Result := False;
  FDQuery := FConexao.GetQuery;
  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'UF' then
  begin
    FDQuery.SQL.Add('where uf_estado = :puf_estado');
    FDQuery.ParamByName('puf_estado').AsString := aParam[1];
  end
  else if aParam[0] = 'NOME' then
  begin
    FDQuery.SQL.Add('where nom_estado = :pnom_estado');
    FDQuery.ParamByName('pnom_estado').AsString := aParam[1];
  end
  else if aParam[0] = 'APOIO' then
  begin
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT  ' + aParam[1] + ' FROM ' + TABLENAME + ' ' + aParam[2]);
  end;
  FDQuery.Open;
  if FDQuery.IsEmpty then
  begin
    FDQuery.Connection.Close;
    FDQuery.Free;
    Exit;
  end;
  FQuery := FDQuery;
  Result := True;
end;

end.


