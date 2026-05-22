unit Model.SisGeFFuncionariosEnderecos;

interface

uses Common.ENum, FireDAC.Comp.Client, service.connectionMySQL, service.sistem, System.SysUtils;

type
  TEnderecos = record
    id_endereco     : integer;
    id_funcionario  : integer;
    des_tipo        : string[20];
    num_cep         : string[9];
    des_logradouro  : string[70];
    num_logradouro  : string[11];
    des_complemento : string[50];
    des_bairro      : string[70];
    nom_cidade      : string[70];
    uf_estado       : string[2];
    des_referencia  : string[132];
    createdAt       : TDateTime;
    updatedAt       : TDateTime;
  end;

  type TFuncionariosEnderecosModel = class
    private
        FAcao     : TAcao;
        FMensagem : string;
        FConn     : TConnectionMySQL;
        FQuery    : TFDQuery;
        FRecords: TEnderecos;

        function Inserir  ()  : boolean;
        function Alterar  ()  : boolean;
        function Excluir  ()  : boolean;

      public

        Constructor Create();
        function    CustomSearch(aParams: array of string): boolean;
        function    SaveRecord  ()                        : boolean;
        function    SetupRecords()                        : boolean;

        property    Records: TEnderecos read FRecords write FRecords;


        property Acao     : TAcao     read  FAcao     write FAcao;
        property Mensagem : string    read  FMensagem write FMensagem;
        property Query    : TFDQuery  read  FQuery    write FQuery;
  end;
  const
      TABLENAME = 'crm_funcionarios_enderecos';
      SQLINSERT = 'insert into ' + TABLENAME +
                  '(id_endereco, id_funcionario, des_tipo, num_cep, des_logradouro, num_logradouro, des_complemento, ' +
                  'des_bairro, nom_cidade, uf_estado, des_referencia, createdAt, updatedAt) ' +
                  'VALUES '  +
                  '(:id_endereco, :id_funcionario, :des_tipo, :num_cep, :des_logradouro, :num_logradouro, :des_complemento, ' +
                  ':des_bairro, :nom_cidade, :uf_estado, :des_referencia, :createdAt, :updatedAt)';
      SQLUPDATE = 'update ' + TABLENAME +
                  ' set ' +
                  'id_funcionario = :id_funcionario, des_tipo = :des_tipo, num_cep = :num_cep, ' +
                  'des_logradouro = :des_logradouro, num_logradouro = :num_logradouro, des_complemento = :des_complemento, ' +
                  'des_bairro = :des_bairro, nom_cidade = :nom_cidade, uf_estado = :uf_estado, des_referencia = :des_referencia ' +
                  'createdAt = :createdAt, updatedAt = :updatedAt ' +
                  'where ' +
                  'id_endereco = :id_endereco';
      SQLSELECT = 'select id_endereco, id_funcionario, des_tipo, num_cep, des_logradouro, num_logradouro, des_complemento, ' +
                  'des_bairro, nom_cidade, uf_estado, des_referencia, createdAt, updatedAt ' +
                  'from ' +
                  TABLENAME;
      SQLDELETE = 'delete from ' + TABLENAME + ' where id_funcionario = :id_funcionario';


implementation

{ TFuncionariosEnderecosModel }

function TFuncionariosEnderecosModel.Alterar: boolean;
begin
  try
    FQuery := FConn.GetQuery;
    FRecords.updatedAt := Now();
    FQuery.ExecSQL(SQLUPDATE,
                  [FRecords.id_funcionario, FRecords.des_tipo, FRecords.num_cep, FRecords.des_logradouro, FRecords.num_logradouro,
                   FRecords.des_complemento, FRecords.des_bairro, FRecords.nom_cidade, FRecords.uf_estado, FRecords.des_referencia,
                   FRecords.createdAt, FRecords.updatedAt, FRecords.id_endereco]);
    if FQuery.RowsAffected = 0 then
      Exit;
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

constructor TFuncionariosEnderecosModel.Create;
begin
  FConn := TConnectionMySQL.Create;
end;

function TFuncionariosEnderecosModel.CustomSearch(aParams: array of string): boolean;
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
  Result := True;
end;

function TFuncionariosEnderecosModel.Excluir: boolean;
begin
  Result := False;
  try
    FQuery := FConn.GetQuery;
    FQuery.ExecSQL(SQLDELETE, [FRecords.id_funcionario]);
    if FQuery.RowsAffected = 0 then
      Exit;
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TFuncionariosEnderecosModel.Inserir: boolean;
begin
  Result := False;
  try
    FQuery := FConn.GetQuery();
    FRecords.createdAt := Now();
    FRecords.updatedAt := Now();
    FQuery.ExecSQL(SQLINSERT,
                  [FRecords.id_endereco, FRecords.id_funcionario, FRecords.des_tipo, FRecords.num_cep, FRecords.des_logradouro,
                  FRecords.num_logradouro, FRecords.des_complemento, FRecords.des_bairro, FRecords.nom_cidade, FRecords.uf_estado,
                  FRecords.des_referencia, FRecords.createdAt, FRecords.updatedAt]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TFuncionariosEnderecosModel.SaveRecord: boolean;
begin
  case FAcao of
    tacIncluir: Result := Inserir();
    tacAlterar: Result := Alterar;
    tacExcluir: Result := Excluir();
  end;
end;

function TFuncionariosEnderecosModel.SetupRecords: boolean;
begin
  Result := False;
  if FQuery.IsEmpty then
    Exit;
  FRecords.id_endereco      :=  FQuery.FieldByName('id_endereco').AsInteger;
  FRecords.id_funcionario   :=  FQuery.FieldByName('id_funcionario').AsInteger;
  FRecords.des_tipo         :=  FQuery.FieldByName('des_tipo').AsString;
  FRecords.num_cep          :=  FQuery.FieldByName('num_cep').AsString;
  FRecords.des_logradouro   :=  FQuery.FieldByName('des_logradouro').AsString;
  FRecords.num_logradouro   :=  FQuery.FieldByName('num_logradouro').AsString;
  FRecords.des_complemento  :=  FQuery.FieldByName('des_complemento').AsString;
  FRecords.des_bairro       :=  FQuery.FieldByName('des_bairro').AsString;
  FRecords.nom_cidade       :=  FQuery.FieldByName('nom_cidade').AsString;
  FRecords.uf_estado        :=  FQuery.FieldByName('uf_estado').AsString;
  FRecords.des_referencia   :=  FQuery.FieldByName('des_referencia').AsString;
  FRecords.createdAt        :=  FQuery.FieldByName('createdAt').AsDateTime;
  FRecords.updatedAt        :=  FQuery.FieldByName('updatedAt').AsDateTime;
  Result := True;
end;

end.
