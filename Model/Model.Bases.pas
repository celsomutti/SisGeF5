unit Model.Bases;

interface

uses Common.ENum, FireDAC.Comp.Client, System.SysUtils;

  type
    TBases = class
    private

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
      property Acao: TAcao read FAcao write FAcao;

      function Localizar(aParam: array of variant): TFDQuery;
      function Gravar(): Boolean;
      function GetField(sField: String; sKey: String; sKeyValue: String): String;
      function SetupModel(FDBases: TFDQuery): Boolean;
      function ClearModal(): boolean;

    end;

implementation

{ TBases }

uses DAO.Bases;

function TBases.ClearModal: boolean;
begin
  try
    Result := False;
    Codigo := 0;
    RazaoSocial := '';
    NomeFantasia := '';
    TipoDoc := '';
    CNPJCPF := '';
    IE := '';
    IEST := '';
    IM := '';
    CNAE := '';
    CRT := 0;
    NumeroCNH := '';
    CategoriaCNH := '';
    ValidadeCNH := '';
    PaginaWeb := '';
    Status := 0;
    Obs := '';
    DataCadastro := StrToDate('1899-12-31');
    DataAlteracao := StrToDate('1899-12-31');
    ValorVerba := 0;
    TipoConta := '';
    CodigoBanco := '';
    NumeroAgente := '';
    NumeroConta := '';
    NomeFavorecido := '';
    CNPJCPFFavorecido := '';
    FormaPagamento := '';
    CentroCusto := 0;
    Grupo := 0;
  finally
    Result := True;
  end;
end;

function TBases.GetField(sField, sKey, sKeyValue: String): String;
var
  baseDAO: TBasesDAO;
begin
  try
    baseDAO := TBasesDAO.Create;
    Result := baseDAO.GetField(sField, sKey, sKeyValue);
  finally
    baseDAO.Free;
  end;
end;

function TBases.Gravar: Boolean;
var
  baseDAO : TBasesDAO;
begin
  try
    Result := False;
    baseDAO := TBasesDAO.Create;
    case FAcao of
      Common.ENum.tacIncluir: Result := baseDAO.Inserir(Self);
      Common.ENum.tacAlterar: Result := baseDAO.Alterar(Self);
      Common.ENum.tacExcluir: Result := baseDAO.Excluir(Self);
    end;
  finally
    baseDAO.Free;
  end;
end;

function TBases.Localizar(aParam: array of variant): TFDQuery;
var
  baseDAO: TBasesDAO;
  FDQuery: TFDQuery;
begin
  try
    baseDAO := TBasesDAO.Create;
    FDQuery := baseDAO.Pesquisar(aParam);
    if not FDQuery.IsEmpty then
    begin
      FDQuery.First;
      if aParam[0] <> 'APOIO' then SetupModel(FDQuery);
    end;
    Result := FDQuery;
  finally
    baseDAO.Free;
  end;
end;


function TBases.SetupModel(FDBases: TFDQuery): Boolean;
begin
  try
    Result := False;
    Codigo := FDBases.FieldByName('cod_agente').AsInteger;
    RazaoSocial := FDBases.FieldByName('des_razao_social').AsString;
    NomeFantasia := FDBases.FieldByName('nom_fantasia').AsString;
    TipoDoc := FDBases.FieldByName('des_tipo_doc').AsString;
    CNPJCPF := FDBases.FieldByName('num_cnpj').AsString;
    IE := FDBases.FieldByName('num_ie').AsString;
    IEST := FDBases.FieldByName('num_iest').AsString;
    IM := FDBases.FieldByName('num_im').AsString;
    CNAE := FDBases.FieldByName('cod_cnae').AsString;
    CRT := FDBases.FieldByName('cod_crt').AsInteger;
    NumeroCNH := FDBases.FieldByName('num_cnh').AsString;
    CategoriaCNH := FDBases.FieldByName('des_categoria_cnh').AsString;
    ValidadeCNH := FDBases.FieldByName('dat_validade_cnh').AsDateTime;
    PaginaWeb := FDBases.FieldByName('des_pagina').AsString;
    Status := FDBases.FieldByName('cod_status').AsInteger;
    Obs := FDBases.FieldByName('des_observacao').AsString;
    DataCadastro := FDBases.FieldByName('dat_cadastro').AsDateTime;
    DataAlteracao := FDBases.FieldByName('dat_alteracao').AsDateTime;
    ValorVerba := FDBases.FieldByName('val_verba').AsFloat;
    TipoConta := FDBases.FieldByName('des_tipo_conta').AsString;
    CodigoBanco := FDBases.FieldByName('cod_banco').AsString;
    NumeroAgente := FDBases.FieldByName('cod_agencia').AsString;
    NumeroConta := FDBases.FieldByName('num_conta').AsString;
    NomeFavorecido := FDBases.FieldByName('nom_favorecido').AsString;
    CNPJCPFFavorecido := FDBases.FieldByName('num_cpf_cnpj_favorecido').AsString;
    FormaPagamento := FDBases.FieldByName('des_forma_pagamento').AsString;
    CentroCusto := FDBases.FieldByName('cod_centro_custo').AsInteger;
    Grupo := FDBases.FieldByName('cod_grupo').AsInteger;
  finally
    Result := True;
  end;
end;

end.
