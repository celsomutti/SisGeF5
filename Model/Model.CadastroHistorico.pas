unit Model.CadastroHistorico;

interface

uses Common.ENum, FireDAC.Comp.Client, DAO.Conexao, Control.Sistema;

type
  TCadastroHistorico = class
  private
    FAcao: Tacao;
    FHistorico: String;
    FSequencia: Integer;
    FID: Integer;
    FUsuario: Integer;
    FData: TDateTime;
    FConexao: TConexao;
    FTipoCadastro: Integer;

    function Inserir(): Boolean;
    function Alterar(): Boolean;
    function Excluir(): Boolean;

  public
    Constructor Create();
    property ID: Integer read FID write FID;
    property TipoCadastro: Integer read FTipoCadastro write FTipoCadastro;
    property Sequencia: Integer read FSequencia write FSequencia;
    property Data: TDateTime read FData write FData;
    property Historico: String read FHistorico write FHistorico;
    property Usuario: Integer read FUsuario write FUsuario;
    property Acao: Tacao read FAcao write FAcao;

    function GetID(): Integer;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;

  end;
  const
    TABLENAME = 'cadastro_historico';
    SQLINSERT = 'insert into ' + TABLENAME +
                '(id_historico, cod_tipo_cadastro, id_cadastro, dat_log_cadastro, des_historico, id_usuario) ' +
                'values ' +
                '(:id_historico, :cod_tipo_cadastro, :id_cadastro, :dat_log_cadastro, :des_historico, :id_usuario);';
    SQLUPDATE = 'update ' + TABLENAME + ' set ' +
                'dat_log_cadastro = :dat_log_cadastro, des_historico = :des_historico, id_usuario = :id_usuario ' +
                'where ' +
                'id_historico = :id_historico and id_cadastro = :id_cadastro and cod_tipo_cadastro = :cod_tipo_cadastro;';
    SQLQUERY =  'select ' +
                'id_historico, cod_tipo_cadastro, id_cadastro, dat_log_cadastro, des_historico, id_usuario ' +
                'from ' + TABLENAME;
implementation

{ TCadastroHistorico }

function TCadastroHistorico.Alterar: Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(SQLUPDATE,
                    [Self.Data, Self.Historico, Self.Usuario, Self.Sequencia, Self.ID, Self.TipoCadastro]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TCadastroHistorico.Create;
begin
  FConexao := Tconexao.Create;
end;

function TCadastroHistorico.Excluir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where id_historico = :id_historico and id_cadastro = :id_cadastro and ' +
                    'cod_tipo_cadastro = :cod_tipo_cadastro',
                    [Self.Sequencia, Self.ID, Self.TipoCadastro]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TCadastroHistorico.GetID: Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(id_historico),0) + 1 from ' + TABLENAME + ' where id_cadastro = :id_cadastro and ' +
                 'cod_tipo_cadastro = :cod_tipo_cadastro');
    FDQuery.ParamByName('id_cadastro').AsInteger := Self.ID;
    FDQuery.ParamByName('cod_tipo_cadastro').AsInteger := Self.TipoCadastro;
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

function TCadastroHistorico.Gravar: Boolean;
begin
  case FAcao of
    tacIncluir: Result := Self.Inserir();
    tacAlterar: Result := Self.Alterar();
    tacExcluir: Result := Self.Excluir();
  end;
end;

function TCadastroHistorico.Inserir: Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    Self.Sequencia := GetID;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(SQLUPDATE,
                    [Self.Sequencia, Self.TipoCadastro, Self.ID, Self.Data, Self.Historico, Self.Usuario]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCadastroHistorico.Localizar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;

  FDQuery.SQL.Add(SQLQUERY);
  if aParam[0] = 'ID' then
  begin
    FDQuery.SQL.Add('where id_cadastro = :id_cadastro and cod_tipo_cadastro = :cod_tipo_cadastro');
    FDQuery.ParamByName('id_cadastro').AsInteger := aParam[1];
    FDQuery.ParamByName('cod_tipo_cadastro').AsInteger := aParam[2];
  end;
  if aParam[0] = 'SEQ' then
  begin
    FDQuery.SQL.Add('where id_historico = :id_historico and id_cadastro = :id_cadastro and cod_tipo_cadastro = :cod_tipo_cadastro');
    FDQuery.ParamByName('id_historico').AsString := aParam[1];
    FDQuery.ParamByName('id_cadastro').AsString := aParam[2];
    FDQuery.ParamByName('cod_tipo_cadastro').AsString := aParam[3];
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

end.
