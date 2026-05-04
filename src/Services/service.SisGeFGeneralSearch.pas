unit service.SisGeFGeneralSearch;

interface

uses service.connectionMySQL, Common.Utils, FireDAC.Comp.Client;

type
  TSearch = class
    private
      FConn : TConnectionMySQL;
      FQuery: TFDQuery;
      FMensagem: string;

    public
      constructor Create;
      destructor Destroy; override;

      function ReturnSearch(aParam: array of string): boolean;

      property Query: TFDQuery read FQuery write FQuery;
      property Mensagem: string read FMensagem;
  end;

implementation

{ TSearch }

constructor TSearch.Create;
begin
  FConn := TConnectionMySQL.Create;
end;

destructor TSearch.Destroy;
begin
  FConn.Free;
  inherited;
end;

function TSearch.ReturnSearch(aParam: array of string): boolean;
begin
  Result := False;
  if Length(aParam) < 3 then
  begin
    FMensagem := 'Quantidade de parâmetros incorreta!';
    Exit
  end;
  FQuery := FConn.GetQuery;
  FQuery.SQL.Clear;
  FQuery.SQL.Add('select !colums from !table {if !where } where !where {fi}');
  FQuery.MacroByName('colums').AsRaw := aParam[0];
  FQuery.MacroByName('table').AsRaw := aParam[1];
  FQuery.MacroByName('where').AsRaw := aParam[2];
  FQuery.Open();
  if FQuery.IsEmpty then
  begin
    FMensagem := 'Nenhum registro encontrado!';
    FQuery.Connection.Close;
    Exit;
  end;
  Result := True;
end;

end.
