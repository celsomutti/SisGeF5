unit Controller.SisGeFFuncionarios;

interface
  uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.SisGeFFuncionarios;

  type
    TFuncionariosController= class
    private
      FFuncionario: TFuncionariosModel;
    public
      property Funcionario: TFuncionariosModel read FFuncionario write FFuncionario;
      Constructor Create();
      function    CustomSearch(aParams: array of string): boolean;
      function    SaveRecord  ()                        : boolean;
      function    SetupRecord ()                        : boolean;

  end;

implementation

{ TFuncionariosController }

constructor TFuncionariosController.Create;
begin
  FFuncionario := TFuncionariosModel.Create;
end;

function TFuncionariosController.CustomSearch(aParams: array of string): boolean;
begin
  Result := FFuncionario.CustomSearch(aParams);
end;

function TFuncionariosController.SaveRecord: boolean;
begin
  Result := FFuncionario.SaveRecord;
end;

function TFuncionariosController.SetupRecord: boolean;
begin
  Result := FFuncionario.SetupRecords;
end;

end.
