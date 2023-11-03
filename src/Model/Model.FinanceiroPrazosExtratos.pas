{**************************************************************************************************************************
* Classe/Objeto : TFinanceiroPrazosExtratos
* Finalidade    : pesquisa, alteração, exclusão e inclusão de dados na tabela sistema_financeiro_prazos_extratos
* Nível         : Model
* Autor         : Celso Mutti
* Data          : 01/06/2021
* Versão        : 1
* Histórico     : 01/06/2021 - Criação - Celso Mutti (1)
**************************************************************************************************************************}

unit Model.FinanceiroPrazosExtratos;

interface

uses Common.ENum, FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, System.DateUtils, System.Variants;

type
  TFinanceiroPrazosExtratos = class
  private
    FQuinzena: SmallInt;
    FDiaPagamento: SmallInt;
    FDiaInicio: SmallInt;
    FDiasPrazoPagamento: SmallInt;
    FID: integer;
    FDiaFinal: SmallInt;
    FTipo: SmallInt;
    FAcao: TAcao;
    FQuery: TFDQuery;
    FConexao: TConexao;
    FDataPagamento: TDate;
    FDataFinal: TDate;
    FDataInicial: TDate;

    function    Insert(): Boolean;
    function    Update(): Boolean;
    function    Delete(): Boolean;

  public

    constructor Create;

    property  ID:                 integer   read  FID                 write fID;                  // ID do registro
    property  Tipo:               SmallInt  read  FTipo               write FTipo;                // Tipo de extrato (1 - Expressas, 2 - Periódicos, ...)
    property  Quinzena:           SmallInt  read  FQuinzena           write FQuinzena;            // Número da quinzena (1ª., 2ª, ...)
    property  DiaInicio:          SmallInt  read  FDiaInicio          write FDiaInicio;           // Dia da data do início do extrato
    property  DiaFinal:           SmallInt  read  FDiaFinal           write FDiaFinal;            // Dia da data do final do extrato
    property  DiaPagamento:       SmallInt  read  FDiaPagamento       write FDiaPagamento;        // Dia da data de pagamento programado
    property  DiasPrazoPagamento: SmallInt  read  FDiasPrazoPagamento write FDiasPrazoPagamento;  // Quantidade de dias a partir da data base para pagagamento
    property  Acao:               TAcao     read  FAcao               write FAcao;                // Acao de gravação no banco de dados
    property  Query:              TFDQuery  read  FQuery              write FQuery;               // Query resultado de pesquisa

    property DataInicial:         TDate     read FDataInicial         write FDataInicial;         // Data inicial do período após mpntagem 
    property DataFinal:           TDate     read FDataFinal           write FDataFinal;           // Data final do período após mpntagem 
    property DataPagamento:       TDate     read FDataPagamento       write FDataPagamento;       // Data do pagamento após mpntagem 

    function    Search(aParam : array of variant)  : boolean;  // realiza pesquisa em banco de dados
    function    Save()  : Boolean;  // salva, exclue dados no banco de dados
    function    GetField(sField : String; sKey : String; sKeyValue : String) : String; // localiza e retorna o valor de um campo de uma tabela
    function    MountPeriod(iAno, iMes: integer): boolean; // monta as data do período e a data do pagamento;
    procedure   SetupSelf(fdQuery : TFDQuery);  //  atribui os valores dos campos de uma query às propriedades da classe
    procedure   ClearSelf();  //  limpa as propriedades da dos campos da tabela da classe

  end;

  const
    //  nome da tabela no banco de dados
    TABLENAME = 'sistema_financeiro_prazos_extratos';
    // script de inclusão na tabela
    SQLINSERT = 'insert into ' + TABLENAME + ' (id_registro, cod_tipo_extrato, num_quinzena, num_dia_inicio, num_dia_final, ' +
                 'num_dia_pagamento, qtd_dias_prazo_pagamento) ' +
                'value ' +
                '(:id_registro, :cod_tipo_extrato, :num_quinzena, :num_dia_inicio, :num_dia_final, :num_dia_pagamento, ' +
                ':qtd_dias_prazo_pagamento)';
    // script de alteração de dados na tabela
    SQLUPDATE = 'update ' + TABLENAME + ' set cod_tipo_extrato = :cod_tipo_extrato, num_quinzena = :num_quinzena, ' +
                'num_dia_inicio = :num_dia_inicio, num_dia_final = :num_dia_final, num_dia_pagamento = :num_dia_pagamento, ' +
                'qtd_dias_prazo_pagamento  = :qtd_dias_prazo_pagamento ' +
                'where id_registro = :idregistro';
    // script de exclusão da tabela
    SQLDELETE = 'delete from ' + TABLENAME +
                ' where id_registro = :idregistro';
    // script de pesquisa na tabela
    SQLSELECT = 'select id_registro, cod_tipo_extrato, num_quinzena, num_dia_inicio, num_dia_final, num_dia_pagamento, ' +
                'qtd_dias_prazo_pagamento ' +
                'from ' + TABLENAME;

implementation

{ TFinanceiroPrazosExtratos }

procedure TFinanceiroPrazosExtratos.ClearSelf;
begin
  FQuinzena           :=  0;
  FDiaPagamento       :=  0;
  FDiaInicio          :=  0;
  FDiasPrazoPagamento :=  0;
  FID                 :=  0;
  FDiaFinal           :=  0;
  FTipo               :=  0;
end;

constructor TFinanceiroPrazosExtratos.Create;
begin
  FConexao := TConexao.Create;
end;

function TFinanceiroPrazosExtratos.Delete: Boolean;
var
  FQueryDelete : TFDQuery;
begin
  try
    Result := False;
    FQueryDelete := FConexao.ReturnQuery;
    FQueryDelete.ExecSQL(SQLDELETE, [FID]);
    if FQueryDelete.RowsAffected = 0 then
      Exit;
    Result := True;
  finally
    FQueryDelete.Active := False;
    FQueryDelete.Connection.Connected := False;
    FQueryDelete.Free
  end;
end;

function TFinanceiroPrazosExtratos.GetField(sField, sKey, sKeyValue: String): String;
var
  FQueryField : TFDQuery;
begin
  try
    Result := '';
    FQueryField := FConexao.ReturnQuery;
    FQueryField.SQL.Text := 'select ' + sField + ' from ' + TABLENAME + ' where ' + sKey + ' = ' + sKeyValue;
    FQueryField.Open();
    if FQueryField.IsEmpty then
      Exit;
    Result := FQueryField.FieldByName(sField).AsString;
  finally
    FQueryField.Active := False;
    FQueryField.Connection.Connected := False;
    FQueryField.Free;
  end;
end;

function TFinanceiroPrazosExtratos.Insert: Boolean;
var
  FQueryInsert : TFDQuery;
begin
  try
    Result := False;
    FQueryInsert := FConexao.ReturnQuery;
    FQueryInsert.ExecSQL(SQLINSERT, [FID, FTipo, FQuinzena, FDiaInicio, FDiaFinal, FDiaPagamento, FDiasPrazoPagamento]);
    if FQueryInsert.RowsAffected = 0 then
      Exit;
    Result := True;
  finally
    FQueryInsert.Active := False;
    FQueryInsert.Connection.Connected := False;
    FQueryInsert.Free;
  end;
end;

function TFinanceiroPrazosExtratos.MountPeriod(iAno, iMes: integer): boolean;
var
  sData : String;
  iMesData, iAnoData: integer;
  dtDataPagamento: TDate;
begin
  Result := False;
  if FDiaFinal >= 30 then
  begin
   sData := '01/' + FormatFloat('00', iMes) + '/' + IntToStr(iAno);
   FDiaFinal := DaysInMonth(StrToDate(sData));
  end;
  if FDiaInicio > FDiaFinal then
    begin
    if iMes = 1 then
    begin
      iMesData := 12;
      iAnoData := iAno - 1;
      sData := FormatFloat('00', FDiaInicio) + '/' + FormatFloat('00', iMesData) + '/' + FormatFloat('0000', iAnoData);
    end
    else
    begin
      iMesData := iMes - 1;
      iAnoData := iAno;
      sData := FormatFloat('00', FDiaInicio) + '/' + FormatFloat('00', iMesData) + '/' + FormatFloat('0000', iAnoData);
    end;
    FDataInicial := StrToDate(sData);
    iMesData := iMes;
    iAnoData := iAno;
    sData := FormatFloat('00', FDiaFinal) + '/' + FormatFloat('00', iMesData) + '/' + FormatFloat('0000', iAnoData);
    FDataFinal := StrToDate(sData);
  end
  else
  begin
    iMesData := iMes;
    iAnoData := iAno;
    sData := FormatFloat('00', FDiaInicio) + '/' + FormatFloat('00', iMesData) + '/' + FormatFloat('0000', iAnoData);
    FDataInicial := StrToDate(sData);
    iMesData := iMes;
    iAnoData := iAno;
    if FDiaFinal >= 30 then
    begin
      FDiaFinal := DaysInMonth(StrToDate(sData));
    end;
    sData := FormatFloat('00', FDiaFinal) + '/' + FormatFloat('00', iMesData) + '/' + FormatFloat('0000', iAnoData);
    FDataFinal := StrToDate(sData);
  end;
  iMesData := iMes;
  iAnoData := iAno;
  if FDiaPagamento >= 30 then
  begin
    sData := FormatFloat('00', 1) + '/' + FormatFloat('00', iMesData) + '/' + FormatFloat('0000', iAnoData);
    dtDataPagamento := IncDay(StrToDate(sData),FDiasPrazoPagamento);
    FDiaPagamento := DaysInMonth(dtDataPagamento);
    iMesData := MonthOf(dtDataPagamento);
    iAnoData := YearOf(dtDataPagamento);
    sData := FormatFloat('00', FDiaPagamento) + '/' + FormatFloat('00', iMesData) + '/' + FormatFloat('0000', iAnoData);
    FDataPagamento := StrToDate(sData);
  end
  else
  begin
    sData := FormatFloat('00', FDiaPagamento) + '/' + FormatFloat('00', iMesData) + '/' + FormatFloat('0000', iAnoData);
    dtDataPagamento := IncDay(StrToDate(sData),FDiasPrazoPagamento);
    iMesData := MonthOf(dtDataPagamento);
    iAnoData := YearOf(dtDataPagamento);
    sData := FormatFloat('00', FDiaPagamento) + '/' + FormatFloat('00', iMesData) + '/' + FormatFloat('0000', iAnoData);
    FDataPagamento := StrToDate(sData);
  end;
  Result := True;
end;

function TFinanceiroPrazosExtratos.Save: Boolean;
begin
  Result := False;
  case FAcao of
    Common.ENum.tacIncluir: Result := Insert();
    Common.ENum.tacAlterar: Result := Update();
    Common.ENum.tacExcluir: Result := Delete();
  end;
end;

function TFinanceiroPrazosExtratos.Search(aParam: array of variant): boolean;
begin
  Result := False;
  if Length(aParam) < 2 then
    Exit;
  FQuery := FConexao.ReturnQuery;
  FQuery.SQL.Add(SQLSELECT);
  if aParam[0] = 'ID' then
  begin
    FQuery.SQL.Add('where id_registro = :id_registro');
    FQuery.ParamByName('id_registro').AsInteger := aParam[1];
  end
  else if aParam[0] = 'TIPOQUINZENA' then
  begin
    FQuery.SQL.Add('where cod_tipo_extrato = :cod_tipo_extrato and num_quinzena = :num_quinzena');
    FQuery.ParamByName('cod_tipo_extrato').AsInteger := aParam[1];
    FQuery.ParamByName('num_quinzena').AsInteger := aParam[2];
  end
  else if aParam[0] = 'DIASQUINZENA' then
  begin
    FQuery.SQL.Add('where cod_tipo_extrato = :cod_tipo_extrato and num_dia_inicio = :num_dia_inicio and num_dia_final = :num_dia_final');
    FQuery.ParamByName('cod_tipo_extrato').AsInteger := aParam[1];
    FQuery.ParamByName('num_dia_inicio').AsInteger := aParam[2];
    FQuery.ParamByName('num_dia_final').AsInteger := aParam[3];
  end
  else if aParam[0] = 'EXISTE' then
  begin
    FQuery.SQL.Add('where cod_tipo_extrato = :cod_tipo_extrato and num_quinzena = :num_quinzena and ' +
                   'num_dia_inicio = :num_dia_inicio and num_dia_final = :num_dia_final');
    FQuery.ParamByName('cod_tipo_extrato').AsInteger := aParam[1];
    FQuery.ParamByName('num_quinzena').AsInteger := aParam[2];
    FQuery.ParamByName('num_dia_inicio').AsInteger := aParam[3];
    FQuery.ParamByName('num_dia_final').AsInteger := aParam[4];
  end
  else if aParam[0] = 'FILTRO' then
  begin
    if VarToStr(aParam[1]) <> '' then
      FQuery.SQL.Add('where ' + VarToStr(aParam[1]));
  end
  else if aParam[0] = 'APOIO' then
  begin
    FQuery.SQL.Clear;
    FQuery.SQL.Add('select ' + VarToStr(aParam[1]) + ' from ' + TABLENAME + ' where ' + VarToStr(aParam[2]));
  end;
  FQuery.Open();
  if FQuery.IsEmpty then
  begin
    FQuery.Active := False;
    FQuery.Connection.Connected := False;
    Exit;
  end;
  Result := True;
end;

procedure TFinanceiroPrazosExtratos.SetupSelf(fdQuery: TFDQuery);
begin
  FQuinzena           :=  fdQuery.FieldByName('num_quinzena').AsInteger;
  FDiaPagamento       :=  fdQuery.FieldByName('num_dia_pagamento').AsInteger;
  FDiaInicio          :=  fdQuery.FieldByName('num_dia_inicio').AsInteger;
  FDiasPrazoPagamento :=  fdQuery.FieldByName('qtd_dias_prazo_pagamento').AsInteger;
  FID                 :=  fdQuery.FieldByName('id_registro').AsInteger;
  FDiaFinal           :=  fdQuery.FieldByName('num_dia_final').AsInteger;
  FTipo               :=  fdQuery.FieldByName('cod_tipo_extrato').AsInteger;
end;

function TFinanceiroPrazosExtratos.Update: Boolean;
var
  FQueryInsert : TFDQuery;
begin
  try
    Result := False;
    FQueryInsert := FConexao.ReturnQuery;
    FQueryInsert.ExecSQL(SQLUPDATE, [FTipo, FQuinzena, FDiaInicio, FDiaFinal, FDiaPagamento, FDiasPrazoPagamento, FID]);
    if FQueryInsert.RowsAffected = 0 then
      Exit;
    Result := True;
  finally
    FQueryInsert.Active := False;
    FQueryInsert.Connection.Connected := False;
    FQueryInsert.Free;
  end;
end;

end.
