unit Model.Cadastro;

interface

uses
    Common.ENum, FireDAC.Comp.Client, DAO.Conexao, System.SysUtils, Common.Utils;

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
      FNascimento: TDateTime;
      FUFRG: String;
      FEMissaoRG: TDateTime;
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
      FValidadeCNH: TDateTime;
      FUFCNH: String;
      FDataPrimeiraCNH: TDateTime;
      FURL: String;
      FAgente: Integer;
      FStatus: Integer;
      FObs: String;
      FDataCadastro: TDateTime;
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
      FQuantosAcidentes: Integer;
      FTransporteEmpresa: String;
      FQuantosTransporteEmptresa: Integer;
      FGV: String;
      FDataGV: TDateTime;
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
      FEmissaoCNH: TDateTime;
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
      property Nascimento: TDateTime                read FNascimento                  write FNascimento;
      property UFRG: String                         read FUFRG                        write FUFRG;
      property EMissaoRG: TDateTime                 read FEMissaoRG                   write FEMissaoRG;
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
      property ValidadeCNH: TDateTime               read FValidadeCNH                 write FValidadeCNH;
      property EmissaoCNH: TDateTime                read FEmissaoCNH                  write FEmissaoCNH;
      property UFCNH: String                        read FUFCNH                       write FUFCNH;
      property DataPrimeiraCNH: TDateTime           read FDataPrimeiraCNH             write FDataPrimeiraCNH;
      property URL: String                          read FURL                         write FURL;
      property Agente: Integer                      read FAgente                      write FAgente;
      property Status: Integer                      read FStatus                      write FStatus;
      property Obs: String                          read FObs                         write FObs;
      property DataCadastro: TDateTime              read FDataCadastro                write FDataCadastro;
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
      property QuantosAcidentes: Integer            read FQuantosAcidentes            write FQuantosAcidentes;
      property TransporteEmpresa: String            read FTransporteEmpresa           write FTransporteEmpresa;
      property QuantosTransporteEmptresa: Integer   read FQuantosTransporteEmptresa   write FQuantosTransporteEmptresa;
      property GV: String                           read FGV                          write FGV;
      property DataGV: TDateTime                    read FDataGV                      write FDataGV;
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
      function ValidateData(): boolean;
      function SearchEmployee(iIndex: integer; sText, sFilter: String): boolean;

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
    FDQuery.ExecSQL('UPDATE ' + TABLENAME + ' SET DOM_FUNCIONARIO = :DOM_FUNCIONARIO, COD_ENTREGADOR = :COD_ENTREGADOR, ' +
                    'DES_TIPO_DOC = :DES_TIPO_DOC, DES_RAZAO_SOCIAL = :DES_RAZAO_SOCIAL, NOM_FANTASIA = :NOM_FANTASIA, ' +
                    'NUM_CNPJ = :NUM_CNPJ, NUM_IE = :NUM_IE, DAT_NASCIMENTO = :DAT_NASCIMENTO, UF_RG = :UF_RG, ' +
                    'DAT_EMISSAO_RG = :DAT_EMISSAO_RG, NOM_EMISSOR_RG = :NOM_EMISSOR_RG, UF_NASCIMENTO = :UF_NASCIMENTO, ' +
                    'NOM_CIDADE_NASCIMENTO = :NOM_CIDADE_NASCIMENTO, NOM_PAI = :NOM_PAI, NOM_MAE = :NOM_MAE, ' +
                    'NUM_IEST = :NUM_IEST, NUM_IM = :NUM_IM, COD_CNAE = :COD_CNAE, COD_CRT = :COD_CRT, NUM_CNH = :NUM_CNH, ' +
                    'NUM_REGISTRO_CNH = :NUM_REGISTRO_CNH, DES_CATEGORIA_CNH = :DES_CATEGORIA_CNH, ' +
                    'DAT_VALIDADE_CNH = :DAT_VALIDADE_CNH, DAT_EMISSAO_CNH = :DAT_EMISSAO_CNH, UF_CNH = :UF_CNH, ' +
                    'DAT_1_HABILITACAO = :DAT_1_HABILITACAO, DES_PAGINA = :DES_PAGINA, COD_AGENTE = :COD_AGENTE, ' +
                    'COD_STATUS = :COD_STATUS, DES_OBSERVACAO = :DES_OBSERVACAO, DAT_CADASTRO = :DAT_CADASTRO, ' +
                    'COD_USUARIO = :COD_USUARIO, VAL_VERBA = :VAL_VERBA, VAL_VERBA_COMBUSTIVEL = :VAL_VERBA_COMBUSTIVEL, ' +
                    'DES_TIPO_CONTA = :DES_TIPO_CONTA, COD_BANCO = :COD_BANCO, COD_AGENCIA = :COD_AGENCIA, ' +
                    'NUM_CONTA = :NUM_CONTA, NOM_FAVORECIDO = :NOM_FAVORECIDO, ' +
                    'NUM_CPF_CNPJ_FAVORECIDO = :NUM_CPF_CNPJ_FAVORECIDO, DES_FORMA_PAGAMENTO = :DES_FORMA_PAGAMENTO, ' +
                    'COD_CENTRO_CUSTO = :COD_CENTRO_CUSTO, DOM_VITIMA_ROUBO = :DOM_VITIMA_ROUBO, ' +
                    'QTD_VITIMA_ROUBO = :QTD_VITIMA_ROUBO, DOM_ACIDENTES = :DOM_ACIDENTES, QTD_ACIDENTES = :QTD_ACIDENTES, ' +
                    'DOM_TRANSPORTE_EMPRESA = :DOM_TRANSPORTE_EMPRESA, QTD_TRANSPORTE = :QTD_TRANSPORTE, ' +
                    'DOM_GV = :DOM_GV, DAT_GV = :DAT_GV, NOM_EXECUTANTE = :NOM_EXECUTANTE, DAT_ALTERACAO = :DAT_ALTERACAO, ' +
                    'DES_CHAVE = :DES_CHAVE, COD_GRUPO = :COD_GRUPO, COD_ROTEIRO = :COD_ROTEIRO, COD_MEI = :COD_MEI, ' +
                    'NOM_RAZAO_MEI = :NOM_RAZAO_MEI, NOM_FANTASIA_MEI = :NOM_FANTASIA_MEI, NUM_CNPJ_MEI = :NUM_CNPJ_MEI, ' +
                    'COD_CNH = :COD_CNH ' +
                    'WHERE ' +
                    'COD_CADASTRO = :COD_CADASTRO;',
                    [FFuncionario, FEntregador, FDoc, FNome, FFantasia, FCPFCNPJ, FIERG, FNascimento, FUFRG, FEmissaoRG,
                    FEmissorRG, FUFNascimento, FCidadeNascimento, FPai, FMae, FIEST, FIM, FCNAE, FCRT, FNumeroCNH, FRegistroCNH,
                    FCategoriaCNH, FValidadeCNH, FEmissaoCNH, FUFCNH, FDataPrimeiraCNH, FURL, FAgente, FStatus, FObs,
                    FDataCadastro, FUsuario, FVerba, FCombustivel, FTipoConta, FBanco, FAgenciaConta, FNumeroConta,
                    FNomeFavorecido, FCPFCNPJFavorecido, FFormaPagamento, FCentroCusto, FRoubo, FQuantosRoubos, FAcidentes,
                    FQuantosAcidentes, FTransporteEmpresa, FQuantosTransporteEmptresa, FGV, FDataGV, FExecutante,
                    FDataAlteracao, FChave, FGrupo, FRoteiro, FMEI, FRazaoMEI, FFantasiaMEI, FCNPJMEI, FCodigoCNH, FCadastro]);
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
    Fcadastro := GetID();
    FDQuery.ExecSQL('INSERT INTO ' + TABLENAME + '(COD_CADASTRO, DOM_FUNCIONARIO, COD_ENTREGADOR, DES_TIPO_DOC, ' +
                    'DES_RAZAO_SOCIAL, NOM_FANTASIA, NUM_CNPJ, NUM_IE, DAT_NASCIMENTO, UF_RG, DAT_EMISSAO_RG, NOM_EMISSOR_RG, ' +
                    'UF_NASCIMENTO, NOM_CIDADE_NASCIMENTO, NOM_PAI, NOM_MAE, NUM_IEST, NUM_IM, COD_CNAE, COD_CRT, NUM_CNH, ' +
                    'NUM_REGISTRO_CNH, DES_CATEGORIA_CNH, DAT_VALIDADE_CNH, DAT_EMISSAO_CNH, UF_CNH, ' +
                    'DAT_1_HABILITACAO, DES_PAGINA, COD_AGENTE, COD_STATUS, DES_OBSERVACAO, DAT_CADASTRO, COD_USUARIO, ' +
                    'VAL_VERBA, VAL_VERBA_COMBUSTIVEL, DES_TIPO_CONTA, COD_BANCO, COD_AGENCIA, NUM_CONTA, ' +
                    'NOM_FAVORECIDO, NUM_CPF_CNPJ_FAVORECIDO, DES_FORMA_PAGAMENTO, COD_CENTRO_CUSTO, DOM_VITIMA_ROUBO, ' +
                    'QTD_VITIMA_ROUBO, DOM_ACIDENTES, QTD_ACIDENTES, DOM_TRANSPORTE_EMPRESA, QTD_TRANSPORTE, ' +
                    'DOM_GV, DAT_GV, NOM_EXECUTANTE, DAT_ALTERACAO, DES_CHAVE, COD_GRUPO, COD_ROTEIRO, COD_MEI, ' +
                    'NOM_RAZAO_MEI, NOM_FANTASIA_MEI, NUM_CNPJ_MEI, COD_CNH) ' +
                    'VALUES ' +
                    '(:COD_CADASTRO, :DOM_FUNCIONARIO, :COD_ENTREGADOR, :DES_TIPO_DOC, ' +
                    ':DES_RAZAO_SOCIAL, :NOM_FANTASIA, :NUM_CNPJ, :NUM_IE, :DAT_NASCIMENTO, :UF_RG, :DAT_EMISSAO_RG, ' +
                    ':NOM_EMISSOR_RG, :UF_NASCIMENTO, :NOM_CIDADE_NASCIMENTO, :NOM_PAI, :NOM_MAE, :NUM_IEST, :NUM_IM, :COD_CNAE, ' +
                    ':COD_CRT, :NUM_CNH, :NUM_REGISTRO_CNH, :DES_CATEGORIA_CNH, :DAT_VALIDADE_CNH, :DAT_EMISSAO_CNH, :UF_CNH, ' +
                    ':DAT_1_HABILITACAO, :DES_PAGINA, :COD_AGENTE, :COD_STATUS, :DES_OBSERVACAO, :DAT_CADASTRO, :COD_USUARIO, ' +
                    ':VAL_VERBA, :VAL_VERBA_COMBUSTIVEL, :DES_TIPO_CONTA, :COD_BANCO, :COD_AGENCIA, :NUM_CONTA, ' +
                    ':NOM_FAVORECIDO, :NUM_CPF_CNPJ_FAVORECIDO, :DES_FORMA_PAGAMENTO, :COD_CENTRO_CUSTO, :DOM_VITIMA_ROUBO, ' +
                    ':QTD_VITIMA_ROUBO, :DOM_ACIDENTES, :QTD_ACIDENTES, :DOM_TRANSPORTE_EMPRESA, :QTD_TRANSPORTE, ' +
                    ':DOM_GV, :DAT_GV, :NOM_EXECUTANTE, :DAT_ALTERACAO, :DES_CHAVE, :COD_GRUPO, :COD_ROTEIRO, :COD_MEI, ' +
                    ':NOM_RAZAO_MEI, :NOM_FANTASIA_MEI, :NUM_CNPJ_MEI, :COD_CNH);',
                    [FCadastro, FFuncionario, FEntregador, FDoc, FNome, FFantasia, FCPFCNPJ, FIERG, FNascimento, FUFRG, FEmissaoRG,
                    FEmissorRG, FUFNascimento, FCidadeNascimento, FPai, FMae, FIEST, FIM, FCNAE, FCRT, FNumeroCNH, FRegistroCNH,
                    FCategoriaCNH, FValidadeCNH, FEmissaoCNH, FUFCNH, FDataPrimeiraCNH, FURL, FAgente, FStatus, FObs,
                    FDataCadastro, FUsuario, FVerba, FCombustivel, FTipoConta, FBanco, FAgenciaConta, FNumeroConta,
                    FNomeFavorecido, FCPFCNPJFavorecido, FFormaPagamento, FCentroCusto, FRoubo, FQuantosRoubos, FAcidentes,
                    FQuantosAcidentes, FTransporteEmpresa, FQuantosTransporteEmptresa, FGV, FDataGV, FExecutante,
                    FDataAlteracao, FChave, FGrupo, FRoteiro, FMEI, FRazaoMEI, FFantasiaMEI, FCNPJMEI, FCodigoCNH]);
  Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCadastro.Localizar(aParam: array of variant): Boolean;
begin
  Result := False;
  FQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FQuery.SQL.Clear;
  FQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'CADASTRO' then
  begin
    FQuery.SQL.Add('WHERE COD_CADASTRO = :COD_CADASTRO');
    FQuery.ParamByName('COD_CADASTRO').AsInteger := aParam[1];
  end;
  if aParam[0] = 'CPF' then
  begin
    FQuery.SQL.Add('WHERE NUM_CNPJ = :NUM_CNPJ');
    FQuery.ParamByName('NUM_CNPJ').AsString := aParam[1];
  end;
  if aParam[0] = 'RG' then
  begin
    FQuery.SQL.Add('WHERE NUM_IE = :NUM_IE');
    FQuery.ParamByName('NUM_IE').AsString := aParam[1];
  end;
  if aParam[0] = 'CNPJIMEI' then
  begin
    FQuery.SQL.Add('WHERE NUM_CNPJ_MEI = :NUM_CNPJ_MEI');
    FQuery.ParamByName('NUM_CNPJ_MEI').AsString := aParam[1];
  end;
  if aParam[0] = 'IMEI' then
  begin
    FQuery.SQL.Add('WHERE COD_MEI = :COD_MEI');
    FQuery.ParamByName('COD_MEI').AsString := aParam[1];
  end;
  if aParam[0] = 'NOME' then
  begin
    FQuery.SQL.Add('WHERE DES_RAZAO_SOCIAL = :DES_RAZAO_SOCIAL');
    FQuery.ParamByName('DES_RAZAO_SOCIAL').AsString := aParam[1];
  end;
  if aParam[0] = 'FANTASIA' then
  begin
    FQuery.SQL.Add('WHERE NOM_FANTASIA = :NOM_FANTASIA');
    FQuery.ParamByName('NOM_FANTASIA').AsString := aParam[1];
  end;
  if aParam[0] = 'FILTRO' then
  begin
    FQuery.SQL.Add('WHERE ' + aParam[1]);
  end;
  if aParam[0] = 'APOIO' then
  begin
    FQuery.SQL.Clear;
    FQuery.SQL.Add('SELECT  ' + aParam[1] + ' FROM ' + TABLENAME + ' ' + aParam[2]);
  end;
  FQuery.Open;
  if FQuery.IsEmpty then
  begin
    FQuery.Connection.Close;
    FQuery.Free;
    Exit;
  end;
  Result := True;
end;

function TCadastro.SearchEmployee(iIndex: integer; sText, sFilter: String): boolean;
var
  sFiltro: String;
  fFuncoes : Common.Utils.TUtils;
begin
  Result := False;
  sFiltro := '';
  fFuncoes := Common.Utils.TUtils.Create;
  if sFilter <> '' then
  begin
    sFiltro := sFilter;
  end
  else
  begin
    if sText <> '' then
    begin
      if iIndex = 0 then
      begin
        sFiltro := '(des_razao_social like ' + QuotedStr('%' +  sText + '%') + ' or nom_fantasia like ' +
                 QuotedStr('%' + sText + '%') + ' or num_cnpj like ' + QuotedStr('%' +  sText + '%') +
                 ' or num_ie like ' + QuotedStr('%' +  sText + '%') + ' or num_iest like ' +
                 QuotedStr('%' +  sText + '%') + ' or num_cnh like ' + QuotedStr('%' +  sText + '%') +
                 ' or num_registro_cnh like ' + QuotedStr('%' +  sText + '%');
        if fFuncoes.ENumero(sText) then
        begin
          if sFiltro <> '' then
          begin
            sFiltro := sFiltro + ' or ';
          end;
          sFiltro := sFiltro + 'cod_cadastro = ' + sText;
        end;
        sFiltro := sFiltro + ')';
      end;
    end
    else
    begin
      case iIndex of
        1 : sFiltro := 'num_ie like ' + QuotedStr('%' +  sText + '%');
        2 : sFiltro := 'num_iest like ' + QuotedStr('%' +  sText + '%');
        3 : sFiltro := 'num_cnh like ' + QuotedStr('%' +  sText + '%');
        4 : sFiltro := 'num_registro_cnh like ' + QuotedStr('%' +  sText + '%');
      end;
    end;
  end;
  fFuncoes.Free;
  FQuery := FConexao.ReturnQuery;
  FQuery.SQL.Text := 'select * from view_pesquisafuncionariosv1';
  if sFiltro <> '' then
  begin
    FQuery.Filter := sFiltro;
    FQuery.Filtered := True;
  end
  else
  begin
    FQuery.Filtered := False;
    FQuery.Filter := '';
  end;
  FQuery.Open();
  if FQuery.IsEmpty then
  begin
    FQuery.Connection.Connected := False;
    FQuery.Free;
    Exit;
  end;
  Result := True;
end;

function TCadastro.SetupModel(FDCadastro: TFDQuery): Boolean;
begin
  try
    Result := False;
    FCadastro := FDCadastro.FieldByName('cod_cadastro').AsInteger;
    FFuncionario := FDCadastro.FieldByName('dom_funcionario').AsString;
    FEntregador := FDCadastro.FieldByName('cod_entregador').AsInteger;
    FDoc := FDCadastro.FieldByName('des_tipo_doc').AsString;
    FNome := FDCadastro.FieldByName('des_razao_social').AsString;
    FFantasia := FDCadastro.FieldByName('nom_fantasia').AsString;
    FCPFCNPJ := FDCadastro.FieldByName('num_cnpj').AsString;
    FIERG := FDCadastro.FieldByName('num_ie').AsString;
    FNascimento := FDCadastro.FieldByName('dat_nascimento').AsDateTime;
    FUFRG := FDCadastro.FieldByName('uf_rg').AsString;
    FEmissorRG := FDCadastro.FieldByName('nom_emissor_rg').AsString;
    FEMissaoRG := FDCadastro.FieldByName('dat_emissao_rg').AsDateTime;
    FUFNascimento := FDCadastro.FieldByName('uf_nascimento').AsString;
    FCidadeNascimento := FDCadastro.FieldByName('nom_cidade_nascimento').AsString;
    FPai := FDCadastro.FieldByName('nom_pai').AsString;
    FMae := FDCadastro.FieldByName('nom_mae').AsString;
    FIEST := FDCadastro.FieldByName('num_iest').AsString;
    FIM := FDCadastro.FieldByName('num_im').AsString;
    FCNAE := FDCadastro.FieldByName('cod_cnae').AsString;
    FCRT := FDCadastro.FieldByName('cod_crt').AsInteger;
    FNumeroCNH := FDCadastro.FieldByName('num_cnh').AsString;
    FRegistroCNH := FDCadastro.FieldByName('num_registro_cnh').AsString;
    FCategoriaCNH := FDCadastro.FieldByName('des_categoria_cnh').AsString;
    FCodigoCNH := FDCadastro.FieldByName('cod_cnh').AsString;
    FValidadeCNH := FDCadastro.FieldByName('dat_validade_cnh').AsDateTime;
    FUFCNH := FDCadastro.FieldByName('uf_cnh').AsString;
    FEmissaoCNH := FDCadastro.FieldByName('dat_emissao_cnh').AsDateTime;
    FDataPrimeiraCNH := FDCadastro.FieldByName('dat_1_habilitacao').AsDateTime;
    FURL := FDCadastro.FieldByName('des_pagina').AsString;
    FAgente := FDCadastro.FieldByName('cod_agente').AsInteger;
    FStatus := FDCadastro.FieldByName('cod_status').AsInteger;
    FObs := FDCadastro.FieldByName('des_observacao').AsString;
    FDataCadastro := FDCadastro.FieldByName('dat_cadastro').AsDateTime;
    FUsuario := FDCadastro.FieldByName('cod_usuario').AsInteger;
    FVerba := FDCadastro.FieldByName('val_verba').AsFloat;
    FCombustivel := FDCadastro.FieldByName('val_verba_combustivel').AsFloat;
    FTipoConta := FDCadastro.FieldByName('des_tipo_conta').AsString;
    FBanco := FDCadastro.FieldByName('cod_banco').AsString;
    FAgenciaConta := FDCadastro.FieldByName('cod_agencia').AsString;
    FNumeroConta := FDCadastro.FieldByName('num_conta').AsString;
    FNomeFavorecido := FDCadastro.FieldByName('nom_favorecido').AsString;
    FCPFCNPJFavorecido := FDCadastro.FieldByName('num_cpf_cnpj_favorecido').AsString;
    FFormaPagamento := FDCadastro.FieldByName('des_forma_pagamento').AsString;
    FCentroCusto := FDCadastro.FieldByName('cod_centro_custo').AsInteger;
    FRoubo := FDCadastro.FieldByName('dom_vitima_roubo').AsString;
    FQuantosRoubos := FDCadastro.FieldByName('qtd_vitima_roubo').AsInteger;
    FAcidentes := FDCadastro.FieldByName('dom_acidentes').AsString;
    FQuantosAcidentes := FDCadastro.FieldByName('qtd_acidentes').AsInteger;
    FTransporteEmpresa := FDCadastro.FieldByName('dom_transporte_empresa').AsString;
    FQuantosTransporteEmptresa := FDCadastro.FieldByName('qtd_transporte').AsInteger;
    FGV := FDCadastro.FieldByName('dom_gv').AsString;
    FDataGV := FDCadastro.FieldByName('dat_gv').AsDateTime;
    FExecutante := FDCadastro.FieldByName('nom_executante').AsString;
    FDataAlteracao := FDCadastro.FieldByName('dat_alteracao').AsDateTime;
    FChave := FDCadastro.FieldByName('des_chave').AsString;
    FGrupo := FDCadastro.FieldByName('cod_grupo').AsInteger;
    FRoteiro := FDCadastro.FieldByName('cod_roteiro').AsString;
    FMEI := FDCadastro.FieldByName('cod_mei').AsString;
    FRazaoMEI := FDCadastro.FieldByName('nom_razao_mei').AsString;
    FFantasiaMEI := FDCadastro.FieldByName('nom_fantasia_mei').AsString;
    FCNPJMEI := FDCadastro.FieldByName('num_cnpj_mei').AsString;
  finally
    Result  := True;
  end;
end;

function TCadastro.ValidateData: boolean;
var
  FFunctions : TUtils;
  aParam: array of variant;
begin
  try
    Result := False;
    FFunctions := TUtils.Create;
    if FNome = '' then
    begin
      raise Exception.Create('Informe o nome ou razão social!');
      Exit;
    end;
    if FFantasia = '' then
    begin
      raise Exception.Create('Informe o alias ou nome fantasia!');
      Exit;
    end;
    SetLength(aParam, 2);
    if FDoc = 'CPF' then
    begin
      aParam :=['CPF',FCPFCNPJ];
      if not FFunctions.CPF(FCPFCNPJ) then
      begin
        raise Exception.Create('CPf do cadastro incorreto!');
        Exit;
      end;
    end
    else if FDOC = 'CNPJ' then
    begin
      if not FFunctions.CNPJ(FCPFCNPJ) then
      begin
        raise Exception.Create('CNPJ do cadastro incorreto!');
        Exit;
      end;
    end;

    if FDoc = 'CPF' then
    begin
      if FFuncionario = 'F' then
      begin
        if Length(FIEST) > 0 then
        begin
          if not FFunctions.ValidaPIS(FIEST,False) then
          begin
            raise Exception.Create('PIS incorreto!');
            Exit;
          end;
        end;
        if FNascimento = 0 then
        begin
          raise Exception.Create('Informe a data de nascimento!');
          Exit;
        end;
        if FCRT = 0 then
        begin
          raise Exception.Create('Informe a função do funcionário!');
          Exit;
        end;
      end;
    end;
    Result := True;
  finally
    FFunctions.Free;
  end;
end;

end.
