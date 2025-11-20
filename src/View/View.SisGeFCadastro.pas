unit View.SisGeFCadastro;

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
  cxGridDBBandedTableView, cxCheckBox, cxFilterControl, cxDBFilterControl, Vcl.FileCtrl, cxCalendar, Common.Utils,
  FireDAC.Stan.Async, FireDAC.DApt, Control.Cadastro, System.DateUtils, Common.ENum;

type
  TviewCadastro = class(TForm)
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
    memTableDocumentscod_cadastro: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    memTableDocumentsnum_cnh: TStringField;
    memTableDocumentsnum_registro_cnh: TStringField;
    memTableDocumentsdes_categoria_cnh: TStringField;
    memTableDocumentsdat_validade_cnh: TDateField;
    memTableDocumentscod_cnh: TStringField;
    memTableDocumentsdes_placa: TStringField;
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
    memtableGRcod_cadastro: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    DateField1: TDateField;
    StringField8: TStringField;
    StringField9: TStringField;
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
    memTableDocumentsano_exercicio_clrv: TIntegerField;
    memTableGRano_exercicio_clrv: TIntegerField;
    queryRegister: TFDQuery;
    queryRegistercod_cadastro: TIntegerField;
    queryRegisterdes_razao_social: TStringField;
    queryRegisternom_fantasia: TStringField;
    queryRegisternum_cnpj: TStringField;
    queryRegisternum_ie: TStringField;
    queryRegisternom_favorecido: TStringField;
    queryRegisternum_cpf_cnpj_favorecido: TStringField;
    queryRegisternom_razao_mei: TStringField;
    queryRegisternom_fantasia_mei: TStringField;
    queryRegisternum_cnpj_mei: TStringField;
    queryRegisterdes_placa: TStringField;
    queryRegisterdes_modelo: TStringField;
    queryRegisternum_renavan: TStringField;
    queryRegisterano_exercicio_clrv: TFMTBCDField;
    queryRegisterdes_forma_pagamento: TStringField;
    queryRegisterdes_tipo_conta: TStringField;
    queryRegistercod_banco: TStringField;
    queryRegisternom_banco: TStringField;
    queryRegistercod_agencia: TStringField;
    queryRegisternum_conta: TStringField;
    queryRegisternum_cnh: TStringField;
    queryRegisternum_registro_cnh: TStringField;
    queryRegisterdes_categoria: TStringField;
    queryRegisterdat_validade_cnh: TDateField;
    queryRegistercod_cnh: TStringField;
    queryRegisterdat_gv: TDateField;
    queryRegistercod_status: TIntegerField;
    memTableRecordsdata_validade_cnh: TDateField;
    memTableRecordsdat_gv: TDateField;
    viewCadastrodata_validade_cnh: TcxGridDBColumn;
    viewCadastrodat_gv: TcxGridDBColumn;
    memTableRecordsnum_cnh: TStringField;
    memTableRecordsnum_registro_cnh: TStringField;
    memTableRecordsdes_categoria_cnh: TStringField;
    viewCadastronum_cnh: TcxGridDBColumn;
    viewCadastronum_registro_cnh: TcxGridDBColumn;
    viewCadastrodes_categoria_cnh: TcxGridDBColumn;
    actionClearSearch: TAction;
    cxButton8: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    queryRegisternom_base: TStringField;
    queryRegistercod_entregador: TIntegerField;
    queryRegisternom_entregador: TStringField;
    memTableRecordsnom_base: TStringField;
    memTableRecordscod_entregador: TIntegerField;
    memTableRecordsnom_entregador: TStringField;
    memTableDocumentsnom_base: TStringField;
    memTableDocumentscod_entregador: TIntegerField;
    memTableDocumentsnom_entregador: TStringField;
    memTableGRnom_base: TStringField;
    memTableGRcod_entregador: TIntegerField;
    memTableGRnom_entregador: TStringField;
    viewCadastronom_base: TcxGridDBColumn;
    viewCadastrocod_entregador: TcxGridDBColumn;
    viewCadastronom_entregador: TcxGridDBColumn;
    viewDocumentosnom_base: TcxGridDBColumn;
    viewDocumentoscod_entregador: TcxGridDBColumn;
    viewDocumentosnom_entregador: TcxGridDBColumn;
    viewGRnom_base: TcxGridDBColumn;
    viewGRcod_entregador: TcxGridDBColumn;
    viewGRnom_entregador: TcxGridDBColumn;
    dxLayoutGroup7: TdxLayoutGroup;
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
    procedure actionLocateRecordExecute(Sender: TObject);
    procedure actionExpandGridExecute(Sender: TObject);
    procedure actionRetractGridExecute(Sender: TObject);
    procedure actionGroupPanelExecute(Sender: TObject);
    procedure actionClearSearchExecute(Sender: TObject);
    procedure actionNewRegisterExecute(Sender: TObject);
    procedure actionEditRegisterExecute(Sender: TObject);
    procedure viewCadastroDblClick(Sender: TObject);
    procedure viewDocumentosDblClick(Sender: TObject);
    procedure viewGRDblClick(Sender: TObject);
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
    procedure LocateRegister(sFilterAux: String);
    procedure ExpandGrid;
    procedure CollapseGrid;
    procedure PanelGroup;
    procedure SaveFilter;
    procedure LoadFilter;
    procedure ClearSearch;
    procedure NewRegister;
    procedure EditRegister;
  public
    { Public declarations }
  end;

var
  viewCadastro: TviewCadastro;
  FSearch: integer;

implementation

{$R *.dfm}

uses Data.SisGeF, View.SisGeFContractedDetail, View.SisGeFRegisterContractors;

 { Tview_SisGeFRegisterContractors }

procedure TviewCadastro.actionApplyFilterExecute(Sender: TObject);
begin
  ApplyFilter;
end;

procedure TviewCadastro.actionCancelFilterExecute(Sender: TObject);
begin
  CancelFilter;
end;

procedure TviewCadastro.actionClearSearchExecute(Sender: TObject);
begin
  ClearSearch;
end;

procedure TviewCadastro.actionCloseFormExecute(Sender: TObject);
begin
  Close;
end;

procedure TviewCadastro.actionDocumentsToExpireExecute(Sender: TObject);
begin
  SearchDocuments;
end;

procedure TviewCadastro.actionEditRegisterExecute(Sender: TObject);
begin
  EditRegister;
end;

procedure TviewCadastro.actionExpandGridExecute(Sender: TObject);
begin
  ExpandGrid;
end;

procedure TviewCadastro.actionExportGridExecute(Sender: TObject);
begin
  ExportGrid;
end;

procedure TviewCadastro.actionGroupPanelExecute(Sender: TObject);
begin
  PanelGroup;
end;

procedure TviewCadastro.actionLocateRecordExecute(Sender: TObject);
begin
  LocateRegister('');
end;

procedure TviewCadastro.actionNewRegisterExecute(Sender: TObject);
begin
  NewRegister;
end;

procedure TviewCadastro.actionRetractGridExecute(Sender: TObject);
begin
  CollapseGrid;
end;

procedure TviewCadastro.actionReturnGridExecute(Sender: TObject);
begin
  dxLayoutGroup1.ItemIndex := 0;
  FSearch := 0;
end;

procedure TviewCadastro.actionRiskManagementExecute(Sender: TObject);
begin
  SearchGR;
end;

procedure TviewCadastro.actionSearchRecordsExecute(Sender: TObject);
begin
  SearchRecords;
end;

procedure TviewCadastro.actionSetFilterExecute(Sender: TObject);
begin
  SetFilter;
 end;

procedure TviewCadastro.ApplyFilter;
var
  FFilter, FSQLOld: String;
begin
  try
    queryRegister.Active := False;
    FFilter := filterControl.FilterText;
    if FFilter.IsEmpty then
      Exit;
    FSQLOld := queryRegister.SQL.Text;
    queryRegister.SQL.Text := FSQLOld + ' where ' + FFilter;
    queryRegister.Active := True;
    if not queryRegister.IsEmpty then
    begin
      memTableRecords.Active := False;
      memTableRecords.Active := True;
      memTableRecords.CopyDataSet(queryRegister);
      dxLayoutGroup1.ItemIndex := 0;
      viewCadastro.ViewData.Expand(True);
      viewCadastro.DataController.DataSource.DataSet.First;
      gridCadastro.SetFocus;
    end
    else
    begin
      MessageDlg('Nenhum registro encontrado!', mtInformation, [mbOK], 0);
    end;
  finally
    Data_Sisgef.FDConnectionMySQL.Connected := False;
    queryRegister.SQL.Text := FSQLOld;
  end;
end;

procedure TviewCadastro.CancelFilter;
begin
  if not filterControl.FilterText.IsEmpty then
  begin
    Data_Sisgef.FDConnectionMySQL.Connected := False;
    filterControl.Clear;
    memTableRecords.Active := False;
  end;
end;

procedure TviewCadastro.ClearSearch;
begin
  camposPesquisa.ItemIndex := 0;
  parametroPesquisa.Clear;
  memTableRecords.Active := False;
  statusRegistro.Checked := True;
end;

procedure TviewCadastro.CollapseGrid;
begin
  case FSearch of
    0 : viewCadastro.ViewData.Collapse(True);
    1 : viewDocumentos.ViewData.Collapse(True);
    2 : viewGR.ViewData.Collapse(True);
    else
      Exit;
  end;
end;

procedure TviewCadastro.EditRegister;
var
  iID : integer;
begin
  case FSearch of
    0 : iID := memTableRecordscod_cadastro.AsInteger;
    1 : iID := memTableDocumentscod_cadastro.AsInteger;
    2 : iID := memtableGRcod_cadastro.AsInteger;
    else
      iID := 0;
  end;
  if iID = 0 then
    Exit;
  if not Assigned(view_SisGeFContractedDetail) then
  begin
    view_SisGeFContractedDetail := Tview_SisGeFContractedDetail.Create(Application);
  end;
  view_SisGeFContractedDetail.ID := iID;
  view_SisGeFContractedDetail.Acao := tacAlterar;
  view_SisGeFContractedDetail.ShowModal;
  FreeAndNil(view_SisGeFContractedDetail);
end;

procedure TviewCadastro.EndForm;
begin
  memTableRecords.Active := False;
  memTableDocuments.Active := False;
  memTableGR.Active := False;
end;

procedure TviewCadastro.ExpandGrid;
begin
  case FSearch of
    0 : viewCadastro.ViewData.Expand(True);
    1 : viewDocumentos.ViewData.Expand(True);
    2 : viewGR.ViewData.Expand(True);
    else
      Exit;
  end;
end;

procedure TviewCadastro.ExportGrid;
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

procedure TviewCadastro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EndForm;
  Action := caFree;
  viewCadastro := nil;
end;

procedure TviewCadastro.LoadFilter;
begin
  with Data_SisGeF do
  begin
    if OpenDialog.Execute then
    begin
      if not FileExists(OpenDialog.FileName) then
      begin
          MessageDlg('Arquivo ' + OpenDialog.FileName + ' não foi encontrado', mtWarning, [mbCancel], 0);
          Exit;
      end;
      filterControl.LoadFromFile(OpenDialog.FileName);
    end;
  end;
end;

procedure TviewCadastro.LocateRegister(sFilterAux: String);
var
  FCadastro : TCadastroControl;
begin
  try
    FCadastro := TCadastroControl.Create;
    if FCadastro.SearchRegister(camposPesquisa.ItemIndex, parametroPesquisa.Text, sFilterAux, statusRegistro.Checked) then
    begin
      memTableRecords.Active := False;
      memTableRecords.Active := True;
      memTableRecords.CopyDataSet(FCadastro.Cadastro.Query);
      FCadastro.Cadastro.Query.Connection.Connected := False;
      viewCadastro.ViewData.Expand(True);
      viewCadastro.DataController.DataSource.DataSet.First;
      gridCadastro.SetFocus;
    end
    else
    begin
      MessageDlg('Nenhum registro encontrado!', mtWarning, [mbCancel], 0);
    end;
  finally
    FCadastro.DisposeOf;
  end;
end;

procedure TviewCadastro.NewRegister;
begin
  if not Assigned(view_SisGeFContractedDetail) then
  begin
    view_SisGeFContractedDetail := Tview_SisGeFContractedDetail.Create(Application);
  end;
  view_SisGeFContractedDetail.ID := 0;
  view_SisGeFContractedDetail.Acao := tacIncluir;
  view_SisGeFContractedDetail.ShowModal;
  FreeAndNil(view_SisGeFContractedDetail);
end;

procedure TviewCadastro.PanelGroup;
begin
  case FSearch of
    0 : viewCadastro.OptionsView.GroupByBox := (not viewCadastro.OptionsView.GroupByBox);
    1 : viewDocumentos.OptionsView.GroupByBox := (not viewDocumentos.OptionsView.GroupByBox);
    2 : viewGR.OptionsView.GroupByBox := (not viewGR.OptionsView.GroupByBox);
    else
      Exit;
  end;
end;

procedure TviewCadastro.SaveFilter;
begin
  with Data_SisGeF do
  begin
    if SaveDialog.Execute then
    begin
      if FileExists(SaveDialog.FileName) then
      begin
        if MessageDlg('Arquivo ' + SaveDialog.FileName + ' já existe. Sobrepor ?', mtConfirmation, [mbYes,mbNo], 0) = mrNo then
          Exit;
      end;
      filterControl.SaveToFile(SaveDialog.FileName);
    end;
  end;
end;

procedure TviewCadastro.SearchDocuments;
var
  FCadastro: TCadastroControl;
  sFilterAux : String;
begin
  try
    gridCadastroLevel1.GridView := viewDocumentos;
    dxLayoutGroup5.Visible := False;
    FSearch := 1;
    memTableGR.Active := False;
    Data_Sisgef.FDConnectionMySQL.Connected := False;
    FCadastro := TCadastroControl.Create;

    sFilterAux := '(dat_validade_cnh <> ' + QuotedStr('1899-12-30') + ' and ano_exercicio_clrv <> 0) and ' +
    '(dat_validade_cnh <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', IncDay(Now -7))) + ' or ' +
    'ano_exercicio_clrv <= ' + IntToStr(YearOf(IncYear(Now, -1))) + ')';
    if FCadastro.SearchRegister(0, '', sFilterAux, statusRegistro.Checked) then
    begin
      memTableDocuments.Active := False;
      memTableDocuments.Active := True;
      memTableDocuments.CopyDataSet(FCadastro.Cadastro.Query);
      FCadastro.Cadastro.Query.Connection.Connected := False;
      viewDocumentos.ViewData.Expand(True);
      viewDocumentos.DataController.DataSource.DataSet.First;
      gridCadastro.SetFocus;
    end;
  finally
    FCadastro.DisposeOf;
  end;
end;

procedure TviewCadastro.SearchGR;
var
  FCadastro: TCadastroControl;
  sFilterAux : String;
begin
  try
    gridCadastroLevel1.GridView := viewGR;
    dxLayoutGroup5.Visible := False;
    FSearch := 2;
    memTableDocuments.Active := False;
    Data_Sisgef.FDConnectionMySQL.Connected := False;
    FCadastro := TCadastroControl.Create;
    sFilterAux := '(dat_gv > ' + QuotedStr('1899-12-30') + ') and ' +
    '(dat_gv <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', IncDay(Now -7))) + ')';
    if FCadastro.SearchRegister(0, '', sFilterAux, statusRegistro.Checked) then
    begin
      memTableGR.Active := False;
      memTableGR.Active := True;
      memTableGR.CopyDataSet(FCadastro.Cadastro.Query);
      FCadastro.Cadastro.Query.Connection.Connected := False;
      viewGR.ViewData.Expand(True);
      viewGR.DataController.DataSource.DataSet.First;
      gridCadastro.SetFocus;
    end;
  finally
    FCadastro.DisposeOf;
  end;

end;

procedure TviewCadastro.SearchRecords;
begin
  gridCadastroLevel1.GridView := viewCadastro;
  dxLayoutGroup5.Visible := True;
  FSearch := 0;
  memTableGR.Active := False;
  memTableDocuments.Active := False;
  Data_Sisgef.FDConnectionMySQL.Connected := False;
end;

procedure TviewCadastro.SetFilter;
begin
  dxLayoutGroup1.ItemIndex := 1;
  FSearch := 0;
end;

procedure TviewCadastro.StartForm;
begin
  SearchRecords;
end;

procedure TviewCadastro.viewCadastroDblClick(Sender: TObject);
begin
  EditRegister;
end;

procedure TviewCadastro.viewDocumentosDblClick(Sender: TObject);
begin
  EditRegister;
end;

procedure TviewCadastro.viewGRDblClick(Sender: TObject);
begin
  EditRegister;
end;

end.
