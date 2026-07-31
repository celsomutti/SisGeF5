unit Model.SisGeFCadastroCandidatos;

interface

  uses Common.ENum, FireDAC.Comp.Client, service.connectionMySQL, service.sistem, system.sysutils;

  type
    TCandidatos = record
      COD_CANDIDATO           : integer;
      id_categoria            : integer;
      NOM_CANDIDATO           : string[70];
      DES_EMAIL               : string[100];
      NUM_CEP                 : string[9];
      DES_ENDERECO            : string[70];
      NUM_ENDERECO            : string[10];
      DES_COMPLEMENTO         : string[50];
      DES_BAIRRO              : string[70];
      DES_CIDADE              : string[70];
      DES_UF                  : string[2];
      NUM_TELEFONE            : string[20];
      NUM_CELULAR             : string[20];
      DOM_EXPERIENCIA         : string[1];
      DES_EXPERIENCIA         : string;
      DES_REGIOES             : string;
      DOM_ANTECEDENTES        : string[1];
      DOM_RESTRICOES          : string[1];
      DAT_VALIDADE_CNH        : TDate;
      DES_CATEGORIA_CNH       : string[2];
      DOM_VEICULO_PROPRIO     : string[1];
      DES_ANO_VEICULO         : string[4];
      DES_TIPO_VEICULO        : string[50];
      DES_MODELO_VEICULO      : string[50];
      DES_TIPO_COMBUSTIVEL    : string[50];
      DOM_LICENCIAMENTO_IPVA  : string[1];
      DOM_RASTREADO           : string[1];
      DOM_DISPONIBILIDADE     : string[1];
      createdAt               : TDateTime;
      updatedAt               : TDateTime;
    end;
    type
      TCadastroCandidatosModel = class
        private
          FAcao     : TAcao;
          FMensagem : string;
          FConn     : TConnectionMySQL;
          FQuery    : TFDQuery;

          function UpdateRecord(): boolean;

        public

          aRecord : TCandidatos;

          Constructor Create();
          function    GetNextID   (sIdName: string)         : Integer;
          function    CustomSearch(aParams: array of string): boolean;
          function    SaveRecord  ()                        : boolean;
          function    SetupRecords()                        : boolean;


          property Acao     : TAcao     read  FAcao     write FAcao;
          property Mensagem : string    read  FMensagem write FMensagem;
          property Query    : TFDQuery  read  FQuery    write FQuery;

      end;

      const
        TABLENAME = 'tbcandidatos';
        VIEWNAME  = '';
        SQLSELECT = 'SELECT COD_CANDIDATO, id_categoria, NOM_CANDIDATO, DES_EMAIL, NUM_CEP, DES_ENDERECO, NUM_ENDERECO, ' +
                    'DES_COMPLEMENTO, DES_BAIRRO, DES_CIDADE, DES_UF, NUM_TELEFONE, NUM_CELULAR, DOM_EXPERIENCIA, ' +
                    'DES_EXPERIENCIA, DES_REGIOES, DOM_ANTECEDENTES, DOM_RESTRICOES, DAT_VALIDADE_CNH, DES_CATEGORIA_CNH, ' +
                    'DOM_VEICULO_PROPRIO, DES_ANO_VEICULO, DES_TIPO_VEICULO, DES_MODELO_VEICULO, DES_TIPO_COMBUSTIVEL, ' +
                    'DOM_LICENCIAMENTO_IPVA, DOM_RASTREADO, DOM_DISPONIBILIDADE, createdAt, updatedAt ' +
                    'FROM ' + TABLENAME;
        SQLINSERT = 'INSERT INTO ' + TABLENAME + ' ' +
                    '(COD_CANDIDATO, id_categoria, NOM_CANDIDATO, DES_EMAIL, NUM_CEP, DES_ENDERECO, NUM_ENDERECO, ' +
                    'DES_COMPLEMENTO, DES_BAIRRO,  DES_CIDADE, DES_UF, NUM_TELEFONE,  NUM_CELULAR, DOM_EXPERIENCIA, ' +
                    'DES_EXPERIENCIA, DES_REGIOES, DOM_ANTECEDENTES, DOM_RESTRICOES, DAT_VALIDADE_CNH, DES_CATEGORIA_CNH, ' +
                    'DOM_VEICULO_PROPRIO, DES_ANO_VEICULO, DES_TIPO_VEICULO, DES_MODELO_VEICULO, DES_TIPO_COMBUSTIVEL, ' +
                    'DOM_LICENCIAMENTO_IPVA, DOM_RASTREADO, DOM_DISPONIBILIDADE) ' +
                    'VALUES (:COD_CANDIDATO, :id_categoria, :NOM_CANDIDATO, :DES_EMAIL, :NUM_CEP, :DES_ENDERECO, :NUM_ENDERECO, ' +
                    ':DES_COMPLEMENTO, :DES_BAIRRO, :DES_CIDADE, :DES_UF, :NUM_TELEFONE, :NUM_CELULAR, :DOM_EXPERIENCIA, ' +
                    ':DES_EXPERIENCIA, :DES_REGIOES, :DOM_ANTECEDENTES, :DOM_RESTRICOES, :DAT_VALIDADE_CNH, :DES_CATEGORIA_CNH, ' +
                    ':DOM_VEICULO_PROPRIO, :DES_ANO_VEICULO, :DES_TIPO_VEICULO, :DES_MODELO_VEICULO, :DES_TIPO_COMBUSTIVEL, ' +
                    ':DOM_LICENCIAMENTO_IPVA, :DOM_RASTREADO, :DOM_DISPONIBILIDADE )' ;
        SQLUPDATE = 'UPDATE ' + TABLENAME  + ' ' +
                    'SET id_categoria = :id_categoria, NOM_CANDIDATO = :NOM_CANDIDATO, DES_EMAIL = :DES_EMAIL, ' +
                    'NUM_CEP = :NUM_CEP, DES_ENDERECO = :DES_ENDERECO, NUM_ENDERECO = :NUM_ENDERECO, ' +
                    'DES_COMPLEMENTO = :DES_COMPLEMENTO, DES_BAIRRO = :DES_BAIRRO, DES_CIDADE = :DES_CIDADE, ' +
                    'DES_UF = :DES_UF, NUM_TELEFONE = :NUM_TELEFONE, NUM_CELULAR = :NUM_CELULAR, ' +
                    'DOM_EXPERIENCIA = :DOM_EXPERIENCIA, DES_EXPERIENCIA = :DES_EXPERIENCIA, DES_REGIOES = :DES_REGIOES, ' +
                    'DOM_ANTECEDENTES = :DOM_ANTECEDENTES, DOM_RESTRICOES = :DOM_RESTRICOES, ' +
                    'DAT_VALIDADE_CNH = :DAT_VALIDADE_CNH, DES_CATEGORIA_CNH = :DES_CATEGORIA_CNH, ' +
                    'DOM_VEICULO_PROPRIO = :DOM_VEICULO_PROPRIO, DES_ANO_VEICULO = :DES_ANO_VEICULO, ' +
                    'DES_TIPO_VEICULO = :DES_TIPO_VEICULO, DES_MODELO_VEICULO = :DES_MODELO_VEICULO, ' +
                    'DES_TIPO_COMBUSTIVEL = :DES_TIPO_COMBUSTIVEL, DOM_LICENCIAMENTO_IPVA = :DOM_LICENCIAMENTO_IPVA, ' +
                    'DOM_RASTREADO = :DOM_RASTREADO, DOM_DISPONIBILIDADE = :DOM_DISPONIBILIDADE, updatedAt = :updatedAt ' +
                    'WHERE COD_CANDIDATO = :COD_CANDIDATO';
        SQLDELETE = 'DELETE FROM ' + TABLENAME + ' ' +
                    'WHERE COD_CANDIDATO = :COD_CANDIDATO';
implementation

{ TCadastroCandidatosModel }

constructor TCadastroCandidatosModel.Create;
begin
  FConn := TConnectionMySQL.Create;
end;

function TCadastroCandidatosModel.CustomSearch(aParams: array of string): boolean;
var
  sSource : string;
begin
  Result := False;
  if Length(aParams) < 3 then
  begin
    FMensagem := 'Quantidade de parâmetros incorreta!';
    Exit
  end;
  FQuery := FConn.GetQuery;
  FQuery.SQL.Clear;
  FQuery.SQL.Add('select !colums from !table {if !where } where !where {fi}');
  if aParams[1] = 'VIEW' then
    sSource := VIEWNAME
  else if aParams[1] = 'TABLE' then
    sSource := TABLENAME
  else
    sSource := aParams[1];
  FQuery.MacroByName('colums').AsRaw := aParams[0];
  FQuery.MacroByName('table').AsRaw := sSource;
  FQuery.MacroByName('where').AsRaw := aParams[2];
  FQuery.Open();
  if FQuery.IsEmpty then
  begin
    FMensagem := 'Nenhum registro encontrado!';
    FQuery.Connection.Close;
    Exit;
  end;
  Result := True;
end;

function TCadastroCandidatosModel.GetNextID(sIdName: string): Integer;
begin
 try
    FQuery := FConn.GetQuery;
    FQuery.Open('select coalesce(max(' + sIdName + '),0) + 1 from ' + TABLENAME);
    try
      Result := FQuery.Fields[0].AsInteger;
    finally
      FQuery.Close;
    end;
  finally
    FQuery.Connection.Close;
    FQuery.Free;
  end;
end;

function TCadastroCandidatosModel.SaveRecord: boolean;
begin
  Result := False;
  if FAcao <> tacIndefinido then
  begin
    Result := UpdateRecord();
  end;
end;

function TCadastroCandidatosModel.SetupRecords: boolean;
begin
  ARecord.COD_CANDIDATO           := FQuery.FieldByName('COD_CANDIDATO').AsInteger;
  ARecord.id_categoria            := FQuery.FieldByName('id_categoria').AsInteger;
  ARecord.NOM_CANDIDATO           := FQuery.FieldByName('NOM_CANDIDATO').AsString;
  ARecord.DES_EMAIL               := FQuery.FieldByName('DES_EMAIL').AsString;
  ARecord.NUM_CEP                 := FQuery.FieldByName('NUM_CEP').AsString;
  ARecord.DES_ENDERECO            := FQuery.FieldByName('DES_ENDERECO').AsString;
  ARecord.NUM_ENDERECO            := FQuery.FieldByName('NUM_ENDERECO').AsString;
  ARecord.DES_COMPLEMENTO         := FQuery.FieldByName('DES_COMPLEMENTO').AsString;
  ARecord.DES_BAIRRO              := FQuery.FieldByName('DES_BAIRRO').AsString;
  ARecord.DES_CIDADE              := FQuery.FieldByName('DES_CIDADE').AsString;
  ARecord.DES_UF                  := FQuery.FieldByName('DES_UF').AsString;
  ARecord.NUM_TELEFONE            := FQuery.FieldByName('NUM_TELEFONE').AsString;
  ARecord.NUM_CELULAR             := FQuery.FieldByName('NUM_CELULAR').AsString;
  ARecord.DOM_EXPERIENCIA         := FQuery.FieldByName('DOM_EXPERIENCIA').AsString;
  ARecord.DES_EXPERIENCIA         := FQuery.FieldByName('DES_EXPERIENCIA').AsString;
  ARecord.DES_REGIOES             := FQuery.FieldByName('DES_REGIOES').AsString;
  ARecord.DOM_ANTECEDENTES        := FQuery.FieldByName('DOM_ANTECEDENTES').AsString;
  ARecord.DOM_RESTRICOES          := FQuery.FieldByName('DOM_RESTRICOES').AsString;
  ARecord.DAT_VALIDADE_CNH        := FQuery.FieldByName('DAT_VALIDADE_CNH').AsDateTime;
  ARecord.DES_CATEGORIA_CNH       := FQuery.FieldByName('DES_CATEGORIA_CNH').AsString;
  ARecord.DOM_VEICULO_PROPRIO     := FQuery.FieldByName('DOM_VEICULO_PROPRIO').AsString;
  ARecord.DES_ANO_VEICULO         := FQuery.FieldByName('DES_ANO_VEICULO').AsString;
  ARecord.DES_TIPO_VEICULO        := FQuery.FieldByName('DES_TIPO_VEICULO').AsString;
  ARecord.DES_MODELO_VEICULO      := FQuery.FieldByName('DES_MODELO_VEICULO').AsString;
  ARecord.DES_TIPO_COMBUSTIVEL    := FQuery.FieldByName('DES_TIPO_COMBUSTIVEL').AsString;
  ARecord.DOM_LICENCIAMENTO_IPVA  := FQuery.FieldByName('DOM_LICENCIAMENTO_IPVA').AsString;
  ARecord.DOM_RASTREADO           := FQuery.FieldByName('DOM_RASTREADO').AsString;
  ARecord.DOM_DISPONIBILIDADE     := FQuery.FieldByName('DOM_DISPONIBILIDADE').AsString;
  ARecord.createdAt               := FQuery.FieldByName('createdAt').AsDateTime;
  ARecord.updatedAt               := FQuery.FieldByName('updatedAt').AsDateTime;
end;

function TCadastroCandidatosModel.UpdateRecord: boolean;
begin
  Result := False;
  try
    if FAcao = tacIncluir then
    begin
      FQuery := FConn.GetQuery();
      FQuery.ExecSQL(SQLINSERT,
                    [ARecord.COD_CANDIDATO, ARecord.id_categoria, ARecord.NOM_CANDIDATO, ARecord.DES_EMAIL, ARecord.NUM_CEP,
                    ARecord.DES_ENDERECO, ARecord.NUM_ENDERECO, ARecord.DES_COMPLEMENTO, ARecord.DES_BAIRRO, ARecord.DES_CIDADE,
                    ARecord.DES_UF, ARecord.NUM_TELEFONE, ARecord.NUM_CELULAR, ARecord.DOM_EXPERIENCIA, ARecord.DES_EXPERIENCIA,
                    ARecord.DES_REGIOES, ARecord.DOM_ANTECEDENTES, ARecord.DOM_RESTRICOES, ARecord.DAT_VALIDADE_CNH,
                    ARecord.DES_CATEGORIA_CNH, ARecord.DOM_VEICULO_PROPRIO, ARecord.DES_ANO_VEICULO, ARecord.DES_TIPO_VEICULO,
                    ARecord.DES_MODELO_VEICULO, ARecord.DES_TIPO_COMBUSTIVEL, ARecord.DOM_LICENCIAMENTO_IPVA, ARecord.DOM_RASTREADO,
                    ARecord.DOM_DISPONIBILIDADE]);
      Result := True;
    end
    else if FAcao = tacAlterar then
    begin
      FQuery := FConn.GetQuery();
      aRecord.updatedAt := Now();
      FQuery.ExecSQL(SQLUPDATE,
                    [ARecord.id_categoria, ARecord.NOM_CANDIDATO, ARecord.DES_EMAIL, ARecord.NUM_CEP,
                    ARecord.DES_ENDERECO, ARecord.NUM_ENDERECO, ARecord.DES_COMPLEMENTO, ARecord.DES_BAIRRO, ARecord.DES_CIDADE,
                    ARecord.DES_UF, ARecord.NUM_TELEFONE, ARecord.NUM_CELULAR, ARecord.DOM_EXPERIENCIA, ARecord.DES_EXPERIENCIA,
                    ARecord.DES_REGIOES, ARecord.DOM_ANTECEDENTES, ARecord.DOM_RESTRICOES, ARecord.DAT_VALIDADE_CNH,
                    ARecord.DES_CATEGORIA_CNH, ARecord.DOM_VEICULO_PROPRIO, ARecord.DES_ANO_VEICULO, ARecord.DES_TIPO_VEICULO,
                    ARecord.DES_MODELO_VEICULO, ARecord.DES_TIPO_COMBUSTIVEL, ARecord.DOM_LICENCIAMENTO_IPVA, ARecord.DOM_RASTREADO,
                    ARecord.DOM_DISPONIBILIDADE, aRecord.updatedAt, ARecord.COD_CANDIDATO]);
      Result := True;
    end
    else if FAcao = tacExcluir then
    begin
      FQuery := FConn.GetQuery;
      FQuery.ExecSQL(SQLDELETE, [ARecord.COD_CANDIDATO]);
      Result := True;
    end;
  finally
    FQuery.Connection.Close;
  end;
end;

end.
