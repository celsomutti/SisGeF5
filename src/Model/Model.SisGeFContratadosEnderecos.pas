unit Model.SisGeFContratadosEnderecos;

interface

uses Common.ENum, FireDAC.Comp.Client, service.connectionMySQL, service.sistem;

type
  TEnderecos = record
    id_endereco     : integer;
    id_contratados  : integer;
    des_tipo        : string[20];
    num_cep         : string[9];
    des_logradouro  : string[70];
    num_logradouro  : string[11];
    des_complemento : string[50];
    des_bairro      : string[70];
    nom_cidade      : string[70];
    uf_estado       : string[2];
    des_referencia  : string[132];
  end;

  type TContratadosEnderecosModel = class
    private
        FAcao     : TAcao;
        FMensagem : string;
        FConn     : TConnectionMySQL;
        FQuery    : TFDQuery;

        function Inserir  ()  : boolean;
        function Alterar  ()  : boolean;

      public
        ARecord   : TEnderecos;

        Constructor Create();
        function    GetNextID   (sIdName: string)         : Integer;
        function    Search      (aParams: array of string): boolean;
        function    CustomSearch(aParams: array of string): boolean;
        function    SaveRecord  ()                        : boolean;
        function    SetupRecords()                        : boolean;


        property Acao     : TAcao     read  FAcao     write FAcao;
        property Mensagem : string    read  FMensagem write FMensagem;
        property Query    : TFDQuery  read  FQuery    write FQuery;
      protected
  end;
  const
      TABLENAME = 'crm_contratados_enderecos';
      SQLINSERT = 'insert into ' + TABLENAME +
                  '(id_endereco, id_contratados, des_tipo, num_cep, des_logradouro, num_logradouro, des_complemento, ' +
                  'des_bairro, nom_cidade, uf_estado, des_referencia) ' +
                  'VALUES '  +
                  '(:id_endereco, :id_contratados, :des_tipo, :num_cep, :des_logradouro, :num_logradouro, :des_complemento, ' +
                  ':des_bairro, :nom_cidade, :uf_estado, :des_referencia)';
      SQLUPDATE = 'update ' + TABLENAME +
                  ' set ' +
                  'id_contratados = :id_contratados, des_tipo = :des_tipo, num_cep = :num_cep, ' +
                  'des_logradouro = :des_logradouro, num_logradouro = :num_logradouro, des_complemento = :des_complemento, ' +
                  'des_bairro = :des_bairro, nom_cidade = :nom_cidade, uf_estado = :uf_estado, des_referencia = :des_referencia ' +
                  'where ' +
                  'id_endereco = :id_endereco';
      SQLSELECT = 'select id_endereco, id_contratados, des_tipo, num_cep, des_logradouro, num_logradouro, des_complemento, ' +
                  'des_bairro, nom_cidade, uf_estado, des_referencia ' +
                  'from ' +
                  TABLENAME;


implementation

{ TContratadosEnderecosModel }

function TContratadosEnderecosModel.Alterar: boolean;
begin
  try
  FQuery := FConn.GetQuery;
    FQuery.ExecSQL(SQLUPDATE,
                  [ARecord.id_contratados, ARecord.des_tipo, ARecord.num_cep, ARecord.des_logradouro, ARecord.num_logradouro,
                   ARecord.des_complemento, ARecord.des_bairro, ARecord.nom_cidade, ARecord.uf_estado, ARecord.des_referencia,
                   ARecord.id_endereco]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

constructor TContratadosEnderecosModel.Create;
begin
  FConn := TConnectionMySQL.Create();
end;

function TContratadosEnderecosModel.CustomSearch(aParams: array of string): boolean;
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

function TContratadosEnderecosModel.GetNextID(sIdName: string): Integer;
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

function TContratadosEnderecosModel.Inserir: boolean;
begin
  Result := False;
  try
    ARecord.id_endereco := GetNextID('id_endereco');
    FQuery := FConn.GetQuery();
    FQuery.ExecSQL(SQLINSERT,
                  [ARecord.id_endereco, ARecord.id_contratados, ARecord.des_tipo, ARecord.num_cep, ARecord.des_logradouro,
                  ARecord.num_logradouro, ARecord.des_complemento, ARecord.des_bairro, ARecord.nom_cidade, ARecord.uf_estado,
                  ARecord.des_referencia]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TContratadosEnderecosModel.SaveRecord: boolean;
begin
  case FAcao of
    tacIncluir: Result := Inserir();
    tacAlterar: Result := Alterar();
  end;
end;

function TContratadosEnderecosModel.Search(aParams: array of string): boolean;
begin
  Result := False;
  FQuery := FConn.GetQuery;
  FQuery.SQL.Add(SQLSELECT);
  if Length(aParams) >= 2 then
  begin
    FQuery.SQL.Add('where');
    if aParams[0] = 'ID' then
      FQuery.SQL.Add('id_endereco = ' + aParams[1])
    else if aParams[0] = 'CONTRATADO' then
      FQuery.SQL.Add('id_contradados = ' + aParams[1])
    else if aParams[0] = 'CEP' then
      FQuery.SQL.Add('num_cep like "%' + aParams[1] + '%"')
    else if aParams[0] = 'LOGRADOURO' then
      FQuery.SQL.Add('des_logradouro like "%' + aParams[1] + '%"')
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

function TContratadosEnderecosModel.SetupRecords: boolean;
begin
  Result := False;
  if FQuery.IsEmpty then
    Exit;
  ARecord.id_endereco     :=  FQuery.FieldByName('id_endereco').AsInteger;
  ARecord.id_contratados  :=  FQuery.FieldByName('id_contratados').AsInteger;
  ARecord.des_tipo        :=  FQuery.FieldByName('des_tipo').AsString;
  ARecord.num_cep         :=  FQuery.FieldByName('num_cep').AsString;
  Arecord.des_logradouro  :=  FQuery.FieldByName('des_logradouro').AsString;
  ARecord.num_logradouro  :=  FQuery.FieldByName('num_logradouro').AsString;
  ARecord.des_complemento :=  FQuery.FieldByName('des_complemento').AsString;
  ARecord.des_bairro      :=  FQuery.FieldByName('des_bairro').AsString;
  ARecord.nom_cidade      :=  FQuery.FieldByName('nom_cidade').AsString;
  ARecord.uf_estado       :=  FQuery.FieldByName('uf_estado').AsString;
  ARecord.des_referencia  :=  FQuery.FieldByName('des_referencia').AsString;
  Result := True;
end;

end.
