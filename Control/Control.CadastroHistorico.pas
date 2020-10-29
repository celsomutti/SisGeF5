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
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;

    end;

implementation

{ TCadastroHistoricoControl }

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
//  Result := Historico.Create();
end;

function TCadastroHistoricoControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FHistorico.Localizar(aParam);
end;

end.
