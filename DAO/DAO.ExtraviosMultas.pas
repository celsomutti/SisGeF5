unit DAO.ExtraviosMultas;

interface

uses System.Classes, FireDAC.Comp.Client, DAO.Conexao, Control.Sistema, Model.ExtraviosMultas;

type
  TExtraviosMultasDAO = class
  private
    FConexao : TConexao;
  public
    constructor Create;
    function GetID(): Integer;
    function Insert(aExtravios: TExtraviosMultas): Boolean;
    function Update(aExtravios: TExtraviosMultas): Boolean;
    function Delete(aExtravios: TExtraviosMultas): Boolean;
    function FindExtravio(aParam: array of Variant): TFDQuery;
    function CancelaFechamento(iExtrato: Integer): Boolean;
    function ExisteExtravio(aExtravios: TExtraviosMultas): Boolean;
    function RetornaTotaisExtravios(aParam: Array of variant): TFDQuery;
    function ExtraviosExtrato(aParam: Array of variant): TFDquery;
  end;
const
  TABLENAME = 'tbextravios';

implementation

uses System.SysUtils, Data.DB;

{ TExtraviosMultasDAO }

function TExtraviosMultasDAO.CancelaFechamento(iExtrato: Integer): Boolean;
var
 FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('UPDATE ' + TABLENAME + ' SET ID_EXTRATO = 0 WHERE ID_EXTRATO = :ID', [iExtrato]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TExtraviosMultasDAO.Create;
begin
  FConexao := TSistemaControl.GetInstance().Conexao;
end;

function TExtraviosMultasDAO.Delete(aExtravios: TExtraviosMultas): Boolean;
var
  sSQL : String;
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('DELETE FROM ' + TABLENAME + ' WHERE COD_EXTRAVIO = :ID',[aExtravios.Id]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TExtraviosMultasDAO.ExisteExtravio(aExtravios: TExtraviosMultas): Boolean;
var
  FDQuery: TFDQuery;
begin
  TRY
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('select * from ' + TABLENAME + ' where NUM_NOSSONUMERO = :NUM_NOSSONUMERO and COD_TIPO = :COD_TIPO ' +
                   'and DOM_RESTRICAO <> ' + QuotedStr('E'));
    FDQuery.ParamByName('NUM_NOSSONUMERO').AsString := AExtravios.NN;
    FDQuery.ParamByName('COD_TIPO').AsInteger := aExtravios.Tipo;
    FDQuery.Open();
    if FDQuery.IsEmpty then Exit;
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TExtraviosMultasDAO.ExtraviosExtrato(aParam: array of variant): TFDquery;
var
  sSQL: String;
  fdQuery : TFDQuery;
begin
  if aParam[0] = 1 then
  begin
    sSQL := 'select tbcodigosentregadores.cod_agente as cod_agente, '+
            'sum((tbextravios.val_total - tbextravios.val_extrato_franquia)) as val_total, ' +
            'tbagentes.des_forma_pagamento as des_forma_pagamento, ' +
            'tbagentes.nom_fantasia as nom_fantasia ' +
            'from ' + TABLENAME +
            ' join tbcodigosentregadores ' +
            'on tbcodigosentregadores.cod_entregador = tbextravios.cod_entregador ' +
            'join tbagentes on tbagentes.cod_agente = tbcodigosentregadores.cod_agente ' +
            'where tbextravios.dom_restricao = "S" and tbextravios.val_percentual_pago = 0 and ' +
            'tbagentes.des_forma_pagamento <> "NENHUMA" '  +
            'group by tbcodigosentregadores.cod_agente;';
  end
  else if aParam[0] = 2 then
  begin
    sSQL := 'select tbextravios.cod_entregador as cod_entregador, tbcodigosentregadores.cod_agente as cod_agente,' +
            'sum((tbextravios.val_total - tbextravios.val_extrato_franquia)) as val_total, ' +
            'tbagentes.nom_fantasia as nom_agente, ' +
            'tbagentes.des_forma_pagamento as des_forma_pagamento, ' +
            'tbcodigosentregadores.nom_fantasia as nom_fantasia ' +
            'from ' + TABLENAME +
            ' join tbcodigosentregadores on tbcodigosentregadores.cod_entregador = tbextravios.cod_entregador ' +
            'join tbagentes on tbagentes.cod_agente = tbcodigosentregadores.cod_agente ' +
            'where tbextravios.dom_restricao = "S" and tbextravios.val_percentual_pago = 0 and ' +
            'tbagentes.des_forma_pagamento = "NENHUMA"  ' +
            'group by tbextravios.cod_entregador;';
  end;
  fdQuery := FConexao.ReturnQuery;
  fdQuery.SQL.Add(sSQL);
  FDQuery.Open();
  Result := FDQuery;
end;

function TExtraviosMultasDAO.FindExtravio(aParam: array of Variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;
  FDQuery.SQL.Add('SELECT * FROM ' + TABLENAME);
  if aParam[0] = 'CODIGO' then
  begin
    FDQuery.SQL.Add('WHERE COD_EXTRAVIO = :CODIGO');
    FDQuery.ParamByName('CODIGO').AsInteger := aParam[1];
  end;
  if aParam[0] = 'ENTREGADOR' then
  begin
    FDQuery.SQL.Add('WHERE COD_ENTREGADOR = :ENTREGADOR');
    FDQuery.ParamByName('ENTREGADOR').AsInteger := aParam[1];
  end;
  if aParam[0] = 'DESCRICAO' then
  begin
    FDQuery.SQL.Add('WHERE DES_EXTRAVIO = :DESCRICAO');
    FDQuery.ParamByName('DESCRICAO').AsString := aParam[1];
  end;
  if aParam[0] = 'NN' then
  begin
    FDQuery.SQL.Add('WHERE NUM_NOSSONUMERO = :NN');
    FDQuery.ParamByName('NN').AsString := aParam[1];
  end;
  if aParam[0] = 'AGENTE' then
  begin
    FDQuery.SQL.Add('WHERE COD_AGENTE = :AGENTE');
    FDQuery.ParamByName('AGENTE').AsInteger := aParam[1];
  end;
  if aParam[0] = 'SEQUENCIA' then
  begin
    FDQuery.SQL.Add('WHERE SEQ_ACAREACAO = :SEQUENCIA');
    FDQuery.ParamByName('SEQUENCIA').AsInteger := aParam[1];
  end;
  if aParam[0] = 'EXTRATO' then
  begin
    FDQuery.SQL.Add('WHERE ID_EXTRATO = :EXTRATO AND VAL_PERCENTUAL_PAGO < 100');
    FDQuery.ParamByName('EXTRATO').AsInteger := aParam[1];
  end;
  if aParam[0] = 'DATA' then
  begin
    if Length(aParam) = 2 then
    begin
      FDQuery.SQL.Add('WHERE DAT_EXTRAVIO = :DATA');
      FDQuery.ParamByName('DATA').AsDate := aParam[1];
    end
    else if Length(aParam) = 3 then
    begin
      FDQuery.SQL.Add('WHERE DAT_EXTRAVIO BETWEEN :DATA AND :DATA1');
      FDQuery.ParamByName('DATA').AsDate := aParam[1];
      FDQuery.ParamByName('DATA1').AsDate := aParam[1];
    end;
  end;
  if aParam[0] = 'DATAFRANQUIA' then
  begin
    if Length(aParam) = 2 then
    begin
      FDQuery.SQL.Add('WHERE DAT_EXTRAVIO_FRANQUIA = :DATA');
      FDQuery.ParamByName('DATA').AsDate := aParam[1];
    end
    else if Length(aParam) = 3 then
    begin
      FDQuery.SQL.Add('WHERE DAT_EXTRAVIO_FRANQUIA BETWEEN :DATA AND :DATA1');
      FDQuery.ParamByName('DATA').AsDate := aParam[1];
      FDQuery.ParamByName('DATA1').AsDate := aParam[2];
    end;
  end;
  if aParam[0] = 'TIPO' then
  begin
    FDQuery.SQL.Add('WHERE NUM_NOSSONUMERO = :NN AND COD_TIPO = :TIPO');
    FDQuery.ParamByName('NN').AsString := aParam[1];
    FDQuery.ParamByName('TIPO').AsInteger := aParam[2];
  end;
  if aParam[0] = 'FILTRO' then
  begin
    FDQuery.SQL.Add(aParam[1]);
  end;
  if aParam[0] = 'APOIO' then
  begin
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT  ' + aParam[1] + ' FROM ' + TABLENAME + ' ' + aParam[2]);
  end;
  FDQuery.Open;
  FDQuery.Open();
  Result := FDQuery;
end;

function TExtraviosMultasDAO.GetID: Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(COD_EXTRAVIO),0) + 1 from ' + TABLENAME);
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

function TExtraviosMultasDAO.Insert(aExtravios: TExtraviosMultas): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    aExtravios.ID := GetID();
    FDQuery.ExecSQL('INSERT INTO ' + TABLENAME + '(COD_EXTRAVIO, DES_EXTRAVIO, NUM_NOSSONUMERO, COD_AGENTE, VAL_PRODUTO, ' +
                    'DAT_EXTRAVIO, VAL_MULTA, VAL_VERBA, VAL_TOTAL, DOM_RESTRICAO, COD_ENTREGADOR, COD_TIPO, VAL_VERBA_FRANQUIA, '+
                    'VAL_EXTRATO_FRANQUIA, ' +
                    'DOM_EXTRATO_FRANQUIA, DAT_EXTRAVIO_FRANQUIA, DES_ENVIO_CORRESPONDENCIA, DES_RETORNO_CORRESPONDENCIA, ' +
                    'DES_OBSERVACOES, VAL_PERCENTUAL_PAGO, ID_EXTRATO, SEQ_ACAREACAO, NOM_EXECUTOR, DAT_MANUTENCAO) ' +
                    'VALUES ' +
                    '(:COD_EXTRAVIO, :DES_EXTRAVIO, :NUM_NOSSONUMERO, :COD_AGENTE, :VAL_PRODUTO, :DAT_EXTRAVIO, :VAL_MULTA, ' +
                    ':VAL_VERBA, :VAL_TOTAL, :DOM_RESTRICAO, :COD_ENTREGADOR, :COD_TIPO, :VAL_VERBA_FRANQUIA, :VAL_EXTRATO_FRANQUIA,'+
                    ':DOM_EXTRATO_FRANQUIA, :DAT_EXTRAVIO_FRANQUIA, :DES_ENVIO_CORRESPONDENCIA, :DES_RETORNO_CORRESPONDENCIA, ' +
                    ':DES_OBSERVACOES, :VAL_PERCENTUAL_PAGO, :ID_EXTRATO, :SEQ_ACAREACAO, :NOM_EXECUTOR, :DAT_MANUTENCAO);',
                   [aExtravios.ID, aExtravios.Descricao, aExtravios.NN, aExtravios.Agente, aExtravios.ValorProduto,aExtravios.Data,
                   aExtravios.Multa, aExtravios.Verba, aExtravios.Total, aExtravios.Restricao, aExtravios.Entregador, aExtravios.Tipo,
                   aExtravios.VerbaFranquia, aExtravios.ValorFranquia, aExtravios.Extrato, aExtravios.DataFranquia,
                   aExtravios.EnvioCorrespondencia,
                   aExtravios.RetornoCorrespondencia, aExtravios.Obs, aExtravios.Percentual, aExtravios.IDExtrato,
                   aExtravios.Sequencia, aExtravios.Executor, aExtravios.Manutencao]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TExtraviosMultasDAO.RetornaTotaisExtravios(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  FDQuery.SQL.Clear;
  FDQuery.SQL.Add('select count(num_nossonumero) as itens, sum(val_total) as total from ' + TABLENAME);
  FDQuery.SQL.Add('where id_extrato in (' + aParam[0] + ')');
  FDQuery.Open();
  Result := FDQuery;
end;

function TExtraviosMultasDAO.Update(aExtravios: TExtraviosMultas): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('UPDATE ' + TABLENAME + ' SET ' +
                    'DES_EXTRAVIO = :DES_EXTRAVIO, NUM_NOSSONUMERO = :NUM_NOSSONUMERO, ' +
                    'COD_AGENTE = :COD_AGENTE, VAL_PRODUTO = :VAL_PRODUTO, DAT_EXTRAVIO = :DAT_EXTRAVIO, VAL_MULTA = :VAL_MULTA, ' +
                    'VAL_VERBA = :VAL_VERBA, VAL_TOTAL = :VAL_TOTAL, DOM_RESTRICAO = :DOM_RESTRICAO, ' +
                    'COD_ENTREGADOR = :COD_ENTREGADOR, COD_TIPO = :COD_TIPO, VAL_VERBA_FRANQUIA = :VAL_VERBA_FRANQUIA, ' +
                    'VAL_EXTRATO_FRANQUIA = :VAL_EXTRATO_FRANQUIA, ' +
                    'DOM_EXTRATO_FRANQUIA = :DOM_EXTRATO_FRANQUIA, DAT_EXTRAVIO_FRANQUIA = :DAT_EXTRAVIO_FRANQUIA, ' +
                    'DES_ENVIO_CORRESPONDENCIA = :DES_ENVIO_CORRESPONDENCIA, ' +
                    'DES_RETORNO_CORRESPONDENCIA = :DES_RETORNO_CORRESPONDENCIA, DES_OBSERVACOES = :DES_OBSERVACOES, ' +
                    'VAL_PERCENTUAL_PAGO = :VAL_PERCENTUAL_PAGO, ID_EXTRATO = :ID_EXTRATO, SEQ_ACAREACAO = :SEQ_ACAREACAO, ' +
                    'NOM_EXECUTOR = :NOM_EXECUTOR, DAT_MANUTENCAO = :DAT_MANUTENCAO ' +
                    'WHERE COD_EXTRAVIO = :PCOD_EXTRAVIO', [aExtravios.Descricao, aExtravios.NN, aExtravios.Agente,
                    aExtravios.ValorProduto, aExtravios.Data, aExtravios.Multa, aExtravios.Verba, aExtravios.Total,
                    aExtravios.Restricao, aExtravios.Entregador, aExtravios.Tipo, aExtravios.VerbaFranquia,
                    aExtravios.ValorFranquia, aExtravios.Extrato,
                    aExtravios.DataFranquia, aExtravios.EnvioCorrespondencia, aExtravios.RetornoCorrespondencia, aExtravios.Obs,
                    aExtravios.Percentual, aExtravios.IDExtrato, aExtravios.Sequencia, aExtravios.Executor, aExtravios.Manutencao,
                    aExtravios.ID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

end.
