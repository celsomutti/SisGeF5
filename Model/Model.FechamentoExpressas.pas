unit Model.FechamentoExpressas;

interface

  uses Common.ENum, FireDAC.Comp.Client, Control.Sistema, DAO.Conexao, System.sysUtils,
  Forms, Windows, FireDAC.Comp.DataSet, System.Variants;

  type
    TFechamentoExpressas = class
    private
    var
      FAcao: TAcao;
      FConexao : TConexao;
      FBanco: string;
      FEntregas: Integer;
      FTotalCreditos: Double;
      FTotalDebitos: Double;
      FVolumesExtra: Double;
      FCodigo: Integer;
      FTotalGeral: double;
      FPerformance: Double;
      FVolumes: Integer;
      FCPFCNPJ: String;
      FId: Integer;
      FValorVolumesExtra: Double;
      FTipoConta: String;
      FFavorecido: String;
      FTotalTitket: Double;
      FConta: String;
      FValorProducao: Double;
      FValorExtravios: Double;
      FAgencia: String;
      FNome: String;
      FAtrasos: Integer;
      FTipo: Integer;
      FPFP: Integer;
      FValorTicketMedio: Double;
      FUniqueKey: String;

      function Insert(): Boolean;
      function Update(): Boolean;
      function Delete(): Boolean;
      function ClearPlanilha(pUniqueKey: String): boolean;
    public
      property Id: Integer read FId WRITE FId;
      property Tipo: Integer read FTipo write FTipo;
      property Codigo: Integer read FCodigo write FCodigo;
      property Nome: String read FNome write FNome;
      property Entregas: Integer read FEntregas write FEntregas;
      property Volumes: Integer read FVolumes write FVolumes;
      property VolumesExtra: Double read FVolumesExtra write FVolumesExtra;
      property ValorVolumesExtra: Double read FValorVolumesExtra write FValorVolumesExtra;
      property Atrasos: Integer read FAtrasos write FAtrasos;
      property ValorProducao: Double read FValorProducao write FValorProducao;
      property Performance: Double read FPerformance write FPerformance;
      property TotalTitket: Double read FTotalTitket write FTotalTitket;
      property Banco: string read FBanco write FBanco;
      property Agencia: String read FAgencia write FAgencia;
      property TipoConta: String read FTipoConta write FTipoConta;
      property Conta: String read FConta write FConta;
      property Favorecido: String read FFavorecido write FFavorecido;
      property CPFCNPJ: String read FCPFCNPJ write FCPFCNPJ;
      property PFP: Integer read FPFP write FPFP;
      property ValorTicketMedio: Double read FValorTicketMedio write FValorTicketMedio;
      property ValorExtravios: Double read FValorExtravios write FValorExtravios;
      property TotalDebitos: Double read FTotalDebitos write FTotalDebitos;
      property TotalCreditos: Double read FTotalCreditos write FTotalCreditos;
      property TotalGeral: double read FTotalGeral write FTotalGeral;
      property UniqueKey: String read FUniqueKey write FUniqueKey;
      property Acao: TAcao read FAcao write FAcao;

      constructor Create;
      function GetID(): Integer;
      function Localizar(aParam: array of variant): TFDQuery;
      function Gravar(): Boolean;
      function SaveDB(memTable: TFDMemTable): Boolean;
      function FechamentoExiste(sUniqueKey: String): Boolean;
    end;
const
  TABLENAME = 'expressas_planilha_credito';

  SQLINSERT = 'insert into ' + TABLENAME +
              '(id_registro, cod_tipo_expressa, cod_expressa, nom_expressa, qtd_volumes, qtd_entregas, qtd_volumes_extra, ' +
              'val_volume_extra, qtd_atraso, val_producao, val_performance, val_total_ticket, cod_banco, nom_banco, ' +
              'des_tipo_conta, num_agencia, num_conta, nom_favorecido, num_cpf_cnpj, qtd_pfp, val_tichet_medio, val_extravios, ' +
              'val_debitos, val_creditos, val_total, des_unique_key) ' +
              'value ' +
              '(:id_registro, :cod_tipo_expressa, :cod_expressa, :nom_expressa, :qtd_volumes, :qtd_entregas, :qtd_volumes_extra, ' +
              ':val_volume_extra, :qtd_atraso, :val_producao, :val_performance, :val_total_ticket, :cod_banco, :nom_banco, ' +
              ':des_tipo_conta, :num_agencia, :num_conta, :nom_favorecido, :num_cpf_cnpj, :qtd_pfp, :val_ticket_medio, ' +
              ':val_extravios, :val_debitos, :val_creditos, :val_total, :des_unique_key);';

  SQLUPDATE = 'update ' + TABLENAME + ' set ' +
              'cod_tipo_expressa = :cod_tipo_expressa, cod_expressa = :cod_expressa, nom_expressa = :nom_expressa, ' +
              'qtd_volumes = :, qtd_entregas = :qtd_entregas, qtd_volumes_extra = :qtd_volumes_extra, ' +
              'val_volume_extra = :val_volume_extra, qtd_atraso = :qtd_atraso, val_producao = :val_producao, ' +
              'val_performance == :val_performance, val_total_ticket = :val_total_ticket, ' +
              'cod_banco, nom_banco = cod_banco, nom_banco, des_tipo_conta = :des_tipo_conta, num_agencia = :num_agencia, ' +
              'num_conta = :num_conta, nom_favorecido = :nom_favorecido, num_cpf_cnpj = :num_cpf_cnpj, qtd_pfp = :qtd_pfp, ' +
              'val_ticket_medio = :val_ticket_medio, val_extravios = :val_extravios, val_debitos = :val_debitos, ' +
              'val_creditos = :val_creditos, val_total = :val_total, des_unique_key = :des_unique_key ' +
              'where id_registro = :id_registro';

  SQLQUERY  = 'select id_registro, cod_tipo_expressa, cod_expressa, nom_expressa, qtd_volumes, qtd_entregas, qtd_volumes_extra, ' +
              'val_volume_extra, qtd_atraso, val_producao, val_performance, val_total_ticket, cod_banco, nom_banco, ' +
              'des_tipo_conta, num_agencia, num_conta, nom_favorecido, num_cpf_cnpj, qtd_pfp, val_ticket_medio, val_extravios, ' +
              'val_debitos, val_creditos, val_total, des_unique_key ' +
              'from ' + TABLENAME;
  SQLDELETE = ' detele from ' + TABLENAME + ' where id_fechamento = :id_fechamento;';
  SQLID     = 'select coalesce(max(id_fechamento),0) + 1 from ' + TABLENAME;

implementation

{ TFechamentoExpressas }

function TFechamentoExpressas.ClearPlanilha(pUniqueKey: String): boolean;
var
  sSQL: String;
  fdQuery: TFDQuery;
begin
  try
    Result := False;
    fdQuery := FConexao.ReturnQuery;
    sSQL :=  'delete from ' + TABLENAME + ' where des_unique_key >= ' + QuotedStr(pUniqueKey);
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(sSQL);
    Result := True;
  finally
    fdQuery.Free;
  end;

end;

constructor TFechamentoExpressas.Create;
begin
  FConexao := TSistemaControl.GetInstance().Conexao;
end;

function TFechamentoExpressas.Delete: Boolean;
var
  sSQL: String;
  fdQuery: TFDQuery;
begin
  try
    Result := False;
    fdQuery := FConexao.ReturnQuery;
    sSQL := SQLDELETE;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(sSQL, [Self.ID]);;
    Result := True;
  finally
    fdQuery.Free;
  end;
end;

function TFechamentoExpressas.FechamentoExiste(sUniqueKey: String): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.SQL.Add(SQLQUERY);
    FDQuery.SQL.Add('where des_unique_key = :des_unique_key');
    FDQuery.ParamByName('des_unique_key').AsString := sUniqueKey;
    FDQuery.Open();
    if FDQuery.IsEmpty then Exit;
    Result := True;
  finally
    FDQuery.Free;
  end;
end;

function TFechamentoExpressas.GetID: Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open(SQLID);
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

function TFechamentoExpressas.Gravar: Boolean;
begin
  case FAcao of
    Common.ENum.tacIncluir: Result := Insert();
    Common.ENum.tacAlterar: Result := Update();
    Common.ENum.tacExcluir: Result := Delete();
  end;
end;

function TFechamentoExpressas.Insert: Boolean;
var
  fdQuery: TFDQuery;
begin
  try
    Result := False;
    fdQuery := FConexao.ReturnQuery;
    Id := GetID;
    FDQuery.ExecSQL(SQLINSERT, [Id, Tipo, Codigo, Nome, Entregas, Volumes, VolumesExtra, ValorVolumesExtra, Atrasos, ValorProducao,
                                Performance, TotalTitket, Agencia, TipoConta, Conta, Favorecido, CPFCNPJ, PFP, ValorTicketMedio,
                                ValorExtravios, TotalDebitos, TotalCreditos, TotalGeral, UniqueKey]);
    Result := True;
  finally
    fdQuery.Free;
  end;
end;

function TFechamentoExpressas.Localizar(aParam: array of variant): TFDQuery;
var
  FDQuery : TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery;
  if Length(aParam) = 0 then Exit;
  FDQuery.SQL.Add(SQLQUERY);
  if aParam[0] = 'ID' then
  begin
    FDQuery.SQL.Add('where id_fechamento = :id_fechamento');
    FDQuery.ParamByName('id_fechamento').AsInteger := aParam[1];
  end
  else if aParam[0] = 'FECHADO' then
  begin
    FDQuery.SQL.Add('where dom_fechado = :dom_fechado');
    FDQuery.ParamByName('dom_fechado').AsInteger := aParam[1];
  end
  else if aParam[0] = 'UK' then
  begin
    FDQuery.SQL.Add('where des_unique_key = :des_unique_key');
    FDQuery.ParamByName('des_unique_key').AsString := aParam[1];
  end
  else if aParam[0] = 'DATAS' then
  begin
    FDQuery.SQL.Add('where dat_inicio >= :dat_inicio and dat_final <= :dat_final');
    FDQuery.ParamByName('dat_inicio').AsDate := aParam[1];
    FDQuery.ParamByName('dat_final').AsDate := aParam[2];
  end
  else if aParam[0] = 'CODIGO' then
  begin
    FDQuery.SQL.Add('where cod_tipo = :cod_tipo and cod_expressa = :cod_expressa');
    FDQuery.ParamByName('cod_tipo').AsInteger := aParam[1];
    FDQuery.ParamByName('cod_expressa').AsInteger := aParam[2];
  end
  else if aParam[0] = 'EXTRATO' then
  begin
    FDQuery.SQL.Add('where dat_inicio >= :dat_inicio and dat_final <= :dat_final and cod_tipo = :cod_tipo and cod_expressa = :cod_expressa');
    FDQuery.ParamByName('dat_inicio').AsDate := aParam[1];
    FDQuery.ParamByName('dat_final').asDate := aParam[2];
    FDQuery.ParamByName('cod_tipo').AsInteger := aParam[3];
    FDQuery.ParamByName('cod_expressa').AsInteger := aParam[4];
  end
  else if aParam[0] = 'FILTRO' then
  begin
    FDQuery.SQL.Add('where ' + aParam[1]);
  end
  else if aParam[0] = 'APOIO' then
  begin
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('select  ' + aParam[1] + ' from ' + TABLENAME + ' ' + aParam[2]);
  end;
  FDQuery.Open;
  FDQuery.Open();
  Result := FDQuery;
end;

function TFechamentoExpressas.SaveDB(memTable: TFDMemTable): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    try
      Result := False;
      if not ClearPlanilha(memTable.FieldByName('des_unique_key').AsString) then
      begin
        Exit
      end;
      FDQuery := FConexao.ReturnQuery();
      FDQuery.SQL.Text := SQLQUERY;
      FDQuery.CopyDataSet(memTable, [coRestart, coAppend]);
    Except
      on E: Exception do
        begin
          Application.MessageBox(PChar('Classe: ' + E.ClassName + chr(13) + 'Mensagem: ' + E.Message), 'Erro', MB_OK + MB_ICONERROR);
          FDQuery.Free;
        end;
    end;
    Result := True;
  finally
    FDQuery.Close;
    FDQuery.Free;
  end;
end;

function TFechamentoExpressas.Update: Boolean;
var
  fdQuery : TFDQuery;
begin
  Result := False;
  fdQuery := FConexao.ReturnQuery;
  FDQuery.ExecSQL(SQLUPDATE, [Tipo, Codigo, Nome, Entregas, Volumes, VolumesExtra, ValorVolumesExtra, Atrasos, ValorProducao,
                             Performance, TotalTitket, Agencia, TipoConta, Conta, Favorecido, CPFCNPJ, PFP, ValorTicketMedio,
                             ValorExtravios, TotalDebitos, TotalCreditos, TotalGeral, UniqueKey, Id]);
  Result := True;
end;

end.
