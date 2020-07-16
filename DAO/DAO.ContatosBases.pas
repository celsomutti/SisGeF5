unit DAO.ContatosBases;

interface

uses
  FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Model.ContatosBases;

type
  TContatosBasesDAO = class
  private
    FConexao: TConexao;
  public
    constructor Create;
    function GetSeq(AContatos: TContatosBase): Integer;
    function Inserir(AContatos: TContatosBase): Boolean;
    function Alterar(AContatos: TContatosBase): Boolean;
    function Excluir(AContatos: TContatosBase): Boolean;
    function Pesquisar(aParam: array of variant): TFDQuery;
  end;
  const
    TABLENAME = 'tbcontatosagentes';

implementation

{ TContatosBasesDAO }

uses Control.Sistema;

function TContatosBasesDAO.Alterar(AContatos: TContatosBase): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('update ' + TABLENAME + ' set des_contato = :des_contato, num_telefone = :num_telefone, des_email = :des_email ' +
                    'where cod_agente = :cod_agente and seq_contato = :seq_contato', [AContatos.Descricao, AContatos.Telefone,
                    AContatos.EMail, AContatos.CodigoDistribuidor, AContatos.Sequencia]);
    Result := True;
  finally
    FDQuery.Close;
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TContatosBasesDAO.Create;
begin
  FConexao := TSistemaControl.GetInstance.Conexao;
end;

function TContatosBasesDAO.Excluir(AContatos: TContatosBase): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    if AContatos.Sequencia = 0 then
    begin
      FDQuery.ExecSQL('delete from ' + TABLENAME + ' where cod_agente = :cod_agente',
      [AContatos.CodigoDistribuidor]);
    end
    else
    begin
      FDQuery.ExecSQL('delete from ' + TABLENAME + ' where cod_agente = :cod_agente and seq_contato = :seq_contato',
      [AContatos.CodigoDistribuidor, AContatos.Sequencia]);
    end;
    Result := True;
  finally
    FDQuery.Close;
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TContatosBasesDAO.GetSeq(AContatos: TContatosBase): Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(seq_contato),0) + 1 from ' + TABLENAME + ' where cod_agente = ' +
                  AContatos.CodigoDistribuidor.ToString);
    try
      Result := FDQuery.Fields[0].AsInteger;
    finally
      FDQuery.Close;
    end;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;end;

function TContatosBasesDAO.Inserir(AContatos: TContatosBase): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    AContatos.Sequencia := GetSeq(Acontatos);
    FDQuery.ExecSQL('insert into ' + TABLENAME + ' (cod_Agente, seq_contato, des_contato, num_telefone, des_email) ' +
                    'values (:cod_Agente, :seq_contato, :des_contato, :num_telefone, :des_email)');
    Result := True;
  finally
    FDQuery.Close;
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TContatosBasesDAO.Pesquisar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;
  FDQuery.SQL.Add('select cod_Agente, seq_contato, des_contato, num_telefone, des_email from ' + TABLENAME);
  if aParam[0] = 'AGENTE' then
  begin
    FDQuery.SQL.Add('where cod_agente = :cod_agente');
    FDQuery.ParamByName('cod_agente').AsInteger := aParam[1];
  end;
  if aParam[0] = 'DESCRICAO' then
  begin
    FDQuery.SQL.Add('where des_contato like :des_contato');
    FDQuery.ParamByName('des_contato').AsString := aParam[1];
  end;
  if aParam[0] = 'EMAIL' then
  begin
    FDQuery.SQL.Add('where des_email like :des_email');
    FDQuery.ParamByName('des_email').AsString := aParam[1];
  end;
  if aParam[0] = 'SEQUENCIA' then
  begin
    FDQuery.SQL.Add('where cod_agente = :cod_agente and seq_contato = :seq_contato');
    FDQuery.ParamByName('cod_agente').AsInteger := aParam[1];
    FDQuery.ParamByName('seq_contato').AsInteger := aParam[2];
  end;
  if aParam[0] = 'FILTRO' then
  begin
    FDQuery.SQL.Add('where ' + aParam[1]);
  end;
  if aParam[0] = 'APOIO' then
  begin
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('select  ' + aParam[1] + ' from ' + TABLENAME + ' ' + aParam[2]);
  end;
  FDQuery.Open;
  Result := FDQuery;
end;

end.
