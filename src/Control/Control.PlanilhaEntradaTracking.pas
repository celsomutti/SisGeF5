unit Control.PlanilhaEntradaTracking;

interface

uses Model.PlanilhaEntradaTracking;

type
  TPlanilhaEntradaTrackingController = class
      private
      FPlanilha: TPlanilhaEntradaTracking;
    public
      constructor Create();
      destructor Destroy(); override;
      function GetPlanilha(sFile: String): boolean;
      property Planilha: TPlanilhaEntradaTracking read FPlanilha write FPlanilha;
  end;

implementation

{ TPlanilhaEntradaTrackingController }

constructor TPlanilhaEntradaTrackingController.Create;
begin
  FPlanilha := TPlanilhaEntradaTracking.Create;
end;

destructor TPlanilhaEntradaTrackingController.Destroy;
begin
  FPlanilha.Free;
  inherited;
end;

function TPlanilhaEntradaTrackingController.GetPlanilha(sFile: String): boolean;
begin
  Result := FPlanilha.GetPlanilha(sFile);
end;

end.
