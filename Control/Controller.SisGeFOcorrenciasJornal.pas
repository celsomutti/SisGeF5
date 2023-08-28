unit Controller.SisGeFOcorrenciasJornal;

interface

uses Model.SisGeFOcorrenciasJornal;

type
  TControllerSisGeFOcorrenciasJornal = class
  private
    FOcorrencias : TModelSisGeFOcorrenciasJotnal;
  public
    constructor Create;
    Destructor Destroy; override;

    property Ocorencias: TModelSisGeFOcorrenciasJotnal read FOcorrencias;

    function Search(aParam: array of variant): boolean;
    function Save(): boolean;
    function GetField(sField: String; sKey: String; sKeyValue: String): String;
    function SetupClass(): boolean;

  end;

implementation

{ TControllerSisGeFOcorrenciasJornal }

constructor TControllerSisGeFOcorrenciasJornal.Create;
begin
  FOcorrencias := TModelSisGeFOcorrenciasJotnal.Create;
end;

destructor TControllerSisGeFOcorrenciasJornal.Destroy;
begin
  FOcorrencias.Free;
  inherited;
end;

function TControllerSisGeFOcorrenciasJornal.GetField(sField, sKey, sKeyValue: String): String;
begin
  Result := FOcorrencias.GetField(sField, sKey, sKeyValue);
end;

function TControllerSisGeFOcorrenciasJornal.Save: boolean;
begin
  Result := FOcorrencias.Save;
end;

function TControllerSisGeFOcorrenciasJornal.Search(aParam: array of variant): boolean;
begin
  Result := FOcorrencias.Search(aParam);
end;

function TControllerSisGeFOcorrenciasJornal.SetupClass: boolean;
begin
  Result := FOcorrencias.SetupClass;
end;

end.
