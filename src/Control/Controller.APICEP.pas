unit Controller.APICEP;

interface

uses Model.APICEP;

type
  TAPICEPController = class
  private
    FAPICEP: TAPICEP;
  public
    constructor Create;
    destructor Destroy; override;

    property APICEP: TAPICEP read FAPICEP write FAPICEP;

    function GetAdressByCEP(sCEP: string): boolean;

  end;

implementation

{ TAPICEPController }

constructor TAPICEPController.Create;
begin
  FAPICEP := TAPICEP.Create;
end;

destructor TAPICEPController.Destroy;
begin
  FAPICEP.Free;
  inherited;
end;

function TAPICEPController.GetAdressByCEP(sCEP: string): boolean;
begin
  Result := FAPICEP.GetAdressByCEP(sCEP);
end;

end.
