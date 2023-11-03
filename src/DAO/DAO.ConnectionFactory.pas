unit DAO.ConnectionFactory;

interface

uses
  FireDAC.Comp.Client, FireDAC.Stan.Def, FireDAC.Stan.Error, FireDAC.Stan.Async,
  FireDAC.VCLUI.Wait, FireDAC.DApt, FireDAC.Phys.FB;

type
  TConnectionFactory = class
  private
    class var FDConnection: TFDConnection;
  public
    class function GetConnection: TFDConnection;
  end;

implementation

{ TConnectionFactory }

uses uGlobais;

class function TConnectionFactory.GetConnection: TFDConnection;
begin
  FDConnection := TFDConnection.Create(nil);
  FDConnection.ConnectionString := 'DriverID=' + uGlobais.pDriverID +
                                   ';Server=' + uGlobais.pServer +
                                   ';Database=' + uGlobais.pDatabase +
                                   ';Port=' + uGlobais.pPort +
                                   ';User_name=' + uGlobais.pUser_name +
                                   ';Password=' + uGlobais.pPassword;
  FDConnection.Connected := True;
  Result := FDConnection;
end;

end.
