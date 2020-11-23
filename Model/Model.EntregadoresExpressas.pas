unit Model.EntregadoresExpressas;

interface
uses
  Common.ENum, FireDAC.Comp.Client, DAO.Conexao, System.SysUtils;
  type
    TEntregadoresExpressas = class

  private

    FCadastro: Integer;
    FEntregador: Integer;
    FFantasia: String;
    FAgente: Integer;
    FData: TDateTime;
    FChave: String;
    FGrupo: Integer;
    FVerba: Double;
    FExecutor: String;
    FManutencao: TDateTime;
    FAcao: TAcao;
    FConexao : TConexao;
    FTabela: Integer;
    FCliente: Integer;
    FAtivo: Integer;

    function Inserir(): Boolean;
    function Alterar(): Boolean;
    function Excluir(): Boolean;

    procedure SetCadastro(const value: Integer);
    procedure SetEntregador(const value: Integer);
    procedure SetFantasia(const value: String);
    procedure SetAgente(const value: Integer);
    procedure SetData(const value: TDateTime);
    procedure SetChave(const value: String);
    procedure SetGrupo(const value: Integer);
    procedure SetVerba(const value: Double);
    procedure SetExecutor(const value: String);
    procedure SetManutencao(const value: TDateTime);
    procedure SetAcao(const value: TAcao);
    procedure SetTabela(const Value: Integer);
    procedure SetCliente(const Value: Integer);
    procedure setAtivo(const Value: Integer);

  public
    constructor Create;
    property Cadastro: Integer read FCadastro write SetCadastro;
    property Entregador: Integer read FEntregador write SetEntregador;
    property Fantasia: String read FFantasia write SetFantasia;
    property Agente: Integer read FAgente write SetAgente;
    property Data: TDateTime read FData write SetData;
    property Chave: String read FChave write SetChave;
    property Grupo: Integer read FGrupo write SetGrupo;
    property Verba: Double read FVerba write SetVerba;
    property Executor: String read FExecutor write SetExecutor;
    property Tabela: Integer read FTabela write SetTabela;
    property Cliente: Integer read FCliente write SetCliente;
    property Ativo: Integer read FAtivo write setAtivo;
    property Manutencao: TDateTime read FManutencao write SetManutencao;
    property Acao: TAcao read FAcao write SetAcao;

    function Localizar(aParam: array of variant): TFDQuery;
    function LocalizarExtato(aParam: array of variant): boolean;
    function Gravar(): Boolean;
    function GetField(sField: String; sKey: String; sKeyValue: String): String;
    function SetupModel(FDEntregadores: TFDQuery): Boolean;
    procedure ClearModel;
  end;

  const
    TABLENAME = 'tbcodigosentregadores';
    SQLINSERT = 'INSERT INTO ' + TABLENAME  + '(COD_CADASTRO, COD_ENTREGADOR, NOM_FANTASIA, COD_AGENTE, DAT_CODIGO, ' +
                'DES_CHAVE, COD_GRUPO, VAL_VERBA, NOM_EXECUTANTE, DOM_ATIVO, DAT_MANUTENCAO, COD_TABELA, COD_CLIENTE) ' +
                'VALUES ' +
                '(:COD_CADASTRO, :COD_ENTREGADOR, :NOM_FANTASIA, :COD_AGENTE, :DAT_CODIGO, :DES_CHAVE, :COD_GRUPO, ' +
                ':VAL_VERBA, :NOM_EXECUTANTE, :COM_ATIVO, :DAT_MANUTENCAO, :COD_TABELA, :COD_CLIENTE);';
    SQLUPDATE = 'UPDATE ' + TABLENAME + ' SET ' +
                'NOM_FANTASIA = :NOM_FANTASIA, COD_AGENTE = :COD_AGENTE, DAT_CODIGO = :DAT_CODIGO, DES_CHAVE = :DES_CHAVE, ' +
                'COD_GRUPO = :COD_GRUPO, VAL_VERBA = :VAL_VERBA, NOM_EXECUTANTE = :NOM_EXECUTANTE, ' +
                'DOM_ATIVO = :DOM_ATIVO, DAT_MANUTENCAO = :DAT_MANUTENCAO, COD_TABELA = :COD_TABELA, COD_CLIENTE = :COD_CLIENTE ' +
                'WHERE COD_CADASTRO = :COD_CADASTRO AND COD_ENTREGADOR = :COD_ENTREGADOR;';

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
                    Self.Ativo, Self.Manutencao, Self.Tabela, Self.Cliente, Self.Cadastro, Self.Entregador]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

procedure TEntregadoresExpressas.ClearModel;
begin
  Cadastro := 0;
  Entregador := 0;
  Fantasia := '';
  Agente  := 0;
  Data := StrToDate('1899-12-31');
  Chave := '';
  Grupo := 0;
  Verba := 0;
  Executor := '';
  Manutencao := StrToDate('1899-12-31 23:59:59');
  Tabela := 0;
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
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where COD_CADASTRO = :COD_CADASTRO AND COD_ENTREGADOR = :COD_ENTREGADOR',
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
                    Self.Verba, Self.Executor, Self.Ativo, Self.Manutencao, Self.Tabela, Self.Cliente]);
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
  if aParam[0] = 'CHAVECLIENTE' then
  begin
    FDQuery.SQL.Add('WHERE DES_CHAVE = :DES_CHAVE AND COD_CLIENTE = :COD_CLIENTE');
    FDQuery.ParamByName('DES_CHAVE').AsString := aParam[1];
    FDQuery.ParamByName('COD_CLIENTE').AsInteger := aParam[2];
  end;
  if aParam[0] = 'ENTREGADORCLIENTE' then
  begin
    FDQuery.SQL.Add('WHERE COD_ENTREGADOR = :COD_ENTREGADOR AND COD_CLIENTE = :COD_CLIENTE');
    FDQuery.ParamByName('COD_ENTREGADOR').AsInteger := aParam[1];
    FDQuery.ParamByName('COD_CLIENTE').AsInteger := aParam[2];
  end;
  if aParam[0] = 'CLIENTE' then
  begin
    FDQuery.SQL.Add('WHERE COD_CLIENTE = :COD_CLIENTE');
    FDQuery.ParamByName('COD_CLIENTE').AsInteger := aParam[1];
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
  end
  else
  begin
    ClearModel;
  end;
  Result := FDQuery;
end;

function TEntregadoresExpressas.LocalizarExtato(aParam: array of variant): boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
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
    if aParam[0] = 'CHAVECLIENTE' then
    begin
      FDQuery.SQL.Add('WHERE DES_CHAVE = :DES_CHAVE AND COD_CLIENTE = :COD_CLIENTE');
      FDQuery.ParamByName('DES_CHAVE').AsString := aParam[1];
      FDQuery.ParamByName('COD_CLIENTE').AsInteger := aParam[2];
    end;
    if aParam[0] = 'ENTREGADORCLIENTE' then
    begin
      FDQuery.SQL.Add('WHERE COD_ENTREGADOR = :COD_ENTREGADOR AND COD_CLIENTE = :COD_CLIENTE');
      FDQuery.ParamByName('COD_ENTREGADOR').AsInteger := aParam[1];
      FDQuery.ParamByName('COD_CLIENTE').AsInteger := aParam[2];
    end;
    if aParam[0] = 'CLIENTE' then
    begin
      FDQuery.SQL.Add('WHERE COD_CLIENTE = :COD_CLIENTE');
      FDQuery.ParamByName('COD_CLIENTE').AsInteger := aParam[1];
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
    end
    else
    begin
      ClearModel;
      Exit;
    end;
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

procedure TEntregadoresExpressas.SetAcao(const value: TAcao);
begin
  Facao := value;
end;

procedure TEntregadoresExpressas.SetAgente(const value: Integer);
begin
  FAgente := value;
end;

procedure TEntregadoresExpressas.setAtivo(const Value: Integer);
begin
  FAtivo := Value;
end;

procedure TEntregadoresExpressas.SetCadastro(const value: Integer);
begin
  FCadastro := value;
end;

procedure TEntregadoresExpressas.SetChave(const value: String);
begin
  FChave := value;
end;

procedure TEntregadoresExpressas.SetCliente(const Value: Integer);
begin
  FCliente := Value;
end;

procedure TEntregadoresExpressas.SetData(const value: TDateTime);
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

procedure TEntregadoresExpressas.SetTabela(const Value: Integer);
begin
  FTabela := Value;
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
    Tabela := FDEntregadores.FieldByName('cod_tabela').AsInteger;
  finally
    Result := True;
  end;
end;

procedure TEntregadoresExpressas.SetVerba(const value: Double);
begin
  FVerba := value;
end;

end.
