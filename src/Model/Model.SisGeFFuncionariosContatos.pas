unit Model.SisGeFFuncionariosContatos;

interface
  uses Common.ENum, FireDAC.Comp.Client, service.connectionMySQL, service.sistem;

type
  TContatos = record
    seq_contato     : integer;
    id_funcionario  : integer;
    des_contato     : string[30];
    num_telefone    : string[15];
    des_email       : string[128];
    createdAt       : TDateTime;
    updatedAt       : TDateTime;
  end;

  type TFuncionariosContatosModel = class
    private
        FAcao     : TAcao;
        FMensagem : string;
        FConn     : TConnectionMySQL;
        FQuery    : TFDQuery;
        FRecord   : TContatos;

        function Inserir  ()  : boolean;
        function Alterar  ()  : boolean;
        function Excluir  ()  : boolean;

      public
        Constructor Create();
        function    CustomSearch(aParams: array of string): boolean;
        function    SaveRecord  ()                        : boolean;
        function    SetupRecords()                        : boolean;


        property Acao     : TAcao     read  FAcao     write FAcao;
        property Mensagem : string    read  FMensagem write FMensagem;
        property Query    : TFDQuery  read  FQuery    write FQuery;
        property Records  : TContatos read  FRecord   write FRecord;
      protected
  end;
  const
      TABLENAME = 'crm_funcionarios_contatos';
      SQLINSERT = 'insert into ' + TABLENAME +
                  '(seq_contato, id_funcionario, des_contato, num_telefone, des_email, createdAt, updatedAt) ' +
                  'VALUES '  +
                  '(:seq_contato, :id_funcionario, :des_contato, :num_telefone, :des_email, :createdAt, :updatedAt)';
      SQLUPDATE = 'update ' + TABLENAME +
                  ' set ' +
                  'id_contratados = :id_contratados, des_contato = :des_contato, num_telefone = :num_telefone, ' +
                  'des_email  = :des_email, createdAt = :createdAt, updatedAt = :updatedAt ' +
                  'where ' +
                  'seq_contato = :seq_contato';
      SQLSELECT = 'select seq_contato, id_funcionario, des_contato, num_telefone, des_email, createdAt, updatedAt ' +
                  'from ' +
                  TABLENAME;
      SQLDELETE = 'delete from ' + TABLENAME + ' where id_funcionario = :id_funcionario';


implementation

{ TFuncionariosContatosModel }

function TFuncionariosContatosModel.Alterar: boolean;
begin
  try
  FQuery := FConn.GetQuery;
    FQuery.ExecSQL(SQLUPDATE,
                  [FRecord.id_funcionario, FRecord.des_contato, FRecord.num_telefone,
                  FRecord.des_email, FRecord.createdAt, FRecord.updatedAt, FRecord.seq_contato]);
    if FQuery.RowsAffected = 0 then
      Exit;
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

constructor TFuncionariosContatosModel.Create;
begin
  FConn := TConnectionMySQL.Create();
end;

function TFuncionariosContatosModel.CustomSearch(aParams: array of string): boolean;
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
  if aParams[1] = 'TABLE' then
    sSource := TABLENAME
  else
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

function TFuncionariosContatosModel.Excluir: boolean;
begin
  try
    FQuery := FConn.GetQuery;
    FQuery.ExecSQL(SQLDELETE,
                  [FRecord.id_funcionario]);
    if FQuery.RowsAffected = 0 then
      Exit;
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TFuncionariosContatosModel.Inserir: boolean;
begin
  Result := False;
  try
    FQuery := FConn.GetQuery();
    FQuery.ExecSQL(SQLINSERT,
                  [FRecord.seq_contato, FRecord.id_funcionario, FRecord.des_contato, FRecord.num_telefone,
                  FRecord.des_email, FRecord.createdAt, FRecord.updatedAt]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;

end;

function TFuncionariosContatosModel.SaveRecord: boolean;
begin
  case FAcao of
    tacIncluir  : Result := Inserir();
    tacAlterar  : Result := Alterar();
    tacExcluir  : Result := Excluir();
  end;
end;

function TFuncionariosContatosModel.SetupRecords: boolean;
begin
Result := False;
  if FQuery.IsEmpty then
    Exit;
  FRecord.seq_contato     :=  FQuery.FieldByName('seq_contato').AsInteger;
  FRecord.id_funcionario  :=  FQuery.FieldByName('id_funcionario').AsInteger;
  FRecord.des_contato     :=  FQuery.FieldByName('des_contato').AsString;
  FRecord.num_telefone    :=  FQuery.FieldByName('num_telefone').AsString;
  FRecord.des_email       :=  FQuery.FieldByName('des_email').AsString;
  FRecord.createdAt       :=  FQuery.FieldByName('createdAt').AsDateTime;
  FRecord.updatedAt       :=  FQuery.FieldByName('updatedAt').AsString;
  Result := True;
end;

end.
