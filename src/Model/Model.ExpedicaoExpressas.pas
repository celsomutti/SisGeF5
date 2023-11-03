unit Model.ExpedicaoExpressas;

interface

uses Common.ENum, FireDAC.Comp.Client, DAO.Conexao, Control.Sistema, System.DateUtils, System.SysUtils;

type
  TExpedicaoExpressas = class
  private
    FAcao: Tacao;
    FContainer: Integer;
    FPeso: Double;
    FUnitizador: Integer;
    FConferencia: TDateTime;
    FNN: String;
    FExecucao: TDateTime;
    FExecutor: String;
    FVolumes: Integer;
    FID: Integer;
    FEmbarcador: Integer;
    FBase: Integer;
    FCCEP: String;
    FRecebedor: String;
    FConferente: String;
    FRecebimento: TDateTime;
    FData: TDateTime;
    FDomCCEP: Integer;
    FRomaneio: Integer;
    FNomeEmbarcador: String;
    FRoteiro: String;
    FConexao : TConexao;

    function Inserir(): Boolean;
    function Alterar(): Boolean;
    function Excluir(): Boolean;

  public
    constructor Create;
    property ID: Integer read FID write FID;
    property Data: TDateTime read FData write FData;
    property CCEP: String read FCCEP write FCCEP;
    property Base: Integer read FBase write FBase;
    property Container: Integer read FContainer write FContainer;
    property Unitizador: Integer read FUnitizador write FUnitizador;
    property NN: String read FNN write FNN;
    property Embarcador: Integer read FEmbarcador write FEmbarcador;
    property NomeEmbarcador: String read FNomeEmbarcador write FNomeEmbarcador;
    property Volumes: Integer read FVolumes write FVolumes;
    property Peso: Double read FPeso write FPeso;
    property Executor: String read FExecutor write FExecutor;
    property Execucao: TDateTime read FExecucao write FExecucao;
    property Conferente: String read FConferente write FConferente;
    property Conferencia: TDateTime read FConferencia write FConferencia;
    property Recebedor: String read FRecebedor write FRecebedor;
    property Recebimento: TDateTime read FRecebimento write FRecebimento;
    property DomCCEP: Integer read FDomCCEP write FDomCCEP;
    property Romaneio: Integer read FRomaneio write FRomaneio;
    property Roteiro: String read FRoteiro write FRoteiro;
    property Acao: Tacao read FAcao write FAcao;

    function GetID(): Integer;
    function GeraNumeroContaiter(): Integer;
    function GeraNumeroRomaneio(): Integer;
    function NNExiste(sNN: String): Integer;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
  end;

  const
    TABLENAME = 'expressas_expedicao';
    SQLUPDATE = 'update ' + TABLENAME + ' set ' +
                'dat_expedicao = :dat_expedicao, cod_ccep = :cod_ccep, cod_base = :cod_base, num_container = :num_container, ' +
                'cod_unitizador = :cod_unitizador, num_nossonumero = :num_nossonumero, cod_embarcador = :cod_embarcador, ' +
                'des_embarcador = :des_embarcador, qtd_volumes = :qtd_volumes, qtd_peso = :qtd_peso, des_executor = :des_executor, '+
                'dat_execucao = :dat_execucao, des_conferente = :des_conferente, dat_conferencia = :dat_conferencia, ' +
                'des_recebedor = :des_recebedor, dat_recebimento = :dat_recebimento, dom_ccep = :dom_ccep, ' +
                'num_romaneio = :num_romaneio, des_roteiro = :des_roteiro ' +
                'where id_expedicao = :id_expedicao;';

    SQLINSERT = 'insert into ' + TABLENAME +
                '(id_expedicao, dat_expedicao, cod_ccep, cod_base, num_container, cod_unitizador, num_nossonumero, cod_embarcador, ' +
                'des_embarcador, qtd_volumes, qtd_peso, des_executor, dat_execucao, des_conferente, dat_conferencia, des_recebedor, ' +
                'dat_recebimento, dom_ccep, num_romaneio, des_roteiro) ' +
                'value ' +
                '(:id_expedicao, :dat_expedicao, :cod_ccep, :cod_base, :num_container, :cod_unitizador, :num_nossonumero, :cod_embarcador, ' +
                ':des_embarcador, :qtd_volumes, :qtd_peso, :des_executor, :dat_execucao, :des_conferente, :dat_conferencia, :des_recebedor, ' +
                ':dat_recebimento, :dom_ccep, :num_romaneio, :des_roteiro);';

implementation

{ TExpedicaoExpressas }

function TExpedicaoExpressas.Alterar: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(SQLUPDATE, [Data, CCEP, Base, Container, Unitizador, NN, Embarcador, NomeEmbarcador, Volumes, Peso, Executor,
                    Execucao, Conferente, Conferencia, Recebedor, Recebimento, DomCCEP, Romaneio, Roteiro, ID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TExpedicaoExpressas.Create;
begin
  FConexao := TSistemaControl.GetInstance().Conexao;
end;

function TExpedicaoExpressas.Excluir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where id_expedicao = :id_expedicao;', [ID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TExpedicaoExpressas.GeraNumeroContaiter: Integer;
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

function TExpedicaoExpressas.GeraNumeroRomaneio: Integer;
var
  iDias: Integer;
  sRomaneio: String;
begin
  Result := 0;
  iDias := DaysBetween(Data, StrToDateDef('01/01/2000',0));
  sRomaneio := iDias.ToString + CCEP;
  Result := StrToIntDef(sRomaneio, 0);
end;

function TExpedicaoExpressas.GetID: Integer;
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

function TExpedicaoExpressas.Gravar: Boolean;
begin
  Result := False;
  case FAcao of
    Common.ENum.tacIncluir: Result := Inserir();
    Common.ENum.tacAlterar: Result := Alterar();
    Common.ENum.tacExcluir: Result := Excluir();
  end;
end;
function TExpedicaoExpressas.Inserir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    ID := GetID;
    Romaneio := GeraNumeroRomaneio();
    FDQuery.ExecSQL(SQLINSERT, [ID, Data, CCEP, Base, Container, Unitizador, NN, Embarcador, NomeEmbarcador, Volumes, Peso,
                    Executor, Execucao, Conferente, Conferencia, Recebedor, Recebimento, DomCCEP, Romaneio, Roteiro]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TExpedicaoExpressas.Localizar(aParam: array of variant): TFDQuery;
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

function TExpedicaoExpressas.NNExiste(sNN: String): Integer;
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

end.
