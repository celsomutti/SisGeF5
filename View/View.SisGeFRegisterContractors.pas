unit View.SisGeFRegisterContractors;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, System.Actions, Vcl.ActnList, dxBar, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxDropDownEdit, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridBandedTableView,
  cxGridDBBandedTableView, cxCheckBox, cxFilterControl, cxDBFilterControl, Vcl.FileCtrl, cxCalendar, Common.Utils;

type
  Tview_SisGeFRegisterContractors = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    actionList: TActionList;
    actionNewRegister: TAction;
    actionEditRegister: TAction;
    actionSetFilter: TAction;
    actionApplyFilter: TAction;
    actionCancelFilter: TAction;
    actionLocateRecord: TAction;
    actionDocumentsToExpire: TAction;
    actionRiskManagement: TAction;
    actionLocation: TAction;
    actionCloseForm: TAction;
    barManager: TdxBarManager;
    barManagerBar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    camposPesquisa: TcxComboBox;
    dxLayoutItem1: TdxLayoutItem;
    parametroPesquisa: TcxTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    Panel1: TPanel;
    dxLayoutItem3: TdxLayoutItem;
    Panel2: TPanel;
    viewCadastro: TcxGridDBTableView;
    gridCadastroLevel1: TcxGridLevel;
    gridCadastro: TcxGrid;
    cxButton2: TcxButton;
    actionExpandGrid: TAction;
    actionRetractGrid: TAction;
    cxButton3: TcxButton;
    actionGroupPanel: TAction;
    cxButton4: TcxButton;
    actionExportGrid: TAction;
    dxBarLargeButton7: TdxBarLargeButton;
    memTableRecords: TFDMemTable;
    memTableRecordscod_cadastro: TIntegerField;
    memTableRecordsnum_cnpj: TStringField;
    memTableRecordsdes_razao_social: TStringField;
    memTableRecordsnom_fantasia: TStringField;
    memTableRecordsnum_ie: TStringField;
    memTableRecordsnom_favorecido: TStringField;
    memTableRecordsnum_cpf_cnpj_favorecido: TStringField;
    memTableRecordsnom_razao_mei: TStringField;
    memTableRecordsnom_fantasia_mei: TStringField;
    memTableRecordsnum_cnpj_mei: TStringField;
    memTableRecordsdes_placa: TStringField;
    memTableRecordsdes_modelo: TStringField;
    memTableRecordsnum_renavan: TStringField;
    dsRecords: TDataSource;
    viewDocumentos: TcxGridDBTableView;
    viewGR: TcxGridDBTableView;
    viewCadastrocod_cadastro: TcxGridDBColumn;
    viewCadastronum_cnpj: TcxGridDBColumn;
    viewCadastrodes_razao_social: TcxGridDBColumn;
    viewCadastronom_fantasia: TcxGridDBColumn;
    viewCadastronum_ie: TcxGridDBColumn;
    viewCadastronom_favorecido: TcxGridDBColumn;
    viewCadastronum_cpf_cnpj_favorecido: TcxGridDBColumn;
    viewCadastronom_razao_mei: TcxGridDBColumn;
    viewCadastronom_fantasia_mei: TcxGridDBColumn;
    viewCadastronum_cnpj_mei: TcxGridDBColumn;
    viewCadastrodes_placa: TcxGridDBColumn;
    viewCadastrodes_modelo: TcxGridDBColumn;
    viewCadastronum_renavan: TcxGridDBColumn;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    memTableDocuments: TFDMemTable;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    memTableDocumentsnum_cnh: TStringField;
    memTableDocumentsnum_registro_cnh: TStringField;
    memTableDocumentsdes_categoria_cnh: TStringField;
    memTableDocumentsdat_validade_cnh: TDateField;
    memTableDocumentscod_cnh: TStringField;
    memTableDocumentsdes_placa: TStringField;
    memTableDocumentsano_exercicio_clrv: TStringField;
    memTableDocumentsnum_renavan: TStringField;
    dsDocuments: TDataSource;
    viewDocumentoscod_cadastro: TcxGridDBColumn;
    viewDocumentosnum_cnpj: TcxGridDBColumn;
    viewDocumentosdes_razao_social: TcxGridDBColumn;
    viewDocumentosnum_cnh: TcxGridDBColumn;
    viewDocumentosnum_registro_cnh: TcxGridDBColumn;
    viewDocumentosdes_categoria_cnh: TcxGridDBColumn;
    viewDocumentosdat_validade_cnh: TcxGridDBColumn;
    viewDocumentoscod_cnh: TcxGridDBColumn;
    viewDocumentosdes_placa: TcxGridDBColumn;
    viewDocumentosano_exercicio_clrv: TcxGridDBColumn;
    viewDocumentosnum_renavan: TcxGridDBColumn;
    memTableGR: TFDMemTable;
    IntegerField2: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    DateField1: TDateField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    memTableGRdat_gv: TDateField;
    dsGR: TDataSource;
    viewGRcod_cadastro: TcxGridDBColumn;
    viewGRdat_gv: TcxGridDBColumn;
    viewGRnum_cnpj: TcxGridDBColumn;
    viewGRdes_razao_social: TcxGridDBColumn;
    viewGRnum_cnh: TcxGridDBColumn;
    viewGRnum_registro_cnh: TcxGridDBColumn;
    viewGRdes_categoria_cnh: TcxGridDBColumn;
    viewGRdat_validade_cnh: TcxGridDBColumn;
    viewGRcod_cnh: TcxGridDBColumn;
    viewGRdes_placa: TcxGridDBColumn;
    viewGRano_exercicio_clrv: TcxGridDBColumn;
    viewGRnum_renavan: TcxGridDBColumn;
    statusRegistro: TcxCheckBox;
    dxLayoutItem5: TdxLayoutItem;
    filterControl: TcxDBFilterControl;
    dxLayoutItem6: TdxLayoutItem;
    memTableRecordsdes_forma_pagamento: TStringField;
    memTableRecordsdes_tipo_conta: TStringField;
    memTableRecordscod_banco: TStringField;
    memTableRecordsnom_banco: TStringField;
    memTableRecordscod_agencia: TStringField;
    memTableRecordsnom_conta: TStringField;
    viewCadastrodes_forma_pagamento: TcxGridDBColumn;
    viewCadastrodes_tipo_conta: TcxGridDBColumn;
    viewCadastrocod_banco: TcxGridDBColumn;
    viewCadastronom_banco: TcxGridDBColumn;
    viewCadastrocod_agencia: TcxGridDBColumn;
    viewCadastronom_conta: TcxGridDBColumn;
    dxBarLargeButton10: TdxBarLargeButton;
    actionSearchRecords: TAction;
    dxLayoutGroup6: TdxLayoutGroup;
    cxButton5: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    actionReturnGrid: TAction;
    actionSaveFilterParam: TAction;
    actionLoadFilterParam: TAction;
    cxButton6: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    cxButton7: TcxButton;
    dxLayoutItem9: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionCloseFormExecute(Sender: TObject);
    procedure actionSetFilterExecute(Sender: TObject);
    procedure actionApplyFilterExecute(Sender: TObject);
    procedure actionCancelFilterExecute(Sender: TObject);
    procedure actionDocumentsToExpireExecute(Sender: TObject);
    procedure actionRiskManagementExecute(Sender: TObject);
    procedure actionSearchRecordsExecute(Sender: TObject);
    procedure actionReturnGridExecute(Sender: TObject);
    procedure actionExportGridExecute(Sender: TObject);
  private
    { Private declarations }
    procedure StartForm;
    procedure EndForm;
    procedure SetFilter;
    procedure ApplyFilter;
    procedure CancelFilter;
    procedure SearchRecords;
    procedure SearchDocuments;
    Procedure SearchGR;
    procedure ExportGrid;
  public
    { Public declarations }
  end;

var
  view_SisGeFRegisterContractors: Tview_SisGeFRegisterContractors;
  FSearch: integer;

implementation

{$R *.dfm}

uses Data.SisGeF;

 { Tview_SisGeFRegisterContractors }

procedure Tview_SisGeFRegisterContractors.actionApplyFilterExecute(Sender: TObject);
begin
  ApplyFilter;
end;

procedure Tview_SisGeFRegisterContractors.actionCancelFilterExecute(Sender: TObject);
begin
  CancelFilter;
end;

procedure Tview_SisGeFRegisterContractors.actionCloseFormExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_SisGeFRegisterContractors.actionDocumentsToExpireExecute(Sender: TObject);
begin
  SearchDocuments;
end;

procedure Tview_SisGeFRegisterContractors.actionExportGridExecute(Sender: TObject);
begin
  ExportGrid;
end;

procedure Tview_SisGeFRegisterContractors.actionReturnGridExecute(Sender: TObject);
begin
  dxLayoutGroup1.ItemIndex := 0;
  FSearch := 0;
end;

procedure Tview_SisGeFRegisterContractors.actionRiskManagementExecute(Sender: TObject);
begin
  SearchGR;
end;

procedure Tview_SisGeFRegisterContractors.actionSearchRecordsExecute(Sender: TObject);
begin
  SearchRecords;
end;

procedure Tview_SisGeFRegisterContractors.actionSetFilterExecute(Sender: TObject);
begin
  SetFilter;
 end;

procedure Tview_SisGeFRegisterContractors.ApplyFilter;
begin
  FSearch := 0;
end;

procedure Tview_SisGeFRegisterContractors.CancelFilter;
begin
  filterControl.Clear;
  memTableRecords.Active := False;
  dxLayoutGroup1.ItemIndex := 0;
  FSearch := 0;
end;

procedure Tview_SisGeFRegisterContractors.EndForm;
begin
  // ok
end;

procedure Tview_SisGeFRegisterContractors.ExportGrid;
var
  fnUtil : Common.Utils.TUtils;
  sMensagem: String;
begin
  try
    fnUtil := Common.Utils.TUtils.Create;

    case FSearch of
      0 : if viewCadastro.ViewData.RowCount = 0 then Exit;
      1 : if viewDocumentos.ViewData.RowCount = 0 then Exit;
      2 : if viewGR.ViewData.RowCount = 0 then Exit;
      else
        Exit;
    end;

    if Data_Sisgef.SaveDialog.Execute() then
    begin
      if FileExists(Data_Sisgef.SaveDialog.FileName) then
      begin
        sMensagem := 'Arquivo ' + Data_Sisgef.SaveDialog.FileName + ' já existe! Sobrepor ?';
        if Application.MessageBox(PChar(sMensagem), 'Sobrepor', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit
      end;

      fnUtil.ExportarDados(gridCadastro,Data_Sisgef.SaveDialog.FileName);

    end;
  finally
    fnUtil.Free;
  end;end;

procedure Tview_SisGeFRegisterContractors.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EndForm;
  Action := caFree;
  view_SisGeFRegisterContractors := nil;
end;

procedure Tview_SisGeFRegisterContractors.SearchDocuments;
begin
  gridCadastroLevel1.GridView := viewDocumentos;
  dxLayoutGroup5.Visible := False;
  FSearch := 1;
end;

procedure Tview_SisGeFRegisterContractors.SearchGR;
begin
  gridCadastroLevel1.GridView := viewGR;
  dxLayoutGroup5.Visible := False;
  FSearch := 2;
end;

procedure Tview_SisGeFRegisterContractors.SearchRecords;
begin
  gridCadastroLevel1.GridView := viewCadastro;
  dxLayoutGroup5.Visible := True;
  FSearch := 0;
end;

procedure Tview_SisGeFRegisterContractors.SetFilter;
begin
  dxLayoutGroup1.ItemIndex := 1;
  FSearch := 0;
end;

procedure Tview_SisGeFRegisterContractors.StartForm;
begin
  SearchRecords;
end;

end.
