unit Control.CadastroContatos;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, Model.CadastroContatos;

type
  TCadastroContatosControl = class
  private
    FContatos: TCadastroContatos;
  public
    constructor Create;
    destructor Destroy; override;
    property Contatos: TCadastroContatos read FContatos write FContatos;
    function GetID(iID: Integer; iTipo: Integer): Integer;
    function Localizar(aParam: array of variant): Boolean;
    function Gravar(): Boolean;
    function ValidaCampos(): Boolean;
    function SaveBatch(memTable: TFDMemTable): Boolean;
    function SetupClass(FDQuery: TFDQuery): Boolean;
    function ClearClass(): Boolean;

  end;

implementation

{ TCadastroContatosControl }

uses Common.Utils;

function TCadastroContatosControl.ClearClass: Boolean;
begin
  Result := FContatos.ClearClass;
end;

constructor TCadastroContatosControl.Create;
begin
  FContatos := TCadastroContatos.Create;
end;

destructor TCadastroContatosControl.Destroy;
begin
  FContatos.Free;
  inherited;
end;

function TCadastroContatosControl.GetID(iID: Integer; iTipo: Integer): Integer;
begin
  Result := FContatos.GetID(iID);
end;

function TCadastroContatosControl.Gravar: Boolean;
begin
  Result := False;
  if FContatos.Acao = tacIncluir then
  begin
    if not ValidaCampos() then Exit;
  end;
  Result := FContatos.Gravar;
end;

function TCadastroContatosControl.Localizar(aParam: array of variant): Boolean;
begin
  Result := FContatos.Localizar(aParam);
end;

function TCadastroContatosControl.SaveBatch(memTable: TFDMemTable): Boolean;
begin
  Result := FContatos.SaveBatch(memTable);
end;

function TCadastroContatosControl.SetupClass(FDQuery: TFDQuery): Boolean;
begin
  Result := FContatos.SetupClass(FDQuery);
end;

function TCadastroContatosControl.ValidaCampos: Boolean;
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
//  if not Common.Utils.TUtils.ValidaEMail(PChar(FContatos.EMail)) then
//  begin
//    Application.MessageBox('Formato de E-Mail inválido!', 'Atenção', MB_OK + MB_ICONWARNING);
//    Exit;
//  end;
  Result := True;
end;

end.
