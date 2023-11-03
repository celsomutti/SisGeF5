unit DAO.AtribuicoesExpressas;

interface

uses FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Model.AtribuicoesExpressas;

type
  TAtribuicoesExpressasDAO= class
  private
  FConexao : TConexao;
  public
  constructor Create;
  function GetID(): Integer;
  function Inserir(AAtribuicoes: TAtribuicoesExpressas): Boolean;
  function Alterar(AAtribuicoes: TAtribuicoesExpressas): Boolean;
  function Excluir(AAtribuicoes: TAtribuicoesExpressas): Boolean;
  function Pesquisar(aParam: array of variant): TFDQuery;
  end;
  const
    TABLENAME = 'expressas_atribuicoes';

implementation

{ TAtribuicoesExpressasDAO }

uses Control.Sistema;

function TAtribuicoesExpressasDAO.Alterar(AAtribuicoes: TAtribuicoesExpressas): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('update ' + TABLENAME + ' set cod_atribuicao = :cod_atribuicao, dat_atribuicao = :dat_atribuicao, ' +
                    'cod_entregador = :cod_entregador, cod_cliente = :cod_cliente, cod_embarcador = :cod_embarcador, ' +
                    'nom_embarcador = :nom_embarcador, num_nossonumero = :num_nossonumero, cod_retorno = :cod_retorno, ' +
                    'des_endereco = :des_endereco, num_cep = :num_cep, nom_bairro = :nom_bairro, ' +
                    'nom_consumidor = :nom_consumidor, qtd_volumes = :qtd_volumes, des_telefone = :des_telefone, ' +
                    'num_lote_remessa = :num_lote_remessa, dat_retorno = :dat_retorno, dom_retorno = :dom_retorno, ' +
                    'cod_informativo = :cod_informativo, des_log = :des_log ' +
                    'where id_atribuicao = :id_atribuicao;', [AAtribuicoes.Codigo, AAtribuicoes.Data, AAtribuicoes.Entregador,
                    AAtribuicoes.Cliente, AAtribuicoes.Embarcador, AAtribuicoes.NomeEmbarcador, AAtribuicoes.NN,
                    AAtribuicoes.CodigoRetorno, AAtribuicoes.Endereco, AAtribuicoes.CEP, AAtribuicoes.Bairro,
                    AAtribuicoes.Consumidor, AAtribuicoes.Volumes, AAtribuicoes.Telefone, AAtribuicoes.Lote, AAtribuicoes.Retorno,
                    AAtribuicoes.FlagRetorno, AAtribuicoes.CodigoInformativo, AAtribuicoes.LOG, AAtribuicoes.ID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TAtribuicoesExpressasDAO.Create;
begin
  FConexao := TSistemaControl.GetInstance.Conexao;
end;

function TAtribuicoesExpressasDAO.Excluir(AAtribuicoes: TAtribuicoesExpressas): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    if AAtribuicoes.ID <> 0 then
    begin
      FDQuery.ExecSQL('delete from ' + TABLENAME + ' where id_atribuicao = :id_atribuicao', [AAtribuicoes.ID]);
    end
    else if not AAtribuicoes.Codigo.IsEmpty then
    begin
      FDQuery.ExecSQL('delete from ' + TABLENAME + ' where cod_atribuicao = :cod_atribuicao', [AAtribuicoes.Codigo]);
    end
    else if not AAtribuicoes.NN.IsEmpty then
    begin
      FDQuery.ExecSQL('delete from ' + TABLENAME + ' where num_nossonumero = :num_nossonumero', [AAtribuicoes.NN]);
    end;
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TAtribuicoesExpressasDAO.GetID: Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(id_atribuicao),0) + 1 from ' + TABLENAME);
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

function TAtribuicoesExpressasDAO.Inserir(AAtribuicoes: TAtribuicoesExpressas): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    AAtribuicoes.ID := GetID;
    FDQuery.ExecSQL('insert into ' + TABLENAME + ' (' +
                    'id_atribuicao, cod_atribuicao, dat_atribuicao, cod_entregador, cod_cliente, cod_embarcador, nom_embarcador, ' +
                    'num_nossonumero, cod_retorno, des_endereco, num_cep, nom_bairro, nom_consumidor, qtd_volumes, des_telefone, ' +
                    'num_lote_remessa, dat_retorno, dom_retorno, cod_informativo, des_log) ' +
                    'VALUES ' +
                    '(:id_atribuicao, :cod_atribuicao, :dat_atribuicao, :cod_entregador, :cod_cliente, :cod_embarcador, ' +
                    ':nom_embarcador, :num_nossonumero, :cod_retorno, :des_endereco, :num_cep, :nom_bairro, :nom_consumidor, '+
                    ':qtd_volumes, :des_telefone, :num_lote_remessa, :dat_retorno, :dom_retorno, :cod_informtivo, :des_log);',
                    [AAtribuicoes.ID, AAtribuicoes.Codigo, AAtribuicoes.Data, AAtribuicoes.Entregador, AAtribuicoes.Cliente,
                    AAtribuicoes.Embarcador, AAtribuicoes.NomeEmbarcador, AAtribuicoes.NN, AAtribuicoes.CodigoRetorno,
                    AAtribuicoes.Endereco, AAtribuicoes.CEP, AAtribuicoes.Bairro, AAtribuicoes.Consumidor, AAtribuicoes.Volumes,
                    AAtribuicoes.Telefone, AAtribuicoes.Lote, AAtribuicoes.Retorno, AAtribuicoes.FlagRetorno,
                    AAtribuicoes.CodigoInformativo, AAtribuicoes.LOG]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TAtribuicoesExpressasDAO.Pesquisar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;
  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'ID' then
  begin
    FDQuery.SQL.Add('where id_atribuicao = :id_atribuicao');
    FDQuery.ParamByName('id_atribuicao').AsInteger := aParam[1];
  end;
  if aParam[0] = 'CODIGO' then
  begin
    FDQuery.SQL.Add('where cod_atribuicao like :cod_atribuicao');
    FDQuery.ParamByName('cod_atribuicao').AsString := aParam[1] + '%';
  end;
  if aParam[0] = 'CODRETORNO' then
  begin
    FDQuery.SQL.Add('where cod_retorno = :cod_retorno');
    FDQuery.ParamByName('cod_retorno').AsString := aParam[1];
  end;
  if aParam[0] = 'DATA' then
  begin
    FDQuery.SQL.Add('where dat_atribuicao = :dat_atribuicao');
    FDQuery.ParamByName('dat_atribuicao').AsDateTime := aParam[1];
  end;
  if aParam[0] = 'RETORNO' then
  begin
    FDQuery.SQL.Add('where cod_entregador = :cod_entregador and dat_atribuicao between :data1 and :data2 and dom_retorno = 0');
    FDQuery.ParamByName('cod_entregador').AsInteger := aParam[1];
    FDQuery.ParamByName('data1').AsDateTime := aParam[2];
    FDQuery.ParamByName('data2').AsDateTime := aParam[3];
  end;
  if aParam[0] = 'NN' then
  begin
    FDQuery.SQL.Add('where num_nossonumero = :num_nossonumero');
    FDQuery.ParamByName('num_nossonumero').AsString := aParam[1];
  end;
  if aParam[0] = 'ENTREGADOR' then
  begin
    FDQuery.SQL.Add('where cod_entregador = :cod_entregador');
    FDQuery.ParamByName('cod_entregador').AsInteger := aParam[1];
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
