unit Model.SisGeFCadastroFuncionarios;

interface

  uses Common.ENum, FireDAC.Comp.Client, service.connectionMySQL, service.sistem, System.SysUtils;

  type
    TFuncionarios = record
      id_funcionario : integer;
      nom_funcionario : String[70];
      nom_alias : string[70];
      cod_tipo_pessoa: integer;
      num_cpf: string[20];
      num_rg: string[20];
      dat_emissao_rg: TDate;
      nom_emissor_rg: string[20];
      uf_emissor_rg: string[2];
      dat_nascimento: TDate;
      des_nacionalidade: string[70];
      des_naturalidade: string[70];
      uf_naturalidade: string[2];
      nom_pai: string[70];
      nom_mae: string[70];
      num_cnh: string[15];
      num_registro_cnh: string[15];
      des_categoria_cnh: string[2];
      dat_validade_cnh: TDate;
      dat_emissao_cnh: TDate;
      uf_cnh: string[2];
      dat_primeira_cnh: TDate;
      cod_seguranca_cnh: string[30];
      cod_status: integer;
      des_obs: string;
      id_departamento: integer;
      id_funcao: integer;
      dat_admissao: TDate;
      val_remuneracao: Single;
      dat_demissao: TDate;
      createdAt: TDateTime;
      updatedAt: TDateTime;
    end;
  type
    TFuncionariosModel = class
      private
        FAcao     : TAcao;
        FMensagem : string;
        FConn     : TConnectionMySQL;
        FQuery    : TFDQuery;

        function Inserir  ()  : boolean;
        function Alterar   ()  : boolean;

      public
        ARecord   : TFuncionarios;

        Constructor Create();
        function    GetNextID   (sIdName: string)         : Integer;
        function    SaveRecord  ()                        : boolean;
        function    SetupRecord ()                        : boolean;
        function    CustomSearch(aParams: array of string): boolean;

        property Query    : TFDQuery  read  Fquery    write FQuery;
        property Acao     : TAcao     read  FAcao     write FAcao;
        property Mensagem : string    read  FMensagem write FMensagem;

      protected
    end;
    const
      TABLENAME = 'crm_funcionarios';
      VIEWNAME  = 'view_pesquisafuncionarios_v2';
      SQLINSERT = 'insert into ' + TABLENAME +
                  '(id_funcionario, nom_funcionario, nom_alias, cod_tipo_pessoa, num_cpf, num_rg, dat_emissao_rg, nom_emissor_rg, uf_emissor_rg, ' +
                  'dat_nascimento, des_nacionalidade, des_naturalidade, uf_naturalidade, nom_pai, nom_mae, num_cnh, num_registro_cnh, ' +
                  'des_categoria_cnh, dat_validade_cnh, dat_emissao_cnh, uf_cnh, dat_primeira_cnh, cod_seguranca_cnh, cod_status, ' +
                  'des_obs, id_departamento, id_funcao, dat_admissao, val_remuneracao, dat_demissao) ' +
                  'values ' +
                  '(:id_funcionario, :nom_funcionario, :nom_alias, :cod_tipo_pessoa, :num_cpf, :num_rg, :dat_emissao_rg, :nom_emissor_rg, :uf_emissor_rg, ' +
                  ':dat_nascimento, :des_nacionalidade, :des_naturalidade, :uf_naturalidade, :nom_pai, :nom_mae, :num_cnh, :num_registro_cnh, ' +
                  ':des_categoria_cnh, :dat_validade_cnh, :dat_emissao_cnh, :uf_cnh, :dat_primeira_cnh, :cod_seguranca_cnh, :cod_status, ' +
                  ':des_obs, :id_departamento, :id_funcao, :dat_admissao, :val_remuneracao, :dat_demissao)';
      SQLUPDATE = 'update ' + TABLENAME +
                  ' set ' +
                  'nom_funcionario = :nom_funcionario, nom_alias = :nom_alias, cod_tipo_pessoa = :cod_tipo_pessoa, num_cpf = :num_cpf, num_rg = :num_rg, ' +
                  'dat_emissao_rg = :dat_emissao_rg, nom_emissor_rg = :nom_emissor_rg, uf_emissor_rg = :uf_emissor_rg, dat_nascimento = :dat_nascimento, ' +
                  'des_nacionalidade = :des_nacionalidade, des_naturalidade = :des_naturalidade, uf_naturalidade = :uf_naturalidade, nom_pai = :nom_pai, ' +
                  'nom_mae = :nom_mae, num_cnh = :num_cnh, num_registro_cnh = :num_registro_cnh, des_categoria_cnh = :des_categoria_cnh, ' +
                  'dat_validade_cnh = :dat_validade_cnh, dat_emissao_cnh = :dat_emissao_cnh, uf_cnh = :uf_cnh, dat_primeira_cnh = :dat_primeira_cnh, ' +
                  'cod_seguranca_cnh = :cod_seguranca_cnh, cod_status = :cod_status, des_obs = :des_obs, id_departamento = :id_departamento, ' +
                  'id_funcao = :id_funcao, dat_admissao = :dat_admissao, val_remuneracao = :val_remuneracao, dat_demissao = :dat_demissao ' +
                  'updatedAt = :updatedAt' +
                  'where ' +
                  'id_funcionario = :id_funcionario';
      SQLSELECT = 'select id_funcionario, nom_funcionario, nom_alias, cod_tipo_pessoa, num_cpf, num_rg, dat_emissao_rg, nom_emissor_rg, uf_emissor_rg, ' +
                  'dat_nascimento, des_nacionalidade, des_naturalidade, uf_naturalidade, nom_pai, nom_mae, num_cnh, num_registro_cnh, des_categoria_cnh, ' +
                  'dat_validade_cnh, dat_emissao_cnh, uf_cnh, dat_primeira_cnh, cod_seguranca_cnh, cod_status, des_obs, id_departamento, id_funcao, ' +
                  'dat_admissao, val_remuneracao, dat_demissao, createdAt, updatedAt ' +
                  'from ' +
                  TABLENAME;

implementation

{ TFuncionariosModel }

function TFuncionariosModel.Alterar: boolean;
begin
  Result := False;
  try
    with ARecord do
    begin
      updatedAt := Now();
      FQuery := FConn.GetQuery;
      FQuery.ExecSQL(SQLUPDATE,
                    [nom_funcionario, nom_alias, cod_tipo_pessoa, num_cpf, num_rg, dat_emissao_rg, nom_emissor_rg, uf_emissor_rg,
                    dat_nascimento, des_nacionalidade, des_naturalidade, uf_naturalidade, nom_pai, nom_mae, num_cnh, num_registro_cnh, des_categoria_cnh,
                    dat_validade_cnh, dat_emissao_cnh, uf_cnh, dat_primeira_cnh, cod_seguranca_cnh, cod_status, des_obs, id_departamento, id_funcao,
                    dat_admissao, val_remuneracao, dat_demissao, updatedAt, id_funcionario]);
    end;
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
  FQuery.SQL.Clear;
  FQuery.SQL.Add('select !colums from !table {if !where } where !where {fi}');
  if aParams[1] = 'VIEW' then
    sSource := VIEWNAME
  else if aParams[1] = 'TABLE' then
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

function TFuncionariosModel.GetNextID(sIdName: string): Integer;
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

function TFuncionariosModel.Inserir: boolean;
begin
  Result := False;
  try
    with ARecord do
    begin
      FQuery := FConn.GetQuery();
      FQuery.ExecSQL(SQLINSERT,
                    [id_funcionario, nom_funcionario, nom_alias, cod_tipo_pessoa, num_cpf, num_rg, dat_emissao_rg, nom_emissor_rg, uf_emissor_rg,
                    dat_nascimento, des_nacionalidade, des_naturalidade, uf_naturalidade, nom_pai, nom_mae, num_cnh, num_registro_cnh, des_categoria_cnh,
                    dat_validade_cnh, dat_emissao_cnh, uf_cnh, dat_primeira_cnh, cod_seguranca_cnh, cod_status, des_obs, id_departamento, id_funcao,
                    dat_admissao, val_remuneracao, dat_demissao]);
    end;
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TFuncionariosModel.SaveRecord: boolean;
begin
  Result := False;
  case FAcao of
    tacIncluir: Result := Inserir;
    tacAlterar: Result := Alterar;
  end;
end;

function TFuncionariosModel.SetupRecord: boolean;
begin
  Result := False;
  if FQuery.IsEmpty then
  begin
    FMensagem := 'Query vazia';
    Exit;
  end;
  with ARecord do
  begin
    id_funcionario          := FQuery.FieldByName('id_funcionario').AsInteger;
    nom_funcionario         := FQuery.FieldByName('nom_funcionario').AsString;
    nom_alias               := FQuery.FieldByName('nom_alias').AsString;
    cod_tipo_pessoa         := FQuery.FieldByName('cod_tipo_pessoa').AsInteger;
    num_cpf                 := FQuery.FieldByName('num_cpf').AsString;
    num_rg                  := FQuery.FieldByName('num_rg').AsString;
    dat_emissao_rg          := FQuery.FieldByName('dat_emissao_rg').AsDateTime;
    dat_emissao_rg          := FQuery.FieldByName('dat_emissao_rg').AsDateTime;
    nom_emissor_rg          := FQuery.FieldByName('nom_emissor_rg').AsString;
    uf_emissor_rg           := FQuery.FieldByName('uf_emissor_rg').AsString;
    dat_nascimento          := FQuery.FieldByName('dat_nascimento').AsDateTime;
    des_nacionalidade       := FQuery.FieldByName('des_nacionalidade').AsString;
    des_naturalidade        := FQuery.FieldByName('des_naturalidade').AsString;
    uf_naturalidade         := FQuery.FieldByName('uf_naturalidade').AsString;
    nom_pai                 := FQuery.FieldByName('nom_pai').AsString;
    nom_mae                 := FQuery.FieldByName('nom_mae').AsString;
    num_cnh                 := FQuery.FieldByName('num_cnh').AsString;
    num_registro_cnh        := FQuery.FieldByName('num_registro_cnh').AsString;
    des_categoria_cnh       := FQuery.FieldByName('des_categoria_cnh').AsString;
    dat_validade_cnh        := FQuery.FieldByName('dat_validade_cnh').AsDateTime;
    dat_emissao_cnh         := FQuery.FieldByName('dat_emissao_cnh').AsDateTime;
    uf_cnh                  := FQuery.FieldByName('uf_cnh').AsString;
    dat_primeira_cnh        := FQuery.FieldByName('dat_primeira_cnh').AsDateTime;
    cod_seguranca_cnh       := FQuery.FieldByName('cod_seguranca_cnh').AsString;
    cod_status              := FQuery.FieldByName('cod_status').AsInteger;
    des_obs                 := FQuery.FieldByName('des_obs').AsString;
    id_departamento         := FQuery.FieldByName('id_departamento').AsInteger;
    id_funcao               := FQuery.FieldByName('id_funcao').AsInteger;
    dat_admissao            := FQuery.FieldByName('dat_admissao').AsDateTime;
    val_remuneracao         := FQuery.FieldByName('val_remuneracao').AsFloat;
    dat_demissao            := FQuery.FieldByName('dat_demissao').AsDateTime;
  end;
  Result := True;
end;

end.
