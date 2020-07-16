unit DAO.ExpedicaoExpressas;

interface

uses
  FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Model.ExpedicaoExpressas, System.DateUtils;

type
  TExpedicaoExpressasDAO = class
  private
    FConexao : TConexao;
  public
    constructor Create;
    function GetID(): Integer;
    function Inserir(AExpedicao: TExpedicaoExpressas): Boolean;
    function Alterar(AExpedicao: TExpedicaoExpressas): Boolean;
    function Excluir(AExpedicao: TExpedicaoExpressas): Boolean;
    function GeraNumeroContaiter(): Integer;
    function GeraNumeroRomaneio(AExpedicao: TExpedicaoExpressas): Integer;
    function NNExiste(sNN: String): Integer;
    function Pesquisar(aParam: array of variant): TFDQuery;
  end;
  const
    TABLENAME = 'expressas_expedicao';

implementation

{ TExpedicaoExpressasDAO }

uses Control.Sistema;

function TExpedicaoExpressasDAO.Alterar(AExpedicao: TExpedicaoExpressas): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('update ' + TABLENAME + ' set ' +
    'dat_expedicao = :dat_expedicao, cod_ccep = :cod_ccep, cod_base = :cod_base, num_container = :num_container, ' +
    'cod_unitizador = :cod_unitizador, num_nossonumero = :num_nossonumero, cod_embarcador = :cod_embarcador, ' +
    'des_embarcador = :des_embarcador, qtd_volumes = :qtd_volumes, qtd_peso = :qtd_peso, des_executor = :des_executor, '+
    'dat_execucao = :dat_execucao, des_conferente = :des_conferente, dat_conferencia = :dat_conferencia, ' +
    'des_recebedor = :des_recebedor, dat_recebimento = :dat_recebimento, dom_ccep = :dom_ccep, num_romaneio = :num_romaneio ' +
    'where id_expedicao = :id_expedicao;',
    [AExpedicao.Data, AExpedicao.CCEP, AExpedicao.Base, AExpedicao.Container, AExpedicao.Unitizador, AExpedicao.NN,
    AExpedicao.Embarcador, AExpedicao.NomeEmbarcador, AExpedicao.Volumes, AExpedicao.Peso, AExpedicao.Executor, AExpedicao.Execucao,
    AExpedicao.Conferente, AExpedicao.Conferencia, AExpedicao.Recebedor, AExpedicao.Recebimento, AExpedicao.DomCCEP,
    AExpedicao.Romaneio, AExpedicao.ID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TExpedicaoExpressasDAO.Create;
begin
  FConexao := TSistemaControl.GetInstance().Conexao;
end;

function TExpedicaoExpressasDAO.Excluir(AExpedicao: TExpedicaoExpressas): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where id_expedicao = :id_expedicao;', [AExpedicao.ID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TExpedicaoExpressasDAO.GeraNumeroContaiter: Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(num_container),0) + 1 from ' + TABLENAME);
    try
      Result := FDQuery.Fields[0].AsInteger;
    finally
      FDQuery.Close;
    end;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TExpedicaoExpressasDAO.GeraNumeroRomaneio(AExpedicao: TExpedicaoExpressas): Integer;
var
  iDias: Integer;
  sRomaneio: String;
begin
  Result := 0;
  iDias := DaysBetween(AExpedicao.Data, StrToDateDef('01/01/2000',0));
  sRomaneio := iDias.ToString + AExpedicao.CCEP;
  Result := StrToIntDef(sRomaneio, 0);
end;

function TExpedicaoExpressasDAO.GetID: Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(id_expedicao),0) + 1 from ' + TABLENAME);
    try
      Result := FDQuery.Fields[0].AsInteger;
    finally
      FDQuery.Close;
    end;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TExpedicaoExpressasDAO.Inserir(AExpedicao: TExpedicaoExpressas): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    AExpedicao.ID := GetID;
    AExpedicao.Romaneio := GeraNumeroRomaneio(AExpedicao);
    FDQuery.ExecSQL('insert into ' + TABLENAME +
    '(id_expedicao, dat_expedicao, cod_ccep, cod_base, num_container, cod_unitizador, num_nossonumero, cod_embarcador, ' +
    'des_embarcador, qtd_volumes, qtd_peso, des_executor, dat_execucao, des_conferente, dat_conferencia, des_recebedor, ' +
    'dat_recebimento, dom_ccep, num_romaneio) ' +
    'value ' +
    '(:id_expedicao, :dat_expedicao, :cod_ccep, :cod_base, :num_container, :cod_unitizador, :num_nossonumero, :cod_embarcador, ' +
    ':des_embarcador, :qtd_volumes, :qtd_peso, :des_executor, :dat_execucao, :des_conferente, :dat_conferencia, :des_recebedor, ' +
    ':dat_recebimento, :dom_ccep, :num_romaneio)',
    [AExpedicao.ID, AExpedicao.Data, AExpedicao.CCEP, AExpedicao.Base, AExpedicao.Container, AExpedicao.Unitizador, AExpedicao.NN,
    AExpedicao.Embarcador, AExpedicao.NomeEmbarcador, AExpedicao.Volumes, AExpedicao.Peso, AExpedicao.Executor,
    AExpedicao.Execucao, AExpedicao.Conferente, AExpedicao.Conferencia, AExpedicao.Recebedor, AExpedicao.Recebimento,
    AExpedicao.DomCCEP, AExpedicao.Romaneio]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TExpedicaoExpressasDAO.NNExiste(sNN: String): Integer;
var
  FDQuery : TFDQuery;
begin
  Result := 0;
  FDQuery := FConexao.ReturnQuery();
  FDQuery.SQL.Clear;
  FDQuery.SQL.Add('select num_container from ' + TABLENAME + ' where num_nossonumero = ' + QuotedStr(sNN));
  FDQuery.Open;
  if FDQuery.IsEmpty then Result := FDQuery.FieldByName('num_container').AsInteger;
  FDQuery.Connection.Close;
  FDQuery.Free;
end;

function TExpedicaoExpressasDAO.Pesquisar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;
  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'ID' then
  begin
    FDQuery.SQL.Add('where id_expedicao = :id_expedicao');
    FDQuery.ParamByName('id_expedicao').AsInteger := aParam[1];
  end;
  if aParam[0] = 'CCEP' then
  begin
    FDQuery.SQL.Add('where cod_ccep = :cod_ccep');
    FDQuery.ParamByName('cod_ccep').AsString := aParam[1];
  end;
  if aParam[0] = 'BASE' then
  begin
    FDQuery.SQL.Add('where cod_base = :cod_base');
    FDQuery.ParamByName('cod_base').AsInteger := aParam[1];
  end;
  if aParam[0] = 'DATA' then
  begin
    FDQuery.SQL.Add('where dat_expedicao = :dat_expedicao');
    FDQuery.ParamByName('dat_expedicao').AsDateTime := aParam[1];
  end;
  if aParam[0] = 'CONTAINER' then
  begin
    FDQuery.SQL.Add('where num_container = :num_container');
    FDQuery.ParamByName('num_container').AsInteger := aParam[1];
  end;
  if aParam[0] = 'NN' then
  begin
    FDQuery.SQL.Add('where num_nossonumero = :num_nossonumero');
    FDQuery.ParamByName('num_nossonumero').AsString := aParam[1];
  end;
  if aParam[0] = 'ROMANEIO' then
  begin
    FDQuery.SQL.Add('where num_romaneio = :num_romaneio');
    FDQuery.ParamByName('num_romaneio').AsString := aParam[1];
  end;
  if aParam[0] = 'EMBARCADOR' then
  begin
    FDQuery.SQL.Add('where cod_embarcador = :cod_embarcador');
    FDQuery.ParamByName('cod_embarcador').AsInteger := aParam[1];
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
