unit Control.Empresas;

interface

  uses System.SysUtils, FireDAC.Comp.Client, Model.Empresas;

  type

    TEmpresasControl = class

  private

    FEmpresas : TEmpresas;

  public

    constructor Create;
    destructor Destroy; override;

    function Gravar: Boolean;
    function Localizar(aParam: array of variant): Boolean;
    function GetField(sField: String; sKey: String; sKeyValue: String): String;

    property Empresas: TEmpresas read FEmpresas write FEmpresas;

  end;

implementation

{ TEmpresasControl }

constructor TEmpresasControl.Create;
begin
  FEmpresas := TEmpresas.Create;
end;

destructor TEmpresasControl.Destroy;
begin
  FEmpresas.Free;
  inherited;
end;

function TEmpresasControl.GetField(sField, sKey, sKeyValue: String): String;
begin
  Result := FEmpresas.GetField(sField, sKey, sKeyValue)
end;

function TEmpresasControl.Gravar: Boolean;
begin
  Result := FEmpresas.Gravar;
end;

function TEmpresasControl.Localizar(aParam: array of variant): Boolean;
begin
  Result := FEmpresas.Localizar(aParam);
end;

end.
