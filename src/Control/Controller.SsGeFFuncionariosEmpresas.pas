unit Controller.SsGeFFuncionariosEmpresas;

interface

  uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.SisGeFFuncionariosEmpresas;

  type
    TFuncionariosEmpresasController = class
    private
    public
      FEmpresas : TFuncionariosEmpresasModel;

      Constructor Create();
      function    CustomSearch(aParams: array of string): boolean;
      function    SaveRecord  ()                        : boolean;
      function    SetupRecord ()                        : boolean;

    end;

implementation

{ TFuncionariosEmpresasController }

constructor TFuncionariosEmpresasController.Create;
begin
  FEmpresas := TFuncionariosEmpresasModel.Create;
end;

function TFuncionariosEmpresasController.CustomSearch(aParams: array of string): boolean;
begin
  Result := FEmpresas.CustomSearch(aParams);
end;

function TFuncionariosEmpresasController.SaveRecord: boolean;
begin
  Result := FEmpresas.SaveRecord;
end;

function TFuncionariosEmpresasController.SetupRecord: boolean;
begin
  Result := FEmpresas.SetupRecords;
end;

end.
