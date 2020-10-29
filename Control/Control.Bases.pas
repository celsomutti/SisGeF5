unit Control.Bases;

interface

  uses System.SysUtils, FireDAC.Comp.Client, Model.Bases;

  type

    TBasesControl = class

  private

    FBases : TBases;

  public

    constructor Create;
    destructor Destroy; override;

    function Gravar: Boolean;
    function Localizar(aParam: array of variant): TFDQuery;
    function GetField(sField: String; sKey: String; sKeyValue: String): String;

    property Bases: TBases read FBases write FBases;

  end;

implementation

{ TBasesControl }

constructor TBasesControl.Create;
begin
  FBases := TBases.Create;
end;

destructor TBasesControl.Destroy;
begin
  FBases.Free;
  inherited;
end;

function TBasesControl.GetField(sField, sKey, sKeyValue: String): String;
begin
  Result := FBases.GetField(sField, sKey, sKeyValue)
end;

function TBasesControl.Gravar: Boolean;
begin
  Result := FBases.Gravar;
end;

function TBasesControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FBases.Localizar(aParam);
end;

end.
