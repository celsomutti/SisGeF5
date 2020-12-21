unit Model.Bancos;

interface

uses Common.ENum, FireDAC.Comp.Client, DAO.Conexao, System.SysUtils, Control.Sistema,
System.Variants;

type
  TBancos = class
  private
    FCodigo: String;
    FNome: String;
    FConexao: TConexao;
    FAcao: TAcao;
    FQuery: TFDQuery;
    function Inserir(): Boolean;
    function Alterar(): Boolean;
    function Excluir(): Boolean;
  public
    Constructor Create();
    property Codigo: String read FCodigo write FCodigo;
    property Nome: String read FNome write FNome;
    property Acao: TAcao read FAcao write FAcao;
    property Query: TFDQuery read FQuery write FQuery;

    function GetField(sField: String; sKey: String; sKeyValue: String): String;
    function SetupModel(FDBanco: TFDQuery): Boolean;
    function Localizar(aParam: array of variant): TFDQuery;
    function LocalizarExt(aParam: array of variant): Boolean;
    function Gravar(): Boolean;

  end;

const

  TABLENAME = 'tbbancos';
  SQLINSERT = 'insert into ' + TABLENAME + ' (cod_banco, nom_banco) values (:cod_banco, :nom_banco);';
  SQLUPDATE = 'update ' + TABLENAME + ' set nom_banco = nom_banco where cod_banco = :cod_banco';

implementation

{ TBancos }

function TBancos.Alterar: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(SQLUPDATE, [Nome, Codigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TBancos.Create;
begin
  FConexao := TConexao.Create;
end;

function TBancos.Excluir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where cod_banco = :pcod_banco', [Codigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;end;

function TBancos.GetField(sField, sKey, sKeyValue: String): String;
var
  FDQuery: TFDQuery;
begin
  try
    Result := '';
    FDQuery := FConexao.ReturnQuery();
    FDQuery.SQL.Text := 'select ' + sField + ' from ' + TABLENAME + ' where ' + sKey + ' = ' + sKeyValue;
    FDQuery.Open();
    if not FDQuery.IsEmpty then Result := FDQuery.FieldByName(sField).AsString;
  finally
    FDQuery.Free;
  end;
end;

function TBancos.Gravar: Boolean;
begin
  Result := False;
  case FAcao of
    tacAlterar: Result := Alterar();
    tacIncluir: Result := Inserir();
    tacExcluir: Result := Excluir();
  end;
end;

function TBancos.Inserir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(SQLINSERT, [Codigo, Nome]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TBancos.Localizar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;

  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'CODIGO' then
  begin
    FDQuery.SQL.Add('where cod_banco = :pcod_banco');
    FDQuery.ParamByName('pcod_banco').AsString := aParam[1];
  end;
  if aParam[0] = 'NOME' then
  begin
    FDQuery.SQL.Add('where nom_banco = :pnom_banco');
    FDQuery.ParamByName('pnom_banco').AsString := aParam[1];
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

function TBancos.LocalizarExt(aParam: array of variant): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    if Length(aParam) < 2 then Exit;
    FDQuery.SQL.Clear;

    FDQuery.SQL.Add('select * from ' + TABLENAME);
    if aParam[0] = 'CODIGO' then
    begin
      FDQuery.SQL.Add('where cod_banco = :pcod_banco');
      FDQuery.ParamByName('pcod_banco').AsString := aParam[1];
    end;
    if aParam[0] = 'NOME' then
    begin
      FDQuery.SQL.Add('where nom_banco = :pnom_banco');
      FDQuery.ParamByName('pnom_banco').AsString := aParam[1];
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
    if FDQuery.IsEmpty then
    begin
      Exit;
    end;
    FQuery := TFDQuery;
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TBancos.SetupModel(FDBanco: TFDQuery): Boolean;
begin
  try
    Codigo := FDBanco.FieldByName('cod_banco').AsString;
    Nome := FDBanco.FieldByName('nom_banco').AsString;
  finally
    Result := True;
  end;
end;

end.
