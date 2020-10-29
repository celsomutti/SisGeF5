unit Model.RoteirosExpressas;

interface

uses Common.ENum, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Data.DB, DAO.Conexao;

type
  TRoteirosExpressas = class
  private
    FLogradouro: String;
    FZona: String;
    FBairro: String;
    FDescricao: String;
    FCliente: Integer;
    FPrazo: String;
    FCEPFinal: String;
    FCEPInicial: String;
    FID: Integer;
    FTipo: Integer;
    FCCEP5: String;
    FAcao: TAcao;
    FConexao: TConexao;
    FCodigoPesado: Integer;
    FCodigoLeve: Integer;
    function Inserir(): Boolean;
    function Alterar(): Boolean;
    function Excluir(): Boolean;


  public
    property ID: Integer read FID write FID;
    property CCEP5: String read FCCEP5 write FCCEP5;
    property Descricao: String read FDescricao write FDescricao;
    property CEPInicial: String read FCEPInicial write FCEPInicial;
    property CEPFinal: String read FCEPFinal write FCEPFinal;
    property Prazo: String read FPrazo write FPrazo;
    property Zona: String read FZona write FZona;
    property Tipo: Integer read FTipo write FTipo;
    property Logradouro: String read FLogradouro write FLogradouro;
    property Bairro: String read FBairro write FBairro;
    property Cliente: Integer read FCliente write FCliente;
    property CodigoLeve: Integer read FCodigoLeve write FCodigoLeve;
    property CodigoPesado: Integer read FCodigoPesado write FCodigoPesado;
    property Acao: TAcao read FAcao write FAcao;

    constructor Create;
    function GetID(): Integer;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
    function DeleteCliente(iCliente: Integer): Boolean;
    function SaveData(mtbRoteiro: TFDMemTable): Boolean;
    function ListRoteiro(): TFDQuery;
    function SetupModel(fdQuery: TFDQuery): Boolean;

  end;
  const
    TABLENAME = 'expressas_roteiros';
    SQLINSERT = 'insert into ' + TABLENAME + '(id_roteiro, cod_ccep5, des_roteiro, num_cep_inicial, num_cep_final, ' +
                'des_prazo, dom_zona, cod_tipo, des_logradouro, des_bairro, cod_cliente, cod_leve, cod_pesado)' +
                'values ' +
                '(:id_roteiro, :cod_ccep5, :des_roteiro, :num_cep_inicial, :num_cep_final, :des_prazo, :dom_zona, :cod_tipo, '+
                ':des_logradouro, :des_bairro, :cod_cliente, :cod_leve, :cod_pesado);';
    SQLUPDATE = 'update ' + TABLENAME + ' set cod_ccep5 = :cod_ccep5, des_roteiro = :des_roteiro, ' +
                'num_cep_inicial = :num_cep_inicial, num_cep_final = :num_cep_final, des_prazo - :des_prazo, ' +
                'dom_zona = :dom_zona, cod_tipo = :cod_tipo, des_logradouro = :des_logradouro, ' +
                'des_bairro = :des_bairro, cod_cliente = :cod_cliente, cod_leve = :cod_leve, cod_pesado = :cod_pesado ' +
                'where id_roteiro = :id_roteiro;';

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
    fdQuery.ExecSQL(SQLUPDATE, [Self.CCEP5, Self.Descricao,Self.CEPInicial, Self.CEPFinal, Self.Prazo, self.Zona,
                    Self.Tipo, Self.Logradouro, Self.Bairro, Self.Cliente, Self.ID]);
    Result := True;
  finally
    fdQuery.Connection.Close;
    fdQuery.Free;
  end;
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
    fdQuery.ExecSQL('delete from ' + TABLENAME + ' where id_roteiro = :id_roteiro', [Self.ID]);
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
    Common.ENum.tacIncluir: Result := Inserir();
    Common.ENum.tacAlterar: Result := Alterar();
    Common.ENum.tacExcluir: Result := Excluir();
  end;
end;

function TRoteirosExpressas.Inserir: Boolean;
var
  fdQuery: TFDQuery;
begin
  try
    Result := False;
    fdQuery := FConexao.ReturnQuery();
    //Self.ID := Self.GetID();
    fdQuery.ExecSQL(SQLINSERT, [Self.ID, Self.CCEP5, Self.Descricao,Self.CEPInicial, Self.CEPFinal, Self.Prazo, Self.Zona,
                    Self.Tipo, Self.Logradouro, Self.Bairro, Self.Cliente]);
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
  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'ID' then
  begin
    FDQuery.SQL.Add('where id_roteiro = :id_roteiro');
    FDQuery.ParamByName('id_roteiro').AsInteger := aParam[1];
  end;
  if aParam[0] = 'CEP' then
  begin
    FDQuery.SQL.Add('where num_cep_inicial = :num_cep and cod_cliente = :cod_cliente');
    FDQuery.ParamByName('num_cep').AsString := aParam[1];
    FDQuery.ParamByName('cod_cliente').AsInteger := aParam[2];
  end;
  if aParam[0] = 'LEVE' then
  begin
    FDQuery.SQL.Add('where cod_leve = :cod_leve and cod_cliente = :cod_cliente');
    FDQuery.ParamByName('cod_leve').AsInteger := aParam[1];
    FDQuery.ParamByName('cod_cliente').AsInteger := aParam[2];
  end;
  if aParam[0] = 'PESADO' then
  begin
    FDQuery.SQL.Add('where cod_pesado = :cod_pesado and cod_cliente = :cod_cliente');
    FDQuery.ParamByName('cod_pesado').AsInteger := aParam[1];
    FDQuery.ParamByName('cod_cliente').AsInteger := aParam[2];
  end;
  if aParam[0] = 'CCEP5' then
  begin
    FDQuery.SQL.Add('where cod_ccep5 = :cod_ccep5');
    FDQuery.ParamByName('cod_ccep5').AsString := aParam[1];
  end;
  if aParam[0] = 'LOGRADOURO' then
  begin
    FDQuery.SQL.Add('where des_descricao_sem_numero like :des_descricao_sem_numero');
    FDQuery.ParamByName('des_descricao_sem_numero').AsString := aParam[1];
  end;
  if aParam[0] = 'ROTEIRO' then
  begin
    FDQuery.SQL.Add('where des_roteiro like :des_roteiro');
    FDQuery.ParamByName('des_roteiro').AsString := aParam[1];
  end;
  if aParam[0] = 'CLIENTE' then
  begin
    FDQuery.SQL.Add('where cod_cliente = :cod_cliente');
    FDQuery.ParamByName('cod_cliente').AsInteger := aParam[1];
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

function TRoteirosExpressas.SaveData(mtbRoteiro: TFDMemTable): Boolean;
var
  fdQuery : TFDQuery;
  icounter : Integer;
begin
  try
    Result := False;
    fdQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery();
    fdQuery.SQL.Text :=  SQLINSERT;

    if not mtbRoteiro.IsEmpty then mtbRoteiro.First;
    icounter := 0;
    while not mtbRoteiro.Eof do
    begin
      FDQuery.Params.ArraySize := icounter + 1;
      FDQuery.ParamByName('id_roteiro').AsIntegers[icounter] := mtbRoteiro.FieldByName('id_roteiro').AsInteger;
      FDQuery.ParamByName('cod_ccep5').AsStrings[icounter] := mtbRoteiro.FieldByName('cod_ccep5').AsString;
      FDQuery.ParamByName('des_roteiro').AsStrings[icounter] := mtbRoteiro.FieldByName('des_roteiro').AsString;
      FDQuery.ParamByName('num_cep_inicial').AsStrings[icounter] := mtbRoteiro.FieldByName('num_cep_inicial').AsString;
      FDQuery.ParamByName('num_cep_final').AsStrings[icounter] := mtbRoteiro.FieldByName('num_cep_final').AsString;
      FDQuery.ParamByName('num_cep_final').AsStrings[icounter] := mtbRoteiro.FieldByName('des_prazo').AsString;
      FDQuery.ParamByName('dom_zona').AsStrings[icounter] := mtbRoteiro.FieldByName('dom_zona').AsString;
      FDQuery.ParamByName('cod_tipo').AsIntegers[icounter] := mtbRoteiro.FieldByName('cod_tipo').AsInteger;
      FDQuery.ParamByName('des_logradouro').AsStrings[icounter] := mtbRoteiro.FieldByName('des_logradouro').AsString;
      FDQuery.ParamByName('des_bairro').AsStrings[icounter] := mtbRoteiro.FieldByName('des_bairro').AsString;
      FDQuery.ParamByName('cod_cliente').AsIntegers[icounter] := mtbRoteiro.FieldByName('cod_cliente').AsInteger;
      FDQuery.ParamByName('cod_leve').AsIntegers[icounter] := mtbRoteiro.FieldByName('cod_leve').AsInteger;
      FDQuery.ParamByName('cod_pesado').AsIntegers[icounter] := mtbRoteiro.FieldByName('cod_pesado').AsInteger;
      Inc(icounter);
      mtbRoteiro.Next;
    end;
    FDQuery.Execute(mtbRoteiro.RecordCount, 0);
    if not mtbRoteiro.IsEmpty then mtbRoteiro.First;
    Result := True;
  finally
    fdQuery.Connection.Close;
    fdQuery.Free;
  end;
end;

function TRoteirosExpressas.SetupModel(fdQuery: TFDQuery): Boolean;
begin
  try
    Result := False;
    FID := fdQuery.FieldByName('id_roteiro').AsInteger;
    FCCEP5 := fdQuery.FieldByName('cod_ccep5').AsString;
    FDescricao := fdQuery.FieldByName('des_roteiro').AsString;
    FCEPInicial := fdQuery.FieldByName('num_cep_inicial').AsString;
    FCEPFinal := fdQuery.FieldByName('num_cep_final').AsString;
    FPrazo := fdQuery.FieldByName('num_cep_final').AsString;
    FZona := fdQuery.FieldByName('dom_zona').AsString;
    FTipo := fdQuery.FieldByName('cod_tipo').AsInteger;
    FLogradouro := fdQuery.FieldByName('des_logradouro').AsString;
    FBairro := fdQuery.FieldByName('des_bairro').AsString;
    FCliente := fdQuery.FieldByName('cod_cliente').AsInteger;
    FCodigoLeve := fdQuery.FieldByName('cod_leve').AsInteger;
    FCodigoPesado := fdQuery.FieldByName('cod_pesado').AsInteger;
  finally
    Result := True;
  end;
end;

end.
