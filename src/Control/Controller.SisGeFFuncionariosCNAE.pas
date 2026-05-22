unit Controller.SisGeFFuncionariosCNAE;

interface
  uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.SisGeFFuncionariosCNAE;

  type
    TFuncionariosCNAEController = class
    private
    public
      FCNAE : TFuncionariosCNAEModel;

      Constructor Create();
      function    CustomSearch(aParams: array of string): boolean;
      function    SaveRecord  ()                        : boolean;
      function    SetupRecord ()                        : boolean;
  end;

implementation

{ TFuncionariosCNAEController }

constructor TFuncionariosCNAEController.Create;
begin
  FCNAE := TFuncionariosCNAEModel.Create;
end;

function TFuncionariosCNAEController.CustomSearch(aParams: array of string): boolean;
begin
  Result := FCNAE.CustomSearch(aParams);
end;

function TFuncionariosCNAEController.SaveRecord: boolean;
begin
  Result := FCNAE.SaveRecord;
end;

function TFuncionariosCNAEController.SetupRecord: boolean;
begin
  Result := FCNAE.SetupRecords;
end;

end.
