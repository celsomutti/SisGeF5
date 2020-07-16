unit Model.CadastroFinanceiro;

interface

uses Common.ENum, FireDAC.Comp.Client, System.SysUtils, DAO.Conexao;

type
  TCadastroFinanceiro = class
  private
    FID: Integer;
    FSequencia: Integer;
    FTipoConta: String;
    FBanco: String;
    FAgencia: String;
    FConta: String;
    FOperacao: String;
    FAcao: TAcao;
    FAtivo: Boolean;
    FConexao: TConexao;
    FForma: string;
    FCPFCNPJFavorecido: String;
    FFavorecido: String;
    FTipoCadastro: Integer;

    function Insert(): Boolean;
    function Update(): Boolean;
    function Delete(): Boolean;

  public
    property ID: Integer read FID write FID;
    property TipoCadastro: Integer read FTipoCadastro write FTipoCadastro;
    property Sequencia: Integer read FSequencia write FSequencia;
    property Forma: string read FForma write FForma;
    property TipoConta: String read FTipoConta write FTipoConta;
    property Banco: String read FBanco write FBanco;
    property Agencia: String read FAgencia write FAgencia;
    property Conta: String read FConta write FConta;
    property Operacao: String read FOperacao write FOperacao;
    property Ativo: Boolean read FAtivo write FAtivo;
    property Favorecido: String read FFavorecido write FFavorecido;
    property CPFCNPJFavorecido: String read FCPFCNPJFavorecido write FCPFCNPJFavorecido;
    property Acao: TAcao read FAcao write FAcao;

    constructor Create();
    function GetID(iID: Integer; iTipo: Integer): Integer;
    function Localizar(aParam: array of variant): TFDQuery;
    function Gravar(): Boolean;
    function SaveBatch(memTable: TFDMemTable): Boolean;
  end;
const
  TABLENAME = 'cadastro_financeiro';

implementation

{ TCadastroFinanceiro }



constructor TCadastroFinanceiro.Create;
begin
  FConexao := TConexao.Create;
end;

function TCadastroFinanceiro.Delete: Boolean;
var
  sSQL : String;
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    if Self.Sequencia = -1 then
    begin
      sSQL := 'delete from ' + TABLENAME + ' ' +
              'where id_cadastro = :pid_cadastro and cod_tipo_cadastro = :cod_tipo_cadastro';
      FDQuery.ExecSQL(sSQL,[Self.ID, Self.TipoCadastro]);
    end
    else
    begin
      sSQL := 'delete from ' + TABLENAME + ' ' +
              'where id_cadastro = :pid_cadastro and cod_tipo_cadastro = :cod_tipo_cadastro and seq_financeiro = :pseq_financeiro';
      FDQuery.ExecSQL(sSQL,[Self.ID, Self.TipoCadastro, Self.Sequencia]);
    end;
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCadastroFinanceiro.GetID(iID: Integer; iTipo: Integer): Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(seq_financeiro),0) + 1 from ' + TABLENAME + ' where id_cadastro = ' + iID.toString + ' and ' +
                 'and cod_tipo_cadastro = ' + iTipo.toString);
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

function TCadastroFinanceiro.Gravar: Boolean;
begin
  case FAcao of
    tacIncluir: Result := Self.Insert();
    tacAlterar: Result := Self.Update();
    tacExcluir: Result := Self.Delete();
  end;
end;

function TCadastroFinanceiro.Insert: Boolean;
var
  sSQL: String;
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    Self.Sequencia := GetID(Self.ID, Self.TipoCadastro);
    sSQL := 'insert into ' + TABLENAME + '(id_cadastro, cod_tipo_cadastro, seq_financeiro, des_forma_credito, des_tipo_conta, ' +
            'cod_banco, num_agencia, des_conta, cod_operacao, dom_ativo, nom_favorecido, num_cnpj_cpf_favorecido) ' +
            'values (:id_cadastro, :cod_tipo_cadastro, :seq_financeiro, :des_forma_credito, :des_tipo_conta, ' +
            ':cod_banco, :num_agencia, :des_conta, :cod_operacao, :dom_ativo, :nom_favorecido, :num_cnpj_cpf_favorecido);';
    FDQuery.ExecSQL(sSQL,[Self.ID, Self.TipoCadastro, Self.Sequencia, Self.Forma, Self.TipoConta, Self.Banco, Self.Agencia,
                    Self.Conta, Self.Operacao, Self.Ativo, Self.Favorecido, Self.CPFCNPJFavorecido]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCadastroFinanceiro.Localizar(aParam: array of variant): TFDQuery;
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
  if aParam[0] = 'SEQUENCIA' then
  begin
    FDQuery.SQL.Add('where id_cadastro = :id_cadastro and cod_tipo_cadastro = :cod_tipo_cadastro and ' +
                    'seq_financeiro = :seq_financeiro');
    FDQuery.ParamByName('id_cadastro').AsInteger := aParam[1];
    FDQuery.ParamByName('cod_tipo_cadastro').AsInteger := aParam[2];
    FDQuery.ParamByName('SEQ_Fseq_financeiroINANCEIRO').AsInteger := aParam[3];
  end;
  if aParam[0] = 'TIPO' then
  begin
    FDQuery.SQL.Add('where des_tipo_conta like :des_tipo_conta');
    FDQuery.ParamByName('des_tipo_conta').AsString := aParam[1];
  end;
  if aParam[0] = 'BANCO' then
  begin
    FDQuery.SQL.Add('where cod_banco = :cod_banco');
    FDQuery.ParamByName('cod_banco').AsString := aParam[1];
  end;
  if aParam[0] = 'AGENCIA' then
  begin
    FDQuery.SQL.Add('where cod_agencia = :cod_agencia');
    FDQuery.ParamByName('cod_agencia').AsString := aParam[1];
  end;
  if aParam[0] = 'CONTA' then
  begin
    FDQuery.SQL.Add('where num_conta = :num_conta');
    FDQuery.ParamByName('NUM_CONTA').AsString := aParam[1];
  end;
  if aParam[0] = 'FILTRO' then
  begin
    FDQuery.SQL.Add('where ' + aParam[1]);
  end;
  if aParam[0] = 'APOIO' then
  begin
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('select  ' + aParam[1] + ' from ' + TABLENAME + ' ' + aParam[2]);
  end;
  FDQuery.Open();
  Result := FDQuery;
end;

function TCadastroFinanceiro.SaveBatch(memTable: TFDMemTable): Boolean;
begin
  Result := False;
  Self.Acao := tacExcluir;
  if not Self.Gravar then
  begin
    Exit;
  end;
  memTable.First;
  while not memTable.Eof do
  begin
    Self.Sequencia := GetID(Self.ID, Self.TipoCadastro);
    Self.TipoCadastro := memTable.FieldByName('cod_tipo_cadastro').AsInteger;
    Self.Forma := memTable.FieldByName('des_forma_credito').AsString;
    Self.TipoConta := memTable.FieldByName('des_tipo_conta').AsString;
    Self.Banco := memTable.FieldByName('cod_banco').AsString;
    Self.Agencia := memTable.FieldByName('num_agencia').AsString;
    Self.Operacao := memTable.FieldByName('cod_operacao').AsString;
    Self.Conta := memTable.FieldByName('des_conta').AsString;
    Self.Ativo := memTable.FieldByName('dom_ativo').AsBoolean;
    Self.Favorecido := memTable.FieldByName('des_conta').AsString;
    Self.CPFCNPJFavorecido := memTable.FieldByName('num_cnpj_cpf_favorecido').AsString;
    Self.Acao := tacIncluir;
    if not Self.Gravar then
    begin
      Exit;
    end;
    memTable.Next;
  end;
  Result := True;
end;

function TCadastroFinanceiro.Update: Boolean;
var
  sSQL: String;
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    sSQL := 'update ' + TABLENAME  + 'set ' +
    'des_forma_credito = :pdes_forma_credito, des_tipo_conta = :pdes_tipo_conta, cod_banco = :pcod_banco, ' +
    'num_agencia = :pnum_agencia, cod_operacao = :pcod_operacao, des_conta = :pdes_conta ' +
    'dom_ativo = :pdom_ativo, nom_favorecido = :pnom_favorecido, num_cnpj_cpf_favorecido = :pnum_cnpj_cpf_favorecido ' +
    'where id_cadastro = :pid_cadastro and cod_tipo_cadastro = :cod_tipo_cadastro and seq_financeiro = :pseq_financeiro;';
    FDQuery.ExecSQL(sSQL,[Self.Forma, Self.TipoConta, Self.Banco, Self.Agencia, Self.Conta,
                    Self.Operacao, Self.Ativo, Self.Favorecido, Self.CPFCNPJFavorecido, Self.ID, Self.TipoCadastro,
                    Self.Sequencia]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

end.



