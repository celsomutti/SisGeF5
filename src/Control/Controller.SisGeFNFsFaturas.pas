unit Controller.SisGeFNFsFaturas;

interface

  uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.SisGeFNFsFaturas;

  type
    TControllerSisGeFNFsFaturas = class
  private
    FFaturas : TModelSisGeFNFsFaturas;
  public
    constructor Create();
    destructor Destroy(); override;
    function Search(aParam: array of variant): boolean;
    function Save(): boolean;
    function SetupClass(): boolean;
    function ValidateData(): boolean;
    function GetField(sField: String; sKey: String; sKeyValue: String): String;
    function ReturnExtract(InitialDate, FinalDate: TDate; iType: integer): boolean;

    property Faturas : TModelSisGeFNFsFaturas read FFaturas write FFaturas;

    end;

implementation

{ TControllerSisGeFNFsFaturas }

constructor TControllerSisGeFNFsFaturas.Create;
begin
  FFaturas := TModelSisGeFNFsFaturas.Create;
end;

destructor TControllerSisGeFNFsFaturas.Destroy;
begin
  FFaturas.Free;
  inherited;
end;

function TControllerSisGeFNFsFaturas.GetField(sField, sKey, sKeyValue: String): String;
begin
  Result := FFaturas.GetField(sField, sKey, sKeyValue);
end;

function TControllerSisGeFNFsFaturas.ReturnExtract(InitialDate, FinalDate: TDate; iType: integer): boolean;
begin
  Result := FFaturas.ReturnExtract(InitialDate, FinalDate, iType);
end;

function TControllerSisGeFNFsFaturas.Save: boolean;
begin
  Result := FFaturas.Save;
end;

function TControllerSisGeFNFsFaturas.Search(aParam: array of variant): boolean;
begin
  Result := FFaturas.Search(aParam);
end;

function TControllerSisGeFNFsFaturas.SetupClass: boolean;
begin
  Result := FFaturas.SetupClass;
end;

function TControllerSisGeFNFsFaturas.ValidateData: boolean;
begin
  Result := FFaturas.ValidateData;
end;

end.
