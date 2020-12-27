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
    FQuery: TFDQuery;
    FEmpresa: String;

    function Insert(): Boolean;
    function Update(): Boolean;
    function Delete(): Boolean;

  public
    property ID: Integer read FID write FId;
    property IDConsulta: Integer read FIDConsulta write FIDConsulta;
    property Tipo: Integer read FTipo write FTipo;
    property Consulta: String read FConsulta write FConsulta;
    property Data: TDate read FData write FData;
    property Validade: TDate read FValidade write FValidade;
    property Empresa: String read FEmpresa write FEmpresa;
    property Query: TFDQuery read FQuery write FQuery;
    property Acao: TAcao read FAcao write FAcao;

    constructor Create();
    function GetID(iID: Integer): Integer;
    function Localizar(aParam: array of variant): boolean;
    function Gravar(): Boolean;
    function SetupClass(FDquery: TFDQuery): Boolean;
    function ClearClass(): Boolean;

  end;
const
  TABLENAME = 'cadastro_GR';

implementation

{ TCadastroGR }

function TCadastroGR.ClearClass: Boolean;
begin
  FIDConsulta := 0;
  FID := 0;
  FConsulta := '';
  FTipo := 0;
  FValidade := StrToDate('31/12/1899');
  FData := StrToDate('31/12/1899');
end;

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
              'where id_cadastro = :pid_cadastro;';
      FDQuery.ExecSQL(sSQL,[Self.ID]);
    end
    else
    begin
      sSQL := 'delete from ' + TABLENAME + ' ' +
              'where id_cadastro = :pid_cadastro and id_consulta = :id_consulta;';
      FDQuery.ExecSQL(sSQL,[Self.ID, Self.IDConsulta]);
    end;
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCadastroGR.GetID(iID: Integer): Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(id_consulta),0) + 1 from ' + TABLENAME + ' where id_cadastro = ' + iID.toString);
    Result := FDQuery.Fields[0].AsInteger;
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
    Self.IDConsulta := GetID(Self.ID);
    sSQL := 'insert into ' + TABLENAME + '(' +
            'id_cadastro, id_consulta, cod_tipo, des_empresa, num_consulta, dat_consulta, dat_validade) ' +
            'values (' +
            ':pid_cadastro, :pid_consulta, :pcod_tipo, :pdes_empresa, :pnum_consulta, :pdat_consulta, :pdat_validade);';
    FDQuery.ExecSQL(sSQL, [Self.ID, Self.IDConsulta, Self.Empresa, Self.Tipo, Self.Consulta, Self.Data, Self.Validade]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCadastroGR.Localizar(aParam: array of variant): boolean;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    if Length(aParam) < 2 then Exit;
    FDQuery.SQL.Clear;

    FDQuery.SQL.Add('select * from ' + TABLENAME);
    if aParam[0] = 'ID' then
    begin
      FDQuery.SQL.Add('whew id_cadastro = :id_cadastro');
      FDQuery.ParamByName('id_cadastro').AsInteger := aParam[1];
    end;
    if aParam[0] = 'SEQUENCIA' then
    begin
      FDQuery.SQL.Add('where id_cadastro = :id_cadastro and id_consulta = :id_consulta');
      FDQuery.ParamByName('id_cadastro').AsInteger := aParam[1];
      FDQuery.ParamByName('id_consulta').AsInteger := aParam[2];
    end;
    if aParam[0] = 'NUMERO' then
    begin
      FDQuery.SQL.Add('where num_consulta like :num_consulta');
      FDQuery.ParamByName('num_consulta').AsString := aParam[1];
    end;
    if aParam[0] = 'EMNPRESA' then
    begin
      FDQuery.SQL.Add('where des_empresa like :des_empresa');
      FDQuery.ParamByName('des_empresa').AsString := aParam[1];
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
    if not FDQuery.isEmpty then
    begin
      FQuery := FDQuery;
    end;
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCadastroGR.SetupClass(FDquery: TFDQuery): Boolean;
begin
  Result := False;
  FIDConsulta := FDquery.FieldByName('id_consulta').AsInteger;
  FID := FDquery.FieldByName('id_cadastro').AsInteger;
  FConsulta := FDquery.FieldByName('num_consulta').AsString;
  FTipo := FDquery.FieldByName('cod_tipo').AsInteger;
  FValidade := FDquery.FieldByName('dat_validade').AsDateTime;
  FData := FDquery.FieldByName('dat_consulta').AsDateTime;
  Result := True;
end;

function TCadastroGR.Update: Boolean;
var
  sSQL: String;
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    Self.IDConsulta := GetID(Self.ID);
    sSQL := 'update ' + TABLENAME + ' set ' +
            'cod_tipo = :cod_tipo, des_empresa = :des_empresa, num_consulta = :num_consulta, dat_consulta = :dat_consulta, ' +
            'dat_validade = :dat_validade' +
            'where ' +
            'id_cadastro = :id_cadastro and id_consulta = :id_consulta;';
    FDQuery.ExecSQL(sSQL,[Self.Tipo, Self.Empresa, Self.Consulta, Self.Data, Self.Validade, Self.ID, Self.IDConsulta]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

end.
