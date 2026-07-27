unit services.SisGeFUserAccess;

interface

uses service.SisGeFGeneralSearch, FireDAC.Comp.Client, System.SysUtils;

type
  TUserAcces = class
    private
      FSearch : TSearch;
      FQuery: TFDQuery;
      FMensagem: string;

    public
      constructor Create;

      function ReturnAccess(iUser: integer):boolean ;

      property Query: TFDQuery read FQuery write FQuery;
      property Mensagem: string read FMensagem;
  end;

implementation


{ TUserAcces }

uses Data.SisGeF;

constructor TUserAcces.Create;
begin
  FSearch := TSearch.Create;
end;

function TUserAcces.ReturnAccess(iUser: integer): boolean;
var
  sParam: array of string;
begin
  SetLength(sParam, 3);
  Result := False;
  try
    sParam[0] := 'cod_modulo, cod_menu';
    sParam[1] := 'usuarios_acessos';
    sParam[2] := 'cod_usuario = ' + iUser.ToString;

    if FSearch.ReturnSearch(sParam) then
    begin
      with Data_Sisgef do
      begin
        if mtbUserAccess.Active then mtbUserAccess.Active := False;
        mtbUserAccess.Data := FSearch.Query.Data;
        if mtbUserAccess.IsEmpty then
        begin
          FMensagem := 'Acessos não encontrados';
          Exit;
        end;
      end;
    end
    else
      Exit;
    Result := True;
  finally
    Finalize(sParam);
    FSearch.Query.Active := False;
    FSearch.Query.Connection.Connected := False;
    FSearch.Free;
  end;
end;

end.
