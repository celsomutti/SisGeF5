unit Control.CadastroGR;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, Model.CadastroGR;

type
  TCadastroGRControl = class
  private
    FGR : TCadastroGR;
  public
    constructor Create;
    destructor Destroy; override;
    property GR: TCadastroGR read FGR write FGR;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
  end;

implementation

{ TCadastroGRControl }

constructor TCadastroGRControl.Create;
begin
  FGR := TCadastroGR.Create;
end;

destructor TCadastroGRControl.Destroy;
begin
  FGR.Free;
  inherited;
end;

function TCadastroGRControl.Gravar: Boolean;
begin
  Result := False;
  Result := FGR.Gravar;
end;

function TCadastroGRControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FGR.Localizar(aParam);
end;

end.
