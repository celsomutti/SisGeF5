unit Model.SisGeFContratadosRepresentantes;

interface

uses Common.ENum, FireDAC.Comp.Client, service.connectionMySQL, service.sistem;

type
  TRepresentantes = record
    id_representante  : integer;
    id_contratados    : integer;
    nom_representante : string[70];
    cpf_representante : string[20];
  end;

  type TContratadosRepresentantesModel = class
    private
        FAcao     : TAcao;
        FMensagem : string;
        FConn     : TConnectionMySQL;
        FQuery    : TFDQuery;

        function Inserir  ()  : boolean;
        function Alterar  ()  : boolean;

      public
        ARecord   : TRepresentantes;

        Constructor Create();
        function    GetNextID   (sIdName: string)         : Integer;
        function    Search      (aParams: array of string): boolean;
        function    CustomSearch(aParams: array of string): boolean;
        function    SaveRecord  ()                        : boolean;
        function    SetupRecords()                        : boolean;


        property Acao     : TAcao   read  FAcao     write FAcao;
        property Mensagem : string  read  FMensagem write FMensagem;
      protected
  end;
  const
      TABLENAME = 'crm_contratados_gr';
      SQLINSERT = 'insert into ' + TABLENAME +
                  '(id_representante, id_contratados, nom_representante, cpf_representante) ' +
                  'VALUES '  +
                  '(:id_representante, :id_contratados, :nom_representante, :cpf_representante)';
      SQLUPDATE = 'update ' + TABLENAME +
                  ' set ' +
                  'id_contratados = :id_contratados, nom_representante = :nom_representante, ' +
                  'cpf_representante = :cpf_representante ' +
                  'where ' +
                  'id_representante = :id_representante';
      SQLSELECT = 'select id_representante, id_contratados, nom_representante, cpf_representante ' +
                  'from ' +
                  TABLENAME;

implementation

{ TContratadosRepresentantesModel }

function TContratadosRepresentantesModel.Alterar: boolean;
begin
  Result := False;
  try
    FQuery := FConn.GetQuery;
    FQuery.ExecSQL(SQLUPDATE,
                  [ARecord.id_contratados, ARecord.nom_representante, ARecord.cpf_representante, ARecord.id_representante]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

constructor TContratadosRepresentantesModel.Create;
begin
  FConn := TConnectionMySQL.Create;
end;

function TContratadosRepresentantesModel.CustomSearch(aParams: array of string): boolean;
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
  if aParams[2] = '' then
    sSource := TABLENAME;
  FQuery.MacroByName('colums').AsRaw := aParams[1];
  FQuery.MacroByName('table').AsRaw := sSource;
  FQuery.MacroByName('where').AsRaw := aParams[3];
  FQuery.Open();
  if FQuery.IsEmpty then
  begin
    FMensagem := 'Nenhum registro encontrado!';
    FQuery.Connection.Close;
    Exit;
  end;
  Result := True;
end;

function TContratadosRepresentantesModel.GetNextID(sIdName: string): Integer;
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

function TContratadosRepresentantesModel.Inserir: boolean;
begin
  Result := False;
  try
    ARecord.id_representante := 0;
    FQuery := FConn.GetQuery();
    FQuery.ExecSQL(SQLINSERT,
                  [ARecord.id_representante, ARecord.id_contratados, ARecord.nom_representante, ARecord.cpf_representante]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TContratadosRepresentantesModel.SaveRecord: boolean;
begin
  case FAcao of
    tacIncluir: Result := Inserir();
    tacAlterar: Result := Alterar();
  end;
end;

function TContratadosRepresentantesModel.Search(aParams: array of string): boolean;
begin
  Result := False;
  FQuery := FConn.GetQuery;
  FQuery.SQL.Add(SQLSELECT);
  if Length(aParams) >= 2 then
  begin
    FQuery.SQL.Add('where');
    if aParams[0] = 'ID' then
      FQuery.SQL.Add('id_representante = ' + aParams[1])
    else if aParams[0] = 'CONTRATADO' then
      FQuery.SQL.Add('id_contradados = ' + aParams[1])
    else if aParams[0] = 'NOME' then
      FQuery.SQL.Add('nom_representante = "%' +  aParams[1] + '%"')
    else if aParams[0] = 'CPF' then
      FQuery.SQL.Add('cpf_representante = "' + aParams[1] + '"')
    else
      FQuery.SQL.Add(aParams[1]);
  end;
  if FQuery.IsEmpty then
  begin
    FMensagem := 'Nenhum registro encontrado!';
    FQuery.Connection.Close;
    Exit;
  end;
  Result := True;
end;

function TContratadosRepresentantesModel.SetupRecords: boolean;
begin
  Result := False;
  if FQuery.IsEmpty then
    Exit;
  ARecord.id_representante  :=  FQuery.FieldByName('id_gr').AsInteger;
  ARecord.id_contratados    :=  FQuery.FieldByName('id_contratados').AsInteger;
  ARecord.nom_representante :=  FQuery.FieldByName('nom_representante').AsString;
  ARecord.cpf_representante :=  FQuery.FieldByName('cpf_representante').AsString;
  Result := True;
end;

end.
