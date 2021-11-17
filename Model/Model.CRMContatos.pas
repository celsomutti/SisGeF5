unit Model.CRMContatos;

interface

  type

    TCRMContatos = class

    private

      FCadastro: Integer;
      FSequencia: Integer;
      FDescricao: String;
      FTelefone: String;
      FEMail: String;

    public

      property Cadastro: Integer read FCadastro write FCadastro;
      property Sequencia: Integer read FSequencia write FSequencia;
      property Descricao: String read FDescricao write FDescricao;
      property Telefone: String read FTelefone write FTelefone;
      property EMail: String read FEMail write FEMail;

    end;

implementation

end.
