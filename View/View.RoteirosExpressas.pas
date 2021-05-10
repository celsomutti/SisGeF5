unit View.RoteirosExpressas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxClasses, dxLayoutContainer, dxLayoutControl, Data.SisGeF, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, System.Actions, Vcl.ActnList, dxLayoutControlAdapters,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxImageComboBox, cxProgressBar,
  Control.RoteirosExpressas, Common.Utils, cxCurrencyEdit, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxButtonEdit, Vcl.ExtCtrls, dxActivityIndicator, Thread.ImportaCEPRoteiro,
  Common.ENum;

type
  Tview_RoteirosExpressas = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    aclRoteirosExpressas: TActionList;
    actPesquisarRoteiros: TAction;
    actImportarRoteiros: TAction;
    actGravarRoteiros: TAction;
    actCancelar: TAction;
    actFechar: TAction;
    tvRoteiros: TcxGridDBTableView;
    lvRoteiros: TcxGridLevel;
    grdRoteiros: TcxGrid;
    dxLayoutItem5: TdxLayoutItem;
    ds: TDataSource;
    tvRoteirosid_roteiro: TcxGridDBColumn;
    tvRoteiroscod_ccep5: TcxGridDBColumn;
    tvRoteirosdes_roteiro: TcxGridDBColumn;
    tvRoteirosnum_cep_inicial: TcxGridDBColumn;
    tvRoteirosnum_cep_final: TcxGridDBColumn;
    tvRoteirosdes_prazo: TcxGridDBColumn;
    tvRoteirosdom_zona: TcxGridDBColumn;
    tvRoteirosdes_sigla: TcxGridDBColumn;
    tvRoteirosdes_logradouro: TcxGridDBColumn;
    tvRoteirosdes_bairro: TcxGridDBColumn;
    tvRoteiroscod_cliente: TcxGridDBColumn;
    progressBar: TcxProgressBar;
    lyiProgresso: TdxLayoutItem;
    OpenDialog: TOpenDialog;
    tvRoteiroscod_leve: TcxGridDBColumn;
    tvRoteiroscod_pesado: TcxGridDBColumn;
    labelTitle: TcxLabel;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    codigoRoteiro: TcxButtonEdit;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    actionLocalizarRoteiro: TAction;
    descricaoRoteiro: TcxTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    dsClientes: TDataSource;
    cxButton2: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    cxLabel1: TcxLabel;
    dxLayoutItem8: TdxLayoutItem;
    actionExportar: TAction;
    actionNovoRoteiro: TAction;
    PopupMenu: TPopupMenu;
    Incluir1: TMenuItem;
    ExcluirCEPdoRoteiro1: TMenuItem;
    actionIncluirCEP: TAction;
    actionExcluirCEP: TAction;
    dxLayoutGroup3: TdxLayoutGroup;
    cxButton6: TcxButton;
    dxLayoutItem11: TdxLayoutItem;
    Timer: TTimer;
    indicador: TdxActivityIndicator;
    tvRoteirosdom_check: TcxGridDBColumn;
    actionRestaurar: TAction;
    Restaurar1: TMenuItem;
    actionSelecionarTudo: TAction;
    Selecionartudo1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actFecharExecute(Sender: TObject);
    procedure actPesquisarRoteirosExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grdRoteirosLayoutChanged(Sender: TcxCustomGrid; AGridView: TcxCustomGridView);
    procedure codigoRoteiroPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure actionLocalizarRoteiroExecute(Sender: TObject);
    procedure actionExportarExecute(Sender: TObject);
    procedure actImportarRoteirosExecute(Sender: TObject);
    procedure actionIncluirCEPExecute(Sender: TObject);
    procedure actionExcluirCEPExecute(Sender: TObject);
    procedure tvRoteirosNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure actGravarRoteirosExecute(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PopupMenuPopup(Sender: TObject);
    procedure actionRestaurarExecute(Sender: TObject);
    procedure actionSelecionarTudoExecute(Sender: TObject);
  private
    { Private declarations }
    procedure StartForm;
    procedure PopulateRoteiros(vRoteiro: Variant);
    procedure PopulateClientes();
    procedure ExportData();
    procedure ImportData();
    procedure Cancelar();
    procedure PesquisaRoteiro();
    procedure IncludeCEP();
    procedure ExcludeCEP();
    procedure SelecinarTudo;
    procedure UpdateDashboard;
    procedure TerminateProcess;
    procedure NovoRoteiro(sRoteiro: string);
    procedure SalvaLista();
    procedure GravarRoteiro;
    procedure GetDescricaoRiteiro(varValue: Variant);
    procedure RestoreItem(sRoteiro, sDescricao: String);
    procedure Modo;
  public
    { Public declarations }
  end;

var
  view_RoteirosExpressas: Tview_RoteirosExpressas;
  planilha : Thread_ImportaCEPRoteiro;
  sLog: String;
  FAcao: TAcao;
implementation

{$R *.dfm}

uses View.PesquisarPessoas, View.Aviso, View.ListaRoteirosLivres;

procedure Tview_RoteirosExpressas.actCancelarExecute(Sender: TObject);
begin
  Cancelar();
end;

procedure Tview_RoteirosExpressas.actFecharExecute(Sender: TObject);
begin
  Perform(WM_CLOSE, 0, 0);
end;

procedure Tview_RoteirosExpressas.actGravarRoteirosExecute(Sender: TObject);
begin
  GravarRoteiro;
end;

procedure Tview_RoteirosExpressas.actImportarRoteirosExecute(Sender: TObject);
begin
  ImportData;
end;

procedure Tview_RoteirosExpressas.actionExcluirCEPExecute(Sender: TObject);
begin
  ExcludeCEP;
end;

procedure Tview_RoteirosExpressas.actionExportarExecute(Sender: TObject);
begin
  ExportData;
end;

procedure Tview_RoteirosExpressas.actionIncluirCEPExecute(Sender: TObject);
begin
  IncludeCEP;
end;

procedure Tview_RoteirosExpressas.actionLocalizarRoteiroExecute(Sender: TObject);
begin
  PesquisaRoteiro;
end;

procedure Tview_RoteirosExpressas.actionRestaurarExecute(Sender: TObject);
begin
  RestoreItem(codigoRoteiro.Text, descricaoRoteiro.Text);
end;

procedure Tview_RoteirosExpressas.actionSelecionarTudoExecute(Sender: TObject);
begin
   SelecinarTudo;
end;

procedure Tview_RoteirosExpressas.actPesquisarRoteirosExecute(Sender: TObject);
begin
  PopulateRoteiros(codigoRoteiro.Text);
end;

procedure Tview_RoteirosExpressas.Cancelar;
begin
  Data_Sisgef.mtbRoteirosExpressas.Close;
  codigoRoteiro.Text := '000';
  descricaoRoteiro.Clear;
  codigoRoteiro.SetFocus;
  FAcao := tacIndefinido;
  Modo;
end;

procedure Tview_RoteirosExpressas.codigoRoteiroPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  DisplayValue := FormatFloat('000', DisplayValue);
  GetDescricaoRiteiro(DisplayValue);
end;

procedure Tview_RoteirosExpressas.ExcludeCEP;
var
  sMensagem: String;
  i, iId : Integer;
begin

  if tvRoteiros.Controller.SelectedRowCount > 1 then
    sMensagem := 'Confirma excluir os registros selecionados ?'
  else
    sMensagem := 'Confirma excluir o CEP ' + Data_Sisgef.mtbRoteirosExpressasnum_cep_inicial.AsString + ' do roteiro ' +
    codigoRoteiro.Text + ' ?';
  if Application.MessageBox(PChar(sMensagem), 'Excluir', MB_YESNO + MB_ICONQUESTION) = IDNO then
  Exit;
  for i := 0 to Pred(tvRoteiros.Controller.SelectedRecordCount) do
  begin
    iId := StrToIntDef(tvRoteiros.Controller.SelectedRows[i].DisplayTexts[1], 0);
    if Data_Sisgef.mtbRoteirosExpressas.Locate('id_roteiro',iID,[]) then
    begin
      Data_Sisgef.mtbRoteirosExpressas.Edit;
      Data_Sisgef.mtbRoteirosExpressascod_ccep5.AsString := '000';
      Data_Sisgef.mtbRoteirosExpressasdes_roteiro.Text := '';
      Data_Sisgef.mtbRoteirosExpressasdom_check.AsInteger := -1;
      Data_Sisgef.mtbRoteirosExpressas.Post;
    end;
  end;
end;

procedure Tview_RoteirosExpressas.ExportData;
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

      fnUtil.ExportarDados(grdRoteiros,Data_Sisgef.SaveDialog.FileName);

    end;
  finally
    fnUtil.Free;
  end;
end;

procedure Tview_RoteirosExpressas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Data_Sisgef.mtbRoteirosExpressas.Active then Data_Sisgef.mtbRoteirosExpressas.Close;
  action := caFree;
  view_RoteirosExpressas := nil;
end;

procedure Tview_RoteirosExpressas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if grdRoteiros.IsFocused then Exit;
  If Key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;
end;

procedure Tview_RoteirosExpressas.FormShow(Sender: TObject);
begin
  StartForm;
end;

procedure Tview_RoteirosExpressas.GetDescricaoRiteiro(varValue: Variant);
var
  FRoteiro : TRoteirosExpressasControl;
  sNome, sRoteiro : string;
  aParam: array of variant;
begin
  try
    FRoteiro := TRoteirosExpressasControl.Create;
    sRoteiro := FormatFloat('000', varValue);
    SetLength(aParam, 2);
    aParam := ['CCEP5', sRoteiro];
    if not FRoteiro.Localizar(aParam).IsEmpty then
    begin
      sNome := FRoteiro.Localizar(aParam).FieldByName('des_roteiro').AsString;
    end;
    descricaoRoteiro.Text := sNome;
  finally
    FRoteiro.Free;
  end;
end;

procedure Tview_RoteirosExpressas.GravarRoteiro;
var
  FRoteiro : TRoteirosExpressasControl;
  sMensagem, sRoteiro: String;
begin
  try
    Froteiro := TRoteirosExpressasControl.Create;
    if Application.MessageBox('Confirma Gravar as alterações?', 'Gravar', MB_YESNO + MB_ICONQUESTION) = IDNO then
      Exit;
    if not Data_Sisgef.mtbRoteirosExpressas.IsEmpty then
      Data_Sisgef.mtbRoteirosExpressas.First;
    sRoteiro := codigoRoteiro.Text;
    while not Data_Sisgef.mtbRoteirosExpressas.Eof do
    begin
      FRoteiro.Roteiros.ID := Data_Sisgef.mtbRoteirosExpressasid_roteiro.AsInteger;
      FRoteiro.Roteiros.CCEP5 := Data_Sisgef.mtbRoteirosExpressascod_ccep5.AsString;
      FRoteiro.Roteiros.Descricao := Data_Sisgef.mtbRoteirosExpressasdes_roteiro.AsString;
      FRoteiro.Roteiros.CEPInicial := Data_Sisgef.mtbRoteirosExpressasnum_cep_inicial.AsString;
      FRoteiro.Roteiros.CEPFinal := Data_Sisgef.mtbRoteirosExpressasnum_cep_final.AsString;
      FRoteiro.Roteiros.Prazo := Data_Sisgef.mtbRoteirosExpressasdes_prazo.AsString;
      FRoteiro.Roteiros.Zona := Data_Sisgef.mtbRoteirosExpressasdom_zona.AsString;
      FRoteiro.Roteiros.Tipo := Data_Sisgef.mtbRoteirosExpressascod_tipo.AsInteger;
      FRoteiro.Roteiros.Logradouro := Data_Sisgef.mtbRoteirosExpressasdes_logradouro.AsString;
      FRoteiro.Roteiros.Bairro := Data_Sisgef.mtbRoteirosExpressasdes_bairro.AsString;
      FRoteiro.Roteiros.Cliente := Data_Sisgef.mtbRoteirosExpressascod_cliente.AsInteger;
      FRoteiro.Roteiros.CodigoLeve := Data_Sisgef.mtbRoteirosExpressascod_leve.AsInteger;
      FRoteiro.Roteiros.CodigoPesado := Data_Sisgef.mtbRoteirosExpressascod_pesado.AsInteger;
      FRoteiro.Roteiros.Check := 0;
      FRoteiro.Roteiros.Acao := tacAlterar;
      if FRoteiro.Roteiros.Acao <> tacIndefinido then
      begin
        if not FRoteiro.Gravar then
        begin
          sMensagem := 'Erro ao gravar o Roteiro ' + FRoteiro.Roteiros.CCEP5 + ' (' + FRoteiro.Roteiros.CEPInicial + ') !';
          Application.MessageBox(PChar(sMensagem), 'Atenção', MB_OK + MB_ICONEXCLAMATION);
        end;
      end;
      Data_Sisgef.mtbRoteirosExpressas.Next;
    end;
    PopulateRoteiros(sRoteiro);
  finally
    FRoteiro.Free;
  end;
end;

procedure Tview_RoteirosExpressas.grdRoteirosLayoutChanged(Sender: TcxCustomGrid; AGridView: TcxCustomGridView);
begin
  if tvRoteirosnum_cep_final.Visible then
    tvRoteirosnum_cep_inicial.Caption := 'CEP Inicial'
  else
    tvRoteirosnum_cep_inicial.Caption := 'CEP';
end;

procedure Tview_RoteirosExpressas.ImportData;
var
  sFile, sMensagem : String;
begin
  if not OpenDialog.Execute() then Exit;
  sFile := OpenDialog.FileName;
  if not FileExists(sfile) then
  begin
    sMensagem := 'Arquivo ' + sFile  + ' não foi encontrado!';
    Application.MessageBox(PChar(sMensagem), 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  sMensagem := 'Confirma a importação do arquivo ' + sFile  + ' ?';
  if Application.MessageBox(PChar(sMensagem), 'Importação', MB_YESNO + MB_ICONQUESTION) = IDNO then
    Exit;
  planilha := Thread_ImportaCEPRoteiro.Create(True);
  planilha.Arquivo := sFile;
  planilha.Priority := tpNormal;
  Timer.Enabled := True;
  actionNovoRoteiro.Enabled := False;
  actPesquisarRoteiros.Enabled := False;
  actImportarRoteiros.Enabled := False;
  actCancelar.Enabled := True;
  indicador.Active := True;
  lyiProgresso.Visible := True;
  planilha.Start;
end;

procedure Tview_RoteirosExpressas.IncludeCEP;
begin
  if not Assigned(view_ListaRorteirosLivres) then
  begin
    view_ListaRorteirosLivres := Tview_ListaRorteirosLivres.Create(Application);
  end;
  if view_ListaRorteirosLivres.ShowModal = mrOk then
  begin
    SalvaLista;
  end;
  FreeAndNil(view_ListaRorteirosLivres);
end;

procedure Tview_RoteirosExpressas.Modo;
begin
  if FAcao = tacIndefinido then
  begin
    actGravarRoteiros.Enabled := False;
    actCancelar.Enabled := False;
    actPesquisarRoteiros.Enabled := True;
    actionNovoRoteiro.Enabled := True;
    actionIncluirCEP.Enabled := False;
    tvRoteiros.Navigator.Buttons.CustomButtons[0].Enabled := False;
    actionExcluirCEP.Enabled := False;
    tvRoteiros.Navigator.Buttons.CustomButtons[1].Enabled := False;
    descricaoRoteiro.Clear;
  end
  else if FAcao = tacIncluir then
  begin
    actGravarRoteiros.Enabled := True;
    actCancelar.Enabled := True;
    actPesquisarRoteiros.Enabled := False;
    actionNovoRoteiro.Enabled := False;
    actionIncluirCEP.Enabled := False;
    tvRoteiros.Navigator.Buttons.CustomButtons[0].Enabled := False;
    actionExcluirCEP.Enabled := False;
    tvRoteiros.Navigator.Buttons.CustomButtons[1].Enabled := False;
  end
  else if FAcao = tacPesquisa then
  begin
    actGravarRoteiros.Enabled := True;
    actCancelar.Enabled := True;
    actPesquisarRoteiros.Enabled := False;
    actionNovoRoteiro.Enabled := False;
    actionIncluirCEP.Enabled := True;
    tvRoteiros.Navigator.Buttons.CustomButtons[0].Enabled := True;
    actionExcluirCEP.Enabled := True;
    tvRoteiros.Navigator.Buttons.CustomButtons[1].Enabled := True;
  end;


end;

procedure Tview_RoteirosExpressas.NovoRoteiro(sRoteiro: string);
var
  FRoteiros : TRoteirosExpressasControl;
  sNome: String;
  aParam: Array of variant;
begin
  try
    FRoteiros := TRoteirosExpressasControl.Create;
    if sRoteiro = '000' then
    begin
      Application.MessageBox('Informe um código de roteiro!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    SetLength(aParam,2);
    aParam := ['CCEP5', sRoteiro];
    if not FRoteiros.Localizar(aParam).IsEmpty then
    begin
      Application.MessageBox('Código de roteiro já cadastrado!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    sNome := '';
    while sNome.IsEmpty do
    begin
      if InputQuery('Descrição do Roteiro', 'Descrição', sNome) then
      begin
        if sNome.IsEmpty then
          Application.MessageBox('Informe uma descrição para o roteiro!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
      end
      else
      begin
        sNome := 'NONE';
      end;
    end;
    if sNome = 'NONE' then
    begin
      Exit;
    end;

    SetLength(aParam,2);
    aParam := ['ROTEIRO', sNome];
    if not FRoteiros.Localizar(aParam).IsEmpty then
    begin
      Application.MessageBox('Descrição de roteiro já cadastrada!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    descricaoRoteiro.Text := sNome;
    if not Assigned(view_ListaRorteirosLivres) then
    begin
      view_ListaRorteirosLivres := Tview_ListaRorteirosLivres.Create(Application);
    end;
    view_ListaRorteirosLivres.FCodigoRoteiro := sRoteiro;
    view_ListaRorteirosLivres.FDescricaoRoteiro := sNome;
    if view_ListaRorteirosLivres.ShowModal = mrOk then
    begin
      FAcao := tacPesquisa;
      Modo;
    end;
    FreeAndNil(view_ListaRorteirosLivres);
  finally
    FRoteiros.Free;
  end;
end;

procedure Tview_RoteirosExpressas.PesquisaRoteiro;
var
  sSQL: String;
  sWhere: String;
begin
  try
    sSQL := '';
    sWhere := '';
    if not Assigned(View_PesquisarPessoas) then
    begin
      View_PesquisarPessoas := TView_PesquisarPessoas.Create(Application);
    end;
    View_PesquisarPessoas.dxLayoutItem1.Visible := True;
    View_PesquisarPessoas.dxLayoutItem2.Visible := True;
    sSQL := 'select cod_ccep5 as "Código", des_roteiro as "Descrição" ' +
            'from expressas_roteiros ';
    sWhere := 'where cod_ccep like "%param%" or des_roteiro like "%param%"';

    View_PesquisarPessoas.sSQL := sSQL;
    View_PesquisarPessoas.sWhere := sWhere;
    View_PesquisarPessoas.bOpen := True;
    View_PesquisarPessoas.Caption := 'Localização de Roteiros';
    if View_PesquisarPessoas.ShowModal = mrOK then
    begin
      codigoRoteiro.EditValue := View_PesquisarPessoas.qryPesquisa.Fields[1].AsString;
      descricaoRoteiro.Text := View_PesquisarPessoas.qryPesquisa.Fields[2].AsString;
    end;
  finally
    View_PesquisarPessoas.qryPesquisa.Close;
    View_PesquisarPessoas.tvPesquisa.ClearItems;
    FreeAndNil(View_PesquisarPessoas);
  end;
end;

procedure Tview_RoteirosExpressas.PopulateClientes;
begin
  with Data_Sisgef do
  begin
    PopulaClientesEmpresa;
    mtbClientesEmpresa.Insert;
    mtbClientesEmpresadom_check.AsInteger := 0;
    mtbClientesEmpresacod_cliente.AsInteger := 0;
    mtbClientesEmpresanom_cliente.AsString := 'TODOS';
    mtbClientesEmpresa.Post;
  end;
end;

procedure Tview_RoteirosExpressas.PopulateRoteiros(vRoteiro: Variant);
var
  FRoteiros : TRoteirosExpressasControl;
begin
  try
    FRoteiros := TRoteirosExpressasControl.Create;

    if FormatFloat('000',vRoteiro) = '000' then
    begin
      Application.MessageBox('Informe um roteiro!', 'Atenção!', MB_OK + MB_ICONWARNING);
      Exit;
    end;

    if not FRoteiros.PopulateRoteiros(FormatFloat('000', vRoteiro)) then
    begin
      if Application.MessageBox('Roteiro não cadastrado! Deseja criar um novo?', 'Atenção', MB_YESNO + MB_ICONQUESTION) = IDNO then
      begin
        FAcao := tacIndefinido;
        Modo;
      end
      else
      begin
        NovoRoteiro(FormatFloat('000', vRoteiro));
      end;
    end
    else
    begin
      FAcao := tacPesquisa;
      Modo;
    end;
  finally
    Froteiros.Free;
  end;
end;


procedure Tview_RoteirosExpressas.PopupMenuPopup(Sender: TObject);
begin
  actionRestaurar.Enabled := (Data_Sisgef.mtbRoteirosExpressasdom_check.AsInteger = -1);
end;

procedure Tview_RoteirosExpressas.RestoreItem(sRoteiro, sDescricao: String);
begin
  Data_Sisgef.mtbRoteirosExpressas.Edit;
  Data_Sisgef.mtbRoteirosExpressascod_ccep5.AsString := sRoteiro;
  Data_Sisgef.mtbRoteirosExpressasdes_roteiro.Text := sDescricao;
  Data_Sisgef.mtbRoteirosExpressasdom_check.AsInteger := 0;
  Data_Sisgef.mtbRoteirosExpressas.Post;
end;

procedure Tview_RoteirosExpressas.SalvaLista;
var
  sRoteiro : String;
begin
  if Data_Sisgef.mtbRoteirosLivres.IsEmpty then
    Exit;

  if not Data_Sisgef.mtbRoteirosExpressas.Active then
    Data_Sisgef.mtbRoteirosExpressas.Active := True;

  Screen.Cursor := crHourGlass;
  Data_Sisgef.mtbRoteirosLivres.First;
  while not Data_Sisgef.mtbRoteirosLivres.Eof do
  begin
    if Data_Sisgef.mtbRoteirosLivres.FieldByName('dom_check').asInteger = 1 then
    begin
      sRoteiro := formatfloat('000', codigoRoteiro.EditValue);
      Data_Sisgef.mtbRoteirosExpressas.Insert;
      Data_Sisgef.mtbRoteirosExpressasid_roteiro.AsInteger := Data_Sisgef.mtbRoteirosLivres.FieldByName('id_roteiro').AsInteger;;
      Data_Sisgef.mtbRoteirosExpressascod_ccep5.AsString := sRoteiro;
      Data_Sisgef.mtbRoteirosExpressasdes_roteiro.AsString := descricaoRoteiro.Text;
      Data_Sisgef.mtbRoteirosExpressasnum_cep_inicial.AsString := Data_Sisgef.mtbRoteirosLivres.FieldByName('num_cep_inicial').AsString;
      Data_Sisgef.mtbRoteirosExpressasnum_cep_final.AsString := Data_Sisgef.mtbRoteirosLivres.FieldByName('num_cep_final').AsString;
      Data_Sisgef.mtbRoteirosExpressasdes_prazo.AsString := Data_Sisgef.mtbRoteirosLivres.FieldByName('des_prazo').AsString;
      Data_Sisgef.mtbRoteirosExpressasdom_zona.AsString := Data_Sisgef.mtbRoteirosLivres.FieldByName('dom_zona').AsString;;
      Data_Sisgef.mtbRoteirosExpressascod_tipo.AsInteger := Data_Sisgef.mtbRoteirosLivres.FieldByName('cod_tipo').AsInteger;
      Data_Sisgef.mtbRoteirosExpressasdes_logradouro.AsString := Data_Sisgef.mtbRoteirosLivres.FieldByName('des_logradouro').AsString;
      Data_Sisgef.mtbRoteirosExpressasdes_bairro.AsString := Data_Sisgef.mtbRoteirosLivres.FieldByName('des_bairro').AsString;
      Data_Sisgef.mtbRoteirosExpressascod_cliente.AsInteger := Data_Sisgef.mtbRoteirosLivres.FieldByName('cod_cliente').AsInteger;
      Data_Sisgef.mtbRoteirosExpressascod_leve.AsInteger := Data_Sisgef.mtbRoteirosLivres.FieldByName('cod_leve').AsInteger;
      Data_Sisgef.mtbRoteirosExpressascod_pesado.AsInteger := Data_Sisgef.mtbRoteirosLivres.FieldByName('cod_pesado').AsInteger;
      Data_Sisgef.mtbRoteirosExpressasdom_check.AsInteger := 0;
      Data_Sisgef.mtbRoteirosExpressas.Post;
    end;
    Data_Sisgef.mtbRoteirosLivres.Next;
  end;
  FAcao := tacPesquisa;
  Modo;
  Screen.Cursor := crDefault;
end;

procedure Tview_RoteirosExpressas.SelecinarTudo;
begin
  tvRoteiros.Controller.SelectAllRecords;
end;

procedure Tview_RoteirosExpressas.StartForm;
begin
  labelTitle.Caption := Self.Caption;
  PopulateClientes;
end;

procedure Tview_RoteirosExpressas.TerminateProcess;
begin
  if not planilha.Log.IsEmpty then
    sLog := planilha.Log;
  if Assigned(planilha) then
  begin
    planilha.Free;
  end;
  if not sLog.IsEmpty then
  begin
    if not Assigned(view_Aviso) then
    begin
      view_Aviso := Tview_Aviso.Create(Application);
    end;
    view_Aviso.cxLabel1.Caption := 'LOG de Importação';
    view_Aviso.memAviso.Text := sLog;
    view_Aviso.ShowModal;
    FreeAndNil(view_Aviso);
  end;
end;

procedure Tview_RoteirosExpressas.TimerTimer(Sender: TObject);
begin
  UpdateDashboard;
end;

procedure Tview_RoteirosExpressas.tvRoteirosNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  case AButtonIndex of
    16 : IncludeCEP;
    17 : ExcludeCEP;
    18 : ImportData;
    19 : ExportData;
    20 : SelecinarTudo;
    else
    Exit;
  end;
end;

procedure Tview_RoteirosExpressas.UpdateDashboard;
begin
  if not planilha.Processo then
  begin
    Timer.Enabled := False;
    actionNovoRoteiro.Enabled := True;
    actImportarRoteiros.Enabled := True;
    actCancelar.Enabled := False;
    indicador.Active := False;
    progressBar.Position := planilha.Progresso;
    if planilha.Cancelar then
      Application.MessageBox('Importação Cancelada!', 'Atenção', MB_OK + MB_ICONEXCLAMATION)
    else
      Application.MessageBox('Importação concluída!', 'Atenção', MB_OK + MB_ICONINFORMATION);
    progressBar.Position := 0;
    lyiProgresso.Visible := False;
    TerminateProcess;
  end
  else
  begin
    progressBar.Position := planilha.Progresso;
  end;
end;

end.
