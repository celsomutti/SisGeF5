unit Control.FinanceiroEmpresa;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Control.Sistema, Model.FinanceiroEmpresa;

type
  TFinanceiroEmpresaControl = class
  private
    FFinanceiro : TFinanceiroEmpresa;
  public
    constructor Create;
    destructor Destroy; override;
    property Financeiro: TFinanceiroEmpresa read FFinanceiro write FFinanceiro;
    function GetID(iID: Integer): Integer;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
    function ValidaCampos(): Boolean;
  end;

implementation

{ TFinanceiroEmpresaControl }

uses Common.ENum;

constructor TFinanceiroEmpresaControl.Create;
begin
  FFinanceiro := TFinanceiroEmpresa.Create;
end;

destructor TFinanceiroEmpresaControl.Destroy;
begin
  Financeiro.Free;
  inherited;
end;

function TFinanceiroEmpresaControl.GetID(iID: Integer): Integer;
begin
  Result := FFinanceiro.GetID(iID);
end;

function TFinanceiroEmpresaControl.Gravar: Boolean;
begin
  Result := FFinanceiro.Gravar;
end;

function TFinanceiroEmpresaControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FFinanceiro.Localizar(aParam);
end;

function TFinanceiroEmpresaControl.ValidaCampos: Boolean;
var
  FDQuery : TFDQuery;
  aParam: Array of variant;
begin
  try
    Result := False;
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    if FFinanceiro.ID = 0 then
    begin
      Application.MessageBox('Informe o ID do cadastro!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if FFinanceiro.Acao <> tacIncluir then
    begin
      if FFinanceiro.Sequencia = 0 then
      begin
        Application.MessageBox('Informe a sequência!', 'Atenção', MB_OK + MB_ICONWARNING);
        Exit;
      end;
    end;
    if FFinanceiro.TipoConta.IsEmpty then
    begin
      Application.MessageBox('Informe o tipo de conta!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if StrToIntDef(FFinanceiro.Banco,0) = 0 then
    begin
      Application.MessageBox('Informe o banco da conta!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if FFinanceiro.Agencia.IsEmpty then
    begin
      Application.MessageBox('Informe a agência da conta!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if FFinanceiro.Conta.IsEmpty then
    begin
      Application.MessageBox('Informe a conta!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    Result := True;
  finally
    FDQuery.Free;
  end;
end;

end.
