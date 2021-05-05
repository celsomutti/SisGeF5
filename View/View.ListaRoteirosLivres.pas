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
    procedure FormShow(Sender: TObject);
    procedure actionOKExecute(Sender: TObject);
    procedure actionCancelarExecute(Sender: TObject);
    procedure actionFiltrarExecute(Sender: TObject);
    procedure actionLimparExecute(Sender: TObject);
  private
    { Private declarations }
    procedure StartForm;
    procedure CloseForm;
    procedure ClearFilter;
    procedure PesquisaCEP(sFiltro: String);
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

procedure Tview_ListaRorteirosLivres.PesquisaCEP(sFiltro: String);
var
  fdPesquisa : TFDQuery;
  sSQL : string;
begin
  try
    fdPesquisa := FConexao.ReturnQuery;
    Data_Sisgef.mtbRoteirosLivres.Active := False;

    sSQL := 'select id_roteiro, cod_ccep5, des_roteiro, num_cep_inicial, num_cep_final, des_prazo, dom_zona, cod_tipo, ' +
            'des_logradouro, des_bairro, cod_cliente, cod_leve, cod_pesado from expressas_roteiros';
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

end.
