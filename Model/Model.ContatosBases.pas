unit Model.ContatosBases;

interface

uses Common.ENum, FireDAC.Comp.Client, DAO.Conexao, System.SysUtils;

type
  TContatosBase  = class
  private
    FSequencia: Integer;
    FEMail: String;
    FDescricao: String;
    FCodigoDistribuidor: Integer;
    FTelefone: String;
    FAcao: TAcao;
    FConexao: TConexao;

    function GetSeq(): Integer;
    function Inserir(): Boolean;
    function Alterar(): Boolean;
    function Excluir(): Boolean;

  public
    property CodigoDistribuidor: Integer read FCodigoDistribuidor write FCodigoDistribuidor;
    property Sequencia: Integer read FSequencia write FSequencia;
    property Descricao: String read FDescricao write FDescricao;
    property Telefone: String read FTelefone write FTelefone;
    property EMail: String read FEMail write FEMail;
    property Acao: TAcao read FAcao write FAcao;

    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
  end;

  const
    TABLENAME = 'tbcontatosagentes';

    SQLUPDATE = 'update ' + TABLENAME + ' set des_contato = :des_contato, num_telefone = :num_telefone, des_email = :des_email ' +
                'where cod_agente = :cod_agente and seq_contato = :seq_contato';
    SQLDELETE = 'delete from ' + TABLENAME + ' where cod_agente = :cod_agente';
    SQLINSERT = 'insert into ' + TABLENAME + ' (cod_Agente, seq_contato, des_contato, num_telefone, des_email) ' +
                'values (:cod_Agente, :seq_contato, :des_contato, :num_telefone, :des_email)';
    SQLQUERY  = 'select cod_Agente, seq_contato, des_contato, num_telefone, des_email from ' + TABLENAME;

implementation

{ TContatosBase }

function TContatosBase.Alterar: Boolean;
Var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(SQLUPDATE, [FDescricao, FTelefone, FEMail, FCodigoDistribuidor, FSequencia]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TContatosBase.Excluir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    if Sequencia = 0 then
    begin
      FDQuery.ExecSQL('delete from ' + TABLENAME + ' where cod_agente = :cod_agente',
      [FCodigoDistribuidor]);
    end
    else
    begin
      FDQuery.ExecSQL('delete from ' + TABLENAME + ' where cod_agente = :cod_agente and seq_contato = :seq_contato',
      [FCodigoDistribuidor, FSequencia]);
    end;
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TContatosBase.GetSeq: Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(seq_contato),0) + 1 from ' + TABLENAME + ' where cod_agente = ' +
                  FCodigoDistribuidor.ToString);
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

function TContatosBase.Gravar: Boolean;
begin
  case FAcao of
    tacIncluir: Result := Inserir();
    tacAlterar: Result := Alterar();
    tacExcluir: Result := Excluir();
  end;
end;

function TContatosBase.Inserir: Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FSequencia := GetSeq();
    FDQuery.ExecSQL(SQLINSERT,
    [FCodigoDistribuidor, FSequencia, FDescricao, FTelefone, FEMail]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TContatosBase.Localizar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;
  FDQuery.SQL.Add(SQLQUERY);
  if aParam[0] = 'AGENTE' then
  begin
    FDQuery.SQL.Add('where cod_agente = :cod_agente');
    FDQuery.ParamByName('cod_agente').AsInteger := aParam[1];
  end
  else if aParam[0] = 'TELEFONE' then
  begin
    FDQuery.SQL.Add('where num_telefone like :num_telefone');
    FDQuery.ParamByName('num_telefone').AsString := aParam[1];
  end
  else if aParam[0] = 'EMAIL' then
  begin
    FDQuery.SQL.Add('where des_email like :des_email');
    FDQuery.ParamByName('des_email').AsString := aParam[1];
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
  FDQuery.Open;
  Result := FDQuery;
end;

end.
