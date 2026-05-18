unit Model.SisGefAtribuicoesExpressas;

interface

  uses Common.ENum, FireDAC.Comp.Client, System.SysUtils, service.connectionMySQL;

  type
    TAtribuicao = Record
      id_atribuicao: integer;
      cod_atribuicao: string[15];
      dat_atribuicao: TDateTime;
      cod_entregador: integer;
      cod_cliente: integer;
      cod_embarcador: integer;
      nom_embarcador: string [70];
      num_nossonumero: string[30];
      cod_retorno: string[15];
      des_endereco: string[120];
      num_cep: string[9];
      nom_bairro: string[70];
      nom_consumidor: string[70];
      qtd_volumes: integer;
      des_telefone: string[30];
      num_lote_remessa: integer;
      dat_retorno: TDateTime;
      dom_retorno: ShortInt;
      cod_informativo: integer;
      des_log: string;
    End;

  type
    TAtribuicoesModel = class
    private
      FConexao : TConnectionMySQL;
      FAcao: TAcao;
      FQuery: TFDQuery;
      FMensagem: string;

      function Inserir(): Boolean;
      function Alterar(): Boolean;
      function Excluir(): Boolean;

    public
      ARecord : TAtribuicao;

      Constructor Create();

      function GetID(): Integer;
      function Search(vParam: array of variant): boolean;
      function Gravar(): Boolean;
      function CustomSearch(sParams: array of string): boolean;

      property Acao: TAcao read FAcao write FAcao;
      property Mensagem: string read FMensagem write FMensagem;
      property Query: TFDQuery read FQuery write FQuery;

    end;
    const
      TABLENAME = 'expressas_atribuicoes';

      SQLUPDATE = 'update ' + TABLENAME + ' set cod_atribuicao = :cod_atribuicao, dat_atribuicao = :dat_atribuicao, ' +
                  'cod_entregador = :cod_entregador, cod_cliente = :cod_cliente, cod_embarcador = :cod_embarcador, ' +
                  'nom_embarcador = :nom_embarcador, num_nossonumero = :num_nossonumero, cod_retorno = :cod_retorno, ' +
                  'des_endereco = :des_endereco, num_cep = :num_cep, nom_bairro = :nom_bairro, ' +
                  'nom_consumidor = :nom_consumidor, qtd_volumes = :qtd_volumes, des_telefone = :des_telefone, ' +
                  'num_lote_remessa = :num_lote_remessa, dat_retorno = :dat_retorno, dom_retorno = :dom_retorno, ' +
                  'cod_informativo = :cod_informativo, des_log = :des_log where id_atribuicao = :id_atribuicao';
      SQLINSERT = 'insert into ' + TABLENAME + ' (' +
                  'id_atribuicao, cod_atribuicao, dat_atribuicao, cod_entregador, cod_cliente, cod_embarcador, nom_embarcador, ' +
                  'num_nossonumero, cod_retorno, des_endereco, num_cep, nom_bairro, nom_consumidor, qtd_volumes, des_telefone, ' +
                  'num_lote_remessa, dat_retorno, dom_retorno, cod_informativo, des_log) ' +
                  'VALUES ' +
                  '(:id_atribuicao, :cod_atribuicao, :dat_atribuicao, :cod_entregador, :cod_cliente, :cod_embarcador, ' +
                  ':nom_embarcador, :num_nossonumero, :cod_retorno, :des_endereco, :num_cep, :nom_bairro, :nom_consumidor, '+
                  ':qtd_volumes, :des_telefone, :num_lote_remessa, :dat_retorno, :dom_retorno, :cod_informtivo, :des_log);';
      SQLSELECT = 'select id_atribuicao, cod_atribuicao, dat_atribuicao, cod_entregador, cod_cliente, cod_embarcador, nom_embarcador, ' +
                  'num_nossonumero, cod_retorno, des_endereco, num_cep, nom_bairro, nom_consumidor, qtd_volumes, des_telefone, ' +
                  'num_lote_remessa, dat_retorno, dom_retorno, cod_informativo, des_log from ' + TABLENAME;
      SQLDELETE = 'delete from ' + TABLENAME;

implementation

{ TAtribuicoesModel }

function TAtribuicoesModel.Alterar: Boolean;
begin
  Result := False;
  try
    FQuery := FConexao.GetQuery();
    FQuery.ExecSQL(SQLUPDATE,
                   [ARecord.cod_atribuicao, ARecord.dat_atribuicao, ARecord.cod_entregador,
                    ARecord.cod_cliente, ARecord.cod_embarcador, ARecord.nom_embarcador, ARecord.num_nossonumero,
                    ARecord.cod_retorno, ARecord.des_endereco, ARecord.num_cep, ARecord.nom_bairro, ARecord.nom_consumidor,
                    ARecord.qtd_volumes, ARecord.des_telefone, ARecord.num_lote_remessa, ARecord.dat_retorno, ARecord.dom_retorno,
                    ARecord.cod_informativo, ARecord.des_log, ARecord.id_atribuicao]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

constructor TAtribuicoesModel.Create;
begin
  FConexao:= TConnectionMySQL.Create;
end;

function TAtribuicoesModel.CustomSearch(sParams: array of string): boolean;
var
  sSource : string;
begin
  Result := False;
  if Length(sParams) < 3 then
  begin
    FMensagem := 'Quantidade de parâmetros incorreta!';
    Exit
  end;
  FQuery := FConexao.GetQuery;
  if sParams[1] = '' then
    sSource := TABLENAME
  else
    sSource := sParams[1];
  FQuery.SQL.Clear;
  FQuery.SQL.Add('select !colums from !table {if !where } where !where {fi}');
  FQuery.MacroByName('colums').AsRaw := sParams[0];
  FQuery.MacroByName('table').AsRaw := sSource;
  FQuery.MacroByName('where').AsRaw := sParams[2];
  FQuery.Open();
  if FQuery.IsEmpty then
  begin
    FMensagem := 'Nenhum registro encontrado!';
    FQuery.Connection.Close;
    Exit;
  end;
  Result := True;
end;

function TAtribuicoesModel.Excluir: Boolean;
begin
  try
    Result := False;
    FQuery := FConexao.GetQuery();
    if ARecord.id_atribuicao <> 0 then
    begin
      FQuery.ExecSQL(SQLDELETE + ' where id_atribuicao = :id_atribuicao', [ARecord.id_atribuicao]);
    end
    else if ARecord.cod_atribuicao <> '' then
    begin
      FQuery.ExecSQL(SQLDELETE + ' where cod_atribuicao = :cod_atribuicao', [ARecord.cod_atribuicao]);
    end
    else if ARecord.num_nossonumero <> '' then
    begin
      FQuery.ExecSQL(SQLDELETE + ' where num_nossonumero = :num_nossonumero', [ARecord.num_nossonumero]);
    end;
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TAtribuicoesModel.GetID: Integer;
begin
  try
    FQuery := FConexao.GetQuery();
    FQuery.Open('select coalesce(max(id_atribuicao),0) + 1 from ' + TABLENAME);
    try
      Result := FQuery.Fields[0].AsInteger;
    finally
      FQuery.Close;
    end;
  finally
    FQuery.Active := False;
    FQuery.Connection.Close;
  end;
end;

function TAtribuicoesModel.Gravar: Boolean;
begin
  Result := False;
  case FAcao of
    tacIncluir : Result := Inserir();
    tacAlterar : Result := Alterar();
    tacExcluir : Result := Excluir();
  else
    Exit;
  end;
end;

function TAtribuicoesModel.Inserir: Boolean;
begin
try
  Result := False;
  if ARecord.id_atribuicao = 0 then
    ARecord.id_atribuicao := GetID;
  FQuery := FConexao.GetQuery();
  FQuery.ExecSQL(SQLINSERT,
                 [ARecord.id_atribuicao, ARecord.cod_atribuicao, ARecord.dat_atribuicao, ARecord.cod_entregador,
                  ARecord.cod_cliente, ARecord.cod_embarcador, ARecord.nom_embarcador, ARecord.num_nossonumero,
                  ARecord.cod_retorno, ARecord.des_endereco, ARecord.num_cep, ARecord.nom_bairro, ARecord.nom_consumidor,
                  ARecord.qtd_volumes, ARecord.des_telefone, ARecord.num_lote_remessa, ARecord.dat_retorno, ARecord.dom_retorno,
                  ARecord.cod_informativo, ARecord.des_log]);
  Result := True;
finally
  FQuery.Connection.Close;
end;
end;

function TAtribuicoesModel.Search(vParam: array of variant): boolean;
begin
  Result := False;
  FQuery := FConexao.GetQuery();
  if Length(vParam) < 2 then Exit;
  FQuery.SQL.Clear;
  FQuery.SQL.Add(SQLSELECT);
  if vParam[0] = 'ID' then
  begin
    FQuery.SQL.Add('where id_atribuicao = :id_atribuicao');
    FQuery.ParamByName('id_atribuicao').AsInteger := vParam[1];
  end;
  if vParam[0] = 'CODIGO' then
  begin
    FQuery.SQL.Add('where cod_atribuicao like :cod_atribuicao');
    FQuery.ParamByName('cod_atribuicao').AsString := vParam[1] + '%';
  end;
  if vParam[0] = 'CODRETORNO' then
  begin
    FQuery.SQL.Add('where cod_retorno = :cod_retorno');
    FQuery.ParamByName('cod_retorno').AsString := vParam[1];
  end;
  if vParam[0] = 'DATA' then
  begin
    FQuery.SQL.Add('where dat_atribuicao = :dat_atribuicao');
    FQuery.ParamByName('dat_atribuicao').AsDateTime := vParam[1];
  end;
  if vParam[0] = 'RETORNO' then
  begin
    FQuery.SQL.Add('where cod_entregador = :cod_entregador and dat_atribuicao between :data1 and :data2 and dom_retorno = 0');
    FQuery.ParamByName('cod_entregador').AsInteger := vParam[1];
    FQuery.ParamByName('data1').AsDateTime := vParam[2];
    FQuery.ParamByName('data2').AsDateTime := vParam[3];
  end;
  if vParam[0] = 'NN' then
  begin
    FQuery.SQL.Add('where num_nossonumero = :num_nossonumero');
    FQuery.ParamByName('num_nossonumero').AsString := vParam[1];
  end;
  if vParam[0] = 'ENTREGADOR' then
  begin
    FQuery.SQL.Add('where cod_entregador = :cod_entregador');
    FQuery.ParamByName('cod_entregador').AsInteger := vParam[1];
  end;
  if vParam[0] = 'FILTRO' then
  begin
    FQuery.SQL.Add('where ' + vParam[1]);
  end;
  if vParam[0] = 'APOIO' then
  begin
    FQuery.SQL.Clear;
    FQuery.SQL.Add('select  ' + vParam[1] + ' from ' + TABLENAME + ' ' + vParam[2]);
  end;
  FQuery.Open;
  if not FQuery.IsEmpty then
  begin
    Result := True;
  end
  else
  begin
    FQuery.Connection.Close;
    Exit;
  end;
end;

end.
