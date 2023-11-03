unit DAO.CadastroRH;

interface

uses FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Model.CadastroRH;

type
  TCadastroRHDAO = class
  private
    FConexao : TConexao;
  public
    constructor Create;
    function Inserir(ACadastro: TCadastroRH): Boolean;
    function Alterar(ACadastro: TCadastroRH): Boolean;
    function Excluir(ACadastro: TCadastroRH): Boolean;
    function Pesquisar(aParam: array of variant): TFDQuery;
  end;
const
  TABLENAME = 'cadastro_rh';


implementation

{ TCadastroRHDAO }

function TCadastroRHDAO.Alterar(ACadastro: TCadastroRH): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('UPDATE ' + TABLENAME + ' SET ' +
                    'NUM_PIS = :PNUM_PIS, NUM_CTPS = :PNUM_CTPS, NUM_SERIE_CTPS = :PNUM_SERIE_CTPS, ' +
                    'UF_CTPS = :PUF_CTPS, NUM_TITULO_ELEITOR = :PNUM_TITULO_ELEITOR, DES_ZONA_ELEITORAL = :PDES_ZONA_ELEITORAL, ' +
                    'DES_SECAO_ELEITORAL = :PDES_SECAO_ELEITORAL, NOM_MUNICIPIO_ELEITORAL = :PNOM_MUNICIPIO_ELEITORAL, ' +
                    'UF_ELEITORAL = :PUF_ELEITORAL, NUM_RESERVISTA = :PNUM_RESERVISTA, ID_FUNCAO = :PID_FUNCAO, ' +
                    'DAT_ADMISSAO = :PDAT_ADMISSAO, DAT_DEMISSAO = :PDAT_DEMISSAO, ID_FOLHA = :PID_FOLHA, ' +
                    'ID_STATUS = :PID_STATUS, DES_OBS = :PDES_OBS ' +
                    'WHERE ID_CADASTRO = :PID_CADASTRO',
                    [ACadastro.PIS, ACadastro.NumeroCTPS, ACadastro.SerieCTPS, ACadastro.UFCTPS, ACadastro.NumeroTituloEleitor,
                    ACadastro.ZonaTituloEleitor, ACadastro.SecaoTituloEleitor, ACadastro.MunicipioTituloEleitor,
                    ACadastro.UFTituloEleitor, ACadastro.NumeroReservista, ACadastro.Funcao, ACadastro.Adminissao,
                    ACadastro.Demissao, ACadastro.IDFolha, ACadastro.Status, ACadastro.OBS, ACadastro.ID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TCadastroRHDAO.Create;
begin
  FConexao := TConexao.Create;
end;

function TCadastroRHDAO.Excluir(ACadastro: TCadastroRH): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('DELETE FROM ' + TABLENAME + ' where WHERE ID_CADASTRO = :PID_CADASTRO', [ACadastro.ID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TCadastroRHDAO.Inserir(ACadastro: TCadastroRH): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('INSERT INTO ' + TABLENAME +
                    '(ID_CADASTRO, NUM_PIS, NUM_CTPS, NUM_SERIE_CTPS, UF_CTPS, NUM_TITULO_ELEITOR, DES_ZONA_ELEITORAL, ' +
                    'DES_SECAO_ELEITORAL, NOM_MUNICIPIO_ELEITORAL, UF_ELEITORAL, NUM_RESERVISTA, ID_FUNCAO, DAT_ADMISSAO, ' +
                    'DAT_DEMISSAO, ID_FOLHA, ID_STATUS, DES_OBS) ' +
                    'VALUES ' +
                    '(:PID_CADASTRO, :PNUM_PIS, :PNUM_CTPS, :PNUM_SERIE_CTPS, :PUF_CTPS, :PNUM_TITULO_ELEITOR, ' +
                    ':PDES_ZONA_ELEITORAL, :PDES_SECAO_ELEITORAL, :PNOM_MUNICIPIO_ELEITORAL, :PUF_ELEITORAL, :PNUM_RESERVISTA, ' +
                    ':PID_FUNCAO, DAT_ADMISSAO, :PDAT_DEMISSAO, :PID_FOLHA, :PID_STATUS, :PDES_OBS) ',
                    [ACadastro.ID, ACadastro.PIS, ACadastro.NumeroCTPS, ACadastro.SerieCTPS, ACadastro.UFCTPS,
                    ACadastro.NumeroTituloEleitor, ACadastro.ZonaTituloEleitor, ACadastro.SecaoTituloEleitor,
                    ACadastro.MunicipioTituloEleitor, ACadastro.UFTituloEleitor, ACadastro.NumeroReservista, ACadastro.Funcao,
                    ACadastro.Adminissao, ACadastro.Demissao, ACadastro.IDFolha, ACadastro.Status, ACadastro.OBS]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCadastroRHDAO.Pesquisar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;

  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'ID' then
  begin
    FDQuery.SQL.Add('WHERE ID_CADASTRO = :ID_CADASTRO');
    FDQuery.ParamByName('ID_CADASTRO').AsInteger := aParam[1];
  end;
  if aParam[0] = 'PIS' then
  begin
    FDQuery.SQL.Add('WHERE NUM_PIS = :NUM_PIS');
    FDQuery.ParamByName('NUM_PIS').AsString := aParam[1];
  end;
  if aParam[0] = 'CTPS' then
  begin
    FDQuery.SQL.Add('WHERE NUM_CTPS LIKE :NUM_CTPS');
    FDQuery.ParamByName('NUM_CTPS').AsString := aParam[1];
  end;
  if aParam[0] = 'TITULO' then
  begin
    FDQuery.SQL.Add('WHERE NUM_TITULO_ELEITOR = :NUM_TITULO_ELEITOR');
    FDQuery.ParamByName('NUM_TITULO_ELEITOR').AsString := aParam[1];
  end;
  if aParam[0] = 'RESERVISTA' then
  begin
    FDQuery.SQL.Add('WHERE NUM_RESERVISTA = :NUM_RESERVISTA');
    FDQuery.ParamByName('NUM_RESERVISTA').AsString := aParam[1];
  end;
  if aParam[0] = 'FILTRO' then
  begin
    FDQuery.SQL.Add('WHERE ' + aParam[1]);
  end;
  FDQuery.Open();
  Result := FDQuery;
end;

end.
