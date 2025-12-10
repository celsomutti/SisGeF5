unit Controller.SisGeFContratadosRepresentantes;

interface

uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.SisGeFContratadosRepresentantes;

  type
    TContratadosGRController = class
    private
      FRepresentante : TContratadosRepresentantesModel;
    public
      Constructor Create();
      function    GetNextID   (sIdName: string)         : Integer;
      function    Search      (aParams: array of string): boolean;
      function    CustomSearch(aParams: array of string): boolean;
      function    SaveRecord  ()                        : boolean;
      function    SetupRecord ()                        : boolean;
    end;


implementation

{ TContratadosGRController }

constructor TContratadosGRController.Create;
begin
  FRepresentante := TContratadosRepresentantesModel.Create;
end;

function TContratadosGRController.CustomSearch(aParams: array of string): boolean;
begin
  Result := FRepresentante.CustomSearch(aParams);
end;

function TContratadosGRController.GetNextID(sIdName: string): Integer;
begin
  Result := FRepresentante.GetNextID(sIdName);
end;

function TContratadosGRController.SaveRecord: boolean;
begin
  Result := FRepresentante.SaveRecord;
end;

function TContratadosGRController.Search(aParams: array of string): boolean;
begin
  Result := FRepresentante.Search(aParams);
end;

function TContratadosGRController.SetupRecord: boolean;
begin
  Result := FRepresentante.SetupRecords;
end;

end.
