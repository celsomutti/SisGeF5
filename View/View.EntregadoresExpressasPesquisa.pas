unit View.EntregadoresExpressasPesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutContainer, cxLabel, cxClasses, dxLayoutControl,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutControlAdapters, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  cxButtons, Vcl.Buttons, cxCheckBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxTextEdit,
  cxMaskEdit, cxButtonEdit, dxBar;

type
  Tview_EntregadoresExpressasPesquisa = class(TForm)
    layoutControlGridGroup_Root: TdxLayoutGroup;
    layoutControlGrid: TdxLayoutControl;
    gridPesquisaDBTableView1: TcxGridDBTableView;
    gridPesquisaLevel1: TcxGridLevel;
    gridPesquisa: TcxGrid;
    layoutItemGrid: TdxLayoutItem;
    actionListPesquisa: TActionList;
    actionExpandirGrid: TAction;
    actionRetrairGrid: TAction;
    fdPesquisa: TFDQuery;
    fdPesquisaid_entregador: TFDAutoIncField;
    fdPesquisacod_agente: TIntegerField;
    fdPesquisanom_base: TStringField;
    fdPesquisacod_entregador: TIntegerField;
    fdPesquisanom_entregador: TStringField;
    fdPesquisades_chave: TStringField;
    fdPesquisacod_cadastro: TIntegerField;
    fdPesquisanom_cadastro: TStringField;
    dsPesquisa: TDataSource;
    gridPesquisaDBTableView1id_entregador: TcxGridDBColumn;
    gridPesquisaDBTableView1cod_agente: TcxGridDBColumn;
    gridPesquisaDBTableView1nom_base: TcxGridDBColumn;
    gridPesquisaDBTableView1cod_entregador: TcxGridDBColumn;
    gridPesquisaDBTableView1nom_entregador: TcxGridDBColumn;
    gridPesquisaDBTableView1des_chave: TcxGridDBColumn;
    gridPesquisaDBTableView1cod_cadastro: TcxGridDBColumn;
    gridPesquisaDBTableView1nom_cadastro: TcxGridDBColumn;
    buttonEditTextoPesquisar: TcxButtonEdit;
    layoutItemtextoPesquisa: TdxLayoutItem;
    actionPesquisar: TAction;
    actionLimpar: TAction;
    actionExportar: TAction;
    actionFechar: TAction;
    buttonFechar: TcxButton;
    layoutItemFechar: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    actionOK: TAction;
    buttonLocalizar: TcxButton;
    layoutItemLocalizar: TdxLayoutItem;
    fdPesquisaagente: TStringField;
    gridPesquisaDBTableView1agente: TcxGridDBColumn;
    actionNovo: TAction;
    actionEditar: TAction;
    cxButton1: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    labelTitle: TcxLabel;
    dxLayoutItem3: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
    procedure actionExpandirGridExecute(Sender: TObject);
    procedure actionRetrairGridExecute(Sender: TObject);
    procedure buttonEditTextoPesquisarPropertiesChange(Sender: TObject);
    procedure actionLimparExecute(Sender: TObject);
    procedure actionPesquisarExecute(Sender: TObject);
    procedure fdPesquisaAfterClose(DataSet: TDataSet);
    procedure actionFecharExecute(Sender: TObject);
    procedure dsPesquisaStateChange(Sender: TObject);
    procedure actionOKExecute(Sender: TObject);
    procedure gridPesquisaDBTableView1DblClick(Sender: TObject);
    procedure gridPesquisaDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
      AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure gridPesquisaDBTableView1NavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure actionNovoExecute(Sender: TObject);
    procedure actionEditarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure buttonEditTextoPesquisarPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure gridPesquisaEnter(Sender: TObject);
    procedure gridPesquisaExit(Sender: TObject);
  private
    { Private declarations }
    procedure StartForm;
    procedure CloseForm;
    procedure SetGroup();
    procedure PesquisaEntregador(sFiltro: String);
    procedure ExportData;
    procedure ClearFilter;
    procedure IncludeData;
    procedure EditData(iID: Integer);
    function FormulaFilro(sTexto: String): String;
  public
    { Public declarations }
    iID: Integer;
  end;

var
  view_EntregadoresExpressasPesquisa: Tview_EntregadoresExpressasPesquisa;
  sFileLayout : string;

implementation

{$R *.dfm}

uses Data.SisGeF, Common.Utils, Global.Parametros, View.CadastroEntregadores;

{ Tview_PesquisaEntregadoresExpressas }

procedure Tview_EntregadoresExpressasPesquisa.actionEditarExecute(Sender: TObject);
begin
  EditData(fdPesquisaid_entregador.AsInteger);
end;

procedure Tview_EntregadoresExpressasPesquisa.actionExpandirGridExecute(Sender: TObject);
begin
  gridPesquisaDBTableView1.ViewData.Expand(True);
end;

procedure Tview_EntregadoresExpressasPesquisa.actionFecharExecute(Sender: TObject);
begin
  iID := 0;
  Close;
end;

procedure Tview_EntregadoresExpressasPesquisa.actionLimparExecute(Sender: TObject);
begin
  ClearFilter;
end;

procedure Tview_EntregadoresExpressasPesquisa.actionNovoExecute(Sender: TObject);
begin
  IncludeData;
end;

procedure Tview_EntregadoresExpressasPesquisa.actionOKExecute(Sender: TObject);
begin
  iId := fdPesquisaid_entregador.AsInteger;
  fdpesquisa.Filtered := False;
  ModalResult := mrOk;
end;

procedure Tview_EntregadoresExpressasPesquisa.actionPesquisarExecute(Sender: TObject);
begin
  PesquisaEntregador(FormulaFilro(buttonEditTextoPesquisar.Text));
end;

procedure Tview_EntregadoresExpressasPesquisa.actionRetrairGridExecute(Sender: TObject);
begin
  gridPesquisaDBTableView1.ViewData.Collapse(True);
end;

procedure Tview_EntregadoresExpressasPesquisa.buttonEditTextoPesquisarPropertiesChange(Sender: TObject);
begin
  if buttonEditTextoPesquisar.Text = '' then
  begin
    actionLimpar.Enabled := False;
    buttonLocalizar.Enabled := False;
  end
  else
  begin
    actionLimpar.Enabled := True;
    buttonLocalizar.Enabled := True;
  end;
end;

procedure Tview_EntregadoresExpressasPesquisa.buttonEditTextoPesquisarPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  PesquisaEntregador(FormulaFilro(buttonEditTextoPesquisar.Text));
end;

procedure Tview_EntregadoresExpressasPesquisa.ClearFilter;
begin
  buttonEditTextoPesquisar.Clear;
  fdPesquisa.Active := false;
  fdPesquisa.Filter := '';
end;

procedure Tview_EntregadoresExpressasPesquisa.CloseForm;
begin
  if not DeleteFile(sFileLayout) then
  begin
    Beep;
  end;
  fdPesquisa.Active := False;
  fdPesquisa.Filter := '';
end;

procedure Tview_EntregadoresExpressasPesquisa.dsPesquisaStateChange(Sender: TObject);
begin
if TDataSource(Sender).DataSet.State = dsbrowse then //Se tiver em mode de edição ou iserção
  begin
    actionOK.Enabled := True;
    actionExportar.Enabled := True;
    actionEditar.Enabled := True;
  end
  else
    actionOK.Enabled := False;
    actionExportar.Enabled := False;
    actionEditar.Enabled := False;
  begin
  end;
end;

procedure Tview_EntregadoresExpressasPesquisa.EditData(iID: Integer);
begin
  if iID = 0 then
    Exit;
  if not Assigned(view_CadastroEntregadores) then
  begin
    view_CadastroEntregadores := Tview_CadastroEntregadores.Create(Application);
  end;
  view_CadastroEntregadores.iID := iId;
  if view_CadastroEntregadores.ShowModal = mrOk then
    fdPesquisa.Refresh;
  FreeAndNil(view_CadastroEntregadores);
end;

procedure Tview_EntregadoresExpressasPesquisa.ExportData;
var
  fnUtil : Common.Utils.TUtils;
  sMensagem: String;
begin
  try
    fnUtil := Common.Utils.TUtils.Create;

    if fdPesquisa.IsEmpty then Exit;

    if Data_Sisgef.SaveDialog.Execute() then
    begin
      if FileExists(Data_Sisgef.SaveDialog.FileName) then
      begin
        sMensagem := 'Arquivo ' + Data_Sisgef.SaveDialog.FileName + ' já existe! Sobrepor ?';
        if Application.MessageBox(PChar(sMensagem), 'Sobrepor', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit
      end;

      fnUtil.ExportarDados(gridPesquisa, Data_Sisgef.SaveDialog.FileName);

    end;
  finally
    fnUtil.Free;
  end;
end;

procedure Tview_EntregadoresExpressasPesquisa.fdPesquisaAfterClose(DataSet: TDataSet);
begin
  Data_Sisgef.FDConnectionMySQL.Close;
end;

procedure Tview_EntregadoresExpressasPesquisa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CloseForm;
  Action := caFree;
  view_EntregadoresExpressasPesquisa := nil;
end;

procedure Tview_EntregadoresExpressasPesquisa.FormShow(Sender: TObject);
begin
  StartForm;
end;

function Tview_EntregadoresExpressasPesquisa.FormulaFilro(sTexto: String): String;
var
  sMensagem: String;
  sFiltro: String;
  fFuncoes : Common.Utils.TUtils;
begin
  Result := '';
  sFiltro := '';
  fFuncoes := Common.Utils.TUtils.Create;
  if sTexto = '' then
  begin
    sMensagem := 'O campo de texto a pesquisar não foi preenchido!. ' +
    'Caso deseje visualizar todos os entregadores clique OK, porém, esse processo pode ser lento.';
    if Application.MessageBox(PChar(sMensagem), 'Atenção!', MB_OKCANCEL + MB_ICONWARNING) = IDCANCEL then
    begin
      sFiltro := 'NONE';
    end;
  end
  else
  begin
    sFiltro := 'nom_base like ' + QuotedStr('%' +  sTexto + '%') + ' or nom_entregador like ' + QuotedStr('%' + sTexto + '%') + ' ' +
    'or des_chave like ' + QuotedStr('%' + sTexto + '%') + ' or nom_cadastro like ' + QuotedStr('%' + sTexto + '%');
    if fFuncoes.ENumero(sTexto) then
    begin
      if sTexto <> '' then
      begin
        sFiltro := sFiltro + ' or ';
      end;
      sFiltro := sFiltro + 'id_entregador like ' + sTexto  + ' or cod_agente like ' + sTexto + ' or cod_entregador like ' + sTexto +
      ' or cod_cadastro like ' + sTexto;
    end;
  end;
  fFuncoes.Free;
  Result := sFiltro;
end;

procedure Tview_EntregadoresExpressasPesquisa.gridPesquisaDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  actionEditarExecute(Sender);
end;

procedure Tview_EntregadoresExpressasPesquisa.gridPesquisaDBTableView1DblClick(Sender: TObject);
begin
   actionOKExecute(Sender);
end;

procedure Tview_EntregadoresExpressasPesquisa.gridPesquisaDBTableView1NavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  case AButtonIndex of
    16 : ExportData;
    17 : gridPesquisaDBTableView1.ViewData.Expand(True);
    18 : gridPesquisaDBTableView1.ViewData.Collapse(True);
    19 : SetGroup;
    20 : gridPesquisaDBTableView1.RestoreFromIniFile(sFileLayout);
    else
    Exit;
  end;
end;

procedure Tview_EntregadoresExpressasPesquisa.gridPesquisaEnter(Sender: TObject);
begin
  if not fdPesquisa.IsEmpty then
  begin
    actionEditar.Enabled := True;
    cxButton2.Default := True;
  end
  else
  begin
    actionEditar.Enabled := False;
    cxButton2.Default := False;
  end;
end;

procedure Tview_EntregadoresExpressasPesquisa.gridPesquisaExit(Sender: TObject);
begin
  cxButton2.Default := False;
end;

procedure Tview_EntregadoresExpressasPesquisa.IncludeData;
begin
  if not Assigned(view_CadastroEntregadores) then
  begin
    view_CadastroEntregadores := Tview_CadastroEntregadores.Create(Application);
  end;
  if view_CadastroEntregadores.ShowModal = mrOk then
    fdPesquisa.Refresh;
  FreeAndNil(view_CadastroEntregadores);
end;

procedure Tview_EntregadoresExpressasPesquisa.PesquisaEntregador(sFiltro: String);
begin
  if sFiltro = 'NONE' then
  begin
    Exit;
  end;
  if fdPesquisa.Active then
  begin
    fdPesquisa.Close;
  end;
  if not sFiltro.IsEmpty then
  begin
    fdpesquisa.Filter := sFiltro;
    fdpesquisa.Filtered := True;
  end;
  fdPesquisa.Open();
  if not fdPesquisa.IsEmpty then
  begin
    gridPesquisaDBTableView1.ViewData.Expand(True);
    gridPesquisa.SetFocus;
  end;
end;

procedure Tview_EntregadoresExpressasPesquisa.SetGroup();
begin
  if gridPesquisaDBTableView1.OptionsView.GroupByBox then
  begin
    gridPesquisaDBTableView1.OptionsView.GroupByBox := False;
    gridPesquisaDBTableView1.OptionsCustomize.ColumnGrouping := False;
  end
  else
  begin
    gridPesquisaDBTableView1.OptionsView.GroupByBox := True;
    gridPesquisaDBTableView1.OptionsCustomize.ColumnGrouping := True;
  end;
end;

procedure Tview_EntregadoresExpressasPesquisa.StartForm;
begin
  labelTitle.Caption := Self.Caption;
  iID := 0;
  sFileLayout := ExtractFilePath(Application.ExeName) + '\layoutBIRemessas' + Global.Parametros.pUser_ID.ToString + '.ini';
  gridPesquisaDBTableView1.StoreToIniFile(sFileLayout);
end;

end.
