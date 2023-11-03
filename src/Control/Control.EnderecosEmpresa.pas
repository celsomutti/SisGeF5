unit Control.EnderecosEmpresa;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, Model.EnderecosEmpresa, Control.Sistema;

type
  TEnderecosEmpresasControl = class
  private
    FEnderecos : TEnderecosEmpresa;
  public
    constructor Create;
    destructor Destroy; override;
    property Enderecos: TEnderecosEmpresa read FEnderecos write FEnderecos;
    function GetID(iID: Integer): Integer;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
    function ValidaCampos(): Boolean;
  end;

implementation

{ TEnderecosEmpresasControl }

uses Common.Utils;

constructor TEnderecosEmpresasControl.Create;
begin
  FEnderecos := TEnderecosEmpresa.Create;
end;

destructor TEnderecosEmpresasControl.Destroy;
begin
  FEnderecos.Free;
  inherited;
end;

function TEnderecosEmpresasControl.GetID(iID: Integer): Integer;
begin
  Result := FEnderecos.GetID(FEnderecos.ID);
end;

function TEnderecosEmpresasControl.Gravar: Boolean;
begin
  Result := False;
  if Fenderecos.Acao = tacIncluir then
  begin
    if not ValidaCampos() then Exit;
  end;
  Result := FEnderecos.Gravar;
end;

function TEnderecosEmpresasControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FEnderecos.Localizar(aParam);
end;

function TEnderecosEmpresasControl.ValidaCampos: Boolean;
var
  FDQuery : TFDQuery;
  aParam: Array of variant;
begin
  try
    Result := False;
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    if FEnderecos.ID = 0 then
    begin
      Application.MessageBox('Informe o ID do cadastro!', 'Aten��o', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if FEnderecos.Acao <> tacIncluir then
    begin
      if FEnderecos.Sequencia = 0 then
      begin
        Application.MessageBox('Informe a sequ�ncia do endere�o!', 'Aten��o', MB_OK + MB_ICONWARNING);
        Exit;
      end;
    end;
    if FEnderecos.Tipo.IsEmpty then
    begin
      Application.MessageBox('Informe o tipo de endere�o!', 'Aten��o', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if not FEnderecos.CNPJ.IsEmpty then
    begin
      if not TUtils.CNPJ(FEnderecos.CNPJ) then
      begin
        Application.MessageBox('N�mero do CNPJ do endere�o � inv�lido!', 'Aten��o', MB_OK + MB_ICONWARNING);
        Exit;
      end;
      SetLength(aParam,2);
      aParam[0] := 'CNPJ';
      aParam[1] := FEnderecos.CNPJ;
      FDQuery := FEnderecos.Localizar(aParam);
      Finalize(aParam);
      if FDQuery.RecordCount >= 1 then
      begin
        if FEnderecos.Acao = tacIncluir then
        begin
          Application.MessageBox('Endere�o com este CNPJ j� cadastrado!', 'Aten��o', MB_OK + MB_ICONWARNING);
          FDQuery.Close;
          Exit;
        end;
      end;
    end;
    Result := True;
  finally
    FDQuery.Free;
  end;
end;

end.
