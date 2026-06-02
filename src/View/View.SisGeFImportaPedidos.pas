unit View.SisGeFImportaPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, services.SisGeFSheetOrderShoppe, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxButtonEdit, System.Actions, Vcl.ActnList, dxLayoutControlAdapters, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, services.SisGeFImportOrderShopee, Vcl.ExtCtrls, cxLabel, FireDAC.Stan.Intf, FireDAC.Comp.BatchMove,
  FireDAC.Comp.BatchMove.SQL, FireDAC.Comp.BatchMove.DataSet, service.connectionMySQL, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, cxDBNavigator,
  FireDac.Comp.Client, FireDAC.Stan.Option, cxProgressBar, cxDBProgressBar, service.SisGeFGeneralSearch;

type
  TviewImportaPedidos = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    bteArquivo: TcxButtonEdit;
    dxLayoutItem1: TdxLayoutItem;
    aclImportacao: TActionList;
    aclImportar: TAction;
    aclSair: TAction;
    cxButton1: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    actAbrir: TAction;
    actLimpar: TAction;
    dxLayoutGroup2: TdxLayoutGroup;
    cxButton2: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    batchMoveDataSetReaderPedidos: TFDBatchMoveDataSetReader;
    batchMovePedidos: TFDBatchMove;
    dxLayoutGroup4: TdxLayoutGroup;
    cxNavigator1: TcxNavigator;
    batchMoveDataSetWriterPedidos: TFDBatchMoveDataSetWriter;
    progressBar: TcxDBProgressBar;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    txtEncontrados: TcxTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    txtProcessados: TcxTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    bteCodigoCliente: TcxButtonEdit;
    dxLayoutItem7: TdxLayoutItem;
    actPesquisarCliente: TAction;
    txtNomeCliente: TcxTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    procedure actAbrirExecute(Sender: TObject);
    procedure actLimparExecute(Sender: TObject);
    procedure aclSairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aclImportarExecute(Sender: TObject);
    procedure batchMovePedidosProgress(ASender: TObject; APhase: TFDBatchMovePhase);
    procedure batchMovePedidosFindDestRecord(ASender: TObject; var AFound: Boolean);
    procedure bteCodigoClientePropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure actPesquisarClienteExecute(Sender: TObject);
    procedure bteCodigoClientePropertiesChange(Sender: TObject);
  private
    FProgress : integer;
    FTotal: double;

    procedure AbrirArquivo;
    procedure Importar;
    procedure LimpaCampos;
    procedure ProcuraCliente;
    procedure ProcuraNomeCliente(iId: integer);
  public
    { Public declarations }
  end;

var
  viewImportaPedidos: TviewImportaPedidos;

implementation

{$R *.dfm}

uses Data.SisGeF, View.SisGeFGeneralsSearch;

{ TviewImportaPedidos }

procedure TviewImportaPedidos.AbrirArquivo;
begin
  with Data_Sisgef do
  begin
    openDialog.Title := 'Abrir planilha de pedidos';
    openDialog.Filter := 'CSV (separados por vírgulas)(*.csv)|*.csv|Pasta deTrabalho do Excel (*.xlsx)|*.xlsx|' +
                         'Pasta de Trabalho do Excel 97-2003 (*.xls)|*.xls';
    if openDialog.Execute() then
      bteArquivo.Text := openDialog.FileName;
  end;
end;

procedure TviewImportaPedidos.aclImportarExecute(Sender: TObject);
begin
  Importar;
end;

procedure TviewImportaPedidos.aclSairExecute(Sender: TObject);
begin
  Close;
end;

procedure TviewImportaPedidos.actAbrirExecute(Sender: TObject);
begin
  AbrirArquivo;
end;

procedure TviewImportaPedidos.actLimparExecute(Sender: TObject);
begin
  bteArquivo.Clear;
end;

procedure TviewImportaPedidos.actPesquisarClienteExecute(Sender: TObject);
begin
  ProcuraCliente;
end;

procedure TviewImportaPedidos.batchMovePedidosFindDestRecord(ASender: TObject; var AFound: Boolean);
var
  sCampos: string;
  vKeys : array of variant;
begin
  SetLength(vKeys,2);
  vKeys[0] := batchMoveDataSetReaderPedidos.DataSet.FieldByName('Pedido').Value;
  vKeys[1] := batchMoveDataSetReaderPedidos.DataSet.FieldByName('idCliente').Value;
  AFound := batchMoveDataSetWriterPedidos.DataSet.Locate('NUM_NOSSONUMERO;COD_CLIENTE_EMPRESA', vKeys, []);
  Finalize(vKeys);
end;

procedure TviewImportaPedidos.batchMovePedidosProgress(ASender: TObject; APhase: TFDBatchMovePhase);
begin
  if APhase = psProgress then
  begin
    txtProcessados.Text := IntToStr(batchMovePedidos.WriteCount);
    FProgress := Trunc((batchMovePedidos.WriteCount / FTotal) * 100);
    progressBar.Position := FProgress;
    Application.ProcessMessages;
  end;
end;

procedure TviewImportaPedidos.bteCodigoClientePropertiesChange(Sender: TObject);
begin
  txtNomeCliente.Clear;
end;

procedure TviewImportaPedidos.bteCodigoClientePropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  if DisplayValue = EmptyStr then
    DisplayValue := 0;
  ProcuraNomeCliente(DisplayValue);
end;

procedure TviewImportaPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  viewImportaPedidos := nil;
end;

procedure TviewImportaPedidos.Importar;
var
  FImport : TImportOrderShopee;
  FConn : TConnectionMySQL;
  FQuery : TFDQuery;
begin
  FImport := TImportOrderShopee.Create;
  FConn := TConnectionMySQL.Create;
  FQuery := FConn.GetQuery;
  try
    if bteArquivo.Text = EmptyStr then
      Exit;
    if (bteCodigoCliente.Text = EmptyStr) or (bteCodigoCliente.EditValue = 0) then
    begin
      Application.MessageBox('Informe o cliente', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    FImport.FileName := bteArquivo.Text;
    FImport.Cliente := bteCodigoCliente.EditValue;
    if not FImport.Importar() then
    begin
      Application.MessageBox(PChar(FImport.Mensagem), 'Atenção', MB_OK + MB_ICONERROR);
      Exit;
    end;
    FTotal := Data_Sisgef.memPedidosBlink.RecordCount;
    txtEncontrados.Text := FloatToStr(FTotal);
    Application.ProcessMessages;
    if Application.MessageBox('Confirma a importação?', 'Importar', MB_YESNO + MB_ICONQUESTION) = mrNo then
      Exit;
    Data_Sisgef.memPedidosBlink.First;
    FQuery.SQL.Text := 'select * from tbentregas';
    batchMoveDataSetWriterPedidos.DataSet := FQuery;
    batchMovePedidos.Mode := dmAppendUpdate;
    batchMovePedidos.Execute;
    Application.MessageBox('Importação concluída.', 'Importação', MB_OK + MB_ICONINFORMATION);
    LimpaCampos;
  finally
    Data_Sisgef.memPedidosBlink.Active := False;
    FQuery.Connection.Connected := False;
    FQuery.Free;
    FConn.Free;
    FImport.Free;
  end;
end;

procedure TviewImportaPedidos.LimpaCampos;
begin
  bteArquivo.Clear;
  progressBar.Position := 0;
  txtEncontrados.Clear;
  txtProcessados.Clear;
end;

procedure TviewImportaPedidos.ProcuraCliente;
begin
  if not Assigned(viewGeneralSearch) then
    viewGeneralSearch := TviewGeneralSearch.Create(Application);
  viewGeneralSearch.Campos := 'cod_Cliente as "Código", nom_fantasia as "Nome Fantasia"';
  viewGeneralSearch.Tabela := 'crm_clientes';
  viewGeneralSearch.Criterio := 'TRUE';
  if viewGeneralSearch.ShowModal = mrOk then
  begin
    bteCodigoCliente.EditValue := viewGeneralSearch.mtbPesquisa.Fields[0].Value;
    txtNomeCliente.Text := viewGeneralSearch.mtbPesquisa.Fields[1].Value;
  end;
  FreeAndNil(viewGeneralSearch);
end;

procedure TviewImportaPedidos.ProcuraNomeCliente(iId: integer);
var
  FSearch: TSearch;
  aParam: array of string;
begin
  FSearch := TSearch.Create;
  SetLength(aParam, 3);
  try
    aParam := ['nom_fantasia', 'crm_clientes', 'cod_cliente = ' + iId.ToString];
    if not FSearch.ReturnSearch(aParam) then
    begin
      Application.MessageBox(PChar(FSearch.Mensagem), 'Atenção', MB_OK + MB_ICONWARNING);
      bteCodigoCliente.SetFocus;
      Exit;
    end;
    txtNomeCliente.Text := FSearch.Query.Fields[0].Value;
  finally
    Finalize(aParam);
    FSearch.Free;
  end;
end;

end.
