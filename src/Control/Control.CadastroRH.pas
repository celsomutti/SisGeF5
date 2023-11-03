unit Control.CadastroRH;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, Model.CadastroRH;

type
  TCadastroRHControl = class
  private
    FCadastro : TCadastroRH;
  public
    constructor Create;
    destructor Destroy; override;
    property RH: TCadastroRH read FCadastro write FCadastro;
    function Localizar(aParam: array of variant): boolean;
    function Gravar(): Boolean;
    function ValidaCampos(): Boolean;
    function SetupClass(FDQuery: TFDquery): boolean;
    function ClearClass(): boolean;

  end;

implementation

{ TCadastroRHControl }

function TCadastroRHControl.ClearClass: boolean;
begin
  Result := FCadastro.ClearClass;
end;

constructor TCadastroRHControl.Create;
begin
  FCadastro := TCadastroRH.Create;
end;

destructor TCadastroRHControl.Destroy;
begin
  FCadastro.Free;
  inherited;
end;

function TCadastroRHControl.Gravar: Boolean;
begin
  Result := False;
  if not ValidaCampos() then Exit;
  Result := FCadastro.Gravar;
end;

function TCadastroRHControl.Localizar(aParam: array of variant): Boolean;
begin
  Result := FCadastro.Localizar(aParam);
end;

function TCadastroRHControl.SetupClass(FDQuery: TFDquery): boolean;
begin
  Result := FCadastro.SetupClass(FDQuery);
end;

function TCadastroRHControl.ValidaCampos: Boolean;
begin
  Result := False;
  if FCadastro.Funcao = 0 then
  begin
    Application.MessageBox('Informe a fun��o deste colaborador.', 'Aten��o', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  if FCadastro.Adminissao = 0 then
  begin
    Application.MessageBox('Informe a data de admiss�o deste colaborador.', 'Aten��o', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  if not Fcadastro.NumeroCTPS.IsEmpty then
  begin
    if FCadastro.SerieCTPS.IsEmpty then
    begin
      Application.MessageBox('Informe a s�rie da CTPS deste colaborador.', 'Aten��o', MB_OK + MB_ICONEXCLAMATION);
      Exit;
    end;
    if FCadastro.UFCTPS.IsEmpty then
    begin
      Application.MessageBox('Informe a UF da CTPS deste colaborador.', 'Aten��o', MB_OK + MB_ICONEXCLAMATION);
      Exit;
    end;
  end;

  if not Fcadastro.NumeroTituloEleitor.IsEmpty then
  begin
    if FCadastro.ZonaTituloEleitor.IsEmpty then
    begin
      Application.MessageBox('Informe Zona Eleitoral deste colaborador.', 'Aten��o', MB_OK + MB_ICONEXCLAMATION);
      Exit;
    end;
    if FCadastro.SecaoTituloEleitor.IsEmpty then
    begin
      Application.MessageBox('Informe a Sec�o Eleitoral deste colaborador.', 'Aten��o', MB_OK + MB_ICONEXCLAMATION);
      Exit;
    end;
    if FCadastro.MunicipioTituloEleitor.IsEmpty then
    begin
      Application.MessageBox('Informe Municipio Eleitoral deste colaborador.', 'Aten��o', MB_OK + MB_ICONEXCLAMATION);
      Exit;
    end;
    if FCadastro.UFTituloEleitor.IsEmpty then
    begin
      Application.MessageBox('Informe a UF Eleitoral deste colaborador.', 'Aten��o', MB_OK + MB_ICONEXCLAMATION);
      Exit;
    end;
  end;
  Result := True;
end;

end.
