unit Model.CadastroAnexos;

interface

uses Common.ENum, FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Control.Sistema,
System.SysUtils;

type
  TCadastroAnexos = class
  private
    FDataAnexo: TDateTime;
    FID: Integer;
    FNomeArquivo: String;
    FDescricaoAnexo: String;
    FIdAnexo: Integer;
    FAcao: TAcao;
    FConexao: TConexao;

    function Insert(): Boolean;
    function Update(): Boolean;
    function Delete(): Boolean;
  public
    property Id: Integer read FID write FID;
    property IdAnexo: Integer read FIdAnexo write FIdAnexo;
    property DescricaoAnexo: String read FDescricaoAnexo write FDescricaoAnexo;
    property NomeArquivo: String read FNomeArquivo write FNomeArquivo;
    property DataAnexo: TDateTime read FDataAnexo write FDataAnexo;
    property Acao: Tacao read FAcao write FAcao;
    constructor Create();
    function GetID(iID: Integer): Integer;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
    procedure SetupSelf(fdQuery: TFDQuery);
    procedure ClearSelf;
  end;

const
  TABLENAME = 'cadastro_anexos';

implementation

{ TCadastroAnexos }

procedure TCadastroAnexos.ClearSelf;
begin
  Id := 0;
  IdAnexo:= 0;
  DescricaoAnexo:= '';
  NomeArquivo:= '';
  DataAnexo:= StrToDate('1899-12-31');
end;

constructor TCadastroAnexos.Create;
begin
  FConexao := TConexao.Create;
end;

function TCadastroAnexos.Delete: Boolean;
var
  sSQL: String;
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    if Self.IdAnexo = -1 then
    begin
      sSQL := 'delete drom ' + TABLENAME + ' ' +
              'where id_cadastro = :pid_cadastro;';
      FDQuery.ExecSQL(sSQL,[Self.ID]);
    end
    else
    begin
      sSQL := 'delete from ' + TABLENAME + ' ' +
              'where id_cadastro = :pid_cadastro and id_anexo = :id_anexo;';
      FDQuery.ExecSQL(sSQL,[Self.ID, Self.IdAnexo]);
    end;
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;

end;

function TCadastroAnexos.GetID(iID: Integer): Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(id_anexo),0) + 1 from ' + TABLENAME + ' where id_cadastro = ' + iID.toString);
    try
      Result := FDQuery.Fields[0].AsInteger;
    finally
      FDQuery.Close;
    end;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCadastroAnexos.Gravar: Boolean;
begin
  case FAcao of
    tacIncluir: Result := Self.Insert();
    tacAlterar: Result := Self.Update();
    tacExcluir: Result := Self.Delete();
  end;
end;

function TCadastroAnexos.Insert: Boolean;
var
  sSQL: String;
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    Self.IDAnexo := GetID(Self.ID);
    sSQL := 'insert into ' + TABLENAME + '(' +
            'id_cadastro, id_anexo, des_anexo, nom_arquivo, dat_anexo) ' +
            'values (' +
            ':id_cadastro, :id_anexo, :des_anexo, :nom_arquivo, :dat_anexo);';
    FDQuery.ExecSQL(sSQL, [Self.ID, Self.IdAnexo, Self.DescricaoAnexo, Self.NomeArquivo, Self.DataAnexo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;

end;

function TCadastroAnexos.Localizar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;

  FDQuery.SQL.Add('select id_cadastro, cod_tipo_cadastro, id_anexo, des_anexo, nom_arquivo, dat_anexo from ' + TABLENAME);
  if aParam[0] = 'ID' then
  begin
    FDQuery.SQL.Add('whew id_cadastro = :id_cadastro');
    FDQuery.ParamByName('id_cadastro').AsInteger := aParam[1];
  end;
  if aParam[0] = 'SEQUENCIA' then
  begin
    FDQuery.SQL.Add('where id_cadastro = :id_cadastro and id_anexo = :id_anexo');
    FDQuery.ParamByName('id_cadastro').AsInteger := aParam[1];
    FDQuery.ParamByName('id_anexo').AsInteger := aParam[2];
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
  if not FDQuery.IsEmpty then
  begin
    FDQuery.First;
    if aParam[0] <> 'APOIO' then
    begin
      SetupSelf(FDQuery);
    end;
  end
  else
  begin
    ClearSelf;
  end;
  Result := FDQuery;
end;

procedure TCadastroAnexos.SetupSelf(fdQuery: TFDQuery);
begin
  Id := fdQuery.FieldByName('id_cadastro').asInteger;;
  IdAnexo:= fdQuery.FieldByName('id_anexo').asInteger;
  DescricaoAnexo:= fdQuery.FieldByName('des_anexo').asString;
  NomeArquivo:= fdQuery.FieldByName('nom_arquivo').asString;
  DataAnexo:= fdQuery.FieldByName('dat_anexo').AsDateTime;
end;

function TCadastroAnexos.Update: Boolean;
var
  sSQL: String;
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    sSQL := 'update ' + TABLENAME + ' set ' +
            'des_anexo = :des_anexo, nom_arquivo = :nom_arquivo, dat_anexo  = :dat_anexo' +
            'where ' +
            'id_cadastro = :id_cadastro and id_anexo = :id_anexo;';
    FDQuery.ExecSQL(sSQL,[Self.DescricaoAnexo, Self.NomeArquivo, Self.DataAnexo, Self.ID, Self.IdAnexo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

end.
