unit Model.Lancamentos;

interface

uses Common.ENum, FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, System.Variants;

type
  TLancamentos = class
  private
    FCodigo: Integer;
    FDescricao: String;
    FData: TDateTime;
    FCadastro: Integer;
    FEntregador: Integer;
    FTipo: String;
    FValor: Double;
    FDesconto: String;
    FDataDesconto: TDate;
    FExtrato: String;
    FPersistir: String;
    FConexao : TConexao;

    FAcao: TAcao;

    function Inserir(): Boolean;
    function Alterar(): Boolean;
    function Excluir(): Boolean;

  public
    constructor Create;
    property Codigo: Integer read FCodigo write FCodigo;
    property Descricao: String read FDescricao write FDescricao;
    property Data: TDateTime read FData write FData;
    property Cadastro: Integer read FCadastro write FCadastro;
    property Entregador: Integer read FEntregador write FEntregador;
    property Tipo: String read FTipo write FTipo;
    property Valor: Double read FValor write FValor;
    property Desconto: String read FDesconto write FDesconto;
    property DataDesconto: TDate read FDataDesconto write FDataDesconto;
    property Extrato: String read FExtrato write FExtrato;
    property Persistir: String read FPersistir write FPersistir;
    property Acao: TAcao read FAcao write FAcao;

    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
    function GetID(): Integer;
    function ExtratoLancamentos(aParam: Array of variant): TFDQuery;
    function EncerraLancamentos(aParam: Array of variant): Boolean;

  end;
const
    TABLENAME = 'tblancamentos';
    SQLUPDATE = 'UPDATE ' + TABLENAME + ' SET DES_LANCAMENTO = :DES_LANCAMENTO, DAT_LANCAMENTO = :DAT_LANCAMENTO, ' +
                'COD_ENTREGADOR = :COD_ENTREGADOR, COD_ENTREGADOR_ = :COD_ENTREGADOR_, DES_TIPO = :DES_TIPO, ' +
                'VAL_LANCAMENTO = :VAL_LANCAMENTO, DOM_DESCONTO = :DOM_DESCONTO, DAT_DESCONTO = :DAT_DESCONTO, ' +
                'NUM_EXTRATO = :NUM_EXTRATO, DOM_PERSISTIR = :DOM_PERSISTIR WHERE COD_LANCAMENTO = :COD_LANCAMENTO;';
    SQLINSERT = 'INSERT INTO ' + TABLENAME + '(COD_LANCAMENTO, DES_LANCAMENTO, DAT_LANCAMENTO, COD_ENTREGADOR, ' +
                'COD_ENTREGADOR_, DES_TIPO, VAL_LANCAMENTO, DOM_DESCONTO, DAT_DESCONTO, NUM_EXTRATO, DOM_PERSISTIR) ' +
                'VALUES ' +
                '(:COD_LANCAMENTO, :DES_LANCAMENTO, :DAT_LANCAMENTO, :COD_ENTREGADOR, :COD_ENTREGADOR_, :DES_TIPO, ' +
                ':VAL_LANCAMENTO, :DOM_DESCONTO, :DAT_DESCONTO, :NUM_EXTRATO, :DOM_PERSISTIR);';
    SQLQUERY =  'SELECT COD_LANCAMENTO, DES_LANCAMENTO, DAT_LANCAMENTO, COD_ENTREGADOR, COD_ENTREGADOR_, DES_TIPO, ' +
                'VAL_LANCAMENTO, DOM_DESCONTO, DAT_DESCONTO, NUM_EXTRATO, DOM_PERSISTIR FROM ' + TABLENAME;
    SQLEXTRATO ='select tblancamentos.cod_entregador as cod_entregador, tblancamentos.des_tipo as des_tipo, ' +
                'sum(tblancamentos.val_lancamento) as val_total from ' + TABLENAME +
                ' where tblancamentos.dat_lancamento <= :data1 and tblancamentos.dom_desconto <> :dom ' +
                'group by tblancamentos.cod_entregador, tblancamentos.des_tipo;';
    SQLENCERRA ='UPDATE ' + TABLENAME + ' SET ' +
                'DOM_DESCONTO = "S", DAT_DESCONTO = :DAT_DESCONTO, NUM_EXTRATO = :NUM_EXTRATO, ' +
                'COD_ENTREGADOR_ = :COD_ENTREGADOR_ ' +
                'WHERE COD_ENTREGADOR = :COD_ENTREGADOR AND DAT_LANCAMENTO <= :DAT_LANCAMENTO AND DOM_DESCONTO <> "S" '+
                'AND DOM_PERSISTIR <> "S";';

implementation

{ TLancamentos }


function TLancamentos.Alterar: Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(SQLUPDATE,[Descricao, Data, Cadastro, Entregador ,Tipo, Valor, Desconto, DataDesconto, Extrato, Persistir,
                    Codigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

constructor TLancamentos.Create;
begin
  FConexao := TConexao.Create;
end;

function TLancamentos.EncerraLancamentos(aParam: array of variant): Boolean;
var
  FDQuery: TFDQuery;
  dtData: TDate;
  sExtrato: String;
  iEntregador : Integer;
  dtLancamento : TDate;
  sSQL :String;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    dtData := VarToDateTime(aParam[0]);
    sExtrato := VarToStr(aParam[1]);
    iEntregador := aParam[2];
    dtLancamento := VarToDateTime(aParam[3]);
    sSQL :='UPDATE ' + TABLENAME + ' SET ' +
           'DOM_DESCONTO = "S", DAT_DESCONTO = ' + QuotedStr(FormatDateTime('yyyy-mm-dd', dtData)) +', NUM_EXTRATO = ' +
            QuotedStr(sExtrato) +' WHERE COD_ENTREGADOR = ' + iEntregador.ToString + ' AND DAT_LANCAMENTO <= ' +
            QuotedStr(FormatDateTime('yyyy-mm-dd', dtLancamento)) +' AND DOM_DESCONTO <> "S" '+
           'AND DOM_PERSISTIR <> "S";';
    FDQuery.ExecSQL(sSQL);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TLancamentos.Excluir: Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' WHERE COD_LANCAMENTO = :COD_LANCAMENTO;', [Codigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TLancamentos.ExtratoLancamentos(aParam: array of variant): TFDQuery;
var
  fdQuery:TFDQuery;
begin
  fdQuery := FConexao.ReturnQuery;
  fdQuery.SQL.Add(SQLEXTRATO);
  fdQuery.ParamByName('data1').AsDate := aParam[0];
  fdQuery.ParamByName('dom').AsString := 'S';
  FDQuery.Open();
  Result := FDQuery;
end;

function TLancamentos.GetID: Integer;
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

function TLancamentos.Gravar: Boolean;
begin
  Result := False;

  case FAcao of
    Common.ENum.tacIncluir: Result := Inserir();
    Common.ENum.tacAlterar: Result := Alterar();
    Common.ENum.tacExcluir: Result := Excluir();
  end;
end;

function TLancamentos.Inserir: Boolean;
var
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    Codigo := Self.GetID();
    FDQuery.ExecSQL(SQLINSERT, [Codigo, Descricao, Data, Cadastro, Entregador ,Tipo, Valor, Desconto, DataDesconto, Extrato,
                    Persistir]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TLancamentos.Localizar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;

  FDQuery.SQL.Add(SQLQUERY);
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
