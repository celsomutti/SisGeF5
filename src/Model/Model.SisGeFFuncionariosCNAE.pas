unit Model.SisGeFFuncionariosCNAE;

interface
  uses Common.ENum, FireDAC.Comp.Client, service.connectionMySQL, service.sistem, System.SysUtils;

  type
    TCNAE = record
      id              : integer;
      id_funcionario  : integer;
      des_tipo_cnae   : string[20];
      cod_cnae        : string[20];
      des_cnae        : string[132];
      createdAt       : TDateTime;
      updatedAt       : TDateTime;
  end;

  type
    TFuncionariosCNAEModel = class
        FAcao     : TAcao;
        FMensagem : string;
        FConn     : TConnectionMySQL;
        FQuery    : TFDQuery;
        FRecord   : TCNAE;

        function Inserir  ()  : boolean;
        function Alterar  ()  : boolean;
        function Excluir  ()  : boolean;
      public
        Constructor Create();
        function    CustomSearch(aParams: array of string): boolean;
        function    SaveRecord  ()                        : boolean;
        function    SetupRecords()                        : boolean;

        property Query    : TFDQuery  read  FQuery    write FQuery;
        property Acao     : TAcao     read  FAcao     write FAcao;
        property Mensagem : string    read  FMensagem write FMensagem;
        property Records  : TCNAE     read  FRecord   write FRecord;

  const
      TABLENAME = 'crm_funcionarios_cnae';
      SQLINSERT = 'insert into ' + TABLENAME +
                  '(id, id_funcionario, des_tipo_cnae, cod_cnae, des_cnae, createdAt, updatedAt) ' +
                  'VALUES '  +
                  '(:id, :id_funcionario, :des_tipo_cnae, :cod_cnae, :des_cnae, :createdAt, :updatedAt)';
      SQLUPDATE = 'update ' + TABLENAME +
                  ' set ' +
                  'id_funcionario = :id_funcionario, des_tipo_cnae = :des_tipo_cnae, cod_cnae = :cod_cnae, ' +
                  'des_cnae  = :des_cnae, createdAt = :createdAt, updatedAt = :updatedAt ' +
                  'where ' +
                  'id_cnae = :id_cnae';
      SQLSELECT = 'select id, id_funcionario, des_tipo_cnae, cod_cnae, des_cnae, createdAt, updatedAt ' +
                  'from ' +
                  TABLENAME;
      SQLDELETE = 'delete from ' + TABLENAME + ' where id_funcionario = :id_funcionario';


  end;

implementation

{ TFuncionariosCNAEModel }

function TFuncionariosCNAEModel.Alterar: boolean;
begin
  Result := False;
  try
    FQuery := FConn.GetQuery;
    FRecord.updatedAt := Now();
    FQuery.ExecSQL(SQLUPDATE,
                  [FRecord.id_funcionario, FRecord.des_tipo_cnae, FRecord.cod_cnae,
                  FRecord.des_cnae, FRecord.createdAt, FRecord.updatedAt, FRecord.id]);
    if FQuery.RowsAffected = 0 then
      Exit;
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

constructor TFuncionariosCNAEModel.Create;
begin
  FConn := TConnectionMySQL.Create;
end;

function TFuncionariosCNAEModel.CustomSearch(aParams: array of string): boolean;
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
  if aParams[1] = 'TABLE' then
    sSource := TABLENAME
  else
    sSource := aParams[1];
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

function TFuncionariosCNAEModel.Excluir: boolean;
begin
  Result := False;
  try
    FQuery := FConn.GetQuery;
    FQuery.ExecSQL(SQLDELETE, [FRecord.id_funcionario]);
    if FQuery.RowsAffected = 0 then
      Exit;
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TFuncionariosCNAEModel.Inserir: boolean;
begin
  try
    FQuery := FConn.GetQuery();
    FRecord.createdAt := Now();
    FRecord.updatedAt := Now();
    FQuery.ExecSQL(SQLINSERT,
                  [FRecord.id, FRecord.id_funcionario, FRecord.des_tipo_cnae, FRecord.cod_cnae,  FRecord.des_cnae, FRecord.createdAt,
                  FRecord.updatedAt]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TFuncionariosCNAEModel.SaveRecord: boolean;
begin
  case FAcao of
    tacIncluir: Result := Inserir();
    tacAlterar: Result := Alterar;
    tacExcluir: Result := Excluir();
  end;
end;

function TFuncionariosCNAEModel.SetupRecords: boolean;
begin
  Result := False;
  if FQuery.IsEmpty then
    Exit;
  FRecord.id              :=  FQuery.FieldByName('id_cnae').AsInteger;
  FRecord.id_funcionario  :=  FQuery.FieldByName('id_contratados').AsInteger;
  FRecord.des_tipo_cnae   :=  FQuery.FieldByName('des_tipo_cnae').AsString;
  FRecord.cod_cnae        :=  FQuery.FieldByName('des_cnae').AsString;
  FRecord.des_cnae        :=  FQuery.FieldByName('des_cnae').AsString;
  FRecord.createdAt       :=  FQuery.FieldByName('createdAt').AsDateTime;
  FRecord.updatedAt       :=  FQuery.FieldByName('updatedAt').AsDateTime;
  Result := True;
end;

end.
