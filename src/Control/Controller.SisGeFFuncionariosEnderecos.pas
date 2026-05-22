unit Controller.SisGeFFuncionariosEnderecos;

interface

  uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.SisGeFFuncionariosEnderecos;

  type TFuncionariosEnderecosController = class
        private
    public
      FEnderecos : TFuncionariosEnderecosModel;

      Constructor Create();
      function    CustomSearch(aParams: array of string): boolean;
      function    SaveRecord  ()                        : boolean;
      function    SetupRecord ()                        : boolean;
  end;
implementation

{ TFuncionariosEnderecosController }

constructor TFuncionariosEnderecosController.Create;
begin
  FEnderecos := TFuncionariosEnderecosModel.Create;
end;

function TFuncionariosEnderecosController.CustomSearch(aParams: array of string): boolean;
begin
  Result := FEnderecos.CustomSearch(aParams);
end;

function TFuncionariosEnderecosController.SaveRecord: boolean;
begin
  Result := FEnderecos.SaveRecord;
end;

function TFuncionariosEnderecosController.SetupRecord: boolean;
begin
  Result := Fenderecos.SetupRecords;
end;

end.
