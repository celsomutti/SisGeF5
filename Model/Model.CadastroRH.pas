unit Model.CadastroRH;

interface

uses Common.ENum, FireDAC.Comp.Client, System.SysUtils, DAO.Conexao;

type
  TCadastroRH = class
  private
    FAcao: TAcao;
    FDemissao: TDate;
    FAdmissao: TDate;
    FFuncao: Integer;
    FSerieCTPS: String;
    FNumeroCTPS: String;
    FUFTituloEleitor: String;
    FIDFolha: Integer;
    FNumeroReservista: String;
    FNumeroTituloEleitor: String;
    FID: Integer;
    FMunicipioTituloEleitor: String;
    FPIS: String;
    FSecaoTituloEleitor: String;
    FZonaTituloEleitor: String;
    FUFCTPS: String;
    FStatus: Integer;
    FOBS: String;
    FConexao : TConexao;
    FIDEmpresa: integer;
    FConjuge: String;
    FTipoCadastro: Integer;

    function Inserir(): Boolean;
    function Alterar(): Boolean;
    function Excluir(): Boolean;

  public
    property ID: Integer read FID write FID;
    property TipoCadastro: Integer read FTipoCadastro write FTipoCadastro;
    property PIS: String read FPIS write FPIS;
    property NumeroCTPS: String read FNumeroCTPS write FNumeroCTPS;
    property SerieCTPS: String read FSerieCTPS write FSerieCTPS;
    property UFCTPS: String read FUFCTPS write FUFCTPS;
    property NumeroTituloEleitor: String read FNumeroTituloEleitor write FNumeroTituloEleitor;
    property ZonaTituloEleitor: String read FZonaTituloEleitor write FZonaTituloEleitor;
    property SecaoTituloEleitor: String read FSecaoTituloEleitor write FSecaoTituloEleitor;
    property MunicipioTituloEleitor: String read FMunicipioTituloEleitor write FMunicipioTituloEleitor;
    property UFTituloEleitor: String read FUFTituloEleitor write FUFTituloEleitor;
    property NumeroReservista: String read FNumeroReservista write FNumeroReservista;
    property Conjuge: String read FConjuge write FConjuge;
    property Funcao: Integer read FFuncao write FFuncao;
    property Adminissao: TDate read FAdmissao write FAdmissao;
    property Demissao: TDate read FDemissao write FDemissao;
    property IDEmpresa: integer read FIDEmpresa write FIDEmpresa;
    property IDFolha: Integer read FIDFolha write FIDFolha;
    property Status: Integer read FStatus write FStatus;
    property OBS: String read FOBS write FOBS;
    property Acao: TAcao read FAcao write FAcao;

    constructor Create;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;

  end;
const
  TABLENAME = 'cadastro_rh';

implementation

{ TCadastroRH }

function TCadastroRH.Alterar: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('update ' + TABLENAME + ' set ' +
                    'num_pis = :pnum_pis, num_ctps = :pnum_ctpsS, num_serie_ctps = :pnum_serie_ctps, ' +
                    'uf_ctps = :puf_ctps, num_titulo_eleitor = :pnum_titulo_eleitor, des_zona_eleitoral = :pdes_zona_eleitoral, ' +
                    'des_secao_eleitoral = :pdes_secao_eleitoral, nom_municipio_eleitoral = :pnom_municipio_eleitoral, ' +
                    'uf_eleitoral = :puf_eleitoral, num_reservista = :pnum_reservista, nom_conjuge = :nom_conjuge, ' +
                    'id_funcao = :pid_funcao, dat_admissao = :pdat_admissao, dat_demissao = :pdat_demissao, ' +
                    'id_empresa = :pid_empresa, id_folha = :pid_folha, id_status = :pid_status, des_obs = :pdes_obs ' +
                    'where id_cadastro = :pid_cadastro and cod_tipo_cadastro = :cod_tipo_cadastro',
                    [Self.PIS, Self.NumeroCTPS, Self.SerieCTPS, Self.UFCTPS, Self.NumeroTituloEleitor,
                    Self.ZonaTituloEleitor, Self.SecaoTituloEleitor, Self.MunicipioTituloEleitor,
                    Self.UFTituloEleitor, Self.NumeroReservista, Self.Conjuge, Self.Funcao, Self.Adminissao,
                    Self.Demissao, Self.IDEmpresa, Self.IDFolha, Self.Status, Self.OBS, Self.ID, Self.TipoCadastro]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TCadastroRH.Create;
begin
  FConexao := TConexao.Create;
end;

function TCadastroRH.Excluir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where id_cadastro = :pid_cadastro and ' +
                   'cod_tipo_cadastro = :cod_tipo_cadastro', [Self.ID, Self.TipoCadastro]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TCadastroRH.Gravar: Boolean;
begin
  Result := False;
  case FAcao of
    tacIncluir : Result := Self.Inserir();
    tacAlterar : Result := Self.Alterar();
    tacExcluir : Result := Self.Excluir();
  end;
end;

function TCadastroRH.Inserir: Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('insert into ' + TABLENAME +
                    '(id_cadastro, cod_tipo_cadastro, num_pis, num_ctps, num_serie_ctps, uf_ctps, num_titulo_eleitor, des_zona_eleitoral, ' +
                    'des_sessao_eleitoral, nom_municipio_eleitoral, uf_eleitoral, num_reservista, nom_conjuge, cod_funcao, ' +
                    'dat_admissao, id_empresa, id_folha, id_status, des_obs) ' +
                    'values ' +
                    '(:pid_cadastro, :cod_tipo_cadastro, :pnum_pis, :pnum_ctps, :pnum_serie_ctps, :puf_ctps, :pnum_titulo_eleitor, ' +
                    ':pdes_zona_eleitoral, :pdes_sessao_eleitoral, :pnom_municipio_eleitoral, :puf_eleitoral, :pnum_reservista, ' +
                    ':nom_conjuge, :pcod_funcao, :pdat_admissao, :pid_empresa, :pid_folha, :pid_status, :pdes_obs);',
                    [Self.ID, Self.TipoCadastro, Self.PIS, Self.NumeroCTPS, Self.SerieCTPS, Self.UFCTPS, Self.NumeroTituloEleitor,
                    Self.ZonaTituloEleitor, Self.SecaoTituloEleitor, Self.MunicipioTituloEleitor, Self.UFTituloEleitor,
                    Self.NumeroReservista, Self.Conjuge, Self.Funcao,
                    Self.Adminissao, Self.Demissao, Self.IDEmpresa, Self.IDFolha, Self.Status, Self.OBS]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCadastroRH.Localizar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;

  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'ID' then
  begin
    FDQuery.SQL.Add('where id_cadastro = :id_cadastro and cod_tipo_cadastro = :cod_tipo_cadastro');
    FDQuery.ParamByName('id_cadastro').AsInteger := aParam[1];
    FDQuery.ParamByName('cod_tipo_cadastro').AsInteger := aParam[2];
  end;
  if aParam[0] = 'PIS' then
  begin
    FDQuery.SQL.Add('where num_pis = :num_pis');
    FDQuery.ParamByName('num_pis').AsString := aParam[1];
  end;
  if aParam[0] = 'CTPS' then
  begin
    FDQuery.SQL.Add('where num_ctps like :num_ctps');
    FDQuery.ParamByName('num_ctps').AsString := aParam[1];
  end;
  if aParam[0] = 'TITULO' then
  begin
    FDQuery.SQL.Add('wheere num_titulo_eleitor = :num_titulo_eleitor');
    FDQuery.ParamByName('num_titulo_eleitor').AsString := aParam[1];
  end;
  if aParam[0] = 'RESERVISTA' then
  begin
    FDQuery.SQL.Add('where num_reservista = :num_reservista');
    FDQuery.ParamByName('num_reservista').AsString := aParam[1];
  end;
  if aParam[0] = 'FILTRO' then
  begin
    FDQuery.SQL.Add('where ' + aParam[1]);
  end;
  FDQuery.Open();
  Result := FDQuery;
end;

end.
