unit Model.SisGeFAcessos;

interface

uses Common.ENum, FireDAC.Comp.Client, service.connectionMySQL, service.sistem;

type
  TAcessos = Class
  private
      FAcao: TAcao;
      FAdministrador: String;
      FSistema: Integer;
      FMenu: Integer;
      FUsuario: Integer;
      FModulo: Integer;


    public
      property Sistema        : Integer read FSistema       write FSistema;
      property Modulo         : Integer read FModulo        write FModulo;
      property Menu           : Integer read FMenu          write FMenu;
      property Usuario        : Integer read FUsuario       write FUsuario;
      property Administrador  : String  read FAdministrador write FAdministrador;
      property Acao           : TAcao   read FAcao          write FAcao;

  End;

implementation

end.
