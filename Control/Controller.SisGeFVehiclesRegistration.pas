unit Controller.SisGeFVehiclesRegistration;

interface

uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Control.Sistema, Model.SisgeFVehiclesRegistration;

type
  ControllerSisGeFVehiclesRegistration = class
  private
    FVeiculos : TModelSisGeFVehiclesRegistration;
  public
    constructor Create();
    destructor Destroy(); override;
    function Search(aParam: array of variant): boolean;
    function Save(): boolean;
    function SetupClass(): boolean;
    function GetID(): integer;
  end;

implementation

{ ControllerSisGeFVehiclesRegistration }

constructor ControllerSisGeFVehiclesRegistration.Create;
begin
  FVeiculos := TModelSisGeFVehiclesRegistration.Create;
end;

destructor ControllerSisGeFVehiclesRegistration.Destroy;
begin
  FVeiculos.Free;
  inherited;
end;

function ControllerSisGeFVehiclesRegistration.GetID: integer;
begin
  Result := FVeiculos.GetID;
end;

function ControllerSisGeFVehiclesRegistration.Save: boolean;
begin
  Result := FVeiculos.Save;
end;

function ControllerSisGeFVehiclesRegistration.Search(aParam: array of variant): boolean;
begin
  Result := FVeiculos.Search(aParam);
end;

function ControllerSisGeFVehiclesRegistration.SetupClass: boolean;
begin
  Result := SetupClass;
end;

end.
