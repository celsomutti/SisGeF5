unit Controller.SisGeFContratadosRepresentantes;

interface

uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.SisGeFContratadosRepresentantes;

  type
    TContratadosRepresentanteController = class
    private

    public
      FRepresentante : TContratadosRepresentantesModel;

      Constructor Create();
      function    GetNextID   (sIdName: string)         : Integer;
      function    Search      (aParams: array of string): boolean;
      function    CustomSearch(aParams: array of string): boolean;
      function    SaveRecord  ()                        : boolean;
      function    SetupRecord ()                        : boolean;
    end;


implementation

{ TContratadosRepresentanteController }

constructor TContratadosRepresentanteController.Create;
begin
  FRepresentante := TContratadosRepresentantesModel.Create;
end;

function TContratadosRepresentanteController.CustomSearch(aParams: array of string): boolean;
begin
  Result := FRepresentante.CustomSearch(aParams);
end;

function TContratadosRepresentanteController.GetNextID(sIdName: string): Integer;
begin
  Result := FRepresentante.GetNextID(sIdName);
end;

function TContratadosRepresentanteController.SaveRecord: boolean;
begin
  Result := FRepresentante.SaveRecord;
end;

function TContratadosRepresentanteController.Search(aParams: array of string): boolean;
begin
  Result := FRepresentante.Search(aParams);
end;

function TContratadosRepresentanteController.SetupRecord: boolean;
begin
  Result := FRepresentante.SetupRecords;
end;

end.
