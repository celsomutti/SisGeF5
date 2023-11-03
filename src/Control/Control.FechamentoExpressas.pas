unit Control.FechamentoExpressas;

interface

uses FireDAC.Comp.Client, Common.ENum, Model.FechamentoExpressas, Control.Sistemas;

type
  TFechamentoExpressasControl = class
  private
    FFechamento : TFechamentoExpressas;
  public
    constructor Create;
    destructor Destroy; override;

    function Gravar: Boolean;
    function Localizar(aParam: array of variant): TFDQuery;
    function GetId(): Integer;
    function SaveDB(memTable: TFDMemTable): Boolean;
    function FechamentoExiste(sUniqueKey: String): Boolean;

    property Expedicao: TFechamentoExpressas read FFechamento write FFechamento;
  end;


implementation

{ TFechamentoExpressasControl }

constructor TFechamentoExpressasControl.Create;
begin
  FFechamento := TFechamentoExpressas.Create;
end;

destructor TFechamentoExpressasControl.Destroy;
begin
  FFechamento.Free;
  inherited;
end;

function TFechamentoExpressasControl.FechamentoExiste(sUniqueKey: String): Boolean;
begin
  Result := FFechamento.FechamentoExiste(sUniqueKey);
end;

function TFechamentoExpressasControl.GetId: Integer;
begin
  Result := FFechamento.GetID;
end;

function TFechamentoExpressasControl.Gravar: Boolean;
begin
  Result := FFechamento.Gravar;
end;

function TFechamentoExpressasControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FFechamento.Localizar(aParam);
end;

function TFechamentoExpressasControl.SaveDB(memTable: TFDMemTable): Boolean;
begin
  Result := FFechamento.SaveDB(memTable);
end;

end.
