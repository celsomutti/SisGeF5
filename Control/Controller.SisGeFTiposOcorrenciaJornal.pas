unit Controller.SisGeFTiposOcorrenciaJornal;

interface

uses Model.SisGeFTiposOcorrenciaJornal;

type
  TControllerSisGeFTiposOcorrenciaJornal = class
    private
      FTipos: TModelSisGeFTiposOcorrenciaJornal;
    public

      property Tipos: TModelSisGeFTiposOcorrenciaJornal read FTipos write FTipos;

      constructor Create;
      destructor Destroy; override;
      function Search(aParam: array of variant): boolean;
  end;

implementation

{ TControllerSisGeFTiposOcorrenciaJornal }

constructor TControllerSisGeFTiposOcorrenciaJornal.Create;
begin
  FTipos := TModelSisGeFTiposOcorrenciaJornal.Create;
end;

destructor TControllerSisGeFTiposOcorrenciaJornal.Destroy;
begin
  FTipos.Free;
  inherited;
end;

function TControllerSisGeFTiposOcorrenciaJornal.Search(aParam: array of variant): boolean;
begin
  Result := FTipos.Search(aParam);
end;

end.
