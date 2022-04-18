unit Model.SisgeFVehiclesRegistration;

interface

uses Common.ENum, FireDAC.Comp.Client, DAO.Conexao, System.SysUtils;

type
  TModelSisGeFVehiclesRegistration = class
  private
    FTipoDoc: string;
    FID: integer;
    FDescricaoTelefone1: string;
    FBairroEndereco: string;
    FPai: string;
    FDataNascimento: TDateTime;
    FAnoExercicioCRLVVeiculo: string;
    FMunicipioPlacaVeiculo: string;
    FUFEndereco: string;
    FAnoFabricacaoVeiculo: string;
    FModeloVeiculo: string;
    FCheckRastreador: string;
    FCEPEndereco: string;
    FUFRG: string;
    FCPFCNPJ: string;
    FDataManutencao: TDateTime;
    FMarcaVeiculo: string;
    FIERG: string;
    FNomeProprietario: string;
    FRenavanVeiculo: string;
    FPlacaVeiculo: string;
    FTelefone2: string;
    FDataEmissaoRG: TDateTime;
    FNomeUsuario: string;
    FTipoVeiculo: string;
    FTelefone1: string;
    FCadastro: integer;
    FCidadeEndereco: string;
    FCorVeiculo: string;
    FUFPlacaVeiculo: string;
    FLogradouroEndereco: string;
    FMae: string;
    FCheckAbastecimento: string;
    FChassiVeiculo: string;
    FDescricaoTelefone2: string;
    FAcao: TAcao;
    FQuery: TFDQuery;
    FConexao: TConexao;
    function Insert(): boolean;
    function Update(): boolean;
    function Delete: boolean;
  public
    property ID : integer read FID write FID;
    property TipoDos: string read FTipoDoc write FTipoDoc;
    property CPFCNPJ: string read FCPFCNPJ write FCPFCNPJ;
    property NomeProprietario: string read FNomeProprietario write FNomeProprietario;
    property DataNascimento: TDateTime read FDataNascimento write FDataNascimento;
    property Mae: string read FMae write FMae;
    property Pai: string read FPai write FPai;
    property IERG: string read FIERG write FIERG;
    property UFRG: string read FUFRG write FUFRG;
    property DataEmissaoRG: TDateTime read FDataEmissaoRG write FDataEmissaoRG;
    property UFEndereco: string read FUFEndereco write FUFEndereco;
    property CidadeEndereco: string read FCidadeEndereco write FCidadeEndereco;
    property LogradouroEndereco: string read FLogradouroEndereco write FLogradouroEndereco;
    property CEPEndereco: string read FCEPEndereco write FCEPEndereco;
    property BairroEndereco: string read FBairroEndereco write FBairroEndereco;
    property Telefone1: string read FTelefone1 write FTelefone1;
    property DescricaoTelefone1: string read FDescricaoTelefone1 write FDescricaoTelefone1;
    property Telefone2: string read FTelefone2 write FTelefone2;
    property DescricaoTelefone2: string read FDescricaoTelefone2 write FDescricaoTelefone2;
    property Cadastro: integer read FCadastro write FCadastro;
    property MarcaVeiculo: string read FMarcaVeiculo write FMarcaVeiculo;
    property ModeloVeiculo: string read FModeloVeiculo write FModeloVeiculo;
    property PlacaVeiculo: string read FPlacaVeiculo write FPlacaVeiculo;
    property UFPlacaVeiculo: string read FUFPlacaVeiculo write FUFPlacaVeiculo;
    property MunicipioPlacaVeiculo: string read FMunicipioPlacaVeiculo write FMunicipioPlacaVeiculo;
    property TipoVeiculo: string read FTipoVeiculo write FTipoVeiculo;
    property ChassiVeiculo: string read FChassiVeiculo write FChassiVeiculo;
    property AnoFabricacaoVeiculo: string read FAnoFabricacaoVeiculo write FAnoFabricacaoVeiculo;
    property CorVeiculo: string read FCorVeiculo write FCorVeiculo;
    property RenavanVeiculo: string read FRenavanVeiculo write FRenavanVeiculo;
    property AnoExercicioCRLVVeiculo: string read FAnoExercicioCRLVVeiculo write FAnoExercicioCRLVVeiculo;
    property CheckRastreador: string read FCheckRastreador write FCheckRastreador;
    property CheckAbastecimento: string read FCheckAbastecimento write FCheckAbastecimento;
    property NomeUsuario: string read FNomeUsuario write FNomeUsuario;
    property DataManutencao: TDateTime read FDataManutencao write FDataManutencao;
    property Query: TFDQuery read FQuery write FQuery;
    property Acao: TAcao read FAcao write FAcao;
    constructor Create;
    function Search(aParam: array of variant): boolean;
    function Save(): boolean;
    function SetupClass(): boolean;
  end;

  const
    TABLENAME = 'tbveiculos';
    SQLSELECT = 'SELECT COD_VEICULO, DES_TIPO_DOC, NUM_CNPJ, NOM_PROPRIETARIO, DAT_NASCIMENTO, NOM_MAE, NOM_PAI, NUM_RG, UF_RG, ' +
                'DAT_EMISSAO_RG, UF_ENDERECO, NOM_CIDADE, DES_ENDERECO, NUM_CEP, DES_BAIRRO, NUM_TELEFONE_1, DES_TELEFONE_1, ' +
                'NUM_TELEFONE_2, DES_TELEFONE_2, COD_ENTREGADOR, DES_MARCA, DES_MODELO, DES_PLACA, UF_PLACA, NOM_CIDADE_PLACA, ' +
                'DES_TIPO, NUM_CHASSIS, DES_ANO, DES_COR, NUM_RENAVAN, ANO_EXERCICIO_CLRV, DOM_RASTREAMENTO, DOM_ABASTECIMENTO, ' +
                'NOM_EXECUTOR, DAT_MANUTENCAO FROM ' + TABLENAME;
    SQLINSERT = 'INSERT INTO ' + TABLENAME + '(COD_VEICULO, DES_TIPO_DOC, NUM_CNPJ, NOM_PROPRIETARIO, DAT_NASCIMENTO, NOM_MAE, ' +
                'NOM_PAI, NUM_RG, UF_RG, DAT_EMISSAO_RG, UF_ENDERECO, NOM_CIDADE, DES_ENDERECO, NUM_CEP, DES_BAIRRO, ' +
                'NUM_TELEFONE_1, DES_TELEFONE_1, NUM_TELEFONE_2, DES_TELEFONE_2, COD_ENTREGADOR, DES_MARCA, DES_MODELO, ' +
                'DES_PLACA, UF_PLACA, NOM_CIDADE_PLACA, DES_TIPO, NUM_CHASSIS, DES_ANO, DES_COR, NUM_RENAVAN, ' +
                'ANO_EXERCICIO_CLRV, DOM_RASTREAMENTO, DOM_ABASTECIMENTO, NOM_EXECUTOR, DAT_MANUTENCAO) ' +
                'VALUES ' +
                '(:COD_VEICULO, :DES_TIPO_DOC, :NUM_CNPJ, :NOM_PROPRIETARIO, :DAT_NASCIMENTO, :NOM_MAE, :NOM_PAI, :NUM_RG, ' +
                ':UF_RG, :DAT_EMISSAO_RG, :UF_ENDERECO, :NOM_CIDADE, :DES_ENDERECO, :NUM_CEP, :DES_BAIRRO, :NUM_TELEFONE_1, ' +
                ':DES_TELEFONE_1, :NUM_TELEFONE_2, :DES_TELEFONE_2, :COD_ENTREGADOR, :DES_MARCA, :DES_MODELO, :DES_PLACA, ' +
                ':UF_PLACA, :NOM_CIDADE_PLACA, :DES_TIPO, :NUM_CHASSIS, :DES_ANO, :DES_COR, :NUM_RENAVAN, :ANO_EXERCICIO_CLRV, ' +
                ':DOM_RASTREAMENTO, :DOM_ABASTECIMENTO, :NOM_EXECUTOR, :DAT_MANUTENCAO); ';
    SQLUPDATE = 'UPDATE ' + TABLENAME + 'SET COD_VEICULO = :COD_VEICULO, DES_TIPO_DOC = :DES_TIPO_DOC, NUM_CNPJ = :NUM_CNPJ, ' +
                'NOM_PROPRIETARIO = :NOM_PROPRIETARIO, DAT_NASCIMENTO = :DAT_NASCIMENTO, NOM_MAE = :NOM_MAE, NOM_PAI = :NOM_PAI, ' +
                'NUM_RG = :NUM_RG, UF_RG = :UF_RG, DAT_EMISSAO_RG = :DAT_EMISSAO_RG, UF_ENDERECO = :UF_ENDERECO, ' +
                'NOM_CIDADE = :NOM_CIDADE, DES_ENDERECO = :DES_ENDERECO, NUM_CEP = :NUM_CEP, DES_BAIRRO = :DES_BAIRRO, ' +
                'NUM_TELEFONE_1 = :NUM_TELEFONE_1, DES_TELEFONE_1 = :DES_TELEFONE_1, NUM_TELEFONE_2 = :NUM_TELEFONE_2, ' +
                'DES_TELEFONE_2 = :DES_TELEFONE_2, COD_ENTREGADOR = :COD_ENTREGADOR, DES_MARCA = :DES_MARCA, ' +
                'DES_MODELO = :DES_MODELO, DES_PLACA = :DES_PLACA, UF_PLACA = :UF_PLACA, NOM_CIDADE_PLACA = :NOM_CIDADE_PLACA, ' +
                'DES_TIPO = :DES_TIPO, NUM_CHASSIS = :NUM_CHASSIS, DES_ANO = :DES_ANO, DES_COR = :DES_COR, ' +
                'NUM_RENAVAN = :NUM_RENAVAN, ANO_EXERCICIO_CLRV = :ANO_EXERCICIO_CLRV, DOM_RASTREAMENTO = :DOM_RASTREAMENTO, ' +
                'DOM_ABASTECIMENTO = :DOM_ABASTECIMENTO, NOM_EXECUTOR = :NOM_EXECUTOR, DAT_MANUTENCAO = :DAT_MANUTENCAO ' +
                'WHERE COD_VEICULO = :COD_VEICULO; ';
    SQLDELETE = 'DELETE FROM ' + TABLENAME + ' WHERE COD_VEICULO';

implementation

{ TModelSisGeFVehiclesRegistration }

constructor TModelSisGeFVehiclesRegistration.Create;
begin
  FConexao := TConexao.Create;
end;

function TModelSisGeFVehiclesRegistration.Delete: boolean;
begin

end;

function TModelSisGeFVehiclesRegistration.Insert: boolean;
begin

end;

function TModelSisGeFVehiclesRegistration.Save: boolean;
begin

end;

function TModelSisGeFVehiclesRegistration.Search(aParam: array of variant): boolean;
begin

end;

function TModelSisGeFVehiclesRegistration.SetupClass: boolean;
begin

end;

function TModelSisGeFVehiclesRegistration.Update: boolean;
begin

end;

end.
