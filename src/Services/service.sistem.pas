unit service.sistem;

interface

uses
  System.SysUtils, Forms, System.Classes, LocalCache4D,  C4D.Version, Common.Utils;

type
  TSistem = class
    private
      FDatabase: string;
      FHostname: string;
      FUsername: string;
      FPassword: string;
      FDriverId: string;
      FPort: string;
      FCurrentUserId: string;
      FCurrentUserLogin: string;
      FCurrentUserName: string;
      FCurrentGroup: string;
      FAliasLicence: string;
      FDocLicence: string;
      FNameLicence: string;
      FValidadeLicence: string;
      FVersion: string;
      FProductName: string;
      FCompanyName: string;
      FCopyright: string;
      FOriginalfilename: string;
      FStart: boolean;
      FSkin: string;
      class var FInstante : TSistem;
    protected
    public
      constructor Create;
      destructor Destroy; override;
      procedure SetupClass;
      procedure SetupAuth;
      procedure SetupLicence;
      property Start: boolean read FStart write FStart;
      property DriverId: string read FDriverId write FDriverId;
      property Hostname: string read FHostname write FHostname;
      property Database: string read FDatabase write FDatabase;
      property Username: string read FUsername write FUsername;
      property Password: string read FPassword write FPassword;
      property Port: string read FPort write FPort;
      property CompanyName: string read FCompanyName write FCompanyName;
      property ProductName: string read FProductName write FProductName;
      property Originalfilename: string read FOriginalfilename write FOriginalfilename;
      property Version: string read FVersion write FVersion;
      property Copyright: string read FCopyright write FCopyright;
      property CurrentUserID: string read FCurrentUserID write FCurrentUserId;
      property CurrentUserName: string read FCurrentUserName write FCurrentUserName;
      property CurrentLogin: string read FCurrentUserLogin write FCurrentUserLogin;
      property CurrentGroup: string read FCurrentGroup write FCurrentGroup;
      property Skin: string read FSkin write FSkin;
      property AliasLicence: string read FAliasLicence write FAliasLicence;
      Property NameLicence: string read FNameLicence write FNameLicence;
      property DocLicence: string read FDocLicence write FDocLicence;
      property ValidadeLicence: string read FValidadeLicence write FValidadeLicence;
      function LoadSkinsINI(): TStringList;
      function SaveSkin(): boolean;
      procedure SaveAuth();
      class function GetInstance: TSistem;
  end;

implementation

{ TSistem }

constructor TSistem.Create;
begin
  SetupClass;
  SetupLicence;
end;

destructor TSistem.Destroy;
begin
  Self.Free;
  inherited;
end;

class function TSistem.GetInstance: TSistem;
begin
  if not Assigned(Self.FInstante) then
  begin
    Self.FInstante := TSistem.Create();
  end;
  Result := Self.FInstante;
end;

function TSistem.LoadSkinsINI: TStringList;
var
  sSkinIni : String;
  lLista: TStringList;
  iIndex : Integer;
  sSkin: String;
begin
  sSkinINI := ExtractFilePath(Application.ExeName) + '\skins.ini';
  if not FileExists(sSkinINI) then Exit;
  iIndex := 0;
  lLista := TStringlist.Create();
  sSkin := 'NONE';
  while not sSKin.IsEmpty do
  begin
    sSkin := Common.Utils.TUtils.LeIni(sSkinINI,'Skin',iIndex.ToString);
    if not sSkin.IsEmpty then
    begin
      lLista.Add(sSkin);
    end;
    iIndex := iIndex + 1;
  end;
  Result := lLista;
end;

procedure TSistem.SaveAuth;
begin
  LocalCache.LoadDatabase('.env');
  LocalCache.Instance('section').SetItem('lastUserId', FCurrentUserId);
  LocalCache.Instance('section').SetItem('lastUserLogin', FCurrentUserLogin);
  LocalCache.Instance('section').SetItem('lastUserName', FCurrentUserName);
  LocalCache.SaveToStorage('.env');
end;

function TSistem.SaveSkin: boolean;
begin
  Result := False;
  LocalCache.LoadDatabase('.env');
  LocalCache.Instance('section').SetItem('skin', FSkin);
  LocalCache.SaveToStorage('.env');
  Result := True;
end;

procedure TSistem.SetupAuth;
begin
  if FileExists('.env') then
  begin
    LocalCache.LoadDatabase('.env');
    FCurrentUserId := LocalCache.Instance('section').GetItem('lastUserId');
    FCurrentUserLogin := LocalCache.Instance('section').GetItem('lastUserLogin');
    FCurrentUserName := LocalCache.Instance('section').GetItem('lastUserName');
    FSkin := LocalCache.Instance('section').GetItem('skin');
  end
  else
  begin
    FCurrentUserId := 'user';
    FCurrentUserLogin := 'user.name';
    FCurrentUserName := 'User Name';
    FSkin := '30';
  end;
end;

procedure TSistem.SetupClass;
var
  LVersao: IC4DVersionInfo;
begin
  FStart := False;
  LVersao := TC4DVersion.Info;
  FVersion := LVersao.VersionLong;
  FCompanyName := LVersao.CompanyName;
  FProductName := LVersao.ProductName;
  FCopyright := LVersao.LegalCopyright;
  FOriginalfilename := LVersao.OriginalFilename;
  if FileExists('.env') then
  begin
    LocalCache.LoadDatabase('.env');
    FDriverId := LocalCache.Instance('database').GetItem('driverid');
    FHostname := LocalCache.Instance('database').GetItem('hostname');
    FDatabase := LocalCache.Instance('database').GetItem('database');
    FPort := LocalCache.Instance('database').GetItem('port');
    FUsername := LocalCache.Instance('database').GetItem('username');
    FPassword := LocalCache.Instance('database').GetItem('password');
    FStart := True;
  end;
end;

procedure TSistem.SetupLicence;
begin
    if FileExists('.licence') then
  begin
    LocalCache.LoadDatabase('.licence');
    FAliasLicence := LocalCache.Instance('licence').GetItem('alias');
    FNameLicence := LocalCache.Instance('licence').GetItem('name');
    FDocLicence := LocalCache.Instance('licence').GetItem('numdoc');
    FValidadeLicence := LocalCache.Instance('token').GetItem('validate');
  end
  else
  begin
    FAliasLicence := 'MaMutti Sistemas';
    FNameLicence := 'MaMutti Informatica';
    FDocLicence := '0';
    FValidadeLicence := '2030/12/31';
  end;
end;

end.
