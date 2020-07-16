unit Model.EntregadoresExpressas;

interface
uses
  Common.ENum, FireDAC.Comp.Client, DAO.Conexao;
  type
    TEntregadoresExpressas = class

  private

    FCadastro: Integer;
    FEntregador: Integer;
    FFantasia: String;
    FAgente: Integer;
    FData: TDate;
    FChave: String;
    FGrupo: Integer;
    FVerba: Double;
    FExecutor: String;
    FManutencao: TDateTime;
    FAcao: TAcao;
    FConexao : TConexao;

    function Inserir(): Boolean;
    function Alterar(): Boolean;
    function Excluir(): Boolean;

    procedure SetCadastro(const value: Integer);
    procedure SetEntregador(const value: Integer);
    procedure SetFantasia(const value: String);
    procedure SetAgente(const value: Integer);
    procedure SetData(const value: TDate);
    procedure SetChave(const value: String);
    procedure SetGrupo(const value: Integer);
    procedure SetVerba(const value: Double);
    procedure SetExecutor(const value: String);
    procedure SetManutencao(const value: TDateTime);
    procedure SetAcao(const value: TAcao);

  public
    constructor Create;
    property Cadastro: Integer read FCadastro write SetCadastro;
    property Entregador: Integer read FEntregador write SetEntregador;
    property Fantasia: String read FFantasia write SetFantasia;
    property Agente: Integer read FAgente write SetAgente;
    property Data: TDate read FData write SetData;
    property Chave: String read FChave write SetChave;
    property Grupo: Integer read FGrupo write SetGrupo;
    property Verba: Double read FVerba write SetVerba;
    property Executor: String read FExecutor write SetExecutor;
    property Manutencao: TDateTime read FManutencao write SetManutencao;
    property Acao: TAcao read FAcao write SetAcao;

    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
    function GetField(sField: String; sKey: String; sKeyValue: String): String;
    function SetupModel(FDEntregadores: TFDQuery): Boolean;

  end;

  const
    TABLENAME = 'tbcodigosentregadores';
    SQLINSERT = 'INSERT INTO ' + TABLENAME  + '(COD_CADASTRO, COD_ENTREGADOR, NOM_FANTASIA, COD_AGENTE, DAT_CODIGO, ' +
                'DES_CHAVE, COD_GRUPO, VAL_VERBA, NOM_EXECUTANTE, DAT_MANUTENCAO) ' +
                'VALUES ' +
                '(:COD_CADASTRO, :COD_ENTREGADOR, :NOM_FANTASIA, :COD_AGENTE, :DAT_CODIGO, :DES_CHAVE, :COD_GRUPO, ' +
                ':VAL_VERBA, :NOM_EXECUTANTE, :DAT_MANUTENCAO);';
    SQLUPDATE = 'UPDATE ' + TABLENAME + 'SET COD_CADASTRO = :COD_CADASTRO, COD_ENTREGADOR = :COD_ENTREGADOR, ' +
                'NOM_FANTASIA = :NOM_FANTASIA, COD_AGENTE = :COD_AGENTE, DAT_CODIGO = :DAT_CODIGO, DES_CHAVE = :DES_CHAVE, ' +
                'COD_GRUPO = :COD_GRUPO, VAL_VERBA = :VAL_VERBA, NOM_EXECUTANTE = :NOM_EXECUTANTE: SISTEMA ' +
                'DAT_MANUTENCAO = :DAT_MANUTENCAO, WHERE COD_CADASTRO = :COD_CADASTRO AND COD_ENTREGADOR = :COD_ENTREGADOR;';

implementation

{ TEntregadoresExpressas }

uses Control.Sistema;

function TEntregadoresExpressas.Alterar: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(SQLUPDATE, [Self.Fantasia, Self.Agente, Self.Data, Self.Chave, Self.Grupo, Self.Verba, Self.Executor,
                    Self.Manutencao, Self.Cadastro, Self.Entregador]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TEntregadoresExpressas.Create;
begin
  FConexao := TSistemaControl.GetInstance().Conexao;
end;

function TEntregadoresExpressas.Excluir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where WHERE COD_CADASTRO = :COD_CADASTRO AND COD_ENTREGADOR = :COD_ENTREGADOR',
                    [Self.Cadastro, Self.Entregador]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TEntregadoresExpressas.GetField(sField, sKey, sKeyValue: String): String;
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

function TEntregadoresExpressas.Gravar: Boolean;
begin
  Result := False;
  case FAcao of
    Common.ENum.tacIncluir: Result := Inserir();
    Common.ENum.tacAlterar: Result := Alterar();
    Common.ENum.tacExcluir: Result := Excluir();
  end;
end;

function TEntregadoresExpressas.Inserir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(SQLINSERT, [Self.Cadastro, Self.Entregador, Self.Fantasia, Self.Agente, Self.Data, Self.Chave, Self.Grupo,
                    Self.Verba, Self.Executor, Self.Manutencao]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;

end;

function TEntregadoresExpressas.Localizar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;
  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'CADASTRO' then
  begin
    FDQuery.SQL.Add('WHERE COD_CADASTRO = :COD_CADASTRO');
    FDQuery.ParamByName('COD_CADASTRO').AsInteger := aParam[1];
  end;
  if aParam[0] = 'ENTREGADOR' then
  begin
    FDQuery.SQL.Add('WHERE COD_ENTREGADOR = :COD_ENTREGADOR');
    FDQuery.ParamByName('COD_ENTREGADOR').AsInteger := aParam[1];
  end;
  if aParam[0] = 'AGENTE' then
  begin
    FDQuery.SQL.Add('WHERE COD_AGENTE = :COD_AGENTE');
    FDQuery.ParamByName('COD_AGENTE').AsInteger := aParam[1];
  end;
  if aParam[0] = 'DATA' then
  begin
    FDQuery.SQL.Add('WHERE DAT_CODIGO = :DAT_CODIGO');
    FDQuery.ParamByName('DAT_CODIGO').AsDate := aParam[1];
  end;
  if aParam[0] = 'FANTASIA' then
  begin
    FDQuery.SQL.Add('WHERE NOM_FANTASIA = :NOM_FANTASIA');
    FDQuery.ParamByName('NOM_FANTASIA').AsString := aParam[1];
  end;
  if aParam[0] = 'CHAVE' then
  begin
    FDQuery.SQL.Add('WHERE DES_CHAVE = :DES_CHAVE');
    FDQuery.ParamByName('DES_CHAVE').AsString := aParam[1];
  end;
  if aParam[0] = 'FILTRO' then
  begin
    FDQuery.SQL.Add('WHERE ' + aParam[1]);
  end;
  if aParam[0] = 'APOIO' then
  begin
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT  ' + aParam[1] + ' FROM ' + TABLENAME + ' ' + aParam[2]);
  end;
  FDQuery.Open;
  if not FDQuery.IsEmpty then
  begin
    if aParam[0] <> 'APOIO' then SetupModel(FDQuery);
  end;
  Result := FDQuery;
end;

procedure TEntregadoresExpressas.SetAcao(const value: TAcao);
begin
  Facao := value;
end;

procedure TEntregadoresExpressas.SetAgente(const value: Integer);
begin
  FAgente := value;
end;

procedure TEntregadoresExpressas.SetCadastro(const value: Integer);
begin
  FCadastro := value;
end;

procedure TEntregadoresExpressas.SetChave(const value: String);
begin
  FChave := value;
end;

procedure TEntregadoresExpressas.SetData(const value: TDate);
begin
  FData := value;
end;

procedure TEntregadoresExpressas.SetEntregador(const value: Integer);
begin
  FEntregador := value;
end;

procedure TEntregadoresExpressas.SetExecutor(const value: String);
begin
  FExecutor := value;
end;

procedure TEntregadoresExpressas.SetFantasia(const value: String);
begin
  FFantasia := value;
end;

procedure TEntregadoresExpressas.SetGrupo(const value: Integer);
begin
  FGrupo := value;
end;

procedure TEntregadoresExpressas.SetManutencao(const value: TDateTime);
begin
  FManutencao := value;
end;

function TEntregadoresExpressas.SetupModel(FDEntregadores: TFDQuery): Boolean;
begin
  try
    Result := False;
    Cadastro := FDEntregadores.FieldByName('cod_cadastro').AsInteger;
    Entregador := FDEntregadores.FieldByName('cod_entregador').AsInteger;
    Fantasia := FDEntregadores.FieldByName('nom_fantasia').AsString;
    Agente  := FDEntregadores.FieldByName('cod_agente').AsInteger;
    Data := FDEntregadores.FieldByName('dat_codigo').AsDateTime;
    Chave := FDEntregadores.FieldByName('des_chave').AsString;
    Grupo := FDEntregadores.FieldByName('cod_grupo').AsInteger;
    Verba := FDEntregadores.FieldByName('val_verba').AsFloat;
    Executor := FDEntregadores.FieldByName('nom_executante').AsString;
    Manutencao := FDEntregadores.FieldByName('dat_manutencao').AsDateTime;
  finally
    Result := True;
  end;
end;

procedure TEntregadoresExpressas.SetVerba(const value: Double);
begin
  FVerba := value;
end;

end.
