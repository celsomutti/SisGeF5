unit Control.ControleAWB;

interface

uses FireDAC.Comp.Client, Common.ENum, Control.Sistema, System.Classes, Model.ControleAWB;

type
  TControleAWBControl = class
  private
    FControleAWB: TControleAWB;
  public
    constructor Create;
    destructor Destroy; override;
    function Gravar: Boolean;
    function Localizar(aParam: array of variant): TFDQuery;
    function GetId(): Integer;

    property ControleAWB: TControleAWB read FControleAWB write FControleAWB;
  end;

implementation



{ TControleAWBControl }


constructor TControleAWBControl.Create;
begin
  FControleAWB := TControleAWB.Create;
end;

destructor TControleAWBControl.Destroy;
begin
  FControleAWB.Free;
  inherited;
end;

function TControleAWBControl.GetId: Integer;
begin
  Result := FControleAWB.GetID();
end;

function TControleAWBControl.Gravar: Boolean;
begin
  Result := FControleAWB.Gravar();
end;

function TControleAWBControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FControleAWB.Localizar(aParam);
end;

end.
