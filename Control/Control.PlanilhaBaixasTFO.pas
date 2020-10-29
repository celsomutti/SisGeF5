unit Control.PlanilhaBaixasTFO;

interface

uses Model.PlanilhaBaixasTFO, System.SysUtils, Generics.Collections;

type
  TPlanilhaBaixasTFOControl = class
  private
    FPlanilha: TPlanilhaBaixasTFO;
  public
    constructor Create();
    destructor Destroy(); override;
    function GetPlanilha(sFile: String): boolean;
    property Planilha: TPlanilhaBaixasTFO read FPlanilha write FPlanilha;
  end;

implementation

{ TPlanilhaBaixasTFOControl }

constructor TPlanilhaBaixasTFOControl.Create;
begin
  FPlanilha := TPlanilhaBaixasTFO.Create;
end;

destructor TPlanilhaBaixasTFOControl.Destroy;
begin
  FPlanilha.Free;
  inherited;
end;

function TPlanilhaBaixasTFOControl.GetPlanilha(sFile: String): boolean;
begin
  Result := FPlanilha.GetPlanilha(sFile);
end;

end.
