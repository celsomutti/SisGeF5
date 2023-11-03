unit Model.EmpresasEnderecos;

interface

uses Common.ENum, FireDAC.Comp.Client, System.SysUtils, DAO.Conexao;

type

  TEmpresasEnderecos = class

  private

    FLogradouro: string;
    FSequencia: integer;
    FBairro: string;
    FUF: string;
    FCEP: string;
    FNumero: string;
    FPadrao: integer;
    FComplemento: string;
    FEmpresa: integer;
    FReferencia: string;
    FCidade: string;
    FTipo: string;
    FAcao: TAcao;
    FConexao: TConexao;
    FCNPJ: string;
    FIM: string;
    FIE: string;
    FQuery: TFDQuery;

    function Inserir(): Boolean;
    function Alterar(): Boolean;
    function Excluir(): Boolean;
    function GetSeq(): Integer;

  public

    property Empresa: integer read FEmpresa write FEmpresa;
    property Sequencia: integer read FSequencia write FSequencia;
    property Tipo: string read FTipo write FTipo;
    property Logradouro: string read FLogradouro write FLogradouro;
    property Numero: string read FNumero write FNumero;
    property Complemento: string read FComplemento write FComplemento;
    property Bairro: string read FBairro write FBairro;
    property Cidade: string read FCidade write FCidade;
    property UF: string read FUF write FUF;
    property CEP: string read FCEP write FCEP;
    property CNPJ: string read FCNPJ write FCNPJ;
    property IE: string read FIE write FIE;
    property IM: string read FIM write FIM;
    property Referencia: string read FReferencia write FReferencia;
    property Acao: TAcao read FAcao write FAcao;
    property Query: TFDQuery read FQuery write FQuery;

    constructor Create();
    function Localizar(aParam: array of variant): Boolean;
    function Gravar(): Boolean;

  end;

  const

    TABLENAME = 'crm_empresas_enderecos';

    SQLINSERT = 'insert into ' + TABLENAME +
                '(cod_empresa, seq_endereco, des_tipo, des_logradouro, num_logradouro, des_complemento, des_bairro, nom_cidade, ' +
                'uf_estado, num_cep, num_cnpj, num_ie, num_im, des_referencia) ' +
                'values ' +
                '(:cod_empresa, :seq_endereco, :des_tipo, :des_logradouro, :num_logradouro, :des_complemento, :des_bairro, ' +
                ':nom_cidade, :uf_estado, :num_cep, :num_cnpj, :num_ie, :num_im, :des_referencia); ';

    SQLUPDATE = 'update ' + TABLENAME + ' set ' +
                'des_tipo = :des_tipo, des_logradouro = :des_logradouro, num_logradouro = num_logradouro, ' +
                'des_complemento = :des_complemento, des_bairro = :des_bairro, nom_cidade = :nom_cidade, uf_estado = :uf_estado, ' +
                'num_cep = :num_cep, num_cnpj = :num_cnpj, num_ie = :num_ie, num_im = :num_im, des_referencia = :des_referencia ' +
                'where ' +
                'cod_empresa = :cod_empresa and seq_endereco = :seq_endereco;';

    SQLDELETE = 'delete from ' + TABLENAME +
                'where cod_empresa = :cod_empresa ';

    SQLQUERY  = 'select cod_empresa, seq_endereco, des_tipo, des_logradouro, num_logradouro, des_complemento, des_bairro, ' +
                'nom_cidade, uf_estado, num_cep, num_cnpj, num_ie, num_im, des_referencia ' +
                'from ' + TABLENAME;

implementation

{ TEmpresasEnderecos }

function TEmpresasEnderecos.Alterar: Boolean;
var
  fdQuery : TFDQuery;
begin
  try
    Result := False;
    fdQuery := FConexao.ReturnQuery;
    fdQuery.ExecSQL(SQLUPDATE,
    [FTipo, FLogradouro, FNumero, FComplemento, FBairro, FCidade, FUF, FCEP, FCNPJ, FIE, FIM, FReferencia, FEmpresa, FSequencia]);
    Result := True;
  finally
    fdQuery.Connection.Close;
    fdQuery.Free;
  end;
end;

constructor TEmpresasEnderecos.Create;
begin
  FConexao := TConexao.Create;
end;

function TEmpresasEnderecos.Excluir: Boolean;
var
  fdQuery: TFDQuery;
begin
  try
    Result := False;
    fdQuery := FConexao.ReturnQuery;
    fdQuery.ExecSQL(SQLDELETE, [FEmpresa]);
    Result := True;
  finally
    fdQuery.Connection.Close;
    fdQuery.Free;
  end;
end;

function TEmpresasEnderecos.GetSeq: Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(seq_endereco),0) + 1 from ' + TABLENAME + ' where cod_agente = ' + FEmpresa.ToString);
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

function TEmpresasEnderecos.Gravar: Boolean;
begin
  Result:= False;
  case FAcao of
    tacIndefinido: Exit;
    tacIncluir: Result := Inserir();
    tacAlterar: Result := Alterar();
    tacExcluir: Result := Excluir();
    tacPesquisa: Exit;
  end;
end;

function TEmpresasEnderecos.Inserir: Boolean;
var
  fdQuery: TFDQuery;
begin
  try
    Result := False;
    fdQuery := FConexao.ReturnQuery;
    FSequencia := GetSeq();
    fdQuery.ExecSQL(SQLINSERT,
    [FEmpresa, FSequencia, FTipo, FLogradouro, FNumero, FComplemento, FBairro, FCidade, FUF, FCEP, FCNPJ, FIE, FIM, FReferencia]);
    Result := True;
  finally
    fdQuery.Connection.Close;
    fdQuery.Free;
  end;
end;

function TEmpresasEnderecos.Localizar(aParam: array of variant): Boolean;
begin
  Result := False;
  if Length(aParam) < 2 then Exit;
  FQuery := FConexao.ReturnQuery;
  FQuery.SQL.Add(SQLQUERY);
  if aParam[0] = 'CODIGO' then
  begin
    if Length(aParam) = 2 then
    begin
      FQuery.SQL.Add('where cod_empresa = :cod_empresa');
      FQuery.ParamByName('cod_empresa').AsInteger := aParam[1];
    end
    else if Length(aParam) = 3 then
    begin
      FQuery.SQL.Add('where cod_empresa = :cod_empresa and seq_endereco = :seq_endereco');
      FQuery.ParamByName('cod_empresa').AsInteger := aParam[1];
      FQuery.ParamByName('seq_endereco').AsInteger := aParam[2];
    end;
  end
  else if aParam[0] = 'LOGRADOURO' then
  begin
    if Length(aParam) = 2 then
    begin
      FQuery.SQL.Add('where des_logradouro like :des_logradouro');
      FQuery.ParamByName('des_logradouro').AsString := aParam[1];
    end
    else if Length(aParam) = 3 then
    begin
      FQuery.SQL.Add('where des_logradouro like :des_logradouro and num_logradouro like :num_logradouro');
      FQuery.ParamByName('des_logradouro').AsString := aParam[1];
      FQuery.ParamByName('num_logradouro').AsString := aParam[2];
    end;
  end
  else if aParam[0] = 'CEP' then
  begin
    FQuery.SQL.Add('where num_cep like :num_cep');
    FQuery.ParamByName('num_cep').AsString := aParam[1];
  end
  else if aParam[0] = 'FILTRO' then
  begin
    FQuery.SQL.Add('where ' + aParam[1]);
  end
  else if aParam[0] = 'APOIO' then
  begin
    FQuery.SQL.Clear;
    FQuery.SQL.Add('select  ' + aParam[1] + ' from ' + TABLENAME + ' ' + aParam[2]);
  end;
  FQuery.Open();
  if FQuery.IsEmpty then
  begin
    FQuery.Active := False;
    Exit
  end
  else
    Result := True;
end;

end.
