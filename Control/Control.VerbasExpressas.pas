unit Control.VerbasExpressas;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, Control.Sistema, Model.VerbasExpressas, Common.Utils;
  type
    TVerbasExpressasControl = class
    private
      FVerbas : TVerbasExpressas;
    public
      constructor Create();
      destructor Destroy(); override;
      property Verbas: TVerbasExpressas read FVerbas write FVerbas;
      function GetID(): Integer;
      function ValidaCampos(): Boolean;
      function Localizar(aParam: array of variant): TFDQuery;
      procedure ClearModel;
      function Gravar(): Boolean;
      function SetupModal(FDQuery: TFDQuery): Boolean;
      function RetornaVerba(aParam: array of variant): double;
      function RetornaListaSimples(iTabela: integer; memTable: TFDMemTable): boolean;
      function RetornaValorFaixa(iCliente, iTabela, iFaixa: integer): string;
    end;

implementation

{ TVerbasExpressasControl }

procedure TVerbasExpressasControl.ClearModel;
begin
  FVerbas.ClearModel;
end;

constructor TVerbasExpressasControl.Create;
begin
  FVerbas := TVerbasExpressas.Create;
end;

destructor TVerbasExpressasControl.Destroy;
begin
  FVerbas.Free;
  inherited;
end;

function TVerbasExpressasControl.GetID: Integer;
begin
  Result := FVerbas.GetID;
end;

function TVerbasExpressasControl.Gravar: Boolean;
begin
  Result := FVerbas.Gravar;
end;

function TVerbasExpressasControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FVerbas.Localizar(aParam);
end;

function TVerbasExpressasControl.RetornaListaSimples(iTabela: integer; memTable: TFDMemTable): boolean;
begin
  Result := FVerbas.RetornaListaSimples(iTabela,memTable);
end;

function TVerbasExpressasControl.RetornaValorFaixa(iCliente, iTabela, iFaixa: integer): string;
begin
  Result := FVerbas.RetornaValorFaixa(iCliente, iTabela, iFaixa);
end;

function TVerbasExpressasControl.RetornaVerba(aParam: array of variant): double;
begin
  Result := FVerbas.RetornaVerba(aParam);
end;

function TVerbasExpressasControl.SetupModal(FDQuery: TFDQuery): Boolean;
begin
  Result := FVerbas.SetupModel(FDQuery);
end;

function TVerbasExpressasControl.ValidaCampos: Boolean;
var
  FDQuery : TFDQuery;
  aParam: Array of variant;
begin
  try
    Result := False;
    if FVerbas.Acao <> tacIncluir then
    begin
      if FVerbas.ID = 0 then
      begin
        Application.MessageBox('ID do registro de verba inválido!', 'Atenção!', MB_OK + MB_ICONEXCLAMATION);
        Exit;
      end;
    end;
    if FVerbas.Tipo = 0 then
    begin
      Application.MessageBox('Informe o tipo de verba!', 'Atenção!', MB_OK + MB_ICONEXCLAMATION);
      Exit;
    end;
    if FVerbas.Grupo = 0 then
    begin
      Application.MessageBox('Informe o grupo da verba!', 'Atenção!', MB_OK + MB_ICONEXCLAMATION);
      Exit;
    end;
    if FVerbas.Vigencia = 0 then
    begin
      Application.MessageBox('Informe a data de inicio de vigência de verba!', 'Atenção!', MB_OK + MB_ICONEXCLAMATION);
      Exit;
    end;
    if FVerbas.Verba = 0 then
    begin
      Application.MessageBox('Informe o valor da verba!', 'Atenção!', MB_OK + MB_ICONEXCLAMATION);
      Exit;
    end;
    if FVerbas.Tipo = 4 then
    begin
      if FVerbas.Performance = 0 then
      begin
        Application.MessageBox('Informe o percentual de performance da verba!', 'Atenção!', MB_OK + MB_ICONEXCLAMATION);
        Exit;
      end;
    end;
    if (FVerbas.Tipo = 2) or (FVerbas.Tipo = 5) then
    begin
      FVerbas.CEPInicial := Common.Utils.TUtils.ReplaceStr(FVerbas.CEPInicial,'-','');
      FVerbas.CEPFinal := Common.Utils.TUtils.ReplaceStr(FVerbas.CEPFinal,'-','');
      if FVerbas.CEPInicial.IsEmpty then
      begin
        Application.MessageBox('Informe o CEP inicial!', 'Atenção!', MB_OK + MB_ICONEXCLAMATION);
        Exit;
      end;
      if FVerbas.CEPFinal.IsEmpty then
      begin
        Application.MessageBox('Informe o CEP final!', 'Atenção!', MB_OK + MB_ICONEXCLAMATION);
        Exit;
      end;
      if FVerbas.CEPInicial.Length < 8 then
      begin
        Application.MessageBox('Informe o CEP inicial completo (8 dígitos)!', 'Atenção!', MB_OK + MB_ICONEXCLAMATION);
        Exit;
      end;
      if FVerbas.CEPFinal.Length < 8 then
      begin
        Application.MessageBox('Informe o CEP final completo (8 dígitos)!', 'Atenção!', MB_OK + MB_ICONEXCLAMATION);
        Exit;
      end;
      if StrToIntDef(FVerbas.CEPFinal,0) < StrToIntDef(FVerbas.CEPInicial,0) then
      begin
        Application.MessageBox('CEP final menor que o CEP inicial!', 'Atenção!', MB_OK + MB_ICONEXCLAMATION);
        Exit;
      end;
    end;
    if FVerbas.Tipo = 5 then
    begin
      if FVerbas.PesoInicial = 0 then
      begin
        Application.MessageBox('Informe o peso inicial!', 'Atenção!', MB_OK + MB_ICONEXCLAMATION);
        Exit;
      end;
      if FVerbas.PesoFinal = 0 then
      begin
        Application.MessageBox('Informe o peso final!', 'Atenção!', MB_OK + MB_ICONEXCLAMATION);
        Exit;
      end;
      if FVerbas.PesoFinal < FVerbas.PesoInicial then
      begin
        Application.MessageBox('Peso final menor que o peso inicial!', 'Atenção!', MB_OK + MB_ICONEXCLAMATION);
        Exit;
      end;
    end;
    Result := True;
  finally
    FDQuery.Free;
  end;
end;

end.
