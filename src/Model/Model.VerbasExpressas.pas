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
    FValorExcedente: Double;
    FUnidadeExcedente: Double;

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
    property UnidadeExcedente: Double read FUnidadeExcedente write FUnidadeExcedente;
    property ValorExcedente: Double read FValorExcedente write FValorExcedente;
    property Acao: TAcao read FAcao write FAcao;
    function GetID(): Integer;
    function Localizar(aParam: array of variant): TFDQuery;
    function LocalizarExato(aParam: array of variant): Boolean;
    function Gravar(): Boolean;
    function SetupModel(FDQuery: TFDQuery): Boolean;
    procedure ClearModel;
    function RetornaVerba(): double;
    function RetornaListaSimples(iTabela: integer; memTable: TFDMemTable): boolean;
    function RetornaValorFaixa(iCliente, iTabela, iFaixa: integer): string;
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
    'cod_roteiro = :cod_roteiro, qtd_excedente = :qtd_excedente, val_excedente = :val_excedente ' +
    'where id_verba = :pid_verba;', [Tipo, Cliente, Grupo, Vigencia, Verba, Performance, CEPInicial, CEPFinal, PesoInicial,
    PesoFinal, Roteiro, UnidadeExcedente, ValorExcedente, ID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;

end;

procedure TVerbasExpressas.ClearModel;
begin
  FID := 0;
  FTipo := 0;
  FGrupo := 0;
  FVigencia := StrtoDate('31/12/1899');
  FVerba := 0;
  FPerformance := 0;
  FCEPInicial := '';
  FCEPFinal := '';
  FPesoInicial := 0;
  FPesoFinal := 0;
  FCliente := 0;
  FRoteiro := 0;
  FUnidadeExcedente := 0;
  FValorExcedente := 0;
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
                    'val_performance, num_cep_inicial, num_cep_final, qtd_peso_inicial, qtd_peso_final, cod_roteiro, ' +
                    'qtd_excedente, val_excedente) ' +
                    'values ' +
                    '(:pid_verba, :pcod_cliente, :pcod_tipo, :pid_grupo, :pdat_vigencia, :pval_verba, :pval_performance, ' +
                    ':pnum_cep_inicial, :pnum_cep_final, :pqtd_peso_inicial, :pqtd_peso_final, :cod_roteiro, ' +
                    ':qtd_excedente, :val_excedente);',
                    [ID, Cliente, Tipo, Grupo, Vigencia, Verba, Performance, CEPInicial, CEPFinal, PesoInicial, PesoFinal,
                    Roteiro, UnidadeExcedente, ValorExcedente]);
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
                  'val_performance, num_cep_inicial, num_cep_final, qtd_peso_inicial, qtd_peso_final, cod_roteiro, ' +
                  'qtd_excedente, val_excedente from ' +
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
    FDQuery.ParamByName('pqtd_peso').AsFloat := aParam[6];
  end;
  if aParam[0] = 'SLA' then
  begin
    FDQuery.SQL.Add('where cod_tipo = :pcod_tipo and cod_cliente = :pcod_cliente and id_grupo = :pid_grupo and dat_vigencia <= :pdat_vigencia and ' +
                    'val_performance = :pval_performance  order by dat_vigencia desc');
    FDQuery.ParamByName('pcod_tipo').AsInteger := aParam[1];
    FDQuery.ParamByName('pcod_cliente').AsInteger := aParam[2];
    FDQuery.ParamByName('pid_grupo').AsInteger := aParam[3];
    FDQuery.ParamByName('pdat_vigencia').AsDateTime := aParam[4];
    FDQuery.ParamByName('pval_performance').AsFloat := aParam[8];
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
    FDQuery.ParamByName('pcod_roteiro').AsInteger := aParam[7];
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
    FDQuery.ParamByName('pcod_roteiro').AsInteger := aParam[7];
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

function TVerbasExpressas.LocalizarExato(aParam: array of variant): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    if aParam[0] = 'NONE' then
    begin
      ClearModel;
      Result := True;
      Exit;
    end;
    FDQuery := FConexao.ReturnQuery();
    if Length(aParam) < 2 then Exit;
    FDQuery.SQL.Clear;

    FDQuery.SQL.Add('select id_verba, cod_cliente, cod_tipo, id_grupo, dat_vigencia, val_verba, ' +
                    'val_performance, num_cep_inicial, num_cep_final, qtd_peso_inicial, qtd_peso_final, cod_roteiro from ' +
                    TABLENAME);
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
      FDQuery.ParamByName('pqtd_peso').AsFloat := aParam[6];
    end;
    if aParam[0] = 'SLA' then
    begin
      FDQuery.SQL.Add('where cod_tipo = :pcod_tipo and cod_cliente = :pcod_cliente and id_grupo = :pid_grupo and dat_vigencia <= :pdat_vigencia and ' +
                      'val_performance = :pval_performance  order by dat_vigencia desc');
      FDQuery.ParamByName('pcod_tipo').AsInteger := aParam[1];
      FDQuery.ParamByName('pcod_cliente').AsInteger := aParam[2];
      FDQuery.ParamByName('pid_grupo').AsInteger := aParam[3];
      FDQuery.ParamByName('pdat_vigencia').AsDateTime := aParam[4];
      FDQuery.ParamByName('pval_performance').AsFloat := aParam[8];
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
      FDQuery.ParamByName('pcod_roteiro').AsInteger := aParam[7];
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
      FDQuery.ParamByName('pcod_roteiro').AsInteger := aParam[7];
    end;
    if aParam[0] = 'FILTRO' then
    begin
      FDQuery.SQL.Add('where ' + aParam[1]);
    end;
    FDQuery.Open();
    if FDQuery.RecordCount > 0 then
    begin
      FDQuery.First;
      SetupModel(FDQuery);
    end
    else
    begin
      ClearModel;
    end;
    Result := True;
  finally
    FDquery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TVerbasExpressas.RetornaListaSimples(iTabela: integer; memTable: TFDMemTable): boolean;
var
  sSQL : String;
  sWhere: String;
  aParam: array of variant;
  fdQuery: TFDQuery;
begin
  try
    Result := False;
    fdQuery := FConexao.ReturnQuery;
    sSQL := 'distinct id_grupo as cod_faixa, concat(format(val_verba,2,"de_DE"), ' +
            'if(num_cep_inicial<>"",concat(" - CEP Inicial ", num_cep_inicial, " - ", "CEP Final ", num_cep_final),""), ' +
            'if(qtd_peso_inicial<>0,concat(" - PESO Inicial ", format(qtd_peso_inicial,3,"de_DE"), " - ", "PESO Final ", ' +
            'format(qtd_peso_final,3,"de_DE")),"")) as des_faixa';
    sWhere := ' where cod_tipo = ' + iTabela.ToString;
    SetLength(aParam,3);
    aParam := ['APOIO',sSQL, sWhere];
    fdQuery := Self.Localizar(aParam);
    Finalize(aParam);
    if not fdQuery.IsEmpty then
    begin
      memTable.Data := fdQuery.Data;
    end;
    Result := True;
  finally
    fdQuery.Close;
    fdQuery.Connection.Close;
    fdQuery.Free;
  end;
end;

function TVerbasExpressas.RetornaValorFaixa(iCliente, iTabela, iFaixa: integer): string;
var
  FDQuery: TFDQuery;
  sSQL : string;
begin
  try
    Result := '';
    sSQL := 'select val_verba from ' + TABLENAME +
            ' where cod_cliente = :cod_clinte and cod_tipo = :cod_tipo and cod_faixa = :faixa';
    FDQuery := FConexao.ReturnQuery;
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add(sSQL);
    FDQuery.ParamByName(':cod_cliente').AsInteger := iCliente;
    FDQuery.ParamByName(':cod_tipo').AsInteger := iTabela;
    FDQuery.ParamByName(':cod_faixa').AsInteger := iFaixa;
    FDQuery.Open();
    if not FDQuery.IsEmpty then
    begin
      FDQuery.First;
    end
    else
    begin
      Exit;
    end;
    Result := FormatFloat('###,##0.00', FDQuery.FieldByName('val_verba').AsFloat);
  finally
    FDQuery.Close;
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TVerbasExpressas.RetornaVerba(): double;
var
  FDQuery: TFDQuery;
  dExcedente, dValor: Double;
begin
  try
    Result := 0;
    dExcedente := 0;
    dValor := 0;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.SQL.Clear;

    FDQuery.SQL.Add('select id_verba, cod_cliente, cod_tipo, id_grupo, dat_vigencia, val_verba, ' +
                    'val_performance, num_cep_inicial, num_cep_final, qtd_peso_inicial, qtd_peso_final, cod_roteiro, ' +
                    'qtd_excedente, val_excedente from ' +
                    TABLENAME);

    if Self.Tipo = 0 then
    begin
      Exit;
    end;
    if Self.Tipo = 1 then
    begin
      FDQuery.SQL.Add('where cod_tipo = :pcod_tipo and cod_cliente = :pcod_cliente and id_grupo = :pid_grupo and ' +
                      'dat_vigencia <= :pdat_vigencia order by dat_vigencia desc');
      FDQuery.ParamByName('pcod_cliente').AsInteger := Self.Cliente;
      FDQuery.ParamByName('pcod_tipo').AsInteger := Self.Tipo;
      FDQuery.ParamByName('pid_grupo').AsInteger := Self.Grupo;
      FDQuery.ParamByName('pdat_vigencia').AsDateTime := Self.Vigencia;
    end;
    if Self.Tipo = 2 then
    begin
      FDQuery.SQL.Add('where cod_tipo = :pcod_tipo and cod_cliente = :pcod_cliente and id_grupo = :pid_grupo and dat_vigencia <= :pdat_vigencia and ' +
                      'num_cep_inicial <= :pnum_cep and num_cep_final >= :pnum_cep order by dat_vigencia desc');
      FDQuery.ParamByName('pcod_tipo').AsInteger := Self.Tipo;
      FDQuery.ParamByName('pcod_cliente').AsInteger := Self.Cliente;
      FDQuery.ParamByName('pid_grupo').AsInteger := Self.Grupo;
      FDQuery.ParamByName('pdat_vigencia').AsDateTime := Self.Vigencia;
      FDQuery.ParamByName('pnum_cep').AsString := Self.CEPInicial;
    end;
    if Self.Tipo = 3 then
    begin
      FDQuery.SQL.Add('where cod_tipo = :pcod_tipo and cod_cliente = :pcod_cliente and id_grupo = :pid_grupo and dat_vigencia <= :pdat_vigencia and ' +
                      'qtd_peso_inicial <= :pqtd_peso and qtd_peso_final >= :pqtd_peso order by dat_vigencia desc');
      FDQuery.ParamByName('pcod_tipo').AsInteger := Self.Tipo;
      FDQuery.ParamByName('pcod_cliente').AsInteger := Self.Cliente;
      FDQuery.ParamByName('pid_grupo').AsInteger := Self.Grupo;
      FDQuery.ParamByName('pdat_vigencia').AsDateTime := Self.Vigencia;
      FDQuery.ParamByName('pqtd_peso').AsFloat := Self.PesoInicial;
    end;
    if Self.Tipo = 4 then
    begin
      FDQuery.SQL.Add('where cod_tipo = :pcod_tipo and cod_cliente = :pcod_cliente and id_grupo = :pid_grupo and dat_vigencia <= :pdat_vigencia and ' +
                      'val_performance = :pval_performance  order by dat_vigencia desc');
      FDQuery.ParamByName('pcod_tipo').AsInteger := Self.Tipo;
      FDQuery.ParamByName('pcod_cliente').AsInteger := Self.Cliente;
      FDQuery.ParamByName('pid_grupo').AsInteger := Self.Grupo;
      FDQuery.ParamByName('pdat_vigencia').AsDateTime := Self.Vigencia;
      FDQuery.ParamByName('pval_performance').AsFloat := Self.Performance;
    end;
    if Self.Tipo = 5 then
    begin
      FDQuery.SQL.Add('where cod_tipo = :pcod_tipo and cod_cliente = :pcod_cliente and id_grupo = :pid_grupo and dat_vigencia <= :pdat_vigencia and ' +
                      'num_cep_inicial <= :pnum_cep and num_cep_final >= :pnum_cep and ' +
                      'qtd_peso_inicial <= :pqtd_peso and qtd_peso_final >= :pqtd_peso order by dat_vigencia desc');
      FDQuery.ParamByName('pcod_tipo').AsInteger := Self.Tipo;
      FDQuery.ParamByName('pcod_cliente').AsInteger := Self.Cliente;
      FDQuery.ParamByName('pid_grupo').AsInteger := Self.Grupo;
      FDQuery.ParamByName('pdat_vigencia').AsDateTime := Self.Vigencia;
      FDQuery.ParamByName('pnum_cep').AsString := Self.CEPInicial;
      FDQuery.ParamByName('pqtd_peso').AsFloat := Self.PesoInicial;
    end;
    if Self.Tipo = 7 then
    begin
      FDQuery.SQL.Add('where cod_tipo = :pcod_tipo and cod_cliente = :pcod_cliente and id_grupo = :pid_grupo and dat_vigencia <= :pdat_vigencia and ' +
                      'cod_roteiro = :pcod_roteiro and ' +
                      'qtd_peso_inicial <= :pqtd_peso and qtd_peso_final >= :pqtd_peso order by dat_vigencia desc');
      FDQuery.ParamByName('pcod_tipo').AsInteger := Self.Tipo;
      FDQuery.ParamByName('pcod_cliente').AsInteger := Self.Cliente;
      FDQuery.ParamByName('pid_grupo').AsInteger := Self.Grupo;
      FDQuery.ParamByName('pdat_vigencia').AsDateTime := Self.Vigencia;
      FDQuery.ParamByName('pcod_roteiro').AsInteger := Self.Roteiro;
      FDQuery.ParamByName('pqtd_peso').AsFloat := Self.PesoInicial;
    end;
    if Self.Tipo = 6 then
    begin
      FDQuery.SQL.Add('where cod_tipo = :pcod_tipo and cod_cliente = :pcod_cliente and id_grupo = :pid_grupo and dat_vigencia <= :pdat_vigencia and ' +
                      'cod_roteiro = :pcod_roteiro order by dat_vigencia desc');
      FDQuery.ParamByName('pcod_tipo').AsInteger := Self.Tipo;
      FDQuery.ParamByName('pcod_cliente').AsInteger := Self.Cliente;
      FDQuery.ParamByName('pid_grupo').AsInteger := Self.Grupo;
      FDQuery.ParamByName('pdat_vigencia').AsDateTime := Self.Vigencia;
      FDQuery.ParamByName('pcod_roteiro').AsInteger := Self.Roteiro;
    end;
    FDQuery.Open();
    if FDQuery.RecordCount > 0 then
    begin
      FDQuery.First;
      if (FDQuery.FieldByName('cod_tipo').AsInteger = 3) or (FDQuery.FieldByName('cod_tipo').AsInteger = 5) then
      begin
        if (FDQuery.FieldByName('qtd_peso_final').AsFloat = 999999) and (FDQuery.FieldByName('qtd_excedente').AsFloat > 0) then
        begin
          dExcedente := Self.PesoInicial - FDQuery.FieldByName('qtd_peso_inicial').AsFloat;
          dValor := FDQuery.FieldByName('val_verba').AsFloat +
                   (FDQuery.FieldByName('val_excedente').AsFloat *
                   Round(dExcedente / FDQuery.FieldByName('qtd_excedente').AsFloat));
        end
        else
        begin
          Result := FDQuery.FieldByName('val_verba').AsFloat;
        end;
      end
      else
      begin
        Result := FDQuery.FieldByName('val_verba').AsFloat;
      end;
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
