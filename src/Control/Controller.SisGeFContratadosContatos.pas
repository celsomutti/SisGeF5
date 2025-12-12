unit Controller.SisGeFContratadosContatos;

interface
  uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.SisGeFContratadosContatos;

  type
    TContratadosContatosController = class
    private
    public
      FContatos : TContratadosContatosModel;

      Constructor Create();
      function    GetNextID   (sIdName: string)         : Integer;
      function    Search      (aParams: array of string): boolean;
      function    CustomSearch(aParams: array of string): boolean;
      function    SaveRecord  ()                        : boolean;
      function    SetupRecord ()                        : boolean;
    end;

implementation

{ TContratadosContatosController }

constructor TContratadosContatosController.Create;
begin
  FContatos := TContratadosContatosModel.Create();
end;

function TContratadosContatosController.CustomSearch(aParams: array of string): boolean;
begin
  Result := FContatos.CustomSearch(aParams);
end;

function TContratadosContatosController.GetNextID(sIdName: string): Integer;
begin
  Result := FContatos.GetNextID(sIdName);
end;

function TContratadosContatosController.SaveRecord: boolean;
begin
    Result := FContatos.SaveRecord();
end;

function TContratadosContatosController.Search(aParams: array of string): boolean;
begin
  Result := FContatos.Search(aParams);
end;

function TContratadosContatosController.SetupRecord: boolean;
begin
    Result := FContatos.SetupRecords();
end;

end.
