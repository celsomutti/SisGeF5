
unit View.CadastroUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Control.Acessos, Control.Menus, Control.Modulos,
  Control.Sistemas, Control.Usuarios, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxLabel, cxTextEdit, cxMaskEdit, cxButtonEdit, cxCheckBox, cxSpinEdit, cxDropDownEdit, System.Actions,
  Vcl.ActnList, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Data.DB, dxmdaset, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxDBLookupComboBox, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxGridCustomView, cxGrid, FireDAC.Comp.Client, System.DateUtils, service.sistem, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, service.connectionMySQL;

type
  Tview_CadastroUsuarios = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    cxLabel1: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    mskCodigo: TcxMaskEdit;
    dxLayoutItem2: TdxLayoutItem;
    txtNome: TcxTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    txtEMail: TcxTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    txtLogin: TcxTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    edtGrupo: TcxButtonEdit;
    dxLayoutItem6: TdxLayoutItem;
    txtDescricaoGrupo: TcxTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    chkAdministrador: TcxCheckBox;
    dxLayoutItem8: TdxLayoutItem;
    chkSenhaExpira: TcxCheckBox;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    speDias: TcxSpinEdit;
    dxLayoutItem10: TdxLayoutItem;
    chkAtivo: TcxCheckBox;
    dxLayoutItem11: TdxLayoutItem;
    cboNivel: TcxComboBox;
    dxLayoutItem12: TdxLayoutItem;
    aclUsuarios: TActionList;
    actIncluir: TAction;
    actLocalizar: TAction;
    actIncluirGrupo: TAction;
    actCancelar: TAction;
    actAlterarSenha: TAction;
    actConsistirGrupo: TAction;
    actGravar: TAction;
    actFechar: TAction;
    cxButton1: TcxButton;
    dxLayoutItem13: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem14: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxButton4: TcxButton;
    dxLayoutItem16: TdxLayoutItem;
    cxButton5: TcxButton;
    dxLayoutItem17: TdxLayoutItem;
    cxButton6: TcxButton;
    dxLayoutItem18: TdxLayoutItem;
    cxButton7: TcxButton;
    dxLayoutItem19: TdxLayoutItem;
    cxButton8: TcxButton;
    dxLayoutItem20: TdxLayoutItem;
    mtbSistemas: TdxMemData;
    mtbModulos: TdxMemData;
    mtbMenus: TdxMemData;
    mtbAcessos: TdxMemData;
    mtbAcessosCOD_SISTEMA: TIntegerField;
    mtbAcessosCOD_MODULO: TIntegerField;
    mtbAcessosCOD_MENU: TIntegerField;
    mtbAcessosCOD_USUARIO: TIntegerField;
    dsSistema: TDataSource;
    dsModulos: TDataSource;
    dsMenus: TDataSource;
    dsAcessos: TDataSource;
    mtbAcessosDOM_ACESSO: TBooleanField;
    tvAcessos: TcxGridDBTableView;
    lvAcessos: TcxGridLevel;
    grdAcessos: TcxGrid;
    dxLayoutItem21: TdxLayoutItem;
    tvAcessosRecId: TcxGridDBColumn;
    tvAcessosCOD_SISTEMA: TcxGridDBColumn;
    tvAcessosCOD_MODULO: TcxGridDBColumn;
    tvAcessosCOD_MENU: TcxGridDBColumn;
    tvAcessosCOD_USUARIO: TcxGridDBColumn;
    tvAcessosDOM_ACESSO: TcxGridDBColumn;
    ppmOpcoes: TPopupMenu;
    actMarcarTodos: TAction;
    actDesmarcarTodos: TAction;
    MarcarTodos1: TMenuItem;
    Fechar1: TMenuItem;
    actEditar: TAction;
    cxButton9: TcxButton;
    dxLayoutItem22: TdxLayoutItem;
    actPesquisaGrupos: TAction;
    tvPesquisa: TcxGridDBTableView;
    lvPesquisa: TcxGridLevel;
    grdPesquisa: TcxGrid;
    dxLayoutItem23: TdxLayoutItem;
    txtParametro: TcxTextEdit;
    dxLayoutItem24: TdxLayoutItem;
    mtbPesquisa: TdxMemData;
    dsPesquisa: TDataSource;
    actPesquisarUsuarios: TAction;
    cxButton10: TcxButton;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    actRetornar: TAction;
    actSelecionarUsuario: TAction;
    cxButton11: TcxButton;
    dxLayoutItem26: TdxLayoutItem;
    cxButton12: TcxButton;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure actMarcarTodosExecute(Sender: TObject);
    procedure actDesmarcarTodosExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure actIncluirExecute(Sender: TObject);
    procedure actIncluirGrupoExecute(Sender: TObject);
    procedure actLocalizarExecute(Sender: TObject);
    procedure actPesquisaGruposExecute(Sender: TObject);
    procedure chkSenhaExpiraClick(Sender: TObject);
    procedure actPesquisarUsuariosExecute(Sender: TObject);
    procedure actRetornarExecute(Sender: TObject);
    procedure txtParametroEnter(Sender: TObject);
    procedure txtParametroExit(Sender: TObject);
    procedure grdPesquisaEnter(Sender: TObject);
    procedure grdPesquisaExit(Sender: TObject);
    procedure actSelecionarUsuarioExecute(Sender: TObject);
    procedure edtGrupoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure actEditarExecute(Sender: TObject);
    procedure tvPesquisaCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
      AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton7Click(Sender: TObject);
    procedure actAlterarSenhaExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actConsistirGrupoExecute(Sender: TObject);
  private
    { Private declarations }
    FSistem : TSistem;
    FConn : TConnectionMySQL;
    procedure PopulaApoio;
    procedure MarcaTodos(bFlag: Boolean);
    procedure Modo;
    procedure TelaUsuario;
    procedure TelaGrupo;
    procedure PopulaAcessosPadrao;
    procedure ClearFields;
    procedure PesquisarUsuarios;
    procedure PesquisarGrupos;
    procedure SetupCampos;
    procedure SetupClasse;
    procedure Campos(bFlag: Boolean);
    procedure Cancelar;
    procedure ConsistirGrupo(iCodigo: Integer);
    procedure SetupClasseForm;
    procedure AlterarSenha(bFlg: Boolean);
    procedure Gravar;
    procedure Localizar();
    function GravaSenha(): Boolean;
    function GravaAcessos(): Boolean;
    function NomeGrupo(): String;
  public
    { Public declarations }
  end;

var
  view_CadastroUsuarios: Tview_CadastroUsuarios;
  FUsuarios: TUsuarioControl;
  sSenha: String;
  sProximoAcesso: String;
implementation

{$R *.dfm}

uses Common.ENum, Common.Utils, Data.SisGeF, Global.Parametros, View.PesquisarPessoas, View.CadastraSenha;

procedure Tview_CadastroUsuarios.actAlterarSenhaExecute(Sender: TObject);
begin
  AlterarSenha(True);
end;

procedure Tview_CadastroUsuarios.actCancelarExecute(Sender: TObject);
begin
  if Application.MessageBox('Confirma cancelar a operação?', 'Cancelar', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;
  Cancelar;
end;

procedure Tview_CadastroUsuarios.actConsistirGrupoExecute(Sender: TObject);
begin
  if FUsuarios.Usuarios.Grupo >= 0 then ConsistirGrupo(FUsuarios.Usuarios.Grupo);
end;

procedure Tview_CadastroUsuarios.actDesmarcarTodosExecute(Sender: TObject);
begin
  MarcaTodos(False);
end;

procedure Tview_CadastroUsuarios.actEditarExecute(Sender: TObject);
begin
  if FUsuarios.Usuarios.Acao <> tacPesquisa then Exit;
  FUsuarios.Usuarios.Acao := tacAlterar;
  Campos(True);
  Modo;
  txtNome.SetFocus;
end;

procedure Tview_CadastroUsuarios.actFecharExecute(Sender: TObject);
begin
  Perform(WM_CLOSE, 0, 0);
end;

procedure Tview_CadastroUsuarios.actGravarExecute(Sender: TObject);
begin
  Gravar;
end;

procedure Tview_CadastroUsuarios.actIncluirExecute(Sender: TObject);
begin
  ClearFields;
  Campos(True);
  MarcaTodos(False);
  FUsuarios.Usuarios.Acao := tacIncluir;
  TelaUsuario;
  PopulaAcessosPadrao;
  Modo;
  txtNome.SetFocus;
end;

procedure Tview_CadastroUsuarios.actIncluirGrupoExecute(Sender: TObject);
begin
  ClearFields;
  Campos(True);
  MarcaTodos(False);
  FUsuarios.Usuarios.Acao := Common.ENum.tacIncluir;
  Modo;
  FUsuarios.Usuarios.Grupo := -1;
  TelaGrupo;
  PopulaAcessosPadrao;
  txtNome.SetFocus;
end;

procedure Tview_CadastroUsuarios.actLocalizarExecute(Sender: TObject);
begin
  PesquisarUsuarios;
end;

procedure Tview_CadastroUsuarios.actMarcarTodosExecute(Sender: TObject);
begin
  MarcaTodos(True);
end;

procedure Tview_CadastroUsuarios.actPesquisaGruposExecute(Sender: TObject);
begin
  PesquisarGrupos;
end;

procedure Tview_CadastroUsuarios.actPesquisarUsuariosExecute(Sender: TObject);
begin
  PesquisarUsuarios;
end;

procedure Tview_CadastroUsuarios.actRetornarExecute(Sender: TObject);
begin
  if mtbPesquisa.Active then mtbPesquisa.Close;
  dxLayoutGroup2.MakeVisible;
end;

procedure Tview_CadastroUsuarios.actSelecionarUsuarioExecute(Sender: TObject);
begin
  Localizar;
end;

procedure Tview_CadastroUsuarios.AlterarSenha(bFlg: Boolean);
var
  dtData: TDate;
begin
  if not Assigned(view_CadastraSenha) then
  begin
    view_CadastraSenha := Tview_CadastraSenha.Create(Application);
  end;
  view_CadastraSenha.cxPrimeiroAcesso.Checked := bFLg;
  view_CadastraSenha.cxPrimeiroAcesso.Visible := bFlg;
  if view_CadastraSenha.ShowModal = mrOk then
  begin
    sSenha := view_CadastraSenha.cxSenha.Text;
    sProximoAcesso := view_CadastraSenha.cxPrimeiroAcesso.EditValue;
    FUsuarios.Usuarios.Senha := sSenha;
    FUsuarios.Usuarios.PrimeiroAcesso := sProximoAcesso;
    dtData := IncDay(Now(), FUsuarios.Usuarios.DiasExpira);
    FUsuarios.Usuarios.DataSenha := dtData;
    if not FUsuarios.AlteraSenha(FUsuarios.Usuarios) then
    begin
      Application.MessageBox('Erro ao alterar a senha!', 'Erro', MB_OK + MB_ICONERROR);
    end;
  end;
  FreeAndNil(view_CadastraSenha);
end;

procedure Tview_CadastroUsuarios.Campos(bFlag: Boolean);
begin
  txtNome.Properties.ReadOnly := not bFlag;
  txtLogin.Properties.ReadOnly := not bFlag;
  txtEMail.Properties.ReadOnly := not bFlag;
  edtGrupo.Properties.ReadOnly := not bFlag;
  edtGrupo.Properties.Buttons[0].Enabled := bFlag;
  chkAdministrador.Properties.ReadOnly := not bFlag;
  chkSenhaExpira.Properties.ReadOnly := not bFlag;
  chkAtivo.Properties.ReadOnly := not bFlag;
  speDias.Properties.ReadOnly := not bFlag;
  cboNivel.Properties.ReadOnly := not bFlag;
  tvAcessosDOM_ACESSO.Properties.ReadOnly := not bFlag;
  dsAcessos.AutoEdit := bFlag;
end;

procedure Tview_CadastroUsuarios.Cancelar;
begin
  ClearFields;
  Campos(False);
  MarcaTodos(False);
  TelaUsuario;
  FUsuarios.Usuarios.Acao := tacIndefinido;
  Modo;
end;

procedure Tview_CadastroUsuarios.chkSenhaExpiraClick(Sender: TObject);
begin
  speDias.Properties.ReadOnly := not chkSenhaExpira.Checked;
end;

procedure Tview_CadastroUsuarios.ClearFields;
begin
  mskCodigo.EditValue := 0;
  txtNome.Clear;
  txtLogin.Clear;
  txtEMail.Clear;
  edtGrupo.EditValue := 0;
  txtDescricaoGrupo.Clear;
  chkAdministrador.Checked := False;
  chkSenhaExpira.Checked := False;
  chkAtivo.Checked := False;
  speDias.Value := 0;
  cboNivel.ItemIndex := 1;
  PopulaAcessosPadrao;
end;


procedure Tview_CadastroUsuarios.ConsistirGrupo(iCodigo: Integer);
var
  FAcesso: TAcessosControl;
begin
  try
    MarcaTodos(False);
    FAcesso := TAcessosControl.Create;
    if not mtbAcessos.Active then Exit;
    if not mtbAcessos.IsEmpty then mtbAcessos.First;
    while not mtbAcessos.Eof do
    begin
      mtbAcessos.Edit;
      mtbAcessosDOM_ACESSO.AsBoolean := FAcesso.VerificaLogin(mtbAcessosCOD_MENU.AsInteger, iCodigo);
      mtbAcessos.Next;
    end;
  finally
    FAcesso.Free;
  end;
end;

procedure Tview_CadastroUsuarios.cxButton7Click(Sender: TObject);
begin
  ConsistirGrupo(edtGrupo.EditValue);
end;

procedure Tview_CadastroUsuarios.edtGrupoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  FUsuarios.Usuarios.Grupo := DisplayValue;
  txtDescricaoGrupo.Text := NomeGrupo()
end;

procedure Tview_CadastroUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FUsuarios.Free;
  mtbSistemas.Close;
  mtbModulos.Close;
  mtbMenus.Close;
  mtbAcessos.Close;
  Action := caFree;
  view_CadastroUsuarios := nil;
end;

procedure Tview_CadastroUsuarios.FormShow(Sender: TObject);
begin
  FConn := TConnectionMySQL.Create;
  sSenha := '';
  sProximoAcesso := 'N';
  PopulaApoio;
  PopulaAcessosPadrao;
  FUsuarios := TUsuarioControl.Create;
  FUsuarios.Usuarios.Acao := tacIndefinido;
  ClearFields;
  Campos(False);
  Modo;
end;

function Tview_CadastroUsuarios.GravaAcessos: Boolean;
var
  FAcessos: TAcessosControl;
begin
  try
    Result := False;
    FAcessos := TAcessosControl.Create;
    FAcessos.Acessos.Usuario := FUsuarios.Usuarios.Codigo;
    FAcessos.Acessos.Sistema := -1;
    FAcessos.Acessos.Acao := tacExcluir;
    if not FAcessos.Gravar then
    begin
      Application.MessageBox('Erro ao excluir os acessos anteriores!', 'Erro', MB_OK + MB_ICONERROR);
      Exit;
    end;
    if not mtbAcessos.Active then Exit;
    if not mtbAcessos.IsEmpty then mtbAcessos.First;
    while not mtbAcessos.Eof do
    begin
      if mtbAcessosDOM_ACESSO.AsBoolean then
      begin
        FAcessos.Acessos.Sistema := mtbAcessosCOD_SISTEMA.AsInteger;
        FAcessos.Acessos.Modulo := mtbAcessosCOD_MODULO.AsInteger;
        FAcessos.Acessos.Menu := mtbAcessosCOD_MENU.AsInteger;
        FAcessos.Acessos.Usuario := FUsuarios.Usuarios.Codigo;
        Facessos.Acessos.Acao := tacIncluir;
        if not FAcessos.Gravar() then
        begin
          Break;
          Exit;
        end;
      end;
      mtbAcessos.Next;
    end;
    if not mtbAcessos.IsEmpty then mtbAcessos.First;
    Result := True;
  finally
    Facessos.Free;
  end;
end;

procedure Tview_CadastroUsuarios.Gravar;
begin
  if Application.MessageBox('Confirma gravar os dados?', 'Gravar', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;
  if FUsuarios.Usuarios.Acao = tacIncluir then
  begin
    if not GravaSenha() then Exit;
  end;
  SetupClasseForm;
  if FUsuarios.Gravar() then
  begin
    if not GravaAcessos() then
    begin
      Application.MessageBox('Erro ao gravar os acessos!', 'Erro', MB_OK + MB_ICONERROR);
      Exit;
    end;
    mskCodigo.EditValue := FUsuarios.Usuarios.Codigo;
    Application.MessageBox('Dados gravados com sucesso!', 'Gravar', MB_OK + MB_ICONINFORMATION);
    Cancelar;
  end;
end;

function Tview_CadastroUsuarios.GravaSenha: Boolean;
begin
  Result := False;
  if not Assigned(view_CadastraSenha) then
  begin
    view_CadastraSenha := Tview_CadastraSenha.Create(Application);
  end;
  view_CadastraSenha.cxPrimeiroAcesso.Checked := False;
  view_CadastraSenha.cxPrimeiroAcesso.Visible := True;
  if view_CadastraSenha.ShowModal = mrOk then
  begin
    sSenha := view_CadastraSenha.cxSenha.Text;
    sProximoAcesso := view_CadastraSenha.cxPrimeiroAcesso.EditValue;
    Result := True;
  end;
  FreeAndNil(view_CadastraSenha);
end;

procedure Tview_CadastroUsuarios.grdPesquisaEnter(Sender: TObject);
begin
  cxButton12.Default := True;
end;

procedure Tview_CadastroUsuarios.grdPesquisaExit(Sender: TObject);
begin
  cxButton12.Default := False;
end;

procedure Tview_CadastroUsuarios.Localizar;
begin
if not mtbPesquisa.IsEmpty then
  begin
    FUsuarios.Usuarios.Codigo := mtbPesquisa.Fields[1].Value;
    dxLayoutGroup2.MakeVisible;
    SetupClasse;
    SetupCampos;
    Modo;
  end;
end;

procedure Tview_CadastroUsuarios.MarcaTodos(bFlag: Boolean);
begin
  if not mtbAcessos.Active then Exit;
  if mtbAcessos.IsEmpty then Exit;
  mtbAcessos.First;
  while not mtbAcessos.Eof do
  begin
    mtbAcessos.Edit;
    mtbAcessosDOM_ACESSO.AsBoolean := bFlag;
    mtbAcessos.Post;
    mtbAcessos.Next;
  end;
  mtbAcessos.First;
end;

procedure Tview_CadastroUsuarios.Modo;
begin
  if FUsuarios.Usuarios.Acao = Common.ENum.tacIncluir then
  begin
    actIncluir.Enabled := False;
    actIncluirGrupo.Enabled := False;
    actEditar.Enabled := False;
    actLocalizar.Enabled := False;
    actCancelar.Enabled := True;
    actAlterarSenha.Enabled := False;
    actConsistirGrupo.Enabled := False;
    actGravar.Enabled := True;
  end
  else if FUsuarios.Usuarios.Acao = Common.ENum.tacAlterar then
  begin
    actIncluir.Enabled := False;
    actIncluirGrupo.Enabled := False;
    actEditar.Enabled := False;
    actLocalizar.Enabled := False;
    actCancelar.Enabled := True;
    actAlterarSenha.Enabled := False;
    actConsistirGrupo.Enabled := True;
    actGravar.Enabled := True;
  end
  else if FUsuarios.Usuarios.Acao = Common.ENum.tacPesquisa then
  begin
    actIncluir.Enabled := False;
    actIncluirGrupo.Enabled := False;
    actEditar.Enabled := True;
    actLocalizar.Enabled := False;
    actCancelar.Enabled := True;
    actAlterarSenha.Enabled := True;
    actConsistirGrupo.Enabled := False;
    actGravar.Enabled := False;
  end
  else if FUsuarios.Usuarios.Acao = Common.ENum.tacIndefinido then
  begin
    actIncluir.Enabled := True;
    actIncluirGrupo.Enabled := True;
    actEditar.Enabled := False;
    actLocalizar.Enabled := True;
    actCancelar.Enabled := False;
    actAlterarSenha.Enabled := False;
    actConsistirGrupo.Enabled := False;
    actGravar.Enabled := False;
  end;
end;

function Tview_CadastroUsuarios.NomeGrupo: String;
var
  FDQuery: TFDQuery;
  aParam: Array of variant;
begin
  try
    Result := 'NONE';
    FDQuery := FConn.GetQuery;
    SetLength(aParam,2);
    aParam[0] := 'CODIGO';
    aParam[1] := FUsuarios.Usuarios.Grupo;
    FDQuery := FUsuarios.Localizar(aParam);
    Finalize(aParam);
    if not FDQuery.IsEmpty then
    begin
      Result := FDQuery.FieldByName('NOM_USUARIO').AsString;
    end;
    FDQuery.Close;
  finally
    FDQuery.Free;
  end;
end;

procedure Tview_CadastroUsuarios.PesquisarGrupos;
var
  aParam: array of Variant;
  FDQuery : TFDQuery;
begin
  try
    if not Assigned(FDQuery) then FDQuery := FConn.GetQuery;
    SetLength(aParam,3);
    aParam[0] := 'APOIO';
    aParam[1] := 'COD_USUARIO as Código, NOM_USUARIO as Nome';
    aParam[2] := ' WHERE COD_GRUPO = -1';
    FDQuery := FUsuarios.Localizar(aParam);
    Finalize(aParam);
    if not Assigned(View_PesquisarPessoas) then
    begin
      View_PesquisarPessoas := TView_PesquisarPessoas.Create(Application);
    end;
    View_PesquisarPessoas.qryPesquisa.CreateFieldsFromDataSet(FDQuery);
    View_PesquisarPessoas.qryPesquisa.LoadFromDataSet(FDQuery);
    if not FDQuery.IsEmpty then View_PesquisarPessoas.qryPesquisa.First;
    FDQuery.Close;
    View_PesquisarPessoas.tvPesquisa.ClearItems;
    View_PesquisarPessoas.tvPesquisa.DataController.CreateAllItems;
    View_PesquisarPessoas.Caption := View_PesquisarPessoas.Caption + ' de Grupos';
    if View_PesquisarPessoas.ShowModal = mrOk then
    begin
      edtGrupo.EditValue := FDQuery.Fields[0].AsInteger;
      txtDescricaoGrupo.Text := FDQuery.Fields[0].AsString;
    end;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
    FreeAndNil(View_PesquisarPessoas);
  end;
end;

procedure Tview_CadastroUsuarios.PesquisarUsuarios;
var
  aParam: array of Variant;
  FDQuery : TFDQuery;
begin
  try
    if not Assigned(FDQuery) then FDQuery := FConn.GetQuery;
    tvPesquisa.ClearItems;
    tvPesquisa.DataController.CreateAllItems;
    if mtbPesquisa.Active then mtbPesquisa.Close;
    mtbPesquisa.Open;
    SetLength(aParam,3);
    aParam[0] := 'APOIO';
    aParam[1] := 'COD_USUARIO as Código, NOM_USUARIO as Nome, DES_LOGIN as Login, DES_EMAIL AS "E-Mail"';
    if Common.Utils.TUtils.ENumero(txtParametro.Text) then
    begin
      aParam[2] := 'WHERE COD_USUARIO = ' + txtParametro.Text;
    end
    else
    begin
      aParam[2] := 'WHERE NOM_USUARIO LIKE ' + QuotedStr('%' + txtParametro.Text + '%') +
                   ' OR DES_LOGIN LIKE ' + QuotedStr('%' + txtParametro.Text + '%') + ' OR DES_EMAIL LIKE ' +
                   QuotedStr('%' + txtParametro.Text + '%');
    end;
    FDQuery := FUsuarios.Localizar(aParam);
    Finalize(aParam);
    mtbPesquisa.Edit;
    mtbPesquisa.ClearFields;
    mtbPesquisa.CreateFieldsFromDataSet(FDQuery);
    mtbPesquisa.LoadFromDataSet(FDQuery);
    if not mtbPesquisa.IsEmpty then mtbPesquisa.First;
    FDQuery.Close;
    dxLayoutGroup3.MakeVisible;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
    FreeAndNil(View_PesquisarPessoas);
  end;

end;

procedure Tview_CadastroUsuarios.PopulaAcessosPadrao;
var
  FMenus: TMenusControl;
  FDQuery: TFDQuery;
  aParam : Array of variant;
begin
  try
    if mtbAcessos.Active then mtbAcessos.Close;
    mtbAcessos.Open;
    SetLength(aParam,3);
    aParam[0] := 'APOIO';
    aParam[1] := '*';
    aParam[2] := '';
    FMenus := TMenusControl.Create();
    FDQuery := FMenus.Localizar(aParam);
    if not FDQuery.IsEmpty then FDQuery.First;
    while not FDQuery.Eof do
    begin
      mtbAcessos.Insert;
      mtbAcessosCOD_SISTEMA.AsInteger := FDQuery.FieldByName('COD_SISTEMA').AsInteger;
      mtbAcessosCOD_MODULO.AsInteger := FDQuery.FieldByName('COD_MODULO').AsInteger;
      mtbAcessosCOD_MENU.AsInteger := FDQuery.FieldByName('COD_MENU').AsInteger;
      mtbAcessosCOD_USUARIO.AsInteger := 0;
      mtbAcessosDOM_ACESSO.AsBoolean := False;
      mtbAcessos.Post;
      FDQuery.Next
    end;
    mtbAcessos.First;
    FDQuery.Close;
    Finalize(aParam);
    tvAcessos.ViewData.Expand(True);
  finally
    FMenus.Free;
    FDQuery.Free;
  end;
end;

procedure Tview_CadastroUsuarios.PopulaApoio;
var
  FSistemas: TSistemasControl;
  FModulos: TModulosControl;
  FMenus: TMenusControl;
  FDQuery: TFDQuery;
  aParam : Array of variant;
  i: Integer;
begin
  try
    FSistemas := TSistemasControl.Create;
    FModulos := TModulosControl.Create;
    FMenus := TMenusControl.Create;
    mtbSistemas.Open;
    mtbModulos.Open;
    mtbMenus.Open;
    i := 0;
    FDQuery := Fconn.GetQuery;
    SetLength(aParam,3);
    aParam[0] := 'APOIO';
    aParam[1] := '*';
    aParam[2] := '';
    FDQuery := FSistemas.Localizar(aParam);
    mtbSistemas.Open;
    mtbSistemas.CreateFieldsFromDataSet(FDQuery);
    mtbSistemas.LoadFromDataSet(FDQuery);
    FDQuery.Close;
    FDQuery.Connection.Close;
    FDQuery := Fconn.GetQuery;
    mtbModulos.Open;
    FDQuery := FModulos.Localizar(aParam);
    mtbModulos.CreateFieldsFromDataSet(FDQuery);
    mtbModulos.LoadFromDataSet(FDQuery);
    FDQuery.Close;
    FDQuery.Connection.Close;
    mtbMenus.Open;
    FDQuery := Fconn.GetQuery;
    FDQuery := FMenus.Localizar(aParam);
    mtbMenus.CreateFieldsFromDataSet(FDQuery);
    mtbMenus.LoadFromDataSet(FDQuery);
    FDQuery.Close;
    FDQuery.Connection.Close;
    Finalize(aParam);
  finally
    FSistemas.Free;
    FModulos.Free;
    FMenus.Free;
    FDQuery.Free;
    FDQuery.Connection.Free;
  end;
end;

procedure Tview_CadastroUsuarios.SetupCampos;
begin
  mskCodigo.EditValue := FUsuarios.Usuarios.Codigo;
  txtNome.Text := FUsuarios.Usuarios.Nome;
  txtLogin.Text := FUsuarios.Usuarios.Login;
  txtEMail.Text := FUsuarios.Usuarios.EMail;
  edtGrupo.EditValue := FUsuarios.Usuarios.Grupo;
  sSenha := FUsuarios.Usuarios.Senha;
  sProximoAcesso := FUsuarios.Usuarios.PrimeiroAcesso;
  txtDescricaoGrupo.Text := NomeGrupo();
  chkAdministrador.EditValue := FUsuarios.Usuarios.Privilegio;
  chkSenhaExpira.EditValue := FUsuarios.Usuarios.Expira;
  speDias.Value := FUsuarios.Usuarios.DiasExpira;
  chkAtivo.EditValue := FUsuarios.Usuarios.Ativo;
  cboNivel.ItemIndex := FUsuarios.Usuarios.Nivel;
  ConsistirGrupo(FUsuarios.Usuarios.Codigo);
  FUsuarios.Usuarios.Acao := tacPesquisa;
  if FUsuarios.Usuarios.Grupo= -1 then
  begin
    TelaGrupo
  end
  else
  begin
    TelaUsuario;
  end;

end;

procedure Tview_CadastroUsuarios.SetupClasse;
var
  FDQuery: TFDQuery;
  aParam: Array of variant;
begin
  try
    FDQuery := FConn.GetQuery;
    SetLength(aParam,2);
    aParam[0] := 'CODIGO';
    aParam[1] := FUsuarios.Usuarios.Codigo;
    FDQuery := FUsuarios.Localizar(aParam);
    Finalize(aParam);
    if not FDQuery.IsEmpty then
    begin
      FUsuarios.Usuarios.Nome := FDQuery.FieldByName('NOM_USUARIO').AsString;
      FUsuarios.Usuarios.Login := FDQuery.FieldByName('DES_LOGIN').AsString;
      FUsuarios.Usuarios.EMail := FDQuery.FieldByName('DES_EMAIL').AsString;
      FUsuarios.Usuarios.Senha := FDQuery.FieldByName('PWD').AsString;
      FUsuarios.Usuarios.Grupo := FDQuery.FieldByName('COD_GRUPO').AsInteger;
      FUsuarios.Usuarios.Privilegio := FDQuery.FieldByName('DOM_PRIVILEGIO').AsString;
      FUsuarios.Usuarios.Expira := FDQuery.FieldByName('DOM_EXPIRA').AsString;
      FUsuarios.Usuarios.DiasExpira := FDQuery.FieldByName('QTD_DIAS_EXPIRA').AsInteger;
      FUsuarios.Usuarios.PrimeiroAcesso := FDQuery.FieldByName('DOM_PRIMEIRO_ACESSO').AsString;
      FUsuarios.Usuarios.Ativo := FDQuery.FieldByName('DOM_ATIVO').AsString;
      FUsuarios.Usuarios.DataSenha := FDQuery.FieldByName('DAT_SENHA').AsDateTime;
      FUsuarios.Usuarios.Nivel := FDQuery.FieldByName('COD_NIVEL').AsInteger;
      FUsuarios.Usuarios.Executor := FDQuery.FieldByName('NOM_EXECUTOR').AsString;
      FUsuarios.Usuarios.Manutencao := FDQuery.FieldByName('DAT_MANUTENCAO').AsDateTime;
      FUsuarios.Usuarios.Acao := tacPesquisa;
    end;
    FDQuery.Close;
  finally
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;
end;

procedure Tview_CadastroUsuarios.SetupClasseForm;
var
  dtData: TDate;
begin
  FUsuarios.Usuarios.Nome := txtNome.Text;
  FUsuarios.Usuarios.Login := txtLogin.Text;
  FUsuarios.Usuarios.EMail := txtEMail.Text;
  FUsuarios.Usuarios.Senha := sSenha;
  FUsuarios.Usuarios.Grupo := edtGrupo.EditValue;
  FUsuarios.Usuarios.Privilegio := chkAdministrador.EditValue;
  FUsuarios.Usuarios.Expira := chkSenhaExpira.EditValue;
  FUsuarios.Usuarios.DiasExpira := speDias.Value;
  FUsuarios.Usuarios.PrimeiroAcesso := sProximoAcesso;
  FUsuarios.Usuarios.Ativo := chkAtivo.EditValue;
  dtData := IncDay(Now(), FUsuarios.Usuarios.DiasExpira);
  FUsuarios.Usuarios.DataSenha := dtData;
  FUsuarios.Usuarios.Nivel := cboNivel.ItemIndex;
  FUsuarios.Usuarios.Executor := Global.Parametros.pUser_Name;
  FUsuarios.Usuarios.Manutencao := Now();
end;

procedure Tview_CadastroUsuarios.TelaGrupo;
begin
  dxLayoutItem5.Visible := False;
  dxLayoutItem4.Visible := False;
  dxLayoutItem18.Visible := False;
  dxLayoutAutoCreatedGroup1.Visible := False;
  dxLayoutAutoCreatedGroup2.Visible := False;
end;

procedure Tview_CadastroUsuarios.TelaUsuario;
begin
  dxLayoutItem5.Visible := True;
  dxLayoutItem4.Visible := True;
  dxLayoutItem18.Visible := True;
  dxLayoutAutoCreatedGroup1.Visible := True;
  dxLayoutAutoCreatedGroup2.Visible := True;
end;

procedure Tview_CadastroUsuarios.txtParametroEnter(Sender: TObject);
begin
  cxButton10.Default := True;
end;

procedure Tview_CadastroUsuarios.tvPesquisaCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  actSelecionarUsuarioExecute(Sender);
end;

procedure Tview_CadastroUsuarios.txtParametroExit(Sender: TObject);
begin
  cxButton10.Default := False;
end;

end.
