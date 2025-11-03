unit service.connectionMySQL;

interface
  uses
    FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
    FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, Data.DB,FireDAC.Phys.MySQLDef, System.SysUtils,
    FireDAC.DApt, FireDAC.VCLUI.Wait, service.sistem;

type
  TConnectionMySQL = class
    private
      FConn : TFDConnection;
      FSistem : TSistem;
      procedure SetupConn;
    public
      constructor Create;
      destructor Destroy; override;
      function GetConnection: TFDConnection;
      function GetQuery: TFDQuery;
  end;

implementation

{ TConnectionMySQL }

constructor TConnectionMySQL.Create;
begin
  FConn := TFDConnection.Create(nil);
  FSistem := TSistem.GetInstance;
  SetupConn;
end;

destructor TConnectionMySQL.Destroy;
begin
   FConn.Free;
  inherited;
end;

function TConnectionMySQL.GetConnection: TFDConnection;
begin
  Result := FConn;
end;

function TConnectionMySQL.GetQuery: TFDQuery;
var
  FQuery : TFDQuery;
begin
  FQuery := TFDQuery.Create(nil);
  FQuery.Connection := FConn;
  Result := FQuery;
end;

procedure TConnectionMySQL.SetupConn;
begin
  FConn.LoginPrompt := False;
  FConn.FetchOptions.Mode := fmAll;
  FConn.FetchOptions.RowsetSize := 500;
  FConn.ResourceOptions.AutoReconnect := True;
  FConn.ConnectionString := 'DriverID=' + FSistem.DriverId +
                            ';Server=' + FSistem.Hostname +
                            ';Database=' + FSistem.Database +
                            ';Port=' + FSistem.Port +
                            ';User_name=' + FSistem.Username +
                            ';Password=' + FSistem.Password;
  FSistem.Free;
end;

end.
