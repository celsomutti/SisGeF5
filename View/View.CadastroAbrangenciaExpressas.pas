unit View.CadastroAbrangenciaExpressas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  cxFilterControl, cxDBFilterControl, System.Actions, Vcl.ActnList, dxActivityIndicator, cxProgressBar, dxLayoutControlAdapters,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxStyles, cxCustomData, Data.DB, cxDBData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, cxGridCustomView, cxGridCustomTableView,
  cxGridCustomLayoutView, cxGridLayoutView, cxGridDBLayoutView, cxGridLevel, cxGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxGridViewLayoutContainer, cxGridTableView, cxGridDBTableView, cxTextEdit, cxMaskEdit, cxButtonEdit,
  cxGridInplaceEditForm, Control.AbrangenciaExpressas, Thread.ImportaAbrangencia, Vcl.ExtCtrls, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  Tview_CadastroAbrangenciaExpressas = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    labelTitle: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    filterAbrangencia: TcxDBFilterControl;
    dxLayoutItem2: TdxLayoutItem;
    actionListAbrangencia: TActionList;
    actionIncluir: TAction;
    actionEditar: TAction;
    actionExcluir: TAction;
    actionGravar: TAction;
    actionExportar: TAction;
    actionFiltrar: TAction;
    actionFechar: TAction;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    progresso: TcxProgressBar;
    dxLayoutItem3: TdxLayoutItem;
    indicador: TdxActivityIndicator;
    dxLayoutItem4: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    actionLimpar: TAction;
    actionFiltroAvancado: TAction;
    actionLocalizar: TAction;
    actionCancelarFiltro: TAction;
    cxButton3: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    PopupMenu: TPopupMenu;
    Incluir1: TMenuItem;
    Editar1: TMenuItem;
    Excluir1: TMenuItem;
    Exportar1: TMenuItem;
    gridAbrangenciaLevel1: TcxGridLevel;
    gridAbrangencia: TcxGrid;
    dxLayoutItem8: TdxLayoutItem;
    dsAbrangencia: TDataSource;
    memTableAgrangencia: TFDMemTable;
    memTableAgrangenciaid_registro: TIntegerField;
    memTableAgrangencianum_cep: TStringField;
    memTableAgrangenciades_prazo: TStringField;
    memTableAgrangenciadom_zona: TStringField;
    memTableAgrangenciacod_tipo: TIntegerField;
    memTableAgrangenciades_logradouro: TStringField;
    memTableAgrangenciades_bairro: TStringField;
    memTableAgrangenciacod_cliente: TIntegerField;
    gridAbrangenciaDBTableView1: TcxGridDBTableView;
    gridAbrangenciaDBTableView1id_registro: TcxGridDBColumn;
    gridAbrangenciaDBTableView1num_cep: TcxGridDBColumn;
    gridAbrangenciaDBTableView1des_prazo: TcxGridDBColumn;
    gridAbrangenciaDBTableView1dom_zona: TcxGridDBColumn;
    gridAbrangenciaDBTableView1cod_tipo: TcxGridDBColumn;
    gridAbrangenciaDBTableView1des_logradouro: TcxGridDBColumn;
    gridAbrangenciaDBTableView1des_bairro: TcxGridDBColumn;
    gridAbrangenciaDBTableView1cod_cliente: TcxGridDBColumn;
    dxLayoutGroup7: TdxLayoutGroup;
    parametro: TcxButtonEdit;
    dxLayoutItem9: TdxLayoutItem;
    actionRestaurar: TAction;
    cxButton4: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    cxButton5: TcxButton;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    actionimportar: TAction;
    cxButton6: TcxButton;
    dxLayoutItem12: TdxLayoutItem;
    OpenDialog: TOpenDialog;
    Timer: TTimer;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    clientes: TcxLookupComboBox;
    dxLayoutItem13: TdxLayoutItem;
    arquivo: TcxButtonEdit;
    dxLayoutItem14: TdxLayoutItem;
    actionAbrir: TAction;
    actionLimparArquivo: TAction;
    dsCliente: TDataSource;
    dxLayoutGroup10: TdxLayoutGroup;
    cxButton7: TcxButton;
    dxLayoutItem15: TdxLayoutItem;
    cxButton8: TcxButton;
    dxLayoutItem16: TdxLayoutItem;
    actionExecutarImportacao: TAction;
    actionCancelarImportacao: TAction;
    procedure actionFecharExecute(Sender: TObject);
    procedure actionFiltroAvancadoExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionLocalizarExecute(Sender: TObject);
    procedure actionFiltrarExecute(Sender: TObject);
    procedure actionRestaurarExecute(Sender: TObject);
    procedure actionIncluirExecute(Sender: TObject);
    procedure actionEditarExecute(Sender: TObject);
    procedure actionExcluirExecute(Sender: TObject);
    procedure dsAbrangenciaStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actionimportarExecute(Sender: TObject);
    procedure actionAbrirExecute(Sender: TObject);
    procedure actionExecutarImportacaoExecute(Sender: TObject);
    procedure actionCancelarImportacaoExecute(Sender: TObject);
  private
    { Private declarations }
    procedure StartForm; // rotina de incialização de alguns paâmetros do form
    procedure CloseForm; // rotina de finalização de form
    procedure ClearFilter; // rotina de limpeza e reset do filtro
    function FormulaFiltro(sParametro: string): string; // função que retorna a expressão do filtro a partir do parâmetro informado
    procedure LocalizaCEP(sFiltro: string); // rotina que recebe o filtro formulado e realiza a pesquisa na tabela
    procedure ImportData(sFile: string; icliente: integer); // rotina de importação de dados de planilha
    procedure UpdateDashboard; // rotina de acompanhamento do processo e importação da planilha
    procedure AbrirArquivo; // rotina para excução do dialog box para abrir o arquivo de planilha para importação
    procedure ClearFileName; // rotina para limpar o nome do arquivo no campo
    procedure ProcessaClientes; // rotina que popula a tabela temporária de clientes da empresa
  public
    { Public declarations }
  end;

var
  view_CadastroAbrangenciaExpressas: Tview_CadastroAbrangenciaExpressas;
  sSQLOld: String;
  planilha : Thread_ImportaAbrangencia;

implementation

{$R *.dfm}

uses Data.SisGeF;

{ Tview_CadastroAbrangenciaExpressas }

procedure Tview_CadastroAbrangenciaExpressas.AbrirArquivo;
var
  sFile: String;
begin
  if not OpenDialog.Execute() then
    Exit;
  sFile := OpenDialog.FileName;
  arquivo.Text := sFile;
end;

procedure Tview_CadastroAbrangenciaExpressas.actionAbrirExecute(Sender: TObject);
begin
  AbrirArquivo;
end;

procedure Tview_CadastroAbrangenciaExpressas.actionCancelarImportacaoExecute(Sender: TObject);
begin
  arquivo.Clear;
  dxLayoutGroup4.MakeVisible;
end;

procedure Tview_CadastroAbrangenciaExpressas.actionEditarExecute(Sender: TObject);
begin
  memTableAgrangencia.Edit;
end;

procedure Tview_CadastroAbrangenciaExpressas.actionExcluirExecute(Sender: TObject);
begin
  memTableAgrangencia.Delete;
end;

procedure Tview_CadastroAbrangenciaExpressas.actionExecutarImportacaoExecute(Sender: TObject);
begin
  ImportData(arquivo.Text, clientes.EditValue);
end;

procedure Tview_CadastroAbrangenciaExpressas.actionFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_CadastroAbrangenciaExpressas.actionFiltrarExecute(Sender: TObject);
begin
  LocalizaCEP(filterAbrangencia.FilterText);
end;

procedure Tview_CadastroAbrangenciaExpressas.actionFiltroAvancadoExecute(Sender: TObject);
begin
  dxLayoutGroup3.MakeVisible;
end;

procedure Tview_CadastroAbrangenciaExpressas.actionimportarExecute(Sender: TObject);
begin
  dxLayoutGroup8.MakeVisible;
end;

procedure Tview_CadastroAbrangenciaExpressas.actionIncluirExecute(Sender: TObject);
begin
  memTableAgrangencia.Insert;
end;

procedure Tview_CadastroAbrangenciaExpressas.actionLocalizarExecute(Sender: TObject);
begin
  LocalizaCEP(FormulaFiltro(parametro.Text));
end;

procedure Tview_CadastroAbrangenciaExpressas.actionRestaurarExecute(Sender: TObject);
begin
  LocalizaCEP(sSQLOld);
end;

procedure Tview_CadastroAbrangenciaExpressas.ClearFileName;
begin
  arquivo.Clear;
end;

procedure Tview_CadastroAbrangenciaExpressas.ClearFilter;
begin
  parametro.Clear;
  filterAbrangencia.Clear;
  memTableAgrangencia.Active := False;
end;

procedure Tview_CadastroAbrangenciaExpressas.CloseForm;
begin
  memTableAgrangencia.Active := False;
end;

procedure Tview_CadastroAbrangenciaExpressas.dsAbrangenciaStateChange(Sender: TObject);
begin
if dsAbrangencia.State = dsInactive then
  begin
    actionIncluir.Enabled := True;
    actionEditar.Enabled := False;
    actionExportar.Enabled := False;
    actionFiltrar.Enabled := True;
    actionLimpar.Enabled := False;
    actionFiltroAvancado.Enabled := True;
    actionLocalizar.Enabled := True;
    actionCancelarFiltro.Enabled := False;
    actionimportar.Enabled := True;
  end
  else if dsAbrangencia.State = dsInsert then
  begin
    actionIncluir.Enabled := False;
    actionEditar.Enabled := False;
    actionExportar.Enabled := False;
    actionFiltrar.Enabled := False;
    actionLimpar.Enabled := False;
    actionFiltroAvancado.Enabled := False;
    actionLocalizar.Enabled := True;
    actionCancelarFiltro.Enabled := False;
    actionimportar.Enabled := False;
  end
  else if dsAbrangencia.State = dsEdit then
  begin
    actionIncluir.Enabled := False;
    actionEditar.Enabled := False;
    actionExportar.Enabled := False;
    actionFiltrar.Enabled := False;
    actionLimpar.Enabled := False;
    actionFiltroAvancado.Enabled := False;
    actionLocalizar.Enabled := False;
    actionCancelarFiltro.Enabled := False;
    actionimportar.Enabled := False;
  end
  else if dsAbrangencia.State = dsBrowse then
  begin
    actionIncluir.Enabled := True;
    actionEditar.Enabled := True;
    actionExportar.Enabled := True;
    actionFiltrar.Enabled := True;
    actionLimpar.Enabled := True;
    actionFiltroAvancado.Enabled := True;
    actionLocalizar.Enabled := True;
    actionCancelarFiltro.Enabled := False;
    actionimportar.Enabled := True;
  end;
end;

procedure Tview_CadastroAbrangenciaExpressas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CloseForm;
  Action := caFree;
  view_CadastroAbrangenciaExpressas := nil;
end;

procedure Tview_CadastroAbrangenciaExpressas.FormShow(Sender: TObject);
begin
  StartForm;
end;

function Tview_CadastroAbrangenciaExpressas.FormulaFiltro(sParametro: string): string;
var
  sMensagem: String;
  sFiltro: String;
begin
  Result := '';
  sFiltro := '';
  if sParametro = '' then
  begin
    sMensagem := 'O campo de parâmetro a localizar não foi preenchido!. ' +
    'Caso deseje visualizar todos os CEPs disponíveis clique OK, porém, esse processo pode ser lento.';
    if Application.MessageBox(PChar(sMensagem), 'Atenção!', MB_OKCANCEL + MB_ICONWARNING) = IDCANCEL then
    begin
      sFiltro := 'NONE';
    end;
  end
  else
  begin
    sFiltro := 'id_registro like ' + sParametro +  ' and num_cep like ' + '"%' +  sParametro + '%"' +
               '"%' + sParametro + '%"' + ' or des_logradouro like ' + '"%' +  sParametro + '%"' +
               ' or des_bairro like ' + '"%' + sParametro + '%"';
  end;

  Result := sFiltro;
end;

procedure Tview_CadastroAbrangenciaExpressas.ImportData(sFile: string; icliente: integer);
var
  sMensagem : String;
begin
  planilha := Thread_ImportaAbrangencia.Create(True);

  if sFile.IsEmpty then
  begin
    Application.MessageBox('Informe o arquivo!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;

  if icliente = -1 then
  begin
    Application.MessageBox('Informe o cliente!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;

  if not FileExists(sfile) then
  begin
    sMensagem := 'Arquivo ' + sFile  + ' não foi encontrado!';
    Application.MessageBox(PChar(sMensagem), 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  sMensagem := 'Confirma a importação do arquivo ' + sFile  + ' ?';
  if Application.MessageBox(PChar(sMensagem), 'Importação', MB_YESNO + MB_ICONQUESTION) = IDNO then
    Exit;
  planilha.Arquivo := sFile;
  planilha.Cliente := icliente;
  planilha.Priority := tpNormal;
  Timer.Enabled := True;
  indicador.Active := True;
  dxLayoutGroup5.Visible := True;
  planilha.Start;
end;

procedure Tview_CadastroAbrangenciaExpressas.LocalizaCEP(sFiltro: string);
var
  FAbrangencia : TAbrangenciaExpressasControl;
  aParam : Array of variant;
begin
  try
    FAbrangencia := TAbrangenciaExpressasControl.Create;
    memTableAgrangencia.Active := False;
    sSQLOld := '';
    SetLength(aParam,2);
    if sFiltro = 'NONE' then
    begin
      aParam := ['FILTRO', ''];
    end
    else
    begin
      aParam := ['FILTRO', sFiltro]
    end;
    if FAbrangencia.Search(aParam) then
    begin
      sSQLOld := sFiltro;
      Data_Sisgef.mtbRoteirosLivres.Data := FAbrangencia.Abrangencia.Query;
      gridAbrangencia.SetFocus;
    end
    else
    begin
      Application.MessageBox('Nenhum registro encontrado!', 'Atenção', MB_OK + MB_ICONWARNING);
    end;
  finally
    Finalize(aParam);
    FAbrangencia.Abrangencia.Query.Active := False;
    FAbrangencia.Abrangencia.Query.Connection.Connected := False;
    FAbrangencia.Free;
  end;
end;

procedure Tview_CadastroAbrangenciaExpressas.ProcessaClientes;
begin
  Data_Sisgef.PopulaClientesEmpresa;
  Data_Sisgef.mtbClientesEmpresa.Insert;
  Data_Sisgef.mtbClientesEmpresacod_cliente.AsInteger := 0;
  Data_Sisgef.mtbClientesEmpresanom_cliente.AsString := 'TODOS';
  Data_Sisgef.mtbClientesEmpresadom_check.AsInteger := 0;
  Data_Sisgef.mtbClientesEmpresa.Post;
  Data_Sisgef.mtbClientesEmpresa.First;
end;

procedure Tview_CadastroAbrangenciaExpressas.StartForm;
begin
  labelTitle.Caption := Self.Caption;
  ProcessaClientes;
end;

procedure Tview_CadastroAbrangenciaExpressas.UpdateDashboard;
begin
  if not planilha.Processo then
  begin
    Timer.Enabled := False;
    indicador.Active := False;
    progresso.Position := planilha.Progresso;
    if planilha.Cancelar then
      Application.MessageBox('Importação Cancelada!', 'Atenção', MB_OK + MB_ICONEXCLAMATION)
    else
      Application.MessageBox('Importação concluída!', 'Atenção', MB_OK + MB_ICONINFORMATION);
    progresso.Position := 0;
    dxLayoutGroup5.Visible := False;
    planilha.Free;
  end
  else
  begin
    progresso.Position := planilha.Progresso;
  end;
end;

end.
