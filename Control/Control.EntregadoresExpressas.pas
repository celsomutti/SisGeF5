unit Control.EntregadoresExpressas;

interface

uses System.SysUtils, FireDAC.Comp.Client, Model.EntregadoresExpressas;

type
  TEntregadoresExpressasControl = class

  private

    FEntregadores: TEntregadoresExpressas;

  public

    constructor Create;
    destructor Destroy; override;

    function Gravar: Boolean;
    function Localizar(aParam: array of variant): TFDQuery;
    function LocalizarExtato(aParam: array of variant): boolean;
    function GetField(sField: String; sKey: String; sKeyValue: String): String;

    property Entregadores: TEntregadoresExpressas read FEntregadores write FEntregadores;

  end;

implementation

{ TEntregadoresExpressasControl }

constructor TEntregadoresExpressasControl.Create;
begin
  FEntregadores := TEntregadoresExpressas.Create;
end;

destructor TEntregadoresExpressasControl.Destroy;
begin
  FEntregadores.Free;
  inherited;
end;

function TEntregadoresExpressasControl.GetField(sField, sKey, sKeyValue: String): String;
begin
  Result := FEntregadores.GetField(sField, sKey, sKeyValue);
end;

function TEntregadoresExpressasControl.Gravar: Boolean;
begin
  Result := FEntregadores.Gravar;
end;

function TEntregadoresExpressasControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FEntregadores.Localizar(aParam);
end;

function TEntregadoresExpressasControl.LocalizarExtato(aParam: array of variant): boolean;
begin
  Result := FEntregadores.LocalizarExtato(aParam);
end;

end.
