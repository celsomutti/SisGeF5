unit Model.AtribuicoesExpressas;

interface

uses Common.ENum, FireDAC.Comp.Client, service.connectionMySQL;

type
  TAtribuicoesExpressas =  class
  private
    FRetorno: TDateTime;
    FNN: String;
    FFlagRetorno: ShortInt;
    FCodigo: String;
    FID: Integer;
    FEntregador: Integer;
    FLote: Integer;
    FLOG: String;
    FData: TDateTime;
    FAcao: TAcao;
    FBairro: String;
    FCliente: Integer;
    FVolumes: Integer;
    FCEP: String;
    FNomeEmbarcador: String;
    FConsumidor: String;
    FEmbarcador: Integer;
    FEndereco: String;
    FTelefone: String;
    FCodigoRetorno: String;
    FCodigoInformativo: Integer;
    FQuery: TFDQuery;
    public
    property ID: Integer read FID write FID;
    property Codigo: String read FCodigo write FCodigo;
    property Data: TDateTime read FData write FData;
    property Entregador: Integer read FEntregador write FEntregador;
    property Cliente: Integer read FCliente write FCliente;
    property Embarcador: Integer read FEmbarcador write FEmbarcador;
    property NomeEmbarcador: String read FNomeEmbarcador write FNomeEmbarcador;
    property NN: String read FNN write FNN;
    property CodigoRetorno: String read FCodigoRetorno write FCodigoRetorno;
    property Endereco: String read FEndereco write FEndereco;
    property CEP: String read FCEP write FCEP;
    property Bairro: String read FBairro write FBairro;
    property Consumidor: String read FConsumidor write FConsumidor;
    property Volumes: Integer read FVolumes write FVolumes;
    property Telefone: String read FTelefone write FTelefone;
    property Lote: Integer read FLote write FLote;
    property Retorno: TDateTime read FRetorno write FRetorno;
    property FlagRetorno: ShortInt read FFlagRetorno write FFlagRetorno;
    property CodigoInformativo: Integer read FCodigoInformativo write FCodigoInformativo;
    property LOG: String read FLOG write FLOG;
    property Query : TFDQuery read FQuery write FQuery;
    property Acao: TAcao read FAcao write FAcao;

    function GetID(): Integer;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
    function CustomSearch(aParams: array of string): boolean;
  end;

implementation

{ TAtribuicoesExpressas }

uses DAO.AtribuicoesExpressas;

function TAtribuicoesExpressas.CustomSearch(aParams: array of string): boolean;
var
  sSource : string;
  FConexao : TConnectionMySQL;
begin
  Result := False;
  if Length(aParams) < 2 then
  begin
    Exit
  end;
  FConexao := TConnectionMySQL.Create;
  FQuery := FConexao.GetQuery;
  FQuery.SQL.Clear;
  FQuery.SQL.Add('select !colums from !table {if !where } where !where {fi}');
  if aParams[1] = 'TABLE' then
    sSource := TABLENAME
  else
    sSource := aParams[1];
  FQuery.MacroByName('colums').AsRaw := aParams[0];
  FQuery.MacroByName('table').AsRaw := sSource;
  FQuery.MacroByName('where').AsRaw := aParams[2];
  FQuery.Open();
  if FQuery.IsEmpty then
  begin
    FQuery.Connection.Close;
    FConexao.Free;
    Exit;
  end;
  Result := True;
end;

function TAtribuicoesExpressas.GetID: Integer;
var
  atribuicoesDAO: TAtribuicoesExpressasDAO;
begin
  try
    atribuicoesDAO := TAtribuicoesExpressasDAO.Create;
    Result := atribuicoesDAO.GetID;
  finally
    atribuicoesDAO.Free;
  end;
end;

function TAtribuicoesExpressas.Gravar: Boolean;
var
  atribuicoesDAO: TAtribuicoesExpressasDAO;
begin
  try
    Result := False;
    atribuicoesDAO := TAtribuicoesExpressasDAO.Create;
    case FAcao of
      Common.ENum.tacIncluir: Result := atribuicoesDAO.Inserir(Self);
      Common.ENum.tacAlterar: Result := atribuicoesDAO.Alterar(Self);
      Common.ENum.tacExcluir: Result := atribuicoesDAO.Excluir(Self);
    end;
  finally
    atribuicoesDAO.Free;
  end;
end;

function TAtribuicoesExpressas.Localizar(aParam: array of variant): TFDQuery;
var
  atribuicoesDAO: TAtribuicoesExpressasDAO;
begin
  try
    atribuicoesDAO := TAtribuicoesExpressasDAO.Create;
    Result := atribuicoesDAO.Pesquisar(aParam);
  finally
    atribuicoesDAO.Free;
  end;
end;

end.
