unit Controller.SisGeFTiragens;

interface

  uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.SisGeFTiragens;

  type
    TControllerSisGeFTiragens = class
  private
    FTiragens : TModelSisGeFTiragens;
  public
    constructor Create();
    destructor Destroy(); override;
    function Search(aParam: array of variant): boolean;
    function Save(): boolean;
    function SetupClass(): boolean;
    function ValidateData(): boolean;
    function GetField(sField: String; sKey: String; sKeyValue: String): String;

    property Tiragens : TModelSisGeFTiragens read FTiragens write FTiragens;

    end;

implementation

{ TControllerSisGeFTiragens }

constructor TControllerSisGeFTiragens.Create;
begin
  FTiragens := TModelSisGeFTiragens.Create;
end;

destructor TControllerSisGeFTiragens.Destroy;
begin
  FTiragens.Free;
  inherited;
end;

function TControllerSisGeFTiragens.GetField(sField, sKey, sKeyValue: String): String;
begin
  Result := FTiragens.GetField(sField, sKey, sKeyValue);
end;

function TControllerSisGeFTiragens.Save: boolean;
begin
  Result := FTiragens.Save;
end;

function TControllerSisGeFTiragens.Search(aParam: array of variant): boolean;
begin
  Result := FTiragens.Search(aParam);
end;

function TControllerSisGeFTiragens.SetupClass: boolean;
begin
  Result := FTiragens.SetupClass;
end;

function TControllerSisGeFTiragens.ValidateData: boolean;
begin
  Result := FTiragens.ValidateData;
end;

end.
