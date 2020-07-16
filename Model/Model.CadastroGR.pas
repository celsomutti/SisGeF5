unit Model.CadastroGR;

interface

uses Common.ENum, FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Control.Sistema;

type
  TCadastroGR = class
  private
    FIDConsulta: Integer;
    FID: Integer;
    FConsulta: String;
    FTipo: Integer;
    FValidade: TDate;
    FData: TDate;
    FAcao: TAcao;
    FConexao: TConexao;
    FTipoConsulta: Integer;

    function Insert(): Boolean;
    function Update(): Boolean;
    function Delete(): Boolean;

  public
    property ID: Integer read FID write FId;
    property TipoCadastro: Integer read FTipoConsulta write FTipoConsulta;
    property IDConsulta: Integer read FIDConsulta write FIDConsulta;
    property Tipo: Integer read FTipo write FTipo;
    property Consulta: String read FConsulta write FConsulta;
    property Data: TDate read FData write FData;
    property Validade: TDate read FValidade write FValidade;
    property Acao: TAcao read FAcao write FAcao;

    constructor Create();
    function GetID(iID: Integer; iTipo: Integer): Integer;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;

  end;
const
  TABLENAME = 'cadastro_GR';

implementation

{ TCadastroGR }

constructor TCadastroGR.Create;
begin
  FConexao := TConexao.Create;
end;

function TCadastroGR.Delete: Boolean;
var
  sSQL: String;
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    if Self.IDConsulta = -1 then
    begin
      sSQL := 'delete drom ' + TABLENAME + ' ' +
              'where id_cadastro = :pid_cadastro and cod_tipo_cadastro = :cod_tipo_cadastro;';
      FDQuery.ExecSQL(sSQL,[Self.ID, Self.TipoCadastro]);
    end
    else
    begin
      sSQL := 'delete from ' + TABLENAME + ' ' +
              'where id_cadastro = :pid_cadastro and cod_tipo_cadastro = :cod_tipo_cadastro and id_consulta = :id_consulta;';
      FDQuery.ExecSQL(sSQL,[Self.ID, Self.TipoCadastro, Self.IDConsulta]);
    end;
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCadastroGR.GetID(iID: Integer; iTipo: Integer): Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(id_consulta),0) + 1 from ' + TABLENAME + ' where id_cadastro = ' + iID.toString + ' and ' +
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

function TCadastroGR.Gravar: Boolean;
begin
  case FAcao of
    tacIncluir: Result := Self.Insert();
    tacAlterar: Result := Self.Update();
    tacExcluir: Result := Self.Delete();
  end;
end;

function TCadastroGR.Insert: Boolean;
var
  sSQL: String;
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    Self.IDConsulta := GetID(Self.ID, Self.TipoCadastro);
    sSQL := 'insert into ' + TABLENAME + '(' +
            'id_cadastro, cod_tipo_cadastro, id_consulta, cod_tipo, num_consulta, dat_consulta, dat_validade, num_usuario) ' +
            'values (' +
            ':pid_cadastro, :cod_tipo_cadastro, :pid_consulta, :pcod_tipo, :pnum_consulta, :pdat_consulta, :pdat_validade);';
    FDQuery.ExecSQL(sSQL, [Self.ID, Self.TipoCadastro ,Self.IDConsulta, Self.Tipo, Self.Consulta, Self.Data, Self.Validade]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCadastroGR.Localizar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;

  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'ID' then
  begin
    FDQuery.SQL.Add('whew id_cadastro = :id_cadastro and cod_tipo_cadastro = :cod_tipo_cadastro');
    FDQuery.ParamByName('id_cadastro').AsInteger := aParam[1];
    FDQuery.ParamByName('cod_tipo_cadastro').AsInteger := aParam[2];
  end;
  if aParam[0] = 'SEQUENCIA' then
  begin
    FDQuery.SQL.Add('where id_cadastro = :id_cadastro and cod_tipo_cadastro = :cod_tipo_cadastro and id_consulta = :id_consulta');
    FDQuery.ParamByName('id_cadastro').AsInteger := aParam[1];
    FDQuery.ParamByName('cod_tipo_cadastro').AsInteger := aParam[2];
    FDQuery.ParamByName('id_consulta').AsInteger := aParam[3];
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

function TCadastroGR.Update: Boolean;
var
  sSQL: String;
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    Self.IDConsulta := GetID(Self.ID, Self.TipoCadastro);
    sSQL := 'update ' + TABLENAME + ' set ' +
            'cod_tipo = :cod_tipo, num_consulta = :num_consulta, dat_consulta = :dat_consulta, dat_validade = :dat_validade ' +
            'where ' +
            'id_cadastro = :id_cadastro and cod_tipo_cadastro = :cod_tipo_cadastro and id_consulta = :id_consulta;';
    FDQuery.ExecSQL(sSQL,[Self.Tipo, Self.Consulta, Self.Data, Self.Validade, Self.ID, Self.TipoCadastro, Self.IDConsulta]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

end.
