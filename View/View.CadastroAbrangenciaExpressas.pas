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
  cxDBLookupEdit, cxDBLookupComboBox, cxImageComboBox;

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
    memTableAbrangencia: TFDMemTable;
    memTableAbrangenciaid_registro: TIntegerField;
    memTableAbrangencianum_cep: TStringField;
    memTableAbrangenciades_prazo: TStringField;
    memTableAbrangenciadom_zona: TStringField;
    memTableAbrangenciacod_tipo: TIntegerField;
    memTableAbrangenciades_logradouro: TStringField;
    memTableAbrangenciades_bairro: TStringField;
    memTableAbrangenciacod_cliente: TIntegerField;
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
    memTableAbrangenciadom_ckeck: TIntegerField;
    gridAbrangenciaDBTableView1dom_ckeck: TcxGridDBColumn;
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
    procedure TimerTimer(Sender: TObject);
    procedure gridAbrangenciaDBTableView1NavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure actionExportarExecute(Sender: TObject);
    procedure dsAbrangenciaUpdateData(Sender: TObject);
    procedure memTableAbrangenciaAfterScroll(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actionLimparExecute(Sender: TObject);
    procedure actionGravarExecute(Sender: TObject);
    procedure memTableAbrangenciaBeforePost(DataSet: TDataSet);
    procedure memTableAbrangenciaBeforeEdit(DataSet: TDataSet);
    procedure memTableAbrangenciaBeforeInsert(DataSet: TDataSet);
    procedure memTableAbrangenciaAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    function FormulaFiltro(sParametro: string): string; // função que retorna a expressão do filtro a partir do parâmetro informado
    function Validateinsert(): boolean; // função que valida a inserção do regitro
    procedure StartForm; // rotina de incialização de alguns paâmetros do form
    procedure CloseForm; // rotina de finalização de form
    procedure ClearFilter; // rotina de limpeza e reset do filtro
    procedure LocalizaCEP(sFiltro: string); // rotina que recebe o filtro formulado e realiza a pesquisa na tabela
    procedure ImportData(sFile: string; icliente: integer); // rotina de importação de dados de planilha
    procedure UpdateDashboard; // rotina de acompanhamento do processo e importação da planilha
    procedure AbrirArquivo; // rotina para excução do dialog box para abrir o arquivo de planilha para importação
    procedure ClearFileName; // rotina para limpar o nome do arquivo no campo
    procedure ProcessaClientes; // rotina que popula a tabela temporária de clientes da empresa
    procedure ExcludeData; // marca registro para ser excluido;
    procedure ExportData; // rotina que exporta os dados da grade
    procedure SaveData; // salva os dados da grado no banco de dados
  public
    { Public declarations }
  end;

var
  view_CadastroAbrangenciaExpressas: Tview_CadastroAbrangenciaExpressas;
  sSQLOld: String;
  planilha : Thread_ImportaAbrangencia;

implementation

{$R *.dfm}

uses Data.SisGeF, Common.Utils, Common.ENum;

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
  clientes.ItemIndex := -1;
  dxLayoutGroup4.MakeVisible;
end;

procedure Tview_CadastroAbrangenciaExpressas.actionEditarExecute(Sender: TObject);
begin
  memTableAbrangencia.Edit;
end;

procedure Tview_CadastroAbrangenciaExpressas.actionExcluirExecute(Sender: TObject);
begin
  ExcludeData;
end;

procedure Tview_CadastroAbrangenciaExpressas.actionExecutarImportacaoExecute(Sender: TObject);
begin
  ImportData(arquivo.Text, clientes.EditValue);
end;

procedure Tview_CadastroAbrangenciaExpressas.actionExportarExecute(Sender: TObject);
begin
  ExportData;
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

procedure Tview_CadastroAbrangenciaExpressas.actionGravarExecute(Sender: TObject);
begin
  SaveData;
end;

procedure Tview_CadastroAbrangenciaExpressas.actionimportarExecute(Sender: TObject);
begin
  dxLayoutGroup8.MakeVisible;
end;

procedure Tview_CadastroAbrangenciaExpressas.actionIncluirExecute(Sender: TObject);
begin
  memTableAbrangencia.Insert;
end;

procedure Tview_CadastroAbrangenciaExpressas.actionLimparExecute(Sender: TObject);
begin
  ClearFilter;
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

  if actionGravar.Enabled then
  begin
    if Application.MessageBox('Existem dados pendentes de gravação! Deseja limpar os dados sem gravar?', 'Atenção', MB_YESNO + MB_ICONQUESTION) = IDNO then
      Exit;
  end;
  parametro.Clear;
  filterAbrangencia.Clear;
  memTableAbrangencia.Active := False;
end;

procedure Tview_CadastroAbrangenciaExpressas.CloseForm;
begin
  memTableAbrangencia.Active := False;
  Data_Sisgef.mtbClientesEmpresa.Active := False;
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

procedure Tview_CadastroAbrangenciaExpressas.dsAbrangenciaUpdateData(Sender: TObject);
begin
  actionGravar.Enabled := True;
  actionRestaurar.Enabled := True;
end;

procedure Tview_CadastroAbrangenciaExpressas.ExcludeData;
var
  sMensagem: String;
  i, iId : Integer;
begin
  for i := 0 to Pred(gridAbrangenciaDBTableView1.Controller.SelectedRecordCount) do
  begin
    iId := StrToIntDef(gridAbrangenciaDBTableView1.Controller.SelectedRows[i].DisplayTexts[1], 0);
    if memTableAbrangencia.Locate('id_registro',iID,[]) then
    begin
      if memTableAbrangenciadom_ckeck.AsInteger = -1 then
      begin
        memTableAbrangencia.Tag := -1;
        memTableAbrangencia.Edit;
        memTableAbrangenciadom_ckeck.AsInteger := 0;
        memTableAbrangencia.Post;
        memTableAbrangencia.Tag := 0;
      end
      else
      begin
        memTableAbrangencia.Tag := -1;
        memTableAbrangencia.Edit;
        memTableAbrangenciadom_ckeck.AsInteger := -1;
        memTableAbrangencia.Post;
        memTableAbrangencia.Tag := 0;
      end;
    end;
  end;
end;

procedure Tview_CadastroAbrangenciaExpressas.ExportData;
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

      fnUtil.ExportarDados(gridAbrangencia,Data_Sisgef.SaveDialog.FileName);

    end;
  finally
    fnUtil.Free;
  end;
end;

procedure Tview_CadastroAbrangenciaExpressas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CloseForm;
  Action := caFree;
  view_CadastroAbrangenciaExpressas := nil;
end;

procedure Tview_CadastroAbrangenciaExpressas.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if actionGravar.Enabled then
  begin
    CanClose := Application.MessageBox('Existem dados pendentes de gravação! Deseja sair sem gravar?', 'Atenção', MB_YESNO + MB_ICONQUESTION) = IDYES;
  end;
end;

procedure Tview_CadastroAbrangenciaExpressas.FormShow(Sender: TObject);
begin
  StartForm;
end;

function Tview_CadastroAbrangenciaExpressas.FormulaFiltro(sParametro: string): string;
var
  sMensagem: String;
  sFiltro: String;
  fnUtil : Common.Utils.TUtils;
begin
  try
    fnUtil := Common.Utils.TUtils.Create;
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
      sFiltro := 'num_cep like ' + '"%' + sParametro + '%"' +
                 ' or des_logradouro like ' + '"%' +  sParametro + '%"' +
                 ' or des_bairro like ' + '"%' + sParametro + '%"';
      if fnUtil.ENumero(sParametro) then
      begin
        sFiltro := SFiltro + ' or id_registro like ' + sParametro;
      end;
    end;

    Result := sFiltro;
  finally
    fnUtil.Free;
  end;
end;

procedure Tview_CadastroAbrangenciaExpressas.gridAbrangenciaDBTableView1NavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  case AButtonIndex of
    16 : ExportData;
    17 : ExcludeData;
  end;
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
    memTableAbrangencia.Active := False;
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
      memTableAbrangencia.Active := True;
      memTableAbrangencia.Tag := -1;
      memTableAbrangencia.CopyDataSet(FAbrangencia.Abrangencia.Query);
      memTableAbrangencia.Tag := 0;
      dxLayoutGroup4.MakeVisible;
      gridAbrangencia.SetFocus;
    end
    else
    begin
      Application.MessageBox('Nenhum registro encontrado!', 'Atenção', MB_OK + MB_ICONWARNING);
    end;
    actionRestaurar.Enabled := False;
    actionGravar.Enabled := False;
  finally
    Finalize(aParam);
    FAbrangencia.Abrangencia.Query.Active := False;
    FAbrangencia.Abrangencia.Query.Connection.Connected := False;
    FAbrangencia.Free;
  end;
end;

procedure Tview_CadastroAbrangenciaExpressas.memTableAbrangenciaAfterInsert(DataSet: TDataSet);
begin
  memTableAbrangenciaid_registro.AsInteger := 0;
  memTableAbrangenciacod_tipo.AsInteger := -1;
  memTableAbrangenciacod_cliente.AsInteger := -1;
end;

procedure Tview_CadastroAbrangenciaExpressas.memTableAbrangenciaAfterScroll(DataSet: TDataSet);
begin
  if memTableAbrangenciadom_ckeck.AsInteger = -1 then
  begin
    actionExcluir.ImageIndex := 64;
    actionExcluir.Caption := 'Restaurar';
    gridAbrangenciaDBTableView1.Navigator.Buttons[17].ImageIndex := 64;
  end
  else
  begin
    actionExcluir.ImageIndex := 4;
    actionExcluir.Caption := 'Excluir';
    gridAbrangenciaDBTableView1.Navigator.Buttons[17].ImageIndex := 4;
  end;
end;

procedure Tview_CadastroAbrangenciaExpressas.memTableAbrangenciaBeforeEdit(DataSet: TDataSet);
begin
  gridAbrangenciaDBTableView1num_cep.Properties.ReadOnly := True;
end;

procedure Tview_CadastroAbrangenciaExpressas.memTableAbrangenciaBeforeInsert(DataSet: TDataSet);
begin
  gridAbrangenciaDBTableView1num_cep.Properties.ReadOnly := False;
end;

procedure Tview_CadastroAbrangenciaExpressas.memTableAbrangenciaBeforePost(DataSet: TDataSet);
begin
  if memTableAbrangencia.Tag = 0 then
  begin
    if not Validateinsert() then
        Abort;
  end;

  if memTableAbrangenciadom_ckeck.AsInteger = 0 then
  begin
    if memTableAbrangenciaid_registro.AsInteger = 0 then
      memTableAbrangenciadom_ckeck.AsInteger := 1
    else
      memTableAbrangenciadom_ckeck.AsInteger := 2;
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

procedure Tview_CadastroAbrangenciaExpressas.SaveData;
var
  FAbrangencia : TAbrangenciaExpressasControl;
  sMensagem: String;
begin
  try
    FAbrangencia := TAbrangenciaExpressasControl.Create;

    if Application.MessageBox('Confirma Gravar as alterações?', 'Gravar', MB_YESNO + MB_ICONQUESTION) = IDNO then
      Exit;
    Screen.Cursor := crHourGlass;
    if not memTableAbrangencia.IsEmpty then
      memTableAbrangencia.First;
    while not memTableAbrangencia.Eof do
    begin
      FAbrangencia.Abrangencia.ID := memTableAbrangenciaid_registro.AsInteger;
      FAbrangencia.Abrangencia.CEP := memTableAbrangencianum_cep.AsString;
      FAbrangencia.Abrangencia.Prazo := memTableAbrangenciades_prazo.AsString;
      FAbrangencia.Abrangencia.Zona := memTableAbrangenciadom_zona.AsString;
      FAbrangencia.Abrangencia.Tipo := memTableAbrangenciacod_tipo.AsInteger;
      FAbrangencia.Abrangencia.Logradouro := memTableAbrangenciades_logradouro.AsString;
      FAbrangencia.Abrangencia.Bairro := memTableAbrangenciades_bairro.AsString;
      FAbrangencia.Abrangencia.Cliente := memTableAbrangenciacod_cliente.AsInteger;
      if memTableAbrangenciadom_ckeck.AsInteger = -1 then
        FAbrangencia.Abrangencia.Acao := tacExcluir
      else if memTableAbrangenciadom_ckeck.AsInteger = 1 then
        FAbrangencia.Abrangencia.Acao := tacIncluir
      else if memTableAbrangenciadom_ckeck.AsInteger = 2 then
        FAbrangencia.Abrangencia.Acao := tacAlterar
      else
        FAbrangencia.Abrangencia.Acao := tacIndefinido;
      if FAbrangencia.Abrangencia.Acao <> tacIndefinido then
      begin
        if not FAbrangencia.Save then
        begin
          sMensagem := 'Erro ao gravar o Roteiro ' + FAbrangencia.Abrangencia.CEP + ' !';
          Application.MessageBox(PChar(sMensagem), 'Atenção', MB_OK + MB_ICONEXCLAMATION);
        end;
      end;
      if FAbrangencia.Abrangencia.Acao = tacExcluir then
      begin
        memTableAbrangencia.Delete;
      end;
      if not memTableAbrangencia.Eof then
        memTableAbrangencia.Next;
    end;
    Application.MessageBox('Registros gravados!', 'Atenção', MB_OK + MB_ICONINFORMATION);
    actionGravar.Enabled := False;
    actionRestaurar.Enabled := False;
  finally
    Screen.Cursor := crDefault;
    FAbrangencia.Free;
  end;
end;

procedure Tview_CadastroAbrangenciaExpressas.StartForm;
begin
  labelTitle.Caption := Self.Caption;
  memTableAbrangencia.Active := True;
  ProcessaClientes;
end;

procedure Tview_CadastroAbrangenciaExpressas.TimerTimer(Sender: TObject);
begin
  UpdateDashboard;
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
    arquivo.Clear;
    clientes.ItemIndex := -1;
    dxLayoutGroup4.MakeVisible;
  end
  else
  begin
    progresso.Position := planilha.Progresso;
  end;
end;

function Tview_CadastroAbrangenciaExpressas.Validateinsert: boolean;
var
  FAbrangencia : TAbrangenciaExpressasControl;
  aParam : Array of variant;
  sFiltro, sMensagem: String;
begin
  try
    Result := False;
    sMensagem := '';
    FAbrangencia := TAbrangenciaExpressasControl.Create;
    if memTableAbrangencianum_cep.AsString.IsEmpty then
    begin
      Application.MessageBox('Informe um CEP!', 'Atenção!', MB_OK + MB_ICONWARNING);
      Exit;
    end;

    if (memTableAbrangencianum_cep.AsString = '00000000') or (Length(memTableAbrangencianum_cep.AsString) < 8) then
    begin
      Application.MessageBox('Informe um CEP válido!', 'Atenção!', MB_OK + MB_ICONWARNING);
      Exit;
    end;

    sFiltro := 'num_cep = ' + memTableAbrangencianum_cep.AsString + ' and cod_tipo = ' + memTableAbrangenciacod_tipo.AsString +
               ' and cod_cliente = ' + memTableAbrangenciacod_cliente.AsString;
    SetLength(aParam,2);
    aParam := ['FILTRO',sFiltro];
    if FAbrangencia.Search(aParam) then
    begin
      sMensagem := 'CEP ' + memTableAbrangencianum_cep.AsString + ' já cadastrado para esse tipo de peso e Cliente!';
      Application.MessageBox(PChar(sMensagem), 'Atenção!', MB_OK + MB_ICONWARNING);
      Exit;
    end;

    if memTableAbrangenciades_prazo.AsString.IsEmpty then
    begin
      Application.MessageBox('Informe o prazo de entrega deste CEP!', 'Atenção!', MB_OK + MB_ICONWARNING);
      Exit;
    end;

    if memTableAbrangenciadom_zona.AsString.IsEmpty then
    begin
      Application.MessageBox('Informe a zona deste CEP!', 'Atenção!', MB_OK + MB_ICONWARNING);
      Exit;
    end;

    if memTableAbrangenciacod_tipo.AsInteger = -1 then
    begin
      Application.MessageBox('Informe o tipo de peso para deste CEP!', 'Atenção!', MB_OK + MB_ICONWARNING);
      Exit;
    end;

        if memTableAbrangenciades_logradouro.AsString.IsEmpty then
    begin
      Application.MessageBox('Informe o logradouro deste CEP!', 'Atenção!', MB_OK + MB_ICONWARNING);
      Exit;
    end;

        if memTableAbrangenciades_bairro.AsString.IsEmpty then
    begin
      Application.MessageBox('Informe bairro deste CEP!', 'Atenção!', MB_OK + MB_ICONWARNING);
      Exit;
    end;

    if memTableAbrangenciacod_cliente.AsInteger = -1 then
    begin
      Application.MessageBox('Informe cliente desta abrangência!', 'Atenção!', MB_OK + MB_ICONWARNING);
      Exit;
    end;

    Result := True;
  finally
    FAbrangencia.Free;
  end;
end;

end.
