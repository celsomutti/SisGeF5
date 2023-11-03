unit Control.LogradourosCEP;

interface

uses FireDAC.Comp.Client, Common.ENum, Model.LogradourosCEP;

type
  TLogradourosCEPControl = class
  private
    FLogradourosCEP: TLogradouroCEP;
  public
    constructor Create;
    destructor Destroy; override;
    function Gravar: Boolean;
    function Localizar(aParam: array of variant): TFDQuery;
    function GetId(): Integer;
    property LogradourosCEP: TLogradouroCEP read FLogradourosCEP write FLogradourosCEP;
  end;

implementation

{ TLogradourosCEPControl }

constructor TLogradourosCEPControl.Create;
begin
  FLogradourosCEP := TLogradouroCEP.Create;
end;

destructor TLogradourosCEPControl.Destroy;
begin
  FLogradourosCEP.Free;
  inherited;
end;

function TLogradourosCEPControl.GetId: Integer;
begin
  Result := FLogradourosCEP.GetID;
end;

function TLogradourosCEPControl.Gravar: Boolean;
begin
  Result := FLogradourosCEP.Gravar;
end;

function TLogradourosCEPControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FLogradourosCEP.Localizar(aParam);
end;

end.
