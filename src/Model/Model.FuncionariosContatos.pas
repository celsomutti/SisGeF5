unit Model.FuncionariosContatos;

interface
  uses Common.ENum, FireDAC.Comp.Client, service.connectionMySQL, service.sistem;

type
  TContatos = record
    seq_contato     : integer;
    id_funcionario  : integer;
    des_contato     : string[30];
    num_telefone    : string[15];
    des_email       : string[128];
  end;

  type TContratadosContatosModel = class
    private
        FAcao     : TAcao;
        FMensagem : string;
        FConn     : TConnectionMySQL;
        FQuery    : TFDQuery;

        function Inserir  ()  : boolean;
        function Alterar  ()  : boolean;
        function Excluir  ()  : boolean;

      public
        ARecord   : TContatos;

        Constructor Create();
        function    CustomSearch(aParams: array of string): boolean;
        function    SaveRecord  ()                        : boolean;
        function    SetupRecords()                        : boolean;


        property Acao     : TAcao     read  FAcao     write FAcao;
        property Mensagem : string    read  FMensagem write FMensagem;
        property Query    : TFDQuery  read  FQuery    write FQuery;
      protected
  end;
  const
      TABLENAME = 'crm_funcionarios_contatos';
      SQLINSERT = 'insert into ' + TABLENAME +
                  '(seq_contato, id_funcionario, des_contato, num_telefone, des_email) ' +
                  'VALUES '  +
                  '(:seq_contato, :id_funcionario, :des_contato, :num_telefone, :des_email)';
      SQLUPDATE = 'update ' + TABLENAME +
                  ' set ' +
                  'des_contato = :des_contato, num_telefone = :num_telefone, des_email  = :des_email ' +
                  'where ' +
                  'seq_contato = :seq_contato and id_funcionario = :id_funcionario ';
      SQLSELECT = 'select seq_contato, id_funcionario, des_contato, num_telefone, des_email ' +
                  'from ' +
                  TABLENAME;
      SQLDELETE = 'delete from ' + TABLENAME + ' where id_funcionario = :id_funcionario';


implementation

{ TContratadosContatosModel }

function TContratadosContatosModel.Alterar: boolean;
begin
  Result := False;
  try
    FQuery := FConn.GetQuery();
    FQuery.ExecSQL(SQLUPDATE,
                  [ARecord.des_contato, ARecord.num_telefone, ARecord.des_email, ARecord.seq_contato, ARecord.id_funcionario]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

constructor TContratadosContatosModel.Create;
begin

end;

function TContratadosContatosModel.CustomSearch(aParams: array of string): boolean;
begin

end;

function TContratadosContatosModel.Excluir: boolean;
begin

end;

function TContratadosContatosModel.Inserir: boolean;
begin
  Result := False;
  try
    FQuery := FConn.GetQuery();
    FQuery.ExecSQL(SQLINSERT,
                  [ARecord.seq_contato, ARecord.id_funcionario, ARecord.des_contato, ARecord.num_telefone, ARecord.des_email]);
    Result := True;
  finally
    FQuery.Connection.Close;
  end;
end;

function TContratadosContatosModel.SaveRecord: boolean;
begin

end;

function TContratadosContatosModel.SetupRecords: boolean;
begin

end;

end.
