unit Control.LacresDevolucao;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, System.StrUtils, Model.LacresDevolucao;

type
  TLacresDevolucaoControl = class
  private
    FLacres : TLacresDevolucao;
  public
    constructor Create;
    destructor Destroy; override;
    function Gravar: Boolean;
    function Localizar(aParam: array of variant): TFDQuery;
    function ValidaAcao(): Boolean;
    property Lacres: TLacresDevolucao read FLacres write FLacres;
  end;

implementation

{ TLacresDevolucaoControl }

constructor TLacresDevolucaoControl.Create;
begin
  FLacres := TLacresDevolucao.Create();
end;

destructor TLacresDevolucaoControl.Destroy;
begin
  FLacres.free;
  inherited;
end;

function TLacresDevolucaoControl.Gravar: Boolean;
begin
  Result := FLacres.Gravar;
end;

function TLacresDevolucaoControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FLacres.Localizar(aParam);
end;

function TLacresDevolucaoControl.ValidaAcao: Boolean;
begin

end;

end.
