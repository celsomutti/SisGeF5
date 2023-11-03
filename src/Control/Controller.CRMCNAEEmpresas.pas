unit Controller.CRMCNAEEmpresas;

interface

uses Model.CRMCNAEEmpresas, Common.ENum, FireDAC.Comp.Client, System.SysUtils;

type
  TCRMCNAEEmpressasController = class
  private
    FCNAE: TCRMCNAEEmpresas;
  public
    property CNAE: TCRMCNAEEmpresas read FCNAE write FCNAE;

    constructor Create();
    destructor Destroy(); override;

    function Localizar(aParam: array of variant): Boolean;
    function Gravar(): Boolean;
    function SaveBatch(memTable: TFDMemTable): Boolean;
    function SetupClass(FDQuery: TFDQuery): Boolean;
    function ClearClass(): Boolean;
  end;

implementation

{ TCRMCNAEEmpressasController }

function TCRMCNAEEmpressasController.ClearClass: Boolean;
begin
  Result := FCNAE.ClearClass;
end;

constructor TCRMCNAEEmpressasController.Create;
begin
  FCNAE := TCRMCNAEEmpresas.Create;
end;

destructor TCRMCNAEEmpressasController.Destroy;
begin
  FCNAE.Free;
  inherited;
end;

function TCRMCNAEEmpressasController.Gravar: Boolean;
begin
  Result := FCNAE.Gravar;
end;

function TCRMCNAEEmpressasController.Localizar(aParam: array of variant): Boolean;
begin
  Result := FCNAE.Localizar(aParam);
end;

function TCRMCNAEEmpressasController.SaveBatch(memTable: TFDMemTable): Boolean;
begin
  Result := FCNAE.SaveBatch(memTable)
end;

function TCRMCNAEEmpressasController.SetupClass(FDQuery: TFDQuery): Boolean;
begin
  Result := FCNAE.SetupClass(FDQuery);
end;

end.
