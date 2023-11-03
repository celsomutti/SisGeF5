unit Model.SisGeFTrackingExpress;

interface

uses Common.ENum, FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, System.DateUtils, System.Variants;

type
  TModelSisGeFTrackingExpress = class
  private
    FLogradouro: string;
    FBairro: string;
    FAWB: string;
    FCEP: string;
    FID: integer;
    FRemessa: string;
    FTelefone2: string;
    FComplemento: string;
    FTelefone3: string;
    FTelefone1: string;
    FMensagem: String;
    FCidade: string;
    FData: TDateTime;
    FAcao: TAcao;
    FQuery: TFDQuery;
    FConexao : TConexao;
    FNumero: string;

    function Inserir(): Boolean;
    function Alterar(): Boolean;
    function Excluir(): Boolean;

  public
    property ID: integer read FID write FID;
    property Data: TDateTime read FData write FData;
    property Remessa: string read FRemessa write FRemessa;
    property AWB: string read FAWB write FAWB;
    property Logradouro: string read FLogradouro write FLogradouro;
    Property Numero: string read FNumero write FNumero;
    property Bairro: string read FBairro write FBairro;
    property Cidade: string read FCidade write FCidade;
    property CEP: string read FCEP write FCEP;
    property Telefone1: string read FTelefone1 write FTelefone1;
    property Telefone2: string read FTelefone2 write FTelefone2;
    property Telefone3: string read FTelefone3 write FTelefone3;
    property Complemento: string read FComplemento write FComplemento;
    property Mensagem: String read FMensagem write FMensagem;
    property Acao: TAcao read FAcao write FAcao;
    property Query: TFDQuery read FQuery write FQuery;
    constructor Create;
    function Search(aParam: array of variant): Boolean;
    function Save(): Boolean;
    function GetField(sField: String; sKey: String; sKeyValue: String): String;
    function TruncTable(): Boolean;
    procedure SetupSelf();
    procedure ClearSelf();
  end;

const
  TABLENAME = 'expressas_tracking';
  SQLSELECT = 'SELECT id_tracking, dat_tracking, num_remessa, cod_awb, des_logradouro, num_logradouro, nom_bairro, ' +
              'nom_cidade_uf, num_cep, num_telefone_1, num_telefone_2, num_telefone_3, des_complemento FROM ' + TABLENAME;
  SQLINSERT = 'INSERT INTO ' + TABLENAME + ' (id_tracking, dat_tracking, num_remessa, cod_awb, des_logradouro, ' +
              'num_logradouro, nom_bairro, nom_cidade_uf, num_cep, num_telefone_1, num_telefone_2, num_telefone_3, ' +
              'des_complemento) ' +
              'VALUES ' +
              '(:id_tracking, :dat_tracking, :num_remessa, :cod_awb, :des_logradouro, :num_logradouro, :nom_bairro, ' +
              ':nom_cidade_uf, :num_cep, :num_telefone_1, :num_telefone_2, :num_telefone_3, :des_complemento);';
  SQLUPDATE = 'ALTER TABLE ' + TABLENAME + 'dat_tracking = :dat_tracking, num_remessa = :num_remessa, cod_awb = :cod_awb, ' +
              'des_logradouro = :des_logradouro, num_logradouro = :num_logradouro, nom_bairro = :nom_bairro, ' +
              'nom_cidade_uf = :nom_cidade_uf, num_cep = :num_cep, num_telefone_1 = :num_telefone_1, ' +
              'num_telefone_2 = :num_telefone_2, num_telefone_3 = :num_telefone_3, des_complemento = :des_complemento ' +
              'WHERE id_tracking = :id_tracking';
  SQLDELETE = 'DELEE FROM ' + TABLENAME + ' WHERE WHERE id_tracking = :id_tracking';
  SQLTRUNC  = 'TRUNCATE TABLE ' + TABLENAME;
implementation

{ TModelSisGeFTrackingExpress }

function TModelSisGeFTrackingExpress.Alterar: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Connection.Ping;
    FDQuery.ExecSQL(SQLUPDATE,[FData, FRemessa, FAWB, FLogradouro, FNumero, FBairro, FCidade, FCEP, FTelefone1, FTelefone2,
                               FTelefone2, FTelefone3, FComplemento,FID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

procedure TModelSisGeFTrackingExpress.ClearSelf;
begin
  FData := 0;
  FRemessa := '';
  FAWB := '';
  FLogradouro := '';
  FNumero := '';
  FBairro := '';
  FCidade := '';
  FCEP := '';
  FTelefone1 := '';
  FTelefone2 := '';
  FTelefone3 := '';
  FComplemento := '';
  FID := 0;
end;

constructor TModelSisGeFTrackingExpress.Create;
begin
  FConexao := TConexao.Create;
end;

function TModelSisGeFTrackingExpress.Excluir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Connection.Ping;
    FDQuery.ExecSQL(SQLDELETE,[FID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TModelSisGeFTrackingExpress.GetField(sField, sKey, sKeyValue: String): String;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.SQL.Text := 'SELECT ' + sField + ' FROM ' + TABLENAME + ' WHERE ' + sKey + ' = ' + sKeyValue;
    FDQuery.Open();
    if not FDQuery.IsEmpty then Result := FDQuery.FieldByName(sField).AsString;
  finally
    FDQuery.Free;
  end;
end;

function TModelSisGeFTrackingExpress.Inserir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Connection.Ping;
    FDQuery.ExecSQL(SQLINSERT,[FID, FData, FRemessa, FAWB, FLogradouro, FNumero, FBairro, FCidade, FCEP, FTelefone1, FTelefone2,
                               FTelefone3, FComplemento]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TModelSisGeFTrackingExpress.Save: Boolean;
begin
  Result := False;
  case FAcao of
    Common.ENum.tacIncluir: Result := Inserir();
    Common.ENum.tacAlterar: Result := Alterar();
    Common.ENum.tacExcluir: Result := Excluir();
  end;
end;

function TModelSisGeFTrackingExpress.Search(aParam: array of variant): Boolean;
begin
  Result := False;
  FQuery := FConexao.ReturnQuery();
  if Length(aParam) = 0 then
  begin
    Exit;
  end;
  FQuery.SQL.Clear;
  FQuery.SQL.Add(SQLSELECT);
  if aParam[0] = 'ID' then
  begin
    FQuery.SQL.Add('WHERE id_tracking = :id_tracking');
    FQuery.ParamByName('id_tracking').AsString := aParam[1];
  end
  else if aParam[0] = 'REMESSA' then
  begin
    FQuery.SQL.Add('WHERE num_remessa = :num_remessa');
    FQuery.ParamByName('num_remessa').AsString := aParam[1];
  end
  else if aParam[0] = 'AWB' then
  begin
    FQuery.SQL.Add('WHERE cod_awb = :cod_awb');
    FQuery.ParamByName('cod_awb').AsString := aParam[1];
  end;
  FQuery.Open();
  if FQuery.IsEmpty then
  begin
    FQuery.Active := False;
    FQuery.Connection.Connected := False;
    Exit;
  end;
  Result := True;
end;

procedure TModelSisGeFTrackingExpress.SetupSelf();
begin
  FData := FQuery.FieldByName('dat_tracking').AsDateTime;
  FRemessa := FQuery.FieldByName('num_remessa').AsString;
  FAWB := FQuery.FieldByName('cod_awb').AsString;
  FLogradouro := FQuery.FieldByName('des_logradouro').AsString;
  FNumero := FQuery.FieldByName('num_logradouro').AsString;
  FBairro := FQuery.FieldByName('nom_bairro').AsString;
  FCidade := FQuery.FieldByName('nom_cidade_uf').AsString;
  FCEP := FQuery.FieldByName('num_cep').AsString;
  FTelefone1 := FQuery.FieldByName('num_telefone_1').AsString;
  FTelefone2 := FQuery.FieldByName('num_telefone_2').AsString;
  FTelefone3 := FQuery.FieldByName('num_telefone_3').AsString;
  FComplemento := FQuery.FieldByName('des_complemento').AsString;
  FID := FQuery.FieldByName('id_tracking').AsInteger;;
end;

function TModelSisGeFTrackingExpress.TruncTable: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Connection.Ping;
    FDQuery.ExecSQL(SQLTRUNC,[]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

end.
