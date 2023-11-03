unit Control.CadastroEmpresa;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, Control.Sistema, Model.CadastroEmpresa;

type
  TCadastroEmpresaControl = class
  private
    FCadastro : TCadastroEmpresa;
  public
    constructor Create();
    destructor Destroy(); override;
    property Cadastro: TCadastroEmpresa read FCadastro write FCadastro;
    function GetID(): Integer;
    function ValidaCampos(): Boolean;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
  end;

implementation

{ TCadastroEmpresaControl }

uses Common.Utils;

constructor TCadastroEmpresaControl.Create;
begin
  FCadastro := TCadastroEmpresa.Create;
end;

destructor TCadastroEmpresaControl.Destroy;
begin
  FCadastro.Free;
  inherited;
end;

function TCadastroEmpresaControl.GetID: Integer;
begin
  Result := FCadastro.GetID();
end;

function TCadastroEmpresaControl.Gravar: Boolean;
begin
  Result := False;
  if not ValidaCampos() then Exit;
  Result := FCadastro.Gravar;
end;

function TCadastroEmpresaControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FCadastro.Localizar(aParam);
end;

function TCadastroEmpresaControl.ValidaCampos: Boolean;
var
  FDQuery : TFDQuery;
  aParam: Array of variant;
begin
  try
    Result := False;
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
//    if FCadastro.ID = 0 then
//    begin
//      Application.MessageBox('Informe um ID para o cadastro!', 'Atenção', MB_OK + MB_ICONWARNING);
//      Exit;
//    end;
    if FCadastro.Nome.IsEmpty then
    begin
      Application.MessageBox('Informe o nome do cadastro!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if FCadastro.TipoDoc.IsEmpty then
    begin
      Application.MessageBox('Informe o tipo de documento do cadastro!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if not FCadastro.CPFCNPJ.IsEmpty then
    begin
        if not TUtils.CNPJ(FCadastro.CPFCNPJ) then
        begin
          Application.MessageBox('Número do CNPJ inválido!', 'Atenção', MB_OK + MB_ICONWARNING);
          Exit;
        end;
      SetLength(aParam,2);
      aParam[0] := 'CPFCNPJ';
      aParam[1] := FCadastro.CPFCNPJ;
      FDQuery := FCadastro.Localizar(aParam);
      Finalize(aParam);
      if FDQuery.RecordCount >= 1 then
      begin
        if FCadastro.Acao = tacIncluir then
        begin
          Application.MessageBox('CNPJ já cadastrado!', 'Atenção', MB_OK + MB_ICONWARNING);
          FDQuery.Close;
          Exit;
        end;
      end;
    end;
    Result := True;
  finally
    FDQuery.Free;
  end;end;

end.
