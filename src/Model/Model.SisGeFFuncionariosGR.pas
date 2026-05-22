unit Model.SisGeFFuncionariosGR;

interface

uses Common.ENum, FireDAC.Comp.Client, service.connectionMySQL, service.sistem, System.SysUtils;

type
  TGR = record
    id                : integer;
    id_funcionario    : integer;
    dat_consulta      : TDate;
    dat_validade      : TDate;
    cod_consulta      : string[20];
    nom_empresa       : string[70];
    createdAt         : TDateTime;
    updatedAt         : TDateTime;
  end;

  type TFuncionariosGRModel = class
    private
        FAcao     : TAcao;
        FMensagem : string;
        FConn     : TConnectionMySQL;
        FQuery    : TFDQuery;
        FRecord   : TGR;

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
        property Records  : TGR       read  FRecord   write FRecord;
      protected
  end;
  const
      TABLENAME = 'crm_funcionarios_gr';
      SQLINSERT = 'insert into ' + TABLENAME +
                  '(id, id_funcionario, dat_consulta, dat_validade, cod_consulta, nom_empresa, createdAt, updatedAt) ' +
                  'VALUES '  +
                  '(:id_gr, :id_funcionario, :dat_consulta, :dat_validade, :nom_empresa, :cod_consulta, :createdAt, :updatedAt)';
      SQLUPDATE = 'update ' + TABLENAME +
                  ' set ' +
                  'id_funcionario = :id_funcionario, dat_consulta = :dat_consulta, dat_validade = :dat_validade, ' +
                  'nom_empresa = :nom_empresa, cod_consulta = :cod_consulta, createdAt = :createdAt, updatedAt = :updatedAt  ' +
                  'where ' +
                  'id = :id';
      SQLSELECT = 'select id_gr, id_funcionario, dat_consulta, dat_validade, cod_consulta, nom_empresa, createdAt, updatedAt ' +
                  'from ' +
                  TABLENAME;
      SQLDELETE = 'delete from ' + TABLENAME + ' where id_funcionario = :id_funcionario';

implementation



{ TFuncionariosGRModel }

function TFuncionariosGRModel.Alterar: boolean;
begin
  Result := False;
  try
    FQuery := FConn.GetQuery;
    FRecord.updatedAt := Now();
    FQuery.ExecSQL(SQLUPDATE,
                  [FRecord.id_funcionario, FRecord.dat_consulta, FRecord.dat_validade, FRecord.nom_empresa, FRecord.cod_consulta,
                   FRecord.createdAt, FRecord.updatedAt, FRecord.id]);
    if FQuery.RowsAffected = 0 then
      Exit;
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

constructor TFuncionariosGRModel.Create;
begin
  FConn := TConnectionMySQL.Create;
end;

function TFuncionariosGRModel.CustomSearch(aParams: array of string): boolean;
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

function TFuncionariosGRModel.Excluir: boolean;
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

function TFuncionariosGRModel.Inserir: boolean;
begin
  try
    FQuery := FConn.GetQuery();
    FRecord.createdAt := Now();
    FRecord.updatedAt := Now();
    FQuery.ExecSQL(SQLINSERT,
                  [FRecord.id, FRecord.id_funcionario, FRecord.dat_consulta, FRecord.dat_validade, FRecord.cod_consulta,
                  FRecord.nom_empresa, FRecord.createdAt, FRecord.updatedAt]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TFuncionariosGRModel.SaveRecord: boolean;
begin
  case FAcao of
    tacIncluir: Result := Inserir();
    tacAlterar: Result := Alterar;
    tacExcluir: Result := Excluir();
  end;
end;

function TFuncionariosGRModel.SetupRecords: boolean;
begin
  Result := False;
  if FQuery.IsEmpty then
    Exit;
  FRecord.id              :=  FQuery.FieldByName('id').AsInteger;
  FRecord.id_funcionario  :=  FQuery.FieldByName('id_funcionario').AsInteger;
  FRecord.dat_consulta    :=  FQuery.FieldByName('dat_consulta').AsDateTime;
  FRecord.dat_validade    :=  FQuery.FieldByName('dat_validade').AsDateTime;
  FRecord.cod_consulta    :=  FQuery.FieldByName('cod_consulta').AsString;
  FRecord.nom_empresa     :=  FQuery.FieldByName('nom_empresa').AsString;
  FRecord.createdAt       :=  FQuery.FieldByName('createdAt').AsDateTime;
  FRecord.updatedAt       :=  FQuery.FieldByName('updatedAt').AsDateTime;
  Result := True;
end;

end.
