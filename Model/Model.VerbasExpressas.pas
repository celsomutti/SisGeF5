unit Model.VerbasExpressas;

interface

uses Common.ENum, FireDAC.Comp.Client, DAO.Conexao, System.SysUtils, Control.Sistema,
System.Variants;

type
  TVerbasExpressas = class
  private
    FID: Integer;
    FTipo: Integer;
    FGrupo: Integer;
    FVigencia: TDateTime;
    FVerba: Double;
    FPerformance: Double;
    FCEPInicial: String;
    FCEPFinal: String;
    FPesoInicial: Double;
    FPesoFinal: Double;
    FAcao: TAcao;
    FConexao : TConexao;
    FCliente: Integer;
    FRoteiro: Integer;

    function Inserir(): Boolean;
    function Alterar(): Boolean;
    function Excluir(): Boolean;

  public
    property ID: Integer read FID write FID;
    property Tipo: Integer read FTipo write FTipo;
    property Grupo: Integer read FGrupo write FGrupo;
    property Vigencia: TDateTime read FVigencia write FVigencia;
    property Verba: Double read FVerba write FVerba;
    property Performance: Double read FPerformance write FPerformance;
    property CEPInicial: String read FCEPInicial write FCEPInicial;
    property CEPFinal: String read FCEPFinal write FCEPFinal;
    property PesoInicial: Double read FPesoInicial write FPesoInicial;
    property PesoFinal: Double read FPesoFinal write FPesoFinal;
    property Cliente: Integer read FCliente write FCliente;
    property Roteiro: Integer read FRoteiro write FRoteiro;
    property Acao: TAcao read FAcao write FAcao;
    function GetID(): Integer;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
    function SetupModel(FDQuery: TFDQuery): Boolean;
    function RetornaVerba(aParam: array of variant): double;
    constructor Create();
  end;
const

  TABLENAME = 'expressas_verbas';

implementation

{ TVerbasExpressas }

function TVerbasExpressas.Alterar: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('update ' + TABLENAME + ' set ' +
    'cod_tipo = :pcod_tipo, cod_cliente = :cod_cliente, id_grupo = :pid_grupo, dat_vigencia = :pdat_vigencia, ' +
    'val_verba = :pval_verba, val_performance = :pval_performance, num_cep_inicial = :pnum_cep_inicial, ' +
    'num_cep_final = :pnum_cep_final, qtd_peso_inicial = :pqtd_peso_inicial, qtd_peso_final = :pqtd_peso_final, ' +
    'cod_roteiro = :cod_roteiro ' +
    'where id_verba = :pid_verba;', [Tipo, Cliente, Grupo, Vigencia, Verba, Performance, CEPInicial, CEPFinal, PesoInicial,
    PesoFinal, Roteiro, ID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;

end;

constructor TVerbasExpressas.Create;
begin
  FConexao := TConexao.Create;
end;

function TVerbasExpressas.Excluir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where id_verba = :pid_verba', [ID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TVerbasExpressas.GetID: Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(id_verba),0) + 1 from ' + TABLENAME);
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

function TVerbasExpressas.Gravar: Boolean;
begin
  Result := False;
  case FAcao of
    tacAlterar: Result := Alterar();
    tacIncluir: Result := Inserir();
    tacExcluir: Result := Excluir();
  end;
end;

function TVerbasExpressas.Inserir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    ID := GetID();
    FDQuery.ExecSQL('insert into ' + TABLENAME  + '(id_verba, cod_cliente, cod_tipo, id_grupo, dat_vigencia, val_verba, ' +
                    'val_performance, num_cep_inicial, num_cep_final, qtd_peso_inicial, qtd_peso_final, cod_roteiro) ' +
                    'values ' +
                    '(:pid_verba, :pcod_cliente, :pcod_tipo, :pid_grupo, :pdat_vigencia, :pval_verba, :pval_performance, ' +
                    ':pnum_cep_inicial, :pnum_cep_final, :pqtd_peso_inicial, :pqtd_peso_final, :cod_roteiro);',
                    [ID, Cliente, Tipo, Grupo, Vigencia, Verba, Performance, CEPInicial, CEPFinal, PesoInicial, PesoFinal,
                    Roteiro]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TVerbasExpressas.Localizar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;

  FDQuery.SQL.Add('select id_verba, cod_cliente, cod_tipo, id_grupo, dat_vigencia, val_verba, ' +
                  'val_performance, num_cep_inicial, num_cep_final, qtd_peso_inicial, qtd_peso_final, cod_roteiro from ' +
                  TABLENAME);
  if aParam[0] = 'ID' then
  begin
    FDQuery.SQL.Add('where id_verba = :pid_verba');
    FDQuery.ParamByName('pid_verba').AsInteger := aParam[1];
  end;
  if aParam[0] = 'TIPO' then
  begin
    FDQuery.SQL.Add('where cod_tipo = :pcod_tipo');
    FDQuery.ParamByName('pcod_tipo').AsInteger := aParam[1];
  end;
  if aParam[0] = 'CLIENTE' then
  begin
    FDQuery.SQL.Add('where cod_cliente = :pcod_cliente');
    FDQuery.ParamByName('pcod_cliente').AsInteger := aParam[1];
  end;
  if aParam[0] = 'TIPOCLIENTE' then
  begin
    FDQuery.SQL.Add('where cod_tipo = :pcod_tipo and cod_cliente = :pcod_cliente');
    FDQuery.ParamByName('pcod_tipo').AsInteger := aParam[1];
    FDQuery.ParamByName('pcod_cliente').AsInteger := aParam[2];
  end;

    if aParam[0] = 'FIXA' then
  begin
    FDQuery.SQL.Add('where cod_tipo = :pcod_tipo and cod_cliente = :pcod_cliente and id_grupo = :pid_grupo and dat_vigencia <= :pdat_vigencia ' +
                    'order by dat_vigencia desc');
    FDQuery.ParamByName('pcod_tipo').AsInteger := aParam[1];
    FDQuery.ParamByName('pcod_cliente').AsInteger := aParam[2];
    FDQuery.ParamByName('pid_grupo').AsInteger := aParam[3];
    FDQuery.ParamByName('pdat_vigencia').AsDateTime := aParam[4];
  end;
  if aParam[0] = 'FIXACEP' then
  begin
    FDQuery.SQL.Add('where cod_tipo = :pcod_tipo and cod_cliente = :pcod_cliente and id_grupo = :pid_grupo and dat_vigencia <= :pdat_vigencia and ' +
                    'num_cep_inicial <= :pnum_cep and num_cep_final >= :pnum_cep order by dat_vigencia desc');
    FDQuery.ParamByName('pcod_tipo').AsInteger := aParam[1];
    FDQuery.ParamByName('pcod_cliente').AsInteger := aParam[2];
    FDQuery.ParamByName('pid_grupo').AsInteger := aParam[3];
    FDQuery.ParamByName('pdat_vigencia').AsDateTime := aParam[4];
    FDQuery.ParamByName('pnum_cep').AsString := aParam[5];
  end;
  if aParam[0] = 'FIXAPESO' then
  begin
    FDQuery.SQL.Add('where cod_tipo = :pcod_tipo and cod_cliente = :pcod_cliente and id_grupo = :pid_grupo and dat_vigencia <= :pdat_vigencia and ' +
                    'qtd_peso_inicial <= :pqtd_peso and qtd_peso_final >= :pqtd_peso order by dat_vigencia desc');
    FDQuery.ParamByName('pcod_tipo').AsInteger := aParam[1];
    FDQuery.ParamByName('pcod_cliente').AsInteger := aParam[2];
    FDQuery.ParamByName('pid_grupo').AsInteger := aParam[3];
    FDQuery.ParamByName('pdat_vigencia').AsDateTime := aParam[4];
    FDQuery.ParamByName('pqtd_peso').AsFloat := aParam[5];
  end;
  if aParam[0] = 'SLA' then
  begin
    FDQuery.SQL.Add('where cod_tipo = :pcod_tipo and cod_cliente = :pcod_cliente and id_grupo = :pid_grupo and dat_vigencia <= :pdat_vigencia and ' +
                    'val_performance = :pval_performance  order by dat_vigencia desc');
    FDQuery.ParamByName('pcod_tipo').AsInteger := aParam[1];
    FDQuery.ParamByName('pcod_cliente').AsInteger := aParam[2];
    FDQuery.ParamByName('pid_grupo').AsInteger := aParam[3];
    FDQuery.ParamByName('pdat_vigencia').AsDateTime := aParam[4];
    FDQuery.ParamByName('pval_performance').AsFloat := aParam[5];
  end;
  if aParam[0] = 'CEPPESO' then
  begin
    FDQuery.SQL.Add('where cod_tipo = :pcod_tipo and cod_cliente = :pcod_cliente and id_grupo = :pid_grupo and dat_vigencia <= :pdat_vigencia and ' +
                    'num_cep_inicial <= :pnum_cep and num_cep_final >= :pnum_cep and ' +
                    'qtd_peso_inicial <= :pqtd_peso and qtd_peso_final >= :pqtd_peso order by dat_vigencia desc');
    FDQuery.ParamByName('pcod_tipo').AsInteger := aParam[1];
    FDQuery.ParamByName('pcod_cliente').AsInteger := aParam[2];
    FDQuery.ParamByName('pid_grupo').AsInteger := aParam[3];
    FDQuery.ParamByName('pdat_vigencia').AsDate := aParam[4];
    FDQuery.ParamByName('pnum_cep').AsString := aParam[5];
    FDQuery.ParamByName('pqtd_peso').AsFloat := aParam[6];
  end;
  if aParam[0] = 'ROTEIROPESO' then
  begin
    FDQuery.SQL.Add('where cod_tipo = :pcod_tipo and cod_cliente = :pcod_cliente and id_grupo = :pid_grupo and dat_vigencia <= :pdat_vigencia and ' +
                    'cod_roteiro = :pcod_roteiro and ' +
                    'qtd_peso_inicial <= :pqtd_peso and qtd_peso_final >= :pqtd_peso order by dat_vigencia desc');
    FDQuery.ParamByName('pcod_tipo').AsInteger := aParam[1];
    FDQuery.ParamByName('pcod_cliente').AsInteger := aParam[2];
    FDQuery.ParamByName('pid_grupo').AsInteger := aParam[3];
    FDQuery.ParamByName('pdat_vigencia').AsDateTime := aParam[4];
    FDQuery.ParamByName('pcod_roteiro').AsInteger := aParam[5];
    FDQuery.ParamByName('pqtd_peso').AsFloat := aParam[6];
  end;
  if aParam[0] = 'ROTEIROFIXA' then
  begin
    FDQuery.SQL.Add('where cod_tipo = :pcod_tipo and cod_cliente = :pcod_cliente and id_grupo = :pid_grupo and dat_vigencia <= :pdat_vigencia and ' +
                    'cod_roteiro = :pcod_roteiro order by dat_vigencia desc');
    FDQuery.ParamByName('pcod_tipo').AsInteger := aParam[1];
    FDQuery.ParamByName('pcod_cliente').AsInteger := aParam[2];
    FDQuery.ParamByName('pid_grupo').AsInteger := aParam[3];
    FDQuery.ParamByName('pdat_vigencia').AsDate :=aParam[4];
    FDQuery.ParamByName('pcod_roteiro').AsInteger := aParam[5];
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
  FDQuery.Open();
  if FDQuery.RecordCount > 0 then
  begin
    FDQuery.First;
    SetupModel(FDQuery);
  end;
  Result := FDQuery;
end;

function TVerbasExpressas.RetornaVerba(aParam: array of variant): double;
var
  FDQuery: TFDQuery;
begin
  try
    Result := 0;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.SQL.Clear;

    FDQuery.SQL.Add('select id_verba, cod_cliente, cod_tipo, id_grupo, dat_vigencia, val_verba, ' +
                    'val_performance, num_cep_inicial, num_cep_final, qtd_peso_inicial, qtd_peso_final, cod_roteiro from ' +
                    TABLENAME);

    if aParam[1] = 1 then
    begin
      FDQuery.SQL.Add('where cod_tipo = :pcod_tipo and cod_cliente = :pcod_cliente and id_grupo = :pid_grupo and ' +
                      'dat_vigencia <= :pdat_vigencia order by dat_vigencia desc');
      FDQuery.ParamByName('pcod_cliente').AsInteger := aParam[0];
      FDQuery.ParamByName('pcod_tipo').AsInteger := aParam[1];
      FDQuery.ParamByName('pid_grupo').AsInteger := aParam[2];
      FDQuery.ParamByName('pdat_vigencia').AsDateTime := VarToDateTime(aParam[3]);
    end;
    if aParam[1] = 2 then
    begin
      FDQuery.SQL.Add('where cod_tipo = :pcod_tipo and cod_cliente = :pcod_cliente and id_grupo = :pid_grupo and dat_vigencia <= :pdat_vigencia and ' +
                      'num_cep_inicial <= :pnum_cep and num_cep_final >= :pnum_cep order by dat_vigencia desc');
      FDQuery.ParamByName('pcod_tipo').AsInteger := aParam[1];
      FDQuery.ParamByName('pcod_cliente').AsInteger := aParam[0];
      FDQuery.ParamByName('pid_grupo').AsInteger := aParam[2];
      FDQuery.ParamByName('pdat_vigencia').AsDateTime := VarToDateTime(aParam[3]);
      FDQuery.ParamByName('pnum_cep').AsString := aParam[5];
    end;
    if aParam[1] = 3 then
    begin
      FDQuery.SQL.Add('where cod_tipo = :pcod_tipo and cod_cliente = :pcod_cliente and id_grupo = :pid_grupo and dat_vigencia <= :pdat_vigencia and ' +
                      'qtd_peso_inicial <= :pqtd_peso and qtd_peso_final >= :pqtd_peso order by dat_vigencia desc');
      FDQuery.ParamByName('pcod_tipo').AsInteger := aParam[1];
      FDQuery.ParamByName('pcod_cliente').AsInteger := aParam[0];
      FDQuery.ParamByName('pid_grupo').AsInteger := aParam[2];
      FDQuery.ParamByName('pdat_vigencia').AsDateTime := VarToDateTime(aParam[3]);
      FDQuery.ParamByName('pqtd_peso').AsFloat := aParam[6];
    end;
    if aParam[1] = 4 then
    begin
      FDQuery.SQL.Add('where cod_tipo = :pcod_tipo and cod_cliente = :pcod_cliente and id_grupo = :pid_grupo and dat_vigencia <= :pdat_vigencia and ' +
                      'val_performance = :pval_performance  order by dat_vigencia desc');
      FDQuery.ParamByName('pcod_tipo').AsInteger := aParam[1];
      FDQuery.ParamByName('pcod_cliente').AsInteger := aParam[0];
      FDQuery.ParamByName('pid_grupo').AsInteger := aParam[2];
      FDQuery.ParamByName('pdat_vigencia').AsDateTime := VarToDateTime(aParam[3]);
      FDQuery.ParamByName('pval_performance').AsFloat := aParam[4];
    end;
    if aParam[1] = 5 then
    begin
      FDQuery.SQL.Add('where cod_tipo = :pcod_tipo and cod_cliente = :pcod_cliente and id_grupo = :pid_grupo and dat_vigencia <= :pdat_vigencia and ' +
                      'num_cep_inicial <= :pnum_cep and num_cep_final >= :pnum_cep and ' +
                      'qtd_peso_inicial <= :pqtd_peso and qtd_peso_final >= :pqtd_peso order by dat_vigencia desc');
      FDQuery.ParamByName('pcod_tipo').AsInteger := aParam[1];
      FDQuery.ParamByName('pcod_cliente').AsInteger := aParam[0];
      FDQuery.ParamByName('pid_grupo').AsInteger := aParam[2];
      FDQuery.ParamByName('pdat_vigencia').AsDate := VarToDateTime(aParam[3]);
      FDQuery.ParamByName('pnum_cep').AsString := aParam[5];
      FDQuery.ParamByName('pqtd_peso').AsFloat := aParam[6];
    end;
    if aParam[1] = 7 then
    begin
      FDQuery.SQL.Add('where cod_tipo = :pcod_tipo and cod_cliente = :pcod_cliente and id_grupo = :pid_grupo and dat_vigencia <= :pdat_vigencia and ' +
                      'cod_roteiro = :pcod_roteiro and ' +
                      'qtd_peso_inicial <= :pqtd_peso and qtd_peso_final >= :pqtd_peso order by dat_vigencia desc');
      FDQuery.ParamByName('pcod_tipo').AsInteger := aParam[1];
      FDQuery.ParamByName('pcod_cliente').AsInteger := aParam[0];
      FDQuery.ParamByName('pid_grupo').AsInteger := aParam[2];
      FDQuery.ParamByName('pdat_vigencia').AsDateTime := VarToDateTime(aParam[3]);
      FDQuery.ParamByName('pcod_roteiro').AsInteger := aParam[7];
      FDQuery.ParamByName('pqtd_peso').AsFloat := aParam[6];
    end;
    if aParam[1] = 6 then
    begin
      FDQuery.SQL.Add('where cod_tipo = :pcod_tipo and cod_cliente = :pcod_cliente and id_grupo = :pid_grupo and dat_vigencia <= :pdat_vigencia and ' +
                      'cod_roteiro = :pcod_roteiro order by dat_vigencia desc');
      FDQuery.ParamByName('pcod_tipo').AsInteger := aParam[1];
      FDQuery.ParamByName('pcod_cliente').AsInteger := aParam[0];
      FDQuery.ParamByName('pid_grupo').AsInteger := aParam[2];
      FDQuery.ParamByName('pdat_vigencia').AsDate := VarToDateTime(aParam[3]);
      FDQuery.ParamByName('pcod_roteiro').AsInteger := aParam[7];
    end;
    FDQuery.Open();
    if FDQuery.RecordCount > 0 then
    begin
      FDQuery.First;
      Result := FDQuery.FieldByName('val_verba').AsFloat;
    end;
  finally
    FDQuery.Close;
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TVerbasExpressas.SetupModel(FDQuery: TFDQuery): Boolean;
begin
  try
    Result := False;
    FID := FDQuery.FieldByName('id_verba').AsInteger;
    FTipo := FDQuery.FieldByName('cod_tipo').AsInteger;
    FGrupo := FDQuery.FieldByName('id_grupo').AsInteger;
    FVigencia := FDQuery.FieldByName('dat_vigencia').AsDateTime;
    FVerba := FDQuery.FieldByName('val_verba').AsFloat;
    FPerformance := FDQuery.FieldByName('val_performance').AsFloat;
    FCEPInicial := FDQuery.FieldByName('num_cep_inicial').AsString;
    FCEPFinal := FDQuery.FieldByName('num_cep_final').AsString;
    FPesoInicial := FDQuery.FieldByName('qtd_peso_inicial').AsFloat;
    FPesoFinal := FDQuery.FieldByName('qtd_peso_final').AsFloat;
    FCliente := FDQuery.FieldByName('cod_cliente').AsInteger;
    FRoteiro := FDQuery.FieldByName('cod_roteiro').AsInteger;
  finally
    Result := True;
  end;
end;

end.
