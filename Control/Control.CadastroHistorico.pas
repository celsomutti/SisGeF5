unit Control.CadastroHistorico;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, Model.CadastroHistorico;


  type
    TCadastroHistoricoControl = class
  private
    FHistorico : TCadastroHistorico;
  public
    constructor Create;
    destructor Destroy; override;
    property Historico: TCadastroHistorico read FHistorico write FHistorico;
    function Localizar(aParam: array of variant): Boolean;
    function Gravar(): Boolean;
    function SetupClass(FDquery: TFDQuery): boolean;
    function ClearClass(): boolean;

    end;

implementation

{ TCadastroHistoricoControl }

function TCadastroHistoricoControl.ClearClass: boolean;
begin
  Result := FHistorico.ClearClass;
end;

constructor TCadastroHistoricoControl.Create;
begin
  FHistorico := TCadastroHistorico.Create;
end;

destructor TCadastroHistoricoControl.Destroy;
begin
  FHistorico.Free;
  inherited;
end;

function TCadastroHistoricoControl.Gravar: Boolean;
begin
  Result := False;
  Result := FHistorico.Gravar;
end;

function TCadastroHistoricoControl.Localizar(aParam: array of variant): Boolean;
begin
  Result := FHistorico.Localizar(aParam);
end;

function TCadastroHistoricoControl.SetupClass(FDquery: TFDQuery): boolean;
begin
  Result := FHistorico.SetupClass(FDQuery);
end;

end.
