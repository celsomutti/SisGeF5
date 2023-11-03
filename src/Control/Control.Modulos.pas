unit Control.Modulos;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, Control.Sistema, Model.Modulos;

type
  TModulosControl = class
  private
    FModulos : TModulos;
  public
    constructor Create();
    destructor Destroy(); override;
    property Modulos: TModulos read FModulos write FModulos;
    function ValidaCampos(): Boolean;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
  end;

implementation

{ TModulosControl }

constructor TModulosControl.Create;
begin
  FModulos := TModulos.Create;
end;

destructor TModulosControl.Destroy;
begin
  FModulos.Free;
  inherited;
end;

function TModulosControl.Gravar: Boolean;
begin
  Result := False;
  if not ValidaCampos() then Exit;
  Result := FModulos.Gravar();
end;

function TModulosControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FModulos.Localizar(aParam);
end;

function TModulosControl.ValidaCampos: Boolean;
var
  FDQuery : TFDQuery;
  aParam: Array of variant;
begin
  try
    Result := False;
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    if FModulos.Codigo = 0 then
    begin
      Application.MessageBox('Informe um código para o módulo!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if FModulos.Sistema = 0 then
    begin
      Application.MessageBox('Informe um código do sistema!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    SetLength(aParam,3);
    aParam[0] := 'MODULO';
    aParam[1] := FModulos.Sistema;
    aParam[2] := FModulos.Codigo;
    FDQuery := FModulos.Localizar(aParam);
    Finalize(aParam);
    if FDQuery.RecordCount >= 1 then
    begin
      if FModulos.Acao = tacIncluir then
      begin
        Application.MessageBox('Módulo já cadastrado!', 'Atenção', MB_OK + MB_ICONWARNING);
        FDQuery.Close;
        Exit;
      end;
    end
    else
    begin
      if (FModulos.Acao = tacAlterar) or (FModulos.Acao = tacExcluir) then
      begin
        Application.MessageBox('Módulo não cadastrado!', 'Atenção', MB_OK + MB_ICONWARNING);
        FDQuery.Close;
        Exit;
      end;
    end;
    if FModulos.Descricao.IsEmpty then
    begin
      Application.MessageBox('Informe uma descrição para o módulo!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    Result := True;
  finally
    FDQuery.Free;
  end;
end;

end.
