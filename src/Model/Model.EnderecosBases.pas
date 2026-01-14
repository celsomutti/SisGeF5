unit Model.EnderecosBases;

interface

uses Common.ENum, FireDAC.Comp.Client, System.SysUtils, DAO.Conexao;

type
  TEnderecosBases = class
  private
    FLogradouro: string;
    FSequencia: integer;
    FBairro: string;
    FUF: string;
    FCEP: string;
    FNumero: string;
    FPadrao: integer;
    FComplemento: string;
    FBase: integer;
    FReferencia: string;
    FCidade: string;
    FTipo: string;
    FAcao: TAcao;
    FConexao: TConexao;

    function Inserir(): Boolean;
    function Alterar(): Boolean;
    function Excluir(): Boolean;
    function GetSeq(): Integer;

  public
    property Base: integer read FBase write FBase;
    property Sequencia: integer read FSequencia write FSequencia;
    property Tipo: string read FTipo write FTipo;
    property Logradouro: string read FLogradouro write FLogradouro;
    property Numero: string read FNumero write FNumero;
    property Complemento: string read FComplemento write FComplemento;
    property Padrao: integer read FPadrao write FPadrao;
    property Bairro: string read FBairro write FBairro;
    property Cidade: string read FCidade write FCidade;
    property UF: string read FUF write FUF;
    property CEP: string read FCEP write FCEP;
    property Referencia: string read FReferencia write FReferencia;
    property Acao: TAcao read FAcao write FAcao;

    constructor Create();
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;

  end;

  const
    TABLENAME = 'tbenderecosagentes';

    SQLINSERT = 'insert into ' + TABLENAME +
                '(cod_agente, seq_endereco, des_tipo, des_logradouro, num_logradouro, des_complemento, dom_correspondencia, ' +
                'des_bairro, nom_cidade, uf_estado, num_cep, des_referencia) ' +
                'values ' +
                '(:cod_agente, :seq_endereco, :des_tipo, :des_logradouro,:num_logradouro,:des_complemento, :dom_correspondencia, ' +
                ':des_bairro, :nom_cidade, :uf_estado, :num_cep, :des_referencia); ';
    SQLUPDATE = 'update ' + TABLENAME + ' set ' +
                'des_tipo = des_tipo, des_logradouro = :des_logradouro, num_logradouro = :num_logradouro, ' +
                'des_complemento = :des_complemento, dom_correspondencia = :dom_correspondencia, ' +
                'des_bairro = :des_bairro, nom_cidade = :nom_cidade, uf_estado = :uf_estado, num_cep = :num_cep, ' +
                'des_referencia = :des_referencia ' +
                'where ' +
                'cod_agente = :cod_agente and seq_endereco = :seq_endereco;';
    SQLDELETE = 'delete from ' + TABLENAME + ' ' +
                'where cod_agente = :cod_agente ';
    SQLQUERY  = 'select cod_agente, seq_endereco, des_tipo, des_logradouro, num_logradouro, des_complemento, ' +
                'dom_correspondencia, des_bairro, nom_cidade, uf_estado, num_cep, des_referencia ' +
                'from ' + TABLENAME;

implementation

{ TEnderecosBases }

function TEnderecosBases.Alterar: Boolean;
var
  fdQuery : TFDQuery;
begin
  try
    Result := False;
    fdQuery := FConexao.ReturnQuery;
    fdQuery.ExecSQL(SQLUPDATE,
    [FTipo, FLogradouro, FNumero, FComplemento, FPadrao, FBairro, FCidade, FUF, FCEP, FReferencia, FBase, FSequencia]);
    Result := True;
  finally
    fdQuery.Connection.Close;
    fdQuery.Free;
  end;
end;

constructor TEnderecosBases.Create;
begin
  FConexao := TConexao.Create;
end;

function TEnderecosBases.Excluir: Boolean;
var
  fdQuery: TFDQuery;
begin
  try
    Result := False;
    fdQuery := FConexao.ReturnQuery;
    fdQuery.ExecSQL(SQLDELETE, [FBase]);
    Result := True;
  finally
    fdQuery.Connection.Close;
    fdQuery.Free;
  end;
end;

function TEnderecosBases.GetSeq: Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(seq_endereco),0) + 1 from ' + TABLENAME + ' where cod_agente = ' + FBase.ToString);
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

function TEnderecosBases.Gravar: Boolean;
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

function TEnderecosBases.Inserir: Boolean;
var
  fdQuery: TFDQuery;
begin
  try
    Result := False;
    fdQuery := FConexao.ReturnQuery;
    FSequencia := GetSeq();
    fdQuery.ExecSQL(SQLINSERT,
    [FBase, FSequencia, FTipo, FLogradouro, FNumero, FComplemento, FPadrao, FBairro, FCidade, FUF, FCEP, FReferencia]);
    Result := True;
  finally
    fdQuery.Connection.Close;
    fdQuery.Free;
  end;
end;

function TEnderecosBases.Localizar(aParam: array of variant): TFDQuery;
var
  fdQuery: TFDQuery;
begin
  if Length(aParam) < 2 then Exit;
  fdQuery := FConexao.ReturnQuery;
  fdQuery.SQL.Add(SQLQUERY);
  if aParam[0] = 'CODIGO' then
  begin
    if Length(aParam) = 2 then
    begin
      fdQuery.SQL.Add('where cod_agente = :cod_agente');
      fdQuery.ParamByName('cod_agente').AsInteger := aParam[1];
    end
    else if Length(aParam) = 3 then
    begin
      fdQuery.SQL.Add('where cod_agente = :cod_agente and seq_endereco = :seq_endereco');
      fdQuery.ParamByName('cod_agente').AsInteger := aParam[1];
      fdQuery.ParamByName('seq_endereco').AsInteger := aParam[2];
    end;
  end
  else if aParam[0] = 'LOGRADOURO' then
  begin
    if Length(aParam) = 2 then
    begin
      fdQuery.SQL.Add('where des_logradouro like :des_logradouro');
      fdQuery.ParamByName('des_logradouro').AsString := aParam[1];
    end
    else if Length(aParam) = 3 then
    begin
      fdQuery.SQL.Add('where des_logradouro like :des_logradouro and num_logradouro like :num_logradouro');
      fdQuery.ParamByName('des_logradouro').AsString := aParam[1];
      fdQuery.ParamByName('num_logradouro').AsString := aParam[2];
    end;
  end
  else if aParam[0] = 'CEP' then
  begin
    fdQuery.SQL.Add('where num_cep like :num_cep');
    fdquery.ParamByName('num_cep').AsString := aParam[1];
  end
  else if aParam[0] = 'FILTRO' then
  begin
    FDQuery.SQL.Add('where ' + aParam[1]);
  end
  else if aParam[0] = 'APOIO' then
  begin
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('select  ' + aParam[1] + ' from ' + TABLENAME + ' ' + aParam[2]);
  end;
  fdQuery.Open();
  Result := fdQuery;
end;

end.
