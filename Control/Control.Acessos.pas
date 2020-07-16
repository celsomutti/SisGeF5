unit Control.Acessos;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, Control.Sistema, Model.Acessos, Vcl.ActnList;

type
  TAcessosControl = class
  private
    FAcessos: TAcessos;
  public
    constructor Create();
    destructor Destroy(); override;
    property Acessos: TAcessos read FAcessos write FAcessos;
    function ValidaCampos(): Boolean;
    function Localizar(aParam: array of variant): TFDQuery;
    function VerificaLogin(iMenu: Integer; iUsuario: Integer): Boolean;
    function VerificaModulo(iModulo: Integer; iUsuario: Integer): Boolean;
    function VerificaSistema(iSistema: Integer; iUsuario: Integer): Boolean;
    function Gravar(): Boolean;
  end;

implementation

{ TAcessosControl }

constructor TAcessosControl.Create;
begin
  FAcessos := TAcessos.Create;
end;

destructor TAcessosControl.Destroy;
begin
  FAcessos.Free;
  inherited;
end;

function TAcessosControl.Gravar: Boolean;
begin
  Result := False;
  Result := FAcessos.Gravar();
end;

function TAcessosControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FAcessos.Localizar(aParam);
end;

function TAcessosControl.ValidaCampos: Boolean;
var
  aParam: Array of variant;
begin
  try
    Result := False;
    if FAcessos.Usuario = 0 then
    begin
      Application.MessageBox('Informe um usuário para este acesso!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if FAcessos.Sistema = 0 then
    begin
      Application.MessageBox('Informe um código de sistema!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if FAcessos.Modulo = 0 then
    begin
      Application.MessageBox('Informe um código de módulo!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if FAcessos.Menu = 0 then
    begin
      Application.MessageBox('Informe um código de menu!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    SetLength(aParam,5);
    aParam[0] := 'ACESSO';
    aParam[1] := FAcessos.Sistema;
    aParam[2] := FAcessos.Modulo;
    aParam[3] := FAcessos.Menu;
    aParam[4] := FAcessos.Usuario;
    if FAcessos.AcessoExiste(aParam) then
    begin
      if FAcessos.Acao = tacExcluir then
      begin
        Application.MessageBox('Acesso não cadastrado!', 'Atenção', MB_OK + MB_ICONWARNING);
        Exit;
      end;
    end;
    Result := True;
  finally
    Finalize(aParam);
  end;
end;

function TAcessosControl.VerificaLogin(iMenu, iUsuario: Integer): Boolean;
begin
  Result := Facessos.VerificaLogin(iMenu, iUsuario);
end;

function TAcessosControl.VerificaModulo(iModulo, iUsuario: Integer): Boolean;
begin
  Result := Facessos.VerificaModulo(iModulo, iUsuario);
end;

function TAcessosControl.VerificaSistema(iSistema, iUsuario: Integer): Boolean;
begin
  Result := Facessos.VerificaSistema(iSistema, iUsuario);
end;

end.
