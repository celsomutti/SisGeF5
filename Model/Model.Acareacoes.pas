unit Model.Acareacoes;

interface

uses
  Common.ENum, FireDAC.Comp.Client,System.SysUtils, DAO.Conexao, Control.Sistema;

  type
    TAcareacoes = class

    private

      FSequencia: Integer;
      FId: String;
      FData: TDateTime;
      FNossonumero: String;
      FEntregador: Integer;
      FBase: Integer;
      FDataEntrega: TDateTime;
      FMotivo: String;
      FTratativa: String;
      FApuracao: String;
      FResultado: String;
      FExtravio: Double;
      FMulta: Double;
      FEnvio: String;
      FRetorno: String;
      FObs: String;
      FFinalizar: Boolean;
      FExecutor: String;
      FManutencao: TDateTime;
      FDataRetorno: TDateTime;
      FConsumidor: String;
      FUnidade: String;
      FProduto: String;
      FBairro: String;
      FDocumento: String;
      FCEP: String;
      FRemetente: String;
      FIdentificacao: String;
      FRecebedor: String;
      FCidade: String;
      FEndereco: String;

      FConexao : TConexao;
      FAcao: TAcao;
      FNumero: String;


      function Inserir(): Boolean;
      function Alterar(): Boolean;
      function Excluir(): Boolean;


    public

      property Sequencia: Integer read FSequencia write FSequencia;
      property Id: String read FId write FId;
      property Data: TDateTime read FData write FData;
      property Nossonumero: String read FNossonumero write FNossonumero;
      property Entregador: Integer read FEntregador write FEntregador;
      property Base: Integer read FBase write FBase;
      property DataEntrega: TDateTime read FDataEntrega write FDataEntrega;
      property Motivo: String read FMotivo write FMotivo;
      property Tratativa: String read FTratativa write FTratativa;
      property Apuracao: String read FApuracao write FApuracao;
      property Resultado: String read FResultado write FResultado;
      property Extravio: Double read FExtravio write FExtravio;
      property Multa: Double read FMulta write FMulta;
      property Envio: String read FEnvio write FEnvio;
      property Retorno: String read FRetorno write FRetorno;
      property Obs: String read FObs write FObs;
      property Finalizar: Boolean read FFinalizar write FFinalizar;
      property Executor: String read FExecutor write FExecutor;
      property Manutencao: TDateTime read FManutencao write FManutencao;
      property DataRetorno: TDateTime read FDataRetorno write FDataRetorno;
      property Unidade: String read FUnidade write FUnidade;
      property Consumidor: String read FConsumidor write FConsumidor;
      property Endereco: String read FEndereco write FEndereco;
      property Numero: String read FNumero write FNumero;
      property Bairro: String read FBairro write FBairro;
      property Cidade: String read FCidade write FCidade;
      property CEP: String read FCEP write FCEP;
      property Remetente: String read FRemetente write FRemetente;
      property Produto: String read FProduto write FProduto;
      property Recebedor: String read FRecebedor write FRecebedor;
      property Identificacao: String read FIdentificacao write FIdentificacao;
      property Documento: String read FDocumento write FDocumento;
      property Acao: TAcao read FAcao write FAcao;

      constructor Create();
      function Localizar(aParam: array of variant): TFDQuery;
      function Gravar(): Boolean;
      function GetID(): Integer;
      function AcareacaoExiste(): Boolean;

    end;
  const
      TABLENAME = 'tbacareacoes';

implementation

{ TAcareacoes }


function TAcareacoes.AcareacaoExiste: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('select * from ' + TABLENAME + ' where ID_ACAREACAO = :ID_ACAREACAO and NUM_NOSSONUMERO = :NUM_NOSSONUMERO');
    FDQuery.ParamByName('ID_ACAREACAO').AsString := Id;
    FDQuery.ParamByName('NUM_NOSSONUMERO').AsString := Nossonumero;
    FDQuery.Open();
    if FDQuery.IsEmpty then Exit;
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TAcareacoes.Alterar(): Boolean;
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
                    'DOM_FINALIZAR = :DOM_FINALIZAR, DES_EXECUTOR = :DES_EXECUTOR, DAT_MANUTENCAO = :DAT_MANUTENCAO, ' +
                    'DAT_RETORNO = :DAT_RETORNO, DES_UNIDADE = :DES_UNIDADE, NOM_CONSUMIDOR = :NOM_CONSUMIDOR, ' +
                    'DES_ENDERECO = :DES_ENDERECO, NUM_ENDERECO = :NUM_ENDERECO, DES_BAIRRO = :DES_BAIRRO, ' +
                    'DES_CIDADE = :DES_CIDADE, NUM_CEP = :NUM_CEP, ' +
                    'DES_REMETENTE = :DES_REMETENTE, DES_PRODUTO = :DES_PRODUTO, NOM_RECEBEDOR = :NOM_RECEBEDOR, ' +
                    'DES_IDENTIFICACAO = :DES_IDENTIFICACAO, DES_DOCUMENTO = :DES_DOCUMENTO ' +
                    'WHERE SEQ_ACAREACAO = :SEQ_ACAREACAO;',[Id, Data,Nossonumero, Entregador, Base, DataEntrega, Motivo, Tratativa,
                    Apuracao, Resultado, Extravio, Multa, Envio, Retorno, Obs, Finalizar, Executor, Manutencao, DataRetorno,
                    Unidade, Consumidor, Endereco, Numero, Bairro, Cidade, CEP, Remetente, Produto, Recebedor, Identificacao,
                    Documento, Sequencia]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;end;

constructor TAcareacoes.Create;
begin
  FConexao := TSistemaControl.GetInstance().Conexao;
end;

function TAcareacoes.Excluir(): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where SEQ_ACAREACAO = :SEQ_ACAREACAO', [Sequencia]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TAcareacoes.GetID: Integer;
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

function TAcareacoes.Gravar: Boolean;
begin
  Result := False;
  case FAcao of
    Common.ENum.tacIncluir: Result := Inserir();
    Common.ENum.tacAlterar: Result := Alterar();
    Common.ENum.tacExcluir: Result := Excluir();
  end;
end;

function TAcareacoes.Inserir(): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    Self.Sequencia := GetID();
    FDQuery.ExecSQL('insert into ' + TABLENAME  + '(SEQ_ACAREACAO, ID_ACAREACAO, DAT_ACAREACAO, NUM_NOSSONUMERO, ' +
                    'COD_ENTREGADOR, COD_BASE, DAT_ENTREGA, DES_MOTIVO, DES_TRATATIVA, DES_APURACAO, DES_RESULTADO, ' +
                    'VAL_EXTRAVIO, VAL_MULTA, DES_ENVIO_CORRESPONDENCIA, DES_RETORNO_CORRESPONDENCIA, DES_OBSERVACOES, ' +
                    'DOM_FINALIZAR, DES_EXECUTOR, DAT_MANUTENCAO, DAT_RETORNO, DES_UNIDADE, NOM_CONSUMIDOR, DES_ENDERECO, ' +
                    'NUM_ENDERECO, DES_BAIRRO, DES_CIDADE, NUM_CEP, DES_REMETENTE, DES_PRODUTO, NOM_RECEBEDOR, DES_IDENTIFICACAO, ' +
                    'DES_DOCUMENTO) ' +
                    'VALUES ' +
                    '(:SEQ_ACAREACAO, :ID_ACAREACAO, :DAT_ACAREACAO, :NUM_NOSSONUMERO, ' +
                    ':COD_ENTREGADOR, :COD_BASE, :DAT_ENTREGA, :DES_MOTIVO, :DES_TRATATIVA, :DES_APURACAO, :DES_RESULTADO, ' +
                    ':VAL_EXTRAVIO, :VAL_MULTA, :DES_ENVIO_CORRESPONDENCIA, :DES_RETORNO_CORRESPONDENCIA, :DES_OBSERVACOES, ' +
                    ':DOM_FINALIZAR, :DES_EXECUTOR, :DAT_MANUTENCAO, :DAT_RETORNO, :DES_UNIDADE, :NOM_CONSUMIDOR, :DES_ENDERECO, ' +
                    ':NUM_ENDERECO, :DES_BAIRRO, :DES_CIDADE, :NUM_CEP, :DES_REMETENTE, :DES_PRODUTO, :NOM_RECEBEDOR, :DES_IDENTIFICACAO, ' +
                    ':DES_DOCUMENTO);', [Sequencia, Id, Data, Nossonumero, Entregador, Base, DataEntrega, Motivo, Tratativa,
                    Apuracao, Resultado, Extravio, Multa, Envio, Retorno, Obs, Finalizar, Executor, Manutencao, DataRetorno,
                    Unidade, Consumidor, Endereco, Numero, Bairro, Cidade, CEP, Remetente, Produto, Recebedor, Identificacao,
                    Documento]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;

end;

function TAcareacoes.Localizar(aParam: array of variant): TFDQuery;
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
