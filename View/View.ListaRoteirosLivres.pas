unit View.ListaRoteirosLivres;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  System.Actions, Vcl.ActnList, cxTextEdit, cxMaskEdit, cxButtonEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox, cxImageComboBox,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, DAO.Conexao, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  Tview_ListaRorteirosLivres = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    labelTitle: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    parametro: TcxButtonEdit;
    dxLayoutItem2: TdxLayoutItem;
    actionListFiltro: TActionList;
    actionFiltrar: TAction;
    actionLimpar: TAction;
    gridCEPDBTableView1: TcxGridDBTableView;
    gridCEPLevel1: TcxGridLevel;
    gridCEP: TcxGrid;
    dxLayoutItem3: TdxLayoutItem;
    dsFiltro: TDataSource;
    gridCEPDBTableView1id_roteiro: TcxGridDBColumn;
    gridCEPDBTableView1num_cep_inicial: TcxGridDBColumn;
    gridCEPDBTableView1num_cep_final: TcxGridDBColumn;
    gridCEPDBTableView1des_prazo: TcxGridDBColumn;
    gridCEPDBTableView1cod_tipo: TcxGridDBColumn;
    gridCEPDBTableView1des_logradouro: TcxGridDBColumn;
    gridCEPDBTableView1des_bairro: TcxGridDBColumn;
    dxLayoutGroup2: TdxLayoutGroup;
    actionOK: TAction;
    actionCancelar: TAction;
    cxButton1: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    actionMarcarSelecionados: TAction;
    actionDesmarcarTudo: TAction;
    PopupMenu: TPopupMenu;
    MarcarTudo1: TMenuItem;
    DesmarcarTudo1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure actionOKExecute(Sender: TObject);
    procedure actionCancelarExecute(Sender: TObject);
    procedure actionFiltrarExecute(Sender: TObject);
    procedure actionLimparExecute(Sender: TObject);
    procedure gridCEPDBTableView1NavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure parametroPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure gridCEPDBTableView1id_roteiroHeaderClick(Sender: TObject);
  private
    { Private declarations }
    procedure StartForm;
    procedure CloseForm;
    procedure ClearFilter;
    procedure ExportData;
    procedure PesquisaCEP(sFiltro: String);
    procedure CheckAll;
    procedure UnCheckAll;
    function FormulaFiltro(sTexto: String): String;

  public
    { Public declarations }
    sSQL : String;
    sWhere: String;
  end;

var
  view_ListaRorteirosLivres: Tview_ListaRorteirosLivres;
  FConexao : TConexao;

implementation

{$R *.dfm}

uses Data.SisGeF, Control.RoteirosExpressas, Common.Utils;

{ Tview_ListaRorteirosLivres }

procedure Tview_ListaRorteirosLivres.actionCancelarExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tview_ListaRorteirosLivres.actionFiltrarExecute(Sender: TObject);
begin
  PesquisaCEP(FormulaFiltro(parametro.Text));
end;

procedure Tview_ListaRorteirosLivres.actionLimparExecute(Sender: TObject);
begin
  ClearFilter;
end;

procedure Tview_ListaRorteirosLivres.actionOKExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure Tview_ListaRorteirosLivres.CheckAll;
begin
  if Data_Sisgef.mtbRoteirosLivres.IsEmpty then
    Exit;
  Data_Sisgef.mtbRoteirosLivres.First;
  Screen.Cursor := crHourGlass;
  while not Data_Sisgef.mtbRoteirosLivres.Eof do
  begin
    Data_Sisgef.mtbRoteirosLivres.Edit;
    Data_Sisgef.mtbRoteirosLivres.FieldByName('dom_check').AsInteger := 1;
    Data_Sisgef.mtbRoteirosLivres.Post;
    Data_Sisgef.mtbRoteirosLivres.Next;
  end;
  Screen.Cursor := crDefault;
  Data_Sisgef.mtbRoteirosLivres.First;
end;

procedure Tview_ListaRorteirosLivres.ClearFilter;
begin
  parametro.Clear;
  Data_Sisgef.mtbRoteirosLivres.Active := False;
end;

procedure Tview_ListaRorteirosLivres.CloseForm;
begin
  Data_Sisgef.mtbRoteirosLivres.Active := False;
  FConexao.Free;
end;

procedure Tview_ListaRorteirosLivres.ExportData;
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

      fnUtil.ExportarDados(gridCEP,Data_Sisgef.SaveDialog.FileName);

    end;
  finally
    fnUtil.Free;
  end;
end;

procedure Tview_ListaRorteirosLivres.FormShow(Sender: TObject);
begin
  StartForm;
end;

function Tview_ListaRorteirosLivres.FormulaFiltro(sTexto: String): String;
var
  sMensagem: String;
  sFiltro: String;
begin
  Result := '';
  sFiltro := '';
  if sTexto = '' then
  begin
    sMensagem := 'O campo de texto a pesquisar não foi preenchido!. ' +
    'Caso deseje visualizar todos os CEPs disponíveis clique OK, porém, esse processo pode ser lento.';
    if Application.MessageBox(PChar(sMensagem), 'Atenção!', MB_OKCANCEL + MB_ICONWARNING) = IDCANCEL then
    begin
      sFiltro := 'NONE';
    end;
  end
  else
  begin
    sFiltro := 'num_cep_inicial like ' + '"%' +  sTexto + '%"' + ' or num_cep_final like ' +
               '"%' + sTexto + '%"' + ' or des_logradouro like ' + '"%' +  sTexto + '%"' +
               ' or des_bairro like ' + '"%' + sTexto + '%"';
  end;

  Result := sFiltro;
end;

procedure Tview_ListaRorteirosLivres.gridCEPDBTableView1id_roteiroHeaderClick(Sender: TObject);
begin
  if Application.MessageBox('Confirma selecionar todos os registros ?', 'Selecionar Todos', MB_YESNO + MB_ICONQUESTION) = IDNO then
    Exit;
  CheckAll;
end;

procedure Tview_ListaRorteirosLivres.gridCEPDBTableView1NavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer;
  var ADone: Boolean);
begin
  case AButtonIndex of
    16 : ExportData;
    17 : CheckAll;
  end;
end;

procedure Tview_ListaRorteirosLivres.parametroPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  actionFiltrarExecute(Sender);
end;

procedure Tview_ListaRorteirosLivres.PesquisaCEP(sFiltro: String);
var
  fdPesquisa : TFDQuery;
  sSQL : string;
begin
  try
    fdPesquisa := FConexao.ReturnQuery;
    Data_Sisgef.mtbRoteirosLivres.Active := False;

    sSQL := 'select id_roteiro, cod_ccep5, des_roteiro, num_cep_inicial, num_cep_final, des_prazo, dom_zona, cod_tipo, ' +
            'des_logradouro, des_bairro, cod_cliente, cod_leve, cod_pesado, dom_check from expressas_roteiros';
    if sFiltro = 'NONE' then
    begin
      Exit;
    end;
    fdPesquisa.SQL.Add(sSQL);
    if not sFiltro.IsEmpty then
    begin
      fdpesquisa.SQL.Add('where ' + sFiltro + ' and cod_ccep5 = "000"');
    end
    else
    begin
      fdpesquisa.SQL.Add('where cod_ccep5 = "000"');
    end;
    fdPesquisa.Open();
    if not fdPesquisa.IsEmpty then
    begin
      Data_Sisgef.mtbRoteirosLivres.Data := fdPesquisa.Data;
      gridCEP.SetFocus;
    end;
  finally
    fdPesquisa.Active := False;
    fdPesquisa.Free;
  end;
end;

procedure Tview_ListaRorteirosLivres.StartForm;
begin
  labelTitle.Caption := Self.Caption;
  FConexao := TConexao.Create;
end;

procedure Tview_ListaRorteirosLivres.UnCheckAll;
begin
  if Data_Sisgef.mtbRoteirosLivres.IsEmpty then
    Exit;
  Data_Sisgef.mtbRoteirosLivres.First;
  Screen.Cursor := crHourGlass;
  while not Data_Sisgef.mtbRoteirosLivres.Eof do
  begin
    Data_Sisgef.mtbRoteirosLivres.Edit;
    Data_Sisgef.mtbRoteirosLivres.FieldByName('dom_check').AsInteger := 0;
    Data_Sisgef.mtbRoteirosLivres.Post;
    Data_Sisgef.mtbRoteirosLivres.Next;
  end;
  Screen.Cursor := crDefault;
  Data_Sisgef.mtbRoteirosLivres.First;
end;

end.
