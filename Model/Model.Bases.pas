unit Model.Bases;

interface

uses Common.ENum, FireDAC.Comp.Client, System.SysUtils, DAO.Conexao;

  type
    TBases = class
    private
      FConexao : TConexao;
      FCodigo: Integer;
      FRazaoSocial: String;
      FNomeFantasia: String;
      FTipoDoc: String;
      FCNPJCPF: String;
      FIE: String;
      FIEST: String;
      FIM: String;
      FCNAE: String;
      FCRT: Integer;
      FNumeroCNH: String;
      FCategoriaCNH: String;
      FValidadeCNH: TDate;
      FPaginaWeb: String;
      FStatus: Integer;
      FObs: String;
      FDataCadastro: TDate;
      FDataAlteracao: TDate;
      FValorVerba: Double;
      FTipoConta: String;
      FCodigoBanco: String;
      FNumeroAgente: String;
      FNumeroConta: String;
      FNomeFavorecido: String;
      FCNPJCPFFavorecido: String;
      FFormaPagamento: String;
      FCentroCusto: Integer;
      FGrupo: Integer;
      FAcao: TAcao;
      FTabela: Integer;

      function Inserir(): Boolean;
      function Alterar(): Boolean;
      function Excluir(): Boolean;

    public

      property Codigo: Integer read FCodigo write FCodigo;
      property RazaoSocial: String read FRazaoSocial write FRazaoSocial;
      property NomeFantasia: String read FNomeFantasia write FNomeFantasia;
      property TipoDoc: String read FTipoDoc write FTipoDoc;
      property CNPJCPF: String read FCNPJCPF write FCNPJCPF;
      property IE: String read FIE write FIE;
      property IEST: String read FIEST write FIEST;
      property IM: String read FIM write FIM;
      property CNAE: String read FCNAE write FCNAE;
      property CRT: Integer read FCRT write FCRT;
      property NumeroCNH: String read FNumeroCNH write FNumeroCNH;
      property CategoriaCNH: String read FCategoriaCNH write FCategoriaCNH;
      property ValidadeCNH: TDate read FValidadeCNH write FValidadeCNH;
      property PaginaWeb: String read FPaginaWeb write FPaginaWeb;
      property Status: Integer read FStatus write FStatus;
      property Obs: String read FObs write FObs;
      property DataCadastro: TDate read FDataCadastro write FDataCadastro;
      property DataAlteracao: TDate read FDataAlteracao write FDataAlteracao;
      property ValorVerba: Double read FValorVerba write FValorVerba;
      property TipoConta: String read FTipoConta write FTipoConta;
      property CodigoBanco: String read FCodigoBanco write FCodigoBanco;
      property NumeroAgente: String read FNumeroAgente write FNumeroAgente;
      property NumeroConta: String read FNumeroConta write FNumeroConta;
      property NomeFavorecido: String read FNomeFavorecido write FNomeFavorecido;
      property CNPJCPFFavorecido: String read FCNPJCPFFavorecido write FCNPJCPFFavorecido;
      property FormaPagamento: String read FFormaPagamento write FFormaPagamento;
      property CentroCusto: Integer read FCentroCusto write FCentroCusto;
      property Grupo: Integer read FGrupo write FGrupo;
      property Tabela: Integer read FTabela write FTabela;
      property Acao: TAcao read FAcao write FAcao;

      constructor Create();
      function Localizar(aParam: array of variant): TFDQuery;
      function LocalizarExato(aParam: array of variant): Boolean;
      function Gravar(): Boolean;
      function GetField(sField: String; sKey: String; sKeyValue: String): String;
      function SetupModel(FDBases: TFDQuery): Boolean;
      procedure ClearModel;


    end;
    const
      TABLENAME = 'tbagentes';

implementation

{ TBases }

function TBases.Alterar: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('UPDATE ' + TABLENAME + 'SET COD_AGENTE = :COD_AGENTE, DES_RAZAO_SOCIAL = :DES_RAZAO_SOCIAL, ' +
    'NOM_FANTASIA = :NOM_FANTASIA, DES_TIPO_DOC = :DES_TIPO_DOC, NUM_CNPJ = :NUM_CNPJ, NUM_IE = :NUM_IE, ' +
    'NUM_IEST = :NUM_IEST, NUM_IM = :NUM_IM, COD_CNAE = :COD_CNAE, COD_CRT = :COD_CRT, NUM_CNH = :NUM_CNH, ' +
    'DES_CATEGORIA_CNH = :DES_CATEGORIA_CNH, DAT_VALIDADE_CNH = :DAT_VALIDADE_CNH, DES_PAGINA = :DES_PAGINA, ' +
    'COD_STATUS = :COD_STATUS, DES_OBSERVACAO = :DES_OBSERVACAO, DAT_CADASTRO = :DAT_CADASTRO, ' +
    'DAT_ALTERACAO = :DAT_ALTERACAO, VAL_VERBA = :VAL_VERBA, DES_TIPO_CONTA = :DES_TIPO_CONTA, COD_BANCO = :COD_BANCO, ' +
    'COD_AGENCIA = :COD_AGENCIA, NUM_CONTA = :NUM_CONTA, NOM_FAVORECIDO = :NOM_FAVORECIDO, ' +
    'NUM_CPF_CNPJ_FAVORECIDO = :NUM_CPF_CNPJ_FAVORECIDO, DES_FORMA_PAGAMENTO = :DES_FORMA_PAGAMENTO, ' +
    'COD_CENTRO_CUSTO = :COD_CENTRO_CUSTO, COD_GRUPO = :COD_GRUPO, COD_TABELA = :COD_TABELA WHERE COD_AGENTE = :COD_AGENTE;', [Self.RazaoSocial,
    Self.NomeFantasia, Self.TipoDoc, Self.CNPJCPF, Self.IE, Self.IEST, Self.IM, Self.CNAE, Self.CRT,
    Self.NumeroCNH, Self.CategoriaCNH, Self.ValidadeCNH, Self.PaginaWeb, Self.Status, Self.Obs, Self.DataCadastro,
    Self.DataAlteracao, Self.ValorVerba, Self.TipoConta, Self.CodigoBanco, Self.NumeroAgente, Self.NumeroConta,
    Self.NomeFavorecido, Self.CNPJCPFFavorecido, Self.FormaPagamento, Self.CentroCusto, Self.Grupo,Tabela, Self.Codigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

procedure TBases.ClearModel();
begin
  Self.Codigo := 0;
  Self.RazaoSocial := '';
  Self.NomeFantasia := '';
  Self.TipoDoc := '';
  Self.CNPJCPF := '';
  Self.IE := '';
  Self.IEST := '';
  Self.IM := '';
  Self.CNAE := '';
  Self.CRT := 0;
  Self.NumeroCNH := '';
  Self.CategoriaCNH := '';
  Self.ValidadeCNH := StrToDate('31/12/1899');
  Self.PaginaWeb := '';
  Self.Status := 0;
  Self.Obs := '';
  Self.DataCadastro := StrToDate('31/12/1899');
  Self.DataAlteracao := StrToDate('31/12/1899');
  Self.ValorVerba := 0;
  Self.TipoConta := '';
  Self.CodigoBanco := '';
  Self.NumeroAgente := '';
  Self.NumeroConta := '';
  Self.NomeFavorecido := '';
  Self.CNPJCPFFavorecido := '';
  Self.FormaPagamento := '';
  Self.CentroCusto := 0;
  Self.Grupo := 0;
  Self.Tabela := 0;
end;

constructor TBases.Create;
begin
   FConexao := TConexao.Create;
end;

function TBases.Excluir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('delete from ' + TABLENAME + ' where COD_AGENTE = :COD_AGENTE', [Self.Codigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TBases.GetField(sField, sKey, sKeyValue: String): String;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.SQL.Text := 'select ' + sField + ' from ' + TABLENAME + ' where ' + sKey + ' = ' + sKeyValue;
    FDQuery.Open();
    if not FDQuery.IsEmpty then Result := FDQuery.FieldByName(sField).AsString;
  finally
    FDQuery.Free;
  end;
end;

function TBases.Gravar: Boolean;
begin
  Result := False;
  case FAcao of
    Common.ENum.tacIncluir: Result := Self.Inserir();
    Common.ENum.tacAlterar: Result := Self.Alterar();
    Common.ENum.tacExcluir: Result := Self.Excluir();
  end;
end;

function TBases.Inserir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL('INSERT INTO ' + TABLENAME  + '(COD_AGENTE, DES_RAZAO_SOCIAL, NOM_FANTASIA, DES_TIPO_DOC, NUM_CNPJ, NUM_IE, ' +
                    'NUM_IEST, NUM_IM, COD_CNAE, COD_CRT, NUM_CNH, DES_CATEGORIA_CNH, DAT_VALIDADE_CNH, DES_PAGINA, COD_STATUS, ' +
                    'DES_OBSERVACAO, DAT_CADASTRO, DAT_ALTERACAO, VAL_VERBA, DES_TIPO_CONTA, COD_BANCO, COD_AGENCIA, NUM_CONTA, ' +
                    'NOM_FAVORECIDO, NUM_CPF_CNPJ_FAVORECIDO, DES_FORMA_PAGAMENTO, COD_CENTRO_CUSTO, COD_GRUPO, COD_TABELA) ' +
                    'VALUES ' +
                    '(:COD_AGENTE, :DES_RAZAO_SOCIAL, :NOM_FANTASIA, :DES_TIPO_DOC, :NUM_CNPJ, :NUM_IE, :NUM_IEST, :NUM_IM, ' +
                    ':COD_CNAE, :COD_CRT, :NUM_CNH, :DES_CATEGORIA_CNH, :DAT_VALIDADE_CNH, :DES_PAGINA, :COD_STATUS, ' +
                    ':DES_OBSERVACAO, :DAT_CADASTRO, :DAT_ALTERACAO, :VAL_VERBA, :DES_TIPO_CONTA, :COD_BANCO, :COD_AGENCIA, ' +
                    ':NUM_CONTA, :NOM_FAVORECIDO, :NUM_CPF_CNPJ_FAVORECIDO, :DES_FORMA_PAGAMENTO, :COD_CENTRO_CUSTO, :COD_GRUPO, ' +
                    ':COD_TABELA);',
                    [Self.Codigo, Self.RazaoSocial, Self.NomeFantasia, Self.TipoDoc, Self.CNPJCPF, Self.IE, Self.IEST,
                    Self.IM, Self.CNAE, Self.CRT, Self.NumeroCNH, Self.CategoriaCNH, Self.ValidadeCNH, Self.PaginaWeb,
                    Self.Status, Self.Obs, Self.DataCadastro, Self.DataAlteracao, Self.ValorVerba, Self.TipoConta,
                    Self.CodigoBanco, Self.NumeroAgente, Self.NumeroConta, Self.NomeFavorecido, Self.CNPJCPFFavorecido,
                    Self.FormaPagamento, Self.CentroCusto, Self.Grupo, Self.Tabela]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;

end;

function TBases.Localizar(aParam: array of variant): TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FDQuery.SQL.Clear;
  FDQuery.SQL.Add('select * from ' + TABLENAME);
  if aParam[0] = 'CODIGO' then
  begin
    FDQuery.SQL.Add('WHERE COD_AGENTE = :COD_AGENTE');
    FDQuery.ParamByName('COD_AGENTE').Value := aParam[1];
  end;
  if aParam[0] = 'CNPJ' then
  begin
    FDQuery.SQL.Add('WHERE NUM_CNPJ = :NUM_CNPJ');
    FDQuery.ParamByName('NUM_CNPJ').AsString := aParam[1];
  end;
  if aParam[0] = 'RAZAO' then
  begin
    FDQuery.SQL.Add('WHERE DES_RAZAO_SOCIAL = :DES_RAZAO_SOCIAL');
    FDQuery.ParamByName('DES_RAZAO_SOCIAL').AsString := aParam[1];
  end;
  if aParam[0] = 'FANTASIA' then
  begin
    FDQuery.SQL.Add('WHERE NOM_FANTASIA = :NOM_FANTASIA');
    FDQuery.ParamByName('NOM_FANTASIA').AsString := aParam[1];
  end;
  if aParam[0] = 'IE' then
  begin
    FDQuery.SQL.Add('WHERE NUM_IE = :NUM_IE');
    FDQuery.ParamByName('NUM_IE').AsString := aParam[1];
  end;
  if aParam[0] = 'FILTRO' then
  begin
    FDQuery.SQL.Add('WHERE ' + aParam[1]);
  end;
  if aParam[0] = 'APOIO' then
  begin
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('SELECT  ' + aParam[1] + ' FROM ' + TABLENAME + ' ' + aParam[2]);
  end;
  FDQuery.Open;
  Result := FDQuery;
end;


function TBases.LocalizarExato(aParam: array of variant): Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    if Length(aParam) < 2 then Exit;
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('select * from ' + TABLENAME);
    if aParam[0] = 'CODIGO' then
    begin
      FDQuery.SQL.Add('WHERE COD_AGENTE = :COD_AGENTE');
      FDQuery.ParamByName('COD_AGENTE').Value := aParam[1];
    end;
    if aParam[0] = 'CNPJ' then
    begin
      FDQuery.SQL.Add('WHERE NUM_CNPJ = :NUM_CNPJ');
      FDQuery.ParamByName('NUM_CNPJ').AsString := aParam[1];
    end;
    if aParam[0] = 'RAZAO' then
    begin
      FDQuery.SQL.Add('WHERE DES_RAZAO_SOCIAL = :DES_RAZAO_SOCIAL');
      FDQuery.ParamByName('DES_RAZAO_SOCIAL').AsString := aParam[1];
    end;
    if aParam[0] = 'FANTASIA' then
    begin
      FDQuery.SQL.Add('WHERE NOM_FANTASIA = :NOM_FANTASIA');
      FDQuery.ParamByName('NOM_FANTASIA').AsString := aParam[1];
    end;
    if aParam[0] = 'IE' then
    begin
      FDQuery.SQL.Add('WHERE NUM_IE = :NUM_IE');
      FDQuery.ParamByName('NUM_IE').AsString := aParam[1];
    end;
    if aParam[0] = 'FILTRO' then
    begin
      FDQuery.SQL.Add('WHERE ' + aParam[1]);
    end;
    FDQuery.Open;
    if not FDQuery.IsEmpty then
    begin
      FDQuery.First;
      Result := SetupModel(FDQuery);
    end
    else
    begin
      ClearModel();
      Exit;
    end;
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TBases.SetupModel(FDBases: TFDQuery): Boolean;
begin
  try
    Result := False;
    Self.Codigo := FDBases.FieldByName('cod_agente').AsInteger;
    Self.RazaoSocial := FDBases.FieldByName('des_razao_social').AsString;
    Self.NomeFantasia := FDBases.FieldByName('nom_fantasia').AsString;
    Self.TipoDoc := FDBases.FieldByName('des_tipo_doc').AsString;
    Self.CNPJCPF := FDBases.FieldByName('num_cnpj').AsString;
    Self.IE := FDBases.FieldByName('num_ie').AsString;
    Self.IEST := FDBases.FieldByName('num_iest').AsString;
    Self.IM := FDBases.FieldByName('num_im').AsString;
    Self.CNAE := FDBases.FieldByName('cod_cnae').AsString;
    Self.CRT := FDBases.FieldByName('cod_crt').AsInteger;
    Self.NumeroCNH := FDBases.FieldByName('num_cnh').AsString;
    Self.CategoriaCNH := FDBases.FieldByName('des_categoria_cnh').AsString;
    Self.ValidadeCNH := FDBases.FieldByName('dat_validade_cnh').AsDateTime;
    Self.PaginaWeb := FDBases.FieldByName('des_pagina').AsString;
    Self.Status := FDBases.FieldByName('cod_status').AsInteger;
    Self.Obs := FDBases.FieldByName('des_observacao').AsString;
    Self.DataCadastro := FDBases.FieldByName('dat_cadastro').AsDateTime;
    Self.DataAlteracao := FDBases.FieldByName('dat_alteracao').AsDateTime;
    Self.ValorVerba := FDBases.FieldByName('val_verba').AsFloat;
    Self.TipoConta := FDBases.FieldByName('des_tipo_conta').AsString;
    Self.CodigoBanco := FDBases.FieldByName('cod_banco').AsString;
    Self.NumeroAgente := FDBases.FieldByName('cod_agencia').AsString;
    Self.NumeroConta := FDBases.FieldByName('num_conta').AsString;
    Self.NomeFavorecido := FDBases.FieldByName('nom_favorecido').AsString;
    Self.CNPJCPFFavorecido := FDBases.FieldByName('num_cpf_cnpj_favorecido').AsString;
    Self.FormaPagamento := FDBases.FieldByName('des_forma_pagamento').AsString;
    Self.CentroCusto := FDBases.FieldByName('cod_centro_custo').AsInteger;
    Self.Grupo := FDBases.FieldByName('cod_grupo').AsInteger;
    Self.Tabela := FDBases.FieldByName('cod_tabela').AsInteger;
  finally
    Result := True;
  end;

end;

end.
