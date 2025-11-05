unit DAO.Conexao;

interface

uses
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, Data.DB, FireDAC.Comp.Client, FireDAC.Phys.MySQLDef,
  FireDAC.Phys.FB, System.SysUtils, FireDAC.DApt, FireDAC.VCLUI.Wait, Global.Parametros, service.sistem;

  type
    TConexao = class
    private
      FConn: TFDConnection;
      FSistem : TSistem;
      procedure SetupConnection;
    public
      constructor Create;
      destructor Destroy; override;
      function GetConn: TFDConnection;
      function ReturnQuery: TFDQuery;
    end;

implementation

{ TConexao }

constructor TConexao.Create;
begin
  Fconn := TFDConnection.Create(nil);
  FSistem := TSistem.GetInstance;
  Self.SetupConnection();
end;

destructor TConexao.Destroy;
begin
  FConn.Free;
  inherited;
end;

function TConexao.GetConn: TFDConnection;
begin
  Result := FConn;
end;

function TConexao.ReturnQuery: TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := TFDQuery.Create(nil);
  FDQuery.Connection := FConn;
  Result := FDQuery;
end;

procedure TConexao.SetupConnection;
begin
  FConn.LoginPrompt := False;
  FConn.FetchOptions.Mode := fmAll;
  FConn.FetchOptions.RowsetSize := 500;
  FConn.ResourceOptions.AutoReconnect := True;
  FConn.ConnectionString := 'DriverID=' + Fsistem.DriverId +
                            ';Server=' + Fsistem.Hostname +
                            ';Database=' + Fsistem.Database +
                            ';Port=' + Fsistem.Port +
                            ';User_name=' + Fsistem.Username +
                            ';Password=' + FSistem.Password;
end;

end.
