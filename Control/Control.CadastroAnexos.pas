unit Control.CadastroAnexos;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, Model.CadastroAnexos;


  Type
    TCadastroAnexosControl = class
    private
      FAnexo: TCadastroAnexos;
    public
      constructor Create;
      destructor Destroy; override;
      property Anexos: TCadastroAnexos read FAnexo write FAnexo;
      function Localizar(aParam: array of variant): TFDQuery;
      function Gravar(): Boolean;
      procedure SetupSelf(fdQuery: TFDQuery);
      procedure ClearSelf;
    end;

implementation

{ TCadastroAnexosControl }

procedure TCadastroAnexosControl.ClearSelf;
begin
  FAnexo.ClearSelf;
end;

constructor TCadastroAnexosControl.Create;
begin
  FAnexo := TCadastroAnexos.Create;
end;

destructor TCadastroAnexosControl.Destroy;
begin
  FAnexo.Free;
  inherited;
end;

function TCadastroAnexosControl.Gravar: Boolean;
begin
  Result := False;
  Result := FAnexo.Gravar;
end;

function TCadastroAnexosControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FAnexo.Localizar(aParam);
end;

procedure TCadastroAnexosControl.SetupSelf(fdQuery: TFDQuery);
begin
  FAnexo.SetupSelf(fdQuery);
end;

end.
