unit Controller.SisGeFContratadosEnderecos;

interface

uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.SisGeFContratadosEnderecos;

  type
    TContratadosEnderecosController = class
    private
      FEnderecos : TContratadosEnderecosModel;
    public
      Constructor Create();
      function    GetNextID   (sIdName: string)         : Integer;
      function    Search      (aParams: array of string): boolean;
      function    CustomSearch(aParams: array of string): boolean;
      function    SaveRecord  ()                        : boolean;
      function    SetupRecord ()                        : boolean;
    end;

implementation

{ TContratadosEnderecosController }

constructor TContratadosEnderecosController.Create;
begin
  FEnderecos := TContratadosEnderecosModel.Create;
end;

function TContratadosEnderecosController.CustomSearch(aParams: array of string): boolean;
begin
  Result := FEnderecos.CustomSearch(aParams);
end;

function TContratadosEnderecosController.GetNextID(sIdName: string): Integer;
begin
  Result := FEnderecos.GetNextID(sIdName);
end;

function TContratadosEnderecosController.SaveRecord: boolean;
begin
  Result := FEnderecos.SaveRecord;
end;

function TContratadosEnderecosController.Search(aParams: array of string): boolean;
begin
  Result := FEnderecos.Search(aParams);
end;

function TContratadosEnderecosController.SetupRecord: boolean;
begin
  Result := FEnderecos.SetupRecords;
end;

end.
