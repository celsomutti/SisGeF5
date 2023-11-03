unit Controller.CRMCNAEClientes;

interface

uses Model.CRMCNAEClientes, Common.ENum, FireDAC.Comp.Client, System.SysUtils;

type
  TCRMCNAEClientesController = class
  private
    FCNAE: TCRMCNAEClientes;
  public
    property CNAE: TCRMCNAEClientes read FCNAE write FCNAE;

    constructor Create();
    destructor Destroy(); override;

    function Localizar(aParam: array of variant): Boolean;
    function Gravar(): Boolean;
    function SaveBatch(memTable: TFDMemTable): Boolean;
    function SetupClass(FDQuery: TFDQuery): Boolean;
    function ClearClass(): Boolean;
  end;

implementation

{ TCRMCNAEClientesController }

function TCRMCNAEClientesController.ClearClass: Boolean;
begin
  Result := FCNAE.ClearClass;
end;

constructor TCRMCNAEClientesController.Create;
begin
  FCNAE := TCRMCNAEClientes.Create;
end;

destructor TCRMCNAEClientesController.Destroy;
begin
  FCNAE.Free;
  inherited;
end;

function TCRMCNAEClientesController.Gravar: Boolean;
begin
  Result := FCNAE.Gravar;
end;

function TCRMCNAEClientesController.Localizar(aParam: array of variant): Boolean;
begin
  Result := FCNAE.Localizar(aParam);
end;

function TCRMCNAEClientesController.SaveBatch(memTable: TFDMemTable): Boolean;
begin
  Result := FCNAE.SaveBatch(memTable)
end;

function TCRMCNAEClientesController.SetupClass(FDQuery: TFDQuery): Boolean;
begin
  Result := FCNAE.SetupClass(FDQuery);
end;

end.
