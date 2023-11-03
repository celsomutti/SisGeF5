unit Control.PlanilhaEntradaENGLOBA;

interface

uses System.SysUtils, Generics.Collections, Model.PlanilhaEntradaENGLOBA;

type
  TPlanilhaEntradaENGLOBAControl = class
  private
    FPlanilha: TPlanilhaEntradaENGLOBA;
  public
    constructor Create();
    destructor Destroy(); override;
    property Planilha: TPlanilhaEntradaENGLOBA read Fplanilha write FPlanilha;
    function GetPlanilha(sFile: String): boolean;
  end;

implementation

{ TPlanilhaEntradaENGLOBAControl }

constructor TPlanilhaEntradaENGLOBAControl.Create;
begin
  FPlanilha := TPlanilhaEntradAENGLOBA.Create;
end;

destructor TPlanilhaEntradaENGLOBAControl.Destroy;
begin
  FPlanilha.Create;
  inherited;
end;

function TPlanilhaEntradaENGLOBAControl.GetPlanilha(sFile: String): boolean;
begin
  Result := FPlanilha.GetPlanilha(sFile);
end;

end.
