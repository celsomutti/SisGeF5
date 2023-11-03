unit Control.EmpresasEnderecos;

interface

uses System.SysUtils, FireDAC.Comp.Client, Model.EmpresasEnderecos;

type
  TEmpresasEnderecosControl = class
  private
    FEnderecos: TEmpresasEnderecos;
  public
    constructor Create;
    destructor Destroy; override;
    function Gravar: Boolean;
    function Localizar(aParam: array of variant): Boolean;
 end;


implementation

{ TEmpresasEnderecosControl }

constructor TEmpresasEnderecosControl.Create;
begin
  FEnderecos := TEmpresasEnderecos.Create;
end;

destructor TEmpresasEnderecosControl.Destroy;
begin
  FEnderecos.Free;
  inherited;
end;

function TEmpresasEnderecosControl.Gravar: Boolean;
begin
  Result := FEnderecos.Gravar();
end;

function TEmpresasEnderecosControl.Localizar(aParam: array of variant): Boolean;
begin
  Result := FEnderecos.Localizar(aParam);
end;

end.
