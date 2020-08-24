unit Model.Entregas;

interface

  uses
    Common.ENum, FireDAC.Comp.Client,System.SysUtils, DAO.Conexao, System.DateUtils, System.Variants;

  type
    TEntregas = class
    private
      FNN: String;
      FDistribuidor: Integer;
      FEntregador: Integer;
      FCliente: Integer;
      FNF: String;
      FConsumidor: String;
      FEndereco: String;
      FComplemento: String;
      FBairro: String;
      FCidade: String;
      FCEP: String;
      FTelefone: String;
      FExpedicao: TDateTime;
      FPrevisao: TDateTime;
      FVolumes: Integer;
      FAtribuicao: TDateTime;
      FBaixa: TDateTime;
      FBaixado: String;
      FPagamento: TDateTime;
      FPago: String;
      FFechado: String;
      FStatus: Integer;
      FEntrega: TDateTime;
      FPesoReal: Double;
      FPesoFranquia: Double;
      FVerbaFranquia: Double;
      FAdvalorem: Double;
      FPagoFranquia: Double;
      FVerbaEntregador: Double;
      FExtrato: String;
      FAtraso: Integer;
      FVolumesExtra: Double;
      FValorVolumes: Double;
      FPesoCobrado: Double;
      FTipoPeso: String;
      FRecebimento: TDateTime;
      FRecebido: String;
      FCTRC: Integer;
      FManifesto: Integer;
      FRastreio: String;
      FLote: Integer;
      FRetorno: String;
      FCredito: TDateTime;
      FCreditado: String;
      FContainer: String;
      FValorProduto: Double;
      FAltura: Integer;
      FLargura: Integer;
      FComprimento: Integer;
      FCodigoFeedback: Integer;
      FDataFeedback: TDateTime;
      FConferido: Integer;
      FPedido: String;
      FAcao: TAcao;
      FCodCliente: Integer;
      FConexao : TConexao;

      function Inserir(): Boolean;
      function Alterar(): Boolean;
      function Excluir(): Boolean;

    public
      property NN: String               read  FNN               write   FNN;
      property Distribuidor: Integer    read  FDistribuidor     write   FDistribuidor;
      property Entregador: Integer      read  FEntregador       write   FEntregador;
      property Cliente: Integer         read  FCliente          write   FCliente;
      property NF: String               read  FNF               write   FNF;
      property Consumidor: String       read  FConsumidor       write   FConsumidor;
      property Endereco: String         read  FEndereco         write   FEndereco;
      property Complemento: String      read  FComplemento      write   FComplemento;
      property Bairro: String           read  FBairro           write   FBairro;
      property Cidade: String           read  FCidade           write   FCidade;
      property CEP: String              read  FCEP              write   FCEP;
      property Telefone: String         read  FTelefone         write   FTelefone;
      property Expedicao: TDateTime     read  FExpedicao        write   FExpedicao;
      property Previsao: TDateTime      read  FPrevisao         write   FPrevisao;
      property Volumes: Integer         read  FVolumes          write   FVolumes;
      property Atribuicao: TDateTime    read  FAtribuicao       write   FAtribuicao;
      property Baixa: TDateTime         read  FBaixa            write   FBaixa;
      property Baixado: String          read  FBaixado          write   FBaixado;
      property Pagamento: TDateTime     read  FPagamento        write   FPagamento;
      property Pago: String             read  FPago             write   FPago;
      property Fechado: String          read  FFechado          write   FFechado;
      property Status: Integer          read  FStatus           write   FStatus;
      property Entrega: TDateTime       read  FEntrega          write   FEntrega;
      property PesoReal: Double         read  FPesoReal         write   FPesoReal;
      property PesoFranquia: Double     read  FPesoFranquia     write   FPesoFranquia;
      property VerbaFranquia: Double    read  FVerbaFranquia    write   FVerbaFranquia;
      property Advalorem: Double        read  FAdvalorem        write   FAdvalorem;
      property PagoFranquia: Double     read  FPagoFranquia     write   FPagoFranquia;
      property VerbaEntregador: Double  read  FVerbaEntregador  write   FVerbaEntregador;
      property Extrato: String          read  FExtrato          write   FExtrato;
      property Atraso: Integer          read  FAtraso           write   FAtraso;
      property VolumesExtra: Double     read  FVolumesExtra     write   FVolumesExtra;
      property ValorVolumes: Double     read  FValorVolumes     write   FValorVolumes;
      property PesoCobrado: Double      read  FPesoCobrado      write   FPesoCobrado;
      property TipoPeso: String         read  FTipoPeso         write   FTipoPeso;
      property Recebimento: TDateTime   read  FRecebimento      write   FRecebimento;
      property Recebido: String         read  FRecebido         write   FRecebido;
      property CTRC: Integer            read  FCTRC             write   FCTRC;
      property Manifesto: Integer       read  FManifesto        write   FManifesto;
      property Rastreio: String         read  FRastreio         write   FRastreio;
      property Lote: Integer            read  FLote             write   FLote;
      property Retorno: String          read  FRetorno          write   FRetorno;
      property Credito: TDateTime       read  FCredito          write   FCredito;
      property Creditado: String        read  FCreditado        write   FCreditado;
      property Container: String        read  FContainer        write   FContainer;
      property ValorProduto: Double     read  FValorProduto     write   FValorProduto;
      property Altura: Integer          read  FAltura           write   FAltura ;
      property Largura: Integer         read  FLargura          write   FLargura;
      property Comprimento: Integer     read  FComprimento      write   FComprimento;
      property CodigoFeedback: Integer  read  FCodigoFeedback   write   FCodigoFeedback;
      property DataFeedback: TDateTime  read  FDataFeedback     write   FDataFeedback;
      property Conferido: Integer       read  FConferido        write   FConferido;
      property Pedido: String           read  FPedido           write   FPedido;
      property CodCliente: Integer      read  FCodCliente       write   FCodCliente;
      property Acao: TAcao              read  FAcao             Write   FAcao;

      constructor Create;
      function Localizar(aParam: array of variant): TFDQuery;
      function Gravar(): Boolean;
      function ExisteNN(sNN: String): Boolean;
      function Previas(aParam: Array of variant): TFDQuery;
      function EntregasExtrato(aParam: Array of variant): TFDQuery;
      function EncerraEntregas(aParam: Array of variant): Boolean;
      function GetField(sField: String; sKey: String; sKeyValue: String): String;
      function GetAReceber(iEntregador: Integer): TFDQuery;

    end;

const
  TABLENAME = 'tbentregas';
  SQLINSERT = 'INSERT INTO ' + TABLENAME +
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
            ':DES_RETORNO, :DAT_CREDITO, :DOM_CREDITO, :NUM_CONTAINER, :VAL_PRODUTO, :QTD_ALTURA,:QTD_LARGURA, :QTD_COMPRIMENTO, ' +
            ':COD_FEEDBACK, :DAT_FEEDBACK, :DOM_CONFERIDO, :NUM_PEDIDO, :COD_CLIENTE_EMPRESA);';
  SQLUPDATE = 'UPDATE ' + TABLENAME + ' ' +
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
            'NUM_NOSSONUMERO = :NUM_NOSSONUMERO;';
  SQLQUERY = 'SELECT NUM_NOSSONUMERO, COD_AGENTE, COD_ENTREGADOR, COD_CLIENTE, NUM_NF, NOM_CONSUMIDOR, DES_ENDERECO, ' +
            'DES_COMPLEMENTO, DES_BAIRRO, NOM_CIDADE, NUM_CEP, NUM_TELEFONE, DAT_EXPEDICAO, DAT_PREV_DISTRIBUICAO, QTD_VOLUMES, ' +
            'DAT_ATRIBUICAO, DAT_BAIXA, DOM_BAIXADO, DAT_PAGAMENTO, DOM_PAGO, DOM_FECHADO, COD_STATUS, DAT_ENTREGA, QTD_PESO_REAL,'+
            'QTD_PESO_FRANQUIA, VAL_VERBA_FRANQUIA, VAL_ADVALOREM, VAL_PAGO_FRANQUIA, VAL_VERBA_ENTREGADOR, NUM_EXTRATO, ' +
            'QTD_DIAS_ATRASO, QTD_VOLUMES_EXTRA, VAL_VOLUMES_EXTRA, QTD_PESO_COBRADO, DES_TIPO_PESO, DAT_RECEBIDO, DOM_RECEBIDO, ' +
            'NUM_CTRC, NUM_MANIFESTO, DES_RASTREIO, NUM_LOTE_REMESSA, DES_RETORNO, DAT_CREDITO, DOM_CREDITO, NUM_CONTAINER, ' +
            'VAL_PRODUTO, QTD_ALTURA, QTD_LARGURA, QTD_COMPRIMENTO, COD_FEEDBACK, DAT_FEEDBACK, DOM_CONFERIDO, NUM_PEDIDO, ' +
            'COD_CLIENTE_EMPRESA FROM ' + TABLENAME;
  SQLENCERRA='update ' + TABLENAME + ' set ' +
             'dom_fechado = "S", num_extrato = :num_extrato, dom_credito = "S", dat_credito = :dat_credito ' +
             'where cod_entregador = :cod_entregador and dat_baixa >= :data1 and dat_baixa <= :data2;';

  implementation

{ TEntregas }

function TEntregas.Alterar: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Connection.Ping;
    FDQuery.ExecSQL(SQLUPDATE,[Self.Distribuidor, Self.Entregador, Self.Cliente, Self.NF, Self.Consumidor, Self.Endereco,
                    Self.Complemento, Self.Bairro, Self.Cidade, Self.CEP, Self.Telefone, Self.Expedicao, Self.Previsao,
                    Self.Volumes, Self.Atribuicao, Self.Baixa, Self.Baixado, Self.Pagamento, Self.Pago, Self.Fechado,
                    Self.Status, Self.Entrega, Self.PesoReal, Self.PesoFranquia, Self.VerbaFranquia, Self.Advalorem,
                    Self.PagoFranquia, Self.VerbaEntregador, Self.Extrato, Self.Atraso, Self.VolumesExtra, Self.ValorVolumes,
                    Self.PesoCobrado, Self.TipoPeso, Self.Recebimento, Self.Recebido, Self.CTRC, Self.Manifesto, Self.Rastreio,
                    Self.Lote, Self.Retorno, Self.Credito, Self.Creditado, Self.Container, Self.ValorProduto, Self.Altura,
                    Self.Largura, Self.Comprimento, Self.CodigoFeedback, Self.DataFeedback, Self.Conferido, Self.Pedido,
                    Self.CodCliente, Self.NN]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;

end;

constructor TEntregas.Create;
begin
  FConexao := TConexao.Create;
end;

function TEntregas.EncerraEntregas(aParam: array of variant): Boolean;
var
  FDQuery: TFDQuery;
  sExtrato : String;
  datCredito: TDate;
  iEntregador : Integer;
  dtData1 : TDate;
  dtData2 : TDate;
  sSQL : String;
begin
  try
    Result := False;
    sExtrato := VarToStr(aParam[0]);
    datCredito := VarToDateTime(aParam[1]);
    iEntregador := aParam[2];
    dtData1 := VarToDateTime(aParam[3]);
    dtData2 := VarToDateTime(aParam[4]);
    sSQL := 'update ' + TABLENAME + ' set ' +
             'dom_fechado = "S", num_extrato = ' + QuotedStr(sExtrato) +', dom_credito = "S", dat_credito = ' +
              QuotedStr(FormatDateTime('yyyy/mm/dd',datCredito)) +
             ' where cod_entregador = ' + iEntregador.ToString +
             ' and dat_baixa >= ' + QuotedStr(FormatDateTime('yyyy/mm/dd', dtData1)) +
             ' and dat_baixa <= ' +  QuotedStr(FormatDateTime('yyyy/mm/dd', dtData2));
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(sSQL);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TEntregas.EntregasExtrato(aParam: array of variant): TFDQuery;
var
  sSQL : String;
  fdExtrato : TFDQuery;
begin
  fdExtrato := FConexao.ReturnQuery();
  sSQL := 'select ' +
          ':id_extrato as id_extrato, ' +
          ':num_ano as num_ano, ' +
          ':num_mes as num_mes, ' +
          ':num_quinzena as num_quinzena, ' +
//          ':dataini as dat_inicio, ' +
//          ':datafim as dat_final, ' +
          'tbentregas.cod_agente as cod_base, tbentregas.cod_entregador as cod_entregador, ' +
          'tbentregas.val_verba_entregador as val_verba, sum(tbentregas.qtd_volumes) as qtd_volumes, ' +
          '0 as val_creditos, 0 as val_debitos, 0 as val_extravios, ' +
          '"0" as num_extrato, ';
  if aParam[0] then
  begin
    sSQL := sSQL + 'if(tbentregas.qtd_peso_cobrado <= 25, (sum(tbentregas.qtd_volumes) - sum(1)) / 2 , 0) as qtd_volumes_extra, ';
  end
  else
  begin
    sSQL := sSQL + '0 as qtd_volumes_extra, ';
  end;
  sSQL := sSQL + 'Count(tbentregas.num_nossonumero) as qtd_entregas, sum(if(tbentregas.qtd_dias_atraso > 0,1,0)) as qtd_atraso, ' +
          '(100 - ((sum(if(tbentregas.qtd_dias_atraso > 0,1,0)) / count(tbentregas.num_nossonumero))) * 100) as val_performance, ' +
          'tbentregas.cod_cliente_empresa as cod_cliente, ' +
          'sum(tbentregas.val_verba_franquia) as val_total_empresa ' +
          'from ' + TABLENAME +
          ' where tbentregas.dom_baixado = :dom_baixado and tbentregas.dom_fechado <> :dom_fechado ';
  if aParam[1] then
  begin
    sSQL := sSQL + 'AND tbentregas.dat_baixa <= :datafim ';
  end
  else
  begin
    sSQL := sSQL + 'AND tbentregas.dat_baixa BETWEEN :dataini AND :datafim ';
  end;
  if aParam[4] <> '' then
  begin
    sSQL := sSQL + 'AND tbentregas.cod_cliente_empresa in (' + aParam[4] + ') ';
  end;
  if aParam[5] <> '' then
  begin
    sSQL := sSQL + 'AND tbentregas.cod_agente in (' + aParam[5] + ') ';
  end;
  sSQL := sSQL + 'GROUP BY tbentregas.cod_cliente_empresa, tbentregas.cod_agente, tbentregas.cod_entregador, ' +
          'tbentregas.val_verba_entregador;';
  fdExtrato.SQL.Text := sSQL;
  fdExtrato.ParamByName('dataini').AsDate := VarToDateTime(aParam[2]);
  fdExtrato.ParamByName('datafim').AsDate := VarToDateTime(aParam[3]);
  fdExtrato.ParamByName('dom_baixado').AsString := 'S';
  fdExtrato.ParamByName('dom_fechado').AsString := 'S';
  fdExtrato.ParamByName('num_ano').AsInteger := aParam[6];
  fdExtrato.ParamByName('num_mes').AsInteger := aParam[7];
  fdExtrato.ParamByName('num_quinzena').AsInteger := aParam[8];
  fdExtrato.ParamByName('id_extrato').AsInteger := 0;

  fdExtrato.Open();
  Result := fdExtrato;
end;

function TEntregas.Excluir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where NUM_NOSSONUMERO = :NUM_NOSSONUMERO', [Self.NN]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TEntregas.ExisteNN(sNN: String): Boolean;
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

function TEntregas.GetAReceber(iEntregador: Integer): TFDQuery;
var
  FDQuery: TFDQuery;
  sSQL: String;
begin
  FDQuery := FConexao.ReturnQuery();
  FDQuery.SQL.Clear;
  sSQL := 'select dat_baixa, count(num_nossonumero) as qtd_entregas, sum(qtd_volumes) as qtd_volumes, val_verba_entregador from ' +
          TABLENAME + ' where dom_baixado = "S" and dom_fechado = "N" and cod_entregador = :cod_entregador and ' +
          'dat_baixa > "2020-06-25" ' +
          'group by dat_baixa, val_verba_entregador;';
  FDQuery.SQL.Add(sSQL);
  FDQuery.ParamByName('cod_entregador').AsInteger := iEntregador;
  FDQuery.Open();
  Result := FDQuery;
end;

function TEntregas.GetField(sField, sKey, sKeyValue: String): String;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.SQL.Text := 'select ' + sField + ' from ' + TABLENAME + ' where ' + sKey + ' = ' + sKeyValue;
    FDQuery.Open();
    if not FDQuery.IsEmpty then Result := FDQuery.FieldByName(sField).AsString;
  finally
    FDQuery.Free;
  end;
end;

function TEntregas.Gravar: Boolean;
begin
  Result := False;
  case FAcao of
    Common.ENum.tacIncluir: Result := Inserir();
    Common.ENum.tacAlterar: Result := Alterar();
    Common.ENum.tacExcluir: Result := Excluir();
  end;
end;

function TEntregas.Inserir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Connection.Ping;
    FDQuery.ExecSQL(SQLINSERT, [Self.NN, Self.Distribuidor, Self.Entregador, Self.Cliente, Self.NF, Self.Consumidor, Self.Endereco,
                    Self.Complemento, Self.Bairro, Self.Cidade, Self.CEP, Self.Telefone, Self.Expedicao, Self.Previsao,
                             Self.Volumes, Self.Atribuicao, Self.Baixa, Self.Baixado, Self.Pagamento, Self.Pago, Self.Fechado,
                             Self.Status, Self.Entrega, Self.PesoReal, Self.PesoFranquia, Self.VerbaFranquia, Self.Advalorem,
                             Self.PagoFranquia, Self.VerbaEntregador, Self.Extrato, Self.Atraso, Self.VolumesExtra,
                             Self.ValorVolumes, Self.PesoCobrado, Self.TipoPeso, Self.Recebimento, Self.Recebido, Self.CTRC,
                             Self.Manifesto, Self.Rastreio, Self.Lote, Self.Retorno, Self.Credito, Self.Creditado, Self.Container,
                             Self.ValorProduto, Self.Altura, Self.Largura, Self.Comprimento, Self.CodigoFeedback,
                             Self.DataFeedback, Self.Conferido, Self.Pedido, Self.CodCliente]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TEntregas.Localizar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) = 0 then
  begin
    Exit;
  end;
  FDQuery.SQL.Clear;
  FDQuery.SQL.Add(SQLQUERY);
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

function TEntregas.Previas(aParam: array of variant): TFDQuery;
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
  if aParam[0] = 0 then
  begin
    FDQuery.SQL.Add('where dat_baixa between :data1 and :data2 group by ' + TABLENAME + '.cod_entregador');
  end
  else
  begin
    FDQuery.SQL.Add('where cod_agente = :agente and dat_baixa between :data1 and :data2 group by ' + TABLENAME + '.cod_entregador');
    FDQuery.ParamByName('agente').AsInteger := aParam[0];
  end;
  FDQuery.ParamByName('data1').AsDate := aParam[1];
  FDQuery.ParamByName('data2').AsDate := aParam[2];
  FDQuery.Open();
  Result := FDQuery;
end;

end.
