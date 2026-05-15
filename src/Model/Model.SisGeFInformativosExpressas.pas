unit Model.SisGeFInformativosExpressas;

interface

  uses Common.ENum, FireDAC.Comp.Client, service.connectionMySQL, service.sistem;

  type
    TInformativos = record
      id  : integer;
      des_informativo : string;
      dom_finalizador : boolean;
    end;

  type
    TInformarivosExpressas = class
  private
      FConn: TConnectionMySQL;
      FAcao: TAcao;
      FQuery: TFDQuery;
      FMensagem: string;

      function Inserir  ()  : boolean;
      function Alterar  ()  : boolean;
      function Excluir  ()  : boolean;

    public
        ARecord   : TInformativos;

        Constructor Create();
        function    Search      (aParams: array of string): boolean;
        function    CustomSearch(aParams: array of string): boolean;
        function    SaveRecord  ()                        : boolean;
        function    SetupRecords()                        : boolean;


        property Acao     : TAcao     read  FAcao     write FAcao;
        property Mensagem : string    read  FMensagem write FMensagem;
        property Query    : TFDQuery  read  FQuery    write FQuery;

    end;

    const
      TABLENAME = 'expressas_informativos';
      SQLINSERT = 'insert into ' + TABLENAME +
                  '(id, des_informarivo, dom_finalizador) ' +
                  'VALUES '  +
                  '(:id, :des_informarivo, :dom_finalizador)';
      SQLUPDATE = 'update ' + TABLENAME +
                  ' set ' +
                  'des_informarivo = :des_informarivo, dom_finalizador = :dom_finalizador ' +
                  'where ' +
                  'id = :id';
      SQLSELECT = 'select id, des_informarivo, dom_finalizador ' +
                  'from ' +
                  TABLENAME;
      SQLDELETE = 'delete from ' + TABLENAME + ' where id = :id';

implementation

{ TInformarivosExpressas }

function TInformarivosExpressas.Alterar: boolean;
begin
  Result := False;
  try
    FQuery.ExecSQL(SQLINSERT,
                  [ARecord.id, ARecord.des_informativo, ARecord.dom_finalizador]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

constructor TInformarivosExpressas.Create;
begin
  FConn := TConnectionMySQL.Create();
end;

function TInformarivosExpressas.CustomSearch(aParams: array of string): boolean;
var
  sSource : string;
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
  if aParams[1] = '' then
    sSource := TABLENAME;
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

function TInformarivosExpressas.Excluir: boolean;
begin
  try
    FQuery := FConn.GetQuery;
    FQuery.ExecSQL(SQLDELETE,
                  [ARecord.id]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TInformarivosExpressas.Inserir: boolean;
begin
  Result := False;
  try
    FQuery := FConn.GetQuery();
    FQuery.ExecSQL(SQLINSERT,
                  [ARecord.id, ARecord.des_informativo, ARecord.dom_finalizador]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TInformarivosExpressas.SaveRecord: boolean;
begin
  case FAcao of
    tacIncluir  : Result := Inserir();
    tacAlterar  : Result := Alterar();
    tacExcluir  : Result := Excluir();
  end;
end;

function TInformarivosExpressas.Search(aParams: array of string): boolean;
begin
  Result := False;
  FQuery := FConn.GetQuery;
  FQuery.SQL.Add(SQLSELECT);
  if Length(aParams) >= 2 then
  begin
    FQuery.SQL.Add('where');
    if aParams[0] = 'ID' then
      FQuery.SQL.Add('id = ' + aParams[1])
    else if aParams[0] = 'DESCRICAO' then
      FQuery.SQL.Add('des_informativo like "%' + aParams[1] + '%"')
    else
      FQuery.SQL.Add(aParams[1]);
  end;
  FQuery.Open();
  if FQuery.IsEmpty then
  begin
    FMensagem := 'Nenhum registro encontrado!';
    Exit;
  end;
  Result := True;
end;

function TInformarivosExpressas.SetupRecords: boolean;
begin
  Result := False;
  if FQuery.IsEmpty then
    Exit;
  ARecord.id              :=  FQuery.FieldByName('id').AsInteger;
  ARecord.des_informativo :=  FQuery.FieldByName('des_informativo').AsString;
  ARecord.dom_finalizador :=  FQuery.FieldByName('dom_finalizador').AsBoolean;
  Result := True;
end;

end.
