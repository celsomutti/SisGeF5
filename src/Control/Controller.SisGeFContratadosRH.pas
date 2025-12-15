unit Controller.SisGeFContratadosRH;

interface

uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.SisGeFContratadosRH;

  type
    TContratadosRHController = class
    private
    public
      FRH : TContratadosRHModel;

      Constructor Create();
      function    GetNextID   (sIdName: string)         : Integer;
      function    Search      (aParams: array of string): boolean;
      function    CustomSearch(aParams: array of string): boolean;
      function    SaveRecord  ()                        : boolean;
      function    SetupRecord ()                        : boolean;
    end;

implementation

{ TContratadosRHController }

constructor TContratadosRHController.Create;
begin
  FRH := TContratadosRHModel.Create;
end;

function TContratadosRHController.CustomSearch(aParams: array of string): boolean;
begin
  Result := FRH.CustomSearch(aParams);
end;

function TContratadosRHController.GetNextID(sIdName: string): Integer;
begin
  Result := FRH.GetNextID(sIdName);
end;

function TContratadosRHController.SaveRecord: boolean;
begin
  Result := FRH.SaveRecord;
end;

function TContratadosRHController.Search(aParams: array of string): boolean;
begin
  Result := FRH.Search(aParams);
end;

function TContratadosRHController.SetupRecord: boolean;
begin
  Result := FRH.SetupRecords;
end;

end.
