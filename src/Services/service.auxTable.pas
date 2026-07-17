unit service.auxTable;

interface

uses service.connectionMySQL, Common.Utils, FireDAC.Comp.Client;

type
  TAuxTable = class
    private
      FConn : TConnectionMySQL;
      FQuery: TFDQuery;
      FMensagem: string;

    public
      constructor Create;
      destructor Destroy; override;

      function PopulateAuxTable(aParam: array of string): boolean;

      property Query: TFDQuery read FQuery write FQuery;
      property Mensagem: string read FMensagem;
  end;

implementation

{ TAuxTable }

uses Data.SisGeF;

constructor TAuxTable.Create;
begin
  FConn := TConnectionMySQL.Create;
end;

destructor TAuxTable.Destroy;
begin
  FConn.Free;
  inherited;
end;

function TAuxTable.PopulateAuxTable(aParam: array of string): boolean;
begin
  Result := False;
  if Length(aParam) < 4 then
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
  if aParam[3] = 'CAT' then
  begin
    with Data_Sisgef do
    begin
      mtbCategoriasRHProv.Active := False;
      mtbCategoriasRHProv.Data := FQuery.Data;
      mtbCategoriasRHProv.Insert;
      mtbCategoriasRHProvid_categoria.AsInteger := 0;
      mtbCategoriasRHProvdes_categoria.AsString := 'TODAS';
      mtbCategoriasRHProv.Post;
    end;
  end;
  if aParam[3] = 'UF' then
  begin
    with Data_Sisgef do
    begin
      mtbEstadosProv.Active := False;
      mtbEstadosProv.Data := FQuery.Data;
    end;
  end;
  FQuery.Active := False;
  FQuery.Connection.Connected := False;
  Result := True;
end;

end.
