{**************************************************************************************************************************
* Classe/Objeto : TAbrangenciaExpressas
* Finalidade    : pesquisa, alteração, exclusão e inclusão de dados na tabela sistema_abrangencia_expressas
* Nível         : Model
* Autor         : Celso Mutti
* Data          : 12/05/2021
* Versão        : 1
* Histórico     : 12/05/2021 - Criação - Celso Mutti (1)
**************************************************************************************************************************}

unit Model.AbrangenciaExpressas;

interface

uses Common.ENum, FireDAC.Comp.Client, System.SysUtils, DAO.Conexao, System.DateUtils, System.Variants;

type
  TAbrangenciaExpressas = class
  private
    FLogradouro : string;
    FZona       : string;
    FBairro     : string;
    FCliente    : integer;
    FPrazo      : string;
    FCEP        : string;
    FID         : integer;
    FTipo       : integer;
    FAcao       : TAcao;
    FQuery      : TFDQuery;
    FConexao    : TConexao;

    function    Insert(): Boolean;
    function    Update(): Boolean;
    function    Delete(): Boolean;

  public
    constructor Create;

    property    ID         : integer   read  FID         write FID;           //  id do registro chave primaria
    property    CEP        : string    read  FCEP        write FCEP;          //  CEP completo do logradouro
    property    Prazo      : string    read  FPrazo      write FPrazo;        //  Tipo de prazo de entrega ("D + 1 ou D + 0")
    property    Zona       : string    read  FZona       write FZona;         //  Sigla da Zona (I)terminicipal ou (U)rbana
    property    Tipo       : integer   read  FTipo       write FTipo;         //  Código do tipo (0 - não faz, 1 - Leve, 2 - Pesado, 3 - Misto)
    property    Logradouro : string    read  FLogradouro write FLogradouro;   //  Descrição do logradouro
    property    Bairro     : string    read  FBairro     write FBairro;       //  Descrição do bairro
    property    Cliente    : integer   read  FCliente    write FCliente;      //  Código do cliente da empresa (0 para todos)
    property    Acao       : TAcao     read  FAcao       write FAcao;         //  Acao de gravação no banco de dados
    property    Query      : TFDQuery  read  FQuery      write FQuery;        //  Query resultado de pesquisa

    function    Search(aParam : array of variant)  : boolean;  // realiza pesquisa em banco de dados
    function    Save()  : Boolean;  // salva, exclue dados no banco de dados
    function    GetField(sField : String; sKey : String; sKeyValue : String) : String; // localiza e retorna o valor de um campo de uma tabela
    procedure   SetupSelf(fdQuery : TFDQuery);  //  atribui os valores dos campos de uma query às propriedades da classe
    procedure   ClearSelf();  //  limpa as propriedades da dos campos da tabela da classe

  end;

  const
    //  nome da tabela no banco de dados
    TABLENAME = 'sistema_abrangencia_expressas';
    // script de inclusão na tabela
    SQLINSERT = 'insert into ' + TABLENAME + ' (id_registro, num_cep, des_prazo, dom_zona, cod_tipo, des_logradouro, ' +
                'des_bairro, cod_cliente) ' +
                'value ' +
                '(:id_registro, :num_cep, :des_prazo, :dom_zona, :cod_tipo, :des_logradouro, :des_bairro, :cod_cliente)';
    // script de alteração de dados na tabela
    SQLUPDATE = 'update ' + TABLENAME + ' set num_cep = :num_cep, des_prazo = :des_prazo, dom_zona = :dom_zona, ' +
                'cod_tipo = :cod_tipo, des_logradouro = :des_logradouro, des_bairro = :des_bairro, cod_cliente = :cod_cliente ' +
                'where id_registro = :idregistro';
    // script de exclusão da tabela
    SQLDELETE = 'delete from ' + TABLENAME +
                ' where id_registro = :idregistro';
    // script de pesquisa na tabela
    SQLSELECT = 'select id_registro, num_cep, des_prazo, dom_zona, cod_tipo, des_logradouro, des_bairro, cod_cliente ' +
                'from ' + TABLENAME;
implementation

{ TAbrangenciaExpressas }

procedure TAbrangenciaExpressas.ClearSelf;
begin
  FLogradouro :=  '';
  FZona       :=  '';
  FBairro     :=  '';
  FCliente    :=  0;
  FPrazo      :=  '';
  FCEP        :=  '';
  FID         :=  0;
  FTipo       :=  0;
end;

constructor TAbrangenciaExpressas.Create;
begin
  FConexao := TConexao.Create;
end;

function TAbrangenciaExpressas.Delete: Boolean;
var
  FQueryDelete : TFDQuery;
begin
  try
    Result := False;
    FQueryDelete := FConexao.ReturnQuery;
    FQueryDelete.ExecSQL(SQLDELETE, [FID]);
    if FQueryDelete.RowsAffected = 0 then
      Exit;
    Result := True;
  finally
    FQueryDelete.Active := False;
    FQueryDelete.Connection.Connected := False;
    FQueryDelete.Free
  end;
end;

function TAbrangenciaExpressas.GetField(sField, sKey, sKeyValue: String): String;
var
  FQueryField : TFDQuery;
begin
  try
    Result := '';
    FQueryField := FConexao.ReturnQuery;
    FQueryField.SQL.Text := 'select ' + sField + ' from ' + TABLENAME + ' where ' + sKey + ' = ' + sKeyValue;
    FQueryField.Open();
    if FQueryField.IsEmpty then
      Exit;
    Result := FQueryField.FieldByName(sField).AsString;
  finally
    FQueryField.Active := False;
    FQueryField.Connection.Connected := False;
    FQueryField.Free;
  end;
end;

function TAbrangenciaExpressas.Insert: Boolean;
var
  FQueryInsert : TFDQuery;
begin
  try
    Result := False;
    FQueryInsert := FConexao.ReturnQuery;
    FQueryInsert.ExecSQL(SQLINSERT, [FID, FCEP, FPrazo, FZona, FTipo, FLogradouro, FBairro, FCliente]);
    if FQueryInsert.RowsAffected = 0 then
      Exit;
    Result := True;
  finally
    FQueryInsert.Active := False;
    FQueryInsert.Connection.Connected := False;
    FQueryInsert.Free;
  end;
end;

function TAbrangenciaExpressas.Save: Boolean;
begin
  Result := False;
  case FAcao of
    Common.ENum.tacIncluir: Result := Insert();
    Common.ENum.tacAlterar: Result := Update();
    Common.ENum.tacExcluir: Result := Delete();
  end;
end;

function TAbrangenciaExpressas.Search(aParam: array of variant): boolean;
begin
  Result := False;
  if Length(aParam) < 2 then
    Exit;
  FQuery := FConexao.ReturnQuery;
  FQuery.SQL.Add(SQLSELECT);
  if aParam[0] = 'ID' then
  begin
    FQuery.SQL.Add('where id_registro = :id_registro');
    FQuery.ParamByName('id_registro').AsInteger := aParam[1];
  end
  else if aParam[0] = 'CEP' then
  begin
    FQuery.SQL.Add('where num_cep = :num_cep');
    FQuery.ParamByName('num_cep').AsString := aParam[1];
  end
  else if aParam[0] = 'BAIRRO' then
  begin
    FQuery.SQL.Add('where des_bairro = :des_bairro');
    FQuery.ParamByName('des_bairro').AsString := aParam[1];
  end
  else if aParam[0] = 'FILTRO' then
  begin
    if VarToStr(aParam[1]) <> '' then
      FQuery.SQL.Add('where ' + VarToStr(aParam[1]));
  end
  else if aParam[0] = 'APOIO' then
  begin
    FQuery.SQL.Clear;
    FQuery.SQL.Add('select ' + VarToStr(aParam[1]) + ' from ' + TABLENAME + ' where ' + VarToStr(aParam[2]));
  end;
  FQuery.Open();
  if FQuery.IsEmpty then
  begin
    FQuery.Active := False;
    FQuery.Connection.Connected := False;
    Exit;
  end;
  Result := True;
end;

procedure TAbrangenciaExpressas.SetupSelf(fdQuery: TFDQuery);
begin
  FLogradouro :=  fdQuery.FieldByName('des_logradouro').AsString;
  FZona       :=  fdQuery.FieldByName('dom_zona').AsString;
  FBairro     :=  fdQuery.FieldByName('des_bairro').AsString;
  FCliente    :=  fdQuery.FieldByName('cod_cliente').AsInteger;
  FPrazo      :=  fdQuery.FieldByName('des_prazo').AsString;
  FCEP        :=  fdQuery.FieldByName('num_cep').AsString;
  FID         :=  fdQuery.FieldByName('id_registro').AsInteger;
  FTipo       :=  fdQuery.FieldByName('cod_tipo').AsInteger;
end;

function TAbrangenciaExpressas.Update: Boolean;
var
  FQueryUpdate : TFDQuery;
begin
  try
    Result := False;
    FQueryUpdate := FConexao.ReturnQuery;
    FQueryUpdate.ExecSQL(SQLUPDATE, [FCEP,FPrazo, FZona, FTipo, FLogradouro, FBairro, FCliente, FID]);
    if FQueryUpdate.RowsAffected = 0 then
      Exit;
    Result := True;
  finally
    FQueryUpdate.Active := False;
    FQueryUpdate.Connection.Connected := False;
    FQueryUpdate.Free;
  end;
end;

end.
