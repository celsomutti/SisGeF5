unit Control.Estados;

interface

uses System.SysUtils, FireDAC.Comp.Client, Model.Estados;

type
  TEstadosControl = class
  private
    FEstados: TEstados;
  public
    constructor Create;
    destructor Destroy; override;

    function Gravar: Boolean;
    function Localizar(aParam: array of variant): TFDQuery;
    function ValidarDados(): Boolean;
    property Estados: TEstados read FEstados write FEstados;

  end;

implementation

{ TEstadosControl }

constructor TEstadosControl.Create;
begin
  FEstados := TEstados.Create;
end;

destructor TEstadosControl.Destroy;
begin
  FEstados.Free;
  inherited;
end;

function TEstadosControl.Gravar: Boolean;
begin
  Result := FEstados.Gravar;
end;

function TEstadosControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FEstados.Localizar(aParam);
end;

function TEstadosControl.ValidarDados: Boolean;
begin
  Result := FEstados.ValidarDados;
end;

end.
