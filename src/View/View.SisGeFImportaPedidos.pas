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
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, cxDBNavigator;

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
    dxLayoutGroup3: TdxLayoutGroup;
    cxLabel1: TcxLabel;
    dxLayoutItem4: TdxLayoutItem;
    batchMoveDataSetReader: TFDBatchMoveDataSetReader;
    batchMoveSQLWriter: TFDBatchMoveSQLWriter;
    batchMove: TFDBatchMove;
    dxLayoutGroup4: TdxLayoutGroup;
    cxNavigator1: TcxNavigator;
    procedure actAbrirExecute(Sender: TObject);
    procedure actLimparExecute(Sender: TObject);
    procedure aclSairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aclImportarExecute(Sender: TObject);
    procedure batchMoveProgress(ASender: TObject; APhase: TFDBatchMovePhase);
  private
    procedure AbrirArquivo;
    procedure Importar;
  public
    { Public declarations }
  end;

var
  viewImportaPedidos: TviewImportaPedidos;

implementation

{$R *.dfm}

uses Data.SisGeF;

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

procedure TviewImportaPedidos.batchMoveProgress(ASender: TObject; APhase: TFDBatchMovePhase);
begin
  if APhase = psProgress then
  begin
    cxLabel1.Caption := IntToStr(batchMove.WriteCount);
    Application.ProcessMessages;
  end;
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
begin
  FImport := TImportOrderShopee.Create;
  FConn := TConnectionMySQL.Create;
  try
    if bteArquivo.Text = EmptyStr then
      Exit;
    FImport.FileName := bteArquivo.Text;
    FImport.Cliente := 2;
    if not FImport.Importar() then
    begin
      Application.MessageBox(PChar(FImport.Mensagem), 'Atenção', MB_OK + MB_ICONERROR);
      Exit;
    end;
    Data_Sisgef.memPedidosBlink.First;
    ShowMessage('Estou no primeiro registro, vou começar.');
    batchMoveSQLWriter.Connection := FConn.GetConnection;
    batchMove.Execute;
  finally
    FConn.Free;
    FImport.Free;
  end;
end;

end.
