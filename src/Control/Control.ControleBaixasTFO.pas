unit Control.ControleBaixasTFO;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, Control.Sistema, Model.ControleBaixasTFO;

type
  TControleBaixasTFOControl = class
  private
    FControle : TControleBaixasTFO;
  public
    constructor Create();
    destructor Destroy(); override;
    property Controle: TControleBaixasTFO read FControle write FControle;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
  end;

implementation

{ TControleBaixasTFOControl }

constructor TControleBaixasTFOControl.Create;
begin
  FControle := TControleBaixasTFO.Create;
end;

destructor TControleBaixasTFOControl.Destroy;
begin
  FControle.Free;
  inherited;
end;

function TControleBaixasTFOControl.Gravar: Boolean;
begin
  Result := FControle.Gravar;
end;

function TControleBaixasTFOControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FControle.Localizar(aParam)
end;

end.
