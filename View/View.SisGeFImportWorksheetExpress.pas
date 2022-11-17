unit View.SisGeFImportWorksheetExpress;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, dxLayoutControlAdapters, Vcl.ExtCtrls,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, System.Actions, Vcl.ActnList, cxLabel, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxCustomListBox, cxListBox, dxActivityIndicator, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMemo;

type
  Tview_SisGeFImportWorksheetExpress = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    panelDragandDrop: TPanel;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    labelLocateFile1: TcxLabel;
    dxLayoutItem2: TdxLayoutItem;
    actionList: TActionList;
    actionLocateFile: TAction;
    cxButton1: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    labelLocateFile2: TcxLabel;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    panelBackgroundFileList: TPanel;
    dxLayoutItem5: TdxLayoutItem;
    listBoxFiles: TcxListBox;
    labelTitleFileList: TcxLabel;
    actionDeleteSelectedFiles: TAction;
    actionDeleteAllFiles: TAction;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    activityIndicator: TdxActivityIndicator;
    dxLayoutItem6: TdxLayoutItem;
    actionCloseForm: TAction;
    cxButton4: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    tipoArquivo: TcxComboBox;
    dxLayoutItem8: TdxLayoutItem;
    cliente: TcxLookupComboBox;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    actionImportWorksheet: TAction;
    actionCancelImport: TAction;
    cxButton5: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    cxButton6: TcxButton;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutGroup10: TdxLayoutGroup;
    totalRegistros: TcxMaskEdit;
    dxLayoutItem12: TdxLayoutItem;
    registrosGravados: TcxMaskEdit;
    dxLayoutItem13: TdxLayoutItem;
    registrosIgnorados: TcxMaskEdit;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    log: TcxMemo;
    dxLayoutItem15: TdxLayoutItem;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    Timer: TTimer;
    procedure tipoArquivoPropertiesChange(Sender: TObject);
    procedure clientePropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function LockDockAndDrop(): boolean;
    function ValidateProcess(): boolean;
  public
    { Public declarations }
  end;

var
  view_SisGeFImportWorksheetExpress: Tview_SisGeFImportWorksheetExpress;

implementation

{$R *.dfm}

uses Data.SisGeF;

{ Tview_SisGeFImportWorksheetExpress }

procedure Tview_SisGeFImportWorksheetExpress.clientePropertiesChange(Sender: TObject);
begin
  panelDragandDrop.Enabled := LockDockAndDrop;
  actionLocateFile.Enabled := LockDockAndDrop;
end;

procedure Tview_SisGeFImportWorksheetExpress.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  view_SisGeFImportWorksheetExpress := nil;
end;

function Tview_SisGeFImportWorksheetExpress.LockDockAndDrop: boolean;
begin
  Result := False;
  if (tipoArquivo.ItemIndex <= 0) or (cliente.Text = '') then
    Exit;
  Result := True;
end;

procedure Tview_SisGeFImportWorksheetExpress.tipoArquivoPropertiesChange(Sender: TObject);
begin
  panelDragandDrop.Enabled := LockDockAndDrop;
  actionLocateFile.Enabled := LockDockAndDrop;
end;


function Tview_SisGeFImportWorksheetExpress.ValidateProcess: boolean;
begin
  Result := False;
  // validação geral
    if tipoArquivo.ItemIndex <= 0 then
    begin
      MessageDlg('Informe o tipo de arquivo.', mtWarning, [mbCancel], 0);
      tipoArquivo.SetFocus;
      Exit;
    end;
    if cliente.Text = '' then
    begin
      MessageDlg('Informe Cliente.', mtWarning, [mbCancel], 0);
      cliente.SetFocus;
      Exit;
    end;
    if listBoxFiles.Count = 0 then
    begin
      MessageDlg('Nenhum arquivo selecionado.', mtWarning, [mbCancel], 0);
      cliente.SetFocus;
      Exit;
    end;
  Result := True;
end;

end.
