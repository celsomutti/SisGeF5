unit Model.TiposVerbasExpressas;

interface

uses Common.ENum, FireDAC.Comp.Client, Control.Sistema, DAO.Conexao;

type
  TTiposVerbasExpressas = class
  private
    FAcao: TAcao;
    FDescricao: String;
    FCodigo: Integer;
    FColunas: String;
    FConexao: TConexao;

    function Insert(): Boolean;
    function Update(): Boolean;
    function Delete(): Boolean;

  public
    constructor Create();
    property Codigo: Integer read FCodigo write FCodigo;
    property Descricao: String read FDescricao write FDescricao;
    property Colunas: String read FColunas write FColunas;
    property Acao: TAcao read FAcao write FAcao;

    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
    function RetornaListaSimples(memTable: TFDMemTable): boolean;
    function GetField(sField: String; sKey: String; sKeyValue: String): String;
  end;
const
    TABLENAME = 'expressas_tipos_verbas';

implementation

{ TTiposVerbasExpressas }

constructor TTiposVerbasExpressas.Create;
begin
  FConexao := TConexao.Create;
end;

function TTiposVerbasExpressas.Delete: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where cod_tipo = :pcod_tipo', [Codigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TTiposVerbasExpressas.GetField(sField, sKey, sKeyValue: String): String;
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

function TTiposVerbasExpressas.Gravar: Boolean;
begin
  case FAcao of
    tacIncluir: Insert();
    tacAlterar: Update();
    tacExcluir: Delete();
  end;
end;

function TTiposVerbasExpressas.Insert: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('insert into ' + TABLENAME  + ' (cod_tipo, des_tipo, des_colunas) ' +
                    'values ' +
                    '(:pcod_tipo, :pdes_tipo, :pdes_colunas);',
                    [Codigo, Descricao, Colunas]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;

end;

function TTiposVerbasExpressas.Localizar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  if Length(aParam) < 2 then Exit;
  FDQuery := FConexao.ReturnQuery;
  FDQuery.SQL.Clear;
  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'CODIGO' then
  begin
    FDQuery.SQL.Add('where cod_tipo = :pcod_tipo');
    FDQuery.ParamByName('pcod_tipo').AsInteger := aParam[1];
  end;
  if aParam[0] = 'DESCRICAO' then
  begin
    FDQuery.SQL.Add('where des_tipo like :pdes_tipo');
    FDQuery.ParamByName('pdes_tipo').AsInteger := aParam[1];
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
  FDQuery.Open();
  Result := FDQuery;
end;

function TTiposVerbasExpressas.RetornaListaSimples(memTable: TFDMemTable): boolean;
var
  aParam: array of Variant;
  fdQuery: TFDQuery;
begin
  try
    Result := False;
    fdQuery := FConexao.ReturnQuery;
    SetLength(aParam,3);
    aParam := ['APOIO','cod_tipo, des_tipo, des_colunas',''];
    fdQuery := Localizar(aParam);
    Finalize(aParam);
    if not fdQuery.IsEmpty then
    begin
      memTable.Data := fdQuery.Data;
    end;
    Result := True;
  finally
    fdQuery.Close;
    fdQuery.Connection.Close;
    fdQuery.Free;
  end;
end;

function TTiposVerbasExpressas.Update: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('update ' + TABLENAME  + 'set ' +
                    'cod_tipo = :pcod_tipo, des_tipo = :pdes_tipo, des_colunas = :pdes_colunas ' +
                    'where ' +
                    'cod_tipo = :pcod_tipo;',
                    [Descricao, Colunas, Codigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

end.
