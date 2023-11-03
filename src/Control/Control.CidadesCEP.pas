unit Control.CidadesCEP;

interface

uses FireDAC.Comp.Client, Common.ENum, Model.CidadesCEP;

type
  TCidadesCEPControl = class
    private
    FCidadesCEP: TCidadesCEP;
  public
    constructor Create;
    destructor Destroy; override;
    function Gravar: Boolean;
    function Localizar(aParam: array of variant): TFDQuery;
    function GetId(): Integer;
    property CidadesCEP: TCidadesCEP read FCidadesCEP write FCidadesCEP;
  end;

implementation

{ TCidadesCEPControl }

constructor TCidadesCEPControl.Create;
begin
  FCidadesCEP := TCidadesCEP.Create;
end;

destructor TCidadesCEPControl.Destroy;
begin
  FCidadesCEP.Free;
  inherited;
end;

function TCidadesCEPControl.GetId: Integer;
begin
  Result := FCidadesCEP.GetID;
end;

function TCidadesCEPControl.Gravar: Boolean;
begin
  Result := FCidadesCEP.Gravar;
end;

function TCidadesCEPControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FCidadesCEP.Localizar(aParam);
end;

end.
