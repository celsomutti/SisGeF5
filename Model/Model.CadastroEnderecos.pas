unit Model.CadastroEnderecos;

interface

uses Common.ENum, FireDAC.Comp.Client, Dialogs, Control.Sistema, DAO.Conexao, System.SysUtils, Data.DB;

  type
    TCadastroEnderecos = class
    private
      FID: Integer;
      FTipo: String;
      FCEP: String;
      FLogradouro: String;
      FNumero: String;
      FComplemento: String;
      FBairro: String;
      FCidade: String;
      FUF: String;
      FAcao: TAcao;
      Fconexao : TConexao;
      FQuery: TFDQuery;
      FSequencia: Integer;
      FCorrespondencia: Integer;
      FReferencia: String;

      function Insert(): Boolean;
      function Update(): Boolean;
      function Delete(): Boolean;

    public
      property ID: Integer read FID write FID;
      property Sequencia: Integer read FSequencia write FSequencia;
      property Tipo: String read FTipo write FTipo;
      property CEP: String read FCEP write FCEP;
      property Logradouro: String read FLogradouro write FLogradouro;
      property Numero: String read FNumero write FNumero;
      property Complemento: String read FComplemento write FComplemento;
      property Bairro: String read FBairro write FBairro;
      property Cidade: String read FCidade write FCidade;
      property UF: String read FUF write FUF;
      property Correspondencia: Integer read FCorrespondencia write FCorrespondencia;
      property Referencia: String read FReferencia write FReferencia;
      property Query: TFDQuery read FQuery write FQuery;
      property Acao: TAcao read FAcao write FAcao;

      constructor Create();
      function Localizar(aParam: array of variant): Boolean;
      function Gravar(): Boolean;
      function SaveBatch(memTable: TFDMemTable): Boolean;
      function SetupClass(FDQuery: TFDQuery): boolean;
      function ClearClass(): boolean;
      function GetID(iID: Integer): Integer;
    end;
const
  TABLENAME = 'tbenderecosentregadores';

implementation


{ TCadastroEnderecos }

uses Common.Utils;

function TCadastroEnderecos.ClearClass: boolean;
begin
  Result := False;
  FID := 0;
  FTipo := '';
  FCEP := '';
  FLogradouro := '';
  FNumero := '';
  FComplemento := '';
  FBairro := '';
  FCidade := '';
  FUF := '';
  FSequencia := 0;
  FCorrespondencia := 0;
  FReferencia := '';
  Result := True;
end;

constructor TCadastroEnderecos.Create;
begin
  FConexao := TConexao.Create;
end;

function TCadastroEnderecos.Delete: Boolean;
var
  FDQuery: TFDQuery;
  sSQL: String;
begin
  try
    Result := False;
    sSQL := '';
    FDQuery := FConexao.ReturnQuery();
    sSQL := 'delete from ' + TABLENAME + ' ' +
            'where cod_entregador = :pcod_entregador;';
    FDQuery.ExecSQL(sSQL,[Self.ID, Self.FTipo]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TCadastroEnderecos.GetID(iID: Integer): Integer;
var
  FDQuery: TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery();
    FDQuery.Open('select coalesce(max(seq_endereco),0) + 1 from ' + TABLENAME + ' where cod_entregador = ' + iID.toString);
    Result := FDQuery.Fields[0].AsInteger;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TCadastroEnderecos.Gravar: Boolean;
begin
  case FAcao of
    tacIncluir: Result := Self.Insert();
    tacAlterar: Result := Self.Update();
    tacExcluir: Result := Self.Delete();
  end;
end;

function TCadastroEnderecos.Insert: Boolean;
var
  sSQL: String;
  FDQuery : TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    Self.Sequencia := GetID(Self.ID);
    sSQL := 'insert into ' + TABLENAME + ' (' +
    'cod_entregador, seq_endereco, des_tipo, des_logradouro, num_logradouro, des_complemento, ' +
    'dom_correspondencia, des_bairro, nom_cidade, uf_estado, num_cep, des_referencia) ' +
    'values (' +
    ':cod_entregador, :seq_endereco, :des_tipo, :des_logradouro, :num_logradouro, :des_complemento, ' +
    ':dom_correspondencia, :des_bairro, :nom_cidade, :uf_estado, :num_cep, :des_referencia);';
    FDQuery.ExecSQL(sSQL,[Self.ID, Self.Sequencia, Self.Tipo, Self.Logradouro, Self.Numero, Self.Complemento,
                    Self.Correspondencia,  Self.Bairro, Self.Cidade, Self.UF, Self.CEP, Self.Referencia]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;end;

function TCadastroEnderecos.Localizar(aParam: array of variant): Boolean;
begin
  Result := False;
  FQuery := FConexao.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FQuery.SQL.Clear;

  FQuery.SQL.Add('select cod_entregador, seq_endereco, des_tipo, des_logradouro, num_logradouro, des_complemento, ' +
                 'dom_correspondencia, des_bairro, nom_cidade, uf_estado, num_cep, des_referencia from ' + TABLENAME);
  if aParam[0] = 'ID' then
  begin
    FQuery.SQL.Add('where cod_cadastro = :cod_cadastro);');
    FQuery.ParamByName('cod_cadastro').AsInteger := aParam[1];
  end;
  if aParam[0] = 'TIPO' then
  begin
    FQuery.SQL.Add('where cod_cadastro = :cod_cadastro and  des_tipo = :des_tipo');
    FQuery.ParamByName('cod_cadastro').AsInteger := aParam[1];
    FQuery.ParamByName('des_tipo').AsString := aParam[2];
  end;
  if aParam[0] = 'CEP' then
  begin
    FQuery.SQL.Add('where num_cep like :num_cep');
    FQuery.ParamByName('NUM_CEP').AsString := aParam[1];
  end;
  if aParam[0] = 'ENDERECO' then
  begin
    FQuery.SQL.Add('where des_logradouro like :des_logradouro');
    FQuery.ParamByName('des_logradouro').AsString := aParam[1];
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

function TCadastroEnderecos.SaveBatch(memTable: TFDMemTable): Boolean;
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
    Self.ID := memTable.FieldByName('cod_entregador').AsInteger;
    Self.Sequencia := GetID(memTable.FieldByName('cod_entregador').AsInteger);
    Self.Tipo := memTable.FieldByName('des_tipo').AsString;
    Self.Logradouro := memTable.FieldByName('des_logradouro').AsString;
    Self.Numero := memTable.FieldByName('num_logradouro').AsString;
    Self.Complemento := memTable.FieldByName('des_complemento').AsString;
    Self.Correspondencia := memTable.FieldByName('dom_correspondencia').AsInteger;
    Self.Bairro := memTable.FieldByName('nom_bairro').AsString;
    Self.Cidade := memTable.FieldByName('nom_cidade').AsString;
    Self.UF := memTable.FieldByName('uf_estado').AsString;
    Self.CEP := memTable.FieldByName('num_cep').AsString;
    Self.Referencia := memTable.FieldByName('res_referencia').AsString;
    Self.Acao := tacIncluir;
    if not Self.Gravar then
    begin
      Exit;
    end;
    memTable.Next;
  end;
  Result := True;
end;

function TCadastroEnderecos.SetupClass(FDQuery: TFDQuery): boolean;
begin
  Result := False;
  Self.ID := FDQuery.FieldByName('cod_entregador').AsInteger;
  Self.Sequencia := FDQuery.FieldByName('seq_endereco').AsInteger;
  Self.Tipo := FDQuery.FieldByName('des_tipo').AsString;
  Self.Logradouro := FDQuery.FieldByName('des_logradouro').AsString;
  Self.Numero := FDQuery.FieldByName('num_logradouro').AsString;
  Self.Complemento := FDQuery.FieldByName('des_complemento').AsString;
  Self.Correspondencia := FDQuery.FieldByName('dom_correspondencia').AsInteger;
  Self.Bairro := FDQuery.FieldByName('nom_bairro').AsString;
  Self.Cidade := FDQuery.FieldByName('nom_cidade').AsString;
  Self.UF := FDQuery.FieldByName('uf_estado').AsString;
  Self.CEP := FDQuery.FieldByName('num_cep').AsString;
  Self.Referencia := FDQuery.FieldByName('res_referencia').AsString;
  Result := True;
end;

function TCadastroEnderecos.Update: Boolean;
var
  sSQL: String;
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConexao.ReturnQuery;
    sSQL := 'update '  + TABLENAME + ' set ' +
    'des_tipo = :des_tipo, des_logradouro = :des_logradouro, num_logradouro = :num_logradouro, des_complemento = :des_complemento, ' +
    'dom_correspondencia = :dom_correspondencia, des_bairro = :des_bairro, nom_cidade = :nom_cidade, uf_estado = :uf_estado, ' +
    'num_cep = :num_cep, des_referencia = :des_referencia ' +
    'where cod_entregador = :cod_entregador and seq_endereco := seq_endereco';
    FDQuery.ExecSQL(sSQL,[Self.Tipo, Self.Logradouro, Self.Numero, Self.Complemento, Self.Correspondencia, Self.Bairro,
                          Self.Cidade, Self.UF, Self.CEP, Self.Referencia, Self.ID, Self.Sequencia]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

end.
