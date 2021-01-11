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
    function LocalizarExato(aParam: array of variant): boolean;
    function GetField(sField: String; sKey: String; sKeyValue: String): String;
    function EntregadorExiste(iTipo, iCliente, iEntregador: Integer; sERP: String): Boolean;

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

function TEntregadoresExpressasControl.EntregadorExiste(iTipo, iCliente, iEntregador: Integer; sERP: String): Boolean;
begin
  Result := Fentregadores.EntregadorExiste(iTipo, iCliente, iEntregador, sERP);
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

function TEntregadoresExpressasControl.LocalizarExato(aParam: array of variant): boolean;
begin
  Result := FEntregadores.LocalizarExato(aParam);
end;

end.
