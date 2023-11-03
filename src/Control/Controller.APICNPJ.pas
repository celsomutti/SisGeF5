unit Controller.APICNPJ;

interface

uses Model.APICNPJ;

  type
    TAPICNPJController = class
  private
    FAPICNPJ: TAPICNPJ;

    public

      constructor Create;
      destructor Destroy; override;

      property APICNPJ: TAPICNPJ read FAPICNPJ write FAPICNPJ;

      function GetCNPJ(sCNPJ: string): boolean;

  end;

implementation

{ TAPICNPJController }

constructor TAPICNPJController.Create;
begin
  APICNPJ := TAPICNPJ.Create;
end;

destructor TAPICNPJController.Destroy;
begin
  APICNPJ.Free;
  inherited;
end;

function TAPICNPJController.GetCNPJ(sCNPJ: string): boolean;
begin
  Result := APICNPJ.GetCNPJ(sCNPJ);
end;

end.
