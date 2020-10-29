unit DAO.CadastroContatos;

interface

uses FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Model.CadastroContatos;

type
  TCadastroContatosDAO = class
  private
    FConexao : TConexao;
  public
    constructor Create();
    function GetID(iID: Integer): Integer;
    function Insert(aContatos: TCadastroContatos): Boolean;
    function Update(aContatos: TCadastroContatos): Boolean;
    function Delete(aContatos: TCadastroContatos): Boolean;
    function Localizar(aParam: Array of variant): TFDQuery;
  end;
const
  TABLENAME = 'cadastro_contatos';

implementation

function TCadastroContatosDAO.GetID(iID: Integer): Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(SEQ_CONTATO),0) + 1 from ' + TABLENAME + ' WHERE ID_CADASTRO = ' + iID.toString);
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

function TCadastroContatosDAO.Insert(aContatos: TCadastroContatos): Boolean;
var
  sSQL: String;
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    aContatos.Sequencia := GetID(aContatos.ID);
    sSQL := 'INSERT INTO ' + TABLENAME + '(' +
            'ID_CADASTRO, SEQ_CONTATO, DES_CONTATO, DES_TELEFONE, DES_EMAIL) ' +
            'VALUES (' +
            ':pID_CADASTRO, :pSEQ_CONTATO, :pDES_CONTATO, :pDES_TELEFONE, :pDES_EMAIL);';
    FDQuery.ExecSQL(sSQL,[aContatos.ID, aContatos.Sequencia, aContatos.Descricao, aContatos.Telefone, aContatos.EMail]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCadastroContatosDAO.Localizar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;

  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'ID' then
  begin
    FDQuery.SQL.Add('WHERE ID_CADASTRO = :ID_CADASTRO');
    FDQuery.ParamByName('ID_CADASTRO').AsInteger := aParam[1];
  end;
  if aParam[0] = 'SEQUENCIA' then
  begin
    FDQuery.SQL.Add('WHERE ID_CADASTRO = :ID_CADASTRO AND SEQ_CONTATO = :SEQ_CONTATO');
    FDQuery.ParamByName('ID_CADASTRO').AsInteger := aParam[1];
    FDQuery.ParamByName('SEQ_ENDERECO').AsInteger := aParam[2];
  end;
  if aParam[0] = 'DESCRICAO' then
  begin
    FDQuery.SQL.Add('WHERE DES_CONTATO LIKE :DES_CONTATO');
    FDQuery.ParamByName('DES_CONTATO').AsString := aParam[1];
  end;
  if aParam[0] = 'TELEFONE' then
  begin
    FDQuery.SQL.Add('WHERE DES_TELEFONE LIKE :DES_TELEFONE');
    FDQuery.ParamByName('DES_TELEFONE').AsString := aParam[1];
  end;
  if aParam[0] = 'EMAIL' then
  begin
    FDQuery.SQL.Add('WHERE DES_EMAIL LIKE :DES_EMAIL');
    FDQuery.ParamByName('DES_EMAIL').AsString := aParam[1];
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

function TCadastroContatosDAO.Update(aContatos: TCadastroContatos): Boolean;
var
  sSQL: String;
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    sSQL := 'UPDATE ' + TABLENAME + ' SET ' +
            'DES_CONTATO = :pDES_CONTATO, DES_TELEFONE = :pDES_TELEFONE, DES_EMAIL = :pDES_EMAIL ' +
            'WHERE ID_CADASTRO = :pID_CADASTRO AND SEQ_CONTATO = :pSEQ_CONTATO;';
    FDQuery.ExecSQL(sSQL,[aContatos.Descricao, aContatos.Telefone, aContatos.EMail,
                             aContatos.ID, aContatos.Sequencia]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TCadastroContatosDAO.Create;
begin
  FConexao := TConexao.Create;
end;

function TCadastroContatosDAO.Delete(aContatos: TCadastroContatos): Boolean;
var
  sSQL: String;
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    if aContatos.Sequencia = -1 then
    begin
      sSQL := 'DELETE FROM ' + TABLENAME + ' ' +
              'WHERE ID_CADASTRO = :pID_CADASTRO;';
      FDQuery.ExecSQL(sSQL,[aContatos.ID]);
    end
    else
    begin
      sSQL := 'DELETE FROM ' + TABLENAME + ' ' +
              'WHERE ID_CADASTRO = :pID_CADASTRO AND SEQ_CONTATO = :pSEQ_CONTATO;';
      FDQuery.ExecSQL(sSQL,[aContatos.ID, aContatos.Sequencia]);
    end;
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;




end.
