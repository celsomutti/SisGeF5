unit Model.Cadastro;

interface

uses
    Common.ENum, FireDAC.Comp.Client;

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

      FAcao: TAcao;

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

      property Acao: TAcao                          read FAcao                        write FAcao;

      function Localizar(aParam: array of variant): TFDQuery;
      function Gravar(): Boolean;
      function GetID(): Integer;
      function GetField(sField: String; sKey: String; sKeyValue: String): String;
      function SetupModel(FDCadastro: TFDQuery): Boolean;

    end;

implementation

{ TCadastro }

uses DAO.Cadastro;

function TCadastro.GetField(sField, sKey, sKeyValue: String): String;
var
  cadastroDAO: TCadastroDAO;
begin
  try
    cadastroDAO := TCadastroDAO.Create;
    Result := cadastroDAO.GetField(sField, sKey, sKeyValue);
  finally
    cadastroDAO.Free;
  end;
end;

function TCadastro.GetID: Integer;
var
  cadastroDAO : TCadastroDAO;
begin
  try
    cadastroDAO := TCadastroDAO.Create;
    Result := cadastroDAO.GetId;
  finally
    cadastroDAO.Free;
  end;
end;

function TCadastro.Gravar: Boolean;
var
  cadastroDAO : TCadastroDAO;
begin
  try
    Result := False;
    cadastroDAO := TCadastroDAO.Create;
    case FAcao of
      Common.ENum.tacIncluir: Result := cadastroDAO.Inserir(Self);
      Common.ENum.tacAlterar: Result := cadastroDAO.Alterar(Self);
      Common.ENum.tacExcluir: Result := cadastroDAO.Excluir(Self);
    end;
  finally
    cadastroDAO.Free;
  end;
end;

function TCadastro.Localizar(aParam: array of variant): TFDQuery;
var
  cadastroDAO : TCadastroDAO;
  FDQuery : TFDQuery;
begin
  try
    cadastroDAO := TCadastroDAO.Create;
    FDQuery := cadastroDAO.Pesquisar(aParam);
    if not FDQuery.IsEmpty then
    begin
      FDQuery.First;
      SetupModel(FDQuery);
    end;
    Result := FDQuery;
  finally
    cadastroDAO.Free;
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
