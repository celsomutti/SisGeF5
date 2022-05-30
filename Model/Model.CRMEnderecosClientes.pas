unit Model.CRMEnderecosClientes;

interface

uses Common.ENum, FireDAC.Comp.Client, Dialogs, DAO.Conexao, System.SysUtils, Data.DB, Model.CRMEnderecos;

  type

    TCRMEnderecosClientes = class

    private

      FModelEndereco: TCRMEnderecos;
      FAcao: TAcao;
      FConexao : TConexao;
      FQuery: TFDQuery;

      function Insert(): Boolean;
      function Update(): Boolean;
      function Delete(): Boolean;

    public

      property Query: TFDQuery read FQuery write FQuery;
      property Acao: TAcao read FAcao write FAcao;
      property Campos: TCRMEnderecos read FModelEndereco write FModelEndereco;

      constructor Create();
      function Localizar(aParam: array of variant): Boolean;
      function Gravar(): Boolean;
      function SaveBatch(memTable: TFDMemTable): Boolean;
      function SetupClass(FDQuery: TFDQuery): boolean;
      function ClearClass(): boolean;
      function GetID(iID: Integer): Integer;
    end;
  const

  TABLENAME = 'crm_clientes_enderecos';

  SQLSELECT = 'select cod_cliente, seq_endereco, des_tipo, des_logradouro, num_logradouro, des_complemento, des_bairro, ' +
              'nom_cidade, uf_estado, num_cep, num_cnpj, num_ie, num_im, des_referencia ' +
              'from ' + TABLENAME + ' ';

  SQLINSERT = 'insert into ' + TABLENAME +
              '(cod_cliente, seq_endereco, des_tipo, des_logradouro, num_logradouro, des_complemento, des_bairro, nom_cidade, ' +
              'uf_estado, num_cep, num_cnpj, num_ie, num_im, des_referencia) ' +
              'values ' +
              '(:cod_cliente, :seq_endereco, :des_tipo, :des_logradouro, :num_logradouro, :des_complemento, :des_bairro, ' +
              ':nom_cidade, :uf_estado, :num_cep, :num_cnpj, :num_ie, :num_im, :des_referencia);';

  SQLUPDATE = 'update ' + TABLENAME + ' set ' +
              'des_tipo = :des_tipo, des_logradouro = :des_logradouro, num_logradouro = :num_logradouro, ' +
              'des_complemento = :des_complemento, des_bairro = :des_bairro, nom_cidade = :nom_cidade, ' +
              'uf_estado = :uf_estado, num_cep = :num_cep, num_cnpj = :num_cnpj, num_ie = :num_ie, num_im = :num_im, ' +
              'des_referencia = :des_referencia ' +
              'where ' +
              'cod_cliente = :cod_cliente and seq_endereco = :seq_endereco;';

implementation


{ TEnderecosClientes }

uses Common.Utils;

function TCRMEnderecosClientes.ClearClass: boolean;
begin
  Result := False;
  FModelEndereco.Cadastro := 0;
  FModelEndereco.Sequencia := 0;
  FModelEndereco.Tipo := '';
  FModelEndereco.Logradouro := '';
  FModelEndereco.Numero := '';
  FModelEndereco.Complemento := '';
  FModelEndereco.Bairro := '';
  FModelEndereco.Cidade := '';
  FModelEndereco.UF := '';
  FModelEndereco.CEP := '';
  FModelEndereco.CNPJ := '';
  FModelEndereco.IE := '';
  FModelEndereco.IM := '';
  FModelEndereco.Referencia := '';
  Result := True;
end;

constructor TCRMEnderecosClientes.Create;
begin
  FConexao := TConexao.Create;
  FModelEndereco := TCRMEnderecos.Create;
end;

function TCRMEnderecosClientes.Delete: Boolean;
var
  FDQuery: TFDQuery;
  sSQL: String;
begin
  try
    Result := False;
    sSQL := '';
    FDQuery := FConexao.ReturnQuery();
    sSQL := 'delete from ' + TABLENAME + ' ' +
            'where cod_cliente = :pcod_cliente;';
    FDQuery.ExecSQL(sSQL,[FModelEndereco.Cadastro]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TCRMEnderecosClientes.GetID(iID: Integer): Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(seq_endereco),0) + 1 from ' + TABLENAME + ' where cod_cliente = ' + iID.toString);
    Result := FDQuery.Fields[0].AsInteger;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCRMEnderecosClientes.Gravar: Boolean;
begin
  case FAcao of
    tacIncluir: Result := Self.Insert();
    tacAlterar: Result := Self.Update();
    tacExcluir: Result := Self.Delete();
  end;
end;

function TCRMEnderecosClientes.Insert: Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
//    FModelEndereco.Sequencia := GetID(FModelEndereco.Cadastro);
    FDQuery.ExecSQL(SQLINSERT, [FModelEndereco.Cadastro,
                                FModelEndereco.Sequencia,
                                FModelEndereco.Tipo,
                                FModelEndereco.Logradouro,
                                FModelEndereco.Numero,
                                FModelEndereco.Complemento,
                                FModelEndereco.Bairro,
                                FModelEndereco.Cidade,
                                FModelEndereco.UF,
                                FModelEndereco.CEP,
                                FModelEndereco.CNPJ,
                                FModelEndereco.IE,
                                FModelEndereco.IM,
                                FModelEndereco.Referencia]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;end;

function TCRMEnderecosClientes.Localizar(aParam: array of variant): Boolean;
begin
  Result := False;
  FQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FQuery.SQL.Clear;

  FQuery.SQL.Add(SQLSELECT);
  if aParam[0] = 'CODIGO' then
  begin
    FQuery.SQL.Add('where cod_cliente = :cod_cliente');
    FQuery.ParamByName('cod_cliente').AsInteger := aParam[1];
  end;
  if aParam[0] = 'TIPO' then
  begin
    FQuery.SQL.Add('where cod_cliente = :cod_cadastro and  des_tipo = :des_tipo');
    FQuery.ParamByName('cod_cadastro').AsInteger := aParam[1];
    FQuery.ParamByName('des_tipo').AsString := aParam[2];
  end;
  if aParam[0] = 'CEP' then
  begin
    FQuery.SQL.Add('where num_cep like :num_cep');
    FQuery.ParamByName('NUM_CEP').AsString := aParam[1];
  end;
  if aParam[0] = 'ENDERECO' then
  begin
    FQuery.SQL.Add('where des_logradouro like :des_logradouro');
    FQuery.ParamByName('des_logradouro').AsString := aParam[1];
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
    FQuery.Active := False;
    Fquery.Connection.Connected := False;
    Exit;
  end;
  Result := True;
end;

function TCRMEnderecosClientes.SaveBatch(memTable: TFDMemTable): Boolean;
 begin
  Result := False;
  Self.Acao := tacExcluir;
  if not Self.Gravar then
  begin
    Exit;
  end;
  memTable.First;
  while not memTable.Eof do
  begin
    FModelEndereco.Tipo := memTable.FieldByName('des_tipo').AsString;
    FModelEndereco.Logradouro := memTable.FieldByName('des_logradouro').AsString;
    FModelEndereco.Numero := memTable.FieldByName('num_logradouro').AsString;
    FModelEndereco.Complemento := memTable.FieldByName('des_complemento').AsString;
    FModelEndereco.Bairro := memTable.FieldByName('des_bairro').AsString;
    FModelEndereco.Cidade := memTable.FieldByName('nom_cidade').AsString;
    FModelEndereco.UF := memTable.FieldByName('uf_estado').AsString;
    FModelEndereco.CEP := memTable.FieldByName('num_cep').AsString;
    FModelEndereco.CNPJ := memTable.FieldByName('num_cnpj').AsString;
    FModelEndereco.IE := memTable.FieldByName('num_ie').AsString;
    FModelEndereco.IM := memTable.FieldByName('num_im').AsString;
    FModelEndereco.Referencia := memTable.FieldByName('des_referencia').AsString;
    Self.Acao := tacIncluir;
    if not Self.Gravar then
    begin
      Exit;
    end;
    memTable.Next;
  end;
  Result := True;
end;

function TCRMEnderecosClientes.SetupClass(FDQuery: TFDQuery): boolean;
begin
  Result := False;
  FModelEndereco.Cadastro := FDQuery.FieldByName('cod_cliente').AsInteger;
  FModelEndereco.Sequencia := GetID(FDQuery.FieldByName('cod_cliente').AsInteger);
  FModelEndereco.Tipo := FDQuery.FieldByName('des_tipo').AsString;
  FModelEndereco.Logradouro := FDQuery.FieldByName('des_logradouro').AsString;
  FModelEndereco.Numero := FDQuery.FieldByName('num_logradouro').AsString;
  FModelEndereco.Complemento := FDQuery.FieldByName('des_complemento').AsString;
  FModelEndereco.Bairro := FDQuery.FieldByName('des_bairro').AsString;
  FModelEndereco.Cidade := FDQuery.FieldByName('nom_cidade').AsString;
  FModelEndereco.UF := FDQuery.FieldByName('uf_estado').AsString;
  FModelEndereco.CEP := FDQuery.FieldByName('num_cep').AsString;
  FModelEndereco.CNPJ := FDQuery.FieldByName('num_cnpj').AsString;
  FModelEndereco.IE := FDQuery.FieldByName('num_ie').AsString;
  FModelEndereco.IM := FDQuery.FieldByName('num_im').AsString;
  FModelEndereco.Referencia := FDQuery.FieldByName('des_referencia').AsString;
  Result := True;
end;

function TCRMEnderecosClientes.Update: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL(SQLUPDATE, [FModelEndereco.Tipo,
                                FModelEndereco.Logradouro,
                                FModelEndereco.Numero,
                                FModelEndereco.Complemento,
                                FModelEndereco.Bairro,
                                FModelEndereco.Cidade,
                                FModelEndereco.UF,
                                FModelEndereco.CEP,
                                FModelEndereco.CNPJ,
                                FModelEndereco.IE,
                                FModelEndereco.IM,
                                FModelEndereco.Referencia,
                                FModelEndereco.Cadastro,
                                FModelEndereco.Sequencia]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

end.
