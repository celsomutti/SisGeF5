unit View.SisGeFPesquisaPessoasV1;

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
  Tview_SisGeFPesquisaPessoas = class(TForm)
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
    fdPesquisa: TFDQuery;
    fdPesquisaCOD_CADASTRO: TIntegerField;
    fdPesquisaNUM_CNPJ: TStringField;
    fdPesquisaDES_RAZAO_SOCIAL: TStringField;
    fdPesquisaNOM_FANTASIA: TStringField;
    fdPesquisaNUM_IE: TStringField;
    fdPesquisaNUM_IEST: TStringField;
    fdPesquisades_funcao: TStringField;
    fdPesquisaNUM_CNH: TStringField;
    fdPesquisaNUM_REGISTRO_CNH: TStringField;
    fdPesquisaDES_STATUS: TStringField;
    gridPesquisaDBTableView1COD_CADASTRO: TcxGridDBColumn;
    gridPesquisaDBTableView1NUM_CNPJ: TcxGridDBColumn;
    gridPesquisaDBTableView1DES_RAZAO_SOCIAL: TcxGridDBColumn;
    gridPesquisaDBTableView1NOM_FANTASIA: TcxGridDBColumn;
    gridPesquisaDBTableView1NUM_IE: TcxGridDBColumn;
    gridPesquisaDBTableView1NUM_IEST: TcxGridDBColumn;
    gridPesquisaDBTableView1des_funcao: TcxGridDBColumn;
    gridPesquisaDBTableView1NUM_CNH: TcxGridDBColumn;
    gridPesquisaDBTableView1NUM_REGISTRO_CNH: TcxGridDBColumn;
    gridPesquisaDBTableView1DES_STATUS: TcxGridDBColumn;
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
    FView: String;
  end;

var
  view_SisGeFPesquisaPessoas: Tview_SisGeFPesquisaPessoas;

implementation

{$R *.dfm}

uses Common.Utils, Data.SisGeF;

{ Tview_PesquisaEntregadoresExpressas }

procedure Tview_SisGeFPesquisaPessoas.actionExpandirGridExecute(Sender: TObject);
begin
  gridPesquisaDBTableView1.ViewData.Expand(True);
end;

procedure Tview_SisGeFPesquisaPessoas.actionFecharExecute(Sender: TObject);
begin
  iID := 0;
  sNome := '';
  fdpesquisa.Filtered := False;
  ModalResult := mrCancel;
end;

procedure Tview_SisGeFPesquisaPessoas.actionLimparExecute(Sender: TObject);
begin
  buttonEditTextoPesquisar.Clear;
end;

procedure Tview_SisGeFPesquisaPessoas.actionOKExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure Tview_SisGeFPesquisaPessoas.actionPesquisarExecute(Sender: TObject);
begin
  PesquisaEntregador(FormulaFilro(buttonEditTextoPesquisar.Text));
end;

procedure Tview_SisGeFPesquisaPessoas.actionRetrairGridExecute(Sender: TObject);
begin
  gridPesquisaDBTableView1.ViewData.Collapse(True);
end;

procedure Tview_SisGeFPesquisaPessoas.buttonEditTextoPesquisarEnter(Sender: TObject);
begin
  buttonOK.Default := False;
end;

procedure Tview_SisGeFPesquisaPessoas.buttonEditTextoPesquisarPropertiesChange(Sender: TObject);
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

procedure Tview_SisGeFPesquisaPessoas.checkBoxBarraGruposPropertiesChange(Sender: TObject);
begin
  SetGroup(checkBoxBarraGrupos.Checked);
end;

procedure Tview_SisGeFPesquisaPessoas.dsPesquisaStateChange(Sender: TObject);
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

procedure Tview_SisGeFPesquisaPessoas.FormShow(Sender: TObject);
begin
  StartForm;
end;

function Tview_SisGeFPesquisaPessoas.FormulaFilro(sTexto: String): String;
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
    'Caso deseje visualizar todos os registros clique OK, porém, esse processo pode ser lento.';
    if Application.MessageBox(PChar(sMensagem), 'Atenção!', MB_OKCANCEL + MB_ICONWARNING) = IDCANCEL then
    begin
      sFiltro := 'NONE';
    end;
  end
  else
  begin
    if comboBoxOutrosCampos.ItemIndex = 0 then
    begin
      sFiltro := 'des_razao_social like ' + QuotedStr('%' +  sTexto + '%') + ' or nom_fantasia like ' +
                 QuotedStr('%' + sTexto + '%') + ' or num_cnpj like ' + QuotedStr('%' +  sTexto + '%') +
                 ' or num_ie like ' + QuotedStr('%' +  sTexto + '%') + ' or num_iest like ' +
                 QuotedStr('%' +  sTexto + '%') + ' or num_cnh like ' + QuotedStr('%' +  sTexto + '%') +
                 ' or num_registro_cnh like ' + QuotedStr('%' +  sTexto + '%');
      if fFuncoes.ENumero(sTexto) then
      begin
        if sFiltro <> '' then
        begin
          sFiltro := sFiltro + ' or ';
        end;
        sFiltro := sFiltro + 'cod_cadastro like ' + sTexto
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
        sFiltro := 'num_iest like ' + QuotedStr('%' +  sTexto + '%');
      end else if comboBoxOutrosCampos.ItemIndex = 3 then
      begin
        sFiltro := 'num_cnh like ' + QuotedStr('%' +  sTexto + '%');
      end else if comboBoxOutrosCampos.ItemIndex = 4 then
      begin
        sFiltro := 'num_registro_cnh like ' + QuotedStr('%' +  sTexto + '%');
      end;
    end;
  end;
  fFuncoes.Free;
  Result := sFiltro;
end;

procedure Tview_SisGeFPesquisaPessoas.gridPesquisaDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  actionOKExecute(Sender);
end;

procedure Tview_SisGeFPesquisaPessoas.gridPesquisaDBTableView1DblClick(Sender: TObject);
begin
   actionOKExecute(Sender);
end;

procedure Tview_SisGeFPesquisaPessoas.gridPesquisaEnter(Sender: TObject);
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

procedure Tview_SisGeFPesquisaPessoas.PesquisaEntregador(sFiltro: String);
var
  FConexao : TConexao;
begin
  if sFiltro = 'NONE' then
  begin
    Exit;
  end;
  FConexao := TConexao.Create;
  if fdPesquisa.Active then
  begin
    fdPesquisa.Close;
  end;
  fdPesquisa.Connection := FConexao.GetConn;
  FConexao.Free;
  fdPesquisa.SQL.Clear;
  fdPesquisa.SQL.Text := 'select * from ' + FView;
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

procedure Tview_SisGeFPesquisaPessoas.SetGroup(bFlag: Boolean);
begin
  gridPesquisaDBTableView1.OptionsView.GroupByBox := bFlag;
  gridPesquisaDBTableView1.OptionsCustomize.ColumnGrouping := bFlag;
end;

procedure Tview_SisGeFPesquisaPessoas.StartForm;
begin
  iID := 0;
  SetGroup(checkBoxBarraGrupos.Checked);
end;

end.
