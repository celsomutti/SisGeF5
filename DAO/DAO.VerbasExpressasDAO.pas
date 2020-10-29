unit DAO.VerbasExpressasDAO;

interface

uses FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Model.VerbasExpressas;

  type
    TVerbasExpressasDAO = class
    private
      FConexao: TConexao;
    public
      constructor Create;
      function GetID(): Integer;
      function Inserir(AVerbas: TVerbasExpressas): Boolean;
      function Alterar(AVerbas: TVerbasExpressas): Boolean;
      function Excluir(AVerbas: TVerbasExpressas): Boolean;
      function Pesquisar(aParam: array of variant): TFDQuery;
  const
    TABLENAME = 'expressas_verbas';
    end;

implementation

{ TVerbasExpressasDAO }

function TVerbasExpressasDAO.Alterar(AVerbas: TVerbasExpressas): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('update ' + TABLENAME + ' set ' +
    'cod_tipo = :pcod_tipo, id_grupo = :pid_grupo, dat_vigencia = :pdat_vigencia, val_verba = :pval_verba, ' +
    'val_performance = :pval_performance, num_cep_inicial = :pnum_cep_inicial, num_cep_final = :pnum_cep_final, ' +
    'qtd_peso_inicial = :pqtd_peso_inicial, qtd_peso_final = :pqtd_peso_final;' +
    'where id_verba = :pid_verba;', [Averbas.Tipo, Averbas.Grupo, Averbas.Vigencia, Averbas.Verba, Averbas.Performance,
    Averbas.CEPInicial, Averbas.CEPFinal, Averbas.PesoInicial, Averbas.PesoFinal, Averbas.ID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TVerbasExpressasDAO.Create;
begin
  FConexao := TConexao.Create;
end;

function TVerbasExpressasDAO.Excluir(AVerbas: TVerbasExpressas): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where id_verba = :pid_verba', [AVerbas.ID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TVerbasExpressasDAO.GetID: Integer;
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

function TVerbasExpressasDAO.Inserir(AVerbas: TVerbasExpressas): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    AVerbas.ID := GetID();
    FDQuery.ExecSQL('insert into ' + TABLENAME  + '(id_verba, cod_tipo, id_grupo, dat_vigencia, val_verba, val_performance, ' +
                    'num_cep_inicial, num_cep_final, qtd_peso_inicial, qtd_peso_final) ' +
                    'values ' +
                    '(:pid_verba, :pcod_tipo, :pid_grupo, :pdat_vigencia, :pval_verba, :pval_performance, ' +
                    ':pnum_cep_inicial, :pnum_cep_final, :pqtd_peso_inicial, :pqtd_peso_final);',
                    [Averbas.ID, Averbas.Tipo, Averbas.Grupo, Averbas.Vigencia, Averbas.Verba, Averbas.Performance,
                    Averbas.CEPInicial, Averbas.CEPFinal, Averbas.PesoInicial, Averbas.PesoFinal]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TVerbasExpressasDAO.Pesquisar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;

  FDQuery.SQL.Add('select * from ' + TABLENAME);
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
  if aParam[0] = 'FIXA' then
  begin
    FDQuery.SQL.Add('where cod_tipo = :pcod_tipo and id_grupo = :pid_grupo and dat_vigencia <= :pdat_vigencia ' +
                    'order by dat_vigencia desc');
    FDQuery.ParamByName('pcod_tipo').AsInteger := aParam[1];
    FDQuery.ParamByName('pid_grupo').AsInteger := aParam[2];
    FDQuery.ParamByName('pdat_vigencia').AsDateTime := aParam[3];
  end;
  if aParam[0] = 'FIXACEP' then
  begin
    FDQuery.SQL.Add('where cod_tipo = :pcod_tipo and id_grupo = :pid_grupo and dat_vigencia <= :pdat_vigencia and ' +
                    'num_cep_inicial <= :pnum_cep and num_cep_final >= :pnum_cep order by dat_vigencia desc');
    FDQuery.ParamByName('pcod_tipo').AsInteger := aParam[1];
    FDQuery.ParamByName('pid_grupo').AsInteger := aParam[2];
    FDQuery.ParamByName('pdat_vigencia').AsDateTime := aParam[3];
    FDQuery.ParamByName('pnum_cep').AsString := aParam[4];
  end;
  if aParam[0] = 'FIXAPESO' then
  begin
    FDQuery.SQL.Add('where cod_tipo = :pcod_tipo and id_grupo = :pid_grupo and dat_vigencia <= :pdat_vigencia and ' +
                    'qtd_peso_inicial <= :pqtd_peso and qtd_peso_final >= :pqtd_peso order by dat_vigencia desc');
    FDQuery.ParamByName('pcod_tipo').AsInteger := aParam[1];
    FDQuery.ParamByName('pid_grupo').AsInteger := aParam[2];
    FDQuery.ParamByName('pdat_vigencia').AsDateTime := aParam[3];
    FDQuery.ParamByName('pqtd_peso').AsInteger := aParam[4];
  end;
  if aParam[0] = 'SLA' then
  begin
    FDQuery.SQL.Add('where cod_tipo = :pcod_tipo and id_grupo = :pid_grupo and dat_vigencia <= :pdat_vigencia and ' +
                    'val_performance = :pval_performance  order by dat_vigencia desc');
    FDQuery.ParamByName('pcod_tipo').AsInteger := aParam[1];
    FDQuery.ParamByName('pid_grupo').AsInteger := aParam[2];
    FDQuery.ParamByName('pdat_vigencia').AsDateTime := aParam[3];
    FDQuery.ParamByName('pval_performance').AsFloat := aParam[4];
  end;
if aParam[0] = 'CEPPESO' then
  begin
    FDQuery.SQL.Add('where cod_tipo = :pcod_tipo and id_grupo = :pid_grupo and dat_vigencia <= :pdat_vigencia and ' +
                    'num_cep_inicial <= :pnum_cep and num_cep_final >= :pnum_cep and ' +
                    'qtd_peso_inicial <= :pqtd_peso and qtd_peso_final >= :pqtd_peso order by dat_vigencia desc');
    FDQuery.ParamByName('pcod_tipo').AsInteger := aParam[1];
    FDQuery.ParamByName('pid_grupo').AsInteger := aParam[2];
    FDQuery.ParamByName('pdat_vigencia').AsDateTime := aParam[3];
    FDQuery.ParamByName('pnum_cep').AsString := aParam[4];
    FDQuery.ParamByName('pqtd_peso').AsInteger := aParam[5];
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
  Result := FDQuery;
end;

end.
