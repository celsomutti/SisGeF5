unit Control.Sistemas;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, Model.Sistemas, Control.Sistema;

type
  TSistemasControl = class
  private
    FSistemas : TSistemas;
  public
    constructor Create();
    destructor Destroy(); override;
    property Sistemas: TSistemas read FSistemas write FSistemas;
    function ValidaCampos(): Boolean;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
  end;

implementation

{ TSistemasControl }

constructor TSistemasControl.Create;
begin
  FSistemas := TSistemas.Create;
end;

destructor TSistemasControl.Destroy;
begin
  FSistemas.Free;
  inherited;
end;

function TSistemasControl.Gravar: Boolean;
begin
  Result := False;
  if not ValidaCampos() then Exit;
  Result := FSistemas.Gravar();
end;

function TSistemasControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FSistemas.Localizar(aParam);
end;

function TSistemasControl.ValidaCampos: Boolean;
var
  FDQuery : TFDQuery;
  aParam: Array of variant;
begin
  try
    Result := False;
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    if FSistemas.Codigo = 0 then
    begin
      Application.MessageBox('Informe um código para o sistema!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    SetLength(aParam,2);
    aParam[0] := 'CODIGO';
    aParam[1] := FSistemas.Codigo;
    FDQuery := FSistemas.Localizar(aParam);
    Finalize(aParam);
    if FDQuery.RecordCount >= 1 then
    begin
      if FSistemas.Acao = tacIncluir then
      begin
        Application.MessageBox('Código de sistema já cadastrado!', 'Atenção', MB_OK + MB_ICONWARNING);
        FDQuery.Close;
        Exit;
      end;
    end
    else
    begin
      if (FSistemas.Acao = tacAlterar) or (FSistemas.Acao = tacExcluir) then
      begin
        Application.MessageBox('Código de sistema não cadastrado!', 'Atenção', MB_OK + MB_ICONWARNING);
        FDQuery.Close;
        Exit;
      end;
    end;
    if FSistemas.Descricao.IsEmpty then
    begin
      Application.MessageBox('Informe uma descrição para o sistema!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    Result := True;
  finally
    FDQuery.Free;
  end;
end;

end.
