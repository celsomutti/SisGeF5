unit Model.SisgeFRHFuncoes;

interface

uses Common.ENum, FireDAC.Comp.Client, System.SysUtils, service.connectionMySQL;

type
  TRHFuncoes = class
  private
    FAcao: TAcao;
    FDescricao: string;
    FCodigo: integer;
    FQuery: TFDQuery;
    FConexao : TConnectionMySQL;
    FAtividades: String;
    FMensagem: string;

    function Insert(): boolean;
    function Update(): boolean;
    function Delete: boolean;

  public
    constructor Create();
    property Codigo: integer read FCodigo write FCodigo;
    property Descricao: string read FDescricao write FDescricao;
    property Atividades: String read FAtividades write FAtividades;
    property Query: TFDQuery read FQuery write FQuery;
    property Mensagem: string read FMensagem write FMensagem;
    property Acao: TAcao read FAcao write FAcao;

    function CustomSearch(aParams: array of string): boolean;
    function Search(aParam: array of variant): boolean;
    function Save(): boolean;
    function SetupClass(): boolean;
  end;
  const
    TABLENAME = 'crm_funcoes_rh';
    SQLSELECT = 'select id_funcao, des_funcao from, des_atividades ' + TABLENAME;
    SQLINSERT = 'insert into ' + TABLENAME + ' (id_funcao, des_funcao, des_atividades) values ' +
                '(:id_funcao, :des_funcao, :des_atividades)';
    SQLUPDATE = 'update ' + TABLENAME + ' set des_funcao = :des_funcao, des_atividades = :des_atividades ' +
                'where id_funcao = :id_funcao';
    SQLDELETE = 'delete from ' + TABLENAME + ' where id_funcao = :id_funcao';

implementation

{ TRHFuncoes }

constructor TRHFuncoes.Create;
begin
  FConexao := TConnectionMySQL.Create;
end;

function TRHFuncoes.CustomSearch(aParams: array of string): boolean;
var
  sSource : string;
begin
  Result := False;
  if Length(aParams) < 2 then
  begin
    FMensagem := 'Quantidade de parâmetros incorreta!';
    Exit
  end;
  FQuery := FConexao.GetQuery;
  FQuery.SQL.Clear;
  FQuery.SQL.Add('select !colums from !table {if !where } where !where {fi}');
  if aParams[2] = '' then
    sSource := TABLENAME;
  FQuery.MacroByName('colums').AsRaw := aParams[1];
  FQuery.MacroByName('table').AsRaw := sSource;
  FQuery.MacroByName('where').AsRaw := aParams[3];
  FQuery.Open();
  if FQuery.IsEmpty then
  begin
    FMensagem := 'Nenhum registro encontrado!';
    FQuery.Connection.Close;
    Exit;
  end;
  Result := True;
end;

function TRHFuncoes.Delete: boolean;
begin
  try
    Result := False;
    FQuery := FConexao.GetQuery;
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
    FQuery := FConexao.GetQuery;
    FQuery.ExecSQL(SQLUPDATE, [FDescricao, FAtividades, FCodigo]);
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
    FQuery := FConexao.GetQuery;
    FQuery.ExecSQL(SQLINSERT, [FCodigo, FDescricao, FAtividades]);
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
  FQuery := FConexao.GetQuery;
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
