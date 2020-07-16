unit Control.ContatosBases;

interface

uses System.SysUtils, FireDAC.Comp.Client, Model.ContatosBases;

type
  TContatosBasesControls = class
  private
    FContatos : TContatosBase;
  public
    constructor Create;
    destructor Destroy; override;

    function GetSeq(): Integer;
    function Gravar(): Boolean;
    function Localizar(aParam: array of variant): TFDQuery;

    property Contatos: TContatosBase read FContatos write FContatos;
  end;

implementation

{ TContatosBasesControls }

constructor TContatosBasesControls.Create;
begin
  FContatos := TContatosBase.Create;
end;

destructor TContatosBasesControls.Destroy;
begin
  FContatos.Free;
  inherited;
end;

function TContatosBasesControls.GetSeq: Integer;
begin
  Result := FContatos.GetSeq();
end;

function TContatosBasesControls.Gravar: Boolean;
begin
  Result := FContatos.Gravar();
end;

function TContatosBasesControls.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FContatos.Localizar(aParam);
end;

end.
