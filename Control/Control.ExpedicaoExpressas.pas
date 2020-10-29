unit Control.ExpedicaoExpressas;

interface

uses FireDAC.Comp.Client, Common.ENum, Model.ExpedicaoExpressas;

type
  TExpedicaoExpressasControl = class
  private
    FExpedicao : TExpedicaoExpressas;
  public
    constructor Create;
    destructor Destroy; override;

    function Gravar: Boolean;
    function NNExiste(sNN: String): Integer;

    function Localizar(aParam: array of variant): TFDQuery;
    function GetId(): Integer;
    function GeraNumeroContaiter(): Integer;
    function GeraNumeroRomaneio(): Integer;

    property Expedicao: TExpedicaoExpressas read FExpedicao write FExpedicao;
  end;

implementation

{ TExpedicaoExpressasControl }

constructor TExpedicaoExpressasControl.Create;
begin
  FExpedicao := TExpedicaoExpressas.Create;
end;

destructor TExpedicaoExpressasControl.Destroy;
begin
  FExpedicao.Free;
  inherited;
end;

function TExpedicaoExpressasControl.GeraNumeroContaiter: Integer;
begin
  Result := FExpedicao.GeraNumeroContaiter;
end;

function TExpedicaoExpressasControl.GeraNumeroRomaneio: Integer;
begin
  Result := FExpedicao.GeraNumeroRomaneio;
end;

function TExpedicaoExpressasControl.GetId: Integer;
begin
  Result := FExpedicao.GetID;
end;

function TExpedicaoExpressasControl.Gravar: Boolean;
begin
  Result := FExpedicao.Gravar;
end;

function TExpedicaoExpressasControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FExpedicao.Localizar(aParam);
end;

function TExpedicaoExpressasControl.NNExiste(sNN: String): Integer;
begin
  Result := FExpedicao.NNExiste(sNN);
end;

end.
