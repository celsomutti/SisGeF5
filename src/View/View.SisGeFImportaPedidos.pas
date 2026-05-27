unit View.SisGeFImportaPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, services.SisGeFSheetOrderShoppe, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxButtonEdit, System.Actions, Vcl.ActnList, dxLayoutControlAdapters, Vcl.Menus,
  Vcl.StdCtrls, cxButtons;

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
    procedure actAbrirExecute(Sender: TObject);
    procedure actLimparExecute(Sender: TObject);
    procedure aclSairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure AbrirArquivo;
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

procedure TviewImportaPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  viewImportaPedidos := nil;
end;

end.
