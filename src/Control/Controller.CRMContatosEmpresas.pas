unit Controller.CRMContatosEmpresas;

interface

uses Model.CRMContatosEmpresa, Common.ENum, FireDAC.Comp.Client, System.SysUtils;

type
  TCRMContatosEmpresasController = class
  private
    FContatos: TCRMContatosEmpresa;
  public
    property Contatos: TCRMContatosEmpresa read FContatos write FContatos;

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

{ TCRMContatosEmpresasController }

function TCRMContatosEmpresasController.ClearClass: Boolean;
begin
  Result := FContatos.ClearClass;
end;

constructor TCRMContatosEmpresasController.Create;
begin
  FContatos := TCRMContatosEmpresa.Create;
end;

destructor TCRMContatosEmpresasController.Destroy;
begin
  FContatos.Free;
  inherited;
end;

function TCRMContatosEmpresasController.GetID(iID: Integer): Integer;
begin
  Result := FContatos.GetID(iID);
end;

function TCRMContatosEmpresasController.Gravar: Boolean;
begin
  Result := FContatos.Gravar;
end;

function TCRMContatosEmpresasController.Localizar(aParam: array of variant): Boolean;
begin
  Result := FContatos.Localizar(aParam);
end;

function TCRMContatosEmpresasController.SaveBatch(memTable: TFDMemTable): Boolean;
begin
  Result := FContatos.SaveBatch(memTable);
end;

function TCRMContatosEmpresasController.SetupClass(FDQuery: TFDQuery): Boolean;
begin
  Result := FContatos.SetupClass(FDQuery);
end;

end.
