unit service.connectionMySQL;

interface
  uses
    FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
    FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, Data.DB,FireDAC.Phys.MySQLDef, System.SysUtils,
    FireDAC.DApt, FireDAC.VCLUI.Wait, service.sistem, System.Classes;

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
      procedure SetupConnectionPool;
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
  FConn.FetchOptions.RowsetSize := 200;
  FConn.ResourceOptions.AutoReconnect := True;
//  FConn.ConnectionString := 'DriverID=' + FSistem.DriverId +
//                            ';Server=' + FSistem.Hostname +
//                            ';Database=' + FSistem.Database +
//                            ';Port=' + FSistem.Port +
//                            ';User_name=' + FSistem.Username +
//                            ';Password=' + FSistem.Password;
  SetupConnectionPool;
end;

procedure TConnectionMySQL.SetupConnectionPool;
var
  oParams: TStrings;
begin
  oParams := TStringList.Create;
  try
    oParams.Add('DriverID=' + FSistem.DriverId);
    oParams.Add('Server=' + FSistem.Hostname);
    oParams.Add('Database=' + FSistem.Database);
    oParams.Add('User_name=' + FSistem.Username);
    oParams.Add('Password=' + FSistem.Password);
    oParams.Add('CharacterSet=utf8');

    // Add temporary definition
    //FDManager.ConnectionDefFileName := 'Test.ini';
    //FDManager.ConnectionDefs.AddConnectionDef('MyMySQLDef', 'MySQL', oParams).MarkPersistent;

    with FDManager.ConnectionDefs.AddConnectionDef do begin
      Name := 'MyMySQLDef';
      Params.Add(oParams.ToString);                  // using Params
      // mark persistent to save this connection definition to file later
      MarkPersistent;
    end;
   // to make new definition persistent call following:
    FDManager.ConnectionDefs.Save;
    FConn.ConnectionDefName := 'MyMySQLDef';
  finally
    oParams.Free;
  end;
end;

//var
//  LDef: IFDStanConnectionDef;
//begin
//  // Add a new connection definition to the global manager
//  LDef := FDManager.ConnectionDefs.AddConnectionDef;
//  LDef.Name := 'MyPooledPool';
//
//
//
//  // Set your standard DBMS parameters
//  LDef.Params.DriverID := FSistem.DriverId;
//  LDef.Params.Database := FSistem.Database;
//  LDef.Params.UserName := FSistem.Username;
//  LDef.Params.Password := FSistem.Password;
//
//  // Enable the pooling mechanism
//  LDef.Params.Pooled := True;
//
//  // Optional: Fine-tune the pool limits
//  LDef.Params.Add('PoolMaximumItems=50');
//  LDef.Params.Add('PoolCleanupTimeout=30000');
//  LDef.Params.Add('Server=' + FSistem.Hostname);

end.
