unit Model.CRMEnderecos;

interface

  type

    TCRMEnderecos = class

    private

      FCadastro: Integer;
      FTipo: String;
      FCEP: String;
      FLogradouro: String;
      FNumero: String;
      FComplemento: String;
      FBairro: String;
      FCidade: String;
      FUF: String;
      FSequencia: Integer;
      FCorrespondencia: Integer;
      FReferencia: String;
      FCNPJ: String;
      FIM: String;
      FIE: String;

    public

      property Sequencia: Integer read FSequencia write FSequencia;
      property Cadastro: integer read FCadastro write FCadastro;
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
      property CNPJ: String read FCNPJ write FCNPJ;
      property IE: String read FIE write FIE;
      property IM: String read FIM write FIM;

    end;

implementation


end.
