unit View.SisGeFWorksheetBIMERCP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, System.Actions, Vcl.ActnList, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons;

type
  Tview_SisGeFWorksheetBIMERCP = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    cxLabel1: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    gridBIMERDBTableView1: TcxGridDBTableView;
    gridBIMERLevel1: TcxGridLevel;
    gridBIMER: TcxGrid;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    actionListBIMER: TActionList;
    actionExportGrid: TAction;
    actionCloseForm: TAction;
    dsBIMER: TDataSource;
    gridBIMERDBTableView1CampoEmpresa: TcxGridDBColumn;
    gridBIMERDBTableView1CampoCodigoPessoa: TcxGridDBColumn;
    gridBIMERDBTableView1CampoNomeTitulo: TcxGridDBColumn;
    gridBIMERDBTableView1CampoCNPJCPFPessoa: TcxGridDBColumn;
    gridBIMERDBTableView1CampoDtEmissao: TcxGridDBColumn;
    gridBIMERDBTableView1CampoNumeroTitulo: TcxGridDBColumn;
    gridBIMERDBTableView1CampoDtVencimento: TcxGridDBColumn;
    gridBIMERDBTableView1CampoNaturezaLancamento: TcxGridDBColumn;
    gridBIMERDBTableView1CampoFormaPagamento: TcxGridDBColumn;
    gridBIMERDBTableView1CampoValorTitulo: TcxGridDBColumn;
    gridBIMERDBTableView1CampoAgencia: TcxGridDBColumn;
    gridBIMERDBTableView1CampoConta: TcxGridDBColumn;
    gridBIMERDBTableView1CampoBanco: TcxGridDBColumn;
    gridBIMERDBTableView1CampoModalidade: TcxGridDBColumn;
    cxButton1: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    procedure actionCloseFormExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionExportGridExecute(Sender: TObject);
  private
    { Private declarations }
    procedure ExportGrid;
  public
    { Public declarations }
  end;

var
  view_SisGeFWorksheetBIMERCP: Tview_SisGeFWorksheetBIMERCP;

implementation

{$R *.dfm}

uses Data.SisGeF, Common.Utils;

procedure Tview_SisGeFWorksheetBIMERCP.actionCloseFormExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_SisGeFWorksheetBIMERCP.actionExportGridExecute(Sender: TObject);
begin
  ExportGrid;
end;

procedure Tview_SisGeFWorksheetBIMERCP.ExportGrid;
var
  fnUtil : Common.Utils.TUtils;
  sMensagem: String;
begin
  try
    fnUtil := Common.Utils.TUtils.Create;

    if gridBIMERDBTableView1.ViewData.RowCount = 0 then Exit;

    if Data_Sisgef.SaveDialog.Execute() then
    begin
      if FileExists(Data_Sisgef.SaveDialog.FileName) then
      begin
        sMensagem := 'Arquivo ' + Data_Sisgef.SaveDialog.FileName + ' já existe! Sobrepor ?';
        if Application.MessageBox(PChar(sMensagem), 'Sobrepor', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit
      end;

      fnUtil.ExportarDados(gridBIMER, Data_Sisgef.SaveDialog.FileName);

    end;
  finally
    fnUtil.Free;
  end;
end;

procedure Tview_SisGeFWorksheetBIMERCP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Data_Sisgef.memTableBIMERCP.Active := False;
  Action := caFree;
  view_SisGeFWorksheetBIMERCP := nil;
end;

end.
