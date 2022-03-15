unit Control.SisGeFRHFuncoes;

interface

uses Model.SisgeFRHFuncoes, FireDAC.Comp.Client, Common.ENum;

type
  TRHFuncoesControl = class
  private
    FFuncoes: TRHFuncoes;
  public
    constructor Create();
    destructor Destroy(); override;
    function Search(aParam: array of variant): boolean;
    function Save(): boolean;
    function SetupClass(): boolean;

    property Funcoes: TRHFuncoes read FFuncoes write FFuncoes;
  end;

implementation

{ TRHFuncoesControl }

constructor TRHFuncoesControl.Create;
begin
  FFuncoes := TRHFuncoes.Create;
end;

destructor TRHFuncoesControl.Destroy;
begin
  FFuncoes.Free;
  inherited;
end;

function TRHFuncoesControl.Save: boolean;
begin
  Result := FFuncoes.Save();
end;

function TRHFuncoesControl.Search(aParam: array of variant): boolean;
begin
  Result := FFuncoes.Search(aParam);
end;

function TRHFuncoesControl.SetupClass: boolean;
begin
  Result := FFuncoes.SetupClass();
end;

end.
