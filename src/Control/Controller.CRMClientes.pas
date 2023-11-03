unit Controller.CRMClientes;

interface

uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.CRMClientes;

type
  TCRMClientesController = class
  private
    FClientes: TCRMClientes;
  public

    constructor Create;
    destructor  Destroy; override;
    property Clientes : TCRMClientes read FClientes write FClientes;

    function GetID(): Integer;
    function Localizar(aParam: array of variant): Boolean;
    function Gravar(): Boolean;
    procedure SetupClass(FDquery: TFDQuery);
    procedure SetupClassMem(memTable: TFDMemTable);

  end;

implementation

{ TCRMClientesController }

constructor TCRMClientesController.Create;
begin
  FClientes := TCRMClientes.Create;
end;

destructor TCRMClientesController.Destroy;
begin
  FClientes.Free;
  inherited;
end;

function TCRMClientesController.GetID: Integer;
begin
  Result := FClientes.GetID;
end;

function TCRMClientesController.Gravar: Boolean;
begin
  Result := FClientes.Gravar;
end;

function TCRMClientesController.Localizar(aParam: array of variant): Boolean;
begin
  Result := FClientes.Localizar(aParam);
end;

procedure TCRMClientesController.SetupClass(FDquery: TFDQuery);
begin
  FClientes.SetupClass(FDquery);
end;

procedure TCRMClientesController.SetupClassMem(memTable: TFDMemTable);
begin
  FClientes.SetupClassMem(memTable);
end;

end.
