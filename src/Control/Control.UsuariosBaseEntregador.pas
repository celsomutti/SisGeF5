unit Control.UsuariosBaseEntregador;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, Model.UsuariosBaseEntregador;

  type
    TUsuariosBaseEntregadorControl = class
    private
      FUsuarios: TUsuariosBaseEntregador;
    public
      constructor Create;
      destructor Destroy; override;

      property Usuarios: TUsuariosBaseEntregador read FUsuarios write FUsuarios;

      function Localizar(aParam: array of variant): TFDQuery;
      function Gravar(): Boolean;
      function ValidaCampos(): Boolean;
    end;

implementation

{ TUsuariosBaseEntregador }

constructor TUsuariosBaseEntregadorControl.Create;
begin
  FUsuarios := TUsuariosBaseEntregador.Create;
end;

destructor TUsuariosBaseEntregadorControl.Destroy;
begin
  FUsuarios.Free;
  inherited;
end;

function TUsuariosBaseEntregadorControl.Gravar: Boolean;
begin
  Result := False;
  if not ValidaCampos() then Exit;
  Result := FUsuarios.Gravar;
end;

function TUsuariosBaseEntregadorControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FUsuarios.Localizar(aParam);
end;

function TUsuariosBaseEntregadorControl.ValidaCampos: Boolean;
begin
  Result := False;
  if FUsuarios.Usuario = 0 then
  begin
    Application.MessageBox('Informe o usuário!', 'Atenção', MB_OK + MB_ICONERROR);
    Exit;
  end;
  if FUsuarios.Agente = 0 then
  begin
    Application.MessageBox('Informe o Agente!', 'Atenção', MB_OK + MB_ICONERROR);
    Exit;
  end;
  Result := True;
end;

end.
