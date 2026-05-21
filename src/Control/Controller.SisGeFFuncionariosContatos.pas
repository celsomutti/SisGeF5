unit Controller.SisGeFFuncionariosContatos;

interface

  uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.SisGeFFuncionariosContatos;

    type
    TFuncionariosContatosController = class
    private
      FContatos: TFuncionariosContatosModel;
    public
      Constructor Create();

      function    CustomSearch(aParams: array of string): boolean;
      function    SaveRecord  ()                        : boolean;
      function    SetupRecord ()                        : boolean;

      property    Contatos : TFuncionariosContatosModel read FContatos write FContatos;

    end;


implementation

{ TFuncionariosContatosController }

constructor TFuncionariosContatosController.Create;
begin
  FContatos := TFuncionariosContatosModel.Create;
end;

function TFuncionariosContatosController.CustomSearch(aParams: array of string): boolean;
begin
  Result := FContatos.CustomSearch(aParams);
end;

function TFuncionariosContatosController.SaveRecord: boolean;
begin
  Result := FContatos.SaveRecord;
end;

function TFuncionariosContatosController.SetupRecord: boolean;
begin
  Result := FContatos.SetupRecords;
end;

end.
