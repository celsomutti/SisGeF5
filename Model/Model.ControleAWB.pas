unit Model.ControleAWB;

interface

uses Common.ENum, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Data.DB, DAO.Conexao;

type
  TControleAWB = class
  private
    FAWB2: String;
    FAWB1: String;
    FID: integer;
    FCEP: String;
    FRemessa: String;
    FAcao: Tacao;
    FConexao: TConexao;
    FOperacao: String;
    FPeso: Double;
    FTipo: Integer;

    function Inserir(): Boolean;
    function Alterar(): Boolean;
    function Excluir(): Boolean;

  public
    property ID: integer read FID write FID;
    property Remessa: String read FRemessa write FRemessa;
    property AWB1: String read FAWB1 write FAWB1;
    property AWB2: String read FAWB2 write FAWB2;
    property CEP: String read FCEP write FCEP;
    property Operacao: String read FOperacao write FOperacao;
    property Tipo: Integer read FTipo write FTipo;
    property Peso: Double read FPeso write FPeso;
    property Acao: Tacao read FAcao write FAcao;

    constructor Create;
    function GetID(): Integer;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
    
  end;
  const
    TABLENAME = 'expressas_controle_awb';
    SQLINSERT = 'insert into ' + TABLENAME + ' (id_awb, num_remessa, cod_awb1, cod_awb2, num_cep, cod_operacao,cod_tipo,qtd_peso)' +
                'values ' +
                '(:id_awb, :num_remessa, :cod_awb1, :cod_awb2, :num_cep, :cod_operacao, :cod_tipo, :qtd_peso);';
    SQLUPDATE = 'update ' + TABLENAME + ' set num_remessa = :num_remessa, cod_awb1 = :cod_awb1, ' +
                'cod_awb2 = cod_awb2, num_cep= :num_cep, cod_operacao = :cod_operacao, ' +
                'cod_tipo = :cod_tipo, qtd_peso = :qtd_peso where id_awb = :id_awb;';

implementation

{ TControleAWB }

uses Control.Sistema;

function TControleAWB.Alterar: Boolean;
var
  fdQuery: TFDQuery;
begin
  try
    Result := False;
    fdQuery := FConexao.ReturnQuery();
    fdQuery.ExecSQL(SQLUPDATE, [Self.Remessa, Self.AWB1, Self.AWB2, Self.CEP, Self.Operacao, Self.Tipo, SelF.Peso, Self.ID]);
    Result := True;
  finally
    fdQuery.Connection.Close;
    fdQuery.Free;
  end;
end;

constructor TControleAWB.Create;
begin
  FConexao := TConexao.Create;
end;

function TControleAWB.Excluir: Boolean;
var
  fdQuery: TFDQuery;
begin
  try
    Result := False;
    fdQuery := FConexao.ReturnQuery();
    fdQuery.ExecSQL('delete from ' + TABLENAME);
    Result := True;
  finally
    fdQuery.Connection.Close;
    fdquery.Free;
  end;
end;

function TControleAWB.GetID: Integer;
var
  fdQuery: TFDQuery;
begin
  try
    fdQuery := FConexao.ReturnQuery();
    fdQuery.Open('select coalesce(max(id_awb),0) + 1 from ' + TABLENAME);
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

function TControleAWB.Gravar: Boolean;
begin
  Result := False;
  case FAcao of
    Common.ENum.tacIncluir: Result := Inserir();
    Common.ENum.tacAlterar: Result := Alterar();
    Common.ENum.tacExcluir: Result := Excluir();
  end;
end;

function TControleAWB.Inserir: Boolean;
var
  fdQuery: TFDQuery;
begin
  try
    Result := False;
    fdQuery := FConexao.ReturnQuery();
    Self.ID := Self.GetID();
    fdQuery.ExecSQL(SQLINSERT, [Self.ID, Self.Remessa, Self.AWB1, Self.AWB2, Self.CEP, Self.Operacao, Self.Tipo, SelF.Peso]);
    Result := True;
  finally
    fdQuery.Connection.Close;
    fdQuery.Free;
  end;
end;

function TControleAWB.Localizar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;
  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'ID' then
  begin
    FDQuery.SQL.Add('where id_awb = :id_awb');
    FDQuery.ParamByName('id_awb').AsInteger := aParam[1];
  end;
  if aParam[0] = 'REMESSAAWB1' then
  begin
    FDQuery.SQL.Add('where num_remessa = :num_remessa and cod_awb1 = :cod_awb1');
    FDQuery.ParamByName('num_remessa').AsString := aParam[1];
    FDQuery.ParamByName('cod_awb1').AsString := aParam[2];
  end;
  if aParam[0] = 'REMESSAAWB2' then
  begin
    FDQuery.SQL.Add('where num_remessa = :num_remessa and cod_awb2 = :cod_awb2');
    FDQuery.ParamByName('num_remessa').AsString := aParam[1];
    FDQuery.ParamByName('cod_awb2').AsString := aParam[2];
  end;
  if aParam[0] = 'REMESSA' then
  begin
    FDQuery.SQL.Add('where num_remessa = :num_remessa');
    FDQuery.ParamByName('num_remessa').AsString := aParam[1];
  end;
  if aParam[0] = 'AWB1' then
  begin
    FDQuery.SQL.Add('where cod_awb1 like :des_roteiro');
    FDQuery.ParamByName('des_roteiro').AsString := aParam[1];
  end;
  if aParam[0] = 'AWB2' then
  begin
    FDQuery.SQL.Add('where cod_awb2 = :cod_awb2');
    FDQuery.ParamByName('cod_awb2').AsString := aParam[1];
  end;
  if aParam[0] = 'CEP' then
  begin
    FDQuery.SQL.Add('where num_cep = :num_cep');
    FDQuery.ParamByName('num_cep').AsString := aParam[1];
  end;
  if aParam[0] = 'FILTRO' then
  begin
    FDQuery.SQL.Add('where ' + aParam[1]);
  end;
  if aParam[0] = 'APOIO' then
  begin
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('select  ' + aParam[1] + ' from ' + TABLENAME + ' ' + aParam[2]);
  end;
  FDQuery.Open;
  Result := FDQuery;
end;

end.
