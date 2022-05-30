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
    function ValidateData(): boolean;
    function SetupModel(FDCadastro: TFDQuery): Boolean;
    function SearchEmployee(iIndex: integer; sText, sFilter: String): boolean;

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
  if not ValidateData() then Exit;
  Result := Fcadastro.Gravar;
end;

function TCadastroControl.Localizar(aParam: array of variant): Boolean;
begin
  Result := Fcadastro.Localizar(aParam);
end;

function TCadastroControl.SearchEmployee(iIndex: integer; sText, sFilter: String): boolean;
begin
  Result := FCadastro.SearchEmployee(iIndex, sText, sFilter);
end;

function TCadastroControl.SetupModel(FDCadastro: TFDQuery): Boolean;
begin
  Result := FCadastro.SetupModel(FDCadastro);
end;

function TCadastroControl.ValidateData: boolean;
begin
  Result := FCadastro.ValidateData();
end;

end.
