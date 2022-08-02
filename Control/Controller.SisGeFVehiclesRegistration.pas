unit Controller.SisGeFVehiclesRegistration;

interface

uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Control.Sistema, Model.SisgeFVehiclesRegistration;

type
  TControllerSisGeFVehiclesRegistration = class
  private
    FVeiculos : TModelSisGeFVehiclesRegistration;
  public
    constructor Create();
    destructor Destroy(); override;
    function Search(aParam: array of variant): boolean;
    function SearchVehicle(iIndex: integer; sText, sFilter: String): boolean;
    function Save(): boolean;
    function SetupClass(): boolean;
    function GetID(): integer;
    function ValidateData(): boolean;
    function GetField(sField: String; sKey: String; sKeyValue: String): String;

    property Veiculos : TModelSisGeFVehiclesRegistration read FVeiculos write FVeiculos;
  end;

implementation

{ TControllerSisGeFVehiclesRegistration }

constructor TControllerSisGeFVehiclesRegistration.Create;
begin
  FVeiculos := TModelSisGeFVehiclesRegistration.Create;
end;

destructor TControllerSisGeFVehiclesRegistration.Destroy;
begin
  FVeiculos.Free;
  inherited;
end;

function TControllerSisGeFVehiclesRegistration.GetField(sField, sKey, sKeyValue: String): String;
begin
  Result := FVeiculos.GetField(sField, sKey, sKeyValue);
end;

function TControllerSisGeFVehiclesRegistration.GetID: integer;
begin
  Result := FVeiculos.GetID;
end;

function TControllerSisGeFVehiclesRegistration.Save: boolean;
begin
  Result := FVeiculos.Save;
end;

function TControllerSisGeFVehiclesRegistration.Search(aParam: array of variant): boolean;
begin
  Result := FVeiculos.Search(aParam);
end;

function TControllerSisGeFVehiclesRegistration.SearchVehicle(iIndex: integer; sText, sFilter: String): boolean;
begin
  Result := FVeiculos.SearchVehicle(iIndex, sText, sFilter);
end;

function TControllerSisGeFVehiclesRegistration.SetupClass: boolean;
begin
  Result := FVeiculos.SetupClass;
end;

function TControllerSisGeFVehiclesRegistration.ValidateData: boolean;
begin
  Result := FVeiculos.ValidateData();
end;

end.
