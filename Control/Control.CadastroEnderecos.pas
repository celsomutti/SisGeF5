unit Control.CadastroEnderecos;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, Control.Sistema, Model.CadastroEnderecos;

type
  TCadastroEnderecosControl = class
  private
    FEnderecos : TCadastroEnderecos;
  public
    constructor Create;
    destructor Destroy; override;
    property Enderecos: TCadastroEnderecos read FEnderecos write FEnderecos;
    function Localizar(aParam: array of variant): boolean;
    function Gravar(): Boolean;
    function ValidaCampos(): Boolean;
    function SaveBatch(memTable: TFDMemTable): Boolean;
    function SetupClass(FDQuery: TFDQuery): boolean;
    function ClearClass(): boolean;
    function GetID(iID: Integer): Integer;

  end;

implementation

{ TCadastroEnderecosControl }

uses Common.Utils;

function TCadastroEnderecosControl.ClearClass: boolean;
begin
  Result := FEnderecos.ClearClass;
end;

constructor TCadastroEnderecosControl.Create;
begin
  FEnderecos := TCadastroEnderecos.Create;
end;

destructor TCadastroEnderecosControl.Destroy;
begin
  FEnderecos.Free;
  inherited;
end;

function TCadastroEnderecosControl.GetID(iID: Integer): Integer;
begin
  Result := FEnderecos.GetID(iID);
end;

function TCadastroEnderecosControl.Gravar: Boolean;
begin
  Result := False;
  if Fenderecos.Acao = tacIncluir then
  begin
    if not ValidaCampos() then Exit;
  end;
  Result := FEnderecos.Gravar;
end;

function TCadastroEnderecosControl.Localizar(aParam: array of variant): Boolean;
begin
  Result := FEnderecos.Localizar(aParam);
end;

function TCadastroEnderecosControl.SaveBatch(memTable: TFDMemTable): Boolean;
begin
  Result := FEnderecos.SaveBatch(memTable);
end;

function TCadastroEnderecosControl.SetupClass(FDQuery: TFDQuery): boolean;
begin
  Result := Fenderecos.SetupClass(FDQuery);
end;

function TCadastroEnderecosControl.ValidaCampos: Boolean;
var
  FDQuery : TFDQuery;
  aParam: Array of variant;
begin
  try
    Result := False;
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    if FEnderecos.ID = 0 then
    begin
      Application.MessageBox('Informe o ID do cadastro!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if FEnderecos.Tipo.IsEmpty then
    begin
      Application.MessageBox('Informe o tipo de endereço!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    Result := True;
  finally
    FDQuery.Free;
  end;
end;

end.
