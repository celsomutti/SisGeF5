unit Control.Estados;

interface

uses System.SysUtils, FireDAC.Comp.Client, Model.Estados;

type
  TEstadosControl = class
  private
    FEstados: TEstados;
  public
    constructor Create;
    destructor Destroy; override;

    function Gravar: Boolean;
    function Pesquisar(aParam: array of variant): TFDQuery;
    function PesquisarExt(aParam: array of variant): Boolean;
    function EstadoExiste(): Boolean;

    property Estados: TEstados read FEstados write FEstados;

  end;

implementation

{ TEstadosControl }

constructor TEstadosControl.Create;
begin
  FEstados := TEstados.Create;
end;

destructor TEstadosControl.Destroy;
begin
  FEstados.Free;
  inherited;
end;

function TEstadosControl.EstadoExiste: Boolean;
begin
  Result := FEstados.EstadoExiste;
end;

function TEstadosControl.Gravar: Boolean;
begin
  Result := FEstados.Gravar;
end;

function TEstadosControl.Pesquisar(aParam: array of variant): TFDQuery;
begin
  Result := FEstados.Pesquisar(aParam);
end;


function TEstadosControl.PesquisarExt(aParam: array of variant): Boolean;
begin
  Result := FEstados.PesquisarExt(aParam)
end;

end.
