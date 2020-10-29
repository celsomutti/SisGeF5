unit DAO.OcorrenciasJornal;

interface

uses DAO.Base, Generics.Collections, System.Classes, Model.OcorrenciasJornal;

  type
    TOcorrenciasJornalDAO = class(TDAO)
    public
      function Insert(aOcorrencias: TOcorrenciasJornal): Boolean;
      function Update(aOcorrencias: TOcorrenciasJornal): Boolean;
      function Delete(iNumero: Integer): Boolean;
      function FindByNumero(iNumero: Integer): TObjectList<TOcorrenciasJornal>;
      function FindByData(dtData: TDate): TObjectList<TOcorrenciasJornal>;
      function FindByAssinatura(sAssinatura: String): TObjectList<TOcorrenciasJornal>;
      function FindByNome(sNome: String): TObjectList<TOcorrenciasJornal>;
      function FindByRoteiro(sRoteiro: String): TObjectList<TOcorrenciasJornal>;
      function FindByEndereco(sEndereco: String): TObjectList<TOcorrenciasJornal>;
    end;
const
  TABLENAME = 'jor_ocorrencias_jornal';

implementation

uses System.SysUtils, FireDAC.Comp.Client, Data.DB;

function TOcorrenciasJornalDAO.Insert(aOcorrencias: TOcorrenciasJornal): Boolean;
var
  sSQL : System.string;
begin
  Result := False;
  aOcorrencias.Numero := GetKeyValue(TABLENAME,'NUM_OCORRENCIA');
  sSQL := 'INSERT INTO ' + TABLENAME + ' '+
          '(NUM_OCORRENCIA, ' +
          'DAT_OCORRENCIA, ' +
          'COD_ASSINATURA, ' +
          'NOM_ASSINANTE, ' +
          'DES_ROTEIRO, ' +
          'COD_ENTREGADOR, ' +
          'COD_PRODUTO, ' +
          'COD_OCORRENCIA, ' +
          'DOM_REINCIDENTE, ' +
          'DES_DESCRICAO, ' +
          'DES_ENDERECO, ' +
          'DES_RETORNO, ' +
          'COD_RESULTADO, ' +
          'COD_ORIGEM, ' +
          'DES_OBS, ' +
          'COD_STATUS, ' +
          'DES_APURACAO, ' +
          'DOM_PROCESSADO, ' +
          'QTD_OCORRENCIAS, ' +
          'VAL_OCORRENCIA, ' +
          'DAT_DESCONTO, ' +
          'DOM_IMPRESSAO, ' +
          'DES_ANEXO, ' +
          'DES_LOG) ' +
          'VALUES ' +
          '(:pNUM_OCORRENCIA, ' +
          ':pDAT_OCORRENCIA, ' +
          ':pCOD_ASSINATURA, ' +
          ':pNOM_ASSINANTE, ' +
          ':pDES_ROTEIRO, ' +
          ':pCOD_ENTREGADOR, ' +
          ':pCOD_PRODUTO, ' +
          ':pCOD_OCORRENCIA, ' +
          ':pDOM_REINCIDENTE, ' +
          ':pDES_DESCRICAO, ' +
          ':pDES_ENDERECO, ' +
          ':pDES_RETORNO, ' +
          ':pCOD_RESULTADO, ' +
          ':pCOD_ORIGEM, ' +
          ':pDES_OBS, ' +
          ':pCOD_STATUS, ' +
          ':pDES_APURACAO, ' +
          ':pDOM_PROCESSADO, ' +
          ':pQTD_OCORRENCIAS, ' +
          ':pVAL_OCORRENCIA, ' +
          ':pDAT_DESCONTO, ' +
          ':pDOM_IMPRESSAO, ' +
          ':pDES_ANEXO, ' +
          ':pDES_LOG);';

  Connection.ExecSQL(sSQL,[aOcorrencias.Numero, aOcorrencias.DataOcorrencia, aOcorrencias.CodigoAssinstura, aOcorrencias.Nome,
                          aOcorrencias.Roteiro, aOcorrencias.Entregador, aOcorrencias.Produto, aOcorrencias.CodigoOcorrencia,
                          aOcorrencias.Reincidente, aOcorrencias.Descricao, aOcorrencias.Endereco,aOcorrencias.Retorno,
                          aOcorrencias.Resultado, aOcorrencias.Origem, aOcorrencias.Obs, aOcorrencias.Status, aOcorrencias.Apuracao,
                          aOcorrencias.Processado, aOcorrencias.Qtde, aOcorrencias.Valor, aOcorrencias.DataDesconto,
                          aOcorrencias.Impressao, aOcorrencias.Anexo, aOcorrencias.Log],
                          [ftInteger, ftDate, ftString, ftString, ftString, ftInteger, ftString, ftInteger, ftString, ftString,
                          ftString, ftString, ftInteger, ftInteger, ftString, ftInteger, ftString, ftString, ftInteger, ftFloat,
                          ftDate, ftString, ftString, ftString]);
  Result := True;
end;

function TOcorrenciasJornalDAO.Update(aOcorrencias: TOcorrenciasJornal): Boolean;
var
  sSQL : System.string;
begin
  Result := False;
  sSQL := 'UPDATE ' + TABLENAME + ' SET '+
          'DAT_OCORRENCIA = :pDAT_OCORRENCIA, ' +
          'COD_ASSINATURA = :pCOD_ASSINATURA, ' +
          'NOM_ASSINANTE = :pNOM_ASSINANTE, ' +
          'DES_ROTEIRO = :pDES_ROTEIRO, ' +
          'COD_ENTREGADOR = :pCOD_ENTREGADOR, ' +
          'COD_PRODUTO = :pCOD_PRODUTO, ' +
          'COD_OCORRENCIA = :pCOD_OCORRENCIA, ' +
          'DOM_REINCIDENTE = :pDOM_REINCIDENTE, ' +
          'DES_DESCRICAO = :pDES_DESCRICAO, ' +
          'DES_ENDERECO = :pDES_ENDERECO, ' +
          'DES_RETORNO = :pDES_RETORNO, ' +
          'COD_RESULTADO = :pCOD_RESULTADO, ' +
          'COD_ORIGEM = :pCOD_ORIGEM, ' +
          'DES_OBS = :pDES_OBS, ' +
          'COD_STATUS = :pCOD_STATUS, ' +
          'DES_APURACAO = :pDES_APURACAO, ' +
          'DOM_PROCESSADO = :pDOM_PROCESSADO, ' +
          'QTD_OCORRENCIAS = :pQTD_OCORRENCIAS, ' +
          'VAL_OCORRENCIA = :pVAL_OCORRENCIA, ' +
          'DAT_DESCONTO = :pDAT_DESCONTO, ' +
          'DOM_IMPRESSAO = :pDOM_IMPRESSAO, ' +
          'DES_ANEXO = :pDES_ANEXO, ' +
          'DES_LOG = :pDES_LOG ' +
          'WHERE NUM_OCORRENCIA = :pNUM_OCORRENCIA; ';

  Connection.ExecSQL(sSQL,[aOcorrencias.DataOcorrencia, aOcorrencias.CodigoAssinstura, aOcorrencias.Nome,
                          aOcorrencias.Roteiro, aOcorrencias.Entregador, aOcorrencias.Produto, aOcorrencias.CodigoOcorrencia,
                          aOcorrencias.Reincidente, aOcorrencias.Descricao, aOcorrencias.Endereco,aOcorrencias.Retorno,
                          aOcorrencias.Resultado, aOcorrencias.Origem, aOcorrencias.Obs, aOcorrencias.Status, aOcorrencias.Apuracao,
                          aOcorrencias.Processado, aOcorrencias.Qtde, aOcorrencias.Valor, aOcorrencias.DataDesconto,
                          aOcorrencias.Impressao, aOcorrencias.Anexo, aOcorrencias.Log, aOcorrencias.Numero],
                          [ftDate, ftString, ftString, ftString, ftInteger, ftString, ftInteger, ftString, ftString,
                          ftString, ftString, ftInteger, ftInteger, ftString, ftInteger, ftString, ftString, ftInteger, ftFloat,
                          ftDate, ftString, ftString, ftString, ftInteger]);
  Result := True;
end;

function TOcorrenciasJornalDAO.Delete(iNumero: Integer): Boolean;
var
  sSQL : String;
begin
  Result := False;
  sSQL := 'DELETE FROM ' + TABLENAME + ' WHERE NUM_OCORRENCIA = :pNUM_OCORRENCIA;';
  Connection.ExecSQL(sSQL,[iNumero],[ftInteger]);
  Result := True;
end;

function TOcorrenciasJornalDAO.FindByNumero(iNumero: Integer): TObjectList<TOcorrenciasJornal>;
var
  FDQuery: TFDQuery;
  ocorrencias: TObjectList<TOcorrenciasJornal>;
begin
  FDQuery := TFDQuery.Create(nil);
  try
    FDQuery.Connection := Connection;
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT * FROM ' + TABLENAME);
    FDQuery.SQL.Add('WHERE NUM_OCORRENCIA = :pNOM_OCORRENCIA');
    FDQuery.ParamByName('pNUM_OCORRENCIA').AsInteger := iNumero;
    FDQuery.Open();
    ocorrencias := TObjectList<TOcorrenciasJornal>.Create();
    while not FDQuery.Eof do
    begin
      ocorrencias.Add(TOcorrenciasJornal.Create(FDQuery.FieldByName('NUM_OCORRENCIA').AsInteger,
                                                FDQuery.FieldByName('DAT_OCORRENCIA').AsDateTime,
                                                FDQuery.FieldByName('COD_ASSINATURA').AsString,
                                                FDQuery.FieldByName('NOM_ASSINANTE').AsString,
                                                FDQuery.FieldByName('DES_ROTEIRO').AsString,
                                                FDQuery.FieldByName('COD_ENTREGADOR').AsInteger,
                                                FDQuery.FieldByName('COD_PRODUTO').AsString,
                                                FDQuery.FieldByName('COD_OCORRENCIA').AsInteger,
                                                FDQuery.FieldByName('DOM_REINCIDENTE').AsString,
                                                FDQuery.FieldByName('DES_DESCRICAO').AsString,
                                                FDQuery.FieldByName('DES_ENDERECO').AsString,
                                                FDQuery.FieldByName('DES_RETORNO').AsString,
                                                FDQuery.FieldByName('COD_RESULTADO').AsInteger,
                                                FDQuery.FieldByName('COD_ORIGEM').AsInteger,
                                                FDQuery.FieldByName('DES_OBS').AsString,
                                                FDQuery.FieldByName('COD_STATUS').AsInteger,
                                                FDQuery.FieldByName('DES_APURACAO').AsString,
                                                FDQuery.FieldByName('DOM_PROCESSADO').AsString,
                                                FDQuery.FieldByName('QTD_OCORRENCIAS').AsInteger,
                                                FDQuery.FieldByName('VAL_OCORRENCIA').AsFloat,
                                                FDQuery.FieldByName('DAT_DESCONTO').AsDateTime,
                                                FDQuery.FieldByName('DOM_IMPRESSAO').AsString,
                                                FDQuery.FieldByName('DES_ANEXO').AsString,
                                                FDQuery.FieldByName('DES_LOG').AsString));

      FDQuery.Next;
    end;
  finally
    FDQuery.Free;
  end;
  Result := ocorrencias;
end;

function TOcorrenciasJornalDAO.FindByData(dtData: TDate): TObjectList<TOcorrenciasJornal>;
var
  FDQuery: TFDQuery;
  ocorrencias: TObjectList<TOcorrenciasJornal>;
begin
  FDQuery := TFDQuery.Create(nil);
  try
    FDQuery.Connection := Connection;
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT * FROM ' + TABLENAME);
    FDQuery.SQL.Add('WHERE DAT_OCORRENCIA = :pDAT_OCORRENCIA');
    FDQuery.ParamByName('pDAT_OCORRENCIA').AsDate := dtData;
    FDQuery.Open();
    ocorrencias := TObjectList<TOcorrenciasJornal>.Create();
    while not FDQuery.Eof do
    begin
      ocorrencias.Add(TOcorrenciasJornal.Create(FDQuery.FieldByName('NUM_OCORRENCIA').AsInteger,
                                                FDQuery.FieldByName('DAT_OCORRENCIA').AsDateTime,
                                                FDQuery.FieldByName('COD_ASSINATURA').AsString,
                                                FDQuery.FieldByName('NOM_ASSINANTE').AsString,
                                                FDQuery.FieldByName('DES_ROTEIRO').AsString,
                                                FDQuery.FieldByName('COD_ENTREGADOR').AsInteger,
                                                FDQuery.FieldByName('COD_PRODUTO').AsString,
                                                FDQuery.FieldByName('COD_OCORRENCIA').AsInteger,
                                                FDQuery.FieldByName('DOM_REINCIDENTE').AsString,
                                                FDQuery.FieldByName('DES_DESCRICAO').AsString,
                                                FDQuery.FieldByName('DES_ENDERECO').AsString,
                                                FDQuery.FieldByName('DES_RETORNO').AsString,
                                                FDQuery.FieldByName('COD_RESULTADO').AsInteger,
                                                FDQuery.FieldByName('COD_ORIGEM').AsInteger,
                                                FDQuery.FieldByName('DES_OBS').AsString,
                                                FDQuery.FieldByName('COD_STATUS').AsInteger,
                                                FDQuery.FieldByName('DES_APURACAO').AsString,
                                                FDQuery.FieldByName('DOM_PROCESSADO').AsString,
                                                FDQuery.FieldByName('QTD_OCORRENCIAS').AsInteger,
                                                FDQuery.FieldByName('VAL_OCORRENCIA').AsFloat,
                                                FDQuery.FieldByName('DAT_DESCONTO').AsDateTime,
                                                FDQuery.FieldByName('DOM_IMPRESSAO').AsString,
                                                FDQuery.FieldByName('DES_ANEXO').AsString,
                                                FDQuery.FieldByName('DES_LOG').AsString));

      FDQuery.Next;
    end;
  finally
    FDQuery.Free;
  end;
  Result := ocorrencias;
end;

function TOcorrenciasJornalDAO.FindByAssinatura(sAssinatura: String): TObjectList<TOcorrenciasJornal>;
var
  FDQuery: TFDQuery;
  ocorrencias: TObjectList<TOcorrenciasJornal>;
begin
  FDQuery := TFDQuery.Create(nil);
  try
    FDQuery.Connection := Connection;
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT * FROM ' + TABLENAME);
    FDQuery.SQL.Add('WHERE COD_ASSINATURA = :pCOD_ASSINATURA');
    FDQuery.ParamByName('pCOD_ASSINATURA').AsString := sAssinatura;
    FDQuery.Open();
    ocorrencias := TObjectList<TOcorrenciasJornal>.Create();
    while not FDQuery.Eof do
    begin
      ocorrencias.Add(TOcorrenciasJornal.Create(FDQuery.FieldByName('NUM_OCORRENCIA').AsInteger,
                                                FDQuery.FieldByName('DAT_OCORRENCIA').AsDateTime,
                                                FDQuery.FieldByName('COD_ASSINATURA').AsString,
                                                FDQuery.FieldByName('NOM_ASSINANTE').AsString,
                                                FDQuery.FieldByName('DES_ROTEIRO').AsString,
                                                FDQuery.FieldByName('COD_ENTREGADOR').AsInteger,
                                                FDQuery.FieldByName('COD_PRODUTO').AsString,
                                                FDQuery.FieldByName('COD_OCORRENCIA').AsInteger,
                                                FDQuery.FieldByName('DOM_REINCIDENTE').AsString,
                                                FDQuery.FieldByName('DES_DESCRICAO').AsString,
                                                FDQuery.FieldByName('DES_ENDERECO').AsString,
                                                FDQuery.FieldByName('DES_RETORNO').AsString,
                                                FDQuery.FieldByName('COD_RESULTADO').AsInteger,
                                                FDQuery.FieldByName('COD_ORIGEM').AsInteger,
                                                FDQuery.FieldByName('DES_OBS').AsString,
                                                FDQuery.FieldByName('COD_STATUS').AsInteger,
                                                FDQuery.FieldByName('DES_APURACAO').AsString,
                                                FDQuery.FieldByName('DOM_PROCESSADO').AsString,
                                                FDQuery.FieldByName('QTD_OCORRENCIAS').AsInteger,
                                                FDQuery.FieldByName('VAL_OCORRENCIA').AsFloat,
                                                FDQuery.FieldByName('DAT_DESCONTO').AsDateTime,
                                                FDQuery.FieldByName('DOM_IMPRESSAO').AsString,
                                                FDQuery.FieldByName('DES_ANEXO').AsString,
                                                FDQuery.FieldByName('DES_LOG').AsString));

      FDQuery.Next;
    end;
  finally
    FDQuery.Free;
  end;
  Result := ocorrencias;
end;

function TOcorrenciasJornalDAO.FindByNome(sNome: String): TObjectList<TOcorrenciasJornal>;
var
  FDQuery: TFDQuery;
  ocorrencias: TObjectList<TOcorrenciasJornal>;
begin
  FDQuery := TFDQuery.Create(nil);
  try
    FDQuery.Connection := Connection;
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT * FROM ' + TABLENAME);
    FDQuery.SQL.Add('WHERE NOM_ASSINANTE LIKE :pNOM_ASSINANTE');
    FDQuery.ParamByName('pNOM_ASSINANTE').AsString := sNome;
    FDQuery.Open();
    ocorrencias := TObjectList<TOcorrenciasJornal>.Create();
    while not FDQuery.Eof do
    begin
      ocorrencias.Add(TOcorrenciasJornal.Create(FDQuery.FieldByName('NUM_OCORRENCIA').AsInteger,
                                                FDQuery.FieldByName('DAT_OCORRENCIA').AsDateTime,
                                                FDQuery.FieldByName('COD_ASSINATURA').AsString,
                                                FDQuery.FieldByName('NOM_ASSINANTE').AsString,
                                                FDQuery.FieldByName('DES_ROTEIRO').AsString,
                                                FDQuery.FieldByName('COD_ENTREGADOR').AsInteger,
                                                FDQuery.FieldByName('COD_PRODUTO').AsString,
                                                FDQuery.FieldByName('COD_OCORRENCIA').AsInteger,
                                                FDQuery.FieldByName('DOM_REINCIDENTE').AsString,
                                                FDQuery.FieldByName('DES_DESCRICAO').AsString,
                                                FDQuery.FieldByName('DES_ENDERECO').AsString,
                                                FDQuery.FieldByName('DES_RETORNO').AsString,
                                                FDQuery.FieldByName('COD_RESULTADO').AsInteger,
                                                FDQuery.FieldByName('COD_ORIGEM').AsInteger,
                                                FDQuery.FieldByName('DES_OBS').AsString,
                                                FDQuery.FieldByName('COD_STATUS').AsInteger,
                                                FDQuery.FieldByName('DES_APURACAO').AsString,
                                                FDQuery.FieldByName('DOM_PROCESSADO').AsString,
                                                FDQuery.FieldByName('QTD_OCORRENCIAS').AsInteger,
                                                FDQuery.FieldByName('VAL_OCORRENCIA').AsFloat,
                                                FDQuery.FieldByName('DAT_DESCONTO').AsDateTime,
                                                FDQuery.FieldByName('DOM_IMPRESSAO').AsString,
                                                FDQuery.FieldByName('DES_ANEXO').AsString,
                                                FDQuery.FieldByName('DES_LOG').AsString));

      FDQuery.Next;
    end;
  finally
    FDQuery.Free;
  end;
  Result := ocorrencias;
end;

function TOcorrenciasJornalDAO.FindByRoteiro(sRoteiro: String): TObjectList<TOcorrenciasJornal>;
var
  FDQuery: TFDQuery;
  ocorrencias: TObjectList<TOcorrenciasJornal>;
begin
  FDQuery := TFDQuery.Create(nil);
  try
    FDQuery.Connection := Connection;
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT * FROM ' + TABLENAME);
    FDQuery.SQL.Add('WHERE DES_ROTEIRO = :pDES_ROTEIRO');
    FDQuery.ParamByName('pDES_ROTEIRO').AsString := sRoteiro;
    FDQuery.Open();
    ocorrencias := TObjectList<TOcorrenciasJornal>.Create();
    while not FDQuery.Eof do
    begin
      ocorrencias.Add(TOcorrenciasJornal.Create(FDQuery.FieldByName('NUM_OCORRENCIA').AsInteger,
                                                FDQuery.FieldByName('DAT_OCORRENCIA').AsDateTime,
                                                FDQuery.FieldByName('COD_ASSINATURA').AsString,
                                                FDQuery.FieldByName('NOM_ASSINANTE').AsString,
                                                FDQuery.FieldByName('DES_ROTEIRO').AsString,
                                                FDQuery.FieldByName('COD_ENTREGADOR').AsInteger,
                                                FDQuery.FieldByName('COD_PRODUTO').AsString,
                                                FDQuery.FieldByName('COD_OCORRENCIA').AsInteger,
                                                FDQuery.FieldByName('DOM_REINCIDENTE').AsString,
                                                FDQuery.FieldByName('DES_DESCRICAO').AsString,
                                                FDQuery.FieldByName('DES_ENDERECO').AsString,
                                                FDQuery.FieldByName('DES_RETORNO').AsString,
                                                FDQuery.FieldByName('COD_RESULTADO').AsInteger,
                                                FDQuery.FieldByName('COD_ORIGEM').AsInteger,
                                                FDQuery.FieldByName('DES_OBS').AsString,
                                                FDQuery.FieldByName('COD_STATUS').AsInteger,
                                                FDQuery.FieldByName('DES_APURACAO').AsString,
                                                FDQuery.FieldByName('DOM_PROCESSADO').AsString,
                                                FDQuery.FieldByName('QTD_OCORRENCIAS').AsInteger,
                                                FDQuery.FieldByName('VAL_OCORRENCIA').AsFloat,
                                                FDQuery.FieldByName('DAT_DESCONTO').AsDateTime,
                                                FDQuery.FieldByName('DOM_IMPRESSAO').AsString,
                                                FDQuery.FieldByName('DES_ANEXO').AsString,
                                                FDQuery.FieldByName('DES_LOG').AsString));

      FDQuery.Next;
    end;
  finally
    FDQuery.Free;
  end;
  Result := ocorrencias;
end;

function TOcorrenciasJornalDAO.FindByEndereco(sEndereco: String): TObjectList<TOcorrenciasJornal>;
var
  FDQuery: TFDQuery;
  ocorrencias: TObjectList<TOcorrenciasJornal>;
begin
  FDQuery := TFDQuery.Create(nil);
  try
    FDQuery.Connection := Connection;
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT * FROM ' + TABLENAME);
    FDQuery.SQL.Add('WHERE DES_ENDERECO LIKE :pDES_ENDERECO');
    FDQuery.ParamByName('pDES_ENDERECO').AsString := sEndereco;
    FDQuery.Open();
    ocorrencias := TObjectList<TOcorrenciasJornal>.Create();
    while not FDQuery.Eof do
    begin
      ocorrencias.Add(TOcorrenciasJornal.Create(FDQuery.FieldByName('NUM_OCORRENCIA').AsInteger,
                                                FDQuery.FieldByName('DAT_OCORRENCIA').AsDateTime,
                                                FDQuery.FieldByName('COD_ASSINATURA').AsString,
                                                FDQuery.FieldByName('NOM_ASSINANTE').AsString,
                                                FDQuery.FieldByName('DES_ROTEIRO').AsString,
                                                FDQuery.FieldByName('COD_ENTREGADOR').AsInteger,
                                                FDQuery.FieldByName('COD_PRODUTO').AsString,
                                                FDQuery.FieldByName('COD_OCORRENCIA').AsInteger,
                                                FDQuery.FieldByName('DOM_REINCIDENTE').AsString,
                                                FDQuery.FieldByName('DES_DESCRICAO').AsString,
                                                FDQuery.FieldByName('DES_ENDERECO').AsString,
                                                FDQuery.FieldByName('DES_RETORNO').AsString,
                                                FDQuery.FieldByName('COD_RESULTADO').AsInteger,
                                                FDQuery.FieldByName('COD_ORIGEM').AsInteger,
                                                FDQuery.FieldByName('DES_OBS').AsString,
                                                FDQuery.FieldByName('COD_STATUS').AsInteger,
                                                FDQuery.FieldByName('DES_APURACAO').AsString,
                                                FDQuery.FieldByName('DOM_PROCESSADO').AsString,
                                                FDQuery.FieldByName('QTD_OCORRENCIAS').AsInteger,
                                                FDQuery.FieldByName('VAL_OCORRENCIA').AsFloat,
                                                FDQuery.FieldByName('DAT_DESCONTO').AsDateTime,
                                                FDQuery.FieldByName('DOM_IMPRESSAO').AsString,
                                                FDQuery.FieldByName('DES_ANEXO').AsString,
                                                FDQuery.FieldByName('DES_LOG').AsString));

      FDQuery.Next;
    end;
  finally
    FDQuery.Free;
  end;
  Result := ocorrencias;
end;


end.
