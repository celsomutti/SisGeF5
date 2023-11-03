unit Controller.CRMEmpresas;

interface

uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.CRMEmpresas;

type
  TCRMEmpresasController = class
  private
    FEmpresas: TCRMEmpresas;
  public

    constructor Create;
    destructor  Destroy; override;
    property Empresas : TCRMEmpresas read FEmpresas write FEmpresas;

    function GetID(): Integer;
    function Localizar(aParam: array of variant): Boolean;
    function Gravar(): Boolean;
    procedure SetupClass(FDquery: TFDQuery);
    procedure SetupClassMem(memTable: TFDMemTable);

  end;

implementation

{ TCRMEmpresasController }

constructor TCRMEmpresasController.Create;
begin
  FEmpresas := TCRMEmpresas.Create;
end;

destructor TCRMEmpresasController.Destroy;
begin
  FEmpresas.Free;
  inherited;
end;

function TCRMEmpresasController.GetID: Integer;
begin
  Result := Fempresas.GetID;
end;

function TCRMEmpresasController.Gravar: Boolean;
begin
  Result := FEmpresas.Gravar;
end;

function TCRMEmpresasController.Localizar(aParam: array of variant): Boolean;
begin
  Result := FEmpresas.Localizar(aParam);
end;

procedure TCRMEmpresasController.SetupClass(FDquery: TFDQuery);
begin
  FEmpresas.SetupClass(FDquery);
end;

procedure TCRMEmpresasController.SetupClassMem(memTable: TFDMemTable);
begin
  FEmpresas.SetupClassMem(memTable);
end;

end.
