unit Control.Cadastro;

interface

uses Model.Cadastro, System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, Classes;

type
  TCadastroControl = class
  private
    FCadastro : TCadastro;
  public
    constructor Create;
    destructor Destroy; override;

    function Gravar: Boolean;
    function Localizar(aParam: array of variant): Boolean;
    function GetId(): Integer;
    function GetField(sField: String; sKey: String; sKeyValue: String): String;
//    function ValidaCampos(): Boolean;

    property Cadastro: TCadastro read FCadastro write FCadastro;

  end;

implementation

uses Global.Parametros;

{ TCadastroControl }

constructor TCadastroControl.Create;
begin
  FCadastro := TCadastro.Create;
end;

destructor TCadastroControl.Destroy;
begin
  FCadastro.Free;
  inherited;
end;

function TCadastroControl.GetField(sField, sKey, sKeyValue: String): String;
begin
  Result := FCadastro.GetField(sField, sKey, sKeyValue);
end;

function TCadastroControl.GetId: Integer;
begin
  Result := FCadastro.GetID;
end;

function TCadastroControl.Gravar: Boolean;
begin
  Result := False;
//  if not ValidaCampos() then Exit;
  Result := Fcadastro.Gravar;
end;

function TCadastroControl.Localizar(aParam: array of variant): Boolean;
begin
  Result := Fcadastro.Localizar(aParam);
end;

end.
