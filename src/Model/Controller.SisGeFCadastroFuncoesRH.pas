unit Controller.SisGeFCadastroFuncoesRH;

interface

  uses Common.ENum, FireDAC.Comp.Client, service.connectionMySQL, service.sistem;

  type
    TFuncoes = Record
      id_funcao: integer;
      des_funcao: string[132];
    End;

  type
    TFuncoesRH = class
      private
        FAcao : TAcao;
        FMensagem : string;
        FConn     : TConnectionMySQL;
        FQuery    : TFDQuery;

        function Inserir  ()  : boolean;
        function Alterar  ()  : boolean;
        function Excluir  ()  : boolean;
      protected

      public
        ARecord   : TFuncoes;

        Constructor Create();
        function    GetNextID   (sIdName: string)         : Integer;
        function    Search      (aParams: array of string): boolean;
        function    SaveRecord  ()                        : boolean;


        property Acao     : TAcao   read  FAcao     write FAcao;
        property Mensagem : string  read  FMensagem write FMensagem;
    end;

     const
      TABLENAME = 'crm_funcoes_rh';
      SQLINSERT = 'insert into ' + TABLENAME +
                  '(id_funcao, des_funcao) ' +
                  'values ' +
                  '(:id_funcao, :des_funcao)';
      SQLUPDATE = 'update ' + TABLENAME +
                  ' set ' +
                  'des_funcao = :des_funcao ' +
                  'where ' +
                  'id_funcao = :id_funcao';
      SQLSELECT = 'select id_funcao, des_funcao ' +
                  'from ' +
                  TABLENAME;

implementation

{ TFuncoesRH }

function TFuncoesRH.Alterar: boolean;
begin
  Result := False;
  try
    FQuery := FConn.GetQuery;
    FQuery.ExecSQL(SQLUPDATE,
                  [ARecord.id_funcao, ARecord.des_funcao]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

constructor TFuncoesRH.Create;
begin
  FConn := TConnectionMySQL.Create;
end;

function TFuncoesRH.Excluir: boolean;
begin

end;

function TFuncoesRH.GetNextID(sIdName: string): Integer;
begin
  try
    FQuery := FConn.GetQuery;
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

function TFuncoesRH.Inserir: boolean;
begin
Result := False;
  try
    ARecord.id_funcao := 0;
    FQuery := FConn.GetQuery();
    FQuery.ExecSQL(SQLINSERT,
                  [ARecord.id_funcao, ARecord.des_funcao]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TFuncoesRH.SaveRecord: boolean;
begin

end;

function TFuncoesRH.Search(aParams: array of string): boolean;
begin
  Result := False;
  FQuery := FConn.GetQuery;
  FQuery.SQL.Add(SQLSELECT);
  if Length(aParams) >= 2 then
  begin

  end;
  if FQuery.IsEmpty then
    Exit;
  Result := True;
end;

end.
