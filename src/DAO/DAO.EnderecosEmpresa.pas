unit DAO.EnderecosEmpresa;

interface

uses FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Control.Sistema, Model.EnderecosEmpresa;

type
  TEnderecosEmpresaDAO = class
  private
    FConexao : TConexao;
  public
    constructor Create();
    function GetID(iID: Integer): Integer;
    function Insert(aEnderecos: TEnderecosEmpresa): Boolean;
    function Update(aEnderecos: TEnderecosEmpresa): Boolean;
    function Delete(aEnderecos: TEnderecosEmpresa): Boolean;
    function Localizar(aParam: Array of variant): TFDQuery;
  end;
const
  TABLENAME = 'cadastro_enderecos_empresa';

implementation

function TEnderecosEmpresaDAO.Insert(aEnderecos: TEnderecosEmpresa): Boolean;
var
  sSQL: String;
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    aEnderecos.Sequencia := GetID(aEnderecos.ID);
    sSQL := 'INSERT INTO ' + TABLENAME + '(' +
    'ID_EMPRESA, SEQ_ENDERECO, DES_TIPO_ENDERECO, NUM_CEP, DES_LOGRADOURO, NUM_LOGRADOURO, DES_COMPLEMENTO, NOM_BAIRRO, ' +
    'NOM_CIDADE, UF_ESTADO, NUM_CNPJ, NUM_IE, NUM_IEST, NUM_IM) ' +
    'VALUES (' +
    ':pID_EMPRESA, :pSEQ_ENDERECO, :pDES_TIPO_ENDERECO, :pNUM_CEP, :pDES_LOGRADOURO, :pNUM_LOGRADOURO, :pDES_COMPLEMENTO, ' +
    ':pNOM_BAIRRO, :pNOM_CIDADE, :pUF_ESTADO, :pNUM_CNPJ, :pNUM_IE, :pNUM_IEST, :pNUM_IM);';
    FDQuery.ExecSQL(sSQL,[aEnderecos.ID, aEnderecos.Sequencia, aEnderecos.Tipo, aEnderecos.CEP, aEnderecos.Logradouro,
                            aEnderecos.Numero, aEnderecos.Complemento, aEnderecos.Bairro, aEnderecos.Cidade, aEnderecos.UF,
                            aEnderecos.CNPJ, aEnderecos.IE, aEnderecos.IEST, aEnderecos.IM]);
    Result := True;
  finally
    FDQuery.Free;
  end;
end;

function TEnderecosEmpresaDAO.Localizar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;

  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'ID' then
  begin
    FDQuery.SQL.Add('WHERE ID_EMPRESA = :ID_EMPRESA');
    FDQuery.ParamByName('ID_EMPRESA').AsInteger := aParam[1];
  end;
  if aParam[0] = 'SEQUENCIA' then
  begin
    FDQuery.SQL.Add('WHERE ID_EMPRESA = :ID_EMPRESA AND SEQ_ENDERECO = :SEQ_ENDERECO');
    FDQuery.ParamByName('ID_EMPRESA').AsInteger := aParam[1];
    FDQuery.ParamByName('SEQ_ENDERECO').AsInteger := aParam[2];
  end;
  if aParam[0] = 'CNPJ' then
  begin
    FDQuery.SQL.Add('WHERE NUM_CNPJ = :NUM_CNPJ');
    FDQuery.ParamByName('NUM_CNPJ').AsString := aParam[1];
  end;
  if aParam[0] = 'IE' then
  begin
    FDQuery.SQL.Add('WHERE NUM_IE = :NUM_IE');
    FDQuery.ParamByName('NUM_IE').AsString := aParam[1];
  end;
  if aParam[0] = 'IM' then
  begin
    FDQuery.SQL.Add('WHERE NUM_IM = :NUM_IM');
    FDQuery.ParamByName('NUM_IM').AsString := aParam[1];
  end;
  if aParam[0] = 'TIPO' then
  begin
    FDQuery.SQL.Add('WHERE ID_EMPRESA = :ID_EMPRESA AND DES_TIPO_ENDERECO = :DES_TIPO_ENDERECO');
    FDQuery.ParamByName('ID_EMPRESA').AsInteger := aParam[1];
    FDQuery.ParamByName('DES_TIPO_ENDERECO').AsString := aParam[2];
  end;
  if aParam[0] = 'CEP' then
  begin
    FDQuery.SQL.Add('WHERE NUM_CEP LIKE :NUM_CEP');
    FDQuery.ParamByName('NUM_CEP').AsString := aParam[1];
  end;
  if aParam[0] = 'ENDERECO' then
  begin
    FDQuery.SQL.Add('WHERE DES_LOGRADOURO LIKE :DES_LOGRADOURO');
    FDQuery.ParamByName('DES_LOGRADOURO').AsString := aParam[1];
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
  FDQuery.Open();
  Result := FDQuery;
end;

function TEnderecosEmpresaDAO.Update(aEnderecos: TEnderecosEmpresa): Boolean;
var
  sSQL: String;
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    sSQL := 'UPDATE '  + TABLENAME + ' SET ' +
    'DES_TIPO_ENDERECO = :pDES_TIPO_ENDERECO, NUM_CEP = :pNUM_CEP, DES_LOGRADOURO := :pDES_LOGRADOURO, ' +
    'NUM_LOGRADOURO = :pNUM_LOGRADOURO, DES_COMPLEMENTO = :pDES_COMPLEMENTO, ' +
    'NOM_BAIRRO = :pNOM_BAIRRO, NOM_CIDADE = :pNOM_CIDADE, ' +
    'UF_ESTADO = :pUF_ESTADO, NUM_CNPJ = :pNUM_CNPJ, NUM_IE = :pNUM_IE, NUM_IEST = :pNUM_IEST, NUM_IM = :pNUM_IM ' +
    'WHERE ID_EMPRESA = :pID_EMPRESA AND SEQ_ENDERECO = :pSEQ_ENDERECO;';
    FDQuery.ExecSQL(sSQL,[aEnderecos.Tipo, aEnderecos.CEP, aEnderecos.Logradouro,
                            aEnderecos.Numero, aEnderecos.Complemento, aEnderecos.Bairro, aEnderecos.Cidade, aEnderecos.UF,
                            aEnderecos.CNPJ, aEnderecos.IE, aEnderecos.IEST, aEnderecos.IM, aEnderecos.ID, aEnderecos.Sequencia]);
    Result := True;
  finally
    FDQuery.Free;
  end;
end;

constructor TEnderecosEmpresaDAO.Create;
begin
  Fconexao := TConexao.Create;
end;

function TEnderecosEmpresaDAO.Delete(aEnderecos: TEnderecosEmpresa): Boolean;
var
  FDQuery: TFDQuery;
  sSQL: String;
begin
  try
    Result := False;
    sSQL := '';
    FDQuery := FConexao.ReturnQuery();
    if aEnderecos.Sequencia = -1 then
    begin
      sSQL := 'DELETE FROM ' + TABLENAME + ' ' +
              'WHERE ID_EMPRESA = :pID_EMPRESA;';
      FDQuery.ExecSQL(sSQL,[aEnderecos.ID]);
    end
    else
    begin
      sSQL := 'DELETE FROM ' + TABLENAME + ' ' +
              'WHERE ID_EMPRESA = :pID_EMPRESA AND SEQ_ENDERECO = :pSEQ_ENDERECO;';
      FDQuery.ExecSQL(sSQL,[aEnderecos.ID, aEnderecos.Sequencia]);
    end;
    Result := True;
  finally
    FDquery.Free;
  end;
end;

function TEnderecosEmpresaDAO.GetID(iID: Integer): Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(SEQ_ENDERECO),0) + 1 from ' + TABLENAME + ' WHERE ID_EMPRESA = ' + iID.toString);
    try
      Result := FDQuery.Fields[0].AsInteger;
    finally
      FDQuery.Close;
    end;
  finally
    FDQuery.Free;
  end;
end;

end.
