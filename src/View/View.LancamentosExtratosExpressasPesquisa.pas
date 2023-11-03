unit View.LancamentosExtratosExpressasPesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxCurrencyEdit, cxCheckBox, System.Actions, Vcl.ActnList,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, FireDAC.Stan.StorageBin, Control.Lancamentos;

type
  Tview_LancamentosExtratosExpressasPesquisa = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    labelTitle: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dsLancamnentos: TDataSource;
    gridLancamentosDBTableView1: TcxGridDBTableView;
    gridLancamentosLevel1: TcxGridLevel;
    gridLancamentos: TcxGrid;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    actionListLancamentos: TActionList;
    actionNovoLancamento: TAction;
    actionEditarLancamento: TAction;
    actionExluirLancamento: TAction;
    actionExportarDados: TAction;
    actionPainelGrupo: TAction;
    actionExpandir: TAction;
    actionRetrair: TAction;
    actionRestaurar: TAction;
    actionFecharTela: TAction;
    actionCancelarFiltro: TAction;
    cxButton2: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    cxButton5: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    cxButton6: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    fdLancamentos: TFDQuery;
    fdLancamentosCOD_LANCAMENTO: TIntegerField;
    fdLancamentosDES_LANCAMENTO: TStringField;
    fdLancamentosDAT_LANCAMENTO: TDateField;
    fdLancamentosCOD_CADASTRO: TIntegerField;
    fdLancamentosNOM_CADASTRO: TStringField;
    fdLancamentosCOD_ENTREGADOR: TIntegerField;
    fdLancamentosNOM_ENTREGADOR: TStringField;
    fdLancamentosDES_TIPO: TStringField;
    fdLancamentosVAL_LANCAMENTO: TFloatField;
    fdLancamentosDOM_DESCONTO: TStringField;
    fdLancamentosDAT_DESCONTO: TDateField;
    fdLancamentosNUM_EXTRATO: TStringField;
    fdLancamentosDOM_PERSISTIR: TStringField;
    fdLancamentosCOD_REFERENCIA: TIntegerField;
    fdLancamentosDAT_CADASTRO: TDateTimeField;
    fdLancamentosNOM_USUARIO: TStringField;
    gridLancamentosDBTableView1COD_LANCAMENTO: TcxGridDBColumn;
    gridLancamentosDBTableView1DES_LANCAMENTO: TcxGridDBColumn;
    gridLancamentosDBTableView1DAT_LANCAMENTO: TcxGridDBColumn;
    gridLancamentosDBTableView1COD_CADASTRO: TcxGridDBColumn;
    gridLancamentosDBTableView1NOM_CADASTRO: TcxGridDBColumn;
    gridLancamentosDBTableView1COD_ENTREGADOR: TcxGridDBColumn;
    gridLancamentosDBTableView1NOM_ENTREGADOR: TcxGridDBColumn;
    gridLancamentosDBTableView1DES_TIPO: TcxGridDBColumn;
    gridLancamentosDBTableView1VAL_LANCAMENTO: TcxGridDBColumn;
    gridLancamentosDBTableView1DOM_DESCONTO: TcxGridDBColumn;
    gridLancamentosDBTableView1DAT_DESCONTO: TcxGridDBColumn;
    gridLancamentosDBTableView1NUM_EXTRATO: TcxGridDBColumn;
    gridLancamentosDBTableView1DOM_PERSISTIR: TcxGridDBColumn;
    gridLancamentosDBTableView1COD_REFERENCIA: TcxGridDBColumn;
    gridLancamentosDBTableView1DAT_CADASTRO: TcxGridDBColumn;
    gridLancamentosDBTableView1NOM_USUARIO: TcxGridDBColumn;
    actionSelecionarTudo: TAction;
    actionLimparSeleção: TAction;
    procedure actionFecharTelaExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure fdLancamentosAfterClose(DataSet: TDataSet);
    procedure actionNovoLancamentoExecute(Sender: TObject);
    procedure actionEditarLancamentoExecute(Sender: TObject);
    procedure actionCancelarFiltroExecute(Sender: TObject);
    procedure gridLancamentosDBTableView1NavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure dsLancamnentosStateChange(Sender: TObject);
    procedure gridLancamentosDBTableView1DblClick(Sender: TObject);
    procedure actionExluirLancamentoExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionSelecionarTudoExecute(Sender: TObject);
    procedure actionLimparSeleçãoExecute(Sender: TObject);
  private
    { Private declarations }
    procedure StartForm;
    procedure PopulaLancamentos;
    procedure ExcludeData;
    procedure SetGroup(flag: boolean);
    procedure ExportData;
    procedure SaveLayout;
    procedure RestoreLayout;
    procedure CloseForm;
  public
    { Public declarations }
  end;

var
  view_LancamentosExtratosExpressasPesquisa: Tview_LancamentosExtratosExpressasPesquisa;
  sSQLOld, sFilter, sFileLayout: String;

implementation

{$R *.dfm}

uses Data.SisGeF, View.LancamentosExtratosExpressas, Common.ENum, Common.Utils, Global.Parametros;

procedure Tview_LancamentosExtratosExpressasPesquisa.actionCancelarFiltroExecute(Sender: TObject);
begin
  actionCancelarFiltro.Enabled := False;
  gridLancamentosDBTableView1.Controller.ClearFindFilterText;
end;

procedure Tview_LancamentosExtratosExpressasPesquisa.actionEditarLancamentoExecute(Sender: TObject);
begin
  if not Assigned(view_LancamentosExtratosExpressas) then
  begin
    view_LancamentosExtratosExpressas := Tview_LancamentosExtratosExpressas.Create(Application);
  end;
  view_LancamentosExtratosExpressas.iID := fdLancamentosCOD_LANCAMENTO.AsInteger;
  view_LancamentosExtratosExpressas.FAcao := tacAlterar;
  if view_LancamentosExtratosExpressas.ShowModal = mrOk then
  begin
    PopulaLancamentos;
  end;
  FreeAndNil(view_LancamentosExtratosExpressas);
end;

procedure Tview_LancamentosExtratosExpressasPesquisa.actionExluirLancamentoExecute(Sender: TObject);
begin
  ExcludeData;
end;

procedure Tview_LancamentosExtratosExpressasPesquisa.actionFecharTelaExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_LancamentosExtratosExpressasPesquisa.actionLimparSeleçãoExecute(Sender: TObject);
begin
  gridLancamentosDBTableView1.Controller.ClearSelection;
end;

procedure Tview_LancamentosExtratosExpressasPesquisa.actionNovoLancamentoExecute(Sender: TObject);
begin
  if not Assigned(view_LancamentosExtratosExpressas) then
  begin
    view_LancamentosExtratosExpressas := Tview_LancamentosExtratosExpressas.Create(Application);
  end;
  view_LancamentosExtratosExpressas.iID := 0;
  view_LancamentosExtratosExpressas.Facao := tacIncluir;
  if view_LancamentosExtratosExpressas.ShowModal = mrOk then
  begin
    PopulaLancamentos;
  end;
  FreeAndNil(view_LancamentosExtratosExpressas);
end;

procedure Tview_LancamentosExtratosExpressasPesquisa.actionSelecionarTudoExecute(Sender: TObject);
begin
  gridLancamentosDBTableView1.Controller.SelectAllRecords;
end;

procedure Tview_LancamentosExtratosExpressasPesquisa.CloseForm;
begin
  if FileExists(sFileLayout) then
  begin
    DeleteFile(sFileLayout);
  end;
  fdLancamentos.Active := False;
end;

procedure Tview_LancamentosExtratosExpressasPesquisa.dsLancamnentosStateChange(Sender: TObject);
begin
  if dsLancamnentos.State = dsInactive then
  begin
    actionNovoLancamento.Enabled := True;
    actionEditarLancamento.Enabled := False;
    actionExportarDados.Enabled := False;
    actionExluirLancamento.Enabled := True;
  end
  else if dsLancamnentos.State = dsBrowse then
  begin
    actionNovoLancamento.Enabled := True;
    actionEditarLancamento.Enabled := True;
    actionExportarDados.Enabled := True;
    actionExluirLancamento.Enabled := True;
  end;

end;

procedure Tview_LancamentosExtratosExpressasPesquisa.ExcludeData;
var
  sMensagem: String;
    i, iId, iIndex, iIndex1 : Integer;
    bFlag : Boolean;
begin
  try
    Lancamentos := TLancamentosControl.Create;
    iIndex := gridLancamentosDBTableView1COD_LANCAMENTO.Index;
    iIndex1 := gridLancamentosDBTableView1DOM_DESCONTO.Index;
    bFlag := False;
    if gridLancamentosDBTableView1.Controller.SelectedRowCount > 1 then
      sMensagem := 'Confirma excluir os registros selecionados ?'
    else
      sMensagem := 'Confirma excluir o lançamento ID ' + gridLancamentosDBTableView1.Controller.SelectedRows[0].DisplayTexts[iIndex] + ' ?' ;
    if Application.MessageBox(PChar(sMensagem), 'Excluir', MB_YESNO + MB_ICONQUESTION) = IDNO then
      Exit;
    for i := 0 to Pred(gridLancamentosDBTableView1.Controller.SelectedRecordCount) do
    begin
      if gridLancamentosDBTableView1.Controller.SelectedRows[i].DisplayTexts[iIndex1] = 'True' then
      begin
        sMensagem := 'Lancamento ID ' + gridLancamentosDBTableView1.Controller.SelectedRows[i].DisplayTexts[iIndex] +
                    ' já está processado!. Não pode ser excluído.' ;
        if Application.MessageBox(Pchar(sMensagem), 'Atenção!', MB_OKCANCEL + MB_ICONWARNING) = IDCANCEL then
          Exit;
      end
      else
      begin
        iId := StrToIntDef(gridLancamentosDBTableView1.Controller.SelectedRows[i].DisplayTexts[iIndex],0);
        Lancamentos.Lancamentos.Codigo := iID;
        Lancamentos.Lancamentos.Acao:= tacExcluir;
        if not Lancamentos.Gravar then
        begin
          sMensagem := 'Erro ao tentar excluir o lancamento ID ' +
                       gridLancamentosDBTableView1.Controller.SelectedRows[i].DisplayTexts[iIndex] + ' !' ;
          Application.MessageBox(Pchar(sMensagem), 'Atenção!', MB_OK + MB_ICONWARNING);
        end
        else
          bFlag := True;
      end;
    end;
    if bFlag then
      PopulaLancamentos;
    gridLancamentosDBTableView1.Controller.ClearSelection;
  finally
    Lancamentos.Free;
  end;
end;

procedure Tview_LancamentosExtratosExpressasPesquisa.ExportData;
var
  fnUtil : Common.Utils.TUtils;
  sMensagem: String;
begin
  try
    fnUtil := Common.Utils.TUtils.Create;

    if Data_Sisgef.mtbRoteirosExpressas.IsEmpty then Exit;

    if Data_Sisgef.SaveDialog.Execute() then
    begin
      if FileExists(Data_Sisgef.SaveDialog.FileName) then
      begin
        sMensagem := 'Arquivo ' + Data_Sisgef.SaveDialog.FileName + ' já existe! Sobrepor ?';
        if Application.MessageBox(PChar(sMensagem), 'Sobrepor', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit
      end;

      fnUtil.ExportarDados(gridLancamentos,Data_Sisgef.SaveDialog.FileName);

    end;
  finally
    fnUtil.Free;
  end;
end;

procedure Tview_LancamentosExtratosExpressasPesquisa.fdLancamentosAfterClose(DataSet: TDataSet);
begin
  Data_Sisgef.FDConnectionMySQL.Connected := False;
end;

procedure Tview_LancamentosExtratosExpressasPesquisa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  view_LancamentosExtratosExpressasPesquisa := nil;
end;

procedure Tview_LancamentosExtratosExpressasPesquisa.FormShow(Sender: TObject);
begin
  StartForm;
end;

procedure Tview_LancamentosExtratosExpressasPesquisa.gridLancamentosDBTableView1DblClick(Sender: TObject);
begin
  if not fdLancamentos.IsEmpty then
    actionEditarLancamentoExecute(Sender);
end;

procedure Tview_LancamentosExtratosExpressasPesquisa.gridLancamentosDBTableView1NavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  case AButtonIndex of
     16 : ExportData;
     17 : gridLancamentosDBTableView1.ViewData.Expand(True);
     18 : gridLancamentosDBTableView1.ViewData.Collapse(True);
     19 : SetGroup(gridLancamentosDBTableView1.OptionsView.GroupByBox);
     20 : RestoreLayout;
     21 : gridLancamentosDBTableView1.Controller.SelectAllRecords;
     22 : gridLancamentosDBTableView1.Controller.ClearSelection;
  end;
end;

procedure Tview_LancamentosExtratosExpressasPesquisa.PopulaLancamentos;
begin
  fdLancamentos.Active := False;
  fdLancamentos.Filter := sFilter;
  fdLancamentos.Active := True;
  if not fdLancamentos.IsEmpty then
  begin
    fdLancamentos.Last;
    gridLancamentos.SetFocus;
  end;
end;

procedure Tview_LancamentosExtratosExpressasPesquisa.RestoreLayout;
begin
  gridLancamentosDBTableView1.RestoreFromIniFile(sFileLayout);
  SetGroup(True);
end;

procedure Tview_LancamentosExtratosExpressasPesquisa.SaveLayout;
begin
  gridLancamentosDBTableView1.StoreToIniFile(sFileLayout);
end;

procedure Tview_LancamentosExtratosExpressasPesquisa.SetGroup(flag: boolean);
begin
  gridLancamentosDBTableView1.OptionsView.GroupByBox := (not flag);
  gridLancamentosDBTableView1.OptionsCustomize.ColumnGrouping := (not flag);;
end;

procedure Tview_LancamentosExtratosExpressasPesquisa.StartForm;
begin
  labelTitle.Caption := Self.Caption;
  sFilter := '';
  sFileLayout := ExtractFilePath(Application.ExeName) + '\layoutLancamentosExressas' + Global.Parametros.pUser_ID.ToString + '.ini';
  SaveLayout;
  PopulaLancamentos;
  gridLancamentosDBTableView1.Controller.FocusedRowIndex := 0;
end;

end.
