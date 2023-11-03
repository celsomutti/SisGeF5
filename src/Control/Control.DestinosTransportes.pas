unit Control.DestinosTransportes;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, Control.Sistema, Model.DestinosTransportes;

type
  TDestinosTransportesControl = class
  private
    FDestinos: TDestinosTransporte;
  public
    constructor Create();
    destructor Destroy(); override;
    property Destinos: TDestinosTransporte read FDestinos write FDestinos;

    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
  end;

implementation

{ TDestinosTransportesControl }

constructor TDestinosTransportesControl.Create;
begin
  FDestinos := TDestinosTransporte.Create;
end;

destructor TDestinosTransportesControl.Destroy;
begin
  FDestinos.Free;
  inherited;
end;

function TDestinosTransportesControl.Gravar: Boolean;
begin
  Result := FDestinos.Gravar;
end;

function TDestinosTransportesControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FDestinos.Localizar(aParam);
end;

end.
