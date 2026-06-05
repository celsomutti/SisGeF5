unit services.SisGeFImportConfrontations;

interface
  uses Generics.Collections, System.Classes, System.SysUtils, service.connectionMySQL, services.SisGeFSheetConfrontations,
  Controller.SisGeFContratadosRH, System.StrUtils;

  type
    TImportConfontatinsShopee = class
    private
      FFileName: string;
      FMessage: string;
      FCliente: integer;

      function ReturnCodeDriver(sDriver: string): integer;
      function ReturnCodeBase(iDriver: integer): integer;
      function ReturnValue(sValue: string): double;
    public

      function Importar(): boolean;

      property Cliente  : integer read FCliente write FCliente;
      property FileName : string read FFileName write FFileName;
      property Mensagem : string read FMessage write FMessage;
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
      memAcareacoesBlink.Active := False;
      memAcareacoesBlink.Active := True;
      for i := 0 to Pred(sheet.Planilha.Count) do
      begin
        memAcareacoesBlink.Append;
        memAcareacoesBlinkFIdTicket.AsString := sheet.Planilha[i].IdTicket;
        memAcareacoesBlinkFAssignment.AsString := sheet.Planilha[i].Assignment;
        memAcareacoesBlinkFSPXTN.AsString := sheet.Planilha[i].SPXTN;
        iDriver := ReturnCodeDriver(sheet.Planilha[i].Driver);
        memAcareacoesBlinkFDriver.AsInteger := iDriver;
        memAcareacoesBlinkFStation.AsString := sheet.Planilha[i].Station;
        memAcareacoesBlinkFSLA.AsDateTime := StrToDateTimeDef(sheet.Planilha[i].SLA + ':00', Now() + 2);
        memAcareacoesBlinkFAssignee.AsString := 'Assignment Task ID ' + sheet.Planilha[i].Assignment + ', ' + Chr(13) +
                                      'Assignee ' + sheet.Planilha[i].Assignee;
        memAcareacoesBlinkValue.AsFloat := ReturnValue(sheet.Planilha[i].Value);
        memAcareacoesBlinkFRejection.AsString := sheet.Planilha[i].Rejection;
        memAcareacoesBlinkCreatedTime.AsDateTime := StrToDateDef(Copy(sheet.Planilha[i].CreatedTime,1,10), Now());
        memAcareacoesBlinkFStatus.AsString := sheet.Planilha[i].Status;
        memAcareacoesBlinkidBase.AsInteger := ReturnCodeBase(iDriver);
        memAcareacoesBlink.Post;
      end;
      if memAcareacoesBlink.IsEmpty then
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
function TImportConfontatinsShopee.ReturnCodeBase(iDriver: integer): integer;
var
  FCadastro : TContratadosRHController;
  sParam: array of string;
begin
  Result := 0;
  FCadastro := TContratadosRHController.Create;
  SetLength(sParam,2);
  try
    sParam := ['CONTRATADO', iDriver.ToString];
    if FCadastro.Search(sParam) then
    begin
      if FCadastro.FRH.SetupRecords then
        Result := FCadastro.FRH.ARecord.id_departamento;
    end;
  finally
    Finalize(sParam);
    FCadastro.Free;
  end;
end;

function TImportConfontatinsShopee.ReturnCodeDriver(sDriver: string): integer;
var
  sCod : String;
  iPos : integer;
begin
  Result := 0;
  iPos := Pos(']', sDriver);
  sCod := Copy(sDriver,2,iPos - 2);
  Result := StrToIntDef(sCod, 0);
end;

function TImportConfontatinsShopee.ReturnValue(sValue: string): double;
var
  dVal: double;
  sVal: string;
begin
  Result := 0;
  dVal := 0;
  sVal := EmptyStr;
  sVal := ReplaceStr(sValue, '.', ',');
  dVal := StrToFloatDef(sVal,0);
  Result := dVal;
end;

end.
