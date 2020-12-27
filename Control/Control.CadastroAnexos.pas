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
      function Localizar(aParam: array of variant): boolean;
      function Gravar(): Boolean;
<<<<<<< HEAD
      procedure SetupClass(FDQuery: TFDquery);
      procedure ClearSetup;
=======
      procedure SetupClass(FDQuery: TFDQuery);
      procedure ClearSetup;

>>>>>>> f60b9e763f0b2e0e549b03584ad8219e01c1cbec
    end;

implementation

{ TCadastroAnexosControl }

procedure TCadastroAnexosControl.ClearSetup;
begin
  FAnexo.ClearSetup;
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

function TCadastroAnexosControl.Localizar(aParam: array of variant): Boolean;
begin
  Result := FAnexo.Localizar(aParam);
end;

<<<<<<< HEAD
procedure TCadastroAnexosControl.SetupClass(FDQuery: TFDquery);
=======
procedure TCadastroAnexosControl.SetupClass(FDQuery: TFDQuery);
>>>>>>> f60b9e763f0b2e0e549b03584ad8219e01c1cbec
begin
  FAnexo.SetupClass(FDQuery);
end;

end.
