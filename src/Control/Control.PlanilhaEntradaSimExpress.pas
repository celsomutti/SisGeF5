unit Control.PlanilhaEntradaSimExpress;

interface

uses System.SysUtils, Generics.Collections, Model.PlanilhaEntradaSIMExpress;

type
  TPlanilhaEntradaSimExpressControl = class
  private
    FPlanilha: TPlanilhaEntradaSIMExpress;
  public
    constructor Create();
    destructor Destroy(); override;
    property Planilha: TPlanilhaEntradaSIMExpress read Fplanilha write FPlanilha;
    function GetPlanilha(sFile: String): boolean;
  end;

implementation

{ TPlanilhaEntradaSimExpressControl }

constructor TPlanilhaEntradaSimExpressControl.Create;
begin
  FPlanilha := TPlanilhaEntradaSIMExpress.Create;
end;

destructor TPlanilhaEntradaSimExpressControl.Destroy;
begin
  FPlanilha.Create;
  inherited;
end;

function TPlanilhaEntradaSimExpressControl.GetPlanilha(sFile: String): boolean;
begin
  Result := FPlanilha.GetPlanilha(sFile);
end;

end.
