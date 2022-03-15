unit Model.SisgeFRHFuncoes;

interface

uses Common.ENum, FireDAC.Comp.Client, DAO.Conexao, System.SysUtils;

type
  TRHFuncoes = class
  private
    FAcao: TAcao;
    FDescricao: integer;
    FCodigo: integer;
    FQuery: TFDQuery;
    FConexao : TConexao;

    function Insert(): boolean;
    function Update(): boolean;
    function Delete: boolean;

  public
    constructor Create();
    property Codigo: integer read FCodigo write FCodigo;
    property Descricao: integer read FDescricao write FDescricao;
    property Query: TFDQuery read FQuery write FQuery;
    property Acao: TAcao read FAcao write FAcao;

    function Search(aParam: array of variant): boolean;
    function Save(): boolean;
    function SetupClass(): boolean;
  end;
  const
    TABLENAME = 'crm_funcoes_rh';
    SQLSELECT = 'select id_funcao, des_funcao from ' + TABLENAME;
    SQLINSERT = 'insert into ' + TABLENAME + ' (id_funcao, des_funcao) values (:id_funcao, :des_funcao)';
    SQLUPDATE = 'update ' + TABLENAME + ' set des_funcao = :des_funcao where id_funcao = :id_funcao';
    SQLDELETE = 'delete from ' + TABLENAME + ' where id_funcao = :id_funcao';

implementation

{ TRHFuncoes }

constructor TRHFuncoes.Create;
begin
  FConexao := TConexao.Create;
end;

function TRHFuncoes.Delete: boolean;
begin
  try
    Result := False;
    FQuery := FConexao.ReturnQuery;
    FQuery.ExecSQL(SQLDELETE, [FCodigo]);
    Result := True;
  finally
    FQuery.Connection.Connected := False;
    FQuery.Free;
  end;
end;

function TRHFuncoes.Update: boolean;
begin
  try
    Result := False;
    FQuery := FConexao.ReturnQuery;
    FQuery.ExecSQL(SQLUPDATE, [FCodigo]);
    Result := True;
  finally
    FQuery.Connection.Connected := False;
    FQuery.Free;
  end;
end;

function TRHFuncoes.Insert: boolean;
begin
  try
    Result := False;
    FQuery := FConexao.ReturnQuery;
    FQuery.ExecSQL(SQLINSERT, [FCodigo, FDescricao]);
    Result := True;
  finally
    FQuery.Connection.Connected := False;
    FQuery.Free;
  end;

end;

function TRHFuncoes.Save: boolean;
begin
  Result := False;
  case FAcao of
    tacIncluir: Result := Insert();
    tacAlterar: Result := Update();
    tacExcluir: Result := Delete();
  end;
end;

function TRHFuncoes.Search(aParam: array of variant): boolean;
begin
  Result := False;
  if Length(aParam) = 0 then
    Exit;
  FQuery := FConexao.ReturnQuery;
  FQuery.SQL.Text := SQLSELECT;
  if aParam[0] = 'ID' then
  begin
    FQuery.SQL.Add('where id_funcao = :id_funcao');
    FQuery.ParamByName('id_funcao').AsInteger := aParam[1];
  end
  else if aParam[0] = 'ID' then
  begin
    FQuery.SQL.Add('where des_funcao like :des_funcao');
    FQuery.ParamByName('des_funcao').AsString := aParam[1];
  end;
  FQuery.Open();
  if FQuery.IsEmpty then
  begin
    FQuery.Connection.Connected := False;
    FQuery.Free;
    Exit;
  end;
  Result := True;
end;

function TRHFuncoes.SetupClass: boolean;
begin
  FCodigo := FQuery.FieldByName('id_funcao').AsInteger;
  FDescricao := FQuery.FieldByName('des_funcao').AsString;
end;

end.
