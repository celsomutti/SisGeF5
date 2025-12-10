unit Controller.SisGeFContratadosFinanceiro;

interface

uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.SisGeFContratadosFinanceiro;

  type
    TContratadosFinanceiroController = class
    private
      FFinanceiro : TContratadosFinanceiroModel;
    public
      Constructor Create();
      function    GetNextID   (sIdName: string)         : Integer;
      function    Search      (aParams: array of string): boolean;
      function    CustomSearch(aParams: array of string): boolean;
      function    SaveRecord  ()                        : boolean;
      function    SetupRecord ()                        : boolean;
    end;

implementation

{ TContratadosFinanceiroController }

constructor TContratadosFinanceiroController.Create;
begin
  FFinanceiro := TContratadosFinanceiroModel.Create();
end;

function TContratadosFinanceiroController.CustomSearch(aParams: array of string): boolean;
begin
  Result := FFinanceiro.CustomSearch(aParams);
end;

function TContratadosFinanceiroController.GetNextID(sIdName: string): Integer;
begin
    Result := FFinanceiro.GetNextID(sIdName);
end;

function TContratadosFinanceiroController.SaveRecord: boolean;
begin
    Result := FFinanceiro.SaveRecord;
end;

function TContratadosFinanceiroController.Search(aParams: array of string): boolean;
begin
    Result := FFinanceiro.Search(aParams);
end;

function TContratadosFinanceiroController.SetupRecord: boolean;
begin
    Result := FFinanceiro.SetupRecords;
end;

end.
