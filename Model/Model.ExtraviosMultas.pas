unit Model.ExtraviosMultas;

interface

uses Common.ENum, FireDAC.Comp.Client, System.Classes, DAO.Conexao, System.SysUtils, Control.Sistema, Common.Utils;

type
  TExtraviosMultas = class
  private
    FAcao: TAcao;
    FPercentual: Double;
    FSequencia: Integer;
    FObs: String;
    FEnvioCorrespondencia: String;
    FVerbaFranquia: Double;
    FValorProduto: Double;
    FNN: String;
    FRestricao: String;
    FDescricao: String;
    FExecutor: String;
    FIDExtrato: Integer;
    FTotal: Double;
    FNumeroExtrato: String;
    FID: Integer;
    FMulta: Double;
    FDataFranquia: TDateTime;
    FEntregador: Integer;
    FVerba: Double;
    FAgente: Integer;
    FManutencao: TDateTime;
    FRetornoCorrespondencia: String;
    FValorFranquia: Double;
    FTipo: Integer;
    FExtrato: String;
    FData: TDateTime;
    FConexao : TConexao;
    FQuery: TFDQuery;
    FProduto: String;
    FCliente: Integer;
    FAWB: string;

    function Insert(): Boolean;
    function Update(): Boolean;
    function Delete(): Boolean;

  public
    property ID: Integer read FID write FID;
    property Descricao: String read FDescricao write FDescricao;
    property NN: String read FNN write FNN;
    property Agente: Integer read FAgente write FAgente;
    property ValorProduto: Double read FValorProduto write FValorProduto;
    property Data: TDateTime read FData write FData;
    property Multa: Double read FMulta write FMulta;
    property Verba: Double read FVerba write FVerba;
    property Total: Double read FTotal write FTotal;
    property Restricao: String read FRestricao write FRestricao;
    property Entregador: Integer read FEntregador write FEntregador;
    property Tipo: Integer read FTipo write FTipo;
    property VerbaFranquia: Double read FVerbaFranquia write FVerbaFranquia;
    property ValorFranquia: Double read FValorFranquia write FValorFranquia;
    property Extrato: String read FExtrato write FExtrato;
    property DataFranquia: TDateTime read FDataFranquia write FDataFranquia;
    property EnvioCorrespondencia: String read FEnvioCorrespondencia write FEnvioCorrespondencia;
    property RetornoCorrespondencia: String read FRetornoCorrespondencia write FRetornoCorrespondencia;
    property Obs: String read FObs write FObs;
    property Percentual: Double read FPercentual write FPercentual;
    property IDExtrato: Integer read FIDExtrato  write FIDExtrato;
    property Executor: String read FExecutor write FExecutor;
    property Manutencao: TDateTime read FManutencao write FManutencao;
    property Sequencia: Integer read FSequencia write FSequencia;
    property Cliente: Integer read FCliente write FCliente;
    property Produto: String read FProduto write FProduto;
    property AWB: string read FAWB write FAWB;
    property NumeroExtrato: String read FNumeroExtrato write FNumeroExtrato;
    property Query: TFDQuery read FQuery write FQuery;

    property Acao: TAcao read FAcao write FAcao;

    constructor Create;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
    function EncerraExtravio(aParam: Array of variant): Boolean;
    function CancelaFechamento(iExtrato: Integer): Boolean;
    function ExtravioExiste(): Integer;
    function RetornaTotaisExtravios(aParam: Array of variant): TFDQuery;
    function ExtraviosExtrato(): TFDquery;
    function ExtraviosExtratoEntregadores(): Boolean;
    function GetID(): Integer;
    function PesquisaExtraviosMultas(iIndex: integer; sTexto, sFilter: String): boolean;
    function SetupClass(): boolean;
    function ClearClass(): boolean;
  end;

const
  TABLENAME = 'tbextravios';
  SQLINSERT = 'INSERT INTO ' + TABLENAME + '(COD_EXTRAVIO,  DES_EXTRAVIO, NUM_NOSSONUMERO, COD_AGENTE, VAL_PRODUTO, DAT_EXTRAVIO,' +
               'VAL_MULTA, VAL_VERBA, VAL_TOTAL, DOM_RESTRICAO, COD_ENTREGADOR, COD_TIPO, VAL_VERBA_FRANQUIA, ' +
               'VAL_EXTRATO_FRANQUIA, DOM_EXTRATO_FRANQUIA, DAT_EXTRAVIO_FRANQUIA, DES_ENVIO_CORRESPONDENCIA, ' +
               'DES_RETORNO_CORRESPONDENCIA, DES_OBSERVACOES, VAL_PERCENTUAL_PAGO, ID_EXTRATO, SEQ_ACAREACAO, ' +
               'NOM_EXECUTOR, DAT_MANUTENCAO, NUM_EXTRATO, cod_cliente, des_produto, cod_awb ) ' +
               'VALUES ' +
               '(:COD_EXTRAVIO, :DES_EXTRAVIO, :NUM_NOSSONUMERO, :COD_AGENTE, :VAL_PRODUTO, :DAT_EXTRAVIO, :VAL_MULTA, ' +
               ':VAL_VERBA, :VAL_TOTAL, :DOM_RESTRICAO, :COD_ENTREGADOR, :COD_TIPO, :VAL_VERBA_FRANQUIA, :VAL_EXTRATO_FRANQUIA, ' +
               ':DOM_EXTRATO_FRANQUIA, :DAT_EXTRAVIO_FRANQUIA, :DES_ENVIO_CORRESPONDENCIA, :DES_RETORNO_CORRESPONDENCIA, ' +
               ':DES_OBSERVACOES, :VAL_PERCENTUAL_PAGO, :ID_EXTRATO, :SEQ_ACAREACAO, :NOM_EXECUTOR, :DAT_MANUTENCAO, ' +
               ':NUM_EXTRATO, :cod_cliente, :des_produto, cod_awb) ';
  SQLUPDATE = 'UPDATE ' + TABLENAME + ' SET ' +
              'DES_EXTRAVIO = :DES_EXTRAVIO, NUM_NOSSONUMERO = :NUM_NOSSONUMERO, COD_AGENTE = :COD_AGENTE, ' +
              'VAL_PRODUTO = :VAL_PRODUTO, DAT_EXTRAVIO = :DAT_EXTRAVIO, VAL_MULTA = :VAL_MULTA, VAL_VERBA = :VAL_VERBA, ' +
              'VAL_TOTAL = :VAL_TOTAL, DOM_RESTRICAO = :DOM_RESTRICAO, COD_ENTREGADOR = :COD_ENTREGADOR, COD_TIPO = :COD_TIPO, ' +
              'VAL_VERBA_FRANQUIA = :VAL_VERBA_FRANQUIA, VAL_EXTRATO_FRANQUIA = :VAL_EXTRATO_FRANQUIA, ' +
              'DOM_EXTRATO_FRANQUIA = :DOM_EXTRATO_FRANQUIA, DAT_EXTRAVIO_FRANQUIA = :DAT_EXTRAVIO_FRANQUIA, ' +
              'DES_ENVIO_CORRESPONDENCIA = :DES_ENVIO_CORRESPONDENCIA, ' +
              'DES_RETORNO_CORRESPONDENCIA = :DES_RETORNO_CORRESPONDENCIA, DES_OBSERVACOES = :DES_OBSERVACOES, ' +
              'VAL_PERCENTUAL_PAGO = :VAL_PERCENTUAL_PAGO, ID_EXTRATO = :ID_EXTRATO, SEQ_ACAREACAO = :SEQ_ACAREACAO, ' +
              'NOM_EXECUTOR = :NOM_EXECUTOR, DAT_MANUTENCAO = :DAT_MANUTENCAO, NUM_EXTRATO = :NUM_EXTRATO, ' +
              'cod_cliente = :cod_cliente, des_produto = :des_produto, cod_awb = :cod_awb ' +
              'WHERE COD_EXTRAVIO = :COD_EXTRAVIO;';
  SQLQUERY =  'SELECT COD_EXTRAVIO, DES_EXTRAVIO, NUM_NOSSONUMERO, COD_AGENTE, VAL_PRODUTO, DAT_EXTRAVIO, VAL_MULTA, VAL_VERBA, ' +
              'VAL_TOTAL, DOM_RESTRICAO, COD_ENTREGADOR, COD_TIPO, VAL_VERBA_FRANQUIA, VAL_EXTRATO_FRANQUIA, ' +
              'DOM_EXTRATO_FRANQUIA, DAT_EXTRAVIO_FRANQUIA, DES_ENVIO_CORRESPONDENCIA, DES_RETORNO_CORRESPONDENCIA, ' +
              'DES_OBSERVACOES, VAL_PERCENTUAL_PAGO, ID_EXTRATO, SEQ_ACAREACAO, NOM_EXECUTOR, DAT_MANUTENCAO, NUM_EXTRATO, ' +
              'cod_cliente, des_produto, cod_awb ' +
              'FROM ' + TABLENAME;

implementation

{ TExtraviosMultas }

function TExtraviosMultas.CancelaFechamento(iExtrato: Integer): Boolean;
var
 FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('UPDATE ' + TABLENAME + ' SET ID_EXTRATO = 0 WHERE ID_EXTRATO = :ID', [iExtrato]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TExtraviosMultas.ClearClass: boolean;
begin
  Result := False;
  FPercentual := 0;
  FSequencia := 0;
  FObs := '';
  FEnvioCorrespondencia := '';
  FVerbaFranquia := 0;
  FValorProduto := 0;
  FNN := '';
  FRestricao := 'N';
  FDescricao := '';
  FExecutor := '';
  FIDExtrato := 0;
  FTotal := 0;
  FNumeroExtrato := '';
  FID := 0;
  FMulta := 0;
  FDataFranquia := 0;
  FEntregador := 0;
  FVerba := 0;
  FAgente := 0;
  FManutencao := 0;
  FRetornoCorrespondencia := '';
  FValorFranquia := 0;
  FTipo := -1;
  FExtrato := 'N';
  FData := 0;
  FProduto := '';
  FCliente := 0;
  FAWB := '';
  Result := True;
end;

constructor TExtraviosMultas.Create;
begin
  FConexao := TSistemaControl.GetInstance.Conexao;
end;

function TExtraviosMultas.Delete: Boolean;
var
  sSQL : String;
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('DELETE FROM ' + TABLENAME + ' WHERE COD_EXTRAVIO = :ID',[Id]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TExtraviosMultas.EncerraExtravio(aParam: array of variant): Boolean;
var
  FDQuery: TFDQuery;
  sExtrato: String;
  iEntregador: Integer;
  sSQL : String;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    sExtrato := aParam[0];
    iEntregador := aParam[1];
    sSQL := 'UPDATE ' + TABLENAME + ' SET ' +
            'VAL_PERCENTUAL_PAGO = 100, NUM_EXTRATO = ' + QuotedStr(sExtrato) +
            ' WHERE COD_ENTREGADOR = ' + iEntregador.ToString + ' AND VAL_PERCENTUAL_PAGO < 100 AND DOM_RESTRICAO = "S";';
    FDQuery.ExecSQL(sSQL);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TExtraviosMultas.ExtravioExiste: Integer;
var
  FDQuery: TFDQuery;
begin
  try
    Result := 0;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('select COD_EXTRAVIO from ' + TABLENAME + ' where NUM_NOSSONUMERO = :NUM_NOSSONUMERO and COD_TIPO = :COD_TIPO ' +
                   'and DOM_RESTRICAO <> ' + QuotedStr('E'));
    FDQuery.ParamByName('NUM_NOSSONUMERO').AsString := NN;
    FDQuery.ParamByName('COD_TIPO').AsInteger := Tipo;
    FDQuery.Open();
    if FDQuery.IsEmpty then Exit;
    Result := FDquery.FieldByName('COD_EXTRAVIO').asInteger;
  finally
    FDQuery.Close;
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TExtraviosMultas.ExtraviosExtrato: TFDquery;
var
  sSQL: String;
  fdQuery : TFDQuery;
begin
  sSQL := 'select tbextravios.cod_agente as cod_agente, tbextravios.cod_entregador as cod_entregador,' +
          'sum(tbextravios.val_total) as val_total ' +
          'from ' + TABLENAME +
          ' where tbextravios.dom_restricao = "S" and tbextravios.val_percentual_pago < 100 ' +
          'group by tbextravios.cod_agente, tbextravios.cod_entregador;';
  fdQuery := FConexao.ReturnQuery;
  fdQuery.SQL.Add(sSQL);
  FDQuery.Open();
  Result := FDQuery;
end;

function TExtraviosMultas.ExtraviosExtratoEntregadores: Boolean;
var
  sSQL: String;
  fdQuery : TFDQuery;
begin
  try
    Result := False;
    sSQL := 'select tbextravios.cod_agente as cod_agente, tbextravios.cod_entregador as cod_entregador,' +
            'sum(tbextravios.val_total) as val_total ' +
            'from ' + TABLENAME +
            ' where tbextravios.dom_restricao = "S" and tbextravios.val_percentual_pago < 100 ' +
            'group by tbextravios.cod_agente, tbextravios.cod_entregador;';
    fdQuery := FConexao.ReturnQuery;
    fdQuery.SQL.Add(sSQL);
    FDQuery.Open();
    if fdQuery.IsEmpty then
    begin
      Exit;
    end;
    FQuery := fdQuery;
    Result := True;
  finally
    FDQuery.Close;
    fdQuery.Connection.Close;
    fdQuery.Free;
  end;
end;

function TExtraviosMultas.GetID: Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery;
    FDQuery.Open('select coalesce(max(COD_EXTRAVIO),0) + 1 from ' + TABLENAME);
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

function TExtraviosMultas.Gravar: Boolean;
begin
  Result := False;
  case FAcao of
    Common.ENum.tacIncluir: Result := Insert();
    Common.ENum.tacAlterar: Result := Update();
    Common.ENum.tacExcluir: Result := Delete();
  end;
end;

function TExtraviosMultas.Insert: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    Id := GetID;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(SQLINSERT, [ID, Descricao, NN, Agente, ValorProduto, Data, Multa, Verba, Total, Restricao, Entregador, Tipo,
                                VerbaFranquia, ValorFranquia, Extrato, DataFranquia, EnvioCorrespondencia, RetornoCorrespondencia,
                                Obs, Percentual, IDExtrato, Sequencia, Executor, Manutencao, NumeroExtrato, Cliente, Produto, AWB]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TExtraviosMultas.Localizar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery;
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;
  FDQuery.SQL.Add(SQLQUERY);
  if aParam[0] = 'CODIGO' then
  begin
    FDQuery.SQL.Add('WHERE COD_EXTRAVIO = :CODIGO');
    FDQuery.ParamByName('CODIGO').AsInteger := aParam[1];
  end;
  if aParam[0] = 'ENTREGADOR' then
  begin
    FDQuery.SQL.Add('WHERE COD_ENTREGADOR = :ENTREGADOR');
    FDQuery.ParamByName('ENTREGADOR').AsInteger := aParam[1];
  end;
  if aParam[0] = 'DESCRICAO' then
  begin
    FDQuery.SQL.Add('WHERE DES_EXTRAVIO = :DESCRICAO');
    FDQuery.ParamByName('DESCRICAO').AsString := aParam[1];
  end;
  if aParam[0] = 'NN' then
  begin
    FDQuery.SQL.Add('WHERE NUM_NOSSONUMERO = :NN');
    FDQuery.ParamByName('NN').AsString := aParam[1];
  end;
  if aParam[0] = 'AGENTE' then
  begin
    FDQuery.SQL.Add('WHERE COD_AGENTE = :AGENTE');
    FDQuery.ParamByName('AGENTE').AsInteger := aParam[1];
  end;
  if aParam[0] = 'SEQUENCIA' then
  begin
    FDQuery.SQL.Add('WHERE SEQ_ACAREACAO = :SEQUENCIA');
    FDQuery.ParamByName('SEQUENCIA').AsInteger := aParam[1];
  end;
  if aParam[0] = 'AWB' then
  begin
    FDQuery.SQL.Add('WHERE cod_awb = :cod_awb');
    FDQuery.ParamByName('cod_awb').AsString := aParam[1];
  end;
  if aParam[0] = 'EXTRATO' then
  begin
    FDQuery.SQL.Add('WHERE ID_EXTRATO = :EXTRATO AND VAL_PERCENTUAL_PAGO < 100');
    FDQuery.ParamByName('EXTRATO').AsInteger := aParam[1];
  end;
  if aParam[0] = 'DATA' then
  begin
    if Length(aParam) = 2 then
    begin
      FDQuery.SQL.Add('WHERE DAT_EXTRAVIO = :DATA');
      FDQuery.ParamByName('DATA').AsDate := aParam[1];
    end
    else if Length(aParam) = 3 then
    begin
      FDQuery.SQL.Add('WHERE DAT_EXTRAVIO BETWEEN :DATA AND :DATA1');
      FDQuery.ParamByName('DATA').AsDate := aParam[1];
      FDQuery.ParamByName('DATA1').AsDate := aParam[1];
    end;
  end;
  if aParam[0] = 'DATAFRANQUIA' then
  begin
    if Length(aParam) = 2 then
    begin
      FDQuery.SQL.Add('WHERE DAT_EXTRAVIO_FRANQUIA = :DATA');
      FDQuery.ParamByName('DATA').AsDate := aParam[1];
    end
    else if Length(aParam) = 3 then
    begin
      FDQuery.SQL.Add('WHERE DAT_EXTRAVIO_FRANQUIA BETWEEN :DATA AND :DATA1');
      FDQuery.ParamByName('DATA').AsDate := aParam[1];
      FDQuery.ParamByName('DATA1').AsDate := aParam[2];
    end;
  end;
  if aParam[0] = 'TIPO' then
  begin
    FDQuery.SQL.Add('WHERE NUM_NOSSONUMERO = :NN AND COD_TIPO = :TIPO');
    FDQuery.ParamByName('NN').AsString := aParam[1];
    FDQuery.ParamByName('TIPO').AsInteger := aParam[2];
  end;
  if aParam[0] = 'FILTRO' then
  begin
    FDQuery.SQL.Add('where ' + aParam[1]);
  end;
  if aParam[0] = 'APOIO' then
  begin
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT  ' + aParam[1] + ' FROM ' + TABLENAME + ' ' + aParam[2]);
  end;
  FDQuery.Open();
  Result := FDQuery;
end;

function TExtraviosMultas.PesquisaExtraviosMultas(iIndex: integer; sTexto, sFilter: String): boolean;
var
  sFiltro: String;
  fFuncoes : Common.Utils.TUtils;
begin
  Result := False;
  sFiltro := '';
  fFuncoes := Common.Utils.TUtils.Create;
  if sFilter <> '' then
  begin
    sFiltro := sfilter;
  end
  else
  begin
    if sTexto <> '' then
    begin
      if iIndex = 0 then
      begin
        sFiltro := 'nom_agente like ' + QuotedStr('%' +  sTexto + '%') + ' or nom_entregador like ' +
                   QuotedStr('%' + sTexto + '%') + ' or num_cnpj like ' + QuotedStr('%' +  sTexto + '%') +
                   ' or des_razao_social like ' + QuotedStr('%' + sTexto + '%') + ' or cod_awb like ' +
                   QuotedStr('%' + sTexto + '%') + ' or des_produto like ' + QuotedStr('%' + sTexto + '%') +
                   ' or num_nossonumero like ' + QuotedStr('%' + sTexto + '%');
        if fFuncoes.ENumero(sTexto) then
        begin
          if sFiltro <> '' then
          begin
            sFiltro := sFiltro + ' or ';
          end;
          sFiltro := sFiltro + 'cod_agente like ' + sTexto + ' or cod_extravio like ' + sTexto +
          ' or cod_entregador like ' + sTexto + ' or cod_cadastro like ' + sTexto;
        end;
      end;
    end
    else
    begin
      case iIndex of
        1 : sFiltro := 'cod_extravio like ' + sTexto;
        2 : sFiltro := 'cod_agente like ' + sTexto;
        3 : sFiltro := 'nom_agente like ' + QuotedStr('%' +  sTexto + '%');
        4 : sFiltro := 'cod_entregador like ' + sTexto;
        5 : sFiltro := 'nom_entregador like ' + QuotedStr('%' +  sTexto + '%');
        6 : sFiltro := 'num_cnpj like ' + QuotedStr('%' +  sTexto + '%');
        7 : sFiltro := 'cod_cadastro like ' + sTexto;
        8 : sFiltro := 'des_razao_social like ' + QuotedStr('%' +  sTexto + '%');
        9 : sFiltro := 'num_nossonumero like ' + QuotedStr('%' +  sTexto + '%');
        10: sFiltro := 'cod_awb like ' + QuotedStr('%' +  sTexto + '%');
        11: sFiltro := 'des_produto like ' + QuotedStr('%' +  sTexto + '%');
      end;
    end;
  end;
  fFuncoes.Free;
  FQuery := FConexao.ReturnQuery;
  FQuery.SQL.Add('select * from view_pesquisaextravios');
  if sFiltro <> '' then
  begin
    FQuery.SQL.Add('where ' + sFiltro);
  end;
  FQuery.Open();
  if FQuery.IsEmpty then
  begin
    FQuery.Connection.Connected := False;
    FQuery.Free;
    Exit;
  end;
  Result := True;
end;

function TExtraviosMultas.RetornaTotaisExtravios(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery;
  FDQuery.SQL.Clear;
  FDQuery.SQL.Add('select count(num_nossonumero) as itens, sum(val_total) as total from ' + TABLENAME);
  FDQuery.SQL.Add('where id_extrato in (' + aParam[0] + ')');
  FDQuery.Open();
  Result := FDQuery;
end;

function TExtraviosMultas.SetupClass: boolean;
begin
  Result := False;
  FPercentual := FQuery.FieldByName('val_percentual_pago').AsFloat;
  FSequencia := FQuery.FieldByName('seq_acareacao').asInteger;
  FObs := FQuery.FieldByName('des_observacoes').asString;
  FEnvioCorrespondencia := FQuery.FieldByName('des_envio_correspondencia').asString;
  FVerbaFranquia := FQuery.FieldByName('val_verba_franquia').asFloat;
  FValorProduto := FQuery.FieldByName('val_produto').asFloat;
  FNN := FQuery.FieldByName('num_nossonumero').asString;
  FRestricao := FQuery.FieldByName('dom_restricao').asString;
  FDescricao := FQuery.FieldByName('des_extravio').asString;
  FExecutor := FQuery.FieldByName('nom_executor').asString;
  FIDExtrato := FQuery.FieldByName('id_extrato').asInteger;
  FTotal := FQuery.FieldByName('val_total').asFloat;
  FNumeroExtrato := FQuery.FieldByName('num_extrato').asString;
  FID := FQuery.FieldByName('cod_extravio').asInteger;
  FMulta := FQuery.FieldByName('val_multa').asFloat;
  FDataFranquia := FQuery.FieldByName('dat_extravio_franquia').AsDateTime;
  FEntregador := FQuery.FieldByName('cod_entregador').asInteger;
  FVerba := FQuery.FieldByName('val_verba').asFloat;
  FAgente := FQuery.FieldByName('cod_agente').asInteger;
  FManutencao := FQuery.FieldByName('dat_manutencao').asDateTime;
  FRetornoCorrespondencia := FQuery.FieldByName('des_retorno_correspondencia').asString;
  FValorFranquia := FQuery.FieldByName('val_extravio_franquia').asFloat;
  FTipo := FQuery.FieldByName('cod_tipo').asInteger;
  FExtrato := FQuery.FieldByName('dom_extrato_franquia').asString;
  FData := FQuery.FieldByName('dat_extravio').asDateTime;
  FProduto := FQuery.FieldByName('des_produto').asString;
  FCliente := FQuery.FieldByName('cod_cliente').asInteger;
  FAWB := FQuery.FieldByName('cod_awb').asString;
  Result := True;
end;

function TExtraviosMultas.Update: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL(SQLUPDATE, [Descricao, NN, Agente, ValorProduto, Data, Multa, Verba, Total, Restricao, Entregador, Tipo,
                                VerbaFranquia, ValorFranquia, Extrato, DataFranquia, EnvioCorrespondencia, RetornoCorrespondencia,
                                Obs, Percentual, IDExtrato, Sequencia, Executor, Manutencao, NumeroExtrato, Cliente, Produto, AWB,
                                ID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

end.
