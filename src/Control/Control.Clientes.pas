unit Control.Clientes;

interface

uses System.SysUtils, FireDAC.Comp.Client, Model.Clientes;

type

  TClientesControl = class

  private

    FClientes : TClientes;

  public

    constructor Create;
    destructor Destroy; override;

    function Gravar: Boolean;
    function Localizar(aParam: array of variant): TFDQuery;

    property Clientes: TClientes read FClientes write FClientes;

  end;

implementation

{ TClientesControl }

constructor TClientesControl.Create;
begin
  FClientes := TClientes.Create;
end;

destructor TClientesControl.Destroy;
begin
   FClientes.Free;
  inherited;
end;

function TClientesControl.Gravar: Boolean;
begin
  Result := FClientes.Gravar;
end;

function TClientesControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FClientes.Localizar(aParam);
end;

end.
