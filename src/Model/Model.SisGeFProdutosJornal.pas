unit Model.SisGeFProdutosJornal;

interface

uses Common.ENum, FireDAC.Comp.Client, DAO.Conexao, System.SysUtils, Common.Utils, System.DateUtils;

type TModelSisGeFProdutosJornal = class
  private
    FDescricaoProduto: string;
    FCodigoProduto: string;
    FDomDiario: string;
    FLog: string;
    FAcao: TAcao;
    FQuery: TFDQuery;
    FConnection: TConexao;
  public
    property CodigoProduto: string read FCodigoProduto write FCodigoProduto;
    property DescricaoProduto: string read FDescricaoProduto write FDescricaoProduto;
    property DomDiario: string read FDomDiario write FDomDiario;
    property Log: string read FLog write FLog;
    property Query: TFDQuery read FQuery write FQuery;
    property Acao: TAcao read FAcao write FAcao;

    constructor Create;
    function Search(aParam: array of variant): boolean;

end;

const
  TABLE = 'jor_produtos';
  SQLSELECT = 'SELECT COD_PRODUTO, DES_PRODUTO, DOM_DIARIO, DES_LOG FROM ' + TABLE;

implementation

{ TModelSisGeFProdutosJornal }

constructor TModelSisGeFProdutosJornal.Create;
begin
  FConnection := TConexao.Create;
end;

function TModelSisGeFProdutosJornal.Search(aParam: array of variant): boolean;
begin
  Result := False;
  FQuery := FConnection.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FQuery.SQL.Clear;

  FQuery.SQL.Add(SQLSELECT);
  if aParam[0] = 'ID' then
  begin
    FQuery.SQL.Add('WHERE COD_PRODUTO = :COD_PRODUTO');
    FQuery.ParamByName('COD_PRODUTO').AsString := aParam[1];
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
