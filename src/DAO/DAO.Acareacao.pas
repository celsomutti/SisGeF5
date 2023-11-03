unit DAO.Acareacao;

interface

uses
  FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Model.Acareacoes;

  type
    TAcareacaoDAO = class
    private
      FConexao : TConexao;
    public
      constructor Create;
      function GetID(): Integer;
      function Inserir(AAcareacoes: TAcareacoes): Boolean;
      function Alterar(AAcareacoes: TAcareacoes): Boolean;
      function Excluir(AAcareacoes: TAcareacoes): Boolean;
      function Pesquisar(aParam: array of variant): TFDQuery;
      function AcareacaoExiste(AAcareacoes: TAcareacoes): Boolean;
    end;
    const
      TABLENAME = 'tbacareacoes';

implementation

{ TAcareacaoDAO }

uses Control.Sistema;

function TAcareacaoDAO.AcareacaoExiste(AAcareacoes: TAcareacoes): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('select * from ' + TABLENAME + ' where ID_ACAREACAO = :ID_ACAREACAO and NUM_NOSSONUMERO = :NUM_NOSSONUMERO');
    FDQuery.ParamByName('ID_ACAREACAO').AsString := AAcareacoes.Id;
    FDQuery.ParamByName('NUM_NOSSONUMERO').AsString := AAcareacoes.Nossonumero;
    FDQuery.Open();
    if FDQuery.IsEmpty then Exit;
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TAcareacaoDAO.Alterar(AAcareacoes: TAcareacoes): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('UPDATE ' + TABLENAME + ' SET ' +
                    'ID_ACAREACAO = :ID_ACAREACAO, DAT_ACAREACAO = :DAT_ACAREACAO, ' +
                    'NUM_NOSSONUMERO = :NUM_NOSSONUMERO, COD_ENTREGADOR = :COD_ENTREGADOR, COD_BASE = :COD_BASE, ' +
                    'DAT_ENTREGA = :DAT_ENTREGA, DES_MOTIVO = :DES_MOTIVO, DES_TRATATIVA = :DES_TRATATIVA, ' +
                    'DES_APURACAO = :DES_APURACAO, DES_RESULTADO = :DES_RESULTADO, VAL_EXTRAVIO = :VAL_EXTRAVIO, ' +
                    'VAL_MULTA = :VAL_MULTA, DES_ENVIO_CORRESPONDENCIA = :DES_ENVIO_CORRESPONDENCIA, ' +
                    'DES_RETORNO_CORRESPONDENCIA = :DES_RETORNO_CORRESPONDENCIA, DES_OBSERVACOES = :DES_OBSERVACOES, ' +
                    'DOM_FINALIZAR = :DOM_FINALIZAR, DES_EXECUTOR = :DES_EXECUTOR, DAT_MANUTENCAO = :DAT_MANUTENCAO ' +
                    'WHERE SEQ_ACAREACAO = :SEQ_ACAREACAO;',
                    [AAcareacoes.Id, AAcareacoes.Data, AAcareacoes.Nossonumero, AAcareacoes.Entregador, AAcareacoes.Base,
                    AAcareacoes.DataEntrega, AAcareacoes.Motivo, AAcareacoes.Tratativa, AAcareacoes.Apuracao, AAcareacoes.Resultado,
                    AAcareacoes.Extravio, AAcareacoes.Multa, AAcareacoes.Envio, AAcareacoes.Retorno, AAcareacoes.Obs,
                    AAcareacoes.Finalizar, AAcareacoes.Executor, AAcareacoes.Manutencao, AAcareacoes.Sequencia]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TAcareacaoDAO.Create;
begin
  FConexao := TSistemaControl.GetInstance().Conexao;
end;

function TAcareacaoDAO.Excluir(AAcareacoes: TAcareacoes): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where SEQ_ACAREACAO = :SEQ_ACAREACAO', [AAcareacoes.Sequencia]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TAcareacaoDAO.GetID(): Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(SEQ_ACAREACAO),0) + 1 from ' + TABLENAME);
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

function TAcareacaoDAO.Inserir(AAcareacoes: TAcareacoes): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    AAcareacoes.Sequencia := GetID();
    FDQuery.ExecSQL('INSERT INTO ' + TABLENAME  + '(SEQ_ACAREACAO, ID_ACAREACAO, DAT_ACAREACAO, NUM_NOSSONUMERO, COD_ENTREGADOR, ' +
                    'COD_BASE, DAT_ENTREGA, DES_MOTIVO, DES_TRATATIVA, DES_APURACAO, DES_RESULTADO, VAL_EXTRAVIO, VAL_MULTA, ' +
                    'DES_ENVIO_CORRESPONDENCIA, DES_RETORNO_CORRESPONDENCIA, DES_OBSERVACOES, DOM_FINALIZAR, DES_EXECUTOR, ' +
                    'DAT_MANUTENCAO) ' +
                    'VALUES ' +
                    '(:SEQ_ACAREACAO, :ID_ACAREACAO, :DAT_ACAREACAO, :NUM_NOSSONUMERO, :COD_ENTREGADOR, :COD_BASE, :DAT_ENTREGA, ' +
                    ':DES_MOTIVO, :DES_TRATATIVA, :DES_APURACAO, :DES_RESULTADO, :VAL_EXTRAVIO, :VAL_MULTA, ' +
                    ':DES_ENVIO_CORRESPONDENCIA, :DES_RETORNO_CORRESPONDENCIA, :DES_OBSERVACOES, :DOM_FINALIZAR, :DES_EXECUTOR, ' +
                    ':DAT_MANUTENCAO);',
                    [AAcareacoes.Sequencia, AAcareacoes.Id, AAcareacoes.Data, AAcareacoes.Nossonumero, AAcareacoes.Entregador,
                    AAcareacoes.Base, AAcareacoes.DataEntrega, AAcareacoes.Motivo, AAcareacoes.Tratativa, AAcareacoes.Apuracao,
                    AAcareacoes.Resultado, AAcareacoes.Extravio, AAcareacoes.Multa, AAcareacoes.Envio, AAcareacoes.Retorno,
                    AAcareacoes.Obs, AAcareacoes.Finalizar, AAcareacoes.Executor, AAcareacoes.Manutencao]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TAcareacaoDAO.Pesquisar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;

  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'SEQUENCIA' then
  begin
    FDQuery.SQL.Add('WHERE SEQ_ACAREACAO = :SEQ_ACAREACAO');
    FDQuery.ParamByName('SEQ_ACAREACAO').AsInteger := aParam[1];
  end;
  if aParam[0] = 'ID' then
  begin
    FDQuery.SQL.Add('WHERE ID_ACAREACAO = :ID_ACAREACAO');
    FDQuery.ParamByName('ID_ACAREACAO').AsString := aParam[1];
  end;
  if aParam[0] = 'DATA' then
  begin
    FDQuery.SQL.Add('WHERE DAT_ACAREACAO = :DAT_ACAREACAO');
    FDQuery.ParamByName('WHERE DAT_ACAREACAO').AsDate := aParam[1];
  end;
  if aParam[0] = 'NN' then
  begin
    FDQuery.SQL.Add('WHERE NUM_NOSSONUMERO = :NUM_NOSSONUMERO');
    FDQuery.ParamByName('NUM_NOSSONUMERO').AsString := aParam[1];
  end;
  if aParam[0] = 'FILTRO' then
  begin
    FDQuery.SQL.Add('WHERE ' + aParam[1]);
  end;
  FDQuery.Open;
  Result := FDQuery;
end;

end.
