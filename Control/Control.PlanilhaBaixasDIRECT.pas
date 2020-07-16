unit Control.PlanilhaBaixasDIRECT;

interface

uses System.SysUtils, Generics.Collections, Model.PlanilhaBaixasDIRECT;

type
  TPlanilhaBaixasDIRECTControl = class
  private
    FPlanilha: TPlanilhaBaixasDIRECT;
  public
    constructor Create();
    destructor Destroy(); override;
    function GetPlanilha(sFile: String): TObjectList<TPlanilhaBaixasDIRECT>;
  end;

implementation

{ TPlanilhaBaixasDIRECTControl }

constructor TPlanilhaBaixasDIRECTControl.Create;
begin
  FPlanilha := TPlanilhaBaixasDIRECT.Create;
end;

destructor TPlanilhaBaixasDIRECTControl.Destroy;
begin
  FPlanilha.Create;
  inherited;
end;

function TPlanilhaBaixasDIRECTControl.GetPlanilha(sFile: String): TObjectList<TPlanilhaBaixasDIRECT>;
begin
  Result := FPlanilha.GetPlanilha(sFile);
end;

end.
