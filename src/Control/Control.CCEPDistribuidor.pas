unit Control.CCEPDistribuidor;

interface

uses System.SysUtils, FireDAC.Comp.Client, Model.CCEPDistribuidor;

type
  TCCEPDistribuidorControl = class
  private
    FCCEP : TCCEPDistribuidor;
  public
    constructor Create;
    destructor Destroy; override;

    function Gravar(): Boolean;
    function Localizar(aParam: array of variant): TFDQuery;

    property CCEP: TCCEPDistribuidor read FCCEP write FCCEP;

  end;

implementation

{ TCCEPDistribuidorControl }

constructor TCCEPDistribuidorControl.Create;
begin
  FCCEP := TCCEPDistribuidor.Create;
end;

destructor TCCEPDistribuidorControl.Destroy;
begin
  FCCEP.Free;
  inherited;
end;

function TCCEPDistribuidorControl.Gravar(): Boolean;
begin
  Result := FCCEP.Gravar();
end;

function TCCEPDistribuidorControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FCCEP.Localizar(aParam);
end;

end.
