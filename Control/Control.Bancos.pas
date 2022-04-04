unit Control.Bancos;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, Control.Sistema, Common.Utils, Model.Bancos;

type
  TBancosControl = class
  private
    FBancos : TBancos;
  public
    constructor Create();
    destructor Destroy(); override;
    property Bancos: TBancos read FBancos write FBancos;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
    function SetupModal(FDQuery: TFDQuery): Boolean;
    function GetField(sField: String; sKey: String; sKeyValue: String): String;
    function LocalizarExt(aParam: array of variant): Boolean;
  end;

implementation

{ TBancosControl }

constructor TBancosControl.Create;
begin
  FBancos := TBancos.Create;
end;

destructor TBancosControl.Destroy;
begin
  FBancos.Free;
  inherited;
end;

function TBancosControl.GetField(sField, sKey, sKeyValue: String): String;
begin
  Result := FBancos.GetField(sField, sKey, sKeyValue);
end;

function TBancosControl.Gravar: Boolean;
begin
  Result := FBancos.Gravar();
end;

function TBancosControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FBancos.Localizar(aParam);
end;

function TBancosControl.LocalizarExt(aParam: array of variant): Boolean;
begin
  Result := FBancos.LocalizarExt(aParam);
end;

function TBancosControl.SetupModal(FDQuery: TFDQuery): Boolean;
begin
  Result := FBancos.SetupModel(FDQuery);
end;

end.
