unit Controller.SisGeFContratadosCNAE;

interface

  uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.SisGeFContratadosCNAE;

  type
    TCadastroContratadosController = class
    private
      FCNAE : TContratadosCNAEModel;
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
  FCNAE := TContratadosCNAEModel.Create();
end;

function TCadastroContratadosController.CustomSearch(aParams: array of string): boolean;
begin
  Result := FCNAE.CustomSearch(aParams);
end;

function TCadastroContratadosController.GetNextID(sIdName: string): Integer;
begin
  Result := FCNAE.GetNextID(sIdName);
end;

function TCadastroContratadosController.SaveRecord: boolean;
begin
  Result := FCNAE.SaveRecord();
end;

function TCadastroContratadosController.Search(aParams: array of string): boolean;
begin
  Result := FCNAE.Search(aParams);
end;

function TCadastroContratadosController.SetupRecord: boolean;
begin
  Result := FCNAE.SetupRecords();
end;

end.
