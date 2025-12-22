unit View.SisGeFCadastroContratados;

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
  FireDAC.Stan.Async, FireDAC.DApt, System.DateUtils, Common.ENum, FireDAC.Stan.StorageBin, Controller.SisGeFCadastroContratados,
  Controller.SisGeFContratadosContatos, Controller.SisGeFContratadosEnderecos, Controller.SisGeFContratadosCNAE,
  Controller.SisGeFContratadosFinanceiro, Controller.SisGeFContratadosRepresentantes, Controller.SisGeFContratadosRH;

type
  TviewSisGefCadastroContratados = class(TForm)
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
    dsRecords: TDataSource;
    viewDocumentos: TcxGridDBTableView;
    viewGR: TcxGridDBTableView;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
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
    actionClearSearch: TAction;
    cxButton8: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    viewDocumentosnom_base: TcxGridDBColumn;
    viewDocumentoscod_entregador: TcxGridDBColumn;
    viewDocumentosnom_entregador: TcxGridDBColumn;
    viewGRnom_base: TcxGridDBColumn;
    viewGRcod_entregador: TcxGridDBColumn;
    viewGRnom_entregador: TcxGridDBColumn;
    dxBarLargeButton11: TdxBarLargeButton;
    actionDeleteRegister: TAction;
    memTableRecordsid: TIntegerField;
    memTableRecordscod_erp_contratados: TStringField;
    memTableRecordsid_categoria: TIntegerField;
    memTableRecordscod_pessoa: TIntegerField;
    memTableRecordsdes_tipo_doc: TStringField;
    memTableRecordsnom_razao_social: TStringField;
    memTableRecordsnom_fantasia_alias: TStringField;
    memTableRecordsnum_cpf_cnpj: TStringField;
    memTableRecordsnum_rg_ie: TStringField;
    memTableRecordsdat_emissao_rg: TDateTimeField;
    memTableRecordsnom_emissor_rg: TStringField;
    memTableRecordsuf_emissor_rg: TStringField;
    memTableRecordsdat_nascimento: TDateField;
    memTableRecordsdes_nacionalidade: TStringField;
    memTableRecordsdes_naturalidade: TStringField;
    memTableRecordsuf_naturalidade: TStringField;
    memTableRecordsnom_pai: TStringField;
    memTableRecordsnom_mae: TStringField;
    memTableRecordscod_crt: TIntegerField;
    memTableRecordsnum_cnh: TStringField;
    memTableRecordsnum_registro_cnh: TStringField;
    memTableRecordsdes_categoria_cnh: TStringField;
    memTableRecordsdat_validade_cnh: TDateField;
    memTableRecordsdat_emissao_cnh: TDateField;
    memTableRecordsuf_cnh: TStringField;
    memTableRecordsdat_primeira_cnh: TDateField;
    memTableRecordscod_status: TIntegerField;
    memTableRecordsdat_cadastro: TDateTimeField;
    memTableRecordsdes_obs: TMemoField;
    viewCadastroid: TcxGridDBColumn;
    viewCadastrocod_erp_contratados: TcxGridDBColumn;
    viewCadastroid_categoria: TcxGridDBColumn;
    viewCadastrocod_pessoa: TcxGridDBColumn;
    viewCadastrodes_tipo_doc: TcxGridDBColumn;
    viewCadastronom_razao_social: TcxGridDBColumn;
    viewCadastronom_fantasia_alias: TcxGridDBColumn;
    viewCadastronum_cpf_cnpj: TcxGridDBColumn;
    viewCadastronum_rg_ie: TcxGridDBColumn;
    viewCadastrodat_emissao_rg: TcxGridDBColumn;
    viewCadastronom_emissor_rg: TcxGridDBColumn;
    viewCadastrouf_emissor_rg: TcxGridDBColumn;
    viewCadastrodat_nascimento: TcxGridDBColumn;
    viewCadastrodes_nacionalidade: TcxGridDBColumn;
    viewCadastrodes_naturalidade: TcxGridDBColumn;
    viewCadastrouf_naturalidade: TcxGridDBColumn;
    viewCadastronom_pai: TcxGridDBColumn;
    viewCadastronom_mae: TcxGridDBColumn;
    viewCadastrocod_crt: TcxGridDBColumn;
    viewCadastronum_cnh: TcxGridDBColumn;
    viewCadastronum_registro_cnh: TcxGridDBColumn;
    viewCadastrodes_categoria_cnh: TcxGridDBColumn;
    viewCadastrodat_validade_cnh: TcxGridDBColumn;
    viewCadastrodat_emissao_cnh: TcxGridDBColumn;
    viewCadastrouf_cnh: TcxGridDBColumn;
    viewCadastrodat_primeira_cnh: TcxGridDBColumn;
    viewCadastrocod_status: TcxGridDBColumn;
    viewCadastrodat_cadastro: TcxGridDBColumn;
    viewCadastrodes_obs: TcxGridDBColumn;
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
    procedure actionDeleteRegisterExecute(Sender: TObject);
    procedure camposPesquisaPropertiesChange(Sender: TObject);
    procedure parametroPesquisaPropertiesChange(Sender: TObject);
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
    procedure LocateRegister(iIndex: integer; sFilterAux: String);
    procedure ExpandGrid;
    procedure CollapseGrid;
    procedure PanelGroup;
    procedure SaveFilter;
    procedure LoadFilter;
    procedure ClearSearch;
    procedure NewRegister;
    procedure EditRegister;
    procedure DeleteRegister;
  public
    { Public declarations }
  end;

var
  viewSisGeFCadastroContratados: TviewSisGeFCadastroContratados;
  FSearch: integer;

implementation

{$R *.dfm}

uses Data.SisGeF, View.SisGeFContractedDetail;

 { TviewSisGefCadastroContratados }

procedure TviewSisGefCadastroContratados.actionApplyFilterExecute(Sender: TObject);
begin
  ApplyFilter;
end;

procedure TviewSisGefCadastroContratados.actionCancelFilterExecute(Sender: TObject);
begin
  CancelFilter;
end;

procedure TviewSisGefCadastroContratados.actionClearSearchExecute(Sender: TObject);
begin
  ClearSearch;
end;

procedure TviewSisGefCadastroContratados.actionCloseFormExecute(Sender: TObject);
begin
  Close;
end;

procedure TviewSisGefCadastroContratados.actionDeleteRegisterExecute(Sender: TObject);
begin
  DeleteRegister;
end;

procedure TviewSisGefCadastroContratados.actionDocumentsToExpireExecute(Sender: TObject);
begin
  SearchDocuments;
end;

procedure TviewSisGefCadastroContratados.actionEditRegisterExecute(Sender: TObject);
begin
  EditRegister;
end;

procedure TviewSisGefCadastroContratados.actionExpandGridExecute(Sender: TObject);
begin
  ExpandGrid;
end;

procedure TviewSisGefCadastroContratados.actionExportGridExecute(Sender: TObject);
begin
  ExportGrid;
end;

procedure TviewSisGefCadastroContratados.actionGroupPanelExecute(Sender: TObject);
begin
  PanelGroup;
end;

procedure TviewSisGefCadastroContratados.actionLocateRecordExecute(Sender: TObject);
begin
  LocateRegister(camposPesquisa.ItemIndex, parametroPesquisa.Text);
end;

procedure TviewSisGefCadastroContratados.actionNewRegisterExecute(Sender: TObject);
begin
  NewRegister;
end;

procedure TviewSisGefCadastroContratados.actionRetractGridExecute(Sender: TObject);
begin
  CollapseGrid;
end;

procedure TviewSisGefCadastroContratados.actionReturnGridExecute(Sender: TObject);
begin
  dxLayoutGroup1.ItemIndex := 0;
  FSearch := 0;
end;

procedure TviewSisGefCadastroContratados.actionRiskManagementExecute(Sender: TObject);
begin
  SearchGR;
end;

procedure TviewSisGefCadastroContratados.actionSearchRecordsExecute(Sender: TObject);
begin
  SearchRecords;
end;

procedure TviewSisGefCadastroContratados.actionSetFilterExecute(Sender: TObject);
begin
  SetFilter;
 end;

procedure TviewSisGefCadastroContratados.ApplyFilter;
var
  FFilter: String;
  FCadastro : TCadastroContratadosController;
  aParams : Array of string;
begin
  try
    FCadastro := TCadastroContratadosController.Create;
    FFilter := filterControl.FilterText;
    if FFilter.IsEmpty then
      Exit;
    SetLength(aParams,9);
    aParams[0] := '*';
    aParams[1] := 'VIEW';
    aParams[2] := FFilter;
    if FCadastro.CustomSearch(aParams) then
    begin
      memTableRecords.Active := False;
      memTableRecords.Active := True;
      memTableRecords.CopyDataSet(FCadastro.FContratados.Query);
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
    FCadastro.Free;
  end;
end;

procedure TviewSisGefCadastroContratados.camposPesquisaPropertiesChange(Sender: TObject);
begin
  if camposPesquisa.ItemIndex = 0 then
    parametroPesquisa.Enabled := False
  else
    parametroPesquisa.Enabled := True;
end;

procedure TviewSisGefCadastroContratados.CancelFilter;
begin
  if not filterControl.FilterText.IsEmpty then
  begin
    Data_Sisgef.FDConnectionMySQL.Connected := False;
    filterControl.Clear;
    memTableRecords.Active := False;
  end;
end;

procedure TviewSisGefCadastroContratados.ClearSearch;
begin
  camposPesquisa.ItemIndex := 0;
  parametroPesquisa.Clear;
  memTableRecords.Active := False;
  statusRegistro.Checked := True;
end;

procedure TviewSisGefCadastroContratados.CollapseGrid;
begin
  case FSearch of
    0 : viewCadastro.ViewData.Collapse(True);
    1 : viewDocumentos.ViewData.Collapse(True);
    2 : viewGR.ViewData.Collapse(True);
    else
      Exit;
  end;
end;

procedure TviewSisGefCadastroContratados.DeleteRegister;
var
  FCadastro       : TCadastroContratadosController;
  FEnderecos      : TContratadosEnderecosController;
  FContatos       : TContratadosContatosController;
  FFinanceiro     : TContratadosFinanceiroController;
  FRepresentante  : TContratadosRepresentanteController;
  FRH             : TContratadosRHController;
  FCNAE           : TCadastroContratadosCNAEController;
  iID : integer;
begin
  FCadastro       :=  TCadastroContratadosController.Create;
  FEnderecos      :=  TContratadosEnderecosController.Create;
  FContatos       :=  TContratadosContatosController.Create;
  FFinanceiro     :=  TContratadosFinanceiroController.Create;
  FRepresentante  :=  TContratadosRepresentanteController.Create;
  FRH             :=  TContratadosRHController.Create;
  FCNAE           :=  TCadastroContratadosCNAEController.Create;
  try

    if memTableRecords.IsEmpty then
      Exit;

    if Application.MessageBox('Confirma excluir este registro?', 'Excluir', MB_YESNO + MB_ICONQUESTION) = mrNo then
      Exit;

    iID := memTableRecordsid.AsInteger;

    FCadastro.FContratados.Acao         :=  tacExcluir;
    FEnderecos.FEnderecos.Acao          :=  tacExcluir;
    FContatos.FContatos.Acao            :=  tacExcluir;
    FFinanceiro.FFinanceiro.Acao        :=  tacExcluir;
    FRepresentante.FRepresentante.Acao  :=  tacExcluir;
    FRH.FRH.Acao                        :=  tacExcluir;
    FCNAE.FCNAE.Acao                    :=  tacExcluir;

    FEnderecos.SaveRecord;
    FContatos.SaveRecord;
    FFinanceiro.SaveRecord;
    FRepresentante.SaveRecord;
    FRH.SaveRecord;
    FCNAE.SaveRecord;
    FCadastro.SaveRecord;

  finally
    FCadastro.Free;
    FEnderecos.Free;
    FContatos.Free;
    FFinanceiro.Free;
    FRepresentante.Free;
    FRH.Free;
    FCNAE.Free;

    LocateRegister(camposPesquisa.ItemIndex, parametroPesquisa.Text);

  end;
end;

procedure TviewSisGefCadastroContratados.EditRegister;
var
  iID : integer;
begin
  case FSearch of
    0 : iID := memTableRecordsid.AsInteger;
    1 : iID := 0;
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

procedure TviewSisGefCadastroContratados.EndForm;
begin
  memTableRecords.Active := False;
end;

procedure TviewSisGefCadastroContratados.ExpandGrid;
begin
  case FSearch of
    0 : viewCadastro.ViewData.Expand(True);
    1 : viewDocumentos.ViewData.Expand(True);
    2 : viewGR.ViewData.Expand(True);
    else
      Exit;
  end;
end;

procedure TviewSisGefCadastroContratados.ExportGrid;
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

procedure TviewSisGefCadastroContratados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EndForm;
  Action := caFree;
  viewSisGefCadastroContratados := nil;
end;

procedure TviewSisGefCadastroContratados.LoadFilter;
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

procedure TviewSisGefCadastroContratados.LocateRegister(iIndex: integer; sFilterAux: String);
var
  FCadastro : TCadastroContratadosController;
  aParams   : Array of string;
  FUtil     : TUtils;
begin
  try
    FUtil := TUtils.Create;
    FCadastro := TCadastroContratadosController.Create;
    SetLength(aParams, 2);
    case iIndex of
      0 : aParams[0] := 'ALL';
      1 : aParams[0] := 'ID';
      2 : aParams[0] := 'CNPJ';
      3 : aParams[0] := 'RG';
      4 : aParams[0] := 'NOME';
      5 : aParams[0] := 'ALIAS';
      6 : aParams[0] := 'CNH';
      7 : aParams[0] := 'REGISTRO';
      else
        aParams [0] := 'NONE';
    end;
    if iIndex = 5 then
      sFilterAux := FUtil.DesmontaCPFCNPJ(sFilterAux);
    aParams[1] := sFilterAux;
    if FCadastro.Search(aParams) then
    begin
      memTableRecords.Active := False;
      memTableRecords.Active := True;
      memTableRecords.CopyDataSet(FCadastro.FContratados.Query);
      viewCadastro.ViewData.Expand(True);
      viewCadastro.DataController.DataSource.DataSet.First;
      gridCadastro.SetFocus;
    end
    else
    begin
      MessageDlg('Nenhum registro encontrado!', mtWarning, [mbCancel], 0);
    end;
  finally
    FUtil.Free;
    FCadastro.Free;
  end;
end;

procedure TviewSisGefCadastroContratados.NewRegister;
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

procedure TviewSisGefCadastroContratados.PanelGroup;
begin
  case FSearch of
    0 : viewCadastro.OptionsView.GroupByBox := (not viewCadastro.OptionsView.GroupByBox);
    1 : viewDocumentos.OptionsView.GroupByBox := (not viewDocumentos.OptionsView.GroupByBox);
    2 : viewGR.OptionsView.GroupByBox := (not viewGR.OptionsView.GroupByBox);
    else
      Exit;
  end;
end;

procedure TviewSisGefCadastroContratados.parametroPesquisaPropertiesChange(Sender: TObject);
begin
  if parametroPesquisa.Text = '' then
    actionClearSearch.Enabled := False
  else
    actionClearSearch.Enabled := True;
end;

procedure TviewSisGefCadastroContratados.SaveFilter;
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

procedure TviewSisGefCadastroContratados.SearchDocuments;
//var
//  FCadastro: TCadastroControl;
//  sFilterAux : String;
begin
//  try
//    gridCadastroLevel1.GridView := viewDocumentos;
//    dxLayoutGroup5.Visible := False;
//    FSearch := 1;
//    memTableGR.Active := False;
//    Data_Sisgef.FDConnectionMySQL.Connected := False;
//    FCadastro := TCadastroControl.Create;
//
//    sFilterAux := '(dat_validade_cnh <> ' + QuotedStr('1899-12-30') + ' and ano_exercicio_clrv <> 0) and ' +
//    '(dat_validade_cnh <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', IncDay(Now -7))) + ' or ' +
//    'ano_exercicio_clrv <= ' + IntToStr(YearOf(IncYear(Now, -1))) + ')';
//    if FCadastro.SearchRegister(0, '', sFilterAux, statusRegistro.Checked) then
//    begin
//      memTableDocuments.Active := False;
//      memTableDocuments.Active := True;
//      memTableDocuments.CopyDataSet(FCadastro.Cadastro.Query);
//      FCadastro.Cadastro.Query.Connection.Connected := False;
//      viewDocumentos.ViewData.Expand(True);
//      viewDocumentos.DataController.DataSource.DataSet.First;
//      gridCadastro.SetFocus;
//    end;
//  finally
//    FCadastro.DisposeOf;
//  end;
end;

procedure TviewSisGefCadastroContratados.SearchGR;
// var
//  FCadastro: TCadastroControl;
//  sFilterAux : String;
begin
//  try
//    gridCadastroLevel1.GridView := viewGR;
//    dxLayoutGroup5.Visible := False;
//    FSearch := 2;
//    memTableDocuments.Active := False;
//    Data_Sisgef.FDConnectionMySQL.Connected := False;
//    FCadastro := TCadastroControl.Create;
//    sFilterAux := '(dat_gv > ' + QuotedStr('1899-12-30') + ') and ' +
//    '(dat_gv <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', IncDay(Now -7))) + ')';
//    if FCadastro.SearchRegister(0, '', sFilterAux, statusRegistro.Checked) then
//    begin
//      memTableGR.Active := False;
//      memTableGR.Active := True;
//      memTableGR.CopyDataSet(FCadastro.Cadastro.Query);
//      FCadastro.Cadastro.Query.Connection.Connected := False;
//      viewGR.ViewData.Expand(True);
//      viewGR.DataController.DataSource.DataSet.First;
//      gridCadastro.SetFocus;
//    end;
//  finally
//    FCadastro.DisposeOf;
//  end;

end;

procedure TviewSisGefCadastroContratados.SearchRecords;
begin
  gridCadastroLevel1.GridView := viewCadastro;
  dxLayoutGroup5.Visible := True;
  FSearch := 0;
//  memTableDocuments.Active := False;
//  Data_Sisgef.FDConnectionMySQL.Connected := False;
end;

procedure TviewSisGefCadastroContratados.SetFilter;
begin
  dxLayoutGroup1.ItemIndex := 1;
  FSearch := 0;
end;

procedure TviewSisGefCadastroContratados.StartForm;
begin
  //SearchRecords;
end;

procedure TviewSisGefCadastroContratados.viewCadastroDblClick(Sender: TObject);
begin
  EditRegister;
end;

procedure TviewSisGefCadastroContratados.viewDocumentosDblClick(Sender: TObject);
begin
  EditRegister;
end;

procedure TviewSisGefCadastroContratados.viewGRDblClick(Sender: TObject);
begin
  EditRegister;
end;

end.
