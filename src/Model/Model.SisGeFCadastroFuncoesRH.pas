unit Model.SisGeFCadastroFuncoesRH;

interface

  uses Common.ENum, FireDAC.Comp.Client, service.connectionMySQL, service.sistem;

  type
    TFuncoes = Record
      id_funcao: integer;
      id_categoria: integer;
      des_funcao: string[132];
      des_atividades : string;
    End;

  type
    TFuncoesRH = class
      private
        FAcao : TAcao;
        FMensagem : string;
        FConn     : TConnectionMySQL;
        FQuery    : TFDQuery;

        function Inserir  ()  : boolean;
        function Alterar  ()  : boolean;
      protected

      public
        ARecord   : TFuncoes;

        Constructor Create();
        function    GetNextID   (sIdName: string)         : Integer;
        function    Search      (aParams: array of string): boolean;
        function    CustomSearch(aParams: array of string): boolean;
        function    SaveRecord  ()                        : boolean;
        function    SetupRecord ()                        : boolean;


        property Acao     : TAcao     read  FAcao     write FAcao;
        property Mensagem : string    read  FMensagem write FMensagem;
        property Query    : TFDQuery  read  FQuery    write FQuery;
    end;

     const
      TABLENAME = 'crm_funcoes_rh';
      SQLINSERT = 'insert into ' + TABLENAME +
                  '(id_funcao, id_categoria, des_funcao, des_atividades) ' +
                  'values ' +
                  '(:id_funcao, :id_categoria, :des_funcao, :des_atividades)';
      SQLUPDATE = 'update ' + TABLENAME +
                  ' set ' +
                  'id_categoria = :id_categoria, ' +
                  'des_funcao = :des_funcao, ' +
                  'des_atividades = :des_atividades ' +
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
                  [ARecord.id_categoria, ARecord.des_funcao, ARecord.des_atividades, ARecord.id_funcao]);
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
var
  sSource: string;
begin
  Result := False;
  if Length(aParams) < 3 then
  begin
    FMensagem := 'Quantidade de parâmetros incorreta!';
    Exit
  end;
  if aParams[1] = 'TABLE' then
    sSource := TABLENAME
  else
    sSource := aParams[1];
  FQuery := FConn.GetQuery;
  FQuery.SQL.Clear;
  FQuery.SQL.Add('select !colums from !table {if !where } where !where {fi}');
  FQuery.MacroByName('colums').AsRaw := aParams[0];
  FQuery.MacroByName('table').AsRaw := sSource;
  FQuery.MacroByName('where').AsRaw := aParams[2];
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
                  [ARecord.id_funcao, ARecord.id_categoria, ARecord.des_funcao, ARecord.des_atividades]);
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
    else if aParams[0] = 'CATEGORIA' then
      FQuery.SQL.Add('id_categoria = ' + aParams[1])
    else if aParams[0] = 'NOME' then
      FQuery.SQL.Add('des_funcao like "%' + aParams[1] + '%"');
  end;
  FQuery.Open();
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
  ARecord.id_funcao       :=  FQuery.FieldByName('id_funcao').AsInteger;
  ARecord.id_categoria    :=  FQuery.FieldByName('id_categoria').AsInteger;
  ARecord.des_funcao      :=  FQuery.FieldByName('des_funcao').AsString;
  ARecord.des_atividades  :=  FQuery.FieldByName('des_atividades').AsString;
  Result := True;
end;

end.
