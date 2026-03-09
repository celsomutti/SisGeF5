unit Model.SisgeFCategorias;

interface
uses Common.ENum, FireDAC.Comp.Client, service.connectionMySQL, service.sistem;

  type
    TCategorias = record
      id_categoria  : integer;
      des_categoria : string[70];
    end;
  type
    TCategoriasModel = class
    private
        FAcao     : TAcao;
        FMensagem : string;
        FConn     : TConnectionMySQL;
        FQuery    : TFDQuery;

        function Inserir  ()  : boolean;
        function Alterar  ()  : boolean;
        function Excluir  ()  : boolean;

      public
        ARecord   : TCategorias;

        Constructor Create();
        function    GetNextID   (sIdName: string)         : Integer;
        function    Search      (aParams: array of string): boolean;
        function    CustomSearch(aParams: array of string): boolean;
        function    SaveRecord  ()                        : boolean;
        function    SetupRecords()                        : boolean;


        property Acao     : TAcao     read  FAcao     write FAcao;
        property Mensagem : string    read  FMensagem write FMensagem;
        property Query    : TFDQuery  read  FQuery    write FQuery;

      protected
    end;
    const
      TABLENAME = 'crm_categorias';
      SQLINSERT = 'insert into ' + TABLENAME +
                  '(id_categoria, des_categoria) ' +
                  'VALUES '  +
                  '(:id_categoria, :des_categoria)';
      SQLUPDATE = 'update ' + TABLENAME +
                  ' set ' +
                  'des_categoria = :des_categoria ' +
                  'where ' +
                  'id_categoria = :id_categoria';
      SQLSELECT = 'select id_categoria, des_categoria ' +
                  'from ';

      SQLDELETE = 'delete from ' + TABLENAME + ' where id_categoria = :id_categoria';
implementation

{ TCategoriasModel }

function TCategoriasModel.Alterar: boolean;
begin
  Result := False;
  try
    FQuery := FConn.GetQuery;
    FQuery.ExecSQL(SQLUPDATE,
                  [ARecord.des_categoria, ARecord.id_categoria]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

constructor TCategoriasModel.Create;
begin
  FConn := TConnectionMySQL.Create;
end;

function TCategoriasModel.CustomSearch(aParams: array of string): boolean;
var
  sSource : string;
begin
  Result := False;
  if Length(aParams) < 3 then
  begin
    FMensagem := 'Quantidade de parâmetros incorreta!';
    Exit
  end;
  FQuery := FConn.GetQuery;
  FQuery.SQL.Clear;
  FQuery.SQL.Add('select !colums from !table {if !where } where !where {fi}');
  sSource := aParams[1];
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

function TCategoriasModel.Excluir: boolean;
begin
  Result := False;
  try
    FQuery := FConn.GetQuery;
    FQuery.ExecSQL(SQLDELETE, [ARecord.id_categoria]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TCategoriasModel.GetNextID(sIdName: string): Integer;
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

function TCategoriasModel.Inserir: boolean;
begin
  Result := False;
  try
//    ARecord.id_categoria := GetNextID('id');
    FQuery := FConn.GetQuery();
    FQuery.ExecSQL(SQLINSERT,
                  [ARecord.id_categoria, ARecord.des_categoria]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TCategoriasModel.SaveRecord: boolean;
begin
 case FAcao of
    tacIncluir: Result := Inserir();
    tacAlterar: Result := Alterar();
    tacExcluir: REsult := Excluir();
  end;
end;

function TCategoriasModel.Search(aParams: array of string): boolean;
begin
  Result := False;
  FQuery := FConn.GetQuery;
  FQuery.SQL.Add('SELECT * FROM ' + TABLENAME);
  if Length(aParams) >= 2 then
  begin
    FQuery.SQL.Add('where');
    if aParams[0] = 'ID' then
      FQuery.SQL.Add('id_categoria = ' + aParams[1])
    else if aParams[0] = 'NOME' then
      FQuery.SQL.Add('des_categoria like "%' + aParams[1] + '%"')
    else if aParams[0] = 'ALL' then
      FQuery.SQL.Add('TRUE')
    else
      FQuery.SQL.Add(aParams[1])
  end;
  FQuery.Open();
  if FQuery.IsEmpty then
  begin
    FMensagem := 'Nenhum registro encontrado!';
    Exit;
  end;
  Result := True;
end;

function TCategoriasModel.SetupRecords: boolean;
begin
  Result := False;
  if FQuery.IsEmpty then
    Exit;
  ARecord.id_categoria  :=  FQuery.FieldByName('id_categoria').AsInteger;
  ARecord.des_categoria :=  FQuery.FieldByName('des_categoria').AsInteger;
  Result := True;
end;

