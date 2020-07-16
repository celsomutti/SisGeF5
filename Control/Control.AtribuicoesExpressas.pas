unit Control.AtribuicoesExpressas;

interface

  uses FireDAC.Comp.Client, Common.ENum, Model.AtribuicoesExpressas;

type
  TAtribuicoesExpressasControl = class
  private
  FAtribuicoes : TAtribuicoesExpressas;
  public
  constructor Create;
  destructor Destroy; override;

  function Gravar: Boolean;
  function Localizar(aParam: array of variant): TFDQuery;
  function GetId(): Integer;
  property Atribuicoes: TAtribuicoesExpressas read FAtribuicoes write FAtribuicoes;
  end;

implementation

{ TAtribuicoesExpressasControl }

constructor TAtribuicoesExpressasControl.Create;
begin
  FAtribuicoes := TAtribuicoesExpressas.Create;
end;

destructor TAtribuicoesExpressasControl.Destroy;
begin
  FAtribuicoes.Free;
  inherited;
end;

function TAtribuicoesExpressasControl.GetId: Integer;
begin
  Result := FAtribuicoes.GetID;
end;

function TAtribuicoesExpressasControl.Gravar: Boolean;
begin
  Result := FAtribuicoes.Gravar;
end;

function TAtribuicoesExpressasControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FAtribuicoes.Localizar(aParam);
end;

end.
