unit Controller.CRMContatosClientes;

interface

uses Model.CRMContatosClientes, Common.ENum, FireDAC.Comp.Client, System.SysUtils;

type
  TCRMContatosClientesController = class
  private
    FContatos: TCRMContatosCliente;
  public
    property Contatos: TCRMContatosCliente read FContatos write FContatos;

    constructor Create();
    destructor Destroy(); override;
    function GetID(iID: Integer): Integer;
    function Localizar(aParam: array of variant): Boolean;
    function Gravar(): Boolean;
    function SaveBatch(memTable: TFDMemTable): Boolean;
    function SetupClass(FDQuery: TFDQuery): Boolean;
    function ClearClass(): Boolean;

  end;

implementation

{ TCRMContatosClientesController }

function TCRMContatosClientesController.ClearClass: Boolean;
begin
  Result := FContatos.ClearClass;
end;

constructor TCRMContatosClientesController.Create;
begin
  FContatos := TCRMContatosCliente.Create;
end;

destructor TCRMContatosClientesController.Destroy;
begin
  FContatos.Free;
  inherited;
end;

function TCRMContatosClientesController.GetID(iID: Integer): Integer;
begin
  Result := FContatos.GetID(iID);
end;

function TCRMContatosClientesController.Gravar: Boolean;
begin
  Result := FContatos.Gravar;
end;

function TCRMContatosClientesController.Localizar(aParam: array of variant): Boolean;
begin
  Result := FContatos.Localizar(aParam);
end;

function TCRMContatosClientesController.SaveBatch(memTable: TFDMemTable): Boolean;
begin
  Result := FContatos.SaveBatch(memTable);
end;

function TCRMContatosClientesController.SetupClass(FDQuery: TFDQuery): Boolean;
begin
  Result := FContatos.SetupClass(FDQuery);
end;

end.
