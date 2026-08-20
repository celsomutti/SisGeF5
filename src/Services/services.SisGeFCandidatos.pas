unit services.SisGeFCandidatos;

interface

uses Generics.Collections, System.Classes, System.SysUtils, Common.Utils, ComObj, System.Variants, System.StrUtils;
  type
    TCandidatos = class
      private
        FDES_MODELO_VEICULO: string;
        FDOM_VEICULO_PROPRIO: string;
        FDES_CIDADE: string;
        FDES_REGIOES: string;
        FDES_ENDERECO: string;
        FDES_ANO_VEICULO: string;
        FDAT_VALIDADE_CNH: TDate;
        FCOD_CANDIDATO: integer;
        FNUM_CEP: string;
        FDOM_RASTREADO: string;
        FDES_EXPERIENCIA: string;
        FDES_BAIRRO: string;
        FDES_EMAIL: string;
        FDOM_EXPERIENCIA: string;
        FDOM_RESTRICOES: string;
        FDES_UF: string;
        FDES_TIPO_VEICULO: string;
        FDES_TIPO_COMBUSTIVEL: string;
        Fid_categoria: integer;
        FDOM_DISPONIBILIDADE: string;
        FDES_CATEGORIA_CNH: string;
        FNUM_ENDERECO: string;
        FNUM_TELEFONE: string;
        FDOM_ANTECEDENTES: string;
        FNUM_CELULAR: string;
        FDES_COMPLEMENTO: string;
        FNOM_CANDIDATO: string;
        FDOM_LICENCIAMENTO_IPVA: string;
      public
        property COD_CANDIDATO: integer read FCOD_CANDIDATO write FCOD_CANDIDATO;
        property id_categoria: integer read Fid_categoria write Fid_categoria;
        property NOM_CANDIDATO: string read FNOM_CANDIDATO write FNOM_CANDIDATO;
        property DES_EMAIL: string read FDES_EMAIL write FDES_EMAIL;
        property NUM_CEP: string read FNUM_CEP write FNUM_CEP;
        property DES_ENDERECO: string read FDES_ENDERECO write FDES_ENDERECO;
        property NUM_ENDERECO: string read FNUM_ENDERECO write FNUM_ENDERECO;
        property DES_COMPLEMENTO: string read FDES_COMPLEMENTO write FDES_COMPLEMENTO;
        property DES_BAIRRO: string read FDES_BAIRRO write FDES_BAIRRO;
        property DES_CIDADE: string read FDES_CIDADE write FDES_CIDADE;
        property DES_UF: string read FDES_UF write FDES_UF;
        property NUM_TELEFONE: string read FNUM_TELEFONE write FNUM_TELEFONE;
        property NUM_CELULAR: string read FNUM_CELULAR write FNUM_CELULAR;
        property DOM_EXPERIENCIA: string read FDOM_EXPERIENCIA write FDOM_EXPERIENCIA;
        property DES_EXPERIENCIA: string read FDES_EXPERIENCIA write FDES_EXPERIENCIA;
        property DES_REGIOES: string read FDES_REGIOES write FDES_REGIOES;
        property DOM_ANTECEDENTES: string read FDOM_ANTECEDENTES write FDOM_ANTECEDENTES;
        property DOM_RESTRICOES: string read FDOM_RESTRICOES write FDOM_RESTRICOES;
        property DAT_VALIDADE_CNH: TDate read FDAT_VALIDADE_CNH write FDAT_VALIDADE_CNH;
        property DES_CATEGORIA_CNH: string read FDES_CATEGORIA_CNH write FDES_CATEGORIA_CNH;
        property DOM_VEICULO_PROPRIO: string read FDOM_VEICULO_PROPRIO write FDOM_VEICULO_PROPRIO;
        property DES_ANO_VEICULO: string read FDES_ANO_VEICULO write FDES_ANO_VEICULO;
        property DES_TIPO_VEICULO: string read FDES_TIPO_VEICULO write FDES_TIPO_VEICULO;
        property DES_MODELO_VEICULO: string read FDES_MODELO_VEICULO write FDES_MODELO_VEICULO;
        property DES_TIPO_COMBUSTIVEL: string read FDES_TIPO_COMBUSTIVEL write FDES_TIPO_COMBUSTIVEL;
        property DOM_LICENCIAMENTO_IPVA: string read FDOM_LICENCIAMENTO_IPVA write FDOM_LICENCIAMENTO_IPVA;
        property DOM_RASTREADO: string read FDOM_RASTREADO write FDOM_RASTREADO;
        property DOM_DISPONIBILIDADE: string read FDOM_DISPONIBILIDADE write FDOM_DISPONIBILIDADE;
    end;


implementation

end.
