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
    FChave: String;

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
    property Chave: String read FChave write FChave;
    property Tabela: Integer read FTabela write FTabela;
    property Acao: TAcao read FAcao write FAcao;

    constructor Create();
    function Localizar(aParam: array of variant): TFDQuery;
    function LocalizarExato(aParam: array of variant): Boolean;
    function Gravar(): Boolean;
    function GetField(sField: String; sKey: String; sKeyValue: String): String;
    function SetupModel(FDBases: TFDQuery): Boolean;
    function GetNextID(sIdName: string) : Integer;
    procedure ClearModel;


  end;
  const
    TABLENAME = 'tbagentes';
    SQLUPDATE = 'update ' + TABLENAME + ' set ' +
                'des_razao_social = :des_razao_social, nom_fantasia = :nom_fantasia, des_tipo_doc = :des_tipo_doc, ' +
                'num_cnpj = :num_cnpj, num_ie = :num_ie, num_iest = :num_iest, num_im = :num_im, cod_cnae = :cod_cnae, ' +
                'cod_crt = :cod_crt, num_cnh = :num_cnh, des_categoria_cnh = :des_categoria_cnh, ' +
                'dat_validade_cnh = :dat_validade_cnh, des_pagina = :des_pagina, ' +  'cod_status = :cod_status, ' +
                'des_observacao = :des_observacao, dat_cadastro = :dat_cadastro, dat_alteracao = :dat_alteracao, ' +
                'val_verba = :val_verba, des_tipo_conta = :des_tipo_conta, cod_banco = :cod_banco, cod_agencia = :cod_agencia, ' +
                'num_conta = :num_conta, nom_favorecido = :nom_favorecido, num_cpf_cnpj_favorecido = :num_cpf_cnpj_favorecido, ' +
                'des_forma_pagamento = :des_forma_pagamento, cod_centro_custo = :cod_centro_custo, cod_grupo = :cod_grupo, ' +
                'des_chave = :des_chave, cod_tabela = :cod_tabela ' +
                'where ' +
                'cod_agente = :cod_agente';
    SQLDELETE = 'delete from ' + TABLENAME + ' where cod_agente = :cod_agente';
    SQLINSERT = 'insert into ' + TABLENAME +
                '(cod_agente, des_razao_social, nom_fantasia, des_tipo_doc, num_cnpj, num_ie, num_iest, num_im, cod_cnae, ' +
                'cod_crt, num_cnh, des_categoria_cnh, dat_validade_cnh, des_pagina, cod_status, des_observacao, ' +
                'dat_cadastro, dat_alteracao, val_verba, des_tipo_conta, cod_banco, cod_agencia, num_conta, ' +
                'nom_favorecido, num_cpf_cnpj_favorecido, des_forma_pagamento, cod_centro_custo, ' +
                'cod_grupo, des_chave, cod_tabela) ' +
                'values ' +
                '(:cod_agente, :des_razao_social, :nom_fantasia, :des_tipo_doc, :num_cnpj,:num_ie,:num_iest,:num_im,:cod_cnae, ' +
                ':cod_crt, :num_cnh, :des_categoria_cnh, :dat_validade_cnh, :des_pagina, :cod_status, :des_observacao, ' +
                ':dat_cadastro, :dat_alteracao, :val_verba, :des_tipo_conta, :cod_banco, :cod_agencia, :num_conta, ' +
                ':nom_favorecido, :num_cpf_cnpj_favorecido, :des_forma_pagamento, :cod_centro_custo, ' +
                ':cod_grupo, :des_chave, :cod_tabela) ';

    SQLQUERY  = 'select cod_agente, des_razao_social, nom_fantasia, des_tipo_doc, num_cnpj, num_ie, num_iest, num_im, ' +
                'cod_cnae, cod_crt, num_cnh, des_categoria_cnh, dat_validade_cnh, des_pagina, cod_status, des_observacao, ' +
                'dat_cadastro, dat_alteracao, val_verba, des_tipo_conta, cod_banco, cod_agencia, num_conta, nom_favorecido, ' +
                'num_cpf_cnpj_favorecido, des_forma_pagamento, cod_centro_custo, cod_grupo, des_chave, cod_tabela ' +
                'from ' + TABLENAME;

implementation

{ TBases }

function TBases.Alterar: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(SQLUPDATE, [FRazaoSocial,
    FNomeFantasia, FTipoDoc, FCNPJCPF, FIE, FIEST, FIM, FCNAE, FCRT,
    FNumeroCNH, FCategoriaCNH, FValidadeCNH, FPaginaWeb, FStatus, FObs, FDataCadastro,
    FDataAlteracao, FValorVerba, FTipoConta, FCodigoBanco, FNumeroAgente, FNumeroConta,
    FNomeFavorecido, FCNPJCPFFavorecido, FFormaPagamento, FCentroCusto, FGrupo, FChave, FTabela, FCodigo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

procedure TBases.ClearModel();
begin
  FCodigo := 0;
  FRazaoSocial := '';
  FNomeFantasia := '';
  FTipoDoc := '';
  FCNPJCPF := '';
  FIE := '';
  FIEST := '';
  FIM := '';
  FCNAE := '';
  FCRT := 0;
  FNumeroCNH := '';
  FCategoriaCNH := '';
  FValidadeCNH := StrToDate('31/12/1899');
  FPaginaWeb := '';
  FStatus := 0;
  FObs := '';
  FDataCadastro := StrToDate('31/12/1899');
  FDataAlteracao := StrToDate('31/12/1899');
  FValorVerba := 0;
  FTipoConta := '';
  FCodigoBanco := '';
  FNumeroAgente := '';
  FNumeroConta := '';
  FNomeFavorecido := '';
  FCNPJCPFFavorecido := '';
  FFormaPagamento := '';
  FCentroCusto := 0;
  FGrupo := 0;
  FTabela := 0;
  FChave := '';
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
    FDQuery.ExecSQL(SQLDELETE, [FCodigo]);
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

function TBases.GetNextID(sIdName: string): Integer;
var
  FQuery: TFDQuery;
begin
  try
    FQuery := FConexao.ReturnQuery();
    FQuery.Open('select coalesce(max(' + sIdName + '),0) + 1 from ' + TABLENAME);
    try
      Result := FQuery.Fields[0].AsInteger;
    finally
      FQuery.Close;
    end;
  finally
    FQuery.Connection.Close;
    FQuery.Free;
  end;

end;

function TBases.Gravar: Boolean;
begin
  Result := False;
  case FAcao of
    tacIncluir: Result := Inserir();
    tacAlterar: Result := Alterar();
    tacExcluir: Result := Excluir();
  end;
end;

function TBases.Inserir: Boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    if FCodigo = 0 then
      FCodigo := GetNextID('cod_agente');
    FDQuery := FConexao.ReturnQuery();
    FDQuery.ExecSQL(SQLINSERT,
                    [FCodigo, FRazaoSocial, FNomeFantasia, FTipoDoc, FCNPJCPF, FIE, FIEST, FIM, FCNAE, FCRT, FNumeroCNH,
                    FCategoriaCNH, FValidadeCNH, FPaginaWeb, FStatus, FObs, FDataCadastro, FDataAlteracao, FValorVerba, FTipoConta,
                    FCodigoBanco, FNumeroAgente, FNumeroConta, FNomeFavorecido, FCNPJCPFFavorecido, FFormaPagamento, FCentroCusto,
                    FGrupo, FChave, FTabela]);
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
  FDQuery.SQL.Add(SQLQUERY);
  if aParam[0] = 'CODIGO' then
  begin
    FDQuery.SQL.Add('where cod_agente = :cod_agente');
    FDQuery.ParamByName('cod_agente').AsInteger := aParam[1];
  end
  else if aParam[0] = 'CNPJ' then
  begin
    FDQuery.SQL.Add('where num_cnpj = :num_cnpj');
    FDQuery.ParamByName('num_cnpj').AsString := aParam[1];
  end
  else if aParam[0] = 'RAZAO' then
  begin
    FDQuery.SQL.Add('where des_razao_social like :des_razao_social');
    FDQuery.ParamByName('des_razao_social').AsString := aParam[1];
  end
  else if aParam[0] = 'FANTASIA' then
  begin
    FDQuery.SQL.Add('where nom_fantasia = :nom_fantasia');
    FDQuery.ParamByName('nom_fantasia').AsString := aParam[1];
  end
  else if aParam[0] = 'IE' then
  begin
    FDQuery.SQL.Add('where num_ie = :num_ie');
    FDQuery.ParamByName('num_ie').AsString := aParam[1];
  end
  else if aParam[0] = 'FILTRO' then
  begin
    if aParam[1] <> '' then
      FDQuery.SQL.Add('where ' + aParam[1]);
  end
  else if aParam[0] = 'APOIO' then
  begin
    FDQuery.SQL.Clear;
    FDQuery.SQL.Add('select  ' + aParam[1] + ' from ' + TABLENAME + ' ' + aParam[2]);
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
      FDQuery.SQL.Add('where cod_agente = :cod_agente');
      FDQuery.ParamByName('cod_agente').AsInteger := aParam[1];
    end
    else if aParam[0] = 'CNPJ' then
    begin
      FDQuery.SQL.Add('where num_cnpj = :num_cnpj');
      FDQuery.ParamByName('num_cnpj').AsString := aParam[1];
    end
    else if aParam[0] = 'RAZAO' then
    begin
      FDQuery.SQL.Add('where des_razao_social like :des_razao_social');
      FDQuery.ParamByName('des_razao_social').AsString := aParam[1];
    end
    else if aParam[0] = 'FANTASIA' then
    begin
      FDQuery.SQL.Add('where nom_fantasia = :nom_fantasia');
      FDQuery.ParamByName('nom_fantasia').AsString := aParam[1];
    end
    else if aParam[0] = 'IE' then
    begin
      FDQuery.SQL.Add('where num_ie = :num_ie');
      FDQuery.ParamByName('num_ie').AsString := aParam[1];
    end
    else if aParam[0] = 'FILTRO' then
    begin
      FDQuery.SQL.Add('where ' + aParam[1]);
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
    FCodigo := FDBases.FieldByName('cod_agente').AsInteger;
    FRazaoSocial := FDBases.FieldByName('des_razao_social').AsString;
    FNomeFantasia := FDBases.FieldByName('nom_fantasia').AsString;
    FTipoDoc := FDBases.FieldByName('des_tipo_doc').AsString;
    FCNPJCPF := FDBases.FieldByName('num_cnpj').AsString;
    FIE := FDBases.FieldByName('num_ie').AsString;
    FIEST := FDBases.FieldByName('num_iest').AsString;
    FIM := FDBases.FieldByName('num_im').AsString;
    FCNAE := FDBases.FieldByName('cod_cnae').AsString;
    FCRT := FDBases.FieldByName('cod_crt').AsInteger;
    FNumeroCNH := FDBases.FieldByName('num_cnh').AsString;
    FCategoriaCNH := FDBases.FieldByName('des_categoria_cnh').AsString;
    FValidadeCNH := FDBases.FieldByName('dat_validade_cnh').AsDateTime;
    FPaginaWeb := FDBases.FieldByName('des_pagina').AsString;
    FStatus := FDBases.FieldByName('cod_status').AsInteger;
    FObs := FDBases.FieldByName('des_observacao').AsString;
    FDataCadastro := FDBases.FieldByName('dat_cadastro').AsDateTime;
    FDataAlteracao := FDBases.FieldByName('dat_alteracao').AsDateTime;
    FValorVerba := FDBases.FieldByName('val_verba').AsFloat;
    FTipoConta := FDBases.FieldByName('des_tipo_conta').AsString;
    FCodigoBanco := FDBases.FieldByName('cod_banco').AsString;
    FNumeroAgente := FDBases.FieldByName('cod_agencia').AsString;
    FNumeroConta := FDBases.FieldByName('num_conta').AsString;
    FNomeFavorecido := FDBases.FieldByName('nom_favorecido').AsString;
    FCNPJCPFFavorecido := FDBases.FieldByName('num_cpf_cnpj_favorecido').AsString;
    FFormaPagamento := FDBases.FieldByName('des_forma_pagamento').AsString;
    FCentroCusto := FDBases.FieldByName('cod_centro_custo').AsInteger;
    FGrupo := FDBases.FieldByName('cod_grupo').AsInteger;
    FChave := FDBases.FieldByName('des_chave').AsString;
    FTabela := FDBases.FieldByName('cod_tabela').AsInteger;
  finally
    Result := True;
  end;
end;

end.
