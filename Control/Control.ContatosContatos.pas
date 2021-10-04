unit Control.ContatosContatos;

interface

uses System.SysUtils, FireDAC.Comp.Client, Model.EmpresasContatos;

type
  TEmpresasContatosControls = class
  private
    FContatos : TEmpresasContatos;
  public
    constructor Create;
    destructor Destroy; override;

    function Gravar(): Boolean;
    function Localizar(aParam: array of variant): Boolean;

    property Contatos: TEmpresasContatos read FContatos write FContatos;
  end;

implementation

{ TEmpresasContatosControls }

constructor TEmpresasContatosControls.Create;
begin
  FContatos := TEmpresasContatos.Create;
end;

destructor TEmpresasContatosControls.Destroy;
begin
  FContatos.Free;
  inherited;
end;

function TEmpresasContatosControls.Gravar: Boolean;
begin
  Result := FContatos.Gravar();
end;

function TEmpresasContatosControls.Localizar(aParam: array of variant): Boolean;
begin
  Result := FContatos.Localizar(aParam);
end;

end.
