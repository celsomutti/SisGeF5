unit Model.SisGeFCadastroFuncoesRH;

interface

  uses Common.ENum, FireDAC.Comp.Client, service.connectionMySQL, service.sistem;

  type
    TFuncoes = Record
      id_funcao: integer;
      des_funcao: string[132];
    End;

  type
    TFuncoesRH = class
      private
        FAcao : TAcao;
        FMensagem : string;
        FConn     : TConnectionMySQL;
        FQuery    : TFDQuery;
        ARecord   : TFuncoes;

        function Inserir  ()  : boolean;
        function Alterar  ()  : boolean;
      protected

      public

        Constructor Create();
        function    GetNextID   (sIdName: string)         : Integer;
        function    Search      (aParams: array of string): boolean;
        function    CustomSearch(aParams: array of string): boolean;
        function    SaveRecord  ()                        : boolean;
        function    SetupRecord ()                        : boolean;


        property Acao     : TAcao   read  FAcao     write FAcao;
        property Mensagem : string  read  FMensagem write FMensagem;
    end;

     const
      TABLENAME = 'crm_funcoes_rh';
      SQLINSERT = 'insert into ' + TABLENAME +
                  '(id_funcao, des_funcao) ' +
                  'values ' +
                  '(:id_funcao, :des_funcao)';
      SQLUPDATE = 'update ' + TABLENAME +
                  ' set ' +
                  'des_funcao = :des_funcao ' +
                  'where ' +
                  'id_funcao = :id_funcao';
      SQLSELECT = 'select id_funcao, des_funcao ' +
                  'from ' +
                  TABLENAME;

implementation

{ TFuncoesRH }

function TFuncoesRH.Alterar: boolean;
begin
  Result := False;
  try
    FQuery := FConn.GetQuery;
    FQuery.ExecSQL(SQLUPDATE,
                  [ARecord.id_funcao, ARecord.des_funcao]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

constructor TFuncoesRH.Create;
begin
  FConn := TConnectionMySQL.Create;
end;

function TFuncoesRH.CustomSearch(aParams: array of string): boolean;
begin
  Result := False;
  if Length(aParams) < 2 then
  begin
    FMensagem := 'Quantidade de parâmetros incorreta!';
    Exit
  end;
  FQuery := FConn.GetQuery;
  FQuery.SQL.Clear;
  FQuery.SQL.Add('select !colums from !table {if !where } where !where {fi}');
  FQuery.MacroByName('colums').AsRaw := aParams[1];
  FQuery.MacroByName('table').AsRaw := TABLENAME;
  FQuery.MacroByName('where').AsRaw := aParams[1];
  FQuery.Open();
  if FQuery.IsEmpty then
  begin
    FMensagem := 'Nenhum registro encontrado!';
    FQuery.Connection.Close;
    Exit;
  end;
  Result := True;
end;

function TFuncoesRH.GetNextID(sIdName: string): Integer;
begin
  try
    FQuery := FConn.GetQuery;
    FQuery.Open('select coalesce(max(' + sIdName + '),0) + 1 from ' + TABLENAME);
    try
      Result := FQuery.Fields[0].AsInteger;
    finally
      FQuery.Close;
    end;
  finally
    FQuery.Connection.Close;
    FQuery.Free;
  end;
end;

function TFuncoesRH.Inserir: boolean;
begin
Result := False;
  try
    ARecord.id_funcao := 0;
    FQuery := FConn.GetQuery();
    FQuery.ExecSQL(SQLINSERT,
                  [ARecord.id_funcao, ARecord.des_funcao]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TFuncoesRH.SaveRecord: boolean;
begin
  case FAcao of
    tacIncluir: Result := Inserir();
    tacAlterar: Result := Alterar();
  end;
end;

function TFuncoesRH.Search(aParams: array of string): boolean;
begin
  Result := False;
  FQuery := FConn.GetQuery;
  FQuery.SQL.Add(SQLSELECT);
  if Length(aParams) >= 2 then
  begin
    FQuery.SQL.Add('where');
    if aParams[0] = 'ID' then
      FQuery.SQL.Add('id_funcao = ' + aParams[1])
    else if aParams[0] = 'NOME' then
      FQuery.SQL.Add('des_funcao like "%' + aParams[1] + '%"');
  end;
  if FQuery.IsEmpty then
  begin
    FMensagem := 'Nenhum registro encontrado!';
    FQuery.Connection.Close;
    Exit;
  end;
  Result := True;
end;

function TFuncoesRH.SetupRecord: boolean;
begin
  Result := False;
  if FQuery.IsEmpty then
    Exit;
  ARecord.id_funcao   := FQuery.FieldByName('id_funcao').AsInteger;
  ARecord.des_funcao  := FQuery.FieldByName('des_funcao').AsString;
  Result := True;
end;

end.
