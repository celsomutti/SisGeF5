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
    FDescricao: string;

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
    property Descricao: string read FDescricao write FDescricao;
    property Acao: Tacao read FAcao write FAcao;

    constructor Create;
    function GetID(): Integer;
    function Localizar(aParam: array of variant): TFDQuery;
    function LocalizarExato(aParam: array of variant): Boolean;
    function Gravar(): Boolean;
    procedure SetupSelf(fdQuery: TFDQuery);
    procedure ClearSelf;
  end;
  const
    TABLENAME = 'expressas_controle_awb';
    SQLINSERT = 'insert into ' + TABLENAME + ' (id_awb, num_remessa, cod_awb1, cod_awb2, num_cep, cod_operacao,cod_tipo,qtd_peso, ' +
                'des_produto)' +
                'values ' +
                '(:id_awb, :num_remessa, :cod_awb1, :cod_awb2, :num_cep, :cod_operacao, :cod_tipo, :qtd_peso, :des_produto);';
    SQLUPDATE = 'update ' + TABLENAME + ' set num_remessa = :num_remessa, cod_awb1 = :cod_awb1, ' +
                'cod_awb2 = cod_awb2, num_cep= :num_cep, cod_operacao = :cod_operacao, ' +
                'cod_tipo = :cod_tipo, qtd_peso = :qtd_peso, des_produto = :des_produto where id_awb = :id_awb;';

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
    fdQuery.ExecSQL(SQLUPDATE, [Self.Remessa, Self.AWB1, Self.AWB2, Self.CEP, Self.Operacao, Self.Tipo, SelF.Peso, Self.Descricao,
                    Self.ID]);
    Result := True;
  finally
    fdQuery.Connection.Close;
    fdQuery.Free;
  end;
end;

procedure TControleAWB.ClearSelf;
begin
  Self.ID := 0;
  Self.Remessa := '';
  Self.AWB1 := '';
  Self.AWB2 := '';
  Self.CEP := '';
  Self.Operacao := '';
  Self.Tipo := 0;
  Self.Peso := 0;
  Self.Descricao := '';
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
    fdQuery.ExecSQL(SQLINSERT, [Self.ID, Self.Remessa, Self.AWB1, Self.AWB2, Self.CEP, Self.Operacao, Self.Tipo, SelF.Peso,
                    Self.Descricao]);
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
  if FDQuery.IsEmpty then
  begin
    ClearSelf;
  end
  else
  begin
    SetupSelf(FDQuery);
  end;
  Result := FDQuery;
end;

function TControleAWB.LocalizarExato(aParam: array of variant): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
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
    if FDQuery.IsEmpty then
    begin
      ClearSelf;
      Exit;
    end
    else
    begin
      SetupSelf(FDQuery);
    end;
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free
  end;
end;

procedure TControleAWB.SetupSelf(fdQuery: TFDQuery);
begin
  Self.ID := fdQuery.FieldByName('id_awb').AsInteger;
  Self.Remessa := fdQuery.FieldByName('num_remessa').AsString;
  Self.AWB1 := fdQuery.FieldByName('cod_awb1').AsString;
  Self.AWB2 := fdQuery.FieldByName('cod_awb2').AsString;
  Self.CEP := fdQuery.FieldByName('num_cep').AsString;
  Self.Operacao := fdQuery.FieldByName('cod_operacao').AsString;
  Self.Tipo := fdQuery.FieldByName('cod_tipo').AsInteger;
  Self.Peso := fdQuery.FieldByName('qtd_peso').AsFloat;
  Self.Descricao := fdQuery.FieldByName('des_produto').AsString;;
end;

end.
