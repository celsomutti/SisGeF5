unit DAO.Devolucao;

interface

uses FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Model.Devolucao;

type
  TDevolucaoDAO = class
  private
    FConexao: TConexao;
  public
    constructor Create;
    function GetID(): Integer;
    function Inserir(ADevolucao: TDevolucao): Boolean;
    function Alterar(ADevolucao: TDevolucao): Boolean;
    function Excluir(ADevolucao: TDevolucao): Boolean;
    function Pesquisar(aParam: array of variant): TFDQuery;
  end;
  const
    TABLENAME = 'tbdevolucoes';

implementation

uses Control.Sistema;

{ TDevolucaoDAO }

function TDevolucaoDAO.Alterar(ADevolucao: TDevolucao): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('update ' + TABLENAME + ' set DAT_EXPEDICAO = :DAT_EXPEDICAO, ' +
                    'NUM_LACRE = :NUM_LACRE, NUM_NOSSONUMERO = :NUM_NOSSONUMERO, QTD_VOLUMES = :QTD_VOLUMES, ' +
                    'COD_AGENTE = :COD_AGENTE, NOM_MOTORISTA = :NOM_MOTORISTA, DAT_RETIRADA = :DAT_RETIRADA, ' +
                    'NOM_RECEBEDOR = :NOM_RECEBEDOR, DAT_RECEPCAO = :DAT_RECEPCAO, NOM_CONFERENTE = :NOM_CONFERENTE, ' +
                    'DAT_CONFERENCIA = :DAT_CONFERENCIA,QTD_PESO_CONTAINER = :QTD_PESO_CONTAINER, ' +
                    'COD_STATUS_CONTAINER = :COD_STATUS_CONTAINER, DES_DIVERGENCIA = :DES_DIVERGENCIA, ' +
                    'DES_DEVOLUCAO = :DES_DEVOLUCAO, COD_STATUS_OBJETO = :COD_STATUS_OBJETO, ' +
                    'NUM_PROTOCOLO = :NUM_PROTOCOLO, DOM_DESCOBERTO = :DOM_DESCOBERTO, DES_OCORRENCIAS = :DES_OCORRENCIAS, ' +
                    'NOM_USUARIO = :NOM_USUARIO, DAT_MANUTENCAO = :DAT_MANUTENCAO ' +
                    'where SEQ_DEVOLUCAO = :SEQ_DEVOLUCAO AND SEQ_OBJETO = :SEQ_OBJETO;',[ADevolucao.Expedicao,
                    ADevolucao.Lacre, ADevolucao.NossoNumero, ADevolucao.Volumes, ADevolucao.Agente, ADevolucao.Motorista,
                    ADevolucao.Retirada, ADevolucao.Recebedor, ADevolucao.Recepcao, ADevolucao.Conferente, ADevolucao.Conferencia,
                    ADevolucao.PesoContainer, ADevolucao.StatusContainer, ADevolucao.Divergencia,
                    ADevolucao.Descricao, ADevolucao.Statusobjeto, ADevolucao.Protocolo, ADevolucao.Descoberto,
                    ADevolucao.Ocorrencia, ADevolucao.Usuario, ADevolucao.Manutencao, ADevolucao.Container, ADevolucao.Objeto]);
    Result := True;
  finally
    FDQuery.Free;
  end;
end;

constructor TDevolucaoDAO.Create;
begin
  FConexao := TSistemaControl.GetInstance.Conexao;
end;

function TDevolucaoDAO.Excluir(ADevolucao: TDevolucao): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where SEQ_DEVOLUCAO = :SEQ_DEVOLUCAO AND SEQ_OBJETO = :SEQ_OBJETO;',
                   [aDevolucao.Container, aDevolucao.Objeto]);
    Result := True;
  finally
    FDQuery.Free;
  end;
end;

function TDevolucaoDAO.GetID: Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(SEQ_DEVOLUCAO),0) + 1 from ' + TABLENAME);
    try
      Result := FDQuery.Fields[0].AsInteger;
    finally
      FDQuery.Close;
    end;
  finally
    FDQuery.Free;
  end;
end;

function TDevolucaoDAO.Inserir(ADevolucao: TDevolucao): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('insert into ' + TABLENAME + '(SEQ_OBJETO, SEQ_DEVOLUCAO, DAT_EXPEDICAO, NUM_LACRE, NUM_NOSSONUMERO, ' +
    'QTD_VOLUMES, COD_AGENTE, NOM_MOTORISTA, DAT_RETIRADA, NOM_RECEBEDOR, DAT_RECEPCAO, NOM_CONFERENTE, DAT_CONFERENCIA, ' +
    'QTD_PESO_CONTAINER, COD_STATUS_CONTAINER, DES_DIVERGENCIA, DES_DEVOLUCAO, COD_STATUS_OBJETO, NUM_PROTOCOLO, ' +
    'DOM_DESCOBERTO, DES_OCORRENCIAS, NOM_USUARIO, DAT_MANUTENCAO) ' +
    'values ' +
    '(:SEQ_OBJETO, :SEQ_DEVOLUCAO, :DAT_EXPEDICAO, :NUM_LACRE, :NUM_NOSSONUMERO, :QTD_VOLUMES, :COD_AGENTE, :NOM_MOTORISTA, ' +
    ':DAT_RETIRADA, :NOM_RECEBEDOR, :DAT_RECEPCAO, :NOM_CONFERENTE, :DAT_CONFERENCIA, :QTD_PESO_CONTAINER, ' +
    ':COD_STATUS_CONTAINER, :DES_DIVERGENCIA, :DES_DEVOLUCAO, :COD_STATUS_OBJETO, :NUM_PROTOCOLO, :DOM_DESCOBERTO, ' +
    ':DES_OCORRENCIAS, :NOM_USUARIO, :DAT_MANUTENCAO);',[ADevolucao.Objeto, ADevolucao.Container, ADevolucao.Expedicao,
    ADevolucao.Lacre, ADevolucao.NossoNumero, ADevolucao.Volumes, ADevolucao.Agente, ADevolucao.Motorista,
    ADevolucao.Retirada, ADevolucao.Recebedor, ADevolucao.Recepcao, ADevolucao.Conferente, ADevolucao.Conferencia,
    ADevolucao.PesoContainer, ADevolucao.StatusContainer, ADevolucao.Divergencia,
    ADevolucao.Descricao, ADevolucao.Statusobjeto, ADevolucao.Protocolo, ADevolucao.Descoberto,
    ADevolucao.Ocorrencia, ADevolucao.Usuario, ADevolucao.Manutencao]);
    Result := True;
  finally
    FDQuery.Free;
  end;
end;

function TDevolucaoDAO.Pesquisar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;

  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'CONTAINER' then
  begin
    FDQuery.SQL.Add('WHERE SEQ_DEVOLUCAO = :SEQ_DEVOLUCAO');
    FDQuery.ParamByName('SEQ_DEVOLUCAO').AsInteger := aParam[1];
  end;
  if aParam[0] = 'OBJETO' then
  begin
    FDQuery.SQL.Add('WHERE SEQ_DEVOLUCAO = :SEQ_DEVOLUCAO AND SEQ_OBJETO = :SEQ_OBJETO');
    FDQuery.ParamByName('SEQ_DEVOLUCAO').AsInteger := aParam[1];
    FDQuery.ParamByName('SEQ_OBJETO').AsInteger := aParam[2];
  end;
  if aParam[0] = 'EXPEDICAO' then
  begin
    FDQuery.SQL.Add('WHERE DAT_EXPEDICAO = :DAT_EXPEDICAO');
    FDQuery.ParamByName('WHERE DAT_EXPEDICAO').AsDate := aParam[1];
  end;
  if aParam[0] = 'LACRE' then
  begin
    FDQuery.SQL.Add('WHERE COD_AGENTE = :COD_AGENTE AND NUM_LACRE = :NUM_LACRE');
    FDQuery.ParamByName('COD_AGENTE').AsInteger := aParam[1];
    FDQuery.ParamByName('NUM_LACRE').AsString := aParam[2];
  end;
  if aParam[0] = 'NN' then
  begin
    FDQuery.SQL.Add('WHERE COD_AGENTE = :COD_AGENTE AND NUM_NOSSONUMERO = :NUM_NOSSONUMERO');
    FDQuery.ParamByName('COD_AGENTE').AsInteger := aParam[1];
    FDQuery.ParamByName('NUM_NOSSONUMERO').AsString := aParam[2];
  end;
  if aParam[0] = 'AGENTE' then
  begin
    FDQuery.SQL.Add('WHERE COD_AGENTE = :COD_AGENTE');
    FDQuery.ParamByName('COD_AGENTE').AsInteger := aParam[1];
  end;
  if aParam[0] = 'STATUSAGENTE' then
  begin
    FDQuery.SQL.Add('WHERE COD_AGENTE = :COD_AGENTE AND COD_STATUS_CONTAINER = :COD_STATUS_CONTAINER');
    FDQuery.ParamByName('COD_AGENTE').AsInteger := aParam[1];
    FDQuery.ParamByName('COD_STATUS_CONTAINER').AsInteger := aParam[2];
  end;
  if aParam[0] = 'STATUSOBJETO' then
  begin
    FDQuery.SQL.Add('WHERE COD_AGENTE = :COD_AGENTE AND COD_STATUS_CONTAINER = :COD_STATUS_CONTAINER');
    FDQuery.ParamByName('COD_AGENTE').AsInteger := aParam[1];
    FDQuery.ParamByName('COD_STATUS_OBJETO').AsInteger := aParam[2];
  end;
  if aParam[0] = 'PROTOCOLO' then
  begin
    FDQuery.SQL.Add('WHERE COD_AGENTE = :COD_AGENTE AND NUM_PROTOCOLO = :NUM_PROTOCOLO');
    FDQuery.ParamByName('COD_AGENTE').AsInteger := aParam[1];
      FDQuery.ParamByName('NUM_PROTOCOLO').AsString := aParam[2];
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
  FDQuery.Open;
  Result := FDQuery;
end;

end.
