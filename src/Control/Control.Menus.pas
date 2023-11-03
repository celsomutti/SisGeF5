unit Control.Menus;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, Control.Sistema, Model.Menus;

type
  TMenusControl = class
  private
    FMenus: TMenus;
  public
    constructor Create();
    destructor Destroy(); override;
    property Menus: TMenus read FMenus write FMenus;
    function ValidaCampos(): Boolean;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
  end;

implementation

{ TMenusControl }

constructor TMenusControl.Create;
begin
  FMenus := TMenus.Create;
end;

destructor TMenusControl.Destroy;
begin
  FMenus.Free;
  inherited;
end;

function TMenusControl.Gravar: Boolean;
begin
  Result := False;
  if not ValidaCampos() then Exit;
  Result := FMenus.Gravar();
end;

function TMenusControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FMenus.Localizar(aParam);
end;

function TMenusControl.ValidaCampos: Boolean;
var
  FDQuery : TFDQuery;
  aParam: Array of variant;
begin
  try
    Result := False;
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    if FMenus.Codigo = 0 then
    begin
      Application.MessageBox('Informe um código para o menu!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if FMenus.Sistema = 0 then
    begin
      Application.MessageBox('Informe um código de sistema!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if FMenus.Modulo = 0 then
    begin
      Application.MessageBox('Informe um código de módulo!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    SetLength(aParam,4);
    aParam[0] := 'MENU';
    aParam[1] := FMenus.Sistema;
    aParam[2] := FMenus.Modulo;
    aParam[3] := FMenus.Codigo;
    FDQuery := FMenus.Localizar(aParam);
    Finalize(aParam);
    if FDQuery.RecordCount >= 1 then
    begin
      if FMenus.Acao = tacIncluir then
      begin
        Application.MessageBox('Menu já cadastrado!', 'Atenção', MB_OK + MB_ICONWARNING);
        FDQuery.Close;
        Exit;
      end;
    end
    else
    begin
      if (FMenus.Acao = tacAlterar) or (FMenus.Acao = tacExcluir) then
      begin
        Application.MessageBox('Menu não cadastrado!', 'Atenção', MB_OK + MB_ICONWARNING);
        FDQuery.Close;
        Exit;
      end;
    end;
    if FMenus.Descricao.IsEmpty then
    begin
      Application.MessageBox('Informe uma descrição para o menu!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    Result := True;
  finally
    FDQuery.Free;
  end;
end;

end.
