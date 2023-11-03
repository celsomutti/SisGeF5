unit Controller.CRMEnderecosClientes;

interface

uses Common.ENum, FireDAC.Comp.Client, System.SysUtils, Model.CRMEnderecosClientes;

type
  TCRMEnderecosClientesController = class
    private

      FEnderecos: TCRMEnderecosClientes;

    public

      property Enderecos : TCRMEnderecosClientes read FEnderecos write FEnderecos;

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

{ TCRMEnderecosClientes }

function TCRMEnderecosClientesController.ClearClass: boolean;
begin
  Result := FEnderecos.ClearClass;
end;

constructor TCRMEnderecosClientesController.Create;
begin
  FEnderecos := TCRMEnderecosClientes.Create;
end;

destructor TCRMEnderecosClientesController.Destroy;
begin
  FEnderecos.Free;
  inherited;
end;

function TCRMEnderecosClientesController.GetID(iID: Integer): Integer;
begin
  Result := FEnderecos.GetID(iID);
end;

function TCRMEnderecosClientesController.Gravar: Boolean;
begin
  Result := FEnderecos.Gravar;
end;

function TCRMEnderecosClientesController.Localizar(aParam: array of variant): Boolean;
begin
  Result := FEnderecos.Localizar(aParam);
end;

function TCRMEnderecosClientesController.SaveBatch(memTable: TFDMemTable): Boolean;
begin
  Result := FEnderecos.SaveBatch(memTable);
end;

function TCRMEnderecosClientesController.SetupClass(FDQuery: TFDQuery): boolean;
begin
  Result := FEnderecos.SetupClass(FDquery);
end;

end.
