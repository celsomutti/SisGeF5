unit Control.PlanilhaRespostaCTNC;

interface

uses System.SysUtils, Generics.Collections, Model.PlanilhaRespostaCTNC;

type
  TPlanilhaRespostaCTNCControl = class
  private
    FPlanilha: TPlanilhaRespostaCTNC;
  public
    constructor Create();
    destructor Destroy(); override;
    function GetPlanilha(sFile: String): TObjectList<TPlanilhaRespostaCTNC>;
  end;

implementation

{ TPlanilhaRespostaCTNCControl }

constructor TPlanilhaRespostaCTNCControl.Create;
begin
  FPlanilha := TPlanilhaRespostaCTNC.Create;
end;

destructor TPlanilhaRespostaCTNCControl.Destroy;
begin
  FPlanilha.Free;
  inherited;
end;

function TPlanilhaRespostaCTNCControl.GetPlanilha(sFile: String): TObjectList<TPlanilhaRespostaCTNC>;
begin
  Result := FPlanilha.GetPlanilha(sFile);
end;

end.
