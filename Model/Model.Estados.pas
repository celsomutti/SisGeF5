unit Model.Estados;

interface

uses Common.ENum, FireDAC.Comp.Client, Dialogs;


type
  TEstados = class
  private
    FAcao: TAcao;
    FUF: String;
    FNome: String;
    FCEPInicial: String;
    FCEPFinal: String;
    FLog: String;
  public
    property UF: String read FUF write FUF;
    property Nome: String read FNome write FNome;
    property CEPInicial: String read FCEPInicial write FCEPFinal;
    property CEPFinal: String read FCEPFinal write FCEPFinal;
    property LOG: String read FLog write FLog;
    property Acao: TAcao read FAcao write FAcao;

    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
    function ValidarDados(): Boolean;

  end;


implementation

uses DAO.Estados;

{ TEstados }

function TEstados.Gravar: Boolean;
var
  estadoDAO : TEstadosDAO;
begin
  try
    Result := False;
    estadoDAO := TEstadosDAO.Create;
    case FAcao of
      Common.ENum.tacIncluir: Result := estadoDAO.Inserir(Self);
      Common.ENum.tacAlterar: Result := estadoDAO.Alterar(Self);
      Common.ENum.tacExcluir: Result := estadoDAO.Excluir(Self);
    end;
  finally
    estadoDAO.Free;
  end;
end;

function TEstados.Localizar(aParam: array of variant): TFDQuery;
var
  estadoDAO: TEstadosDAO;
begin
  try
    estadoDAO := TEstadosDAO.Create;
    Result := estadoDAO.Pesquisar(aParam);
  finally
    estadoDAO.Free;
  end;
end;

function TEstados.ValidarDados: Boolean;
var
  estadoDAO: TEstadosDAO;
begin
  try
    Result := False;
    estadoDAO := TEstadosDAO.Create;
    if Self.FAcao = tacIncluir then
    begin
      if estadoDAO.EstadoExiste(Self) then
      begin
        ShowMessage('Estado já cadastrado!');
        Exit;
      end;
    end;
    Result := True;
  finally
    estadoDAO.Free;
  end;
end;

end.
