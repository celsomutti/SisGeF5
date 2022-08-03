unit Controller.SisGeFOrderServices;

interface

uses Model.SisGeFOrderServices;

type
  TSisGeFOrderServicesController = class
    private
      FOS : TSisGeFOrderServices;
    public
      constructor Create;
      destructor  Destroy; override;
      property OS : TSisGeFOrderServices read FOS write FOS;

      function Search(aParam: array of variant): boolean;
      function Save(): boolean;
      function SetupClass(): boolean;
      function GetId(): integer;
      function Validade(): boolean;
  end;

implementation

{ TSisGeFOrderServicesController }

constructor TSisGeFOrderServicesController.Create;
begin
  FOS := TSisGeFOrderServices.Create;
end;

destructor TSisGeFOrderServicesController.Destroy;
begin
  FOs.Free;
  inherited;
end;

function TSisGeFOrderServicesController.GetId: integer;
begin
  Result := GetId;
end;

function TSisGeFOrderServicesController.Save: boolean;
begin
  Result := FOS.Save;
end;

function TSisGeFOrderServicesController.Search(aParam: array of variant): boolean;
begin
  Result := FOS.Search(aParam);
end;

function TSisGeFOrderServicesController.SetupClass: boolean;
begin
  Result := FOS.SetupClass;
end;

function TSisGeFOrderServicesController.Validade: boolean;
begin
  Result := FOS.Validade();
end;

end.
