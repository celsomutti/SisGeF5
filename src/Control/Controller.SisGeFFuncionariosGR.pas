unit Controller.SisGeFFuncionariosGR;

interface
  uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.SisGeFFuncionariosGR;

  type
    TFuncionariosGRController = class
    private
    public
      FGR : TFuncionariosGRModel;

      Constructor Create();
      function    CustomSearch(aParams: array of string): boolean;
      function    SaveRecord  ()                        : boolean;
      function    SetupRecord ()                        : boolean;
    end;

implementation

{ TFuncionariosGRController }

constructor TFuncionariosGRController.Create;
begin
  FGR := TFuncionariosGRModel;
end;

function TFuncionariosGRController.CustomSearch(aParams: array of string): boolean;
begin
  Result := CustomSearch(aParams);
end;

function TFuncionariosGRController.SaveRecord: boolean;
begin
  Result := SaveRecord;
end;

function TFuncionariosGRController.SetupRecord: boolean;
begin
  Result := SetupRecord;
end;

end.
