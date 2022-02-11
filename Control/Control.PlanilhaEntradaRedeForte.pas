unit Control.PlanilhaEntradaRedeForte;

interface

uses System.SysUtils, Generics.Collections, Model.PlanilhaEntradaRedeForte;

type
  TPlanilhaEntradaRedeForteControl = class
  private
    FPlanilha: TPlanilhaEntradaRedeForte;
  public
    constructor Create();
    destructor Destroy(); override;
    property Planilha: TPlanilhaEntradaRedeForte read Fplanilha write FPlanilha;
    function GetPlanilha(sFile: String): boolean;
  end;

implementation

{ TPlanilhaEntradaRedeForteControl }

constructor TPlanilhaEntradaRedeForteControl.Create;
begin
  FPlanilha := TPlanilhaEntradaRedeForte.Create;
end;

destructor TPlanilhaEntradaRedeForteControl.Destroy;
begin
  FPlanilha.Create;
  inherited;
end;

function TPlanilhaEntradaRedeForteControl.GetPlanilha(sFile: String): boolean;
begin
  Result := FPlanilha.GetPlanilha(sFile);
end;

end.
