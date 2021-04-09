unit Control.CapaDIRECT;

interface

uses Model.CapaDIRECT, Generics.Collections, System.SysUtils;

type
  TCapaDirectControl = Class
  private
    FPlanilha : TCapaDirect;
  public
    constructor Create();
    destructor Destroy(); override;
    property Planilha: TCapaDirect read FPlanilha write FPlanilha;
    function GetPlanilha(sFile: String): Boolean;
  End;

implementation

{ TCapaDirectControl }

constructor TCapaDirectControl.Create;
begin
  FPlanilha := TCapaDirect.Create;
end;

destructor TCapaDirectControl.Destroy;
begin
  FPlanilha.Free;
  inherited;
end;

function TCapaDirectControl.GetPlanilha(sFile: String): Boolean;
begin
  Result := FPlanilha.GetPlanilha(sFile);
end;

end.
