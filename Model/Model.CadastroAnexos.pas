unit Model.CadastroAnexos;

interface

uses Common.ENum, FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Control.Sistema, System.SysUtils;

type
  TCadastroAnexos = class
  private
    FDataAnexo: TDateTime;
    FID: Integer;
    FNomeArquivo: String;
    FTipoCadastro: Integer;
    FDescricaoAnexo: String;
    FIdAnexo: Integer;
    FAcao: TAcao;
    FConexao: TConexao;
    FQuery: TFDQuery;

    function Insert(): Boolean;
    function Update(): Boolean;
    function Delete(): Boolean;
  public
    property Id: Integer read FID write FID;
    property TipoCadastro: Integer read FTipoCadastro write FTipoCadastro;
    property IdAnexo: Integer read FIdAnexo write FIdAnexo;
    property DescricaoAnexo: String read FDescricaoAnexo write FDescricaoAnexo;
    property NomeArquivo: String read FNomeArquivo write FNomeArquivo;
    property DataAnexo: TDateTime read FDataAnexo write FDataAnexo;
    property Query: TFDQuery read FQuery write FQuery;

    constructor Create();
    function GetID(iID: Integer; iTipo: Integer): Integer;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
    procedure SetupClass(FDQuery: TFDQuery);
    procedure ClearSetup;
  end;

const
  TABLENAME = 'cadastro_anexos';

implementation

{ TCadastroAnexos }

procedure TCadastroAnexos.ClearSetup;
begin
  FDataAnexo := StrToDate('31/12/1899');
  FID := 0;
  FNomeArquivo := '';
  FTipoCadastro := 0;
  FDescricaoAnexo := '';
  FIdAnexo := 0;
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
              'where id_cadastro = :pid_cadastro and cod_tipo_cadastro = :cod_tipo_cadastro;';
      FDQuery.ExecSQL(sSQL,[Self.ID, Self.TipoCadastro]);
    end
    else
    begin
      sSQL := 'delete from ' + TABLENAME + ' ' +
              'where id_cadastro = :pid_cadastro and cod_tipo_cadastro = :cod_tipo_cadastro and id_anexo = :id_anexo;';
      FDQuery.ExecSQL(sSQL,[Self.ID, Self.TipoCadastro, Self.IdAnexo]);
    end;
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;

end;

function TCadastroAnexos.GetID(iID, iTipo: Integer): Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(id_anexo),0) + 1 from ' + TABLENAME + ' where id_cadastro = ' + iID.toString + ' and ' +
                 'cod_tipo_cadastro = ' + iTipo.toString);
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
    Self.IDAnexo := GetID(Self.ID, Self.TipoCadastro);
    sSQL := 'insert into ' + TABLENAME + '(' +
            'id_cadastro, cod_tipo_cadastro, id_anexo, des_anexo, nom_arquivo, dat_anexo) ' +
            'values (' +
            ':id_cadastro, :cod_tipo_cadastro, :id_anexo, :des_anexo, :nom_arquivo, :dat_anexo);';
    FDQuery.ExecSQL(sSQL, [Self.ID, Self.TipoCadastro ,Self.IdAnexo, Self.DescricaoAnexo, Self.NomeArquivo, Self.DataAnexo]);
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
    FDQuery.SQL.Add('whew id_cadastro = :id_cadastro and cod_tipo_cadastro = :cod_tipo_cadastro');
    FDQuery.ParamByName('id_cadastro').AsInteger := aParam[1];
    FDQuery.ParamByName('cod_tipo_cadastro').AsInteger := aParam[2];
  end;
  if aParam[0] = 'SEQUENCIA' then
  begin
    FDQuery.SQL.Add('where id_cadastro = :id_cadastro and cod_tipo_cadastro = :cod_tipo_cadastro and id_anexo = :id_anexo');
    FDQuery.ParamByName('id_cadastro').AsInteger := aParam[1];
    FDQuery.ParamByName('cod_tipo_cadastro').AsInteger := aParam[2];
    FDQuery.ParamByName('id_anexo').AsInteger := aParam[3];
  end;
  if aParam[0] = 'NUMERO' then
  begin
    FDQuery.SQL.Add('where num_consulta like :num_consulta');
    FDQuery.ParamByName('num_consulta').AsString := aParam[1];
  end;
  if aParam[0] = 'DATA' then
  begin
    FDQuery.SQL.Add('where dat_consulta = :dat_consulta');
    FDQuery.ParamByName('dat_consulta').AsDateTime := aParam[1];
  end;
  if aParam[0] = 'VALIDADE' then
  begin
    FDQuery.SQL.Add('where dat_validade = :dat_validade');
    FDQuery.ParamByName('dat_validade').AsDateTime := aParam[1];
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

procedure TCadastroAnexos.SetupClass(FDQuery: TFDQuery);
begin
  FDataAnexo := FDQuery.FieldByName();
  FID := FDQuery.FieldByName('id_cadastro').AsInteger;
  FNomeArquivo := FDQuery.FieldByName('nom_arquivo').AsString;
  FTipoCadastro := FDQuery.FieldByName('cod_tipo_cadastro').asInteger;
  FDescricaoAnexo := FDQuery.FieldByName('des_anexo').asString;
  FIdAnexo := FDQuery.FieldByName('id_anexo').asInteger;
end;

function TCadastroAnexos.Update: Boolean;
var
  sSQL: String;
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    Self.IdAnexo := GetID(Self.ID, Self.TipoCadastro);
    sSQL := 'update ' + TABLENAME + ' set ' +
            'des_anexo = :des_anexo, nom_arquivo = :nom_arquivo, dat_anexo  = :dat_anexo' +
            'where ' +
            'id_cadastro = :id_cadastro and cod_tipo_cadastro = :cod_tipo_cadastro and id_consulta = :id_consulta;';
    FDQuery.ExecSQL(sSQL,[Self.DescricaoAnexo, Self.NomeArquivo, Self.DataAnexo, Self.ID, Self.TipoCadastro ,Self.IdAnexo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

end.
