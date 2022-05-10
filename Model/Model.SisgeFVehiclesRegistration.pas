unit Model.SisgeFVehiclesRegistration;

interface

uses Common.ENum, FireDAC.Comp.Client, DAO.Conexao, System.SysUtils, Common.Utils;

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
    FChassisVeiculo: string;
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
    property ChassisVeiculo: string read FChassisVeiculo write FChassisVeiculo;
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
    function SearchVehicle(iIndex: integer; sText, sFilter: String): boolean;
    function Save(): boolean;
    function SetupClass(): boolean;
    function GetID(): integer;
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
    SQLGETID  = 'select coalesce(max(COD_VEICULO),0) + 1 from ' + TABLENAME;

implementation

{ TModelSisGeFVehiclesRegistration }

constructor TModelSisGeFVehiclesRegistration.Create;
begin
  FConexao := TConexao.Create;
end;

function TModelSisGeFVehiclesRegistration.Delete: boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(SQLDELETE, [FID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TModelSisGeFVehiclesRegistration.GetID: integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open(SQLGETID);
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

function TModelSisGeFVehiclesRegistration.Insert: boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FID := GetID();
    FDQuery.ExecSQL(SQLINSERT,
                    [FID, FTipoDoc, FCPFCNPJ, FNomeProprietario, FDataNascimento, FMae, FPai, FIERG,
                    FUFRG, FDataEmissaoRG, FUFEndereco, FCidadeEndereco, FLogradouroEndereco, FCEPEndereco, FBairroEndereco,
                    Ftelefone1, FDescricaoTelefone1, FTelefone2, FDescricaoTelefone2, FCadastro, FMarcaVeiculo, FModeloVeiculo,
                    FPlacaVeiculo, FUFPlacaVeiculo, FMunicipioPlacaVeiculo, FTipoVeiculo, FChassisVeiculo, FAnoFabricacaoVeiculo,
                    FCorVeiculo, FRenavanVeiculo, FAnoExercicioCRLVVeiculo, FCheckRastreador, FCheckAbastecimento,
                    FNomeUsuario, FDataManutencao]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TModelSisGeFVehiclesRegistration.Save: boolean;
begin
  Result := False;
  case FAcao of
    tacIncluir: Result := Insert();
    tacAlterar: Result := Update();
    tacExcluir: Result := Delete();
  else
    Exit;
  end;
end;

function TModelSisGeFVehiclesRegistration.Search(aParam: array of variant): boolean;
begin
  REsult := False;
  FQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FQuery.SQL.Clear;

  FQuery.SQL.Add(SQLSELECT);
  if aParam[0] = 'ID' then
  begin
    FQuery.SQL.Add('WHERE COD_VEICULO = :COD_VEICULO');
    FQuery.ParamByName('COD_VEICULO').AsInteger := aParam[1];
  end;
  if aParam[0] = 'RG' then
  begin
    FQuery.SQL.Add('where um_rg = :um_rg');
    FQuery.ParamByName('um_rg').AsString := aParam[1];
  end;
  if aParam[0] = 'CPFCNPJ' then
  begin
    FQuery.SQL.Add('where num_cpf = :num_cpf');
    FQuery.ParamByName('num_cpf').AsString := aParam[1];
  end;
  if aParam[0] = 'PLACA' then
  begin
    FQuery.SQL.Add('where des_placa = :des_placa');
    FQuery.ParamByName('des_placa').AsString := aParam[1];
  end;
  if aParam[0] = 'CHASSIS' then
  begin
    FQuery.SQL.Add('where num_chassis = :num_chassis');
    FQuery.ParamByName('num_chassis').AsString := aParam[1];
  end;
  if aParam[0] = 'RENAVAN' then
  begin
    FQuery.SQL.Add('where num_renavan = :num_renavan');
    FQuery.ParamByName('num_renavan').AsString := aParam[1];
  end;
  if aParam[0] = 'CADASTRO' then
  begin
    FQuery.SQL.Add('where cod_entregador = :cod_entregador');
    FQuery.ParamByName('cod_entregador').AsInteger := aParam[1];
  end;
  if aParam[0] = 'FILTRO' then
  begin
    FQuery.SQL.Add('where ' + aParam[1]);
  end;
  if aParam[0] = 'APOIO' then
  begin
    FQuery.SQL.Clear;
    FQuery.SQL.Add('select  ' + aParam[1] + ' from ' + TABLENAME + ' ' + aParam[2]);
  end;
  FQuery.Open();
  if FQuery.IsEmpty then
  begin
    Exit;
  end;
  Result := True;
end;

function TModelSisGeFVehiclesRegistration.SearchVehicle(iIndex: integer; sText, sFilter: String): boolean;
var
  sFiltro: String;
  fFuncoes : Common.Utils.TUtils;
begin
  Result := False;
  sFiltro := '';
  fFuncoes := Common.Utils.TUtils.Create;
  if sFilter <> '' then
  begin
    sFiltro := sfilter;
  end
  else
  begin
    if sText <> '' then
    begin
      if iIndex = 0 then
      begin
        sFiltro := 'NUM_CNPJ like ' + QuotedStr('%' +  sText + '%') + ' or NOM_PROPRIETARIO like ' +
                   QuotedStr('%' + sText + '%') + ' or NUM_RG like ' + QuotedStr('%' +  sText + '%') +
                   ' or DES_RAZAO_SOCIAL like ' + QuotedStr('%' + sText + '%') + ' or DES_MARCA ' +
                   QuotedStr('%' + sText + '%') + ' or DES_MODELO like ' + QuotedStr('%' + sText + '%') +
                   ' or DES_PLACA like ' + QuotedStr('%' + sText + '%') + ' or DES_TIPO like ' +
                   QuotedStr('%' + sText + '%') + ' or NUM_CHASSIS like ' + QuotedStr('%' + sText + '%') +
                   ' or DES_COR like ' + QuotedStr('%' + sText + '%');
        if fFuncoes.ENumero(sText) then
        begin
          if sFiltro <> '' then
          begin
            sFiltro := sFiltro + ' or ';
          end;
          sFiltro := sFiltro + 'COD_VEICULO like ' + sText + ' or COD_ENTREGADOR like ' + sText +
          ' or DES_ANO like ' + sText + ' or NUM_RENAVAN like ' + sText + ' or ANO_EXERCICIO_CLRV like '
          + sText;
        end;
      end;
    end
    else
    begin
      case iIndex of
        1 : sFiltro := 'COD_VEICULO like ' + sText;
        2 : sFiltro := 'NUM_CNPJ like ' + QuotedStr('%' +  sText + '%');
        3 : sFiltro := 'NOM_PROPRIETARIO like ' + QuotedStr('%' +  sText + '%');
        4 : sFiltro := 'NUM_RG like ' + sText;
        5 : sFiltro := 'COD_ENTREGADOR like ' + sText;
        6 : sFiltro := 'DES_RAZAO_SOCIAL like ' + QuotedStr('%' +  sText + '%');
        7 : sFiltro := 'DES_PLACA like ' + QuotedStr('%' +  sText + '%');
        8 : sFiltro := 'NUM_RENAVAN like ' + sText;
      end;
    end;
  end;
  fFuncoes.Free;
  FQuery := FConexao.ReturnQuery;
  FQuery.SQL.Add('select * from viewlistaveiculos');
  if sFiltro <> '' then
  begin
    FQuery.SQL.Add('where ' + sFiltro);
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

function TModelSisGeFVehiclesRegistration.SetupClass: boolean;
begin
  Result := False;
  FTipoDoc := FQuery.FieldByName('DES_TIPO_DOC').AsString;
  FID := FQuery.FieldByName('COD_VEICULO').Asinteger;
  FDescricaoTelefone1 := FQuery.FieldByName('DES_TELEFONE_1').Asstring;
  FBairroEndereco := FQuery.FieldByName('DES_BAIRRO').Asstring;
  FPai := FQuery.FieldByName('NOM_PAI').Asstring;
  FDataNascimento := FQuery.FieldByName('DAT_NASCIMENTO').AsDateTime;
  FAnoExercicioCRLVVeiculo := FQuery.FieldByName('ANO_EXERCICIO_CLRV').Asstring;
  FMunicipioPlacaVeiculo := FQuery.FieldByName('NOM_CIDADE_PLACA').Asstring;
  FUFEndereco := FQuery.FieldByName('UF_ENDERECO').Asstring;
  FAnoFabricacaoVeiculo := FQuery.FieldByName('DES_ANO').Asstring;
  FModeloVeiculo := FQuery.FieldByName('DES_MODELO').Asstring;
  FCheckRastreador := FQuery.FieldByName('DOM_RASTREAMENTO').Asstring;
  FCEPEndereco := FQuery.FieldByName('NUM_CEP').Asstring;
  FUFRG := FQuery.FieldByName('UF_RG').Asstring;
  FCPFCNPJ := FQuery.FieldByName('NUM_CNPJ').Asstring;
  FDataManutencao := FQuery.FieldByName('DAT_MANUTENCAO').AsDateTime;
  FMarcaVeiculo := FQuery.FieldByName('DES_MARCA').Asstring;
  FIERG := FQuery.FieldByName('NUM_RG').Asstring;
  FNomeProprietario := FQuery.FieldByName('NOM_PROPRIETARIO').Asstring;
  FRenavanVeiculo := FQuery.FieldByName('NUM_RENAVAN').Asstring;
  FPlacaVeiculo := FQuery.FieldByName('DES_PLACA').Asstring;
  FTelefone2 := FQuery.FieldByName('NUM_TELEFONE_2').Asstring;
  FDataEmissaoRG := FQuery.FieldByName('DAT_EMISSAO_RG').AsDateTime;
  FNomeUsuario := FQuery.FieldByName('NOM_EXECUTOR').Asstring;
  FTipoVeiculo := FQuery.FieldByName('DES_TIPO').Asstring;
  FTelefone1 := FQuery.FieldByName('NUM_TELEFONE_1').Asstring;
  FCadastro := FQuery.FieldByName('COD_ENTREGADOR').Asinteger;
  FCidadeEndereco := FQuery.FieldByName('NOM_CIDADE').Asstring;
  FCorVeiculo := FQuery.FieldByName('DES_COR').Asstring;
  FUFPlacaVeiculo := FQuery.FieldByName('UF_PLACA').Asstring;
  FLogradouroEndereco := FQuery.FieldByName('DES_ENDERECO').Asstring;
  FMae := FQuery.FieldByName('NOM_MAE').Asstring;
  FCheckAbastecimento := FQuery.FieldByName('DOM_ABASTECIMENTO').Asstring;
  FChassisVeiculo := FQuery.FieldByName('NUM_CHASSIS').Asstring;
  FDescricaoTelefone2 := FQuery.FieldByName('DES_TELEFONE_2').Asstring;
  Result := True;
end;

function TModelSisGeFVehiclesRegistration.Update: boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
     FDQuery.ExecSQL(SQLUPDATE,
                    [FTipoDoc, FCPFCNPJ, FNomeProprietario, FDataNascimento, FMae, FPai, FIERG,
                    FUFRG, FDataEmissaoRG, FUFEndereco, FCidadeEndereco, FLogradouroEndereco, FCEPEndereco, FBairroEndereco,
                    Ftelefone1, FDescricaoTelefone1, FTelefone2, FDescricaoTelefone2, FCadastro, FMarcaVeiculo, FModeloVeiculo,
                    FPlacaVeiculo, FUFPlacaVeiculo, FMunicipioPlacaVeiculo, FTipoVeiculo, FChassisVeiculo, FAnoFabricacaoVeiculo,
                    FCorVeiculo, FRenavanVeiculo, FAnoExercicioCRLVVeiculo, FCheckRastreador, FCheckAbastecimento,
                    FNomeUsuario, FDataManutencao,FID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

end.
