unit Controller.CRMEnderecosEmpresas;

interface

uses Common.ENum, FireDAC.Comp.Client, System.SysUtils, Model.CRMEnderecosEmpresas;

type
  TCRMEnderecosEmpresasController = class
    private

      FEnderecos: TCRMEnderecosEmpresas;

    public

      property Enderecos : TCRMEnderecosEmpresas read FEnderecos write FEnderecos;

      constructor Create();
      destructor Destroy(); override;
      function Localizar(aParam: array of variant): Boolean;
      function Gravar(): Boolean;
      function SaveBatch(memTable: TFDMemTable): Boolean;
      function SetupClass(FDQuery: TFDQuery): boolean;
      function ClearClass(): boolean;
      function GetID(iID: Integer): Integer;

  end;

implementation

{ TCRMEnderecosEmpresas }

function TCRMEnderecosEmpresasController.ClearClass: boolean;
begin
  Result := FEnderecos.ClearClass;
end;

constructor TCRMEnderecosEmpresasController.Create;
begin
  FEnderecos := TCRMEnderecosEmpresas.Create;
end;

destructor TCRMEnderecosEmpresasController.Destroy;
begin
  FEnderecos.Free;
  inherited;
end;

function TCRMEnderecosEmpresasController.GetID(iID: Integer): Integer;
begin
  Result := FEnderecos.GetID(iID);
end;

function TCRMEnderecosEmpresasController.Gravar: Boolean;
begin
  Result := FEnderecos.Gravar;
end;

function TCRMEnderecosEmpresasController.Localizar(aParam: array of variant): Boolean;
begin
  Result := FEnderecos.Localizar(aParam);
end;

function TCRMEnderecosEmpresasController.SaveBatch(memTable: TFDMemTable): Boolean;
begin
  Result := FEnderecos.SaveBatch(memTable);
end;

function TCRMEnderecosEmpresasController.SetupClass(FDQuery: TFDQuery): boolean;
begin
  Result := FEnderecos.SetupClass(FDquery);
end;

end.
