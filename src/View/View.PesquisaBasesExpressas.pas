unit View.PesquisaBasesExpressas;

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
  Tview_PesquisaBasesExpressas = class(TForm)
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
    dsPesquisa: TDataSource;
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
    buttonExportar: TcxButton;
    layoutItemExportar: TdxLayoutItem;
    fdPesquisacod_agente: TIntegerField;
    fdPesquisades_razao_social: TStringField;
    fdPesquisanom_fantasia: TStringField;
    fdPesquisanum_cnpj: TStringField;
    fdPesquisanum_ie: TStringField;
    fdPesquisanum_im: TStringField;
    fdPesquisacod_status: TIntegerField;
    gridPesquisaDBTableView1cod_agente: TcxGridDBColumn;
    gridPesquisaDBTableView1des_razao_social: TcxGridDBColumn;
    gridPesquisaDBTableView1nom_fantasia: TcxGridDBColumn;
    gridPesquisaDBTableView1num_cnpj: TcxGridDBColumn;
    gridPesquisaDBTableView1num_ie: TcxGridDBColumn;
    gridPesquisaDBTableView1num_im: TcxGridDBColumn;
    gridPesquisaDBTableView1cod_status: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure actionExpandirGridExecute(Sender: TObject);
    procedure actionRetrairGridExecute(Sender: TObject);
    procedure checkBoxBarraGruposPropertiesChange(Sender: TObject);
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
  private
    { Private declarations }
    procedure StartForm;
    procedure SetGroup(bFlag: Boolean);
    procedure PesquisaEntregador(sFiltro: String);
    function FormulaFilro(sTexto: String): String;
  public
    { Public declarations }
    iID: Integer;
    sNome: String;
  end;

var
  view_PesquisaBasesExpressas: Tview_PesquisaBasesExpressas;

implementation

{$R *.dfm}

uses Data.SisGeF, Common.Utils;

{ Tview_PesquisaEntregadoresExpressas }

procedure Tview_PesquisaBasesExpressas.actionExpandirGridExecute(Sender: TObject);
begin
  gridPesquisaDBTableView1.ViewData.Expand(True);
end;

procedure Tview_PesquisaBasesExpressas.actionFecharExecute(Sender: TObject);
begin
  iID := 0;
  sNome := '';
  fdpesquisa.Filtered := False;
  ModalResult := mrCancel;
end;

procedure Tview_PesquisaBasesExpressas.actionLimparExecute(Sender: TObject);
begin
  buttonEditTextoPesquisar.Clear;
end;

procedure Tview_PesquisaBasesExpressas.actionOKExecute(Sender: TObject);
begin
  iId := fdPesquisacod_agente.AsInteger;
  sNome := fdPesquisanom_fantasia.AsString;
  fdpesquisa.Filtered := False;
  ModalResult := mrOk;
end;

procedure Tview_PesquisaBasesExpressas.actionPesquisarExecute(Sender: TObject);
begin
  PesquisaEntregador(FormulaFilro(buttonEditTextoPesquisar.Text));
end;

procedure Tview_PesquisaBasesExpressas.actionRetrairGridExecute(Sender: TObject);
begin
  gridPesquisaDBTableView1.ViewData.Collapse(True);
end;

procedure Tview_PesquisaBasesExpressas.buttonEditTextoPesquisarEnter(Sender: TObject);
begin
  buttonOK.Default := False;
end;

procedure Tview_PesquisaBasesExpressas.buttonEditTextoPesquisarPropertiesChange(Sender: TObject);
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

procedure Tview_PesquisaBasesExpressas.checkBoxBarraGruposPropertiesChange(Sender: TObject);
begin
  SetGroup(checkBoxBarraGrupos.Checked);
end;

procedure Tview_PesquisaBasesExpressas.dsPesquisaStateChange(Sender: TObject);
begin
if TDataSource(Sender).DataSet.State = dsbrowse then //Se tiver em mode de edição ou iserção
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

procedure Tview_PesquisaBasesExpressas.fdPesquisaAfterClose(DataSet: TDataSet);
begin
  Data_Sisgef.FDConnectionMySQL.Close;
end;

procedure Tview_PesquisaBasesExpressas.FormShow(Sender: TObject);
begin
  StartForm;
end;

function Tview_PesquisaBasesExpressas.FormulaFilro(sTexto: String): String;
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
    'Caso deseje visualizar todos as bases clique OK, porém, esse processo pode ser lento.';
    if Application.MessageBox(PChar(sMensagem), 'Atenção!', MB_OKCANCEL + MB_ICONWARNING) = IDCANCEL then
    begin
      sFiltro := 'NONE';
    end;
  end
  else
  begin
    sFiltro := 'des_razao_social like ' + QuotedStr('%' +  sTexto + '%') + ' or nom_fantasia like ' + QuotedStr('%' + sTexto + '%');
    if fFuncoes.ENumero(sTexto) then
    begin
      if sTexto <> '' then
      begin
        sFiltro := sFiltro + ' or ';
      end;
      sFiltro := sFiltro + 'cod_agente like ' + sTexto  + ' or num_cnpj like ' + sTexto + ' or num_ie like ' + sTexto +
      ' or num_im like ' + sTexto;
    end;
  end;
  fFuncoes.Free;
  Result := sFiltro;
end;

procedure Tview_PesquisaBasesExpressas.gridPesquisaDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  actionOKExecute(Sender);
end;

procedure Tview_PesquisaBasesExpressas.gridPesquisaDBTableView1DblClick(Sender: TObject);
begin
   actionOKExecute(Sender);
end;

procedure Tview_PesquisaBasesExpressas.gridPesquisaEnter(Sender: TObject);
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

procedure Tview_PesquisaBasesExpressas.PesquisaEntregador(sFiltro: String);
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
    gridPesquisa.SetFocus;
  end;
end;

procedure Tview_PesquisaBasesExpressas.SetGroup(bFlag: Boolean);
begin
  gridPesquisaDBTableView1.OptionsView.GroupByBox := bFlag;
  gridPesquisaDBTableView1.OptionsCustomize.ColumnGrouping := bFlag;
end;

procedure Tview_PesquisaBasesExpressas.StartForm;
begin
  iID := 0;
  SetGroup(checkBoxBarraGrupos.Checked);
end;

end.
