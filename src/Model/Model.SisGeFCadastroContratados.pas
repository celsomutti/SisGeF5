unit Model.SisGeFCadastroContratados;

interface

  uses Common.ENum, FireDAC.Comp.Client, service.connectionMySQL, service.sistem;

  type
    TContratados = record
      id                      : integer;
      cod_erp_contratados     : string[50];
      id_categoria            : integer;
      cod_pessoa              : integer;
      des_tipo_doc            : string[4];
      nom_razao_social        : string[70];
      nom_fantasia_alias      : string[70];
      num_cpf_cnpj            : string[20];
      num_rg_ie               : string[20];
      num_im                  : string[30];
      dat_emissao_rg          : TDateTime;
      nom_emissor_rg          : string[20];
      uf_emissor_rg           : string[2];
      dat_nascimento          : TDateTime;
      des_nacionalidade       : string[70];
      des_naturalidade        : string[70];
      uf_naturalidade         : string[2];
      nom_pai                 : string[70];
      nom_mae                 : string[70];
      cod_crt                 : integer;
      num_cnh                 : string[15];
      num_registro_cnh        : string[15];
      des_categoria_cnh       : string[2];
      dat_validade_cnh        : TDateTime;
      dat_emissao_cnh         : TDateTime;
      uf_cnh                  : string[2];
      dat_primeira_cnh        : TDateTime;
      cod_status              : integer;
      dat_cadastro            : TDateTime;
      des_obs                 : string;
    end;
  type
    TCadastroContratadosModel = class
    private
        FAcao     : TAcao;
        FMensagem : string;
        FConn     : TConnectionMySQL;
        FQuery    : TFDQuery;

        function Inserir  ()  : boolean;
        function Alterar  ()  : boolean;
        function Excluir  ()  : boolean;

      public
        ARecord   : TContratados;

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
      TABLENAME = 'crm_contratados';
      VIEWNAME  = 'view_register_contracted';
      SQLINSERT = 'insert into ' + TABLENAME +
                  '(id, cod_erp_contratados, id_categoria, cod_pessoa, des_tipo_doc, nom_razao_social, ' +
                  'nom_fantasia_alias, num_cpf_cnpj, num_rg_ie, num_im, dat_emissao_rg, nom_emissor_rg, uf_emissor_rg, ' +
                  'dat_nascimento, des_nacionalidade, des_naturalidade, uf_naturalidade, nom_pai, nom_mae, cod_crt, ' +
                  'num_cnh, num_registro_cnh, des_categoria_cnh, dat_validade_cnh, dat_emissao_cnh, uf_cnh, ' +
                  'dat_primeira_cnh, cod_status, dat_cadastro, des_obs) ' +
                  'VALUES '  +
                  '(:id, :cod_erp_contratados, :id_categoria, :cod_pessoa, :des_tipo_doc, :nom_razao_social, ' +
                  ':nom_fantasia_alias, :num_cpf_cnpj, :num_rg_ie, :num_im, :dat_emissao_rg, :nom_emissor_rg, :uf_emissor_rg, ' +
                  ':dat_nascimento, :des_nacionalidade, :des_naturalidade, :uf_naturalidade, :nom_pai, :nom_mae, ' +
                  ':cod_crt, :num_cnh, :num_registro_cnh, :des_categoria_cnh, :dat_validade_cnh, :dat_emissao_cnh, ' +
                  ':uf_cnh, :dat_primeira_cnh, :cod_status, :dat_cadastro, :des_obs)';
      SQLUPDATE = 'update ' + TABLENAME +
                  ' set ' +
                  'cod_erp_contratados = :cod_erp_contratados, id_categoria = :id_categoria, cod_pessoa = :cod_pessoa, ' +
                  'des_tipo_doc = :des_tipo_doc, nom_razao_social = :nom_razao_social, nom_fantasia_alias = :nom_fantasia_alias, ' +
                  'num_cpf_cnpj = :num_cpf_cnpj, num_rg_ie = :num_rg_ie, num_im = :num_im, dat_emissao_rg = :dat_emissao_rg, ' +
                  'nom_emissor_rg = :nom_emissor_rg, uf_emissor_rg = :uf_emissor_rg, dat_nascimento = :dat_nascimento, ' +
                  'des_nacionalidade = :des_nacionalidade, des_naturalidade = :des_naturalidade, ' +
                  'uf_naturalidade = :uf_naturalidade, nom_pai = :nom_pai, nom_mae = :nom_mae, cod_crt = :cod_crt, ' +
                  'num_cnh = :num_cnh, num_registro_cnh = :num_registro_cnh, des_categoria_cnh = :des_categoria_cnh, ' +
                  'dat_validade_cnh = :dat_validade_cnh, dat_emissao_cnh = :dat_emissao_cnh, uf_cnh = :uf_cnh, ' +
                  'dat_primeira_cnh = :dat_primeira_cnh, cod_status = :cod_status, dat_cadastro = :dat_cadastro, ' +
                  'des_obs = :des_obs ' +
                  'where ' +
                  'id = :id';
      SQLSELECT = 'select id, cod_erp_contratados, id_categoria, cod_pessoa, des_tipo_doc, nom_razao_social, ' +
                  'nom_fantasia_alias, num_cpf_cnpj, num_rg_ie, num_im, dat_emissao_rg, nom_emissor_rg, uf_emissor_rg, ' +
                  'dat_nascimento, des_nacionalidade, des_naturalidade, uf_naturalidade, nom_pai, nom_mae, cod_crt, ' +
                  'num_cnh, num_registro_cnh, des_categoria_cnh, dat_validade_cnh, dat_emissao_cnh, uf_cnh, ' +
                  'dat_primeira_cnh, cod_status, dat_cadastro, des_obs ' +
                  'from ';

      SQLDELETE = 'delete from ' + TABLENAME + ' where id = :id';
implementation

{ TCadastroContratadosModel }

function TCadastroContratadosModel.Alterar: boolean;
begin
  Result := False;
  try
    FQuery := FConn.GetQuery;
    FQuery.ExecSQL(SQLUPDATE,
                  [ARecord.cod_erp_contratados, ARecord.id_categoria, ARecord.cod_pessoa, ARecord.des_tipo_doc,
                  ARecord.nom_razao_social, ARecord.nom_fantasia_alias, ARecord.num_cpf_cnpj, ARecord.num_rg_ie,
                  ARecord.num_im, ARecord.dat_emissao_rg, ARecord.nom_emissor_rg, ARecord.uf_emissor_rg, ARecord.dat_nascimento,
                  ARecord.des_nacionalidade, ARecord.des_naturalidade, ARecord.uf_naturalidade, ARecord.nom_pai,
                  ARecord.nom_mae, ARecord.cod_crt, ARecord.num_cnh, ARecord.num_registro_cnh, ARecord.des_categoria_cnh,
                  ARecord.dat_validade_cnh, ARecord.dat_emissao_cnh, ARecord.uf_cnh, ARecord.dat_primeira_cnh,
                  ARecord.cod_status, ARecord.dat_cadastro, ARecord.des_obs, ARecord.id]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

constructor TCadastroContratadosModel.Create;
begin
  FConn := TConnectionMySQL.Create;
end;

function TCadastroContratadosModel.CustomSearch(aParams: array of string): boolean;
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
    sSource := VIEWNAME;
  if aParams[1] = 'TABLE' then
    sSource := TABLENAME;
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

function TCadastroContratadosModel.Excluir: boolean;
begin
  Result := False;
  try
    FQuery := FConn.GetQuery;
    FQuery.ExecSQL(SQLDELETE, [ARecord.id]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TCadastroContratadosModel.GetNextID(sIdName: string): Integer;
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

function TCadastroContratadosModel.Inserir: boolean;
begin
  Result := False;
  try
    ARecord.id := GetNextID('id');
    FQuery := FConn.GetQuery();
    FQuery.ExecSQL(SQLINSERT,
                  [ARecord.id, ARecord.cod_erp_contratados, ARecord.id_categoria, ARecord.cod_pessoa, ARecord.des_tipo_doc,
                  ARecord.nom_razao_social, ARecord.nom_fantasia_alias, ARecord.num_cpf_cnpj, ARecord.num_rg_ie, ARecord.num_im,
                  ARecord.dat_emissao_rg, ARecord.nom_emissor_rg, ARecord.uf_emissor_rg, ARecord.dat_nascimento,
                  ARecord.des_nacionalidade, ARecord.des_naturalidade, ARecord.uf_naturalidade, ARecord.nom_pai,
                  ARecord.nom_mae, ARecord.cod_crt, ARecord.num_cnh, ARecord.num_registro_cnh, ARecord.des_categoria_cnh,
                  ARecord.dat_validade_cnh, ARecord.dat_emissao_cnh, ARecord.uf_cnh, ARecord.dat_primeira_cnh,
                  ARecord.cod_status, ARecord.dat_cadastro, ARecord.des_obs]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TCadastroContratadosModel.SaveRecord: boolean;
begin
 case FAcao of
    tacIncluir: Result := Inserir();
    tacAlterar: Result := Alterar();
    tacExcluir: REsult := Excluir();
  end;
end;

function TCadastroContratadosModel.Search(aParams: array of string): boolean;
begin
  Result := False;
  FQuery := FConn.GetQuery;
  FQuery.SQL.Add('SELECT * FROM ' + VIEWNAME);
  if Length(aParams) >= 2 then
  begin
    FQuery.SQL.Add('where');
    if aParams[0] = 'ID' then
      FQuery.SQL.Add('id = ' + aParams[1])
    else if aParams[0] = 'NOME' then
      FQuery.SQL.Add('nom_razao_social like "%' + aParams[1] + '%"')
    else if aParams[0] = 'ALIAS' then
      FQuery.SQL.Add('nom_fantasia_alias like "%' + aParams[1] + '%"')
    else if aParams[0] = 'RG' then
      FQuery.SQL.Add('num_rg_ie like "%' + aParams[1] + '%"')
    else if aParams[0] = 'CNPJ' then
      FQuery.SQL.Add('NUM_CPF_CNPJ like "%' + aParams[1] + '%"')
    else if aParams[0] = 'CNH' then
      FQuery.SQL.Add('num_cnh like "%' + aParams[1] + '%"')
    else if aParams[0] = 'REGISTRO' then
      FQuery.SQL.Add('num_registro_cnh like "%' + aParams[1] + '%"')
    else if aParams[0] = 'ALL' then
      FQuery.SQL.Add('TRUE')
    else
      FQuery.SQL.Add(aParams[1])
  end;
  FQuery.Open();
  if FQuery.IsEmpty then
  begin
    FMensagem := 'Nenhum registro encontrado!';
    Exit;
  end;
  Result := True;
end;

function TCadastroContratadosModel.SetupRecords: boolean;
begin
  Result := False;
  if FQuery.IsEmpty then
    Exit;
  ARecord.id                  :=  FQuery.FieldByName('id').AsInteger;
  ARecord.cod_erp_contratados :=  FQuery.FieldByName('cod_erp_contratados').AsString;
  ARecord.id_categoria        :=  FQuery.FieldByName('id_categoria').AsInteger;
  ARecord.cod_pessoa          :=  FQuery.FieldByName('cod_pessoa').AsInteger;
  ARecord.des_tipo_doc        :=  FQuery.FieldByName('des_tipo_doc').AsString;
  ARecord.nom_razao_social    :=  FQuery.FieldByName('nom_razao_social').AsString;
  ARecord.nom_fantasia_alias  :=  FQuery.FieldByName('nom_fantasia_alias').AsString;
  ARecord.num_cpf_cnpj        :=  FQuery.FieldByName('num_cpf_cnpj').AsString;
  ARecord.num_rg_ie           :=  FQuery.FieldByName('num_rg_ie').AsString;
  ARecord.num_im              :=  FQuery.FieldByName('num_im').AsString;
  ARecord.dat_emissao_rg      :=  FQuery.FieldByName('dat_emissao_rg').AsDateTime;
  ARecord.nom_emissor_rg      :=  FQuery.FieldByName('nom_emissor_rg').AsString;
  ARecord.uf_emissor_rg       :=  FQuery.FieldByName('uf_emissor_rg').AsString;
  ARecord.dat_nascimento      :=  FQuery.FieldByName('dat_nascimento').AsDateTime;
  ARecord.des_nacionalidade   :=  FQuery.FieldByName('des_nacionalidade').AsString;
  ARecord.des_naturalidade    :=  FQuery.FieldByName('des_naturalidade').AsString;
  ARecord.uf_naturalidade     :=  FQuery.FieldByName('uf_naturalidade').AsString;
  ARecord.nom_pai             :=  FQuery.FieldByName('nom_pai').AsString;
  ARecord.nom_mae             :=  FQuery.FieldByName('nom_mae').AsString;
  ARecord.cod_crt             :=  FQuery.FieldByName('cod_crt').AsInteger;
  ARecord.num_cnh             :=  FQuery.FieldByName('num_cnh').AsString;
  ARecord.num_registro_cnh    :=  FQuery.FieldByName('num_registro_cnh').AsString;
  ARecord.des_categoria_cnh   :=  FQuery.FieldByName('des_categoria_cnh').AsString;
  ARecord.dat_validade_cnh    :=  FQuery.FieldByName('dat_validade_cnh').AsDateTime;
  ARecord.dat_emissao_cnh     :=  FQuery.FieldByName('dat_emissao_cnh').AsDateTime;
  ARecord.uf_cnh              :=  FQuery.FieldByName('uf_cnh').AsString;
  ARecord.dat_primeira_cnh    :=  FQuery.FieldByName('dat_primeira_cnh').AsDateTime;
  ARecord.cod_status          :=  FQuery.FieldByName('cod_status').AsInteger;
  ARecord.dat_cadastro        :=  FQuery.FieldByName('dat_cadastro').AsDateTime;
  ARecord.des_obs             :=  FQuery.FieldByName('des_obs').AsString;
  Result := True;
end;

end.
