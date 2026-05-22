unit Model.SisGeFFuncionariosEmpresas;

interface

  uses Common.ENum, FireDAC.Comp.Client, service.connectionMySQL, service.sistem, System.SysUtils;

  type
    TEmpresas = record
      id                : integer;
      id_funcionario    : integer;
      nom_razao_social  : string[70];
      nom_fantasia      : string[70];
      num_cnpj          : string[20];
      num_ie            : string[20];
      cod_crt           : integer;
      createdAt         : TDateTime;
      updatedAt         : TDateTime;
    end;

  type
    TFuncionariosEmpresasModel = class
    private
        FAcao     : TAcao;
        FMensagem : string;
        FConn     : TConnectionMySQL;
        FQuery    : TFDQuery;
        FRecord   : TEmpresas;

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
        property Records  : TEmpresas read  FRecord   write FRecord;

    end;
    const
      TABLENAME = 'crm_funcionarios_empresa';
      SQLINSERT = 'insert into ' + TABLENAME +
                  '(id, id_funcionario, nom_razao_social, nom_fantasia, num_cnpj, num_ie, cod_crt, createdAt, updatedAt) ' +
                  'VALUES '  +
                  '(:id, :id_funcionario, :nom_razao_social, :nom_fantasia, :num_cnpj, :num_ie, :cod_crt, :createdAt, :updatedAt)';
      SQLUPDATE = 'update ' + TABLENAME +
                  ' set ' +
                  'id_funcionario = :id_funcionario, nom_razao_social = :nom_razao_social, nom_fantasia = :nom_fantasia, ' +
                  'num_cnpj = :num_cnpj, num_ie = :num_ie, cod_crt = :cod_crt, createdAt = :createdAt, updatedAt = :updatedAt ' +
                  'where ' +
                  'id = :id';
      SQLSELECT = 'id, id_funcionario, nom_razao_social, nom_fantasia, num_cnpj, num_ie, cod_crt, createdAt, updatedAt ' +
                  'from ' +
                  TABLENAME;
      SQLDELETE = 'delete from ' + TABLENAME + ' where id_funcionario = :id_funcionario';

implementation

{ TFuncionariosEmpresasModel }

function TFuncionariosEmpresasModel.Alterar: boolean;
begin
  try
  FQuery := FConn.GetQuery;
    FQuery.ExecSQL(SQLUPDATE,
                  [FRecord.id_funcionario, FRecord.nom_razao_social, FRecord.nom_fantasia, FRecord.num_cnpj, FRecord.num_ie,
                  FRecord.cod_crt, FRecord.createdAt, FRecord.updatedAt, FRecord.id]);
    if FQuery.RowsAffected = 0 then
      Exit;
    Result := True;
  finally
    FQuery.Connection.Close;
  end;

end;

constructor TFuncionariosEmpresasModel.Create;
begin
  FConn := TConnectionMySQL.Create;
end;

function TFuncionariosEmpresasModel.CustomSearch(aParams: array of string): boolean;
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

function TFuncionariosEmpresasModel.Excluir: boolean;
begin
  try
    FQuery := FConn.GetQuery;
    FQuery.ExecSQL(SQLDELETE,
                  [FRecord.id]);
    if FQuery.RowsAffected = 0 then
      Exit;
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TFuncionariosEmpresasModel.Inserir: boolean;
begin
  Result := False;
  try
    FQuery := FConn.GetQuery();
    FQuery.ExecSQL(SQLINSERT,
                  [FRecord.id, FRecord.id_funcionario, FRecord.nom_razao_social, FRecord.nom_fantasia, FRecord.num_cnpj,
                  FRecord.num_ie, FRecord.cod_crt, FRecord.createdAt, FRecord.updatedAt]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TFuncionariosEmpresasModel.SaveRecord: boolean;
begin
  case FAcao of
    tacIncluir  : Result := Inserir();
    tacAlterar  : Result := Alterar();
    tacExcluir  : Result := Excluir();
  end;
end;

function TFuncionariosEmpresasModel.SetupRecords: boolean;
begin
  Result := False;
  if FQuery.IsEmpty then
    Exit;
  FRecord.id                :=  FQuery.FieldByName('id').AsInteger;
  FRecord.id_funcionario    :=  FQuery.FieldByName('id_funcionario').AsInteger;
  FRecord.nom_razao_social  :=  FQuery.FieldByName('nom_razao_social').AsString;
  FRecord.nom_fantasia      :=  FQuery.FieldByName('nom_fantasia').AsString;
  FRecord.num_cnpj          :=  FQuery.FieldByName('num_cnpj').AsString;
  FRecord.num_ie            :=  FQuery.FieldByName('num_ie').AsString;
  FRecord.cod_crt           :=  FQuery.FieldByName('cod_crt').AsInteger;
  FRecord.createdAt         :=  FQuery.FieldByName('createdAt').AsDateTime;
  FRecord.updatedAt         :=  FQuery.FieldByName('updatedAt').AsString;
  Result := True;
end;

end.
