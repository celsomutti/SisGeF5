unit Model.EmpresasContatos;

interface

uses Common.ENum, FireDAC.Comp.Client, DAO.Conexao, System.SysUtils;

type
  TEmpresasContatos  = class
  private
    FSequencia: Integer;
    FEMail: String;
    FDescricao: String;
    FEmpresa: Integer;
    FTelefone: String;
    FAcao: TAcao;
    FConexao: TConexao;
    FQuery: TFDQuery;

    function GetSeq(): Integer;
    function Inserir(): Boolean;
    function Alterar(): Boolean;
    function Excluir(): Boolean;

  public
    property Empresa: Integer read FEmpresa write FEmpresa;
    property Sequencia: Integer read FSequencia write FSequencia;
    property Descricao: String read FDescricao write FDescricao;
    property Telefone: String read FTelefone write FTelefone;
    property EMail: String read FEMail write FEMail;
    property Acao: TAcao read FAcao write FAcao;
    property Query: TFDQuery read FQuery write FQuery;

    function Localizar(aParam: array of variant): Boolean;
    function Gravar(): Boolean;
  end;

  const
    TABLENAME = 'crm_empresas_contatos';

    SQLUPDATE = 'update ' + TABLENAME + ' set des_contato = :des_contato, num_telefone = :num_telefone, des_email = :des_email ' +
                'where cod_empresa = :cod_empresa and seq_contato = :seq_contato';

    SQLDELETE = 'delete from ' + TABLENAME + ' where cod_empresa = :cod_empresa';

    SQLINSERT = 'insert into ' + TABLENAME + ' (cod_empresa, seq_contato, des_contato, num_telefone, des_email) ' +
                'values (:cod_Agente, :seq_contato, :des_contato, :num_telefone, :des_email)';

    SQLQUERY  = 'select cod_empresa, seq_contato, des_contato, num_telefone, des_email from ' + TABLENAME;

implementation

{ TEmpresasContatos }

function TEmpresasContatos.Alterar: Boolean;
Var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(SQLUPDATE, [FDescricao, FTelefone, FEMail, FEmpresa, FSequencia]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TEmpresasContatos.Excluir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    if Sequencia = 0 then
    begin
      FDQuery.ExecSQL(SQLDELETE, [FEmpresa]);
    end
    else
    begin
      FDQuery.ExecSQL(SQLDELETE + ' and seq_contato = :seq_contato', [FEmpresa, FSequencia]);
    end;
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TEmpresasContatos.GetSeq: Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(seq_contato),0) + 1 from ' + TABLENAME + ' where cod_empresa = ' +
                  FEmpresa.ToString);
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

function TEmpresasContatos.Gravar: Boolean;
begin
  case FAcao of
    tacIncluir: Result := Inserir();
    tacAlterar: Result := Alterar();
    tacExcluir: Result := Excluir();
  end;
end;

function TEmpresasContatos.Inserir: Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FSequencia := GetSeq();
    FDQuery.ExecSQL(SQLINSERT, [FEmpresa, FSequencia, FDescricao, FTelefone, FEMail]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TEmpresasContatos.Localizar(aParam: array of variant): Boolean;
begin
  Result := False;
  FQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FQuery.SQL.Clear;
  FQuery.SQL.Add(SQLQUERY);
  if aParam[0] = 'AGENTE' then
  begin
    FQuery.SQL.Add('where cod_empresa = :cod_empresa');
    FQuery.ParamByName('cod_empresa').AsInteger := aParam[1];
  end
  else if aParam[0] = 'TELEFONE' then
  begin
    FQuery.SQL.Add('where num_telefone like :num_telefone');
    FQuery.ParamByName('num_telefone').AsString := aParam[1];
  end
  else if aParam[0] = 'EMAIL' then
  begin
    FQuery.SQL.Add('where des_email like :des_email');
    FQuery.ParamByName('des_email').AsString := aParam[1];
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
  FQuery.Open;
  if FQuery.IsEmpty then
  begin
    FQuery.Active := False;
    FQuery.Connection.Connected := False;
    Exit;
  end
  else
    Result := True;
end;

end.
