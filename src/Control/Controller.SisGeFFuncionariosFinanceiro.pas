unit Controller.SisGeFFuncionariosFinanceiro;

interface

  uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.SisGeFFuncionariosFinaceiro;

  type
    TFuncionariosFinanceiroController = class
    private

    public
      FFinanceiro : TFuncionariosFinanceiroModel;

      Constructor Create();
      function    CustomSearch(aParams: array of string): boolean;
      function    SaveRecord  ()                        : boolean;
      function    SetupRecord ()                        : boolean;
    end;

implementation

{ TFuncionariosFinanceiroController }

constructor TFuncionariosFinanceiroController.Create;
begin
  FFinanceiro := TFuncionariosFinanceiroModel.Create;
end;

function TFuncionariosFinanceiroController.CustomSearch(aParams: array of string): boolean;
begin
  Result := FFinanceiro.CustomSearch(aParams);
end;

function TFuncionariosFinanceiroController.SaveRecord: boolean;
begin
  Result := FFinanceiro.SaveRecord;
end;

function TFuncionariosFinanceiroController.SetupRecord: boolean;
begin
  Result := FFinanceiro.SetupRecords;
end;

end.
