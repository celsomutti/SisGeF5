unit Model.SisGeFContratadosCNAE;

interface

uses Common.ENum, FireDAC.Comp.Client, service.connectionMySQL, service.sistem;

type
  TCNAE = record
    id_cnae         : integer;
    id_contratados  : integer;
    des_tipo_cnae   : string[20];
    cod_cnae        : string[20];
    des_cnae        : string[132];
  end;

  type TContratadosCNAEModel = class
    private
        FAcao     : TAcao;
        FMensagem : string;
        FConn     : TConnectionMySQL;
        FQuery    : TFDQuery;

        function Inserir  ()  : boolean;
        function Alterar  ()  : boolean;
        function Excluir  ()  : boolean;

      public
        ARecord   : TCNAE;

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
      TABLENAME = 'crm_contratados_cnae';
      SQLINSERT = 'insert into ' + TABLENAME +
                  '(id_cnae, id_contratados, des_tipo_cnae, cod_cnae, des_cnae) ' +
                  'VALUES '  +
                  '(:id_cnae, :id_contratados, :des_tipo_cnae, :cod_cnae, :des_cnae)';
      SQLUPDATE = 'update ' + TABLENAME +
                  ' set ' +
                  'id_contratados = :id_contratados, des_tipo_cnae = :des_tipo_cnae, cod_cnae = :cod_cnae, ' +
                  'des_cnae  = :des_cnae ' +
                  'where ' +
                  'id_cnae = :id_cnae';
      SQLSELECT = 'select id_cnae, id_contratados, des_tipo_cnae, cod_cnae, des_cnae ' +
                  'from ' +
                  TABLENAME;
      SQLDELETE = 'delete from ' + TABLENAME + ' where id_contratados = :id_contratados';

implementation

{ TContratadosCNAEModel }

function TContratadosCNAEModel.Alterar: boolean;
begin
  Result := False;
  try
    FQuery := FConn.GetQuery;
    FQuery.ExecSQL(SQLUPDATE,
                  [ARecord.id_contratados, ARecord.des_tipo_cnae, ARecord.cod_cnae,
                  ARecord.des_cnae, ARecord.id_cnae]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

constructor TContratadosCNAEModel.Create;
begin
  FConn := TConnectionMySQL.Create;
end;

function TContratadosCNAEModel.CustomSearch(aParams: array of string): boolean;
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

function TContratadosCNAEModel.Excluir: boolean;
begin
  Result := False;
  try
    FQuery := FConn.GetQuery;
    FQuery.ExecSQL(SQLDELETE,
                  [ARecord.id_contratados]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TContratadosCNAEModel.GetNextID(sIdName: string): Integer;
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

function TContratadosCNAEModel.Inserir: boolean;
begin
  Result := False;
  try
    ARecord.id_cnae := GetNextID('id_cnae');
    FQuery := FConn.GetQuery();
    FQuery.ExecSQL(SQLINSERT,
                  [ARecord.id_cnae, ARecord.id_contratados, ARecord.des_tipo_cnae, ARecord.cod_cnae,
                  ARecord.des_cnae]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TContratadosCNAEModel.SaveRecord: boolean;
begin
 case FAcao of
    tacIncluir  : Result  :=  Inserir ();
    tacAlterar  : Result  :=  Alterar ();
    tacExcluir  : Result  :=  Excluir ();
  end;
end;

function TContratadosCNAEModel.Search(aParams: array of string): boolean;
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
    else if aParams[0] = 'CNAE' then
      FQuery.SQL.Add('cod_cnae like "%' + aParams[1] + '%"')
    else if aParams[0] = 'NOME' then
      FQuery.SQL.Add('des_cnae like "%' + aParams[1] + '%"')
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

function TContratadosCNAEModel.SetupRecords: boolean;
begin
  Result := False;
  if FQuery.IsEmpty then
    Exit;
  ARecord.id_cnae         :=  FQuery.FieldByName('id_cnae').AsInteger;
  ARecord.id_contratados  :=  FQuery.FieldByName('id_contratados').AsInteger;
  ARecord.des_tipo_cnae   :=  FQuery.FieldByName('des_tipo_cnae').AsString;
  ARecord.cod_cnae        :=  FQuery.FieldByName('des_cnae').AsString;
  ARecord.des_cnae        :=  FQuery.FieldByName('des_cnae').AsString;
  Result := True;
end;

end.
