unit Controller.SisGeFCadastroContratados;

interface

  uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.SisGeFCadastroContratados;

  type
    TCadastroContratadosController = class
    private
      FContratados : TCadastroContratadosModel;
    public
      Constructor Create();
      function    GetNextID   (sIdName: string)         : Integer;
      function    Search      (aParams: array of string): boolean;
      function    CustomSearch(aParams: array of string): boolean;
      function    SaveRecord  ()                        : boolean;
      function    SetupRecord ()                        : boolean;
    end;

implementation

{ TCadastroContratadosController }

constructor TCadastroContratadosController.Create;
begin
  FContratados := TCadastroContratadosController.Create;
end;

function TCadastroContratadosController.CustomSearch(aParams: array of string): boolean;
begin
  Result := FContratados.CustomSearch(aParams);
end;

function TCadastroContratadosController.GetNextID(sIdName: string): Integer;
begin
  Result := FContratados.GetNextID(sIdName);
end;

function TCadastroContratadosController.SaveRecord: boolean;
begin
  Result :=  FContratados.SaveRecord();
end;

function TCadastroContratadosController.Search(aParams: array of string): boolean;
begin
  Result := FContratados.Search(aParams);
end;

function TCadastroContratadosController.SetupRecord: boolean;
begin
  Result := FContratados.SetupRecords();
end;

end.
