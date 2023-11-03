unit Model.SisGeFTiposOcorrenciaJornal;

interface

uses Common.ENum, FireDAC.Comp.Client, DAO.Conexao, System.SysUtils, Common.Utils, System.DateUtils;

type
  TModelSisGeFTiposOcorrenciaJornal = class
    private
      FConnection: TConexao;
      FDescricaoTipoOcorrencia: string;
      FCodigoTipoOcorrencia: integer;
      FAcao: TAcao;
      FQuery: TFDQuery;
    public
      property CodigoTipoOcorrencia: integer read FCodigoTipoOcorrencia write FCodigoTipoOcorrencia;
      property DescricaoTipoOcorrencia: string read FDescricaoTipoOcorrencia write FDescricaoTipoOcorrencia;
      property Query: TFDQuery read FQuery write FQuery;
      property Acao: TAcao read FAcao write FAcao;

      constructor Create;
      function Search(aParam: array of variant): boolean;
  end;

  const
    TABLE = 'jor_tipo_ocorrencia';
    SQLSELECT = 'select COD_TIPO_OCORRENCIA, DES_TIPO_OCORRENCIA from ' + TABLE;

implementation

{ TModelSisGeFTiposOcorrenciaJornal }

constructor TModelSisGeFTiposOcorrenciaJornal.Create;
begin
  FConnection := TConexao.Create;
end;

function TModelSisGeFTiposOcorrenciaJornal.Search(aParam: array of variant): boolean;
begin
  Result := False;
  FQuery := FConnection.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FQuery.SQL.Clear;

  FQuery.SQL.Add(SQLSELECT);
  if aParam[0] = 'ID' then
  begin
    FQuery.SQL.Add('WHERE COD_TIPO_OCORRENCIA = :COD_TIPO_OCORRENCIA');
    FQuery.ParamByName('COD_TIPO_OCORRENCIA').AsInteger := aParam[1];
  end;
  if aParam[0] = 'FILTRO' then
  begin
    FQuery.SQL.Add('where ' + aParam[1]);
  end;
  if aParam[0] = 'LISTA' then
  begin
    FQuery.SQL.Clear;
    FQuery.SQL.Add('select  ' + aParam[1] + ' from ' + TABLE + ' ' + aParam[2]);
  end;
  FQuery.Open();
  if FQuery.IsEmpty then
  begin
    Exit;
  end;
  Result := True;
end;

end.
