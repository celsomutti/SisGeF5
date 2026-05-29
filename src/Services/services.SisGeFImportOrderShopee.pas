unit services.SisGeFImportOrderShopee;

interface

  uses Generics.Collections, System.Classes, System.SysUtils, services.SisGeFSheetOrderShoppe, service.connectionMySQL;

  type
    TImportOrderShopee = class
    private
      FFileName: string;
      FMessage: string;
      FCliente: integer;
    public

      function Importar(): boolean;

      property Cliente  : integer read FCliente write FCliente;
      property FileName : string read FFileName write FFileName;
      property Mensagem : string read FMessage write FMessage;
    end;

implementation

{ TImportOrderShopee }

uses Data.SisGeF;

function TImportOrderShopee.Importar: boolean;
var
  sheet : TSheetOrdersShopee;
  FConn : TConnectionMySQL;
  sExt, sDate: string;
  dtDate : TDateTime;
  bFlag: boolean;
  i: integer;
begin
  Result := False;
  sheet := TSheetOrdersShopee.Create;
  FConn := TConnectionMySQL.Create;
  sExt := EmptyStr;
  sDate := EmptyStr;
  bFlag := False;
  try
    sExt := ExtractFileExt(FFileName);
    sheet.FileName := FFileName;
    if sExt = '.xls' then
      bFlag := sheet.GetSheetXLS()
    else if sExt = '.xlsx' then
      bFlag := sheet.GetSheet()
    else if sExt =  '.csv' then
      bFlag := sheet.GetSheetCSV()
    else
      FMessage := 'Erro ao determinar o tipo de arquivo.';
    if not bFlag then
    begin
      Exit;
    end;
    with Data_Sisgef do
    begin
      memPedidosBlink.Active := False;
      memPedidosBlink.Active := True;
      for i := 0 to Pred(sheet.Planilha.Count) do
      begin
        sDate := Copy(sheet.Planilha[i].HoraEntrega,9,2) + '/' +
                 Copy(sheet.Planilha[i].HoraEntrega,6,2) + '/' +
                 Copy(sheet.Planilha[i].HoraEntrega,1,4) + ' ' +
                 Copy(sheet.Planilha[i].HoraEntrega,12,8);
        dtDate := StrToDateTime(sDate);
        memPedidosBlink.Append;
        memPedidosBlinkHoraEntrega.AsDateTime := dtDate;
        memPedidosBlinkPedido.AsString := sheet.Planilha[i].Pedido;
        memPedidosBlinkOrigem.AsString := sheet.Planilha[i].Origem;
        memPedidosBlinkDestino.AsString := sheet.Planilha[i].Destino;
        memPedidosBlinkNumeroTO.AsString := sheet.Planilha[i].NumeroTO;
        memPedidosBlinkRotaLH.AsString := sheet.Planilha[i].RotaLH;
        memPedidosBlinkidCliente.AsInteger := FCliente;
        memPedidosBlink.Post;
      end;
      if memPedidosBlink.IsEmpty then
      begin
        FMessage := 'Nenhum pedido encontrado no arquivo de origem.';
        Exit;
      end;
    end;
    Result := True;
  finally
    Fconn.Free;
    sheet.Free;
  end;
end;

end.
