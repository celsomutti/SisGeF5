unit Model.SisGefContratadosRH;

interface

uses Common.ENum, FireDAC.Comp.Client, service.connectionMySQL, service.sistem;

type
  TRH = record
    id_rh           : integer;
    id_contratados  : integer;
    val_salario     : double;
    dat_admissao    : TDate;
    dat_demissao    : TDate;
    id_departamento : integer;
    id_funcao       : integer;
  end;

  type TContratadosRHModel = class
    private
        FAcao     : TAcao;
        FMensagem : string;
        FConn     : TConnectionMySQL;
        FQuery    : TFDQuery;

        function  Inserir ()  : boolean;
        function  Alterar ()  : boolean;
        function  Excluir ()  : boolean;

      public
        ARecord   : TRH;

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
      TABLENAME = 'crm_contratados_rh';
      SQLINSERT = 'insert into ' + TABLENAME +
                  '(id_rh, id_contratados, val_salario, dat_admissao, dat_demissao, id_departamento, id_funcao) ' +
                  'VALUES '  +
                  '(:id_rh, :id_contratados, :val_salario, :dat_admissao, :dat_demissao, :id_departamento, :id_funcao)';
      SQLUPDATE = 'update ' + TABLENAME +
                  ' set ' +
                  'id_contratados = :id_contratados, val_salario = :val_salario, dat_admissao = :dat_admissao, ' +
                  'dat_demissao = :dat_demissao, id_departamento = :id_departamento, id_funcao = :id_funcao, ' +
                  'where ' +
                  'id_rh = :id_rh';
      SQLSELECT = 'id_rh, id_contratados, val_salario, dat_admissao, dat_demissao, id_departamento, id_funcao ' +
                  'from ' +
                  TABLENAME;
      SQLDELETE = 'select from ' + TABLENAME + ' where id_contratados = :id_contratados';


implementation

{ TContratadosRHModel }

function TContratadosRHModel.Alterar: boolean;
begin
  try
  FQuery := FConn.GetQuery;
    FQuery.ExecSQL(SQLUPDATE,
                  [ARecord.id_contratados, ARecord.val_salario, ARecord.dat_admissao, ARecord.dat_demissao,
                  ARecord.id_departamento, ARecord.id_funcao, ARecord.id_rh]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

constructor TContratadosRHModel.Create;
begin
  FConn := TConnectionMySQL.Create();
end;

function TContratadosRHModel.CustomSearch(aParams: array of string): boolean;
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

function TContratadosRHModel.Excluir: boolean;
begin
  try
    FQuery := FConn.GetQuery;
    FQuery.ExecSQL(SQLDELETE,
                  [ARecord.id_contratados]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TContratadosRHModel.GetNextID(sIdName: string): Integer;
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

function TContratadosRHModel.Inserir: boolean;
begin
  Result := False;
  try
    ARecord.id_rh := 0;
    FQuery := FConn.GetQuery();
    FQuery.ExecSQL(SQLINSERT,
                  [ARecord.id_rh, ARecord.id_contratados, ARecord.val_salario, ARecord.dat_admissao, ARecord.dat_demissao,
                  ARecord.id_departamento, ARecord.id_funcao]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TContratadosRHModel.SaveRecord: boolean;
begin
  case FAcao of
    tacIncluir  : Result  :=  Inserir();
    tacAlterar  : Result  :=  Alterar();
    tacExcluir  : Result  :=  Excluir();
  end;
end;

function TContratadosRHModel.Search(aParams: array of string): boolean;
begin
  Result := False;
  FQuery := FConn.GetQuery;
  FQuery.SQL.Add(SQLSELECT);
  if Length(aParams) >= 2 then
  begin
    FQuery.SQL.Add('where');
    if aParams[0] = 'ID' then
      FQuery.SQL.Add('id_rh = ' + aParams[1])
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

function TContratadosRHModel.SetupRecords: boolean;
begin
  Result := False;
  if FQuery.IsEmpty then
    Exit;
  ARecord.id_rh           :=  FQuery.FieldByName('id_rh').AsInteger;
  ARecord.id_contratados  :=  FQuery.FieldByName('id_contratados').AsInteger;
  ARecord.val_salario     :=  FQuery.FieldByName('val_salario').AsFloat;
  ARecord.dat_admissao    :=  FQuery.FieldByName('dat_admissao').AsDateTime;
  Arecord.dat_demissao    :=  FQuery.FieldByName('dat_demissao').AsDateTime;
  ARecord.id_departamento :=  FQuery.FieldByName('id_departamento').AsInteger;
  ARecord.id_funcao       :=  FQuery.FieldByName('id_funcao').AsInteger;
  Result := True;
end;

end.
