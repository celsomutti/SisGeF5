unit Control.PlanilhaEntradaDIRECT;

interface

uses System.SysUtils, Generics.Collections, Model.PlanilhaEntradaDIRECT;

type
  TPlanilhaEntradaDIRECTControl = class
  private
    FPlanilha: TPlanilhaEntradaDIRECT;
  public
    constructor Create();
    destructor Destroy(); override;
    function GetPlanilha(sFile: String): TObjectList<TPlanilhaEntradaDIRECT>;
  end;

implementation

{ TPlanilhaEntradaDIRECTControl }

constructor TPlanilhaEntradaDIRECTControl.Create;
begin
  FPlanilha := TPlanilhaEntradaDIRECT.Create;
end;

destructor TPlanilhaEntradaDIRECTControl.Destroy;
begin
  FPlanilha.Create;
  inherited;
end;

function TPlanilhaEntradaDIRECTControl.GetPlanilha(sFile: String): TObjectList<TPlanilhaEntradaDIRECT>;
begin
  Result := FPlanilha.GetPlanilha(sFile);
end;

end.
