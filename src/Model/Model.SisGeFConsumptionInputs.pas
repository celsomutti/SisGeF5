
unit Model.SisGeFConsumptionInputs;

interface

uses Common.ENum, FireDAC.Comp.Client, DAO.Conexao, System.SysUtils,
  Common.Utils, System.DateUtils;

  type
    TConsumptionInputs = class
    private
      FConn: TConexao;

      FViagem: integer;
      FID: integer;
      FFlagEstoque: string;
      FValorConsumo: double;
      FPlacaVeiculo: string;
      FIDInsumo: integer;
      FLog: string;
      FKMConsumo: double;
      FQuantidade: double;
      FData: tdate;
      FAction: TAcao;
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
      property IDInsumo: integer read FIDInsumo write FIDInsumo;
      property PlacaVeiculo: string read FPlacaVeiculo write FPlacaVeiculo;
      property Data: tdate read FData write FData;
      property KMConsumo: double read FKMConsumo write FKMConsumo;
      property Viagem: integer read FViagem write FViagem;
      property Quantidade: double read FQuantidade write FQuantidade;
      property ValorConsumo: double read FValorConsumo write FValorConsumo;
      property FlagEstoque: string read FFlagEstoque write FFlagEstoque;
      property Log: string read FLog write FLog;
      property Acao: TAcao read FAction write FAction;
      property Query: TFDQuery read FQuery write FQuery;

      constructor Create;
      function Save(): boolean;
      function Search(aParam: array of variant): boolean;
    end;

    const
    TABLENAME = 'tbconsumoinsumos';
    CRUDSELECT = 'SELECT ID_CONSUMO, ID_INSUMO, DES_PLACA, DAT_CONSUMO, QTD_KM_CONSUMO, ID_CONTROLE, QTD_CONSUMO, VAL_CONSUMO, ' +
                 'DOM_ESTOQUE, DES_LOG ' +
                 'FROM ' + TABLENAME;
    CRUDINSERT = 'INSERT INTO ' + TABLENAME + ' (ID_CONSUMO, ID_INSUMO, DES_PLACA, DAT_CONSUMO, QTD_KM_CONSUMO, ID_CONTROLE, ' +
                 'QTD_CONSUMO, VAL_CONSUMO, DOM_ESTOQUE, DES_LOG) ' +
                 'VALUES (:ID_CONSUMO, :ID_INSUMO, :DES_PLACA, :DAT_CONSUMO, :QTD_KM_CONSUMO, :ID_CONTROLE, :QTD_CONSUMO, :' +
                 'VAL_CONSUMO, :DOM_ESTOQUE, :DES_LOG)';
    CRUDUPDATE = 'UPDATE ' + TABLENAME  + ' SET ID_INSUMO = :ID_INSUMO, DES_PLACA= :DES_PLACA, DAT_CONSUMO = :DAT_CONSUMO, ' +
                 'QTD_KM_CONSUMO = :QTD_KM_CONSUMO, ID_CONTROLE = :ID_CONTROLE, QTD_CONSUMO = :QTD_CONSUMO, '+
                 'VAL_CONSUMO = :VAL_CONSUMO, DOM_ESTOQUE = :DOM_ESTOQUE, DES_LOG = :DES_LOG ' +
                 'WHERE ID_CONSUMO = :ID_CONSUMO ';
    CRUDDELETE = 'DETELE FROM ' + TABLENAME + ' WHERE ID_CONSUMO = :ID_CONSUMO';
    CRUDGETID  = 'select coalesce(max(ID_CONSUMO),0) + 1 from ' + TABLENAME;

implementation

{ TConsumptionInputs }

function TConsumptionInputs.Update: boolean;
begin

end;

constructor TConsumptionInputs.Create;
begin
  FInsertFields := [FID, FIDInsumo, FPlacaVeiculo, FData, FKMConsumo, FViagem, FQuantidade, FValorConsumo, FFlagEstoque, FLog];
  FUpdateFields := [FID, FIDInsumo, FPlacaVeiculo, FData, FKMConsumo, FViagem, FQuantidade, FValorConsumo, FFlagEstoque, FLog];
  FConn := TConexao.Create;
end;

function TConsumptionInputs.Delete: boolean;
begin

end;

function TConsumptionInputs.GetId: integer;
begin

end;

function TConsumptionInputs.Insert: boolean;
begin

end;

function TConsumptionInputs.Save: boolean;
begin

end;

function TConsumptionInputs.Search(aParam: array of variant): boolean;
begin

end;

procedure TConsumptionInputs.SetID(const Value: integer);
begin
  FID := Value;
end;

end.
