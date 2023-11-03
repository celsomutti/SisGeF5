unit Control.PlanilhaEntradaDIRECT;

interface

uses Model.PlanilhaEntradaDIRECT;

type
  TPlanilhaEntradaDIRECTControl = class
    private
      FPlanilha: TPlanilhaEntradaDIRECT;
    public
      constructor Create();
      destructor Destroy(); override;
      function GetPlanilha(sFile: String): boolean;
      property Planilha: TPlanilhaEntradaDIRECT read FPlanilha write FPlanilha;
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

function TPlanilhaEntradaDIRECTControl.GetPlanilha(sFile: String): Boolean;
begin
  Result := FPlanilha.GetPlanilha(sFile);
end;

end.
