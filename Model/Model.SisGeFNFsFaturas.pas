unit Model.SisGeFNFsFaturas;

interface

  uses Common.ENum, FireDAC.Comp.Client, DAO.Conexao, System.SysUtils, Common.Utils, System.DateUtils;

  type
    TModelSisGeFNFsFaturas = class
      private
        FAcao : TAcao;
        FConnection : TConexao;
        FQuery: TFDQuery;
        FMensagem: string;
        FPath: string;
        FAceite: boolean;
        FID: integer;
        FDataEnvio: TDateTime;
        FCadastro: integer;
        FArquivo: string;
        FCredito: boolean;
        FDataVencimento: TDateTime;
        function Insert(): boolean;
        function Update(): boolean;
        function Delete: boolean;
      public
        property ID: integer read FID write FID;
        property Cadastro: integer read FCadastro write FCadastro;
        property DataVencimento: TDateTime read FDataVencimento write FDataVencimento;
        property Arquivo: string read FArquivo write FArquivo;
        property Path: string read FPath write FPath;
        property Aceite: boolean read FAceite write FAceite;
        property Credito: boolean read FCredito write FCredito;
        property DataEnvio: TDateTime read FDataEnvio write FDataEnvio;
        property Query: TFDQuery read FQuery write FQuery;
        property Acao: TAcao read FAcao write FAcao;
        property Mensagem: string read FMensagem write FMensagem;

        constructor Create;
        function Search(aParam: array of variant): boolean;
        function Save(): boolean;
        function SetupClass(): boolean;
        function ValidateData(): boolean;
        function GetField(sField: String; sKey: String; sKeyValue: String): String;
        function ReturnExtract(InitialDate, FinalDate: TDate; iType: integer): boolean;
    end;

  const
    TABLENAME = 'financeiro_nfs_faturas';
    SQLSELECT = 'select id_fatura, cod_cadastro, dat_vencimento, nom_arquivo, des_localizacao_arquivo, dom_aceite, ' +
                'dom_credito, dat_envio from ' +
                TABLENAME;
    SQLINSERT = 'INSERT INTO ' + TABLENAME + ' (cod_cadastro, dat_vencimento, nom_arquivo, des_localizacao_arquivo, dom_aceite, ' +
                'dom_credito, dat_envio) ' +
                'VALUES (:cod_cadastro, :dat_vencimento, :nom_arquivo, :des_localizacao_arquivo, :dom_aceite, :dom_credito, ' +
                ':dat_envio);';
    SQLUPDATE = 'UPDATE '  + TABLENAME + ' SET cod_cadastro = :cod_cadastro, dat_vencimento = :dat_vencimento, ' +
                'nom_arquivo = :nom_arquivo, des_localizacao_arquivo = :des_localizacao_arquivo, ' +
                'dom_aceite = :dom_aceite, dom_credito = :dom_credito, dat_envio = :dat_envio ' +
                'WHERE id_fatura = :id_fatura';
    SQLDELETE = 'DELETE FROM ' + TABLENAME + ' WHERE id_fatura = :id_fatura';

implementation

{ TModelSisGeFNFsFaturas }

constructor TModelSisGeFNFsFaturas.Create;
begin
  FConnection := TConexao.Create;
end;


function TModelSisGeFNFsFaturas.Delete: boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConnection.ReturnQuery();
    FDQuery.ExecSQL(SQLDELETE, [FID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TModelSisGeFNFsFaturas.GetField(sField, sKey, sKeyValue: String): String;
var
  FDQuery: TFDQuery;
begin
  try
    Result := '';
    FDQuery := FConnection.ReturnQuery();
    if not sKeyValue.IsEmpty then
    begin
      FDQuery.SQL.Text := 'select ' + sField + ' from ' + TABLENAME + ' where ' + sKey + ' = ' + sKeyValue;
      FDQuery.Open();
      if not FDQuery.IsEmpty then Result := FDQuery.FieldByName(sField).AsString;
    end;
  finally
    FDQuery.Free;
  end;
end;

function TModelSisGeFNFsFaturas.Insert: boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConnection.ReturnQuery();
    FDQuery.ExecSQL(SQLINSERT, [FCadastro, FDataVencimento, FArquivo, FPath, FAceite, FCredito, FDataEnvio]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TModelSisGeFNFsFaturas.ReturnExtract(InitialDate, FinalDate: TDate; iType: integer): boolean;
var
  sSQL : String;
  sField : string;
begin
  Result:= False;
  if InitialDate = 0 then
  begin
    FMensagem := 'Informe a data inicial!';
    Exit;
  end;
  if FinalDate = 0 then
  begin
    FMensagem := 'Informe a data Final!';
    Exit;
  end;
  if InitialDate > FinalDate then
  begin
    FMensagem := 'A data inicial não pode ser maior que a data final!';
    Exit;
  end;

  if iType =  1 then
    sField := 'financeiro_nfs_faturas.dat_vencimento'
  else if iType =  2 then
    sField := 'financeiro_nfs_faturas.dat_envio';

  sSQL := 'SELECT ' +
        'financeiro_nfs_faturas.id_fatura AS id_fatura, ' +
        'tbentregadores.cod_cadastro AS cod_cadastro, ' +
        'tbentregadores.num_cnpj AS num_cnpj, ' +
        'tbentregadores.des_razao_social AS nom_cadastro, ' +
        'tbentregadores.nom_favorecido AS nom_favorecido, ' +
        'tbentregadores.num_cpf_cnpj_favorecido AS num_cpf_cnpj_favorecido, ' +
        'tbentregadores.nom_razao_mei AS nom_razao_mei, ' +
        'tbentregadores.num_cnpj_mei AS num_cnpj_mei, ' +
        'financeiro_nfs_faturas.dat_vencimento AS dat_vencimento, ' +
        'financeiro_nfs_faturas.dat_envio AS dat_envio, ' +
        'financeiro_nfs_faturas.nom_arquivo AS nom_arquivo, ' +
        'financeiro_nfs_faturas.des_localizacao_arquivo AS des_localizacao_arquivo, ' +
        'financeiro_nfs_faturas.dom_aceite AS dom_aceite, ' +
        'financeiro_nfs_faturas.dom_credito AS dom_credito ' +
        'FROM ' +
        '((tbentregadores ' +
        'JOIN financeiro_nfs_faturas ON ((financeiro_nfs_faturas.cod_cadastro = tbentregadores.cod_cadastro)))) ' +
        'WHERE ' + sField + ' >= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', InitialDate)) + ' and '  +
                   sField + ' <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', FinalDate));

  FQuery := FConnection.ReturnQuery();
  FQuery.SQL.Text := sSQL;
  FQuery.Open();
  if FQuery.IsEmpty then
  begin
    FQuery.Active := False;
    FQuery.Connection.Connected := False;
    Exit;
  end;
  Result := True;
end;

function TModelSisGeFNFsFaturas.Save: boolean;
begin
  Result := False;
  if not ValidateData() then
    Exit;
  case FAcao of
    tacIncluir: Result := Insert();
    tacAlterar: Result := Update();
    tacExcluir: Result := Delete();
  else
    Exit;
  end;
end;

function TModelSisGeFNFsFaturas.Search(aParam: array of variant): boolean;
begin
  Result := False;
  FQuery := FConnection.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FQuery.SQL.Clear;

  FQuery.SQL.Add(SQLSELECT);
  if aParam[0] = 'ID' then
  begin
    FQuery.SQL.Add('WHERE id_fatura :id_fatura');
    FQuery.ParamByName('id_fatura').AsInteger := aParam[1];
  end;
  if aParam[0] = 'CADASTRO' then
  begin
    FQuery.SQL.Add('where cod_cadastro = :cod_cadastro');
    FQuery.ParamByName('cod_cadastro').AsInteger := aParam[1];
  end;
  if aParam[0] = 'FILTRO' then
  begin
    FQuery.SQL.Add('where ' + aParam[1]);
  end;
  if aParam[0] = 'APOIO' then
  begin
    FQuery.SQL.Clear;
    FQuery.SQL.Add('select  ' + aParam[1] + ' from ' + TABLENAME + ' ' + aParam[2]);
  end;
  FQuery.Open();
  if FQuery.IsEmpty then
  begin
    Exit;
  end;
  Result := True;
end;

function TModelSisGeFNFsFaturas.SetupClass: boolean;
begin
  Result := False;
  FID := FQuery.FieldByName('id_fatura').AsInteger;
  FCadastro := FQuery.FieldByName('cod_cadastro').AsInteger;
  FDataVencimento := FQuery.FieldByName('dat_vencimento').AsDateTime;
  FArquivo := FQuery.FieldByName('nom_arquivo').AsString;
  FPath := FQuery.FieldByName('des_localizacao_arquivo').AsString;
  FAceite := FQuery.FieldByName('dom_aceite').AsBoolean;
  FCredito := FQuery.FieldByName('dom_credito').AsBoolean;
  FDataEnvio := FQuery.FieldByName('dat_envio').AsDateTime;
  Result := True;
end;

function TModelSisGeFNFsFaturas.Update: boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConnection.ReturnQuery();
    FDQuery.ExecSQL(SQLUPDATE,
                    [FCadastro, FDataVencimento, FArquivo, FPath, FAceite, FCredito, FDataEnvio, FID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TModelSisGeFNFsFaturas.ValidateData: boolean;
begin
  Result := False;
  if FCadastro = 0 then
  begin
    FMensagem := 'Informe o código do cadastro!';
    Exit
  end;
  if FDataVencimento = 0 then
  begin
    FMensagem := 'Informe a data do vencimento!';
    Exit
  end;
  if FDataEnvio = 0 then
  begin
    FMensagem := 'Informe a data do envio!';
    Exit
  end;
  Result := True;
end;

end.
