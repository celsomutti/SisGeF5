unit Controller.CRMFinanceiroClientes;

interface

uses Model.CRMFinanceiroClientes, Common.ENum, FireDAC.Comp.Client, System.SysUtils;

type
  TCRMFinanceiroClientesController = class
  private
    FFinanceiro: TCRMFinanceiroClientes;
  public
    property financeiro: TCRMFinanceiroClientes read FFinanceiro write FFinanceiro;

    constructor Create();
    destructor Destroy(); override;

    function Localizar(aParam: array of variant): Boolean;
    function Gravar(): Boolean;
    function SaveBatch(memTable: TFDMemTable): Boolean;
    function SetupClass(FDQuery: TFDQuery): Boolean;
    function ClearClass(): Boolean;

  end;

implementation

{ TCRMFinanceiroClientesController }

function TCRMFinanceiroClientesController.ClearClass: Boolean;
begin
  Result := FFinanceiro.ClearClass;
end;

constructor TCRMFinanceiroClientesController.Create;
begin
  FFinanceiro := TCRMFinanceiroClientes.Create;
end;

destructor TCRMFinanceiroClientesController.Destroy;
begin
  FFinanceiro.Free;
  inherited;
end;

function TCRMFinanceiroClientesController.Gravar: Boolean;
begin
  Result := FFinanceiro.Gravar;
end;

function TCRMFinanceiroClientesController.Localizar(aParam: array of variant): Boolean;
begin
  Result := FFinanceiro.Localizar(aParam);
end;

function TCRMFinanceiroClientesController.SaveBatch(memTable: TFDMemTable): Boolean;
begin
  Result := FFinanceiro.SaveBatch(memTable);
end;

function TCRMFinanceiroClientesController.SetupClass(FDQuery: TFDQuery): Boolean;
begin
  Result := FFinanceiro.SetupClass(FDQuery);
end;

end.
