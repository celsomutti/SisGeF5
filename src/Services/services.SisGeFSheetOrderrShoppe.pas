unit services.SisGeFSheetOrderrShoppe;

interface

  uses Generics.Collections, System.Classes, System.SysUtils, Excel4Delphi;

  type
    TSheetOrders = class
      protected
      private
        FPedido: string;
        FRotaLH: string;
        FHoraEntrega: string;
        FNumeroTO: string;
        FDestino: string;
        FOrigem: string;
        FFileName: string;
      public
        property HoraEntrega: string read FHoraEntrega write FHoraEntrega;
        property Pedido: string read FPedido write FPedido;
        property Origem: string read FOrigem write FOrigem;
        property Destino: string read FDestino write FDestino;
        property NumeroTO: string read FNumeroTO write FNumeroTO;
        property RotaLH: string read FRotaLH write FRotaLH;

        property FileName: string read FFileName write FFileName;
    end;
implementation

end.
