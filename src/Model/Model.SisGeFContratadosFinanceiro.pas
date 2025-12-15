unit Model.SisGeFContratadosFinanceiro;

interface

uses Common.ENum, FireDAC.Comp.Client, service.connectionMySQL, service.sistem;

type
  TFinanceiro = record
    id_financeiro       : integer;
    id_contratados      : integer;
    cod_banco           : string[4];
    cod_agencia         : string[10];
    num_conta           : string[20];
    chave_pix           : string[125];
    des_forma_pagamento : string[20];
  end;

  type TContratadosFinanceiroModel = class
    private
        FAcao     : TAcao;
        FMensagem : string;
        FConn     : TConnectionMySQL;
        FQuery    : TFDQuery;

        function Inserir  ()  : boolean;
        function Alterar  ()  : boolean;
        function Excluir  ()  : Boolean;
        
      public
        ARecord   : TFinanceiro;

        Constructor Create();
        function    GetNextID   (sIdName: string)         : Integer;
        function    Search      (aParams: array of string): boolean;
        function    CustomSearch(aParams: array of string): boolean;
        function    SaveRecord  ()                        : boolean;
        function    SetupRecords()                        : boolean;


        property Acao     : TAcao     read  FAcao     write FAcao;
        property Mensagem : string    read  FMensagem write FMensagem;
        property Query    : TFDQuery  read FQuery     write FQuery;
      protected
  end;
  const
      TABLENAME = 'crm_contratados_financeiro';
      SQLINSERT = 'insert into ' + TABLENAME +
                  '(id_financeiro, id_contratados, cod_banco, cod_agencia, num_conta, chave_pix, des_forma_pagamento) ' +
                  'VALUES '  +
                  '(:id_financeiro, :id_contratados, :cod_banco, :cod_agencia, :num_conta, :chave_pix, :des_forma_pagamento)';
      SQLUPDATE = 'update ' + TABLENAME +
                  ' set ' +
                  'id_contratados = :id_contratados, cod_banco = :cod_banco, cod_agencia = :cod_agencia, num_conta = :num_conta, ' +
                  'chave_pix = :chave_pix, des_forma_pagamento = :des_forma_pagamento ' +
                  'where ' +
                  'id_financeiro = :id_financeiro';
      SQLSELECT = 'select id_financeiro, id_contratados, cod_banco, cod_agencia, num_conta, chave_pix, des_forma_pagamento ' +
                  'from ' +
                  TABLENAME;
      SQLDELETE = 'delete from ' + TABLENAME + ' where id_contratados = :id_contratados';


implementation

{ TContratadosFinanceiroModel }

function TContratadosFinanceiroModel.Alterar: boolean;
begin
  try
  FQuery := FConn.GetQuery;
    FQuery.ExecSQL(SQLUPDATE,
                  [ARecord.id_contratados, ARecord.cod_banco, ARecord.cod_agencia, ARecord.num_conta,
                  ARecord.chave_pix, ARecord.des_forma_pagamento, ARecord.id_financeiro]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

constructor TContratadosFinanceiroModel.Create;
begin
  FConn := TConnectionMySQL.Create();
end;

function TContratadosFinanceiroModel.CustomSearch(aParams: array of string): boolean;
var
  sSource : string;
begin
  Result := False;
  if Length(aParams) < 2 then
  begin
    FMensagem := 'Quantidade de parâmetros incorreta!';
    Exit
  end;
  FQuery := FConn.GetQuery;
  FQuery.SQL.Clear;
  FQuery.SQL.Add('select !colums from !table {if !where } where !where {fi}');
  if aParams[2] = '' then
    sSource := TABLENAME;
  FQuery.MacroByName('colums').AsRaw := aParams[1];
  FQuery.MacroByName('table').AsRaw := sSource;
  FQuery.MacroByName('where').AsRaw := aParams[3];
  FQuery.Open();
  if FQuery.IsEmpty then
  begin
    FMensagem := 'Nenhum registro encontrado!';
    FQuery.Connection.Close;
    Exit;
  end;
  Result := True;
end;

function TContratadosFinanceiroModel.Excluir: Boolean;
begin
  try
  FQuery := FConn.GetQuery;
    FQuery.ExecSQL(SQLUPDATE,
                  [ARecord.id_contratados]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TContratadosFinanceiroModel.GetNextID(sIdName: string): Integer;
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

function TContratadosFinanceiroModel.Inserir: boolean;
begin
  Result := False;
  try
    ARecord.id_financeiro := GetNextID('id_financeiro');
    FQuery := FConn.GetQuery();
    FQuery.ExecSQL(SQLINSERT,
                  [ARecord.id_financeiro, ARecord.id_contratados, ARecord.cod_banco, ARecord.cod_agencia, ARecord.num_conta,
                  ARecord.chave_pix, ARecord.des_forma_pagamento]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TContratadosFinanceiroModel.SaveRecord: boolean;
begin
   case FAcao of
    tacIncluir  : Result  :=  Inserir();
    tacAlterar  : Result  :=  Alterar();
    tacExcluir  : Result  :=  Excluir();
  end;
end;

function TContratadosFinanceiroModel.Search(aParams: array of string): boolean;
begin
  Result := False;
  FQuery := FConn.GetQuery;
  FQuery.SQL.Add(SQLSELECT);
  if Length(aParams) >= 2 then
  begin
    FQuery.SQL.Add('where');
    if aParams[0] = 'ID' then
      FQuery.SQL.Add('id_financeiro = ' + aParams[1])
    else if aParams[0] = 'CONTRATADO' then
      FQuery.SQL.Add('id_contradados = ' + aParams[1])
    else if aParams[0] = 'BANCO' then
      FQuery.SQL.Add('cod_banco like "%' + aParams[1] + '%"')
    else if aParams[0] = 'PIX' then
      FQuery.SQL.Add('chave_pix like "%' + aParams[1] + '%"')
    else
      FQuery.SQL.Add(aParams[1]);
  end;
  if FQuery.IsEmpty then
  begin
    FMensagem := 'Nenhum registro encontrado!';
    FQuery.Connection.Close;
    Exit;
  end;
  Result := True;
end;

function TContratadosFinanceiroModel.SetupRecords: boolean;
begin
  Result := False;
  if FQuery.IsEmpty then
    Exit;
  ARecord.id_financeiro       :=  FQuery.FieldByName('id_endereco').AsInteger;
  ARecord.id_contratados      :=  FQuery.FieldByName('id_contratados').AsInteger;
  ARecord.cod_banco           :=  FQuery.FieldByName('cod_banco').AsString;
  ARecord.cod_agencia         :=  FQuery.FieldByName('cod_agencia').AsString;
  Arecord.num_conta           :=  FQuery.FieldByName('num_conta').AsString;
  ARecord.chave_pix           :=  FQuery.FieldByName('chave_pix').AsString;
  ARecord.des_forma_pagamento :=  FQuery.FieldByName('des_forma_pagamento').AsString;
  Result := True;
end;

end.
