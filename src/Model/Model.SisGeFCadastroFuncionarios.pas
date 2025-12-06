unit Model.SisGeFCadastroFuncionarios;

interface

  uses Common.ENum, FireDAC.Comp.Client, service.connectionMySQL, service.sistem;

  type
    TFuncionarios = record
      cod_cadastro            : integer;
      dom_pessoa              : string[1];
      des_tipo_doc            : string[4];
      nom_razao_social        : string[70];
      nom_fantasia_alias      : string[70];
      num_cpf_cnpj            : string[20];
      num_rg_ie               : string[20];
      dat_emissao_rg          : TDate;
      nom_emissor_rg          : string[20];
      uf_emissor_rg           : string[2];
      dat_nascimento          : TDate;
      des_nacionalidade       : string[70];
      des_naturalidade        : string[70];
      uf_naturalidade         : string[2];
      nom_pai                 : string[70];
      nom_mae                 : string[70];
      cod_cnae                : string[10];
      cod_crt                 : integer;
      num_cnh                 : string[15];
      num_registro_cnh        : string[15];
      des_categoria_cnh       : string[2];
      dat_validade_cnh        : TDate;
      dat_emissao_cnh         : TDate;
      uf_cnh                  : string[2];
      dat_primeira_cnh        : TDate;
      cod_seguranca_cnh       : string[30];
      cod_status              : integer;
      dat_cadastro            : TDate;
      des_forma_pagamento     : string[30];
      des_tipo_conta          : string[20];
      cod_banco               : string[4];
      cod_agencia             : string[10];
      num_conta               : string[20];
      nom_favorecido          : string[70];
      num_cpf_cnpj_favorecido : string[20];
      cod_pix                 : string[255];
      cod_gr                  : string[20];
      dat_gr                  : TDate;
      cod_mei                 : string[12];
      des_razao_mei           : string[70];
      nom_fantasia_mei        : string[70];
      num_cnpj_mei            : string[20];
      dat_abertura_mei        : TDate;
      des_obs                 : string;
      id_departamento         : integer;
      id_funcao               : integer;
      dat_demissao            : TDate;
    end;
  type
    modelCadastroFuncionarios = class
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
        function    Search      (aParams: array of string): boolean;
        function    SaveRecord  ()                        : boolean;

        
        property Acao     : TAcao   read  FAcao     write FAcao;
        property Mensagem : string  read  FMensagem write FMensagem;

      protected
    end;
    const
      TABLENAME = 'crm_funcionarios';
      SQLINSERT = 'insert into ' + TABLENAME +
                  '(cod_cadastro, dom_pessoa, des_tipo_doc, nom_razao_social, nom_fantasia_alias, num_cpf_cnpj, ' +
                  'num_rg_ie, dat_emissao_rg, nom_emissor_rg, uf_emissor_rg, dat_nascimento, des_nacionalidade, ' +
                  'des_naturalidade, uf_naturalidade, nom_pai, nom_mae, cod_cnae, cod_crt, num_cnh, num_registro_cnh, ' +
                  'des_categoria_cnh, dat_validade_cnh, dat_emissao_cnh, uf_cnh, dat_primeira_cnh, cod_seguranca_cnh, ' +
                  'cod_status, dat_cadastro, des_forma_pagamento, des_tipo_conta, cod_banco, cod_agencia, num_conta, ' +
                  'nom_favorecido, num_cpf_cnpj_favorecido, cod_pix, cod_gr, dat_gr, cod_mei, des_razao_mei, ' +
                  'nom_fantasia_mei, num_cnpj_mei, dat_abertura_mei, des_obs, id_departamento, id_funcao, dat_demissao) ' +
                  'values ' +
                  '(:cod_cadastro, :dom_pessoa, :des_tipo_doc, :nom_razao_social, :nom_fantasia_alias, :num_cpf_cnpj, ' +
                  ':num_rg_ie, :dat_emissao_rg, :nom_emissor_rg, :uf_emissor_rg, :dat_nascimento, :des_nacionalidade, ' +
                  ':des_naturalidade, :uf_naturalidade, :nom_pai, :nom_mae, :cod_cnae, :cod_crt, :num_cnh, ' +
                  ':num_registro_cnh, :des_categoria_cnh, :dat_validade_cnh, :dat_emissao_cnh, :uf_cnh, :dat_primeira_cnh, ' +
                  ':cod_seguranca_cnh, :cod_status, :dat_cadastro, :des_forma_pagamento, :des_tipo_conta, :cod_banco, ' +
                  ':cod_agencia, :num_conta, :nom_favorecido, :num_cpf_cnpj_favorecido, :cod_pix, :cod_gr, :dat_gr, ' +
                  ':cod_mei, :des_razao_mei, :nom_fantasia_mei, :num_cnpj_mei, :dat_abertura_mei, :des_obs, ' +
                  ':id_departamento, :id_funcao, :dat_demissao)';
      SQLUPDATE = 'update ' + TABLENAME +
                  ' set ' +
                  'dom_pessoa = :dom_pessoa, des_tipo_doc = :des_tipo_doc, nom_razao_social = :, ' +
                  'nom_fantasia_alias = :nom_fantasia_alias, num_cpf_cnpj = :num_cpf_cnpj, num_rg_ie = :num_rg_ie, ' +
                  'dat_emissao_rg = :dat_emissao_rg, nom_emissor_rg = :dat_emissao_rg, uf_emissor_rg = :uf_emissor_rg, ' +
                  'dat_nascimento + :dat_nascimento, des_nacionalidade = :des_nacionalidade, ' +
                  'des_naturalidade = :des_naturalidade, uf_naturalidade = :uf_naturalidade, nom_pai = :nom_pai, ' +
                  'nom_mae = :nom_mae, cod_cnae = :cod_cnae, cod_crt = :cod_crt, num_cnh = :num_cnh, ' +
                  'num_registro_cnh = :num_registro_cnh, des_categoria_cnh = :des_categoria_cnh, ' +
                  'dat_validade_cnh = :dat_validade_cnh, dat_emissao_cnh = :dat_emissao_cnh, uf_cnh = :uf_cnh, ' +
                  'dat_primeira_cnh = :dat_primeira_cnh, cod_seguranca_cnh = :cod_seguranca_cnh, ' +
                  'cod_status = :cod_status, dat_cadastro = :dat_cadastro, des_forma_pagamento = :des_forma_pagamento, ' +
                  'des_tipo_conta = :des_tipo_conta, cod_banco = :cod_banco, cod_agencia = :cod_agencia, ' +
                  'num_conta = :num_conta, nom_favorecido = :nom_favorecido, ' +
                  'num_cpf_cnpj_favorecido = :num_cpf_cnpj_favorecido, cod_pix = :cod_pix, cod_gr = :cod_gr, ' +
                  'dat_gr = :dat_gr, cod_mei = :cod_mei, des_razao_mei = :des_razao_mei, ' +
                  'nom_fantasia_mei = :nom_fantasia_mei, num_cnpj_mei = :num_cnpj_mei, dat_abertura_mei = :dat_abertura_mei, ' +
                  'des_obs = :des_obs, id_departamento = :id_departamento, id_funcao = :id_funcao, dat_demissao = :dat_demissao ' +
                  'where ' +
                  'cod_cadastro = :cod_cadastro';
      SQLSELECT = 'select cod_cadastro, dom_pessoa, des_tipo_doc, nom_razao_social, nom_fantasia_alias, num_cpf_cnpj, ' +
                  'num_rg_ie, dat_emissao_rg, nom_emissor_rg, uf_emissor_rg, dat_nascimento, des_nacionalidade, ' +
                  'des_naturalidade, uf_naturalidade, nom_pai, nom_mae, cod_cnae, cod_crt, num_cnh, num_registro_cnh, ' +
                  'des_categoria_cnh, dat_validade_cnh, dat_emissao_cnh, uf_cnh, dat_primeira_cnh, cod_seguranca_cnh, ' +
                  'cod_status, dat_cadastro, des_forma_pagamento, des_tipo_conta, cod_banco, cod_agencia, num_conta, ' +
                  'nom_favorecido, num_cpf_cnpj_favorecido, cod_pix, cod_gr, dat_gr, cod_mei, des_razao_mei, ' +
                  'nom_fantasia_mei, num_cnpj_mei, dat_abertura_mei, des_obs, id_departamento, id_funcao, dat_demissao ' +
                  'from ' +
                  TABLENAME;

implementation

{ modelCadastroFuncionarios }

function modelCadastroFuncionarios.Alterar: boolean;
begin
  Result := False;
  try
    FQuery := FConn.GetQuery;
    FQuery.ExecSQL(SQLUPDATE,
                  [ARecord.dom_pessoa, ARecord.des_tipo_doc, ARecord.nom_razao_social, ARecord.nom_fantasia_alias,
                  ARecord.num_cpf_cnpj, ARecord.num_rg_ie, ARecord.dat_emissao_rg, ARecord.nom_emissor_rg,
                  ARecord.uf_emissor_rg, ARecord.dat_nascimento, ARecord.des_nacionalidade, ARecord.des_naturalidade,
                  ARecord.uf_naturalidade, ARecord.nom_pai, ARecord.nom_mae, ARecord.cod_cnae, ARecord.cod_crt, ARecord.num_cnh,
                  ARecord.num_registro_cnh, ARecord.des_categoria_cnh, ARecord.dat_validade_cnh, ARecord.dat_emissao_cnh,
                  ARecord.uf_cnh, ARecord.dat_primeira_cnh, ARecord.cod_seguranca_cnh, ARecord.cod_status, ARecord.dat_cadastro,
                  ARecord.des_forma_pagamento, ARecord.des_tipo_conta, ARecord.cod_banco, ARecord.cod_agencia,
                  ARecord.num_conta, ARecord.nom_favorecido, ARecord.num_cpf_cnpj_favorecido, ARecord.cod_pix,
                  ARecord.cod_gr, ARecord.dat_gr, ARecord.cod_mei, ARecord.des_razao_mei, ARecord.nom_fantasia_mei,
                  ARecord.num_cnpj_mei, ARecord.dat_abertura_mei, ARecord.des_obs, ARecord.id_departamento, ARecord.id_funcao,
                  ARecord.dat_demissao, ARecord.cod_cadastro]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

constructor modelCadastroFuncionarios.Create;
begin
  FConn := TConnectionMySQL.Create;
end;

function modelCadastroFuncionarios.GetNextID(sIdName: string): Integer;
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

function modelCadastroFuncionarios.Inserir: boolean;
begin
  Result := False;
  try
    ARecord.cod_cadastro := GetNextID('cod_cadastro');
    FQuery := FConn.GetQuery();
    FQuery.ExecSQL(SQLINSERT,
                  [ARecord.cod_cadastro, ARecord.dom_pessoa, ARecord.des_tipo_doc, ARecord.nom_razao_social,
                  ARecord.nom_fantasia_alias, ARecord.num_cpf_cnpj, ARecord.num_rg_ie, ARecord.dat_emissao_rg,
                  ARecord.nom_emissor_rg, ARecord.uf_emissor_rg, ARecord.dat_nascimento, ARecord.des_nacionalidade,
                  ARecord.des_naturalidade, ARecord.uf_naturalidade, ARecord.nom_pai, ARecord.nom_mae, ARecord.cod_cnae,
                  ARecord.cod_crt, ARecord.num_cnh, ARecord.num_registro_cnh, ARecord.des_categoria_cnh,
                  ARecord.dat_validade_cnh, ARecord.dat_emissao_cnh, ARecord.uf_cnh, ARecord.dat_primeira_cnh,
                  ARecord.cod_seguranca_cnh, ARecord.cod_status, ARecord.dat_cadastro, ARecord.des_forma_pagamento,
                  ARecord.des_tipo_conta, ARecord.cod_banco, ARecord.cod_agencia, ARecord.num_conta, ARecord.nom_favorecido,
                  ARecord.num_cpf_cnpj_favorecido, ARecord.cod_pix, ARecord.cod_gr, ARecord.dat_gr, ARecord.cod_mei,
                  ARecord.des_razao_mei, ARecord.nom_fantasia_mei, ARecord.num_cnpj_mei, ARecord.dat_abertura_mei,
                  ARecord.des_obs, ARecord.id_departamento, ARecord.id_funcao, ARecord.dat_demissao]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function modelCadastroFuncionarios.SaveRecord: boolean;
begin

end;

function modelCadastroFuncionarios.Search(aParams: array of string): boolean;
begin
  Result := False;
  FQuery := FConn.GetQuery;
  FQuery.SQL.Add(SQLSELECT);
  if Length(aParams) >= 2 then
  begin
        
  end;
  if FQuery.IsEmpty then
    Exit;
  Result := True;
end;

end.
