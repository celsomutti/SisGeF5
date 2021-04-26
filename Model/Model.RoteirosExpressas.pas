unit Model.RoteirosExpressas;

interface

uses Common.ENum, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Data.DB, DAO.Conexao;

type
  TRoteirosExpressas = class
  private
    FAcao: TAcao;
    FConexao: TConexao;
    FDescricao: String;
    FCliente: Integer;
    FCEP: String;
    FID: Integer;
    FCCEP5: String;
    FTipo: Integer;

    function Inserir(): Boolean;
    function Alterar(): Boolean;
    function Excluir(): Boolean;

  public
    property ID: Integer read FID write FID;
    property CEP: String read FCEP write FCEP;
    property CCEP5: String read FCCEP5 write FCCEP5;
    property Cliente: Integer read FCliente write FCliente;
    property Descricao: String read FDescricao write FDescricao;
    property Tipo: Integer read FTipo write FTipo;
    property Acao: TAcao read FAcao write FAcao;

    constructor Create;
    function GetID(): Integer;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
    function DeleteCliente(iCliente: Integer): Boolean;
    function ListRoteiro(): TFDQuery;
    function SetupModel(fdQuery: TFDQuery): Boolean;
    procedure ClearModel;
  end;
  const
    TABLENAME = 'expressas_roteiros';
    SQLINSERT = 'insert into ' + TABLENAME + '(id_roteiro, num_cep, cod_ccep5, cod_cliente, des_roteiro, cod_tipo)' +
                'values ' +
                '(:id_roteiro, :num_cep, :cod_ccep5, :cod_cliente, :des_roteiro, :cod_tipo);';
    SQLUPDATE = 'update ' + TABLENAME + ' set num_cep = :num_cep, cod_ccep5 = :cod_ccep5, cod_cliente = :cod_cliente, ' +
                'des_roteiro = :des_roteiro, cod_tipo = :cod_tipo ' +
                'where id_roteiro = :id_roteiro;';
    SQLDELETE = 'delete from ' + TABLENAME + ' where id_roteiro = :id_roteiro';
    SQLQUERY  = 'select id_roteiro, num_cep, cod_ccep5, cod_cliente, des_roteiro, cod_tipo from ' + TABLENAME;

implementation

{ TRoteirosExpressas }

uses Control.Sistema;

function TRoteirosExpressas.Alterar: Boolean;
var
  fdQuery: TFDQuery;
begin
  try
    Result := False;
    fdQuery := FConexao.ReturnQuery();
    fdQuery.ExecSQL(SQLUPDATE, [FCEP, FCCEP5, FCliente, FDescricao, FTipo, FID]);
    Result := True;
  finally
    fdQuery.Connection.Close;
    fdQuery.Free;
  end;
end;

procedure TRoteirosExpressas.ClearModel;
begin
  FID := 0;
  FCCEP5 := '00000';
  FDescricao := '';
  FCEP := '00000000';
  FTipo := 0;
  FCliente := 0;
end;

constructor TRoteirosExpressas.Create;
begin
  FConexao := TConexao.Create;
end;

function TRoteirosExpressas.DeleteCliente(iCliente: Integer): Boolean;
var
  fdQuery: TFDQuery;
begin
  try
    Result := False;
    fdQuery := FConexao.ReturnQuery();
    if iCliente > 0 then
    begin
      fdQuery.ExecSQL('delete from ' + TABLENAME + ' where cod_cliente = :cod_cliente', [iCliente]);
    end
    else
    begin
      fdQuery.ExecSQL('delete from ' + TABLENAME);
    end;
    Result := True;
  finally
    fdQuery.Connection.Close;
    fdquery.Free;
  end;
end;

function TRoteirosExpressas.Excluir: Boolean;
var
  fdQuery: TFDQuery;
begin
  try
    Result := False;
    fdQuery := FConexao.ReturnQuery();
    fdQuery.ExecSQL(SQLDELETE, [FID]);
    Result := True;
  finally
    fdQuery.Connection.Close;
    fdquery.Free;
  end;
end;

function TRoteirosExpressas.GetID: Integer;
var
  fdQuery: TFDQuery;
begin
  try
    fdQuery := FConexao.ReturnQuery();
    fdQuery.Open('select coalesce(max(id_roteiro),0) + 1 from ' + TABLENAME);
    try
      Result := fdQuery.Fields[0].AsInteger;
    finally
      fdQuery.Close;
    end;
  finally
    fdQuery.Connection.Close;
    fdQuery.Free;
  end;
end;

function TRoteirosExpressas.Gravar: Boolean;
begin
  Result := False;
  case FAcao of
    tacIncluir: Result := Inserir();
    tacAlterar: Result := Alterar();
    tacExcluir: Result := Excluir();
  end;
end;

function TRoteirosExpressas.Inserir: Boolean;
var
  fdQuery: TFDQuery;
begin
  try
    Result := False;
    fdQuery := FConexao.ReturnQuery();
    fdQuery.ExecSQL(SQLINSERT, [FID, FCEP, FCCEP5, FCliente, FDescricao, FTipo]);
    Result := True;
  finally
    fdQuery.Connection.Close;
    fdQuery.Free;
  end;
end;

function TRoteirosExpressas.ListRoteiro: TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  FDQuery.SQL.Clear;
  FDQuery.SQL.Add('select distinct des_roteiro from ' + TABLENAME);
  FDQuery.Open;
  Result := FDQuery;
end;

function TRoteirosExpressas.Localizar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;
  FDQuery.SQL.Add(SQLQUERY);
  if aParam[0] = 'ID' then
  begin
    FDQuery.SQL.Add('where id_roteiro = :id_roteiro');
    FDQuery.ParamByName('id_roteiro').AsInteger := aParam[1];
  end
  else if aParam[0] = 'CEP' then
  begin
    FDQuery.SQL.Add('where num_cep = :num_cep and cod_cliente = :cod_cliente');
    FDQuery.ParamByName('num_cep').AsString := aParam[1];
    FDQuery.ParamByName('cod_cliente').AsInteger := aParam[2];
  end
  else if aParam[0] = 'CCEP5' then
  begin
    FDQuery.SQL.Add('where cod_ccep5 = :cod_ccep5 and cod_cliente = :cod_cliente');
    FDQuery.ParamByName('cod_ccep5').AsString := aParam[1];
    FDQuery.ParamByName('cod_cliente').AsInteger := aParam[2];
  end
  else if aParam[0] = 'ROTEIRO' then
  begin
    FDQuery.SQL.Add('where des_roteiro like :des_roteiro');
    FDQuery.ParamByName('des_roteiro').AsString := aParam[1];
  end
  else if aParam[0] = 'FILTRO' then
  begin
    FDQuery.SQL.Add('where ' + aParam[1]);
  end
  else if aParam[0] = 'APOIO' then
  begin
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('select  ' + aParam[1] + ' from ' + TABLENAME + ' ' + aParam[2]);
  end;
  FDQuery.Open;
  Result := FDQuery;
end;

function TRoteirosExpressas.SetupModel(fdQuery: TFDQuery): Boolean;
begin
  try
    Result := False;
    FID := fdQuery.FieldByName('id_roteiro').AsInteger;
    FCCEP5 := fdQuery.FieldByName('cod_ccep5').AsString;
    FDescricao := fdQuery.FieldByName('des_roteiro').AsString;
    FCEP := fdQuery.FieldByName('num_cep').AsString;
    FTipo := fdQuery.FieldByName('cod_tipo').AsInteger;
    FCliente := fdQuery.FieldByName('cod_cliente').AsInteger;
  finally
    Result := True;
  end;
end;

end.
