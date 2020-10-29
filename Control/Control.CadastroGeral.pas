unit Control.CadastroGeral;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, Control.Sistema, Model.CadastroGeral;

type
  TCadastrosControl = class
  private
    FCadastro : TCadastroGeral;
  public
    constructor Create();
    destructor Destroy(); override;
    property Cadastro: TCadastroGeral read FCadastro write FCadastro;
    function GetID(): Integer;
    function ValidaCampos(): Boolean;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
  end;

implementation

{ TCadastrosControl }

uses Common.Utils;

constructor TCadastrosControl.Create;
begin
  FCadastro := TCadastroGeral.Create;
end;

destructor TCadastrosControl.Destroy;
begin
  FCadastro.Free;
  inherited;
end;

function TCadastrosControl.GetID: Integer;
begin
  Result := FCadastro.GetID;
end;

function TCadastrosControl.Gravar: Boolean;
begin
  Result := False;
  if not ValidaCampos() then Exit;
  Result := FCadastro.Gravar;
end;

function TCadastrosControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FCadastro.Localizar(aParam);
end;

function TCadastrosControl.ValidaCampos: Boolean;
var
  FDQuery : TFDQuery;
  aParam: Array of variant;
begin
  try
    Result := False;
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    if FCadastro.Acao = tacAlterar then
    begin
      if FCadastro.ID = 0 then
      begin
        Application.MessageBox('Informe o ID do cadastro!', 'Atenção', MB_OK + MB_ICONWARNING);
        Exit;
      end;
    end;
    if FCadastro.Nome.IsEmpty then
    begin
      Application.MessageBox('Informe o nome do cadastro!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if FCadastro.Pessoa = 0 then
    begin
      Application.MessageBox('Informe o tipo de pessoa do cadastro!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if not FCadastro.CPF.IsEmpty then
    begin
      if FCadastro.Pessoa = 1 then
      begin
        if not TUtils.CPF(FCadastro.CPF) then
        begin
          Application.MessageBox('Número do CPF inválido!', 'Atenção', MB_OK + MB_ICONWARNING);
          Exit;
        end;
      end
      else if FCadastro.Pessoa = 2 then
      begin
        if not TUtils.CNPJ(FCadastro.CPF) then
        begin
          Application.MessageBox('Número do CNPJ inválido!', 'Atenção', MB_OK + MB_ICONWARNING);
          Exit;
        end;
      end;
      SetLength(aParam,2);
      aParam[0] := 'CPFCNPJ';
      aParam[1] := FCadastro.CPF;
      FDQuery := FCadastro.Localizar(aParam);
      Finalize(aParam);
      if FDQuery.RecordCount >= 1 then
      begin
        if FCadastro.Acao = tacIncluir then
        begin
          Application.MessageBox('CPF/CNPJ já cadastrado!', 'Atenção', MB_OK + MB_ICONWARNING);
          FDQuery.Close;
          Exit;
        end;
      end;
    end;
    if FCadastro.Pessoa = 1 then
    begin
      if FCadastro.Sexo = 0 then
      begin
        Application.MessageBox('Informe o sexo do cadastro!', 'Atenção', MB_OK + MB_ICONWARNING);
        Exit;
      end;
    end;
    Result := True;
  finally
    FDQuery.Free;
  end;
end;

end.
