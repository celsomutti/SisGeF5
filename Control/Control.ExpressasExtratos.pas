unit Control.ExpressasExtratos;

interface

uses Model.ExpressasExtratos, System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, system.Classes;

type
  TExpressasExtratosControl = class
  private
    FExtrato : TExpressasExtratos;
  public
    constructor Create;
    destructor Destroy; override;
    function Gravar: Boolean;
    function Localizar(aParam: array of variant): TFDQuery;
    function DatasPagamentos(iBase: Integer): TStringlist;
  end;

implementation

{ TExpressasExtratosControl }

constructor TExpressasExtratosControl.Create;
begin
  FExtrato := TExpressasExtratos.Create;
end;

function TExpressasExtratosControl.DatasPagamentos(iBase: Integer): TStringlist;
begin
  Result := FExtrato.DatasPagamentos(iBase);
end;

destructor TExpressasExtratosControl.Destroy;
begin
  FExtrato.Free;
  inherited;
end;

function TExpressasExtratosControl.Gravar: Boolean;
begin
  Result := FExtrato.Gravar;
end;

function TExpressasExtratosControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FExtrato.Localizar(aParam);
end;

end.
