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
    function GetId(): integer;
    function Insert(): boolean;
    function Update(): boolean;
    function Delete(): boolean;
    procedure SetID(const Value: integer);
  public
    property ID: integer read FID write SetID;
    property Cupom: string read FCupom write FCupom;
    property Entregador: integer read FEntregador write FEntregador;
    property Placa: string read FPlaca write FPLaca;
    property Data: tdate read FData write FData;
    property Produto: string read FProduto write FProduto;
    property Quantidade: double read FQuantidade write FQuantidade;
    property ValorUnitario: double read FValorUnitario write FValorUnitario;
    property ValorTotal: double read FValorTotal write FValorTotal;
    property Executante: string read FExecutante write FExecutante;
    property DataManutencao: tdatetime read FDataManutencao write FDataManutencao;
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
  end;

  const
    TABLENAME = 'tbabastecimento';
    CRUDSELECT = 'SELECT NUM_ABASTECIMENTO, NUM_CUPOM, COD_ENTREGADOR, DES_PLACA, DAT_ABASTECIMENTO, ' +
                 'DES_PRODUTO, QTD_ABASTECIMENTO, VAL_UNITARIO, VAL_TOTAL, NOM_EXECUTANTE, DAT_MANUTENCAO, DOM_DESCONTO, ' +
                 'NUM_EXTRATO, VAL_VERBA_COMBUSTIVEL, VAL_DESCONTO, DAT_BASE, NOM_ENTREGADOR, ID_CONTROLE ' +
                 'FROM ' + TABLENAME;
    CRUDINSERT = 'INSERT INTO ' + TABLENAME + ' (NUM_ABASTECIMENTO, NUM_CUPOM, COD_ENTREGADOR, DES_PLACA, DAT_ABASTECIMENTO, ' +
                 'DES_PRODUTO, QTD_ABASTECIMENTO, VAL_UNITARIO, VAL_TOTAL, NOM_EXECUTANTE, DAT_MANUTENCAO, DOM_DESCONTO, ' +
                 'NUM_EXTRATO, VAL_VERBA_COMBUSTIVEL, VAL_DESCONTO, DAT_BASE, NOM_ENTREGADOR, ID_CONTROLE) ' +
                 'VALUES (:NUM_ABASTECIMENTO, :NUM_CUPOM, :COD_ENTREGADOR, :DES_PLACA, :DAT_ABASTECIMENTO, ' +
                 ':DES_PRODUTO, :QTD_ABASTECIMENTO, :VAL_UNITARIO, :VAL_TOTAL, :NOM_EXECUTANTE, :DAT_MANUTENCAO, :DOM_DESCONTO, ' +
                 ':NUM_EXTRATO, :VAL_VERBA_COMBUSTIVEL, :VAL_DESCONTO, :DAT_BASE, :NOM_ENTREGADOR, :ID_CONTROLE)';
    CRUDUPDATE = 'UPDATE ' + TABLENAME  + ' SET NUM_CUPOM = :NUM_CUPOM, ' +
                 'COD_ENTREGADOR = :COD_ENTREGADOR, DES_PLACA = :DES_PLACA, DAT_ABASTECIMENTO = :DAT_ABASTECIMENTO, ' +
                 'DES_PRODUTO = DES_PRODUTO, QTD_ABASTECIMENTO = :QTD_ABASTECIMENTO, VAL_UNITARIO = :VAL_UNITARIO, ' +
                 'VAL_TOTAL = :VAL_TOTAL, NOM_EXECUTANTE = :NOM_EXECUTANTE, DAT_MANUTENCAO = :DAT_MANUTENCAO, ' +
                 'DOM_DESCONTO = :DOM_DESCONTO, UM_EXTRATO = :UM_EXTRATO, VAL_VERBA_COMBUSTIVEL = :VAL_VERBA_COMBUSTIVEL, ' +
                 'VAL_DESCONTO = :VAL_DESCONTO, DAT_BASE = :DAT_BASE, NOM_ENTREGADOR = :NOM_ENTREGADOR, ' +
                 'ID_CONTROLE = :ID_CONTROLE' +
                 'WHERE NUM_ABASTECIMENTO = :NUM_ABASTECIMENTO ';
    CRUDDELETE = 'DETELE FROM ' + TABLENAME + ' WHERE NUM_ABASTECIMENTO = :NUM_ABASTECIMENTO';
    CRUDGETID  = 'select coalesce(max(NUM_ABASTECIMENTO),0) + 1 from ' + TABLENAME;

implementation

{ TFuelSupplies }

constructor TFuelSupplies.Create;
begin
  FInsertFields := [FID, FCupom, FEntregador, FPlaca, FData, FProduto, FQuantidade, FValorUnitario, FValorTotal, FExecutante,
  FDataManutencao, FFlagDesconto, FNumeroExtrato, FValorVerba, FValorDesconto, FDataBase, FNomeEntregador, FViagem];
  FUpdateFields := [FCupom, FEntregador, FPlaca, FData, FProduto, FQuantidade, FValorUnitario, FValorTotal, FExecutante,
  FDataManutencao, FFlagDesconto, FNumeroExtrato, FValorVerba, FValorDesconto, FDataBase, FNomeEntregador, FViagem, FID];
end;

function TFuelSupplies.Delete: boolean;
begin
  Result := False;
  try
    FCRUD := TDAOCRUDRoutines.Create;
    FCRUD.CRUDSentence := CRUDDELETE;
    Result := FCRUD.UpdateExec([FID]);
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
  Result := false;
  case FAction of
    tacIncluir : Result := Insert();
    tacAlterar : Result := Update();
    tacExcluir : Result := Delete();
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
    FCRUD.TableName := TABLENAME;
    FQuery.Active := False;
    if FCRUD.Search(aParam) then
    begin
      if not FCRUD.Query.IsEmpty then
      begin
        FQuery := FCRUD.Query;
        FCRUD.Query.Connection.Connected := False;
        Result := True;
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

function TFuelSupplies.Update: boolean;
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
