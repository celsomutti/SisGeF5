unit DAO.LacresDevolucao;

interface

uses FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Model.LacresDevolucao;

type
  TLacresDevolucaoDAO = class
  private
    FConexao: TConexao;
  public
    constructor Create;
    function Inserir(ALacre: TLacresDevolucao): Boolean;
    function Alterar(ALacre: TLacresDevolucao): Boolean;
    function Excluir(ALacre: TLacresDevolucao): Boolean;
    function Pesquisar(aParam: array of variant): TFDQuery;
  end;
  const
    TABLENAME = 'tblacres';


implementation

{ TLacresDevolucaoDAO }

function TLacresDevolucaoDAO.Alterar(ALacre: TLacresDevolucao): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('update ' + TABLENAME + ' set COD_STATUS = :COD_STATUS, NOM_USUARIO = :NOM_USUARIO, ' +
                    'DAT_MANUTENCAO = :DAT_MANUTENCAO ' +
                    'where COD_BASE = :COD_BASE AND NUM_LACRE = :NUM_LACRE;',[ALacre.Status, ALacre.Usuario, ALacre.Manutencao,
                    Alacre.Base, Alacre.Lacre]);
    Result := True;
  finally
    FDQuery.Free;
  end;
end;

constructor TLacresDevolucaoDAO.Create;
begin
  FConexao := TConexao.Create();
end;

function TLacresDevolucaoDAO.Excluir(ALacre: TLacresDevolucao): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where COD_BASE = :COD_BASE AND NUM_LACRE = :NUM_LACRE;',
                   [ALacre.Base, ALacre.Lacre]);
    Result := True;
  finally
    FDQuery.Free;
  end;
end;

function TLacresDevolucaoDAO.Inserir(ALacre: TLacresDevolucao): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    FDQuery.ExecSQL('insert int ' + TABLENAME + ' (COD_BASE, NUM_LACRE, COD_STATUS, NOM_USUARIO, DAT_MANUTENCAO) ' +
                    'VALUES ' +
                    '(:COD_BASE, :NUM_LACRE, :COD_STATUS, :NOM_USUARIO, :DAT_MANUTENCAO);',[Alacre.Base, Alacre.Lacre,
                    ALacre.Status, ALacre.Usuario, ALacre.Manutencao]);
    Result := True;
  finally
    FDQuery.Free;
  end;
end;

function TLacresDevolucaoDAO.Pesquisar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;

  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'BASE' then
  begin
    FDQuery.SQL.Add('WHERE COD_BASE = :COD_BASE');
    FDQuery.ParamByName('COD_BASE').AsInteger := aParam[1];
  end;

  if aParam[0] = 'LACRE' then
  begin
    FDQuery.SQL.Add('WHERE COD_BASE = :COD_BASE AND NUM_LACRE = :NUM_LACRE');
    FDQuery.ParamByName('COD_BASE').AsInteger := aParam[1];
    FDQuery.ParamByName('NUM_LACRE').AsString := aParam[2];
  end;
  if aParam[0] = 'FILTRO' then
  begin
    FDQuery.SQL.Add('WHERE ' + aParam[1]);
  end;
  FDQuery.Open;
  Result := FDQuery;
end;

end.
