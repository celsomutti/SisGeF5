unit Controller.SisGeFCategorias;

interface

  uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.SisgeFCategorias;

  type
    TCategoriasController = class
    private
    public
      FCategorias : TCategoriasModel;
      Constructor Create();
      function    GetNextID   (sIdName: string)         : Integer;
      function    Search      (aParams: array of string): boolean;
      function    CustomSearch(aParams: array of string): boolean;
      function    SaveRecord  ()                        : boolean;
      function    SetupRecord ()                        : boolean;

    end;

implementation

{ TCategoriasController }

constructor TCategoriasController.Create;
begin
  FCategorias := TCategoriasModel.Create;
end;

function TCategoriasController.CustomSearch(aParams: array of string): boolean;
begin
  Result := FCategorias.CustomSearch(aParams);
end;

function TCategoriasController.GetNextID(sIdName: string): Integer;
begin
  Result := FCategorias.GetNextID(sIdName);
end;

function TCategoriasController.SaveRecord: boolean;
begin
  Result :=  FCategorias.SaveRecord();
end;

function TCategoriasController.Search(aParams: array of string): boolean;
begin
  Result := FCategorias.Search(aParams);
end;

function TCategoriasController.SetupRecord: boolean;
begin
  Result := FCategorias.SetupRecords();
end;

end.
