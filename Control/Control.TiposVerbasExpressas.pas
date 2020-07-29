unit Control.TiposVerbasExpressas;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, Control.Sistema, Model.TiposVerbasExpressas;

type
  TTiposVerbasExpressasControl = class
  private
    FTipos : TTiposVerbasExpressas;
  public
    constructor Create;
    destructor Destroy; override;
    function Gravar: Boolean;
    function Localizar(aParam: array of variant): TFDQuery;
    function ValidarCampos(): Boolean;
    function RetornaListaSimples(memTable: TFDMemTable): boolean;
    property Tipos: TTiposVerbasExpressas read FTipos write FTipos;
  end;

implementation

{ TTiposVerbasExpressasControl }

constructor TTiposVerbasExpressasControl.Create;
begin
  FTipos := TTiposVerbasExpressas.Create;
end;

destructor TTiposVerbasExpressasControl.Destroy;
begin
  FTipos.Create;
  inherited;
end;

function TTiposVerbasExpressasControl.Gravar: Boolean;
begin
  Result := FTipos.Gravar;
end;

function TTiposVerbasExpressasControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FTipos.Localizar(aParam);
end;

function TTiposVerbasExpressasControl.RetornaListaSimples(memTable: TFDMemTable): boolean;
begin
  Result := RetornaListaSimples(memTable);
end;

function TTiposVerbasExpressasControl.ValidarCampos: Boolean;
var
  FDQuery: TFDQuery;
  aParam: array of variant;
begin
  try
    Result := False;
    if FTipos.Codigo = 0 then
    begin
      Application.MessageBox('Informe o código do tipo de verba!', 'Atenção!', MB_OK + MB_ICONEXCLAMATION);
      Exit;
    end;
    if FTipos.Descricao.IsEmpty then
    begin
      Application.MessageBox('Informe a descrição do tipo de verba!', 'Atenção!', MB_OK + MB_ICONEXCLAMATION);
      Exit;
    end;
    if FTipos.Colunas.IsEmpty then
    begin
      Application.MessageBox('Informe as colunas do tipo de verba!', 'Atenção!', MB_OK + MB_ICONEXCLAMATION);
      Exit;
    end;
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    SetLength(aParam,2);
    aParam[0] := 'CODIGO';
    aParam[1] := FTipos.Codigo;
    FDQuery := FTipos.Localizar(aParam);
    Finalize(aParam);
    if not FDQuery.IsEmpty then
    begin
      Application.MessageBox('Código de tipo de verba já cadastrado!', 'Atenção!', MB_OK + MB_ICONEXCLAMATION);
      Exit;
    end;
    FDQuery.Free;
    Result := True;
  finally
    FDQuery.Free;
  end;
end;

end.
