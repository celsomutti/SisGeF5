unit Control.PlanilhaEntradaTFO;

interface

uses Model.PlanilhaEntradaTFO;

type
  TPlanilhaEntradaTFOControl = class
    private
      FPlanilha: TPlanilhaEntradaTFO;
    public
      constructor Create();
      destructor Destroy(); override;
      function GetPlanilha(sFile: String): boolean;
      property Planilha: TPlanilhaEntradaTFO read FPlanilha write FPlanilha;
  end;

implementation

{ TPlanilhaEntradaTFOControl }

constructor TPlanilhaEntradaTFOControl.Create;
begin
  FPlanilha := TPlanilhaEntradaTFO.Create;
end;

destructor TPlanilhaEntradaTFOControl.Destroy;
begin
  FPlanilha.Free;
  inherited;
end;

function TPlanilhaEntradaTFOControl.GetPlanilha(sFile: String): boolean;
begin
  Result := FPlanilha.GetPlanilha(sFile);
end;

end.
