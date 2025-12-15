unit Controller.SisGeFContratadosCNAE;

interface

  uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.SisGeFContratadosCNAE;

  type
    TCadastroContratadosCNAEController = class
    private
    public
      FCNAE : TContratadosCNAEModel;

      Constructor Create();
      function    GetNextID   (sIdName: string)         : Integer;
      function    Search      (aParams: array of string): boolean;
      function    CustomSearch(aParams: array of string): boolean;
      function    SaveRecord  ()                        : boolean;
      function    SetupRecord ()                        : boolean;
    end;

implementation

{ TCadastroContratadosCNAEController }

constructor TCadastroContratadosCNAEController.Create;
begin
  FCNAE := TContratadosCNAEModel.Create();
end;

function TCadastroContratadosCNAEController.CustomSearch(aParams: array of string): boolean;
begin
  Result := FCNAE.CustomSearch(aParams);
end;

function TCadastroContratadosCNAEController.GetNextID(sIdName: string): Integer;
begin
  Result := FCNAE.GetNextID(sIdName);
end;

function TCadastroContratadosCNAEController.SaveRecord: boolean;
begin
  Result := FCNAE.SaveRecord();
end;

function TCadastroContratadosCNAEController.Search(aParams: array of string): boolean;
begin
  Result := FCNAE.Search(aParams);
end;

function TCadastroContratadosCNAEController.SetupRecord: boolean;
begin
  Result := FCNAE.SetupRecords();
end;

end.
