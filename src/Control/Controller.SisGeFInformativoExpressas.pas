unit Controller.SisGeFInformativoExpressas;

interface

  uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.SisGeFInformativosExpressas;

  type
    TInformativoExpressasController = class
      private
      public
        FInformativo : TInformarivosExpressas;

        Constructor Create();
        function    Search      (aParams: array of string): boolean;
        function    CustomSearch(aParams: array of string): boolean;
        function    SaveRecord  ()                        : boolean;
        function    SetupRecords()                        : boolean;

    end;


implementation

{ TInformativoExpressasController }

constructor TInformativoExpressasController.Create;
begin
  FInformativo := TInformarivosExpressas.Create
end;

function TInformativoExpressasController.CustomSearch(aParams: array of string): boolean;
begin
  Result := FInformativo.CustomSearch(aParams);
end;

function TInformativoExpressasController.SaveRecord: boolean;
begin
  Result := FInformativo.SaveRecord;
end;

function TInformativoExpressasController.Search(aParams: array of string): boolean;
begin
  Result := FInformativo.Search(aParams);
end;

function TInformativoExpressasController.SetupRecords: boolean;
begin
  Result := FInformativo.SetupRecords;
end;

end.
