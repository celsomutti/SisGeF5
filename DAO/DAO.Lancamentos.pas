unit DAO.Lancamentos;

interface

uses FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, Model.Lancamentos;

type
  TLancamentosDAO = class
  private
    FConexao : TConexao;
  public
    constructor Create;
    function GetID(): Integer;
    function Inserir(ALancamento: TLancamentos): Boolean;
    function Alterar(ALancamento: TLancamentos): Boolean;
    function Excluir(ALancamento: TLancamentos): Boolean;
    function Pesquisar(aParam: array of variant): TFDQuery;
    function ExtratoLancamentos(aParam: Array of variant): TFDQuery;
  end;
  const
    TABLENAME = 'tblancamentos';

implementation

{ TLancamentosDAO }

uses Control.Sistema;

{ TLancamentosDAO }

function TLancamentosDAO.Alterar(ALancamento: TLancamentos): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('UPDATE ' + TABLENAME + ' SET DES_LANCAMENTO = :DES_LANCAMENTO, DAT_LANCAMENTO = :DAT_LANCAMENTO, ' +
    'COD_ENTREGADOR = :COD_ENTREGADOR, COD_ENTREGADOR_ = :COD_ENTREGADOR_, DES_TIPO = :DES_TIPO, ' +
    'VAL_LANCAMENTO = :VAL_LANCAMENTO, DOM_DESCONTO = :DOM_DESCONTO, DAT_DESCONTO = :DAT_DESCONTO, NUM_EXTRATO = :NUM_EXTRATO, ' +
    'DOM_PERSISTIR = :DOM_PERSISTIR WHERE COD_LANCAMENTO = :COD_LANCAMENTO;',[ALancamento.Descricao,
    ALancamento.Data, ALancamento.Cadastro, ALancamento.Entregador ,ALancamento.Tipo, ALancamento.Valor, ALancamento.Desconto,
    ALancamento.DataDesconto, ALancamento.Extrato, ALancamento.Persistir, ALancamento.Codigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TLancamentosDAO.Create;
begin
  FConexao := TSistemaControl.GetInstance().Conexao;
end;

function TLancamentosDAO.Excluir(ALancamento: TLancamentos): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' WHERE COD_LANCAMENTO = :COD_LANCAMENTO;', [ALancamento.Codigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TLancamentosDAO.ExtratoLancamentos(aParam: array of variant): TFDQuery;
var
  fdQuery:TFDQuery;
  sSQL : String;
begin
  fdQuery := FConexao.ReturnQuery;
  sSQL := 'select tblancamentos.cod_entregador as cod_entregador, tblancamentos.des_tipo as des_tipo, ' +
          'sum(tblancamentos.val_lancamento) as val_total from ' + TABLENAME +
          ' where tblancamentos.dat_lancamento <= :data1 and tblancamentos.dom_desconto <> :dom ' +
          'group by tblancamentos.cod_entregador, tblancamentos.des_tipo;';
  fdQuery := FConexao.ReturnQuery;
  fdQuery.SQL.Add(sSQL);
  fdQuery.ParamByName('data1').AsDate := aParam[0];
  fdQuery.ParamByName('dom').AsString := 'S';
  FDQuery.Open();
  Result := FDQuery;
end;

function TLancamentosDAO.GetID: Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(COD_LANCAMENTO),0) + 1 from ' + TABLENAME);
    try
      Result := FDQuery.Fields[0].AsInteger;
    finally
      FDQuery.Close;
    end;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TLancamentosDAO.Inserir(ALancamento: TLancamentos): Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    ALancamento.Codigo := Self.GetID();
    FDQuery.ExecSQL('INSERT INTO ' + TABLENAME + '(COD_LANCAMENTO, DES_LANCAMENTO, DAT_LANCAMENTO, COD_ENTREGADOR, ' +
                    'COD_ENTREGADOR_, DES_TIPO, VAL_LANCAMENTO, DOM_DESCONTO, DAT_DESCONTO, NUM_EXTRATO, DOM_PERSISTIR) ' +
                    'VALUES ' +
                    '(:COD_LANCAMENTO, :DES_LANCAMENTO, :DAT_LANCAMENTO, :COD_ENTREGADOR, :COD_ENTREGADOR_, :DES_TIPO, ' +
                    ':VAL_LANCAMENTO, :DOM_DESCONTO, :DAT_DESCONTO, :NUM_EXTRATO, :DOM_PERSISTIR);', [ALancamento.Codigo,
                    ALancamento.Descricao, ALancamento.Data, ALancamento.Cadastro, ALancamento.Entregador ,ALancamento.Tipo,
                    ALancamento.Valor, ALancamento.Desconto, ALancamento.DataDesconto, ALancamento.Extrato, ALancamento.Persistir]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TLancamentosDAO.Pesquisar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;

  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'CODIGO' then
  begin
    FDQuery.SQL.Add('WHERE COD_LANCAMENTO = :COD_LANCAMENTO');
    FDQuery.ParamByName('COD_LANCAMENTO').AsInteger := aParam[1];
  end;
  if aParam[0] = 'DESCRICAO' then
  begin
    FDQuery.SQL.Add('WHERE DES_LANCAMENTO LIKE :DES_LANCAMENTO');
    FDQuery.ParamByName('DES_LANCAMENTO').AsString := aParam[1];
  end;
  if aParam[0] = 'DATA' then
  begin
    FDQuery.SQL.Add('WHERE DAT_LANCAMENTO = :DAT_LANCAMENTO');
    FDQuery.ParamByName('WHERE DAT_LANCAMENTO').AsDate := aParam[1];
  end;
  if aParam[0] = 'CADASTRO' then
  begin
    FDQuery.SQL.Add('WHERE COD_ENTREGADOR = :COD_ENTREGADOR');
    FDQuery.ParamByName('COD_ENTREGADOR').AsInteger := aParam[1];
  end;
  if aParam[0] = 'EXTRATO' then
  begin
    FDQuery.SQL.Add('WHERE NUM_EXTRATO LIKE :NUM_EXTRATO');
    FDQuery.ParamByName('NUM_EXTRATO').AsString := aParam[1];
  end;
  if aParam[0] = 'FILTRO' then
  begin
    FDQuery.SQL.Add(aParam[1]);
  end;
  if aParam[0] = 'APOIO' then
  begin
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT  ' + aParam[1] + ' FROM ' + TABLENAME + ' ' + aParam[2]);
  end;
  FDQuery.Open;
  Result := FDQuery;
end;

end.
