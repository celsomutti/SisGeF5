unit Model.SisGeFOcorrenciasJornal;

interface

uses Common.ENum, FireDAC.Comp.Client, DAO.Conexao, System.SysUtils, Common.Utils, System.DateUtils;

type
  TModelSisGeFOcorrenciasJotnal = class
    private
      FAcao: TAcao;
      FDataDesconto: TDate;
      FDescricaoApuracao: string;
      FEnderecoAssinatura: string;
      FCodigoResultado: integer;
      FValorOcorrencia: Double;
      FCodigoOrigem: integer;
      FCodigoProduto: string;
      FDomProcessado: string;
      FDescricaoOcorrencia: string;
      FDescricaoRoteiro: string;
      FDescricaoRetorno: string;
      FCodigoOcorrencia: integer;
      FQuery: TFDQuery;
      FId: integer;
      FCodigoAssinatura: string;
      FStatus: integer;
      FNomeAssinante: string;
      FDomReincidente: string;
      FLog: string;
      FMensagem: string;
      FQuantidadeOcorrencia: integer;
      FDescricaoAnexo: string;
      FDomImpressao: string;
      FCodigoEntregador: integer;
      FData: TDateTime;
      FObservacoes: string;
      FConnection : TConexao;
      function Insert(): boolean;
      function Update(): boolean;
      function Delete: boolean;
    public
      property Id: integer read FId write FId;
      property Data: TDateTime read FData write FData;
      property CodigoAssinatura: string read FCodigoAssinatura write FCodigoAssinatura;
      property NomeAssinante: string read FNomeAssinante write FNomeAssinante;
      property DescricaoRoteiro: string read FDescricaoRoteiro write FDescricaoRoteiro;
      property CodigoEntregador: integer read FCodigoEntregador write FCodigoEntregador;
      property CodigoProduto: string read FCodigoProduto write FCodigoProduto;
      property CodigoOcorrencia: integer read FCodigoOcorrencia write FCodigoOcorrencia;
      property DomReincidente: string read FDomReincidente write FDomReincidente;
      property DescricaoOcorrencia: string read FDescricaoOcorrencia write FDescricaoOcorrencia;
      property EnderecoAssinatura: string read FEnderecoAssinatura write FEnderecoAssinatura;
      property DescricaoRetorno: string read FDescricaoRetorno write FDescricaoRetorno;
      property CodigoResultado: integer read FCodigoResultado write FCodigoResultado;
      property CodigoOrigem: integer read FCodigoOrigem write FCodigoOrigem;
      property Observacoes: string read FObservacoes write FObservacoes;
      property Status: integer read FStatus write FStatus;
      property DescricaoApuracao: string read FDescricaoApuracao write FDescricaoApuracao;
      property DomProcessado: string read FDomProcessado write FDomProcessado;
      property QuantidadeOcorrencia: integer read FQuantidadeOcorrencia write FQuantidadeOcorrencia;
      property ValorOcorrencia: Double read FValorOcorrencia write FValorOcorrencia;
      property DataDesconto: TDate read FDataDesconto write FDataDesconto;
      property DomImpressao: string read FDomImpressao write FDomImpressao;
      property DescricaoAnexo: string read FDescricaoAnexo write FDescricaoAnexo;
      property Log: string read FLog write Flog;
      property Query: TFDQuery read FQuery write FQuery;
      property Acao: TAcao read FAcao write FAcao;
      property Mensagem: string read FMensagem write FMensagem;

      constructor Create;
      function Search(aParam: array of variant): boolean;
      function Save(): boolean;
      function GetField(sField: String; sKey: String; sKeyValue: String): String;
      function SetupClass(): boolean;
  end;

  const
    TABLE = 'jor_ocorrencias_jornal';
    SQLSELECT = 'SELECT NUM_OCORRENCIA, DAT_OCORRENCIA, COD_ASSINATURA, NOM_ASSINANTE, DES_ROTEIRO, COD_ENTREGADOR, ' +
                'COD_PRODUTO, COD_OCORRENCIA, DOM_REINCIDENTE, DES_DESCRICAO, DES_ENDERECO, DES_RETORNO, COD_RESULTADO, ' +
                'COD_ORIGEM, DES_OBS, COD_STATUS, DES_APURACAO, DOM_PROCESSADO, QTD_OCORRENCIAS, VAL_OCORRENCIA, ' +
                'DAT_DESCONTO, DOM_IMPRESSAO, DES_ANEXO, DES_LOG ' +
                'FROM ' + TABLE;
    SQLINSERT = 'INSERT INTO ' + TABLE + '(DAT_OCORRENCIA, COD_ASSINATURA, NOM_ASSINANTE, DES_ROTEIRO, ' +
                'COD_ENTREGADOR, COD_PRODUTO, COD_OCORRENCIA, DOM_REINCIDENTE, DES_DESCRICAO, DES_ENDERECO, DES_RETORNO, ' +
                'COD_RESULTADO, COD_ORIGEM, DES_OBS, COD_STATUS, DES_APURACAO, DOM_PROCESSADO, QTD_OCORRENCIAS, VAL_OCORRENCIA, ' +
                'DAT_DESCONTO, DOM_IMPRESSAO, DES_ANEXO, DES_LOG) ' +
                'VALUES ' +
                '(:NUM_OCORRENCIA, :DAT_OCORRENCIA, :COD_ASSINATURA, :NOM_ASSINANTE, :DES_ROTEIRO, ' +
                ':COD_ENTREGADOR, :COD_PRODUTO, :COD_OCORRENCIA, :DOM_REINCIDENTE, :DES_DESCRICAO, :DES_ENDERECO, :DES_RETORNO, ' +
                ':COD_RESULTADO, :COD_ORIGEM, :DES_OBS, :COD_STATUS, :DES_APURACAO, :DOM_PROCESSADO, :QTD_OCORRENCIAS, ' +
                ':VAL_OCORRENCIA, :DAT_DESCONTO, :DOM_IMPRESSAO, :DES_ANEXO, :DES_LOG';
    SQLUPDATE = 'UPDATE ' + TABLE + ' SET DAT_OCORRENCIA = :DAT_OCORRENCIA, ' +
                'COD_ASSINATURA = :COD_ASSINATURA, NOM_ASSINANTE = :NOM_ASSINANTE, DES_ROTEIRO = :DES_ROTEIRO, ' +
                'COD_ENTREGADOR = :COD_ENTREGADOR, COD_PRODUTO = :COD_PRODUTO, COD_OCORRENCIA = :COD_OCORRENCIA, ' +
                'DOM_REINCIDENTE = :DOM_REINCIDENTE, DES_DESCRICAO = :DES_DESCRICAO, DES_ENDERECO = :DES_ENDERECO, ' +
                'DES_RETORNO = :DES_RETORNO, COD_RESULTADO = :COD_RESULTADO, COD_ORIGEM = :COD_ORIGEM, DES_OBS = :DES_OBS, ' +
                'COD_STATUS = :COD_STATUS, DES_APURACAO = :DES_APURACAO, DOM_PROCESSADO = :DOM_PROCESSADO, ' +
                'QTD_OCORRENCIAS = :QTD_OCORRENCIAS, VAL_OCORRENCIA = :VAL_OCORRENCIA, DAT_DESCONTO = :DAT_DESCONTO, ' +
                'DOM_IMPRESSAO = :DOM_IMPRESSAO, DES_ANEXO = :DES_ANEXO, DES_LOG = :DES_LOG '+
                'WHERE NUM_OCORRENCIA = :NUM_OCORRENCIA';
    SQLDELETE = 'DELETE FROM ' + TABLE +
                'WHERE NUM_OCORRENCIA = :NUM_OCORRENCIA';


implementation

{ TModelSisGeFOcorrenciasJotnal }

constructor TModelSisGeFOcorrenciasJotnal.Create;
begin
  FConnection := TConexao.Create;
end;

function TModelSisGeFOcorrenciasJotnal.Delete: boolean;
var countReg: integer;
begin
  try
    Result := False;
    FQuery := FConnection.ReturnQuery;
    countReg:= FQuery.ExecSQL(SQLDELETE, [FId]);
    if countReg > 0 then
      Result := True;
  finally
    FQuery.Connection.Connected := False;
  end;
end;

function TModelSisGeFOcorrenciasJotnal.GetField(sField, sKey, sKeyValue: String): String;
begin
  try
    Result := '';
    FQuery := FConnection.ReturnQuery();
    if not sKeyValue.IsEmpty then
    begin
      FQuery.SQL.Text := 'select ' + sField + ' from ' + TABLE + ' where ' + sKey + ' = ' + sKeyValue;
      FQuery.Open();
      if not FQuery.IsEmpty then Result := FQuery.FieldByName(sField).AsString;
    end;
  finally
    FQuery.Connection.Connected := False;
  end;
end;

function TModelSisGeFOcorrenciasJotnal.Insert: boolean;
var countReg: integer;
begin
  try

    Result := False;
    FQuery := FConnection.ReturnQuery;
    countReg := FQuery.ExecSQL(SQLINSERT,
                   [FData, FCodigoAssinatura, FNomeAssinante, FDescricaoRoteiro, FCodigoEntregador, FCodigoProduto,
                    FCodigoOcorrencia, FDomReincidente, FDescricaoOcorrencia, FEnderecoAssinatura, FDescricaoRetorno,
                    FCodigoResultado, FCodigoOrigem, FObservacoes, FStatus, FDescricaoApuracao, FDomProcessado,
                    FQuantidadeOcorrencia, FValorOcorrencia, FDataDesconto, FDomImpressao, FDescricaoAnexo,
                    FLog]);
    if countReg > 0 then
      Result := True;
  finally
    FQuery.Connection.Connected := False;
  end;
end;

function TModelSisGeFOcorrenciasJotnal.Save: boolean;
begin
  Result := False;
//  if not ValidateData() then
//    Exit;
  case FAcao of
    tacIncluir: Result := Insert();
    tacAlterar: Result := Update();
    tacExcluir: Result := Delete();
  else
    Exit;
  end;
end;

function TModelSisGeFOcorrenciasJotnal.Search(aParam: array of variant): boolean;
begin
  Result := False;
  FQuery := FConnection.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FQuery.SQL.Clear;

  FQuery.SQL.Add(SQLSELECT);
  if aParam[0] = 'ID' then
  begin
    FQuery.SQL.Add('WHERE NUM_OCORRENCIA = :NUM_OCORRENCIA');
    FQuery.ParamByName('NUM_OCORRENCIA').AsInteger := aParam[1];
  end;
  if aParam[0] = 'FILTRO' then
  begin
    FQuery.SQL.Add('where ' + aParam[1]);
  end;
  if aParam[0] = 'LISTA' then
  begin
    FQuery.SQL.Clear;
    FQuery.SQL.Add('select  ' + aParam[1] + ' from ' + TABLE + ' ' + aParam[2]);
  end;
  FQuery.Open();
  if FQuery.IsEmpty then
  begin
    Exit;
  end;
  Result := True;
end;

function TModelSisGeFOcorrenciasJotnal.SetupClass: boolean;
begin
  Result := False;
  FDataDesconto :=  FQuery.FieldByName('DAT_DESCONTO').AsDateTime;
  FDescricaoApuracao :=  FQuery.FieldByName('DES_APURACAO').AsString;
  FEnderecoAssinatura :=  FQuery.FieldByName('DES_ENDERECO').AsString;
  FCodigoResultado :=  FQuery.FieldByName('COD_RESULTADO').AsInteger;
  FValorOcorrencia :=  FQuery.FieldByName('VAL_OCORRENCIA').AsFloat;
  FCodigoOrigem :=  FQuery.FieldByName('COD_ORIGEM').AsInteger;
  FCodigoProduto :=  FQuery.FieldByName('COD_PRODUTO').AsString;
  FDomProcessado :=  FQuery.FieldByName('DOM_PROCESSADO').AsString;
  FDescricaoOcorrencia :=  FQuery.FieldByName('DES_DESCRICAO').AsString;
  FDescricaoRoteiro :=  FQuery.FieldByName('DES_ROTEIRO').AsString;
  FDescricaoRetorno :=  FQuery.FieldByName('DES_RETORNO').AsString;
  FCodigoOcorrencia :=  FQuery.FieldByName('COD_OCORRENCIA').AsInteger;
  FId :=  FQuery.FieldByName('NUM_OCORRENCIA').AsInteger;
  FCodigoAssinatura :=  FQuery.FieldByName('COD_ASSINATURA').AsString;
  FStatus :=  FQuery.FieldByName('COD_STATUS').AsInteger;
  FNomeAssinante :=  FQuery.FieldByName('NOM_ASSINANTE').AsString;
  FDomReincidente :=  FQuery.FieldByName('DOM_REINCIDENTE').AsString;
  FLog :=  FQuery.FieldByName('DES_LOG').AsString;
  FQuantidadeOcorrencia :=  FQuery.FieldByName('QTD_OCORRENCIAS').AsInteger;
  FDescricaoAnexo :=  FQuery.FieldByName('DES_ANEXO').AsString;
  FDomImpressao :=  FQuery.FieldByName('DOM_IMPRESSAO').AsString;
  FCodigoEntregador :=  FQuery.FieldByName('COD_ENTREGADOR').AsInteger;
  FData :=  FQuery.FieldByName('DAT_OCORRENCIA').AsDateTime;
  FObservacoes :=  FQuery.FieldByName('DES_OBS').AsString;
  Result := True;
end;

function TModelSisGeFOcorrenciasJotnal.Update: boolean;
var countReg: integer;
begin
  try
    Result := False;
    FQuery := FConnection.ReturnQuery;
    countReg:= FQuery.ExecSQL(SQLUPDATE,
                   [FData, FCodigoAssinatura, FNomeAssinante, FDescricaoRoteiro, FCodigoEntregador, FCodigoProduto,
                    FCodigoOcorrencia, FDomReincidente, FDescricaoOcorrencia, FEnderecoAssinatura, FDescricaoRetorno,
                    FCodigoResultado, FCodigoOrigem, FObservacoes, FStatus, FDescricaoApuracao, FDomProcessado,
                    FQuantidadeOcorrencia, FValorOcorrencia, FDataDesconto, FDomImpressao, FDescricaoAnexo,
                    FLog, FId]);
    if countReg > 0 then
      Result := True;
  finally
    FQuery.Connection.Connected := False;
  end;
end;

end.
