unit View.PesquisaEntregadoresExpressas;

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
  Tview_PesquisaEntregadoresExpressas = class(TForm)
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
    buttonOK: TcxButton;
    layoutItemOK: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    actionOK: TAction;
    buttonLocalizar: TcxButton;
    layoutItemLocalizar: TdxLayoutItem;
    popupMenu: TPopupMenu;
    Exportar1: TMenuItem;
    Expandir1: TMenuItem;
    Retrair1: TMenuItem;
    actionPainelGrupo: TAction;
    Painel1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure actionRetrairGridExecute(Sender: TObject);
    procedure buttonEditTextoPesquisarPropertiesChange(Sender: TObject);
    procedure actionLimparExecute(Sender: TObject);
    procedure actionPesquisarExecute(Sender: TObject);
    procedure fdPesquisaAfterClose(DataSet: TDataSet);
    procedure actionFecharExecute(Sender: TObject);
    procedure dsPesquisaStateChange(Sender: TObject);
    procedure actionOKExecute(Sender: TObject);
    procedure gridPesquisaEnter(Sender: TObject);
    procedure gridPesquisaDBTableView1DblClick(Sender: TObject);
    procedure buttonEditTextoPesquisarEnter(Sender: TObject);
    procedure gridPesquisaDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
      AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure gridPesquisaDBTableView1NavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure actionExpandirGridExecute(Sender: TObject);
    procedure actionPainelGrupoExecute(Sender: TObject);
  private
    { Private declarations }
    procedure StartForm;
    procedure SetGroup(bFlag: Boolean);
    procedure PesquisaEntregador(sFiltro: String);
    procedure ExportData;
    function FormulaFilro(sTexto: String): String;
  public
    { Public declarations }
    iID: Integer;
  end;

var
  view_PesquisaEntregadoresExpressas: Tview_PesquisaEntregadoresExpressas;

implementation

{$R *.dfm}

uses Data.SisGeF, Common.Utils;

{ Tview_PesquisaEntregadoresExpressas }

procedure Tview_PesquisaEntregadoresExpressas.actionExpandirGridExecute(Sender: TObject);
begin
  gridPesquisaDBTableView1.ViewData.Expand(True);
end;

procedure Tview_PesquisaEntregadoresExpressas.actionFecharExecute(Sender: TObject);
begin
  iID := 0;
  fdpesquisa.Filtered := False;
  ModalResult := mrCancel;
end;

procedure Tview_PesquisaEntregadoresExpressas.actionLimparExecute(Sender: TObject);
begin
  buttonEditTextoPesquisar.Clear;
end;

procedure Tview_PesquisaEntregadoresExpressas.actionOKExecute(Sender: TObject);
begin
  iId := fdPesquisaid_entregador.AsInteger;
  fdpesquisa.Filtered := False;
  ModalResult := mrOk;
end;

procedure Tview_PesquisaEntregadoresExpressas.actionPainelGrupoExecute(Sender: TObject);
begin
  SetGroup(gridPesquisaDBTableView1.OptionsView.GroupByBox);
end;

procedure Tview_PesquisaEntregadoresExpressas.actionPesquisarExecute(Sender: TObject);
begin
  PesquisaEntregador(FormulaFilro(buttonEditTextoPesquisar.Text));
end;

procedure Tview_PesquisaEntregadoresExpressas.actionRetrairGridExecute(Sender: TObject);
begin
  gridPesquisaDBTableView1.ViewData.Collapse(True);
end;

procedure Tview_PesquisaEntregadoresExpressas.buttonEditTextoPesquisarEnter(Sender: TObject);
begin
  buttonOK.Default := False;
end;

procedure Tview_PesquisaEntregadoresExpressas.buttonEditTextoPesquisarPropertiesChange(Sender: TObject);
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

procedure Tview_PesquisaEntregadoresExpressas.dsPesquisaStateChange(Sender: TObject);
begin
if TDataSource(Sender).DataSet.State = dsbrowse then //Se tiver em mode de edicao ou isercao
  begin
    actionOK.Enabled := True;
    actionExportar.Enabled := True;
  end
  else
    actionOK.Enabled := False;
    actionExportar.Enabled := False;
  begin
  end;
end;

procedure Tview_PesquisaEntregadoresExpressas.ExportData;
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

      fnUtil.ExportarDados(gridPesquisa,Data_Sisgef.SaveDialog.FileName);

    end;
  finally
    fnUtil.Free;
  end;
end;

procedure Tview_PesquisaEntregadoresExpressas.fdPesquisaAfterClose(DataSet: TDataSet);
begin
  Data_Sisgef.FDConnectionMySQL.Close;
end;

procedure Tview_PesquisaEntregadoresExpressas.FormShow(Sender: TObject);
begin
  StartForm;
end;

function Tview_PesquisaEntregadoresExpressas.FormulaFilro(sTexto: String): String;
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
    if Application.MessageBox(PChar(sMensagem), 'Aten��o!', MB_OKCANCEL + MB_ICONWARNING) = IDCANCEL then
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

procedure Tview_PesquisaEntregadoresExpressas.gridPesquisaDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  actionOKExecute(Sender);
end;

procedure Tview_PesquisaEntregadoresExpressas.gridPesquisaDBTableView1DblClick(Sender: TObject);
begin
   actionOKExecute(Sender);
end;

procedure Tview_PesquisaEntregadoresExpressas.gridPesquisaDBTableView1NavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  case AButtonIndex of
    16 : ExportData;
    17 : gridPesquisaDBTableView1.ViewData.Expand(True);
    18 : gridPesquisaDBTableView1.ViewData.Collapse(True);
    19 : SetGroup(gridPesquisaDBTableView1.OptionsView.GroupByBox);
  end;
end;

procedure Tview_PesquisaEntregadoresExpressas.gridPesquisaEnter(Sender: TObject);
begin
 if fdPesquisa.IsEmpty then
  begin
    buttonOK.Default := False;
  end
  else
  begin
    buttonOK.Default := True;
  end;
end;

procedure Tview_PesquisaEntregadoresExpressas.PesquisaEntregador(sFiltro: String);
begin
  if sFiltro = 'NONE' then
  begin
    Exit;
  end;
  if not sFiltro.IsEmpty then
  begin
    fdpesquisa.Filtered := False;
    fdpesquisa.Filter := sFiltro;
    fdpesquisa.Filtered := True;
  end;
  fdPesquisa.Open();
  if not fdPesquisa.IsEmpty then
  begin
    gridPesquisa.SetFocus;
  end;
end;

procedure Tview_PesquisaEntregadoresExpressas.SetGroup(bFlag: Boolean);
begin
  gridPesquisaDBTableView1.OptionsView.GroupByBox := (not bFlag);
  gridPesquisaDBTableView1.OptionsCustomize.ColumnGrouping := (not bFlag);
end;

procedure Tview_PesquisaEntregadoresExpressas.StartForm;
begin
  iID := 0;
end;

end.