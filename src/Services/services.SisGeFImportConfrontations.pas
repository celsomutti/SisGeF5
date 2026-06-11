unit services.SisGeFImportConfrontations;

interface
  uses Generics.Collections, System.Classes, System.SysUtils, service.connectionMySQL, services.SisGeFSheetConfrontations,
       Controller.SisGeFContratadosRH, System.StrUtils, FireDAC.Comp.Client;

  type
    TImportConfontatinsShopee = class
    private
      FFileName: string;
      FMessage: string;
      FCliente: integer;
      FTable: TFDMemtable;
      FToTable: boolean;

    public

      function Importar(): boolean;

      property Cliente  : integer read FCliente write FCliente;
      property FileName : string read FFileName write FFileName;
      property Mensagem : string read FMessage write FMessage;
      property Table    : TFDMemtable read FTable write FTable;
      property ToTable  : boolean read FToTable write FToTable;

    end;

implementation

{ TImportConfontatinsShopee }

uses Data.SisGeF;

function TImportConfontatinsShopee.Importar: boolean;
var
  sheet : TSheetConfrontations;
  FConn : TConnectionMySQL;
  sExt, sDate: string;
  bFlag: boolean;
  i, iDriver: integer;
begin
  Result := False;
  sheet := TSheetConfrontations.Create;
  FConn := TConnectionMySQL.Create;
  sExt := EmptyStr;
  sDate := EmptyStr;
  bFlag := False;
  sheet.Cliente := FCliente;
  sheet.ToTable := FToTable;
  sheet.Table := FTable;
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
    if not FToTable then
    begin
      with Data_Sisgef do
      begin
        memAcareacoesBlink.Active := False;
        memAcareacoesBlink.Active := True;
        for i := 0 to Pred(sheet.Planilha.Count) do
        begin
          memAcareacoesBlink.Append;
          memAcareacoesBlinkFIdTicket.AsString := sheet.Planilha[i].IdTicket;
          memAcareacoesBlinkFAssignment.AsString := sheet.Planilha[i].Assignment;
          memAcareacoesBlinkFSPXTN.AsString := sheet.Planilha[i].SPXTN;
          iDriver := sheet.ReturnCodeDriver(sheet.Planilha[i].Driver);
          memAcareacoesBlinkFDriver.AsInteger := iDriver;
          memAcareacoesBlinkFStation.AsString := sheet.Planilha[i].Station;
          memAcareacoesBlinkFSLA.AsDateTime := StrToDateTimeDef(sheet.Planilha[i].SLA + ':00', Now() + 2);
          memAcareacoesBlinkFAssignee.AsString := 'Assignment Task ID ' + sheet.Planilha[i].Assignment + ', ' + Chr(13) +
                                        'Assignee ' + sheet.Planilha[i].Assignee;
          memAcareacoesBlinkValue.AsFloat := sheet.ReturnValue(sheet.Planilha[i].Value);
          memAcareacoesBlinkFRejection.AsString := sheet.Planilha[i].Rejection;
          memAcareacoesBlinkCreatedTime.AsDateTime := StrToDateDef(Copy(sheet.Planilha[i].CreatedTime,1,10), Now());
          memAcareacoesBlinkFStatus.AsString := sheet.Planilha[i].Status;
          memAcareacoesBlinkidCliente.AsInteger := FCliente;
          memAcareacoesBlinkidBase.AsInteger := sheet.ReturnCodeBase(iDriver);
          memAcareacoesBlink.Post;
        end;
        if memAcareacoesBlink.IsEmpty then
        begin
          FMessage := 'Nenhum pedido encontrado no arquivo de origem.';
          Exit;
        end;
      end;
    end;
    Result := True;
  finally
    Fconn.Free;
    sheet.Free;
  end;
end;

end.
