unit View.PesquisaAgentes;

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
  cxMaskEdit, cxButtonEdit, dxBar, cxDropDownEdit, DAO.Conexao;

type
  Tview_PesquisaPessoasAgentes = class(TForm)
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
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    comboBoxOutrosCampos: TcxComboBox;
    layoutItemTipoPesquisa: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    fdPesquisades_razao_social: TStringField;
    fdPesquisanom_fantasia: TStringField;
    fdPesquisanum_cnpj: TStringField;
    fdPesquisanum_ie: TStringField;
    gridPesquisaDBTableView1cod_cadastro: TcxGridDBColumn;
    gridPesquisaDBTableView1des_razao_social: TcxGridDBColumn;
    gridPesquisaDBTableView1nom_fantasia: TcxGridDBColumn;
    gridPesquisaDBTableView1num_cnpj: TcxGridDBColumn;
    gridPesquisaDBTableView1num_ie: TcxGridDBColumn;
    gridPesquisaDBTableView1num_im: TcxGridDBColumn;
    gridPesquisaDBTableView1num_telefone: TcxGridDBColumn;
    gridPesquisaDBTableView1des_email: TcxGridDBColumn;
    fdPesquisacod_agente: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure actionExpandirGridExecute(Sender: TObject);
    procedure actionRetrairGridExecute(Sender: TObject);
    procedure checkBoxBarraGruposPropertiesChange(Sender: TObject);
    procedure buttonEditTextoPesquisarPropertiesChange(Sender: TObject);
    procedure actionLimparExecute(Sender: TObject);
    procedure actionPesquisarExecute(Sender: TObject);
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
  view_PesquisaPessoasAgentes: Tview_PesquisaPessoasAgentes;
  Fconexao : TConexao;

implementation

{$R *.dfm}

uses Common.Utils, Data.SisGeF;

{ Tview_PesquisaEntregadoresExpressas }

procedure Tview_PesquisaPessoasAgentes.actionExpandirGridExecute(Sender: TObject);
begin
  gridPesquisaDBTableView1.ViewData.Expand(True);
end;

procedure Tview_PesquisaPessoasAgentes.actionFecharExecute(Sender: TObject);
begin
  iID := 0;
  sNome := '';
  fdpesquisa.Filtered := False;
  ModalResult := mrCancel;
end;

procedure Tview_PesquisaPessoasAgentes.actionLimparExecute(Sender: TObject);
begin
  buttonEditTextoPesquisar.Clear;
end;

procedure Tview_PesquisaPessoasAgentes.actionOKExecute(Sender: TObject);
begin
  iId := fdPesquisacod_agente.AsInteger;
  sNome := fdPesquisades_razao_social.AsString;
  fdpesquisa.Filtered := False;
  ModalResult := mrOk;
end;

procedure Tview_PesquisaPessoasAgentes.actionPesquisarExecute(Sender: TObject);
begin
  PesquisaEntregador(FormulaFilro(buttonEditTextoPesquisar.Text));
end;

procedure Tview_PesquisaPessoasAgentes.actionRetrairGridExecute(Sender: TObject);
begin
  gridPesquisaDBTableView1.ViewData.Collapse(True);
end;

procedure Tview_PesquisaPessoasAgentes.buttonEditTextoPesquisarEnter(Sender: TObject);
begin
  buttonOK.Default := False;
end;

procedure Tview_PesquisaPessoasAgentes.buttonEditTextoPesquisarPropertiesChange(Sender: TObject);
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

procedure Tview_PesquisaPessoasAgentes.checkBoxBarraGruposPropertiesChange(Sender: TObject);
begin
  SetGroup(checkBoxBarraGrupos.Checked);
end;

procedure Tview_PesquisaPessoasAgentes.dsPesquisaStateChange(Sender: TObject);
begin
if TDataSource(Sender).DataSet.State = dsbrowse then //Se tiver em mode de edi��o ou iser��o
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

procedure Tview_PesquisaPessoasAgentes.FormShow(Sender: TObject);
begin
  StartForm;
end;

function Tview_PesquisaPessoasAgentes.FormulaFilro(sTexto: String): String;
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
    sMensagem := 'O campo de texto a pesquisar n�o foi preenchido!. ' +
    'Caso deseje visualizar todos as pessoas clique OK, por�m, esse processo pode ser lento.';
    if Application.MessageBox(PChar(sMensagem), 'Aten��o!', MB_OKCANCEL + MB_ICONWARNING) = IDCANCEL then
    begin
      sFiltro := 'NONE';
    end;
  end
  else
  begin
    if comboBoxOutrosCampos.ItemIndex = 0 then
    begin
      sFiltro := 'des_razao_social like ' + QuotedStr('%' +  sTexto + '%') + ' or nom_fantasia like ' +
                 QuotedStr('%' + sTexto + '%') + ' or num_cnpj like ' + QuotedStr('%' +  sTexto + '%');
      if fFuncoes.ENumero(sTexto) then
      begin
        if sFiltro <> '' then
        begin
          sFiltro := sFiltro + ' or ';
        end;
        sFiltro := sFiltro + 'cod_agente like ' + sTexto
      end;
    end
    else
    begin
      if comboBoxOutrosCampos.ItemIndex = 1 then
      begin
        sFiltro := 'num_ie like ' + QuotedStr('%' +  sTexto + '%');
      end
      else if comboBoxOutrosCampos.ItemIndex = 2 then
      begin
        sFiltro := 'num_im like ' + QuotedStr('%' +  sTexto + '%');
      end;
    end;
  end;
  fFuncoes.Free;
  Result := sFiltro;
end;

procedure Tview_PesquisaPessoasAgentes.gridPesquisaDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  actionOKExecute(Sender);
end;

procedure Tview_PesquisaPessoasAgentes.gridPesquisaDBTableView1DblClick(Sender: TObject);
begin
   actionOKExecute(Sender);
end;

procedure Tview_PesquisaPessoasAgentes.gridPesquisaEnter(Sender: TObject);
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

procedure Tview_PesquisaPessoasAgentes.PesquisaEntregador(sFiltro: String);
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
  fdPesquisa.Connection := FConexao.GetConn;
  fdPesquisa.Open();
  if not fdPesquisa.IsEmpty then
  begin
    gridPesquisa.SetFocus;
  end;
end;

procedure Tview_PesquisaPessoasAgentes.SetGroup(bFlag: Boolean);
begin
  gridPesquisaDBTableView1.OptionsView.GroupByBox := bFlag;
  gridPesquisaDBTableView1.OptionsCustomize.ColumnGrouping := bFlag;
end;

procedure Tview_PesquisaPessoasAgentes.StartForm;
begin
  iID := 0;
  Fconexao := TConexao.Create;
  SetGroup(checkBoxBarraGrupos.Checked);
end;

end.
