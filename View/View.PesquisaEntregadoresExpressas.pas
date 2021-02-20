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
    buttonExpandir: TcxButton;
    layoutItemExpandir: TdxLayoutItem;
    buttonRetrair: TcxButton;
    layoutItemRetrair: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    checkBoxBarraGrupos: TcxCheckBox;
    layoutItemBarraGrupos: TdxLayoutItem;
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
    actionNovo: TAction;
    fdMemTablePesquisa: TFDMemTable;
    fdMemTablePesquisaid_entregador: TFDAutoIncField;
    fdMemTablePesquisacod_agente: TIntegerField;
    fdMemTablePesquisanom_base: TStringField;
    fdMemTablePesquisacod_entregador: TIntegerField;
    fdMemTablePesquisanom_entregador: TStringField;
    fdMemTablePesquisades_chave: TStringField;
    fdMemTablePesquisacod_cadastro: TIntegerField;
    fdMemTablePesquisanom_cadastro: TStringField;
    actionEditar: TAction;
    actionExportar: TAction;
    barManagerEntregadores: TdxBarManager;
    barManagerEntregadoresBar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    actionFechar: TAction;
    dxBarLargeButton4: TdxBarLargeButton;
    actLimparConsulta: TAction;
    dxBarLargeButton5: TdxBarLargeButton;
    procedure FormShow(Sender: TObject);
    procedure actionExpandirGridExecute(Sender: TObject);
    procedure actionRetrairGridExecute(Sender: TObject);
    procedure checkBoxBarraGruposPropertiesChange(Sender: TObject);
    procedure buttonEditTextoPesquisarPropertiesChange(Sender: TObject);
    procedure actionLimparExecute(Sender: TObject);
    procedure buttonEditTextoPesquisarPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure actionPesquisarExecute(Sender: TObject);
    procedure fdPesquisaAfterClose(DataSet: TDataSet);
    procedure actionFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure StartForm;
    procedure SetGroup(bFlag: Boolean);
    procedure PesquisaEntregador(sFiltro: String);
    function FormulaFilro(sTexto: String): String;
  public
    { Public declarations }
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
  Perform(WM_CLOSE, 0, 0);
end;

procedure Tview_PesquisaEntregadoresExpressas.actionLimparExecute(Sender: TObject);
begin
  buttonEditTextoPesquisar.Clear;
end;

procedure Tview_PesquisaEntregadoresExpressas.actionPesquisarExecute(Sender: TObject);
begin
  PesquisaEntregador(FormulaFilro(buttonEditTextoPesquisar.Text));
end;

procedure Tview_PesquisaEntregadoresExpressas.actionRetrairGridExecute(Sender: TObject);
begin
  gridPesquisaDBTableView1.ViewData.Collapse(True);
end;

procedure Tview_PesquisaEntregadoresExpressas.buttonEditTextoPesquisarPropertiesChange(Sender: TObject);
begin
  if buttonEditTextoPesquisar.Text = '' then
  begin
    actionLimpar.Enabled := False;
  end
  else
  begin
    actionLimpar.Enabled := True;
  end;
end;

procedure Tview_PesquisaEntregadoresExpressas.buttonEditTextoPesquisarPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  actionPesquisarExecute(Sender);
end;

procedure Tview_PesquisaEntregadoresExpressas.checkBoxBarraGruposPropertiesChange(Sender: TObject);
begin
  SetGroup(checkBoxBarraGrupos.Checked);
end;

procedure Tview_PesquisaEntregadoresExpressas.fdPesquisaAfterClose(DataSet: TDataSet);
begin
  Data_Sisgef.FDConnectionMySQL.Close;
end;

procedure Tview_PesquisaEntregadoresExpressas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  view_PesquisaEntregadoresExpressas := nil;
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
    if Application.MessageBox(PChar(sMensagem), 'Atenção!', MB_OKCANCEL + MB_ICONWARNING) = IDCANCEL then
    begin
      sFiltro := 'NONE';
    end;
  end
  else
  begin
    sFiltro := 'nom_base like "%' + sTexto + '%" or nom_entregador like ' + QuotedStr('%' + sTexto + '%') + ' ' +
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
  Result := sFiltro;
end;

procedure Tview_PesquisaEntregadoresExpressas.PesquisaEntregador(sFiltro: String);
var
  sSQL: String;
begin
  sSQL := '';
  if sFiltro = 'NONE' then
  begin
    Exit;
  end;
  if fdPesquisa.Active then
  begin
    fdPesquisa.Close;
  end;
  sSQL := fdPesquisa.SQL.Text;
  if not sFiltro.IsEmpty then
  begin
    if fdPesquisa.SQL.Count > 1 then
    begin
      fdPesquisa.SQL[1] := '';
    end;
    fdPesquisa.SQL.Text := sSQL + ' where ' + sFiltro;
  end;
  fdPesquisa.Open();
  if fdMemTablePesquisa.Active then
  begin
    fdMemTablePesquisa.Close;
  end;
  fdMemTablePesquisa.Data := fdPesquisa.Data;
  fdPesquisa.Close;
  fdPesquisa.SQL.Text := sSQL;
end;

procedure Tview_PesquisaEntregadoresExpressas.SetGroup(bFlag: Boolean);
begin
  gridPesquisaDBTableView1.OptionsView.GroupByBox := bFlag;
  gridPesquisaDBTableView1.OptionsCustomize.ColumnGrouping := bFlag;
end;

procedure Tview_PesquisaEntregadoresExpressas.StartForm;
begin
  SetGroup(checkBoxBarraGrupos.Checked);
end;

end.
