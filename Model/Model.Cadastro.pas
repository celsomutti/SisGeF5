unit Model.Cadastro;

interface

uses
    Common.ENum, FireDAC.Comp.Client, DAO.Conexao;

    type
    TCadastro = class
    private

      FCadastro: Integer;
      FFuncionario: String;
      FEntregador: Integer;
      FDoc: String;
      FNome: String;
      FFantasia: String;
      FCPFCNPJ: String;
      FIERG: String;
      FNascimento: TDate;
      FUFRG: String;
      FEMissaoRG: TDate;
      FUFNascimento: String;
      FCidadeNascimento: String;
      FPai: String;
      FMae: String;
      FIEST: String;
      FIM: String;
      FCNAE: String;
      FCRT: Integer;
      FNumeroCNH: String;
      FRegistroCNH: String;
      FCategoriaCNH: String;
      FValidadeCNH: TDate;
      FUFCNH: String;
      FDataPrimeiraCNH: TDate;
      FURL: String;
      FAgente: Integer;
      FStatus: Integer;
      FObs: String;
      FDataCadastro: TDate;
      FUsuario: Integer;
      FVerba: Double;
      FCombustivel: Double;
      FTipoConta: String;
      FBanco: String;
      FAgenciaConta: String;
      FNumeroConta: String;
      FNomeFavorecido: String;
      FCPFCNPJFavorecido: String;
      FFormaPagamento: String;
      FCentroCusto: Integer;
      FRoubo: String;
      FQuantosRoubos: Integer;
      FAcidentes: String;
      FQuantosAcidentes: String;
      FTransporteEmpresa: String;
      FQuantosTransporteEmptresa: Integer;
      FGV: String;
      FDataGV: TDate;
      FExecutante: String;
      FDataAlteracao: TDateTime;
      FChave: String;
      FGrupo: Integer;
      FRoteiro: String;
      FMEI: String;
      FRazaoMEI: String;
      FFantasiaMEI: String;
      FCNPJMEI: String;
      FConexao : TConexao;

      FAcao: TAcao;
      FEmissorRG: String;
      FEmissaoCNH: TDate;
      FCodigoCNH: String;
      FNumeroConsultaGR: String;
      FEmpresaGR: String;
      FQuery: TFDQuery;
      FNomeTabela: String;

    public

      property Cadastro: Integer                    read FCadastro                    write FCadastro;
      property Funcionario: String                  read FFuncionario                 write FFuncionario;
      property Entregador: Integer                  read FEntregador                  write FEntregador;
      property Doc: String                          read FDoc                         write FDoc;
      property Nome: String                         read FNome                        write FNome;
      property Fantasia: String                     read FFantasia                    write FFantasia;
      property CPFCNPJ: String                      read FCPFCNPJ                     write FCPFCNPJ;
      property IERG: String                         read FIERG                        write FIERG;
      property Nascimento: TDate                    read FNascimento                  write FNascimento;
      property UFRG: String                         read FUFRG                        write FUFRG;
      property EMissaoRG: TDate                     read FEMissaoRG                   write FEMissaoRG;
      property UFNascimento: String                 read FUFNascimento                write FUFNascimento;
      property CidadeNascimento: String             read FCidadeNascimento            write FCidadeNascimento;
      property Pai: String                          read FPai                         write FPai;
      property Mae: String                          read FMae                         write FMae;
      property IEST: String                         read FIEST                        write FIEST;
      property IM: String                           read FIM                          write FIM;
      property CNAE: String                         read FCNAE                        write FCNAE;
      property CRT: Integer                         read FCRT                         write FCRT;
      property NumeroCNH: String                    read FNumeroCNH                   write FNumeroCNH;
      property RegistroCNH: String                  read FRegistroCNH                 write FRegistroCNH;
      property CategoriaCNH: String                 read FCategoriaCNH                write FCategoriaCNH;
      property ValidadeCNH: TDate                   read FValidadeCNH                 write FValidadeCNH;
      property EmissaoCNH: TDate                    read FEmissaoCNH                  write FEmissaoCNH;
      property UFCNH: String                        read FUFCNH                       write FUFCNH;
      property DataPrimeiraCNH: TDate               read FDataPrimeiraCNH             write FDataPrimeiraCNH;
      property URL: String                          read FURL                         write FURL;
      property Agente: Integer                      read FAgente                      write FAgente;
      property Status: Integer                      read FStatus                      write FStatus;
      property Obs: String                          read FObs                         write FObs;
      property DataCadastro: TDate                  read FDataCadastro                write FDataCadastro;
      property Usuario: Integer                     read FUsuario                     write FUsuario;
      property Verba: Double                        read FVerba                       write FVerba;
      property Combustivel: Double                  read FCombustivel                 write FCombustivel;
      property TipoConta: String                    read FTipoConta                   write FTipoConta;
      property Banco: String                        read FBanco                       write FBanco;
      property AgenciaConta: String                 read FAgenciaConta                write FAgenciaConta;
      property NumeroConta: String                  read FNumeroConta                 write FNumeroConta;
      property NomeFavorecido: String               read FNomeFavorecido              write FNomeFavorecido;
      property CPFCNPJFavorecido: String            read FCPFCNPJFavorecido           write FCPFCNPJFavorecido;
      property FormaPagamento: String               read FFormaPagamento              write FFormaPagamento;
      property CentroCusto: Integer                 read FCentroCusto                 write FCentroCusto;
      property Roubo: String                        read FRoubo                       write FRoubo;
      property QuantosRoubos: Integer               read FQuantosRoubos               write FQuantosRoubos;
      property Acidentes: String                    read FAcidentes                   write FAcidentes;
      property QuantosAcidentes: String             read FQuantosAcidentes            write FQuantosAcidentes;
      property TransporteEmpresa: String            read FTransporteEmpresa           write FTransporteEmpresa;
      property QuantosTransporteEmptresa: Integer   read FQuantosTransporteEmptresa   write FQuantosTransporteEmptresa;
      property GV: String                           read FGV                          write FGV;
      property DataGV: TDate                        read FDataGV                      write FDataGV;
      property Executante: String                   read FExecutante                  write FExecutante;
      property DataAlteracao: TDateTime             read FDataAlteracao               write FDataAlteracao;
      property Chave: String                        read FChave                       write FChave;
      property Grupo: Integer                       read FGrupo                       write FGrupo;
      property Roteiro: String                      read FRoteiro                     write FRoteiro;
      property MEI: String                          read FMEI                         write FMEI;
      property RazaoMEI: String                     read FRazaoMEI                    write FRazaoMEI;
      property FantasiaMEI: String                  read FFantasiaMEI                 write FFantasiaMEI;
      property CNPJMEI: String                      read FCNPJMEI                     write FCNPJMEI;
      property EmissorRG: String                    read FEmissorRG                   write FEmissorRG;
      property CodigoCNH: String                    read FCodigoCNH                   write FCodigoCNH;
      property EmpresaGR: String                    read FEmpresaGR                   write FEmpresaGR;
      property NumeroConsultaGR: String             read FNumeroConsultaGR            write FNumeroConsultaGR;
      property Acao: TAcao                          read FAcao                        write FAcao;
      property Query: TFDQuery                      read FQuery                       write FQuery;
      property NomeTabela: String                   read FNomeTabela                  write FNomeTabela;

      constructor Create;
      function Localizar(aParam: array of variant): Boolean;
      function Gravar(): Boolean;
      function GetID(): Integer;
      function Inserir(): Boolean;
      function Alterar(): Boolean;
      function Excluir(): Boolean;

      function GetField(sField: String; sKey: String; sKeyValue: String): String;
      function SetupModel(FDCadastro: TFDQuery): Boolean;

    end;
    const
      TABLENAME = 'tbentregadores';

implementation

{ TCadastro }

uses Control.Sistema;

function TCadastro.Alterar: Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('UPDATE ' + TABLENAME + ' SET dom_funcionario = :dom_funcionario, cod_entregador = :cod_entregador, ' +
                    'des_tipo_doc = :des_tipo_doc, des_razao_social = :des_razao_social, nom_fantasia = :nom_fantasia, ' +
                    'num_cnpj = :num_cnpj, num_ie = :num_ie, dat_nascimento = :dat_nascimento, dat_emissao_RG = :dat_emissao_RG,' +
                    'nom_emissor_RG = :nom_emissor_RG, uf_nascimento = :uf_nascimento, ' +
                    'nom_cidade_nascimento = :nom_cidade_nascimento, nom_pai = :nom_pai, nom_mae = :nom_mae, num_iest = :num_iest,' +
                    'num_im, cod_cnae = :num_im, cod_cnae, cod_crt = :cod_crt, num_cnh = :num_cnh, ' +
                    'num_registro_cnh = :num_registro_cnh, des_categoria_cnh = :des_categoria_cnh, ' +
                    'dat_validade_cnh = :dat_validade_cnh, dat_emissao_cnh = :dat_emissao_cnh, uf_cnh = :uf_cnh, ' +
                    'dat_1_habilitacao = :dat_1_habilitacao, des_pagina = :des_pagina, cod_agente = :cod_agente, ' +
                    'cod_status = :cod_status, des_observacao = :des_observacao, dat_cadastro = :dat_cadastro, ' +
                    'cod_usuario = :cod_usuario, val_verba = :val_verba, val_verba_combustivel = :val_verba_combustivel, ' +
                    'des_tipo_conta = :des_tipo_conta, cod_banco = :cod_banco, cod_agencia = :cod_agencia, ' +
                    'num_conta = :num_conta, nom_favorecido = :nom_favorecido, ' +
                    'num_cpf_cnpj_favorecido = :num_cpf_cnpj_favorecido, des_forma_pagamento = :des_forma_pagamento, ' +
                    'cod_centro_custo = :cod_centro_custo, dom_vitima_roubo = :dom_vitima_roubo, ' +
                    'qtd_vitima_roubo = :qtd_vitima_roubo, dom_acidentes = :dom_acidentes, qtd_acidentes = :qtd_acidentes, ' +
                    'dom_transporte_empresa = :dom_transporte_empresa, qtd_transporte_empresa = :qtd_transporte_empresa, ' +
                    'dom_gr = :dom_gr, dat_gv = :dat_gv, nom_executante = nom_executante, dat_alteracao = :dat_alteracao, ' +
                    'des_chave = :des_chave, cod_grupo = :cod_grupo, cod_roteiro = :cod_roteiro, cod_mei = :cod_mei, ' +
                    'nom_razao_mei = :nom_razao_mei, nom_fantasia_mei = :nom_fantasia_mei, num_cnpj_mei = :num_cnpj_mei, ' +
                    'cod_cnh = :cod_cnh, des_empresa_gr = :des_empresa_gr, num_consulta = :num_consulta ' +
                    'WHERE ' +
                    'cod_cadastro = :cod_cadastro;',
                    [FFuncionario, FEntregador, FDoc, FNome, FFantasia, FCPFCNPJ, FIERG, FNascimento, FEMissaoRG,FUFRG,
                    FEmissorRG, FUFNascimento, FCidadeNascimento, FPai, FMae, FIEST, FIM, FCNAE, FCRT, FNumeroCNH, FRegistroCNH,
                    FCategoriaCNH, FValidadeCNH, FEmissaoCNH, FUFCNH, FDataPrimeiraCNH, FURL, FAgente, FStatus, FObs, FDataCadastro,
                    FUsuario, FVerba, FCombustivel, FTipoConta, FBanco, FAgenciaConta, FNumeroConta, FNomeFavorecido,
                    FCPFCNPJFavorecido, FFormaPagamento, FCentroCusto, FRoubo, FQuantosRoubos, FAcidentes, FQuantosAcidentes,
                    FTransporteEmpresa, FQuantosTransporteEmptresa, FGV, FDataGV, FExecutante, FDataAlteracao, FChave, FGrupo,
                    FRoteiro, FMEI, FRazaoMEI, FFantasiaMEI, FCNPJMEI, FCodigoCNH, FEmpresaGR, FNumeroConsultaGR, FCadastro]);
  Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TCadastro.Create;
begin
  FConexao := TSistemaControl.GetInstance().Conexao;
  FNomeTabela := TABLENAME;
end;

function TCadastro.Excluir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where WHERE COD_CADASTRO = :COD_CADASTRO',
                    [FCadastro]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TCadastro.GetField(sField, sKey, sKeyValue: String): String;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.SQL.Text := 'select ' + sField + ' from ' + TABLENAME + ' where ' + sKey + ' = ' + sKeyValue;
    FDQuery.Open();
    if not FDQuery.IsEmpty then Result := FDQuery.FieldByName(sField).AsString;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCadastro.GetID: Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(COD_CADASTRO),0) + 1 from ' + TABLENAME);
    try
      Result := FDQuery.Fields[0].AsInteger;
    finally
      FDQuery.Close;
    end;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCadastro.Gravar: Boolean;
begin
  Result := False;
  case FAcao of
    Common.ENum.tacIncluir: Result := Self.Inserir();
    Common.ENum.tacAlterar: Result := Self.Alterar();
    Common.ENum.tacExcluir: Result := Self.Excluir();
  end;
end;

function TCadastro.Inserir: Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('INSERT INTO ' + TABLENAME + '(cod_cadastro, dom_funcionario, cod_entregador, des_tipo_doc, ' +
                    'des_razao_social, nom_fantasia, num_cnpj, num_ie, dat_nascimento, dat_emissao_RG, nom_emissor_RG, ' +
                    'uf_nascimento, nom_cidade_nascimento, nom_pai, nom_mae, num_iest, num_im, cod_cnae, cod_crt, num_cnh, ' +
                    'num_registro_cnh, des_categoria_cnh, dat_validade_cnh, dat_emissao_cnh, uf_cnh, dat_1_habilitacao, ' +
                    'des_pagina, cod_agente, cod_status, des_observacao, dat_cadastro, cod_usuario, val_verba, ' +
                    'val_verba_combustivel, des_tipo_conta, cod_banco, cod_agencia, num_conta, nom_favorecido, ' +
                    'num_cpf_cnpj_favorecido, des_forma_pagamento, cod_centro_custo, dom_vitima_roubo, qtd_vitima_roubo, ' +
                    'dom_acidentes, qtd_acidentes, dom_transporte_empresa, qtd_transporte_empresa, dom_gr, dat_gv, ' +
                    'nom_executante, dat_alteracao, des_chave, cod_grupo, cod_roteiro, cod_mei, nom_razao_mei, ' +
                    'nom_fantasia_mei, num_cnpj_mei, cod_cnh, des_empresa_gr, num_consulta) ' +
                    'VALUES ' +
                    '(:cod_cadastro, :dom_funcionario, :cod_entregador, :des_tipo_doc, ' +
                    ':des_razao_social, :nom_fantasia, :num_cnpj, num_ie, :dat_nascimento, :dat_emissao_RG, :nom_emissor_RG, ' +
                    ':uf_nascimento, :nom_cidade_nascimento, :nom_pai, :nom_mae, :num_iest, :num_im, :cod_cnae, :cod_crt, :num_cnh, ' +
                    ':num_registro_cnh, :des_categoria_cnh, :dat_validade_cnh, :dat_emissao_cnh, :uf_cnh, :dat_1_habilitacao, ' +
                    ':des_pagina, :cod_agente, :cod_status, :des_observacao, :dat_cadastro, :cod_usuario, :val_verba, ' +
                    ':val_verba_combustivel, :des_tipo_conta, :cod_banco, :cod_agencia, :num_conta, :nom_favorecido, ' +
                    ':num_cpf_cnpj_favorecido, :des_forma_pagamento, :cod_centro_custo, :dom_vitima_roubo, :qtd_vitima_roubo, ' +
                    ':dom_acidentes, :qtd_acidentes, :dom_transporte_empresa, :qtd_transporte_empresa, :dom_gr, :dat_gv, ' +
                    ':nom_executante, :dat_alteracao, :des_chave, :cod_grupo, :cod_roteiro, :cod_mei, :nom_razao_mei, ' +
                    ':nom_fantasia_mei, :num_cnpj_mei, :cod_cnh, :des_empresa_gr, :num_consulta);',
                    [FCadastro, FFuncionario, FEntregador, FDoc, FNome, FFantasia, FCPFCNPJ, FIERG, FNascimento, FEMissaoRG,FUFRG,
                    FEmissorRG, FUFNascimento, FCidadeNascimento, FPai, FMae, FIEST, FIM, FCNAE, FCRT, FNumeroCNH, FRegistroCNH,
                    FCategoriaCNH, FValidadeCNH, FEmissaoCNH, FUFCNH, FDataPrimeiraCNH, FURL, FAgente, FStatus, FObs, FDataCadastro,
                    FUsuario, FVerba, FCombustivel, FTipoConta, FBanco, FAgenciaConta, FNumeroConta, FNomeFavorecido,
                    FCPFCNPJFavorecido, FFormaPagamento, FCentroCusto, FRoubo, FQuantosRoubos, FAcidentes, FQuantosAcidentes,
                    FTransporteEmpresa, FQuantosTransporteEmptresa, FGV, FDataGV, FExecutante, FDataAlteracao, FChave, FGrupo,
                    FRoteiro, FMEI, FRazaoMEI, FFantasiaMEI, FCNPJMEI, FCodigoCNH, FEmpresaGR, FNumeroConsultaGR]);
  Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCadastro.Localizar(aParam: array of variant): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    if Length(aParam) < 2 then Exit;
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('select * from ' + TABLENAME);
    if aParam[0] = 'CADASTRO' then
    begin
      FDQuery.SQL.Add('WHERE COD_CADASTRO = :COD_CADASTRO');
      FDQuery.ParamByName('COD_CADASTRO').AsInteger := aParam[1];
    end;
    if aParam[0] = 'CPF' then
    begin
      FDQuery.SQL.Add('WHERE NUM_CNPJ = :NUM_CNPJ');
      FDQuery.ParamByName('NUM_CNPJ').AsString := aParam[1];
    end;
    if aParam[0] = 'RG' then
    begin
      FDQuery.SQL.Add('WHERE NUM_IE = :NUM_IE');
      FDQuery.ParamByName('NUM_IE').AsString := aParam[1];
    end;
    if aParam[0] = 'CNPJIMEI' then
    begin
      FDQuery.SQL.Add('WHERE NUM_CNPJ_MEI = :NUM_CNPJ_MEI');
      FDQuery.ParamByName('NUM_CNPJ_MEI').AsString := aParam[1];
    end;
    if aParam[0] = 'IMEI' then
    begin
      FDQuery.SQL.Add('WHERE COD_MEI = :COD_MEI');
      FDQuery.ParamByName('COD_MEI').AsString := aParam[1];
    end;
    if aParam[0] = 'NOME' then
    begin
      FDQuery.SQL.Add('WHERE DES_RAZAO_SOCIAL = :DES_RAZAO_SOCIAL');
      FDQuery.ParamByName('DES_RAZAO_SOCIAL').AsString := aParam[1];
    end;
    if aParam[0] = 'FANTASIA' then
    begin
      FDQuery.SQL.Add('WHERE NOM_FANTASIA = :NOM_FANTASIA');
      FDQuery.ParamByName('NOM_FANTASIA').AsString := aParam[1];
    end;
    if aParam[0] = 'FILTRO' then
    begin
      FDQuery.SQL.Add('WHERE ' + aParam[1]);
    end;
    if aParam[0] = 'APOIO' then
    begin
      FDQuery.SQL.Clear;
      FDQuery.SQL.Add('SELECT  ' + aParam[1] + ' FROM ' + TABLENAME + ' ' + aParam[2]);
    end;
    FDQuery.Open;
    if FDQuery.IsEmpty then
    begin
      Exit;
    end;
    FQuery := FDQuery;
    Result := True;
  finally
    FDquery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCadastro.SetupModel(FDCadastro: TFDQuery): Boolean;
begin
  try
    Result := False;
    Cadastro := FDCadastro.FieldByName('cod_cadastro').AsInteger;
    Funcionario := FDCadastro.FieldByName('dom_funcionario').AsString;
    Entregador := FDCadastro.FieldByName('cod_entregador').AsInteger;
    Doc := FDCadastro.FieldByName('des_tipo_doc').AsString;
    Nome := FDCadastro.FieldByName('des_razao_social').AsString;
    Fantasia := FDCadastro.FieldByName('nom_fantasia').AsString;
    CPFCNPJ := FDCadastro.FieldByName('num_cnpj').AsString;
    IERG := FDCadastro.FieldByName('num_ie').AsString;
    Nascimento := FDCadastro.FieldByName('dat_nascimento').AsDateTime;
    UFRG := FDCadastro.FieldByName('uf_rg').AsString;
    EMissaoRG := FDCadastro.FieldByName('dat_emissao_rg').AsDateTime;
    UFNascimento := FDCadastro.FieldByName('uf_nascimento').AsString;
    CidadeNascimento := FDCadastro.FieldByName('nom_cidade_nascimento').AsString;
    Pai := FDCadastro.FieldByName('nom_pai').AsString;
    Mae := FDCadastro.FieldByName('nom_mae').AsString;
    IEST := FDCadastro.FieldByName('num_iest').AsString;
    IM := FDCadastro.FieldByName('num_im').AsString;
    CNAE := FDCadastro.FieldByName('cod_cnae').AsString;
    CRT := FDCadastro.FieldByName('cod_crt').AsInteger;
    NumeroCNH := FDCadastro.FieldByName('num_cnh').AsString;
    RegistroCNH := FDCadastro.FieldByName('num_registro_cnh').AsString;
    CategoriaCNH := FDCadastro.FieldByName('des_categoria_cnh').AsString;
    ValidadeCNH := FDCadastro.FieldByName('dat_validade_cnh').AsDateTime;
    UFCNH := FDCadastro.FieldByName('uf_cnh').AsString;
    DataPrimeiraCNH := FDCadastro.FieldByName('dat_1_habilitacao').AsDateTime;
    URL := FDCadastro.FieldByName('des_pagina').AsString;
    Agente := FDCadastro.FieldByName('cod_agente').AsInteger;
    Status := FDCadastro.FieldByName('cod_status').AsInteger;
    Obs := FDCadastro.FieldByName('des_observacao').AsString;
    DataCadastro := FDCadastro.FieldByName('dat_cadastro').AsDateTime;
    Usuario := FDCadastro.FieldByName('cod_usuario').AsInteger;
    Verba := FDCadastro.FieldByName('val_verba').AsFloat;
    Combustivel := FDCadastro.FieldByName('val_verba_combustivel').AsFloat;
    TipoConta := FDCadastro.FieldByName('des_tipo_conta').AsString;
    Banco := FDCadastro.FieldByName('cod_banco').AsString;
    AgenciaConta := FDCadastro.FieldByName('cod_agencia').AsString;
    NumeroConta := FDCadastro.FieldByName('num_conta').AsString;
    NomeFavorecido := FDCadastro.FieldByName('nom_favorecido').AsString;
    CPFCNPJFavorecido := FDCadastro.FieldByName('num_cpf_cnpj_favorecido').AsString;
    FormaPagamento := FDCadastro.FieldByName('des_forma_pagamento').AsString;
    CentroCusto := FDCadastro.FieldByName('cod_centro_custo').AsInteger;
    Roubo := FDCadastro.FieldByName('dom_vitima_roubo').AsString;
    QuantosRoubos := FDCadastro.FieldByName('qtd_vitima_roubo').AsInteger;
    Acidentes := FDCadastro.FieldByName('dom_acidentes').AsString;
    QuantosAcidentes := FDCadastro.FieldByName('qtd_acidentes').AsString;
    TransporteEmpresa := FDCadastro.FieldByName('dom_transporte_empresa').AsString;
    QuantosTransporteEmptresa := FDCadastro.FieldByName('qtd_transporte').AsInteger;
    GV := FDCadastro.FieldByName('dom_gv').AsString;
    DataGV := FDCadastro.FieldByName('dat_gv').AsDateTime;
    Executante := FDCadastro.FieldByName('nom_executante').AsString;
    DataAlteracao := FDCadastro.FieldByName('dat_alteracao').AsDateTime;
    Chave := FDCadastro.FieldByName('des_chave').AsString;
    Grupo := FDCadastro.FieldByName('cod_grupo').AsInteger;
    Roteiro := FDCadastro.FieldByName('cod_roteiro').AsString;
    MEI := FDCadastro.FieldByName('cod_mei').AsString;
    RazaoMEI := FDCadastro.FieldByName('nom_razao_mei').AsString;
    FantasiaMEI := FDCadastro.FieldByName('nom_fantasia_mei').AsString;
    CNPJMEI := FDCadastro.FieldByName('num_cnpj_mei').AsString;
  finally
    Result  := True;
  end;
end;

end.
