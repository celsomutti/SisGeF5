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
    actionFiltroAvancado: TAction;
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
    cxButton1: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
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
    procedure actionFiltroAvancadoExecute(Sender: TObject);
    procedure actionFecharTelaExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure fdLancamentosAfterClose(DataSet: TDataSet);
    procedure actionNovoLancamentoExecute(Sender: TObject);
    procedure actionEditarLancamentoExecute(Sender: TObject);
    procedure actionCancelarFiltroExecute(Sender: TObject);
    procedure gridLancamentosDBTableView1NavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure dsLancamnentosStateChange(Sender: TObject);
    procedure gridLancamentosDBTableView1DblClick(Sender: TObject);
    procedure actionExluirLancamentoExecute(Sender: TObject);
  private
    { Private declarations }
    procedure AbreFiltroAvancado;
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

uses Data.SisGeF, View.FiltroGenerico, View.LancamentosExtratosExpressas, Common.ENum, Common.Utils, Global.Parametros;

procedure Tview_LancamentosExtratosExpressasPesquisa.AbreFiltroAvancado;
begin
  if not Assigned(view_FiltroGenerico) then
    view_FiltroGenerico := Tview_FiltroGenerico.Create(Application);

  view_FiltroGenerico.filtro.DataSet := fdLancamentos;

  if view_FiltroGenerico.ShowModal = mrOK then
  begin
    sFilter := view_FiltroGenerico.sFiltro;
    if not sFilter.IsEmpty then
    begin
      PopulaLancamentos;
      actionCancelarFiltro.Enabled := True;
    end;
  end;
end;

procedure Tview_LancamentosExtratosExpressasPesquisa.actionCancelarFiltroExecute(Sender: TObject);
begin
  sFilter := '';
  actionCancelarFiltro.Enabled := False;
  PopulaLancamentos;
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

procedure Tview_LancamentosExtratosExpressasPesquisa.actionFiltroAvancadoExecute(Sender: TObject);
begin
  AbreFiltroAvancado;
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

procedure Tview_LancamentosExtratosExpressasPesquisa.CloseForm;
begin
  if FileExists(sFileLayout) then
  begin
    DeleteFile(sFileLayout);
  end;
  CloseForm;
  FreeAndNil(view_FiltroGenerico);
  fdLancamentos.Active := False;
end;

procedure Tview_LancamentosExtratosExpressasPesquisa.dsLancamnentosStateChange(Sender: TObject);
begin
  if dsLancamnentos.State = dsInactive then
  begin
    actionNovoLancamento.Enabled := True;
    actionEditarLancamento.Enabled := False;
    actionExportarDados.Enabled := False;
    actionFiltroAvancado.Enabled := True;
    actionExluirLancamento.Enabled := True;
  end
  else if dsLancamnentos.State = dsBrowse then
  begin
    actionNovoLancamento.Enabled := True;
    actionEditarLancamento.Enabled := True;
    actionExportarDados.Enabled := True;
    actionFiltroAvancado.Enabled := True;
    actionExluirLancamento.Enabled := True;
  end;

end;

procedure Tview_LancamentosExtratosExpressasPesquisa.ExcludeData;
var
  sMensagem: String;
begin
  if fdLancamentosDOM_DESCONTO.AsString = 'S' then
  begin
    sMensagem := 'Lancamento ID ' + fdLancamentosCOD_LANCAMENTO.AsString + ' já está processado!. Não pode ser excluído.' ;
    Application.MessageBox(Pchar(sMensagem), 'Atenção!', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  sMensagem := 'Confirma excluir o lançamento ID ' + fdLancamentosCOD_LANCAMENTO.AsString + ' ?' ;
  if Application.MessageBox(Pchar(sMensagem), 'Excluir', MB_YESNO + MB_ICONQUESTION) = ID_NO then
  begin
    Exit;
  end;
  Lancamentos := TLancamentosControl.Create;
  Lancamentos.Lancamentos.Codigo := fdLancamentosCOD_LANCAMENTO.AsInteger;
  Lancamentos.Lancamentos.Acao:= tacExcluir;
  if Lancamentos.Gravar then
  begin
    PopulaLancamentos;
    Lancamentos.Free;
  end
  else
  begin
    sMensagem := 'Erro ao tentar excluir o lancamento ID ' + fdLancamentosCOD_LANCAMENTO.AsString + ' !' ;
    Application.MessageBox(Pchar(sMensagem), 'Atenção!', MB_OK + MB_ICONWARNING);
    Lancamentos.Free;
    Exit;
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
  end;
end;

procedure Tview_LancamentosExtratosExpressasPesquisa.PopulaLancamentos;
begin
  fdLancamentos.Active := False;
  fdLancamentos.Filter := sFilter;
  fdLancamentos.Active := True;
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
