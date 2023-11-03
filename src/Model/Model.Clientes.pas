unit Model.Clientes;

interface

uses Common.ENum, FireDAC.Comp.Client;

type

  TClientes = class

  private

    FCodigo: Integer;
    FNome: String;
    FOS: Integer;
    FAcao: TAcao;
    FVerba: Double;
    FCliente: Integer;

  public
    property Cliente: Integer read FCliente write FCliente;
    property Codigo: Integer read FCodigo write FCodigo;
    property Nome: String read FNome write FNome;
    property Verba: Double read FVerba write FVerba;
    property OS: Integer read FOS write FOS;
    property Acao: TAcao read FAcao write FAcao;

    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;


   end;

implementation

{ TClientes }

uses DAO.Clientes;

function TClientes.Gravar: Boolean;
var
  clienteDAO : TClientesDAO;
begin
  try
    Result := False;
    clienteDAO := TClientesDAO.Create;
    case FAcao of
      Common.ENum.tacIncluir: Result := clienteDAO.Inserir(Self);
      Common.ENum.tacAlterar: Result := clienteDAO.Alterar(Self);
      Common.ENum.tacExcluir: Result := clienteDAO.Excluir(Self);
    end;
  finally
    clienteDAO.Free;
  end;
end;

function TClientes.Localizar(aParam: array of variant): TFDQuery;
var
  clientesDAO: TClientesDAO;
begin
  try
    clientesDAO := TClientesDAO.Create;
    Result := clientesDAO.Pesquisar(aParam);
  finally
    clientesDAO.Free;
  end;
end;

end.
