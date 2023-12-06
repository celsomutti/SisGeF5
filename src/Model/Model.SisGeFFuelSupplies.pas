unit Model.SisGeFFuelSupplies;

interface

uses Common.ENum, FireDAC.Comp.Client, DAO.Conexao, System.SysUtils,
  Common.Utils, System.DateUtils, DAO.SisGeFCRUDRoutines;

type
  TFuelSupplies = class
  private
    FCRUD: TDAOCRUDRoutines;
    FAction: TAcao;
    FProduto: string;
    FViagem: integer;
    FValorDesconto: double;
    FExecutante: string;
    FFlagDesconto: string;
    FCupom: string;
    FNomeEntregador: string;
    FValorUnitario: double;
    FNumeroExtrato: string;
    FID: integer;
    FEntregador: integer;
    FValorTotal: double;
    FDataManutencao: tdatetime;
    FDataBase: tdate;
    FValorVerba: double;
    FQuantidade: double;
    FPlaca: string;
    FData: tdate;
    FAcao: TAcao;
    FQuery: TFDQuery;
    FInsertFields: array of variant;
    FUpdateFields: array of variant;
    FFieldsQuery: array of variant;
    function GetId(): integer;
    function Insert(): boolean;
    function Update(): boolean;
    function Delete(): boolean;
    procedure SetID(const Value: integer);
  public
    property ID: integer read FID write SetID;
    property Cupom: string read FCupom write FCupom;
    property Entregador: integer read FEntregador write FEntregador;
    property Placa: string read FPlaca write FPlaca;
    property Data: tdate read FData write FData;
    property Produto: string read FProduto write FProduto;
    property Quantidade: double read FQuantidade write FQuantidade;
    property ValorUnitario: double read FValorUnitario write FValorUnitario;
    property ValorTotal: double read FValorTotal write FValorTotal;
    property Executante: string read FExecutante write FExecutante;
    property DataManutencao: tdatetime read FDataManutencao
      write FDataManutencao;
    property FlagDesconto: string read FFlagDesconto write FFlagDesconto;
    property NumeroExtrato: string read FNumeroExtrato write FNumeroExtrato;
    property ValorVerba: double read FValorVerba write FValorVerba;
    property ValorDesconto: double read FValorDesconto write FValorDesconto;
    property DataBase: tdate read FDataBase write FDataBase;
    property NomeEntregador: string read FNomeEntregador write FNomeEntregador;
    property Viagem: integer read FViagem write FViagem;
    property Acao: TAcao read FAction write FAction;
    property Query: TFDQuery read FQuery write FQuery;

    constructor Create;
    function Save(): boolean;
    function Search(aParam: array of variant): boolean;
    function SetupFieldsData(aParam: array of variant): boolean;
    function SetupFieldsClass(): boolean;

  end;

const
  TABLENAME = 'tbabastecimento';
  CRUDSELECT =
    'SELECT NUM_ABASTECIMENTO, NUM_CUPOM, COD_ENTREGADOR, DES_PLACA, DAT_ABASTECIMENTO, '
    + 'DES_PRODUTO, QTD_ABASTECIMENTO, VAL_UNITARIO, VAL_TOTAL, NOM_EXECUTANTE, DAT_MANUTENCAO, DOM_DESCONTO, '
    + 'NUM_EXTRATO, VAL_VERBA_COMBUSTIVEL, VAL_DESCONTO, DAT_BASE, NOM_ENTREGADOR, ID_CONTROLE '
    + 'FROM ' + TABLENAME;
  CRUDINSERT = 'INSERT INTO ' + TABLENAME +
    ' (NUM_ABASTECIMENTO, NUM_CUPOM, COD_ENTREGADOR, DES_PLACA, DAT_ABASTECIMENTO, '
    + 'DES_PRODUTO, QTD_ABASTECIMENTO, VAL_UNITARIO, VAL_TOTAL, NOM_EXECUTANTE, DAT_MANUTENCAO, DOM_DESCONTO, '
    + 'NUM_EXTRATO, VAL_VERBA_COMBUSTIVEL, VAL_DESCONTO, DAT_BASE, NOM_ENTREGADOR, ID_CONTROLE) '
    + 'VALUES (:NUM_ABASTECIMENTO, :NUM_CUPOM, :COD_ENTREGADOR, :DES_PLACA, :DAT_ABASTECIMENTO, '
    + ':DES_PRODUTO, :QTD_ABASTECIMENTO, :VAL_UNITARIO, :VAL_TOTAL, :NOM_EXECUTANTE, :DAT_MANUTENCAO, :DOM_DESCONTO, '
    + ':NUM_EXTRATO, :VAL_VERBA_COMBUSTIVEL, :VAL_DESCONTO, :DAT_BASE, :NOM_ENTREGADOR, :ID_CONTROLE)';
  CRUDUPDATE = 'UPDATE ' + TABLENAME + ' SET NUM_CUPOM = :NUM_CUPOM, ' +
    'COD_ENTREGADOR = :COD_ENTREGADOR, DES_PLACA = :DES_PLACA, DAT_ABASTECIMENTO = :DAT_ABASTECIMENTO, '
    + 'DES_PRODUTO = DES_PRODUTO, QTD_ABASTECIMENTO = :QTD_ABASTECIMENTO, VAL_UNITARIO = :VAL_UNITARIO, '
    + 'VAL_TOTAL = :VAL_TOTAL, NOM_EXECUTANTE = :NOM_EXECUTANTE, DAT_MANUTENCAO = :DAT_MANUTENCAO, '
    + 'DOM_DESCONTO = :DOM_DESCONTO, UM_EXTRATO = :UM_EXTRATO, VAL_VERBA_COMBUSTIVEL = :VAL_VERBA_COMBUSTIVEL, '
    + 'VAL_DESCONTO = :VAL_DESCONTO, DAT_BASE = :DAT_BASE, NOM_ENTREGADOR = :NOM_ENTREGADOR, '
    + 'ID_CONTROLE = :ID_CONTROLE' +
    'WHERE NUM_ABASTECIMENTO = :NUM_ABASTECIMENTO ';
  CRUDDELETE = 'DELETE FROM ' + TABLENAME;
  CRUDGETID = 'select coalesce(max(NUM_ABASTECIMENTO),0) + 1 from ' + TABLENAME;

implementation

{ TFuelSupplies }

constructor TFuelSupplies.Create;
begin
  FFieldsQuery := ['NUM_ABASTECIMENTO', 'NUM_CUPOM', 'COD_ENTREGADOR',
    'DES_PLACA', 'DAT_ABASTECIMENTO', 'DES_PRODUTO', 'QTD_ABASTECIMENTO',
    'VAL_UNITARIO', 'VAL_TOTAL', 'NOM_EXECUTANTE', 'DAT_MANUTENCAO',
    'DOM_DESCONTO', 'NUM_EXTRATO', 'VAL_VERBA_COMBUSTIVEL', 'VAL_DESCONTO',
    'DAT_BASE', 'NOM_ENTREGADOR', 'ID_CONTROLE'];
end;

function TFuelSupplies.Delete: boolean;
begin
  Result := False;
  try
    FCRUD := TDAOCRUDRoutines.Create;
    if FID = -1 then
    begin
      FCRUD.CRUDSentence := CRUDDELETE + ' WHERE ID_CONTROLE = :ID_CONTROLE';
      Result := FCRUD.UpdateExec([FViagem]);
    end
    else
    begin
      FCRUD.CRUDSentence := CRUDDELETE + ' WHERE NUM_ABASTECIMENTO = :NUM_ABASTECIMENTO';
      Result := FCRUD.UpdateExec([FID]);
    end;
  finally
    FCRUD.free;
  end;
end;

function TFuelSupplies.GetId: integer;
begin
  Result := 0;
  try
    FCRUD := TDAOCRUDRoutines.Create;
    FCRUD.CRUDSentence := CRUDGETID;
    Result := FCRUD.GetId;
  finally
    FCRUD.free;
  end;
end;

function TFuelSupplies.Insert: boolean;
begin
  Result := False;
  try
    FCRUD := TDAOCRUDRoutines.Create;
    FCRUD.CRUDSentence := CRUDINSERT;
    Result := FCRUD.UpdateExec(FInsertFields);
  finally
    FCRUD.free;
  end;
end;

function TFuelSupplies.Save: boolean;
begin
  Result := False;
  case FAction of
    tacIncluir:
      Result := Insert();
    tacAlterar:
      Result := Update();
    tacExcluir:
      Result := Delete();
  else
    Exit;
  end;
end;

function TFuelSupplies.Search(aParam: array of variant): boolean;
begin
  Result := False;
  try
    FCRUD := TDAOCRUDRoutines.Create;
    FCRUD.CRUDSentence := CRUDSELECT;
    FCRUD.TABLENAME := TABLENAME;

    if FCRUD.Search(aParam) then
    begin
      if not FCRUD.Query.IsEmpty then
      begin
        FQuery := FCRUD.Query;
        Result := True;
      end
      else
      begin
        Result := False;
      end;
    end;
  finally
    FCRUD.free;
  end;
end;

procedure TFuelSupplies.SetID(const Value: integer);
begin
  if FAction = tacIncluir then
    FID := Self.GetId
  else
    FID := Value;
end;

function TFuelSupplies.SetupFieldsClass: boolean;
begin
  FID := FQuery.FieldByName(FFieldsQuery[0]).Value;
  FCupom := FQuery.FieldByName(FFieldsQuery[1]).Value;
  FEntregador := FQuery.FieldByName(FFieldsQuery[2]).Value;
  FPlaca := FQuery.FieldByName(FFieldsQuery[3]).Value;
  FData := FQuery.FieldByName(FFieldsQuery[4]).Value;
  FProduto := FQuery.FieldByName(FFieldsQuery[5]).Value;
  FQuantidade := FQuery.FieldByName(FFieldsQuery[6]).Value;
  FValorUnitario := FQuery.FieldByName(FFieldsQuery[7]).Value;
  FValorTotal := FQuery.FieldByName(FFieldsQuery[8]).Value;
  FExecutante := FQuery.FieldByName(FFieldsQuery[9]).Value;
  FDataManutencao := FQuery.FieldByName(FFieldsQuery[10]).Value;
  FFlagDesconto := FQuery.FieldByName(FFieldsQuery[11]).Value;
  FNumeroExtrato := FQuery.FieldByName(FFieldsQuery[12]).Value;
  FValorVerba := FQuery.FieldByName(FFieldsQuery[13]).Value;
  FValorDesconto := FQuery.FieldByName(FFieldsQuery[14]).Value;
  FDataBase := FQuery.FieldByName(FFieldsQuery[15]).Value;
  FNomeEntregador := FQuery.FieldByName(FFieldsQuery[16]).Value;
  FViagem := FQuery.FieldByName(FFieldsQuery[17]).Value;
end;

function TFuelSupplies.SetupFieldsData(aParam: array of variant): boolean;
begin
  FID := aParam[0];
  FCupom := aParam[1];
  FEntregador := aParam[2];
  FPlaca := aParam[3];
  FData := aParam[4];
  FProduto := aParam[5];
  FQuantidade := aParam[6];
  FValorUnitario := aParam[7];
  FValorTotal := aParam[8];
  FExecutante := aParam[9];
  FDataManutencao := aParam[10];
  FFlagDesconto := aParam[11];
  FNumeroExtrato := aParam[12];
  FValorVerba := aParam[13];
  FValorDesconto := aParam[14];
  FDataBase := aParam[15];
  FNomeEntregador := aParam[16];
  FViagem := aParam[17];
  if FAction = tacIncluir then
  begin
    FID := GetId;
    FInsertFields := [FID, FCupom, FEntregador, FPlaca, FloatToDateTime(FData), FProduto,
      FQuantidade, FValorUnitario, FValorTotal, FExecutante, FloatToDateTime(FDataManutencao),
      FFlagDesconto, FNumeroExtrato, FValorVerba, FValorDesconto, FloatToDateTime(FDataBase),
      FNomeEntregador, FViagem];
  end
  else if FAction = tacAlterar then
  begin
    FUpdateFields := [FCupom, FEntregador, FPlaca, FloatToDateTime(FData), FProduto, FQuantidade,
      FValorUnitario, FValorTotal, FExecutante, FloatToDateTime(FDataManutencao), FFlagDesconto,
      FNumeroExtrato, FValorVerba, FValorDesconto, FloatToDateTime(FDataBase), FNomeEntregador,
      FViagem, FID];
  end;
end;

Function TFuelSupplies.Update: boolean;
begin
  Result := False;
  try
    FCRUD := TDAOCRUDRoutines.Create;
    FCRUD.CRUDSentence := CRUDUPDATE;
    Result := FCRUD.UpdateExec(FUpdateFields);
  finally
    FCRUD.free;
  end;
end;

end.
