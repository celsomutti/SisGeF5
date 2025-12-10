unit Controller.SisGeFContratadosGR;

interface

uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.SisGeFContratadosGR;

  type
    TContratadosGRController = class
    private
      FGR : TContratadosGRModel;
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
  FGR := TContratadosGRModel.Create;
end;

function TContratadosGRController.CustomSearch(aParams: array of string): boolean;
begin
  Result := FGR.CustomSearch(aParams);
end;

function TContratadosGRController.GetNextID(sIdName: string): Integer;
begin
  Result := FGR.GetNextID(sIdName);
end;

function TContratadosGRController.SaveRecord: boolean;
begin
  Result := FGR.SaveRecord;
end;

function TContratadosGRController.Search(aParams: array of string): boolean;
begin
  Result := FGR.Search(aParams);
end;

function TContratadosGRController.SetupRecord: boolean;
begin
  Result := FGR.SetupRecords;
end;

end.
