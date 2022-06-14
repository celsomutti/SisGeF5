unit Control.Parametros;

interface

uses System.SysUtils, FireDAC.Comp.Client, Model.Parametros;

  type
    TParametrosControl = class
    private
      FParametros : TParametros;
  public

    constructor Create;
    destructor Destroy; override;

    function Gravar: Boolean;
    function Localizar(aParam: array of variant): TFDQuery;
    function GetField(sField: String; sKey: String; sKeyValue: String): String;

    property Parametros: TParametros read FParametros write FParametros;

    end;
implementation

{ TParametrosControl }

constructor TParametrosControl.Create;
begin
  FParametros := TParametros.Create();
end;

destructor TParametrosControl.Destroy;
begin
  FParametros.Free;
  inherited;
end;

function TParametrosControl.GetField(sField, sKey, sKeyValue: String): String;
begin
  Result := FParametros.GetField(sField, sKey, sKeyValue);
end;

function TParametrosControl.Gravar: Boolean;
begin
  Result := FParametros.Gravar();
end;

function TParametrosControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FParametros.Localizar(aParam);
end;

end.
