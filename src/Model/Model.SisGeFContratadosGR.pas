unit Model.SisGeFContratadosGR;

interface

uses Common.ENum, FireDAC.Comp.Client, service.connectionMySQL, service.sistem;

type
  TGR = record
    id_gr             : integer;
    id_contratados    : integer;
    dat_consulta      : TDate;
    dat_validade      : TDate;
    nom_empresa       : string[70];
    cod_consulta      : string[20];
    cod_seguranca_cnh : string[30];
  end;

  type TContratadosGRModel = class
    private
        FAcao     : TAcao;
        FMensagem : string;
        FConn     : TConnectionMySQL;
        FQuery    : TFDQuery;

        function Inserir  ()  : boolean;
        function Alterar  ()  : boolean;

      public
        ARecord   : TGR;

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
                  '(id_gr, id_contratados, dat_consulta, dat_validade, nom_empresa, cod_consulta, cod_seguranca_cnh) ' +
                  'VALUES '  +
                  '(:id_gr, :id_contratados, :dat_consulta, :dat_validade, :nom_empresa, :cod_consulta, :cod_seguranca_cnh)';
      SQLUPDATE = 'update ' + TABLENAME +
                  ' set ' +
                  'id_contratados = :id_contratados, dat_consulta = :dat_consulta, dat_validade = :dat_validade, ' +
                  'nom_empresa = :nom_empresa, cod_consulta = :cod_consulta, cod_seguranca_cnh = :cod_seguranca_cnh ' +
                  'where ' +
                  'id_gr = :id_gr';
      SQLSELECT = 'select id_gr, id_contratados, dat_consulta, dat_validade, nom_empresa, cod_consulta, cod_seguranca_cnh ' +
                  'from ' +
                  TABLENAME;

implementation

{ TContratadosGRModel }

function TContratadosGRModel.Alterar: boolean;
begin
  Result := False;
  try
    FQuery := FConn.GetQuery;
    FQuery.ExecSQL(SQLUPDATE,
                  [ARecord.id_contratados, ARecord.dat_consulta, ARecord.dat_validade, ARecord.nom_empresa, ARecord.cod_consulta,
                   ARecord.cod_seguranca_cnh, ARecord.id_gr]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

constructor TContratadosGRModel.Create;
begin
  FConn := TConnectionMySQL.Create;
end;

function TContratadosGRModel.CustomSearch(aParams: array of string): boolean;
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

function TContratadosGRModel.GetNextID(sIdName: string): Integer;
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

function TContratadosGRModel.Inserir: boolean;
begin
  Result := False;
  try
    ARecord.id_gr := 0;
    FQuery := FConn.GetQuery();
    FQuery.ExecSQL(SQLINSERT,
                  [ARecord.id_gr, ARecord.id_contratados, ARecord.dat_consulta, ARecord.dat_validade, ARecord.nom_empresa,
                  ARecord.cod_consulta, ARecord.cod_seguranca_cnh]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TContratadosGRModel.SaveRecord: boolean;
begin
  case FAcao of
    tacIncluir: Result := Inserir();
    tacAlterar: Result := Alterar();
  end;
end;

function TContratadosGRModel.Search(aParams: array of string): boolean;
begin
  Result := False;
  FQuery := FConn.GetQuery;
  FQuery.SQL.Add(SQLSELECT);
  if Length(aParams) >= 2 then
  begin
    FQuery.SQL.Add('where');
    if aParams[0] = 'ID' then
      FQuery.SQL.Add('id_cnae = ' + aParams[1])
    else if aParams[0] = 'CONTRATADO' then
      FQuery.SQL.Add('id_contradados = ' + aParams[1])
    else if aParams[0] = 'CONSULTA' then
      FQuery.SQL.Add('dat_consulta = "' +  aParams[1] + '"')
    else if aParams[0] = 'VALIDADE' then
      FQuery.SQL.Add('dat_validade = "' + aParams[1] + '"')
    else if aParams[0] = 'EMPRESA' then
      FQuery.SQL.Add('nom_empresa LIKE "%' + aParams[1] + '%"')
    else if aParams[0] = 'CODIGO' then
      FQuery.SQL.Add('cod_consulta = ' + aParams[1])
    else if aParams[0] = 'SEGURANCA' then
      FQuery.SQL.Add('cod_seguranca_cnh = ' + aParams[1])
    else
      FQuery.SQL.Add(aParams[1]);
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

function TContratadosGRModel.SetupRecords: boolean;
begin
  Result := False;
  if FQuery.IsEmpty then
    Exit;
  ARecord.id_gr             :=  FQuery.FieldByName('id_gr').AsInteger;
  ARecord.id_contratados    :=  FQuery.FieldByName('id_contratados').AsInteger;
  ARecord.dat_consulta      :=  FQuery.FieldByName('dat_consulta').AsDateTime;
  ARecord.dat_validade      :=  FQuery.FieldByName('dat_validade').AsDateTime;
  ARecord.nom_empresa       :=  FQuery.FieldByName('nom_empresa').AsString;
  ARecord.cod_consulta      :=  FQuery.FieldByName('cod_consulta').AsString;
  ARecord.cod_seguranca_cnh :=  FQuery.FieldByName('cod_seguranca_cnh').AsString;
  Result := True;
end;

end.
