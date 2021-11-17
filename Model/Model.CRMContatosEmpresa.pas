unit Model.CRMContatosEmpresa;

interface

uses Common.ENum, FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Model.CRMContatos;

  type

    TCRMContatosEmpresa = class

    private

      FContatos: TCRMContatos;
      FAcao: TAcao;
      FConexao : TConexao;
      FQuery: TFDQuery;

      function Insert(): Boolean;
      function Update(): Boolean;
      function Delete(): Boolean;

    public

      property Campos: TCRMContatos read FContatos write FContatos;
      property Query: TFDQuery read FQuery write FQuery;
      property Acao: TAcao read FAcao write FAcao;

      constructor Create();
      function GetID(iID: Integer): Integer;
      function Localizar(aParam: array of variant): Boolean;
      function Gravar(): Boolean;
      function SaveBatch(memTable: TFDMemTable): Boolean;
      function SetupClass(FDQuery: TFDQuery): Boolean;
      function ClearClass(): Boolean;
    end;
const

  TABLENAME = 'crm_empresas_contatos';

  SQLSELECT = 'select cod_empresa, seq_contato, des_contato, num_telefone, des_email ' +
              'from ' + TABLENAME + ' ';

  SQLINSERT = 'insert into ' + TABLENAME +
              '(cod_empresa, seq_contato, des_contato, num_telefone, des_email) ' +
              'values ' +
              '(:cod_empresa, :seq_contato, :des_contato, :num_telefone, :des_email);';

  SQLUPDATE = 'update ' + TABLENAME + ' set ' +
              'des_contato = :des_contato, num_telefone = :num_telefone, des_email = :des_email ' +
              'where ' +
              'cod_empresa = :cod_empresa and seq_contato = :seq_contato;';


implementation

{ TCRMContatosEmpresa }

function TCRMContatosEmpresa.ClearClass: Boolean;
begin
  Result := False;
  FContatos.Cadastro := 0;
  FContatos.Sequencia := 0;
  FContatos.Descricao := '';
  FContatos.Telefone := '';
  FContatos.EMail := '';
  Result := True;
end;

constructor TCRMContatosEmpresa.Create;
begin
  FConexao := TConexao.Create;
  FContatos := TCRMContatos.Create;
end;

function TCRMContatosEmpresa.Delete: Boolean;
var
  sSQL: String;
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    if FContatos.Sequencia = -1 then
    begin
      sSQL := 'delete from ' + TABLENAME + ' ' +
              'where cod_empresa = :pcod_empresa;';
      FDQuery.ExecSQL(sSQL,[FContatos.Cadastro]);
    end
    else
    begin
      sSQL := 'delete from ' + TABLENAME + ' ' +
              'where cod_empresa = :pcod_empresa and seq_contato = :seq_contato;';
      FDQuery.ExecSQL(sSQL,[FContatos.Cadastro, FContatos.Sequencia]);
    end;
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCRMContatosEmpresa.GetID(iID: Integer): Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(seq_contato),0) + 1 from ' + TABLENAME + ' where cod_empresa = ' + iID.toString);
    Result := FDQuery.Fields[0].AsInteger;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCRMContatosEmpresa.Gravar: Boolean;
begin
  case FAcao of
    tacIncluir: Result := Self.Insert();
    tacAlterar: Result := Self.Update();
    tacExcluir: Result := Self.Delete();
  end;
end;

function TCRMContatosEmpresa.Insert: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
//    FContatos.Sequencia := GetID(FContatos.Cadastro);
    FDQuery.ExecSQL(SQLINSERT, [FContatos.Cadastro,
                                FContatos.Sequencia,
                                FContatos.Descricao,
                                FContatos.Telefone,
                                FContatos.EMail]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCRMContatosEmpresa.Localizar(aParam: array of variant): Boolean;
begin
  Result := False;
  FQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FQuery.SQL.Clear;

  FQuery.SQL.Add(SQLSELECT);
  if aParam[0] = 'CODIGO' then
  begin
    FQuery.SQL.Add('where cod_empresa = :cod_empresa');
    FQuery.ParamByName('cod_empresa').AsInteger := aParam[1];
  end;
  if aParam[0] = 'SEQUENCIA' then
  begin
    FQuery.SQL.Add('where cod_empresa = :cod_empresa and seq_contato = :seq_contato');
    FQuery.ParamByName('cod_empresa').AsInteger := aParam[1];
    FQuery.ParamByName('seq_contato').AsInteger := aParam[2];
  end;
  if aParam[0] = 'DESCRICAO' then
  begin
    FQuery.SQL.Add('where des_contato like :des_contato');
    FQuery.ParamByName('des_contato').AsString := aParam[1];
  end;
  if aParam[0] = 'TELEFONE' then
  begin
    FQuery.SQL.Add('where num_telefone like :num_telefone');
    FQuery.ParamByName('num_telefone').AsString := aParam[1];
  end;
  if aParam[0] = 'EMAIL' then
  begin
    FQuery.SQL.Add('where des_email like :des_email');
    FQuery.ParamByName('des_email').AsString := aParam[1];
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
  if Fquery.IsEmpty then
  begin
    FQuery.Close;
    FQuery.Connection.Connected := False;
    Exit;
  end;
  Result := True;
end;

function TCRMContatosEmpresa.SaveBatch(memTable: TFDMemTable): Boolean;
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
//    FContatos.Cadastro := memTable.FieldByName('cod_empresa').AsInteger;
    FContatos.Descricao := memTable.FieldByName('des_contato').AsString;
    FContatos.Telefone := memTable.FieldByName('num_telefone').AsString;
    FContatos.EMail := memTable.FieldByName('des_email').AsString;
    Self.Acao := tacIncluir;
    if not Self.Gravar then
    begin
      Exit;
    end;
    memTable.Next;
  end;
  Result := True;
end;

function TCRMContatosEmpresa.SetupClass(FDQuery: TFDQuery): Boolean;
begin
  Result := False;
  FContatos.Cadastro := FDQuery.FieldByName('cod_empresa').AsInteger;
  FContatos.Sequencia := FDQuery.FieldByName('seq_contato').AsInteger;
  FContatos.Descricao := FDQuery.FieldByName('des_contato').AsString;
  FContatos.Telefone := FDQuery.FieldByName('des_telefone').AsString;
  FContatos.EMail := FDQuery.FieldByName('des_email').AsString;
  Result := True;
end;

function TCRMContatosEmpresa.Update: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL(SQLUPDATE, [FContatos.Descricao,
                                FContatos.Telefone,
                                FContatos.EMail,
                                FContatos.Cadastro,
                                FContatos.Sequencia]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

end.
