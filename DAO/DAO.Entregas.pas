unit DAO.Entregas;

interface

uses Model.Entregas, System.Classes, FireDAC.Comp.Client, DAO.Conexao, Control.Sistema, System.DateUtils;

type
  TEntregasDAO = class
  private
    FConexao : TConexao;
  public
    constructor Create;
    function Insert(aEntregas: Model.Entregas.Tentregas): Boolean;
    function Update(aEntregas: Model.Entregas.TEntregas): Boolean;
    function Delete(aEntregas: Model.Entregas.TEntregas): Boolean;
    function FindEntrega(aParam: array of Variant): TFDQuery;
    function ChangeConferencia(sNN: String; iStatus: Integer): Boolean;
    function ExisteNN(sNN: String): Boolean;
    function Previas(aParam: Array of variant): TFDQuery;
    function ForaPadrao(aParam: Array of variant): TFDQuery;
    function EntregasExtrato(aParam: Array of variant): TFDQuery;
    function EntregasExtratoNew(aParam: Array of variant): TFDQuery;
    function ExtratoBase(aParam: array of variant): TFDQuery;
    function ExtratoEntregador(aParam: array of variant): TFDQuery;
end;
const
  TABLENAME = 'tbentregas';

implementation

uses System.SysUtils, Data.DB;

function TEntregasDAO.Insert(aEntregas: TEntregas): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Connection.Ping;
    FDQuery.ExecSQL('INSERT INTO ' + TABLENAME +
            '(NUM_NOSSONUMERO, COD_AGENTE, COD_ENTREGADOR, COD_CLIENTE, NUM_NF, NOM_CONSUMIDOR, DES_ENDERECO, DES_COMPLEMENTO, ' +
            'DES_BAIRRO, NOM_CIDADE, NUM_CEP, NUM_TELEFONE, DAT_EXPEDICAO, DAT_PREV_DISTRIBUICAO, QTD_VOLUMES, DAT_ATRIBUICAO, ' +
            'DAT_BAIXA, DOM_BAIXADO, DAT_PAGAMENTO, DOM_PAGO, DOM_FECHADO, COD_STATUS, DAT_ENTREGA, QTD_PESO_REAL, ' +
            'QTD_PESO_FRANQUIA, VAL_VERBA_FRANQUIA, VAL_ADVALOREM, VAL_PAGO_FRANQUIA, VAL_VERBA_ENTREGADOR, NUM_EXTRATO, ' +
            'QTD_DIAS_ATRASO, QTD_VOLUMES_EXTRA, VAL_VOLUMES_EXTRA, QTD_PESO_COBRADO, DES_TIPO_PESO, DAT_RECEBIDO, DOM_RECEBIDO, ' +
            'NUM_CTRC, NUM_MANIFESTO, DES_RASTREIO, NUM_LOTE_REMESSA, DES_RETORNO, DAT_CREDITO, DOM_CREDITO, NUM_CONTAINER, ' +
            'VAL_PRODUTO, QTD_ALTURA, QTD_LARGURA, QTD_COMPRIMENTO, COD_FEEDBACK, DAT_FEEDBACK, DOM_CONFERIDO, NUM_PEDIDO, ' +
            'COD_CLIENTE_EMPRESA) ' +
            'VALUES ' +
            '(:NUM_NOSSONUMERO, :COD_AGENTE, :COD_ENTREGADOR, :COD_CLIENTE, :NUM_NF, :NOM_CONSUMIDOR, :DES_ENDERECO, ' +
            ':DES_COMPLEMENTO, :DES_BAIRRO, :NOM_CIDADE, :NUM_CEP, :NUM_TELEFONE, :DAT_EXPEDICAO, :DAT_PREV_DISTRIBUICAO, ' +
            ':QTD_VOLUMES, :DAT_ATRIBUICAO, :DAT_BAIXA, :DOM_BAIXADO, :DAT_PAGAMENTO, :DOM_PAGO, :DOM_FECHADO, :COD_STATUS, ' +
            ':DAT_ENTREGA, :QTD_PESO_REAL, :QTD_PESO_FRANQUIA, :VAL_VERBA_FRANQUIA, :VAL_ADVALOREM, :VAL_PAGO_FRANQUIA, ' +
            ':VAL_VERBA_ENTREGADOR, :NUM_EXTRATO, :QTD_DIAS_ATRASO, :QTD_VOLUMES_EXTRA, :VAL_VOLUMES_EXTRA, :QTD_PESO_COBRADO, ' +
            ':DES_TIPO_PESO, :DAT_RECEBIDO, :DOM_RECEBIDO, :NUM_CTRC, :NUM_MANIFESTO, :DES_RASTREIO, :NUM_LOTE_REMESSA, ' +
            ':DES_RETORNO, :DAT_CREDITO, :DOM_CREDITO, :NUM_CONTAINER, :VAL_PRODUTO, :QTD_ALTURA, :QTD_LARGURA, :QTD_COMPRIMENTO, ' +
            ':COD_FEEDBACK, :DAT_FEEDBACK, :DOM_CONFERIDO, :NUM_PEDIDO, :COD_CLIENTE_EMPRESA);',
                             [aEntregas.NN, aEntregas.Distribuidor, aEntregas.Entregador, aEntregas.Cliente,
                             aEntregas.NF, aEntregas.Consumidor, aEntregas.Endereco, aEntregas.Complemento, aEntregas.Bairro,
                             aEntregas.Cidade, aEntregas.CEP, aEntregas.Telefone, aEntregas.Expedicao, aEntregas.Previsao,
                             aEntregas.Volumes, aEntregas.Atribuicao, aEntregas.Baixa, aEntregas.Baixado, aEntregas.Pagamento,
                             aEntregas.Pago, aEntregas.Fechado, aEntregas.Status, aEntregas.Entrega, aEntregas.PesoReal,
                             aEntregas.PesoFranquia, aEntregas.VerbaFranquia, aEntregas.Advalorem, aEntregas.PagoFranquia,
                             aEntregas.VerbaEntregador, aEntregas.Extrato, aEntregas.Atraso, aEntregas.VolumesExtra,
                             aEntregas.ValorVolumes, aEntregas.PesoCobrado, aEntregas.TipoPeso, aEntregas.Recebimento,
                             aEntregas.Recebido, aEntregas.CTRC, aEntregas.Manifesto, aEntregas.Rastreio, aEntregas.Lote,
                             aEntregas.Retorno, aEntregas.Credito, aEntregas.Creditado, aEntregas.Container, aEntregas.ValorProduto,
                             aEntregas.Altura, aEntregas.Largura, aEntregas.Comprimento, aEntregas.CodigoFeedback,
                             aEntregas.DataFeedback, aEntregas.Conferido, aEntregas.Pedido, aEntregas.CodCliente]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TEntregasDAO.Previas(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
  datInicio: TDate;
  datFinal:  TDate;
  sSQL: String;
  i : Integer;
  iDias: Integer;
  datData: TDate;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) = 0 then
  begin
    Exit;
  end;
  datInicio := aParam[1];
  datFinal := aParam[2];
  iDias := DaysBetween(datInicio, datFinal);
  FDQuery.SQL.Clear;
  FDQuery.SQL.Add('select distinct(tbentregas.cod_entregador) as Entregador, ');
  datData := datInicio;
  sSQL := '';
  for i := 1 to iDias + 1 do
  begin
    if not sSQL.IsEmpty then sSQL := sSQL + ', ';
    sSQL := sSQL + 'SUM(IF(day(' + TABLENAME + '.dat_baixa) = ' + IntToStr(DayOf(datData)) +', 1, 0)) as ' +
            QuotedStr(Copy(FormatDateTime('dd/mm/yyyy', datData),1,5));
    datData := IncDay(datData,1);
  end;
  FDQuery.SQL.Add(sSQL);
  FDQuery.SQL.Add('from ' + TABLENAME);
  FDQuery.SQL.Add('where cod_agente = :agente and dat_baixa between :data1 and :data2 group by ' + TABLENAME + '.cod_entregador');
  FDQuery.ParamByName('agente').AsInteger := aParam[0];
  FDQuery.ParamByName('data1').AsDate := aParam[1];
  FDQuery.ParamByName('data2').AsDate := aParam[2];
  FDQuery.Open();
  Result := FDQuery;
end;

function TEntregasDAO.Update(aEntregas: TEntregas): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Connection.Ping;
    FDQuery.ExecSQL('UPDATE ' + TABLENAME + ' ' +
            'SET ' +
            'COD_AGENTE = :COD_AGENTE, COD_ENTREGADOR = :COD_ENTREGADOR, ' +
            'COD_CLIENTE = :COD_CLIENTE, NUM_NF = :NUM_NF, NOM_CONSUMIDOR = :NOM_CONSUMIDOR, DES_ENDERECO = :DES_ENDERECO, ' +
            'DES_COMPLEMENTO = :DES_COMPLEMENTO, DES_BAIRRO = :DES_BAIRRO, NOM_CIDADE = :NOM_CIDADE, NUM_CEP = :NUM_CEP, ' +
            'NUM_TELEFONE = :NUM_TELEFONE, DAT_EXPEDICAO = :DAT_EXPEDICAO, DAT_PREV_DISTRIBUICAO = :DAT_PREV_DISTRIBUICAO, ' +
            'QTD_VOLUMES = :QTD_VOLUMES, DAT_ATRIBUICAO = :DAT_ATRIBUICAO, DAT_BAIXA = :DAT_BAIXA, DOM_BAIXADO = :DOM_BAIXADO, ' +
            'DAT_PAGAMENTO = :DAT_PAGAMENTO, DOM_PAGO = :DOM_PAGO, DOM_FECHADO = :DOM_FECHADO, COD_STATUS = :COD_STATUS, ' +
            'DAT_ENTREGA = :DAT_ENTREGA, QTD_PESO_REAL = :QTD_PESO_REAL, QTD_PESO_FRANQUIA = :QTD_PESO_FRANQUIA, ' +
            'VAL_VERBA_FRANQUIA = :VAL_VERBA_FRANQUIA, VAL_ADVALOREM = :VAL_ADVALOREM, VAL_PAGO_FRANQUIA = :VAL_PAGO_FRANQUIA, ' +
            'VAL_VERBA_ENTREGADOR = :VAL_VERBA_ENTREGADOR, NUM_EXTRATO = :NUM_EXTRATO, QTD_DIAS_ATRASO = :QTD_DIAS_ATRASO, ' +
            'QTD_VOLUMES_EXTRA = :QTD_VOLUMES_EXTRA, VAL_VOLUMES_EXTRA = :VAL_VOLUMES_EXTRA, QTD_PESO_COBRADO = :QTD_PESO_COBRADO, ' +
            'DES_TIPO_PESO = :DES_TIPO_PESO, DAT_RECEBIDO = :DAT_RECEBIDO, DOM_RECEBIDO = :DOM_RECEBIDO, NUM_CTRC = :NUM_CTRC, ' +
            'NUM_MANIFESTO = :NUM_MANIFESTO, DES_RASTREIO = :DES_RASTREIO, NUM_LOTE_REMESSA = :NUM_LOTE_REMESSA, ' +
            'DES_RETORNO = :DES_RETORNO, DAT_CREDITO = :DAT_CREDITO, DOM_CREDITO = :DOM_CREDITO, NUM_CONTAINER = :NUM_CONTAINER, ' +
            'VAL_PRODUTO = :VAL_PRODUTO, QTD_ALTURA = :QTD_ALTURA, QTD_LARGURA = :QTD_LARGURA, QTD_COMPRIMENTO = :QTD_COMPRIMENTO, ' +
            'COD_FEEDBACK = :COD_FEEDBACK, DAT_FEEDBACK = :DAT_FEEDBACK, DOM_CONFERIDO = :DOM_CONFERIDO, ' +
            'NUM_PEDIDO = :NUM_PEDIDO, COD_CLIENTE_EMPRESA = :COD_CLIENTE_EMPRESA ' +
            'WHERE ' +
            'NUM_NOSSONUMERO = :NUM_NOSSONUMERO;' ,[aEntregas.Distribuidor, aEntregas.Entregador, aEntregas.Cliente,
                             aEntregas.NF, aEntregas.Consumidor, aEntregas.Endereco, aEntregas.Complemento, aEntregas.Bairro,
                             aEntregas.Cidade, aEntregas.CEP, aEntregas.Telefone, aEntregas.Expedicao, aEntregas.Previsao,
                             aEntregas.Volumes, aEntregas.Atribuicao, aEntregas.Baixa, aEntregas.Baixado, aEntregas.Pagamento,
                             aEntregas.Pago, aEntregas.Fechado, aEntregas.Status, aEntregas.Entrega, aEntregas.PesoReal,
                             aEntregas.PesoFranquia, aEntregas.VerbaFranquia, aEntregas.Advalorem, aEntregas.PagoFranquia,
                             aEntregas.VerbaEntregador, aEntregas.Extrato, aEntregas.Atraso, aEntregas.VolumesExtra,
                             aEntregas.ValorVolumes, aEntregas.PesoCobrado, aEntregas.TipoPeso, aEntregas.Recebimento,
                             aEntregas.Recebido, aEntregas.CTRC, aEntregas.Manifesto, aEntregas.Rastreio, aEntregas.Lote,
                             aEntregas.Retorno, aEntregas.Credito, aEntregas.Creditado, aEntregas.Container, aEntregas.ValorProduto,
                             aEntregas.Altura, aEntregas.Largura, aEntregas.Comprimento, aEntregas.CodigoFeedback,
                             aEntregas.DataFeedback, aEntregas.Conferido, aEntregas.Pedido, aEntregas.CodCliente,
                             aEntregas.NN]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TEntregasDAO.ChangeConferencia(sNN: String; iStatus: Integer): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('UPDATE ' + TABLENAME + ' SET DOM_CONFERIDO = :DOM_CONFERIDO WHERE ' +
                    'NUM_NOSSONUMERO = :NUM_NOSSONUMERO;',[iStatus, sNN]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TEntregasDAO.Create;
begin
  FConexao := TSistemaControl.GetInstance().Conexao;
end;

function TEntregasDAO.Delete(aEntregas: TEntregas): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where NUM_NOSSONUMERO = :NUM_NOSSONUMERO', [aEntregas.NN]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TEntregasDAO.EntregasExtrato(aParam: array of variant): TFDQuery;
var
  FDQuery : TFDQuery;
  sSQL: String;
begin
  sSQL := 'select cod_cliente_empresa, cod_entregador, count(num_nossonumero) as entregas, val_verba_entregador, ' +
          '(count(num_nossonumero) * val_verba_entregador) as total from '+ TABLENAME + ' where dat_baixa between :data1 and :data2 ' +
          'and dom_baixado = :dom and cod_agente = :agente and qtd_peso_cobrado <= 25 group by cod_cliente_empresa, cod_entregador, val_verba_entregador';
  FDQuery := FConexao.ReturnQuery;
  FDQuery.SQL.Text := sSQL;
  FDQuery.ParamByName('data1').Value := FloatToDateTime(aParam[0]);
  FDQuery.ParamByName('data2').Value := FloatToDateTime(aParam[1]);
  FDQuery.ParamByName('agente').Value := aParam[2];
  FDQuery.ParamByName('dom').Value := aParam[3];
  FDQuery.Open();
  Result := FDQuery;
end;

function TEntregasDAO.EntregasExtratoNew(aParam: array of variant): TFDQuery;
var
  FDQuery : TFDQuery;
  sSQL: String;
begin

  sSQL := 'select tbentregas.cod_agente as cod_agente, tbagentes.nom_fantasia as nom_agente, ' +
          'tbentregas.cod_entregador as cod_entregador, tbcodigosentregadores.nom_fantasia as nom_entregador, ' +
          '(100 - ((sum(if(tbentregas.qtd_dias_atraso > 0,1,0)) / count(tbentregas.num_nossonumero))) * 100) as val_percentual_sla, ' +
          'sum(tbentregas.qtd_volumes) as qtd_volumes, sum(1) as qtd_entregas, ';
  if aParam[3] = True then
  begin
    sSQL := sSQL + 'if(tbentregas.qtd_peso_cobrado <= 25,((sum(tbentregas.qtd_volumes) -sum(if(tbentregas.qtd_peso_cobrado <= 25 , 1 , 0))) / 2), 0) as qtd_volumes_extra, ';
  end
  else
  begin
    sSQL := sSQL + ' 0 as qtd_volumes_extra, ';
  end;
  sSQL := sSQL +
          'sum(if(tbentregas.qtd_peso_cobrado > 25 , 1 , 0)) as qtd_pfp, tbentregas.val_verba_entregador as val_verba, ' +
          'sum(if(tbentregas.qtd_dias_atraso > 0,1,0)) as qtd_itens_atraso ' +
          'from ' + TABLENAME +
          ' join tbagentes on tbagentes.cod_agente = tbentregas.cod_agente ' +
          'join tbcodigosentregadores on tbcodigosentregadores.cod_entregador = tbentregas.cod_entregador ' +
          'where tbentregas.dom_baixado = :dom and dom_fechado <> :fechado ';
  if aParam[4] = True then
  begin
    sSQL := sSQL + 'and bentregas.dat_baixa <= :data2 ';
  end
  else
  begin
    sSQL := sSQL + 'and tbentregas.dat_baixa between :data1 and :data2 ';
  end;
  if aParam[2] > 0 then
  begin
    sSQL := sSQL + ' and cod_cliente_empresa = :cliente '
  end;
  sSQL := sSQL +  'group by tbentregas.cod_agente, tbentregas.cod_entregador, tbentregas.val_verba_entregador;';
  FDQuery := FConexao.ReturnQuery;
  FDQuery.SQL.Text := sSQL;
  FDQuery.ParamByName('data1').Value := FloatToDateTime(aParam[0]);
  FDQuery.ParamByName('data2').Value := FloatToDateTime(aParam[1]);
  if aParam[2] > 0 then
  begin
    FDQuery.ParamByName('cliente').Value := aParam[2];
  end;
  FDQuery.ParamByName('dom').Value := 'S';
  FDQuery.ParamByName('fechado').Value := 'S';
  FDQuery.Open();
  Result := FDQuery;
end;

function TEntregasDAO.ExisteNN(sNN: String): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.SQL.Add('SELECT * FROM ' + TABLENAME + ' WHERE NUM_NOSSONUMERO = :NN');
    FDQuery.ParamByName('NN').AsString := sNN;
    FDQuery.Open();
    if FDQuery.IsEmpty then Exit;
    Result := True
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TEntregasDAO.ExtratoBase(aParam: array of variant): TFDQuery;
var
  FDQuery : TFDQuery;
  sSQL: String;
begin

  sSQL := 'select tbentregas.cod_agente as cod_expressa, sum(tbentregas.qtd_volumes) as qtd_volumes, ' +
          'count(tbentregas.num_nossonumero) as qtd_entregas, ' +
          'sum(tbentregas.val_verba_entregador) as val_producao, ';
  if aParam[3] = True then
  begin
    sSQL := sSQL + '(sum(tbentregas.qtd_volumes) - sum(if(tbentregas.qtd_peso_cobrado <= 25 , 1 , 0))) / 2 as qtd_volumes_extra, ';
    sSQL := sSQL + '((sum(tbentregas.qtd_volumes) - sum(if(tbentregas.qtd_peso_cobrado <= 25 , 1 , 0))) / 2) * ' +
                   '(if(tbentregas.qtd_peso_cobrado <= 25 , tbentregas.val_verba_entregador , 0)) as val_volume_extra, ';
  end
  else
  begin
    sSQL := sSQL + ' 0 as qtd_volumes_extra, ';
    sSQL := sSQL + ' 0 as val_volumes_extra, ';
  end;
  sSQL := sSQL +
          'sum(if(tbentregas.qtd_dias_atraso > 0,1,0)) as qtd_atraso, ' +
          '(100 - ((sum(if(tbentregas.qtd_dias_atraso > 0,1,0)) / count(tbentregas.num_nossonumero))) * 100) as val_performance, ' +
          'sum(tbentregas.val_verba_franquia) as val_total_ticket, ' +
          '0 as val_ticket_medio, ' +
          'if(tbagentes.des_forma_pagamento <> "NENHUMA",1,0) as cod_tipo_expressa, ' +
          'tbagentes.nom_fantasia as nom_expressa, ' +
          'tbbancos.nom_banco as nom_banco, ' +
          'tbagentes.des_tipo_conta as des_tipo_conta, ' +
          'tbagentes.cod_agencia as num_agencia, ' +
          'tbagentes.num_conta as num_conta, ' +
          'tbagentes.nom_favorecido as nom_favorecido, ' +
          'tbagentes.num_cpf_cnpj_favorecido as num_cpf_cnpj,  '  +
          'sum(if(tbentregas.qtd_peso_cobrado > 25,1,0)) as qtd_pfp ' +
          'from ' + TABLENAME +
          ' join tbagentes on tbagentes.cod_agente = tbentregas.cod_agente ' +
          'join tbbancos on tbbancos.cod_banco = tbagentes.cod_banco ';
          if aParam[4] = True then
          begin
            sSQL := sSQL + 'where tbentregas.dat_baixa <= :data2 and ';
          end
          else
          begin
            sSQL := sSQL + 'where tbentregas.dat_baixa between :data1 and :data2 and ';
          end;
          sSQL := sSQL + 'tbentregas.dom_baixado = :dom and dom_fechado <> :fechado and ' +
          'tbagentes.des_forma_pagamento <> "NENHUMA"';
  if aParam[2] <> 0 then
  begin
      sSQL := sSQL + ' and cod_cliente_empresa = :cliente ';
  end;
  sSQL := sSQL + 'group by tbentregas.cod_agente;';
  FDQuery := FConexao.ReturnQuery;
  FDQuery.SQL.Text := sSQL;
  FDQuery.ParamByName('data1').Value := FloatToDateTime(aParam[0]);
  FDQuery.ParamByName('data2').Value := FloatToDateTime(aParam[1]);
  FDQuery.ParamByName('fechado').Value := 'S';
  if aParam[2] <> 0 then
  begin
    FDQuery.ParamByName('cliente').Value := FloatToDateTime(aParam[2]);
  end;
  FDQuery.ParamByName('dom').Value := 'S';
  FDQuery.Open();
  Result := FDQuery;
end;

function TEntregasDAO.ExtratoEntregador(aParam: array of variant): TFDQuery;
var
  FDQuery : TFDQuery;
  sSQL: String;
begin

  sSQL := 'select tbentregas.cod_entregador as cod_expressa, sum(tbentregas.qtd_volumes) as qtd_volumes, ' +
          'count(tbentregas.num_nossonumero) as qtd_entregas, ' +
          'sum(tbentregas.val_verba_entregador) as val_producao, ';
  if aParam[3] = True then
  begin
    sSQL := sSQL + '(sum(tbentregas.qtd_volumes) - sum(if(tbentregas.qtd_peso_cobrado <= 25 , 1 , 0))) / 2 as qtd_volumes_extra, ';
    sSQL := sSQL + '((sum(tbentregas.qtd_volumes) - sum(if(tbentregas.qtd_peso_cobrado <= 25 , 1 , 0))) / 2) * ' +
                   '(if(tbentregas.qtd_peso_cobrado <= 25 , tbentregas.val_verba_entregador , 0)) as val_volume_extra, ';
  end
  else
  begin
    sSQL := sSQL + ' 0 as qtd_volumes_extra, ';
    sSQL := sSQL + ' 0 as val_volumes_extra, ';
  end;
  sSQL := sSQL +

          'sum(if(tbentregas.qtd_dias_atraso > 0,1,0)) as qtd_atraso, ' +
          '(100 - ((sum(if(tbentregas.qtd_dias_atraso > 0,1,0)) / count(tbentregas.num_nossonumero))) * 100) as val_performance, ' +
          'sum(tbentregas.val_verba_franquia) as val_total_ticket, ' +
          '0 as val_ticket_medio, ' +
          'if(tbagentes.des_forma_pagamento = "NENHUMA",2,0) as cod_tipo_expressa, ' +
          'tbcodigosentregadores.nom_fantasia as nom_expressa, ' +
          'tbbancos.nom_banco as nom_banco, ' +
          'tbentregadores.des_tipo_conta as des_tipo_conta, ' +
          'tbentregadores.cod_agencia as num_agencia, ' +
          'tbentregadores.num_conta as num_conta, ' +
          'tbentregadores.nom_favorecido as nom_favorecido, ' +
          'tbentregadores.num_cpf_cnpj_favorecido as num_cpf_cnpj, '  +
          'sum(if(tbentregas.qtd_peso_cobrado > 25,1,0)) as qtd_pfp ' +
          'from ' + TABLENAME +
          ' join tbagentes on tbagentes.cod_agente = tbentregas.cod_agente ' +
          'join tbcodigosentregadores on tbcodigosentregadores.cod_entregador = tbentregas.cod_entregador ' +
          'join tbentregadores on tbentregadores.cod_cadastro = tbcodigosentregadores.cod_cadastro ' +
          'left join tbbancos on tbbancos.cod_banco = tbentregadores.cod_banco ';
          if aParam[4] = True then
          begin
            sSQL := sSQL + 'where tbentregas.dat_baixa <= :data2 and ';
          end
          else
          begin
            sSQL := sSQL + 'where tbentregas.dat_baixa between :data1 and :data2 and ';
          end;
          sSQL := sSQL + 'tbentregas.dom_baixado = :dom and dom_fechado <> :fechado and ' +
          'tbagentes.des_forma_pagamento = "NENHUMA"';
  if aParam[2] <> 0 then
  begin
      sSQL := sSQL + ' and tbentregas.cod_cliente_empresa = :cliente ';
  end;

  sSQL := sSQL + 'group by tbentregas.cod_entregador;';
  FDQuery := FConexao.ReturnQuery;
  FDQuery.SQL.Text := sSQL;
  FDQuery.ParamByName('data1').Value := FloatToDateTime(aParam[0]);
  FDQuery.ParamByName('data2').Value := FloatToDateTime(aParam[1]);
  FDQuery.ParamByName('fechado').Value := 'S';
  if aParam[2] <> 0 then
  begin
    FDQuery.ParamByName('cliente').Value := FloatToDateTime(aParam[2]);
  end;
  FDQuery.ParamByName('dom').Value := 'S';
  FDQuery.Open();
  Result := FDQuery;
end;

function TEntregasDAO.FindEntrega(aParam: array of Variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) = 0 then
  begin
    Exit;
  end;
  FDQuery.SQL.Clear;
  FDQuery.SQL.Add('SELECT NUM_NOSSONUMERO, COD_AGENTE, COD_ENTREGADOR, COD_CLIENTE, NUM_NF, NOM_CONSUMIDOR, DES_ENDERECO, ' +
            'DES_COMPLEMENTO, DES_BAIRRO, NOM_CIDADE, NUM_CEP, NUM_TELEFONE, DAT_EXPEDICAO, DAT_PREV_DISTRIBUICAO, QTD_VOLUMES, ' +
            'DAT_ATRIBUICAO, DAT_BAIXA, DOM_BAIXADO, DAT_PAGAMENTO, DOM_PAGO, DOM_FECHADO, COD_STATUS, DAT_ENTREGA, QTD_PESO_REAL,'+
            'QTD_PESO_FRANQUIA, VAL_VERBA_FRANQUIA, VAL_ADVALOREM, VAL_PAGO_FRANQUIA, VAL_VERBA_ENTREGADOR, NUM_EXTRATO, ' +
            'QTD_DIAS_ATRASO, QTD_VOLUMES_EXTRA, VAL_VOLUMES_EXTRA, QTD_PESO_COBRADO, DES_TIPO_PESO, DAT_RECEBIDO, DOM_RECEBIDO, ' +
            'NUM_CTRC, NUM_MANIFESTO, DES_RASTREIO, NUM_LOTE_REMESSA, DES_RETORNO, DAT_CREDITO, DOM_CREDITO, NUM_CONTAINER, ' +
            'VAL_PRODUTO, QTD_ALTURA, QTD_LARGURA, QTD_COMPRIMENTO, COD_FEEDBACK, DAT_FEEDBACK, DOM_CONFERIDO, NUM_PEDIDO, ' +
            'COD_CLIENTE_EMPRESA FROM ' + TABLENAME);
  if aParam[0] = 'NN' then
  begin
    FDQuery.SQL.Add('WHERE NUM_NOSSONUMERO = :NN');
    FDQuery.ParamByName('NN').AsString := aParam[1];
  end;
  if aParam[0] = 'DISTRIBUIDOR' then
  begin
    FDQuery.SQL.Add('WHERE COD_AGENTE = :AGENTE');
    FDQuery.ParamByName('AGENTE').AsInteger := aParam[1];
  end;
  if aParam[0] = 'ENTREGADOR' then
  begin
    FDQuery.SQL.Add('WHERE COD_ENTREGADOR = :ENTREGADOR');
    FDQuery.ParamByName('ENTREGADOR').AsInteger := aParam[1];
  end;
  if aParam[0] = 'CONTAINER' then
  begin
    FDQuery.SQL.Add('WHERE NUM_CONTAINER = :CONTAINER');
    FDQuery.ParamByName('CONTAINER').AsString := aParam[1];
  end;
  if aParam[0] = 'EXPEDICAO' then
  begin
    FDQuery.SQL.Add('WHERE DAT_EXPEDICAO BETWEEN :EXPEDICAO AND :EXPEDICAO1');
    FDQuery.ParamByName('EXPEDICAO').AsDate := aParam[1];
    FDQuery.ParamByName('EXPEDICAO1').AsDate := aParam[2];
  end;
  if aParam[0] = 'ATRIBUICAO' then
  begin
    FDQuery.SQL.Add('WHERE DAT_ATRIBUICAO BETWEEN :ATRIBUICAO AND :ATRIBUICAO1');
    FDQuery.ParamByName('ATRIBUICAO').AsDate := aParam[1];
    FDQuery.ParamByName('ATRIBUICAO1').AsDate := aParam[2];
  end;
  if aParam[0] = 'BAIXA' then
  begin
    FDQuery.SQL.Add('WHERE DAT_BAIXA BETWEEN :BAIXA AND :BAIXA1');
    FDQuery.ParamByName('BAIXA').AsDate := aParam[1];
    FDQuery.ParamByName('BAIXA1').AsDate := aParam[2];
  end;
  if aParam[0] = 'ENTREGA' then
  begin
    FDQuery.SQL.Add('WHERE DAT_ENTREGA BETWEEN :ENTREGA AND :ENTREGA1');
    FDQuery.ParamByName('ENTREGA').AsDate := aParam[1];
    FDQuery.ParamByName('ENTREGA').AsDate := aParam[2];
  end;
  if aParam[0] = 'VENCIMENTO' then
  begin
    FDQuery.SQL.Add('WHERE DAT_PREV_DISTRIBUICAO BETWEEN :PREVISAO AND :PREVISAO1');
    FDQuery.ParamByName('PREVISAO').AsDate := aParam[1];
    FDQuery.ParamByName('PREVISAO1').AsDate := aParam[2];
  end;
  if aParam[0] = 'EXTRATO' then
  begin
    FDQuery.SQL.Add('WHERE NUM_EXTRATO = :EXTRATO');
    FDQuery.ParamByName('EXTRATO').AsString := aParam[1];
  end;
  if aParam[0] = 'CLIENTE' then
  begin
    FDQuery.SQL.Add('WHERE COD_CLIENTE = :CLIENTE');
    FDQuery.ParamByName('CLIENTE').AsInteger := aParam[1];
  end;
  if aParam[0] = 'NF' then
  begin
    FDQuery.SQL.Add('WHERE NUM_NF = :NF');
    FDQuery.ParamByName('NF').AsString := aParam[1];
  end;
  if aParam[0] = 'PEDIDO' then
  begin
    FDQuery.SQL.Add('WHERE NUM_PEDIDO = :PEDIDO');
    FDQuery.ParamByName('PEDIDO').AsString := aParam[1];
  end;
  if aParam[0] = 'CTRC' then
  begin
    FDQuery.SQL.Add('WHERE NUM_CTRC = :CTRC');
    FDQuery.ParamByName('CTRC').AsInteger := aParam[1];
  end;
  if aParam[0] = 'MANIFESTO' then
  begin
    FDQuery.SQL.Add('WHERE NUM_MANIFESTO = :MANIFESTO');
    FDQuery.ParamByName('MANIFESTO').AsInteger := aParam[1];
  end;
  if aParam[0] = 'CONSUMIDOR' then
  begin
    FDQuery.SQL.Add('WHERE NOM_CONSUMIDOR LIKE :CONSUMIDOR');
    FDQuery.ParamByName('CONSUMIDOR').AsString := aParam[1];
  end;
  if aParam[0] = 'CEP' then
  begin
    FDQuery.SQL.Add('WHERE NUM_CEP = :CEP');
    FDQuery.ParamByName('CEP').AsString := aParam[1];
  end;
  if aParam[0] = 'LOTE' then
  begin
    FDQuery.SQL.Add('WHERE NUM_LOTE_REMESSA = :LOTE');
    FDQuery.ParamByName('LOTE').AsInteger := aParam[1];
  end;
  if aParam[0] = 'CODFEEDBACK' then
  begin
    FDQuery.SQL.Add('WHERE COD_FEEDBACK = :CODIGO');
    FDQuery.ParamByName('CODIGO').AsInteger := aParam[1];
  end;
  if aParam[0] = 'DATFEEDBACK' then
  begin
    FDQuery.SQL.Add('WHERE DAT_FEEDBACK = :DATA');
    FDQuery.ParamByName('DATA').AsDateTime := aParam[1];
  end;
  if aParam[0] = 'MOVFEEDBACK' then
  begin
    FDQuery.SQL.Add('WHERE COD_FEEDBACK = :CODIGO AND DAT_FEEDBACK = :DATA');
    FDQuery.ParamByName('CODIGO').AsInteger := aParam[1];
    FDQuery.ParamByName('DATA').AsDateTime := aParam[2];
  end;
  if aParam[0] = 'LOTFEEDBACK' then
  begin
    FDQuery.SQL.Add('WHERE NUM_LOTE_REMESSA = :LOTE AND COD_FEEDBACK = :CODIGO');
    FDQuery.ParamByName('LOTE').AsInteger := aParam[1];
    FDQuery.ParamByName('CODIGO').AsInteger := aParam[2];
  end;
  if aParam[0] = 'FECHAMENTO' then
  begin
    FDQuery.SQL.Add('WHERE DAT_BAIXA BETWEEN :DATA AND :DATA1 AND DOM_BAIXADO = :BAIXADO');
    FDQuery.ParamByName('DATA').AsDateTime := aParam[1];
    FDQuery.ParamByName('DATA1').AsDateTime := aParam[2];
    FDQuery.ParamByName('BAIXADO').AsString := aParam[3];
  end;
  if aParam[0] = 'PREVIAPEDIDOS' then
  begin
    FDQuery.SQL.Add('WHERE DAT_BAIXA BETWEEN :DATA AND :DATA1 AND COD_ENTREGADOR = :ENTREGADOR');
    FDQuery.ParamByName('DATA').AsDateTime := aParam[1];
    FDQuery.ParamByName('DATA1').AsDateTime := aParam[2];
    FDQuery.ParamByName('ENTREGADOR').AsString := aParam[3];
  end;
  if aParam[0] = 'PREVIAPFP' then
  begin
    FDQuery.SQL.Add('WHERE DAT_BAIXA BETWEEN :DATA AND :DATA1 AND COD_ENTREGADOR = :ENTREGADOR AND QTD_PESO_COBRADO > 25');
    FDQuery.ParamByName('DATA').AsDateTime := aParam[1];
    FDQuery.ParamByName('DATA1').AsDateTime := aParam[2];
    FDQuery.ParamByName('ENTREGADOR').AsString := aParam[3];
  end;
  if aParam[0] = 'FILTRO' then
  begin
    FDQuery.SQL.Add(aParam[1]);
  end;
  FDQuery.Open();
  Result := FDQuery;
end;

function TEntregasDAO.ForaPadrao(aParam: array of variant): TFDQuery;
var
  FDQuery : TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery;
  FDQuery.SQL.Add('select distinct(cod_entregador) as Entregador, count(num_nossonumero) as Entregas, val_verba_entregador, sum(val_verba_entregador) as Verba from ' + TABLENAME);
  FDQuery.SQL.Add('where dat_baixa between :data1 and :data2 and cod_agente = :agente and qtd_peso_cobrado > 25 and dom_baixado = :baixado group by cod_entregador');
  FDQuery.ParamByName('data1').Value := FloatToDateTime(aParam[0]);
  FDQuery.ParamByName('data2').Value := FloatToDateTime(aParam[1]);
  FDQuery.ParamByName('agente').Value := aParam[2];
  FDQuery.ParamByName('baixado').Value := aParam[3];
  FDQuery.Open();
  Result := FDQuery;
end;

end.
