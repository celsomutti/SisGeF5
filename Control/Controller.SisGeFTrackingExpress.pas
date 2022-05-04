unit Controller.SisGeFTrackingExpress;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, Common.Utils, Model.SisGeFTrackingExpress;

type
  TControllerSisGeFTrackingExpress = class
  private
    FTracking : TModelsisGeFTrackingExpress;
  public
    constructor Create();
    destructor Destroy(); override;
    function Search(aParam: array of variant): Boolean;
    function Save(): Boolean;
    function GetField(sField: String; sKey: String; sKeyValue: String): String;
    function TruncTable(): Boolean;
    procedure SetupSelf();
    procedure ClearSelf();

    property Tracking: TModelsisGeFTrackingExpress read FTracking write FTracking;
  end;

implementation

{ TControllerSisGeFTrackingExpress }

procedure TControllerSisGeFTrackingExpress.ClearSelf;
begin
  FTracking.ClearSelf;
end;

constructor TControllerSisGeFTrackingExpress.Create;
begin
  FTracking := TModelsisGeFTrackingExpress.Create;
end;

destructor TControllerSisGeFTrackingExpress.Destroy;
begin
  FTracking.Free;
  inherited;
end;

function TControllerSisGeFTrackingExpress.GetField(sField, sKey, sKeyValue: String): String;
begin
  Result := FTracking.GetField(sField, sKey, sKeyValue);
end;

function TControllerSisGeFTrackingExpress.Save: Boolean;
begin
  Result := FTracking.Save;
end;

function TControllerSisGeFTrackingExpress.Search(aParam: array of variant): Boolean;
begin
  Result := FTracking.Search(aParam);
end;

procedure TControllerSisGeFTrackingExpress.SetupSelf();
begin
  FTracking.SetupSelf;
end;

function TControllerSisGeFTrackingExpress.TruncTable: Boolean;
begin
  Result := FTracking.TruncTable();
end;

end.
