unit Control.PlanilhaRoteirosExpressas;

interface

uses Model.PlanilhaRoteirosExpressas, Generics.Collections, System.SysUtils;

type
  TPlanilhaRoteirosExpressasControl = class
  private
    FPlanilha : TPlanilhaRoteiroExpressas;
  public
    constructor Create();
    destructor Destroy(); override;
    property Planilha: TPlanilhaRoteiroExpressas read FPlanilha write FPlanilha;
    function GetPlanilha(sFile: String): Boolean;
  end;

implementation

{ TPlanilhaRoteirosExpressasControl }

constructor TPlanilhaRoteirosExpressasControl.Create;
begin
  FPlanilha := TPlanilhaRoteiroExpressas.Create;
end;

destructor TPlanilhaRoteirosExpressasControl.Destroy;
begin
  FPlanilha.Free;
  inherited;
end;

function TPlanilhaRoteirosExpressasControl.GetPlanilha(sFile: String): Boolean;
begin
  Result := FPlanilha.GetPlanilha(sFile);
end;

end.
