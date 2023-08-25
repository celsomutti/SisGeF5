unit Controller.SisGeFProdutosJornal;

interface

uses Model.SisGeFProdutosJornal;

type
  TControllerSisGeFProdutosJornal = class
  private
    FProdutos: TModelSisGeFProdutosJornal;
  public
    constructor Create;
    destructor Destroy; override;
    function Search(aParam: array of variant): boolean;
  end;

implementation

{ TControllerSisGeFProdutosJornal }

constructor TControllerSisGeFProdutosJornal.Create;
begin
  FProdutos := TModelSisGeFProdutosJornal.Create;
end;

destructor TControllerSisGeFProdutosJornal.Destroy;
begin
  FProdutos.Free;
  inherited;
end;

function TControllerSisGeFProdutosJornal.Search(aParam: array of variant): boolean;
begin
  Result := FProdutos.Search(aParam);
end;

end.
