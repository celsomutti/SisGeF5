unit Control.ExtratosExpressas;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, Model.ExtratosExpressas, System.Classes;

  type
    TExtratosExpressasControl = class
  private
    FExtratos : TExtratosExpressas;
  public
    constructor Create;
    destructor Destroy; override;

    function GetID(): Integer;
    function Gravar(): Boolean;
    function CancelaExtrato(aParam: array of Variant): Boolean;
    function Localizar(aParam: array of Variant): TFDQuery;
    function DatasPagamentos(iBase: Integer): TStringList;

    end;

implementation

{ TExtratosExpressasControl }

function TExtratosExpressasControl.CancelaExtrato(aParam: array of Variant): Boolean;
begin
  Result := FExtratos.CancelaExtrato(aParam);
end;

constructor TExtratosExpressasControl.Create;
begin
  FExtratos := TExtratosExpressas.Create;
end;

function TExtratosExpressasControl.DatasPagamentos(iBase: Integer): TStringList;
begin
  Result := FExtratos.DatasPagamentos(iBase);
end;

destructor TExtratosExpressasControl.Destroy;
begin
  FExtratos.Free;
  inherited;
end;

function TExtratosExpressasControl.GetID: Integer;
begin
  Result := FExtratos.GetID;
end;

function TExtratosExpressasControl.Gravar: Boolean;
begin
  Result := FExtratos.Gravar;
end;

function TExtratosExpressasControl.Localizar(aParam: array of Variant): TFDQuery;
begin
  Result := FExtratos.Localizar(aParam);
end;

end.
