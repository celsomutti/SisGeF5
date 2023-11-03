unit Controller.CRMFinanceiroEmpresas;

interface

uses Model.CRMFinanceiroEmpresas, Common.ENum, FireDAC.Comp.Client, System.SysUtils;

type
  TCRMFinanceiroEmpresasController = class
  private
    FFinanceiro: TCRMFinanceiroEmpresas;
  public
    property financeiro: TCRMFinanceiroEmpresas read FFinanceiro write FFinanceiro;

    constructor Create();
    destructor Destroy(); override;

    function Localizar(aParam: array of variant): Boolean;
    function Gravar(): Boolean;
    function SaveBatch(memTable: TFDMemTable): Boolean;
    function SetupClass(FDQuery: TFDQuery): Boolean;
    function ClearClass(): Boolean;

  end;

implementation

{ TCRMFinanceiroEmpresasController }

function TCRMFinanceiroEmpresasController.ClearClass: Boolean;
begin
  Result := FFinanceiro.ClearClass;
end;

constructor TCRMFinanceiroEmpresasController.Create;
begin
  FFinanceiro := TCRMFinanceiroEmpresas.Create;
end;

destructor TCRMFinanceiroEmpresasController.Destroy;
begin
  FFinanceiro.Free;
  inherited;
end;

function TCRMFinanceiroEmpresasController.Gravar: Boolean;
begin
  Result := FFinanceiro.Gravar;
end;

function TCRMFinanceiroEmpresasController.Localizar(aParam: array of variant): Boolean;
begin
  Result := FFinanceiro.Localizar(aParam);
end;

function TCRMFinanceiroEmpresasController.SaveBatch(memTable: TFDMemTable): Boolean;
begin
  Result := FFinanceiro.SaveBatch(memTable);
end;

function TCRMFinanceiroEmpresasController.SetupClass(FDQuery: TFDQuery): Boolean;
begin
  Result := FFinanceiro.SetupClass(FDQuery);
end;

end.
