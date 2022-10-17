unit Model.SisGeFTiragens;

interface

  uses Common.ENum, FireDAC.Comp.Client, DAO.Conexao, System.SysUtils, Common.Utils, System.DateUtils;

  type
    TModelSisGeFTiragens = class
      private
        FTiragem: integer;
        FProduto: string;
        FRoteiro: string;
        FID: integer;
        FEntregador: integer;
        FData: TDateTime;
        FAcao : TAcao;
        FConnection : TConexao;
        FQuery: TFDQuery;
        FMensagem: string;
        function Insert(): boolean;
        function Update(): boolean;
        function Delete: boolean;
      public
        property ID: integer read FID write FID;
        property Data: TDateTime read FData write FData;
        property Roteiro: string read FRoteiro write FRoteiro;
        property Entregador: integer read FEntregador write FEntregador;
        property Produto: string read FProduto write FProduto;
        property Tiragem: integer read FTiragem write FTiragem;
        property Query: TFDQuery read FQuery write FQuery;
        property Acao: TAcao read FAcao write FAcao;
        property Mensagem: string read FMensagem write FMensagem;

        constructor Create;
        function Search(aParam: array of variant): boolean;
        function Save(): boolean;
        function SetupClass(): boolean;
        function ValidateData(): boolean;
        function GetField(sField: String; sKey: String; sKeyValue: String): String;
        function ReturnExtract(InitialDate, FinalDate: TDate): boolean;
    end;

  const
    TABLENAME = 'periodicos_tiragem';
    SQLSELECT = 'select ID_TIRAGEM, DAT_TIRAGEM, COD_ROTEIRO, COD_ENTREGADOR, COD_PRODUTO, QTD_TIRAGEM from ' +
                TABLENAME;
    SQLINSERT = 'INSERT INTO ' + TABLENAME + ' (DAT_TIRAGEM, COD_ROTEIRO, COD_ENTREGADOR, COD_PRODUTO, QTD_TIRAGEM) ' +
                'VALUES (:DAT_TIRAGEM, :COD_ROTEIRO, :COD_ENTREGADOR, :COD_PRODUTO, :QTD_TIRAGEM);';
    SQLUPDATE = 'UPDATE '  + TABLENAME + ' SET DAT_TIRAGEM = :DAT_TIRAGEM, COD_ROTEIRO = :COD_ROTEIRO, ' +
                'COD_ENTREGADOR = :COD_ENTREGADOR, COD_PRODUTO = :COD_PRODUTO, QTD_TIRAGEM = :QTD_TIRAGEM ' +
                'WHERE ID_TIRAGEM = :ID_TIRAGEM';
    SQLDELETE = 'DELETE FROM ' + TABLENAME + ' WHERE ID_TIRAGEM = :ID_TIRAGEM';

implementation

{ TModelSisGeFTiragens }

constructor TModelSisGeFTiragens.Create;
begin
  FConnection := TConexao.Create;
end;

function TModelSisGeFTiragens.Delete: boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConnection.ReturnQuery();
    FDQuery.ExecSQL(SQLDELETE, [FID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDquery.Free;
  end;
end;

function TModelSisGeFTiragens.GetField(sField, sKey, sKeyValue: String): String;
var
  FDQuery: TFDQuery;
begin
  try
    Result := '';
    FDQuery := FConnection.ReturnQuery();
    if not sKeyValue.IsEmpty then
    begin
      FDQuery.SQL.Text := 'select ' + sField + ' from ' + TABLENAME + ' where ' + sKey + ' = ' + sKeyValue;
      FDQuery.Open();
      if not FDQuery.IsEmpty then Result := FDQuery.FieldByName(sField).AsString;
    end;
  finally
    FDQuery.Free;
  end;
end;

function TModelSisGeFTiragens.Insert: boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConnection.ReturnQuery();
    FDQuery.ExecSQL(SQLINSERT,
                    [FData, FRoteiro, FEntregador, FProduto, FTiragem]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TModelSisGeFTiragens.ReturnExtract(InitialDate, FinalDate: TDate): boolean;
var
  sSQL : String;
begin
  Result:= False;
  if InitialDate = 0 then
  begin
    FMensagem := 'Informe a data inicial!';
    Exit;
  end;
  if FinalDate = 0 then
  begin
    FMensagem := 'Informe a data Final!';
    Exit;
  end;
  if InitialDate > FinalDate then
  begin
    FMensagem := 'A data inicial não pode ser maior que a data final!';
    Exit;
  end;

  FQuery := FConnection.ReturnQuery();
  FQuery.SQL.Add('select cod_macro, nom_macro, qtd_tiragem from view_extrato_periodicos');
  FQuery.SQL.Add('where dat_tiragem between :dat1 and :dat2');
  FQuery.ParamByName('dat1').AsDate := InitialDate;
  FQuery.ParamByName('dat2').AsDate := FinalDate;
  FQuery.Open();
  if FQuery.IsEmpty then
  begin
    FQuery.Active := False;
    FQuery.Connection.Connected := False;
    Exit;
  end;
  Result := True;
end;

function TModelSisGeFTiragens.Save: boolean;
begin
  Result := False;
  if not ValidateData() then
    Exit;
  case FAcao of
    tacIncluir: Result := Insert();
    tacAlterar: Result := Update();
    tacExcluir: Result := Delete();
  else
    Exit;
  end;
end;

function TModelSisGeFTiragens.Search(aParam: array of variant): boolean;
begin
  Result := False;
  FQuery := FConnection.ReturnQuery();
  if Length(aParam) < 2 then Exit;
  FQuery.SQL.Clear;

  FQuery.SQL.Add(SQLSELECT);
  if aParam[0] = 'ID' then
  begin
    FQuery.SQL.Add('WHERE ID_TIRAGEM :ID_TIRAGEM');
    FQuery.ParamByName('ID_TIRAGEM').AsInteger := aParam[1];
  end;
  if aParam[0] = 'PRODUTO' then
  begin
    FQuery.SQL.Add('where COD_PRODUTO = :COD_PRODUTO');
    FQuery.ParamByName('COD_PRODUTO').AsString := aParam[1];
  end;
  if aParam[0] = 'ROTEIRO' then
  begin
    FQuery.SQL.Add('where COD_ROTEIRO = :COD_ROTEIRO');
    FQuery.ParamByName('COD_ROTEIRO').AsString := aParam[1];
  end;
  if aParam[0] = 'ENTREGADOR' then
  begin
    FQuery.SQL.Add('where COD_ENTREGADOR = :COD_ENTREGADOR');
    FQuery.ParamByName('COD_ENTREGADOR').AsInteger := aParam[1];
  end;
  if aParam[0] = 'TIRAGEM' then
  begin
    FQuery.SQL.Add('where DAT_TIRAGEM = :DAT_TIRAGEM AND COD_ROTEIRO = :COD_ROTEIRO');
    FQuery.ParamByName('DAT_TIRAGEM').AsDateTime := aParam[1];
    FQuery.ParamByName('COD_ROTEIRO').AsString := aParam[2];
  end;
  if aParam[0] = 'FILTRO' then
  begin
    FQuery.SQL.Add('where ' + aParam[1]);
  end;
  if aParam[0] = 'APOIO' then
  begin
    FQuery.SQL.Clear;
    FQuery.SQL.Add('select  ' + aParam[1] + ' from ' + TABLENAME + ' ' + aParam[2]);
  end;
  FQuery.Open();
  if FQuery.IsEmpty then
  begin
    Exit;
  end;
  Result := True;
end;

function TModelSisGeFTiragens.SetupClass: boolean;
begin
  Result := False;
  FTiragem := FQuery.FieldByName('QTD_TIRAGEM').AsInteger;
  FProduto := FQuery.FieldByName('COD_PRODUTO').AsString;
  FRoteiro := FQuery.FieldByName('COD_ROTEIRO').AsString;
  FID := FQuery.FieldByName('ID_TIRAGEM').AsInteger;
  FEntregador := FQuery.FieldByName('COD_ENTREGADOR').AsInteger;
  FData := FQuery.FieldByName('DAT_TIRAGEM').AsDateTime;
  Result := True;
end;

function TModelSisGeFTiragens.Update: boolean;
var
  FDQuery: TFDQuery;
begin
  try
    Result := False;
    FDQuery := FConnection.ReturnQuery();
    FDQuery.ExecSQL(SQLUPDATE,
                    [FData, FRoteiro, FEntregador, FProduto, FTiragem, FID]);
    Result := True;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

function TModelSisGeFTiragens.ValidateData: boolean;
begin
  Result := False;
  if FTiragem = 0 then
  begin
    FMensagem := 'Informe a quantidade de tiragem!';
    Exit
  end;
  if FTiragem < 0 then
  begin
    FMensagem := 'Quantidade de tiragem incorreta!';
    Exit
  end;
  if FProduto.IsEmpty then
  begin
    FMensagem := 'Informe o produto!';
    Exit
  end;
  if FRoteiro.IsEmpty then
  begin
    FMensagem := 'Informe o roteiro!';
    Exit
  end;
  if FData = 0 then
  begin
    FMensagem := 'Informe a data da tiragem!';
    Exit
  end;
  Result := True;
end;

end.
