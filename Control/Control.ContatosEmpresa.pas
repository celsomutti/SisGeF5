unit Control.ContatosEmpresa;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Model.ContatosEmpresa, Common.ENum;

type
  TContatosEmpresaControl = class
  private
    FContatos: TContatosEmpresa;
  public
    constructor Create;
    destructor Destroy; override;
    property Contatos: TContatosEmpresa read FContatos write FContatos;
    function GetID(iID: Integer): Integer;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
    function ValidaCampos(): Boolean;
  end;

implementation

{ TContatosEmpresaControl }

uses Common.Utils;

constructor TContatosEmpresaControl.Create;
begin
  FContatos := TContatosEmpresa.Create;
end;

destructor TContatosEmpresaControl.Destroy;
begin
  FContatos.Free;
  inherited;
end;

function TContatosEmpresaControl.GetID(iID: Integer): Integer;
begin
  Result := FContatos.GetID(iID);
end;

function TContatosEmpresaControl.Gravar: Boolean;
begin
  Result := False;
  if FContatos.Acao = tacIncluir then
  begin
    if not ValidaCampos() then Exit;
  end;
  Result := FContatos.Gravar;
end;

function TContatosEmpresaControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FContatos.Localizar(aParam);
end;

function TContatosEmpresaControl.ValidaCampos: Boolean;
begin
  Result := False;
  if FContatos.ID = 0 then
  begin
    Application.MessageBox('Informe o ID do cadastro!', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if FContatos.Acao <> tacIncluir then
  begin
    if FContatos.Sequencia = 0 then
    begin
      Application.MessageBox('Informe a sequência!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
  end;
  if FContatos.Descricao.IsEmpty then
  begin
    Application.MessageBox('Informe a descrição do contato!', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if not Common.Utils.TUtils.ValidaEMail(PChar(FContatos.EMail)) then
  begin
    Application.MessageBox('Formato de E-Mail inválido!', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  Result := True;
end;

end.
