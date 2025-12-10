unit Model.SisGeFContratadosContatos;

interface

uses Common.ENum, FireDAC.Comp.Client, service.connectionMySQL, service.sistem;

type
  TContatos = record
    seq_contato     : integer;
    id_contratados  : integer;
    des_contato     : string[30];
    num_telefone    : string[20];
    des_email       : string[128];
  end;

  type TContratadosContatosModel = class
    private
        FAcao     : TAcao;
        FMensagem : string;
        FConn     : TConnectionMySQL;
        FQuery    : TFDQuery;

        function Inserir  ()  : boolean;
        function Alterar  ()  : boolean;

      public
        ARecord   : TContatos;

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
      TABLENAME = 'crm_contratados_contatos';
      SQLINSERT = 'insert into ' + TABLENAME +
                  '(seq_contato, id_contratados, des_contato, num_telefone, des_email) ' +
                  'VALUES '  +
                  '(:seq_contato, :id_contratados, :des_contato, :num_telefone, :des_email)';
      SQLUPDATE = 'update ' + TABLENAME +
                  ' set ' +
                  'id_contratados = :id_contratados, des_contato = :des_contato, num_telefone = :num_telefone, ' +
                  'des_email  = :des_email ' +
                  'where ' +
                  'seq_contato = :seq_contato';
      SQLSELECT = 'select seq_contato, id_contratados, des_contato, num_telefone, des_email ' +
                  'from ' +
                  TABLENAME;


implementation

{ TContratadosContatosModel }

function TContratadosContatosModel.Alterar: boolean;
begin
  try
  FQuery := FConn.GetQuery;
    FQuery.ExecSQL(SQLUPDATE,
                  [ARecord.id_contratados, ARecord.des_contato, ARecord.num_telefone,
                  ARecord.des_email, ARecord.seq_contato]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

constructor TContratadosContatosModel.Create;
begin
  FConn := TConnectionMySQL.Create();
end;

function TContratadosContatosModel.CustomSearch(aParams: array of string): boolean;
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

function TContratadosContatosModel.GetNextID(sIdName: string): Integer;
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

function TContratadosContatosModel.Inserir: boolean;
begin
  Result := False;
  try
    ARecord.seq_contato := 0;
    FQuery := FConn.GetQuery();
    FQuery.ExecSQL(SQLINSERT,
                  [ARecord.seq_contato, ARecord.id_contratados, ARecord.des_contato, ARecord.num_telefone,
                  ARecord.des_email]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TContratadosContatosModel.SaveRecord: boolean;
begin
  case FAcao of
    tacIncluir: Result := Inserir();
    tacAlterar: Result := Alterar();
  end;
end;

function TContratadosContatosModel.Search(aParams: array of string): boolean;
begin
  Result := False;
  FQuery := FConn.GetQuery;
  FQuery.SQL.Add(SQLSELECT);
  if Length(aParams) >= 2 then
  begin
    FQuery.SQL.Add('where');
    if aParams[0] = 'ID' then
      FQuery.SQL.Add('seq_contato = ' + aParams[1])
    else if aParams[0] = 'CONTRATADO' then
      FQuery.SQL.Add('id_contradados = ' + aParams[1])
    else if aParams[0] = 'TELEFONE' then
      FQuery.SQL.Add('num_telefone like "%' + aParams[1] + '%"')
    else if aParams[0] = 'EMAIL' then
      FQuery.SQL.Add('des_email like "%' + aParams[1] + '%"')
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

function TContratadosContatosModel.SetupRecords: boolean;
begin
  Result := False;
  if FQuery.IsEmpty then
    Exit;
  ARecord.seq_contato     :=  FQuery.FieldByName('seq_contato').AsInteger;
  ARecord.id_contratados  :=  FQuery.FieldByName('id_contratados').AsInteger;
  ARecord.des_contato     :=  FQuery.FieldByName('des_contato').AsString;
  ARecord.num_telefone    :=  FQuery.FieldByName('num_telefone').AsString;
  ARecord.des_email       :=  FQuery.FieldByName('des_email').AsString;
  Result := True;
end;

end.
