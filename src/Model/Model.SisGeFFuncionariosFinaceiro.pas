unit Model.SisGeFFuncionariosFinaceiro;

interface

  uses Common.ENum, FireDAC.Comp.Client, service.connectionMySQL, service.sistem, system.SysUtils;

  type
  TFinanceiro = record
    id_financeiro       : integer;
    id_funcionario      : integer;
    cod_banco           : string[4];
    cod_agencia         : string[10];
    num_conta           : string[20];
    cod_pix             : string[125];
    createdAt           : TDateTime;
    updatedAt           : TDateTime;
  end;

  type TFuncionariosFinanceiroModel = class
    private
        FAcao     : TAcao;
        FMensagem : string;
        FConn     : TConnectionMySQL;
        FQuery    : TFDQuery;
        FRecord   : TFinanceiro;

        function Inserir  ()  : boolean;
        function Alterar  ()  : boolean;
        function Excluir  ()  : Boolean;

      public

        Constructor Create();
        function    CustomSearch(aParams: array of string): boolean;
        function    SaveRecord  ()                        : boolean;
        function    SetupRecords()                        : boolean;


        property Acao     : TAcao       read  FAcao     write FAcao;
        property Mensagem : string      read  FMensagem write FMensagem;
        property Query    : TFDQuery    read  FQuery    write FQuery;
        property Records  : TFinanceiro read  FRecord   write FRecord;
      protected
  end;
  const
      TABLENAME = 'crm_funcionarios_financeiro';
      SQLINSERT = 'insert into ' + TABLENAME +
                  '(id_financeiro, id_funcionario, cod_banco, cod_agencia, num_conta, cod_pix, createdAt, updatedAt) ' +
                  'VALUES '  +
                  '(:id_funcionario, :id_funcionario, :cod_banco, :cod_agencia, :num_conta, :cod_pix, :createdAt, :updatedAt)';
      SQLUPDATE = 'update ' + TABLENAME +
                  ' set ' +
                  'id_funcionario = :id_funcionario, cod_banco = :cod_banco, cod_agencia = :cod_agencia, num_conta = :num_conta, ' +
                  'cod_pix = :cod_pix, createdAt = :createdAt,  updatedAt = :updatedAt' +
                  'where ' +
                  'id_financeiro = :id_financeiro';
      SQLSELECT = 'select id_financeiro, id_contratados, cod_banco, cod_agencia, num_conta, cod_pix, createdAt, updatedAt ' +
                  'from ' +
                  TABLENAME;
      SQLDELETE = 'delete from ' + TABLENAME + ' where id_funcionario = :id_funcionario';


implementation

{ TFuncionariosFinanceiroModel }

function TFuncionariosFinanceiroModel.Alterar: boolean;
begin
  try
    FQuery := FConn.GetQuery;
    FRecord.updatedAt := Now();
    FQuery.ExecSQL(SQLUPDATE,
                 [FRecord.id_funcionario, FRecord.cod_banco, FRecord.cod_agencia, FRecord.num_conta,
                 FRecord.cod_pix, FRecord.createdAt, FRecord.updatedAt, FRecord.id_financeiro]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

constructor TFuncionariosFinanceiroModel.Create;
begin
  FConn := TConnectionMySQL.Create;
end;

function TFuncionariosFinanceiroModel.CustomSearch(aParams: array of string): boolean;
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
  if aParams[1] = 'TABLE' then
    sSource := TABLENAME
  else
    sSource := aParams[1];
  FQuery.SQL.Clear;
  FQuery.SQL.Add('select !colums from !table {if !where } where !where {fi}');
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
  Result := True;end;

function TFuncionariosFinanceiroModel.Excluir: Boolean;
begin
  try
  FQuery := FConn.GetQuery;
    FQuery.ExecSQL(SQLDELETE,
                  [FRecord.id_funcionario]);
    if FQuery.RowsAffected = 0 then
      Exit;
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TFuncionariosFinanceiroModel.Inserir: boolean;
begin
  Result := False;
  try
    FQuery := FConn.GetQuery();
    FQuery.ExecSQL(SQLINSERT,
                  [FRecord.id_financeiro, FRecord.id_funcionario, FRecord.cod_banco, FRecord.cod_agencia, FRecord.num_conta,
                  FRecord.cod_pix, FRecord.createdAt, FRecord.updatedAt]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;

end;

function TFuncionariosFinanceiroModel.SaveRecord: boolean;
begin
   case FAcao of
    tacIncluir  : Result  :=  Inserir();
    tacAlterar  : Result  :=  Alterar();
    tacExcluir  : Result  :=  Excluir();
  end;
end;

function TFuncionariosFinanceiroModel.SetupRecords: boolean;
begin
  Result := False;
  if FQuery.IsEmpty then
    Exit;
  FRecord.id_financeiro       :=  FQuery.FieldByName('id_financeiro').AsInteger;
  FRecord.id_funcionario      :=  FQuery.FieldByName('id_funcionario').AsInteger;
  FRecord.cod_banco           :=  FQuery.FieldByName('cod_banco').AsString;
  FRecord.cod_agencia         :=  FQuery.FieldByName('cod_agencia').AsString;
  FRecord.num_conta           :=  FQuery.FieldByName('num_conta').AsString;
  FRecord.cod_pix             :=  FQuery.FieldByName('cod_pix').AsString;
  FRecord.createdAt           :=  FQuery.FieldByName('createdAt').AsDateTime;
  FRecord.updatedAt           :=  FQuery.FieldByName('updatedAt').AsDateTime;
  Result := True;
end;

end.
