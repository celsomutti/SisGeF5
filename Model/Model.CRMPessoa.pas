unit Model.CRMPessoa;

interface

  type

    TCRMPessoa = class

    private

      FCadastro: Integer;
      FTipoDoc: String;
      FNome: String;
      FFantasia: String;
      FCPFCNPJ: String;
      FRG: String;
      FNascimento: TDate;
      FUFRG: String;
      FEMissaoRG: TDate;
      FEmissorRG: String;
      FUFNascimento: String;
      FCidadeNascimento: String;
      FPai: String;
      FMae: String;
      FCNAE: String;
      FCRT: Integer;
      FNumeroCNH: String;
      FRegistroCNH: String;
      FCategoriaCNH: String;
      FValidadeCNH: TDate;
      FEmissaoCNH: TDate;
      FUFCNH: String;
      FDataPrimeiraCNH: TDate;
      FCodigoCNH: String;
      FStatus: Integer;
      FObs: String;
      FDataCadastro: TDate;
      FTipoConta: String;
      FBanco: String;
      FAgenciaConta: String;
      FNumeroConta: String;
      FNomeFavorecido: String;
      FCPFCNPJFavorecido: String;
      FFormaPagamento: String;
      FEmpresaGR: String;
      FDataGV: TDate;
      FNumeroConsultaGR: String;
      FChavePIX: String;
      FMEI: String;
      FRazaoMEI: String;
      FFantasiaMEI: String;
      FCNPJMEI: String;
      FTipoPessoa: Integer;
      FNacionalidade: String;
      FDataAberturaMEI: TDate;

    public

      property Cadastro: Integer                    read FCadastro                    write FCadastro;
      property TipoPessoa: Integer                  read FTipoPessoa                  write FTipoPessoa;
      property TipoDoc: String                      read FTipoDoc                     write FTipoDoc;
      property Nome: String                         read FNome                        write FNome;
      property Fantasia: String                     read FFantasia                    write FFantasia;
      property CPFCNPJ: String                      read FCPFCNPJ                     write FCPFCNPJ;
      property RG: String                           read FRG                          write FRG;
      property Nascimento: TDate                    read FNascimento                  write FNascimento;
      property Nacionalidade: String                read FNacionalidade               write FNacionalidade;
      property UFRG: String                         read FUFRG                        write FUFRG;
      property EMissaoRG: TDate                     read FEMissaoRG                   write FEMissaoRG;
      property EmissorRG: String                    read FEmissorRG                   write FEmissorRG;
      property UFNascimento: String                 read FUFNascimento                write FUFNascimento;
      property CidadeNascimento: String             read FCidadeNascimento            write FCidadeNascimento;
      property Pai: String                          read FPai                         write FPai;
      property Mae: String                          read FMae                         write FMae;
      property CNAE: String                         read FCNAE                        write FCNAE;
      property CRT: Integer                         read FCRT                         write FCRT;
      property NumeroCNH: String                    read FNumeroCNH                   write FNumeroCNH;
      property RegistroCNH: String                  read FRegistroCNH                 write FRegistroCNH;
      property CategoriaCNH: String                 read FCategoriaCNH                write FCategoriaCNH;
      property ValidadeCNH: TDate                   read FValidadeCNH                 write FValidadeCNH;
      property EmissaoCNH: TDate                    read FEmissaoCNH                  write FEmissaoCNH;
      property UFCNH: String                        read FUFCNH                       write FUFCNH;
      property DataPrimeiraCNH: TDate               read FDataPrimeiraCNH             write FDataPrimeiraCNH;
      property CodigoCNH: String                    read FCodigoCNH                   write FCodigoCNH;
      property Status: Integer                      read FStatus                      write FStatus;
      property Obs: String                          read FObs                         write FObs;
      property DataCadastro: TDate                  read FDataCadastro                write FDataCadastro;
      property TipoConta: String                    read FTipoConta                   write FTipoConta;
      property Banco: String                        read FBanco                       write FBanco;
      property AgenciaConta: String                 read FAgenciaConta                write FAgenciaConta;
      property NumeroConta: String                  read FNumeroConta                 write FNumeroConta;
      property NomeFavorecido: String               read FNomeFavorecido              write FNomeFavorecido;
      property CPFCNPJFavorecido: String            read FCPFCNPJFavorecido           write FCPFCNPJFavorecido;
      property FormaPagamento: String               read FFormaPagamento              write FFormaPagamento;
      property EmpresaGR: String                    read FEmpresaGR                   write FEmpresaGR;
      property DataGV: TDate                        read FDataGV                      write FDataGV;
      property NumeroConsultaGR: String             read FNumeroConsultaGR            write FNumeroConsultaGR;
      property ChavePIX: String                     read FChavePIX                    write FChavePIX;
      property MEI: String                          read FMEI                         write FMEI;
      property RazaoMEI: String                     read FRazaoMEI                    write FRazaoMEI;
      property FantasiaMEI: String                  read FFantasiaMEI                 write FFantasiaMEI;
      property CNPJMEI: String                      read FCNPJMEI                     write FCNPJMEI;
      property DataAberturaMEI: TDate               read FDataAberturaMEI             write FDataAberturaMEI;

    end;
implementation

end.
