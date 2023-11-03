unit Control.PlanilhaEntradaSPLOG;

interface

uses System.SysUtils, Generics.Collections, Model.PlanilhaEntradasSPLOG;

type
  TPlanilhaEntradaSPLOGControl = class
  private
    FPlanilha: TPlanilhaEntradaSPLOG;
  public
    constructor Create();
    destructor Destroy(); override;
    function GetPlanilha(sFile: String): TObjectList<TPlanilhaEntradaSPLOG>;
  end;

implementation

{ TPlanilhaEntradaCarriersControl }

constructor TPlanilhaEntradaSPLOGControl.Create;
begin
  FPlanilha := TPlanilhaEntradaSPLOG.Create;
end;

destructor TPlanilhaEntradaSPLOGControl.Destroy;
begin
  FPlanilha.Create;
  inherited;
end;

function TPlanilhaEntradaSPLOGControl.GetPlanilha(sFile: String): TObjectList<TPlanilhaEntradaSPLOG>;
begin
  Result := FPlanilha.GetPlanilha(sFile);
end;

end.
