unit Control.EnderecosBases;

interface

uses System.SysUtils, FireDAC.Comp.Client, Model.EnderecosBases;

type
  TEnderecosBasesControl = class
  private
    FEnderecos: TEnderecosBases;
  public
    constructor Create;
    destructor Destroy; override;
    function Gravar: Boolean;
    function Localizar(aParam: array of variant): TFDQuery;

    property Endereco : TEnderecosBases read FEnderecos write FEnderecos;

 end;


implementation

{ TEnderecosBasesControl }

constructor TEnderecosBasesControl.Create;
begin
  FEnderecos := TEnderecosBases.Create;
end;

destructor TEnderecosBasesControl.Destroy;
begin
  FEnderecos.Free;
  inherited;
end;

function TEnderecosBasesControl.Gravar: Boolean;
begin
  Result := FEnderecos.Gravar();
end;

function TEnderecosBasesControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FEnderecos.Localizar(aParam);
end;

end.
