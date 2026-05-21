unit Model.SisGeFFuncionarios;

interface

uses Common.ENum, FireDAC.Comp.Client, service.connectionMySQL, service.sistem;
type
  TFuncionarios = record
    id_funcionario : integer;
    nom_funcionario : string[70];
    nom_alias : string[70];
    num_cpf : string[20];
    num_rg: string[20];
    dat_emissao_rg : TDate;
    nom_emissor_rg: string[20];
    uf_emissor_rg: string[2];
    dat_nascimento : TDate;
    des_nacionalidade: string[70];
    des_naturalidade: string[70];
    uf_naturalidade: string[2];
    nom_pai: string[70];
    nom_mae: string[70];
    num_cnh: string[15];
    num_registro_cnh: string[15];
    des_categoria_cnh: string[2];
    dat_validade_cnh: TDate;
    dat_emissao_cnh : TDate;
    uf_cnh : string[2];
    dat_primeira_cnh: TDate;
    cod_seguranca_cnh: string[30];
    cod_status: integer;
    des_obs: Text;
    id_departamento: integer;
    id_funcao: integer;
    dat_admissao: TDate;
    dat_demissao: TDate;
    createdAt: TDateTime;
    updatedAt: TDateTime;
  end;

  type
    TFuncionariosModel = class
      private
        FAcao: TAcao;
        FQuery: TFDQuery;
        FMensagem: string;
        FConn : TConnectionMySQL;
        FRecord : TFuncionarios;

        function Inserir  ()  : boolean;
        function Alterar  ()  : boolean;
        function Excluir  ()  : boolean;

      public

        Constructor Create();
        function    CustomSearch(aParams: array of string): boolean;
        function    SaveRecord  ()                        : boolean;
        function    SetupRecords()                        : boolean;


        property Acao     : TAcao         read  FAcao     write FAcao;
        property Mensagem : string        read  FMensagem write FMensagem;
        property Query    : TFDQuery      read  FQuery    write FQuery;
        property Records  : TFuncionarios read  FRecord   write FRecord;
    end;

    const
      TABLENAME = 'crm_funcionarios';
      SQLSELECT = 'select id_funcionario, nom_funcionario, nom_alias, num_cpf, num_rg, dat_emissao_rg, ' +
                  'nom_emissor_rg, uf_emissor_rg, dat_nascimento, des_nacionalidade, des_naturalidade, uf_naturalidade, ' +
                  'nom_pai, nom_mae, num_cnh, num_registro_cnh, des_categoria_cnh, dat_validade_cnh, dat_emissao_cnh, ' +
                  'uf_cnh, dat_primeira_cnh, cod_seguranca_cnh, cod_status, des_obs, id_departamento, id_funcao, dat_admissao,' +
                  ' dat_demissao, createdAt, updatedAt ' +
                  'from ' + TABLENAME;
      SQLINSERT = 'insert into ' + TABLENAME + ' (id_funcionario, nom_funcionario, nom_alias, num_cpf, num_rg, dat_emissao_rg, ' +
                  'nom_emissor_rg, uf_emissor_rg, dat_nascimento, des_nacionalidade, des_naturalidade, uf_naturalidade, nom_pai, ' +
                  ' nom_mae, num_cnh, num_registro_cnh, des_categoria_cnh, dat_validade_cnh, dat_emissao_cnh, uf_cnh, ' +
                  'dat_primeira_cnh, cod_seguranca_cnh, cod_status, des_obs, id_departamento, id_funcao, dat_admissao, ' +
                  'dat_demissao, createdAt, updatedAt) ' +
                  'values  '  +
                  '(:id_funcionario, :nom_funcionario, :nom_alias, :num_cpf, :num_rg, :dat_emissao_rg, ' +
                  ':nom_emissor_rg, :uf_emissor_rg, :dat_nascimento, :des_nacionalidade, :des_naturalidade, :uf_naturalidade, :nom_pai, ' +
                  ':nom_mae, :num_cnh, :num_registro_cnh, :des_categoria_cnh, :dat_validade_cnh, :dat_emissao_cnh, :uf_cnh, ' +
                  ':dat_primeira_cnh, :cod_seguranca_cnh, :cod_status, :des_obs, :id_departamento, :id_funcao, :dat_admissao, ' +
                  ':dat_demissao, :createdAt, :updatedAt)';
      SQLUPDATE = 'update ' + TABLENAME +
                  'set ' +
                  'nom_funcionario = :nom_funcionario, nom_alias = :nom_alias, num_cpf = :num_cpf, num_rg = :num_rg, ' +
                  'dat_emissao_rg = :dat_emissao_rg, nom_emissor_rg = :nom_emissor_rg, uf_emissor_rg = :uf_emissor_rg,' +
                  'dat_nascimento = :dat_nascimento, des_nacionalidade = :des_nacionalidade, des_naturalidade = :des_naturalidade,'+
                  'uf_naturalidade = :uf_naturalidade, nom_pai = :nom_pai, nom_mae = :nom_mae, num_cnh = :num_cnh, ' +
                  'num_registro_cnh = :num_registro_cnh, des_categoria_cnh = :des_categoria_cnh, ' +
                  'dat_validade_cnh = :dat_validade_cnh, dat_emissao_cnh = :dat_emissao_cnh, uf_cnh = :uf_cnh, ' +
                  'dat_primeira_cnh = :dat_primeira_cnh, cod_seguranca_cnh = :cod_seguranca_cnh, cod_status = :cod_status, ' +
                  'des_obs = :des_obs, id_departamento = :id_departamento, id_funcao = :id_funcao, dat_admissao = :dat_admissao, ' +
                  'dat_demissao = :dat_demissao, createdAt = :createdAt, updatedAt = :updatedAt ' +
                  'where id_funcionario = :id_funcionario';
      SQLDELETE = 'delete from ' + TABLENAME + 'where id_funcionario = :id_funcionario';


implementation

{ TFuncionariosModel }

function TFuncionariosModel.Alterar: boolean;
begin
  Result := False;
  try
    FQuery := FConn.GetQuery;
    FQuery.ExecSQL(SQLUPDATE,
                  [FRecord.nom_funcionario, FRecord.nom_alias, FRecord.num_cpf, FRecord.num_rg,
                  FRecord.dat_emissao_rg, FRecord.nom_emissor_rg, FRecord.uf_emissor_rg, FRecord.dat_nascimento,
                  FRecord.des_nacionalidade, FRecord.des_naturalidade, FRecord.uf_naturalidade, FRecord.nom_pai, FRecord.nom_mae,
                  FRecord.num_cnh, FRecord.num_registro_cnh, FRecord.des_categoria_cnh, FRecord.dat_validade_cnh,
                  FRecord.dat_emissao_cnh, FRecord.uf_cnh, FRecord.dat_primeira_cnh, FRecord.cod_seguranca_cnh,
                  FRecord.cod_status, FRecord.des_obs, FRecord.id_departamento, FRecord.id_funcao, FRecord.dat_admissao,
                  FRecord.dat_demissao, FRecord.createdAt, FRecord.updatedAt,FRecord.id_funcionario]);
    if FQuery.RowsAffected = 0 then
      Exit;
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

constructor TFuncionariosModel.Create;
begin
  FConn := TConnectionMySQL.Create;
end;

function TFuncionariosModel.CustomSearch(aParams: array of string): boolean;
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

function TFuncionariosModel.Excluir: boolean;
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

function TFuncionariosModel.Inserir: boolean;
begin
  Result := False;
  try
    FQuery := FConn.GetQuery;
    FQuery.ExecSQL(SQLINSERT,
                  [FRecord.id_funcionario, FRecord.nom_funcionario, FRecord.nom_alias, FRecord.num_cpf, FRecord.num_rg,
                  FRecord.dat_emissao_rg, FRecord.nom_emissor_rg, FRecord.uf_emissor_rg, FRecord.dat_nascimento,
                  FRecord.des_nacionalidade, FRecord.des_naturalidade, FRecord.uf_naturalidade, FRecord.nom_pai, FRecord.nom_mae,
                  FRecord.num_cnh, FRecord.num_registro_cnh, FRecord.des_categoria_cnh, FRecord.dat_validade_cnh,
                  FRecord.dat_emissao_cnh, FRecord.uf_cnh, FRecord.dat_primeira_cnh, FRecord.cod_seguranca_cnh,
                  FRecord.cod_status, FRecord.des_obs, FRecord.id_departamento, FRecord.id_funcao, FRecord.dat_admissao,
                  FRecord.dat_demissao, FRecord.createdAt, FRecord.updatedAt]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TFuncionariosModel.SaveRecord: boolean;
begin
  case FAcao of
    tacIncluir: Result := Inserir();
    tacAlterar: Result := Alterar;
    tacExcluir: Result := Excluir();
  end;
end;

function TFuncionariosModel.SetupRecords: boolean;
begin
  Result := False;
  if FQuery.IsEmpty then
    Exit;
  FRecord.id_funcionario := FQuery.FieldByName('id_funcionario').AsInteger;
  FRecord.nom_funcionario := FQuery.FieldByName('nom_funcionario').AsString;
  FRecord.nom_alias := FQuery.FieldByName('nom_alias').AsString;
  FRecord.num_cpf := FQuery.FieldByName('num_cpf').AsString;
  FRecord.num_rg := FQuery.FieldByName('num_rg').AsString;
  FRecord.dat_emissao_rg := FQuery.FieldByName('dat_emissao_rg').AsDateTime;
  FRecord.nom_emissor_rg := FQuery.FieldByName('nom_emissor_rg').AsString;
  FRecord.uf_emissor_rg := FQuery.FieldByName('uf_emissor_rg').AsString;
  FRecord.dat_nascimento := FQuery.FieldByName('dat_nascimento').AsDateTime;
  FRecord.des_nacionalidade := FQuery.FieldByName('des_nacionalidade').AsString;
  FRecord.des_naturalidade := FQuery.FieldByName('des_naturalidade').AsString;
  FRecord.uf_naturalidade := FQuery.FieldByName('uf_naturalidade').AsString;
  FRecord.nom_pai := FQuery.FieldByName('nom_pai').AsString;
  FRecord.nom_mae := FQuery.FieldByName('nom_mae').AsString;
  FRecord.num_cnh := FQuery.FieldByName('num_cnh').AsString;
  FRecord.num_registro_cnh := FQuery.FieldByName('num_registro_cnh').AsString;
  FRecord.des_categoria_cnh := FQuery.FieldByName('des_categoria_cnh').AsString;
  FRecord.dat_validade_cnh := FQuery.FieldByName('dat_validade_cnh').AsDateTime;
  FRecord.dat_emissao_cnh := FQuery.FieldByName('dat_emissao_cnh').AsDateTime;
  FRecord.uf_cnh := FQuery.FieldByName('uf_cnh').AsString;
  FRecord.dat_primeira_cnh := FQuery.FieldByName('dat_primeira_cnh').AsDateTime;
  FRecord.cod_seguranca_cnh := FQuery.FieldByName('cod_seguranca_cnh').AsString;
  FRecord.cod_status := FQuery.FieldByName('cod_status').AsInteger;
  FRecord.des_obs := FQuery.FieldByName('des_obs').AsString;
  FRecord.id_departamento := FQuery.FieldByName('id_departamento').AsInteger;
  FRecord.id_funcao := FQuery.FieldByName('id_funcao').AsInteger;
  FRecord.dat_admissao := FQuery.FieldByName('dat_admissao').AsDateTime;
  FRecord.dat_demissao := FQuery.FieldByName('dat_demissao').AsDateTime;
  FRecord.createdAt := FQuery.FieldByName('createdAt').AsDateTime;
  FRecord.updatedAt := FQuery.FieldByName('updatedAt').AsDateTime;
  Result := True;
end;

end.
