unit Controller.SisGeFFuncionariosDocumentosRH;

interface

  uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.SisGeFFuncionariosDocumentosRH;

  type
    TFuncionariosDocumentosRHController = class
    private
    public
      FDocumentos : TFuncionariosDocumentoeRHModel;

      Constructor Create();
      function    CustomSearch(aParams: array of string): boolean;
      function    SaveRecord  ()                        : boolean;
      function    SetupRecord ()                        : boolean;

    end;

implementation

{ TFuncionariosDocumentosRHController }

constructor TFuncionariosDocumentosRHController.Create;
begin
  FDocumentos := TFuncionariosDocumentoeRHModel.Create;
end;

function TFuncionariosDocumentosRHController.CustomSearch(aParams: array of string): boolean;
begin
  Result := FDocumentos.CustomSearch(aParams);
end;

function TFuncionariosDocumentosRHController.SaveRecord: boolean;
begin
  Result := FDocumentos.SaveRecord;
end;

function TFuncionariosDocumentosRHController.SetupRecord: boolean;
begin
  Result := FDocumentos.SetupRecords;
end;

end.
