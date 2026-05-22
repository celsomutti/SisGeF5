unit Model.SisGeFFuncionariosDocumentosRH;

interface

  uses Common.ENum, FireDAC.Comp.Client, service.connectionMySQL, service.sistem, System.SysUtils;

  type
    TDocumentos = record
      id                    : integer;
      id_funcionario        : integer;
      num_ctps              : string[30];
      num_serie_ctps        : string[10];
      uf_ctps               : string[2];
      num_pis               : string[20];
      num_reservista        : string[20];
      num_titulo_eleitoral  : string[20];
      num_zona_eleitoral    : string[20];
      num_secao_eleitoral   : string[20];
      createdAt             : TDateTime;
      updatedAt             : TDateTime;
    end;

  type
    TFuncionariosDocumentoeRHModel = class
    private
        FAcao     : TAcao;
        FMensagem : string;
        FConn     : TConnectionMySQL;
        FQuery    : TFDQuery;
        FRecords  : TDocumentos;

        function Inserir  ()  : boolean;
        function Alterar  ()  : boolean;
        function Excluir  ()  : boolean;

      public

        Constructor Create();
        function    CustomSearch(aParams: array of string): boolean;
        function    SaveRecord  ()                        : boolean;
        function    SetupRecords()                        : boolean;

        property    Records: TDocumentos read FRecords write FRecords;


        property Acao     : TAcao     read  FAcao     write FAcao;
        property Mensagem : string    read  FMensagem write FMensagem;
        property Query    : TFDQuery  read  FQuery    write FQuery;
  end;
  const
      TABLENAME = 'crm_funcionarios_documentos_rh ';
      SQLINSERT = 'insert into ' + TABLENAME +
                  '(id, id_funcionario, num_ctps, num_serie_ctps, uf_ctps, num_pis, num_reservista, num_titulo_eleitoral, ' +
                  'num_zona_eleitoral, num_secao_eleitoral, createdAt, updatedAt) ' +
                  'VALUES '  +
                  '(:id, :id_funcionario, :num_ctps, :num_serie_ctps, :uf_ctps, :num_pis, :num_reservista, :num_titulo_eleitoral, '+
                  ':num_zona_eleitoral, :num_secao_eleitoral, :createdAt, :updatedAt)';
      SQLUPDATE = 'update ' + TABLENAME +
                  ' set ' +
                  'id_funcionario = :id_funcionario, num_ctps = :num_ctps, num_serie_ctps = :num_serie_ctps, uf_ctps =:uf_ctps, ' +
                  'num_pis = :num_pis, num_reservista = :num_reservista, num_titulo_eleitoral =:num_titulo_eleitoral, ' +
                  'num_zona_eleitoral = :num_zona_eleitoral, num_secao_eleitoral = :num_secao_eleitoral, ' +
                  'createdAt = :createdAt, updatedAt = :updatedAt ' +
                  'where ' +
                  'id = :id';
      SQLSELECT = 'select id, id_funcionario, num_ctps, num_serie_ctps, uf_ctps, num_pis, num_reservista, num_titulo_eleitoral, ' +
                  'num_zona_eleitoral, num_secao_eleitoral, createdAt, updatedAt ' +
                  'from ' +
                  TABLENAME;
      SQLDELETE = 'delete from ' + TABLENAME + ' where id = :id';

implementation

{ TFuncionariosDocumentoeRHModel }

function TFuncionariosDocumentoeRHModel.Alterar: boolean;
begin
  try
    FQuery := FConn.GetQuery;
    FRecords.updatedAt := Now();
    FQuery.ExecSQL(SQLUPDATE,
                  [FRecords.id_funcionario, FRecords.num_ctps, FRecords.num_serie_ctps, FRecords.uf_ctps,
                  FRecords.num_pis, FRecords.num_reservista, FRecords.num_titulo_eleitoral, FRecords.num_zona_eleitoral,
                  FRecords.num_secao_eleitoral, FRecords.createdAt, FRecords.updatedAt, FRecords.id]);
    if FQuery.RowsAffected = 0 then
      Exit;
    Result := True;
  finally
    FQuery.Connection.Close;
  end;

end;

constructor TFuncionariosDocumentoeRHModel.Create;
begin
  FConn := TConnectionMySQL.Create;
end;

function TFuncionariosDocumentoeRHModel.CustomSearch(aParams: array of string): boolean;
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

function TFuncionariosDocumentoeRHModel.Excluir: boolean;
begin
  Result := False;
  try
    FQuery := FConn.GetQuery;
    FQuery.ExecSQL(SQLDELETE, [FRecords.id]);
    if FQuery.RowsAffected = 0 then
      Exit;
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TFuncionariosDocumentoeRHModel.Inserir: boolean;
begin
  try
    FQuery := FConn.GetQuery();
    FRecords.createdAt := Now();
    FRecords.updatedAt := Now();
    FQuery.ExecSQL(SQLINSERT,
                  [FRecords.id, FRecords.id_funcionario, FRecords.num_ctps, FRecords.num_serie_ctps, FRecords.uf_ctps,
                  FRecords.num_pis, FRecords.num_reservista, FRecords.num_titulo_eleitoral, FRecords.num_zona_eleitoral,
                  FRecords.num_secao_eleitoral, FRecords.createdAt, FRecords.updatedAt]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TFuncionariosDocumentoeRHModel.SaveRecord: boolean;
begin
  case FAcao of
    tacIncluir: Result := Inserir();
    tacAlterar: Result := Alterar;
    tacExcluir: Result := Excluir();
  end;
end;

function TFuncionariosDocumentoeRHModel.SetupRecords: boolean;
begin
  Result := False;
  if FQuery.IsEmpty then
    Exit;
  FRecords.id                   :=  FQuery.FieldByName('id').AsInteger;
  FRecords.id_funcionario       :=  FQuery.FieldByName('id_funcionario').AsInteger;
  FRecords.num_ctps             :=  FQuery.FieldByName('num_ctps').AsString;
  FRecords.num_serie_ctps       :=  FQuery.FieldByName('num_serie_ctps').AsString;
  FRecords.uf_ctps              :=  FQuery.FieldByName('uf_ctps').AsString;
  FRecords.num_pis              :=  FQuery.FieldByName('num_pis').AsString;
  FRecords.num_reservista       :=  FQuery.FieldByName('num_reservista').AsString;
  FRecords.num_titulo_eleitoral :=  FQuery.FieldByName('num_titulo_eleitoral').AsString;
  FRecords.num_zona_eleitoral   :=  FQuery.FieldByName('num_zona_eleitoral').AsString;
  FRecords.num_secao_eleitoral  :=  FQuery.FieldByName('num_secao_eleitoral').AsString;
  FRecords.createdAt            :=  FQuery.FieldByName('createdAt').AsDateTime;
  FRecords.updatedAt            :=  FQuery.FieldByName('updatedAt').AsDateTime;
  Result := True;
end;

end.
