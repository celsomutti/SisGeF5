unit Control.CadastroFinanceiro;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Control.Sistema, Model.CadastroFinanceiro;

type
  TCadastroFinanceiroControl = class
  private
    FFinanceiro : TCadastroFinanceiro;
  public
    constructor Create;
    destructor Destroy; override;
    property Financeiro: TCadastroFinanceiro read FFinanceiro write FFinanceiro;
    function GetID(iID: Integer; iTipo: Integer): Integer;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
    function SaveBatch(memTable: TFDMemTable): Boolean;
    procedure SetupSelf(fdQuery: TFDQuery);
    procedure ClearSelf;
  end;

implementation

{ TFinanceiroEmpresaControl }

uses Common.ENum;

procedure TCadastroFinanceiroControl.ClearSelf;
begin
  Financeiro.ClearSelf;
end;

constructor TCadastroFinanceiroControl.Create;
begin
  FFinanceiro := TCadastroFinanceiro.Create;
end;

destructor TCadastroFinanceiroControl.Destroy;
begin
  Financeiro.Free;
  inherited;
end;

function TCadastroFinanceiroControl.GetID(iID: Integer; iTipo: Integer): Integer;
begin
  Result := FFinanceiro.GetID(iID, iTipo);
end;

function TCadastroFinanceiroControl.Gravar: Boolean;
begin
  Result := FFinanceiro.Gravar;
end;

function TCadastroFinanceiroControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FFinanceiro.Localizar(aParam);
end;

function TCadastroFinanceiroControl.SaveBatch(memTable: TFDMemTable): Boolean;
begin
  Result := FFinanceiro.SaveBatch(memTable);
end;

procedure TCadastroFinanceiroControl.SetupSelf(fdQuery: TFDQuery);
begin
  Financeiro.SetupSelf(fdQuery);
end;

end.
