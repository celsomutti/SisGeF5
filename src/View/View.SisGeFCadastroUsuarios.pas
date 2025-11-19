unit View.SisGeFCadastroUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, Vcl.ExtCtrls, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxCheckBox, cxSpinEdit, Control.Usuarios, Data.SisGeF, System.Actions, Vcl.ActnList,
  Common.Utils, service.sistem, service.connectionMySQL, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Control.Acessos,
  Common.ENum, cxButtonEdit;

type
  TviewSisGefCadastroUsuarios = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    lgpTabbed: TdxLayoutGroup;
    lgpFooter: TdxLayoutGroup;
    lgpPesquisa: TdxLayoutGroup;
    lgpParameters: TdxLayoutGroup;
    cboParametros: TcxComboBox;
    dxLayoutItem1: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    txeValor: TcxTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    lgpGrade: TdxLayoutGroup;
    lgpButtons: TdxLayoutGroup;
    cxButton3: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    grdUsuariosDBTableView1: TcxGridDBTableView;
    grdUsuariosLevel1: TcxGridLevel;
    grdUsuarios: TcxGrid;
    dxLayoutItem7: TdxLayoutItem;
    mtbUsuartios: TFDMemTable;
    mtbUsuartioscod_usuario: TIntegerField;
    mtbUsuartiosnom_usuario: TStringField;
    mtbUsuartiosdes_login: TStringField;
    mtbUsuartiosdes_email: TStringField;
    mtbUsuartiosdom_ativo: TStringField;
    dsUsuarios: TDataSource;
    grdUsuariosDBTableView1cod_usuario: TcxGridDBColumn;
    grdUsuariosDBTableView1nom_usuario: TcxGridDBColumn;
    grdUsuariosDBTableView1des_login: TcxGridDBColumn;
    grdUsuariosDBTableView1des_email: TcxGridDBColumn;
    grdUsuariosDBTableView1dom_ativo: TcxGridDBColumn;
    cxButton5: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    aclUsuarios: TActionList;
    actNovo: TAction;
    actEditar: TAction;
    actGRupos: TAction;
    actGravar: TAction;
    actCancelar: TAction;
    actExportar: TAction;
    actSair: TAction;
    actPesquisa: TAction;
    lgpCadastro: TdxLayoutGroup;
    cxButton6: TcxButton;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    speCodigo: TcxSpinEdit;
    dxLayoutItem10: TdxLayoutItem;
    mskCPF: TcxMaskEdit;
    dxLayoutItem11: TdxLayoutItem;
    txeNome: TcxTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    lgpLogin: TdxLayoutGroup;
    lgpConfig: TdxLayoutGroup;
    txeLogin: TcxTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    cbxNivel: TcxComboBox;
    dxLayoutItem14: TdxLayoutItem;
    txeEMail: TcxTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    ckbAdministrador: TcxCheckBox;
    dxLayoutItem16: TdxLayoutItem;
    ckbSenhaExpira: TcxCheckBox;
    dxLayoutItem18: TdxLayoutItem;
    speDiasExpira: TcxSpinEdit;
    dxLayoutItem20: TdxLayoutItem;
    ckbPrimeiroAcesso: TcxCheckBox;
    dxLayoutItem21: TdxLayoutItem;
    lcbGrupoUsuario: TcxLookupComboBox;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    ckbStatus: TcxCheckBox;
    dxLayoutItem23: TdxLayoutItem;
    mtbGrupos: TFDMemTable;
    mtbGruposcod_usuario: TIntegerField;
    mtbGruposnom_usuario: TStringField;
    cxButton7: TcxButton;
    dxLayoutItem24: TdxLayoutItem;
    cxButton8: TcxButton;
    dxLayoutItem25: TdxLayoutItem;
    lgpGrupos: TdxLayoutGroup;
    actNovoGrupo: TAction;
    actGravarGrupo: TAction;
    dxLayoutGroup4: TdxLayoutGroup;
    lcbGrupos: TcxLookupComboBox;
    dxLayoutItem26: TdxLayoutItem;
    dsGrupos: TDataSource;
    cxButton9: TcxButton;
    dxLayoutItem27: TdxLayoutItem;
    actListarAcessos: TAction;
    cxButton10: TcxButton;
    dxLayoutItem28: TdxLayoutItem;
    mtbAcessos: TFDMemTable;
    mtbAcessoscod_sistema: TIntegerField;
    mtbAcessosdes_sistema: TStringField;
    mtbAcessoscod_modulo: TIntegerField;
    mtbAcessosdes_modulo: TStringField;
    mtbAcessoscod_menu: TIntegerField;
    mtbAcessosdes_menu: TStringField;
    dxLayoutGroup5: TdxLayoutGroup;
    gridAcessosDBTableView1: TcxGridDBTableView;
    gridAcessosLevel1: TcxGridLevel;
    gridAcessos: TcxGrid;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dsAcessos: TDataSource;
    gridAcessosDBTableView1dom_acesso: TcxGridDBColumn;
    gridAcessosDBTableView1cod_sistema: TcxGridDBColumn;
    gridAcessosDBTableView1des_sistema: TcxGridDBColumn;
    gridAcessosDBTableView1cod_modulo: TcxGridDBColumn;
    gridAcessosDBTableView1des_modulo: TcxGridDBColumn;
    gridAcessosDBTableView1cod_menu: TcxGridDBColumn;
    gridAcessosDBTableView1des_menu: TcxGridDBColumn;
    actUsuarios: TAction;
    cxButton11: TcxButton;
    dxLayoutItem30: TdxLayoutItem;
    cxButton12: TcxButton;
    dxLayoutItem31: TdxLayoutItem;
    mtbAcessosdom_acesso: TIntegerField;
    actSelecionarTudo: TAction;
    actLimparRegistros: TAction;
    dxLayoutGroup7: TdxLayoutGroup;
    cxButton13: TcxButton;
    dxLayoutItem32: TdxLayoutItem;
    cxButton14: TcxButton;
    dxLayoutItem33: TdxLayoutItem;
    cboStatus: TcxComboBox;
    dxLayoutItem34: TdxLayoutItem;
    bteSenha: TcxButtonEdit;
    dxLayoutItem35: TdxLayoutItem;
    bteConfirmarSenha: TcxButtonEdit;
    dxLayoutItem17: TdxLayoutItem;
    actMostrarSenha: TAction;
    actMostrarConfirmacao: TAction;
    mtbAcessosUsuario: TFDMemTable;
    mtbAcessosUsuariocod_menu: TIntegerField;
    mtbAcessosUsuariocod_usuario: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSairExecute(Sender: TObject);
    procedure actPesquisaExecute(Sender: TObject);
    procedure actExportarExecute(Sender: TObject);
    procedure ckbStatusPropertiesChange(Sender: TObject);
    procedure actGRuposExecute(Sender: TObject);
    procedure actUsuariosExecute(Sender: TObject);
    procedure actListarAcessosExecute(Sender: TObject);
    procedure actNovoGrupoExecute(Sender: TObject);
    procedure actSelecionarTudoExecute(Sender: TObject);
    procedure actLimparRegistrosExecute(Sender: TObject);
    procedure actGravarGrupoExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actMostrarSenhaExecute(Sender: TObject);
    procedure actMostrarConfirmacaoExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure lcbGrupoUsuarioPropertiesChange(Sender: TObject);
    procedure ckbAdministradorPropertiesChange(Sender: TObject);
    procedure lcbGruposPropertiesChange(Sender: TObject);
    procedure grdUsuariosDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
      AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    FConn : TConnectionMySQL;
    FUsuarios : TUsuarioControl;
    Fsistem : TSistem;
    FAcessos : TAcessosControl;
    FAtivo : String;
    FAcao : TAcao;
    procedure Pesquisar;
    procedure Exportar;
    procedure PopularGrupos;
    procedure PopulaAcessos(iID: integer);
    procedure ConsisteAcessos;
    procedure NovoUsuario;
    procedure NovoGrupo;
    procedure EditarUsuario;
    procedure ListaAcessos(iUser: integer);
    procedure SelecaoTodosAcessos(iTag: integer);
    procedure SalvaGrupo;
    procedure ClearGrupos;
    procedure SetupFieldsForm;
    procedure SetupFieldsTable;
    procedure SalvaUsuario;

    function ProcuraNomeGrupo(sGrupo: string): boolean;
  public
    { Public declarations }
  end;

var
  viewSisGefCadastroUsuarios: TviewSisGefCadastroUsuarios;

implementation

{$R *.dfm}

uses View.SisGeFNomeGrupo;

procedure TviewSisGefCadastroUsuarios.actCancelarExecute(Sender: TObject);
begin
  FAcao := tacIndefinido;
  FUsuarios.ClearFields;
  SetupFieldsForm;
  lgpTabbed.ItemIndex := 0;
end;

procedure TviewSisGefCadastroUsuarios.actEditarExecute(Sender: TObject);
begin
  EditarUsuario;
end;

procedure TviewSisGefCadastroUsuarios.actExportarExecute(Sender: TObject);
begin
  Exportar;
end;

procedure TviewSisGefCadastroUsuarios.actGravarExecute(Sender: TObject);
begin
  SalvaUsuario;
end;

procedure TviewSisGefCadastroUsuarios.actGravarGrupoExecute(Sender: TObject);
begin
  SalvaGrupo;
end;

procedure TviewSisGefCadastroUsuarios.actGRuposExecute(Sender: TObject);
begin
  lgpTabbed.ItemIndex := 2
end;

procedure TviewSisGefCadastroUsuarios.actLimparRegistrosExecute(Sender: TObject);
begin
  SelecaoTodosAcessos(0);
end;

procedure TviewSisGefCadastroUsuarios.actListarAcessosExecute(Sender: TObject);
begin
  if lcbGrupos.Text <> '' then
  begin
    PopulaAcessos(lcbGrupos.EditValue);
    ListaAcessos(lcbGrupos.EditValue);
  end;
end;

procedure TviewSisGefCadastroUsuarios.actMostrarConfirmacaoExecute(Sender: TObject);
begin
    if bteConfirmarSenha.Properties.EchoMode = eemNormal then
  begin
    bteConfirmarSenha.Properties.EchoMode := eemPassword;
    bteConfirmarSenha.Properties.Buttons[0].ImageIndex := 88;
  end
  else
  begin
    bteConfirmarSenha.Properties.EchoMode := eemNormal;
    bteConfirmarSenha.Properties.Buttons[0].ImageIndex := 87;
  end;
end;

procedure TviewSisGefCadastroUsuarios.actMostrarSenhaExecute(Sender: TObject);
begin
  if bteSenha.Properties.EchoMode = eemNormal then
  begin
    bteSenha.Properties.EchoMode := eemPassword;
    bteSenha.Properties.Buttons[0].ImageIndex := 88;
  end
  else
  begin
    bteSenha.Properties.EchoMode := eemNormal;
    bteSenha.Properties.Buttons[0].ImageIndex := 87;
  end;
end;

procedure TviewSisGefCadastroUsuarios.actNovoExecute(Sender: TObject);
begin
  NovoUsuario;
end;

procedure TviewSisGefCadastroUsuarios.actNovoGrupoExecute(Sender: TObject);
begin
  NovoGrupo;
end;

procedure TviewSisGefCadastroUsuarios.actPesquisaExecute(Sender: TObject);
begin
  Pesquisar;
end;

procedure TviewSisGefCadastroUsuarios.actSairExecute(Sender: TObject);
begin
  Close;
end;

procedure TviewSisGefCadastroUsuarios.actSelecionarTudoExecute(Sender: TObject);
begin
  SelecaoTodosAcessos(1);
end;

procedure TviewSisGefCadastroUsuarios.actUsuariosExecute(Sender: TObject);
begin
  ClearGrupos;
  lgpTabbed.ItemIndex := 0;
end;

procedure TviewSisGefCadastroUsuarios.ckbAdministradorPropertiesChange(Sender: TObject);
begin
  if ckbAdministrador.Checked then
    lcbGrupoUsuario.ItemIndex := -1;
end;

procedure TviewSisGefCadastroUsuarios.ckbStatusPropertiesChange(Sender: TObject);
begin

  if ckbStatus.Checked then
  begin
    ckbStatus.Caption := 'ATIVO';
  end
  else
  begin
    ckbStatus.Caption := 'INATIVO';
  end;
end;

procedure TviewSisGefCadastroUsuarios.ClearGrupos;
begin
  lcbGrupos.ItemIndex := -1;
  mtbAcessos.Active := False;
end;

procedure TviewSisGefCadastroUsuarios.ConsisteAcessos;
begin
  if mtbAcessos.IsEmpty then
    Exit;
  if mtbAcessosUsuario.IsEmpty then
    Exit;
  mtbAcessos.First;
  while not mtbAcessos.Eof do
  begin
    if mtbAcessosUsuario.Locate('cod_menu', mtbAcessoscod_menu.AsInteger, []) then
    begin
      mtbAcessos.Edit;
      mtbAcessosdom_acesso.AsInteger := 1;
      mtbAcessos.Post;
    end;
    mtbAcessos.Next;
  end;
  mtbAcessos.First;
end;

procedure TviewSisGefCadastroUsuarios.EditarUsuario;
var
  aParam: array of variant;
  FQuery: TFDQuery;
begin
  try
    if mtbUsuartios.IsEmpty then
      Exit;
    FUsuarios.ClearFields;
    SetLength(aParam,2);
    aParam[0] := 'CODIGO';
    aParam[1] := mtbUsuartioscod_usuario.Value.ToString;
    FQuery := FUsuarios.Localizar(aParam);
    if FQuery.IsEmpty then
      Exit;
    FUsuarios.SetupFields(FQuery);
    SetupFieldsForm;
    FAcao := tacAlterar;
    FUsuarios.Usuarios.Acao := FAcao;
    lgpTabbed.ItemIndex := 1;
  finally
    FQuery.Connection.Connected := False;
  end;
end;

procedure TviewSisGefCadastroUsuarios.Exportar;
var
  FUtil : TUtils;
  sMensagem: string;
begin
  FUtil := TUtils.Create;
  try
    if mtbUsuartios.IsEmpty then
    begin
      Application.MessageBox('Não há dados para exportar!', 'Ateñção', MB_OK + MB_ICONEXCLAMATION);
      Exit;
    end;
    if Data_Sisgef.SaveDialog.Execute() then
    begin
      if FileExists(Data_Sisgef.SaveDialog.FileName) then
      begin
        sMensagem := 'Arquivo ' + Data_Sisgef.SaveDialog.FileName + ' já existe! Sobrepor ?';
        if Application.MessageBox(PChar(sMensagem), 'Sobrepor', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit
      end;

      FUtil.ExportarDados(grdUsuarios,Data_Sisgef.SaveDialog.FileName);
    end;
  finally
    FUtil.Free;
  end;
end;

procedure TviewSisGefCadastroUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FUsuarios.Free;
  FAcessos.Free;
  FConn.Free;
  mtbUsuartios.Active := False;
  mtbGrupos.Active := False;
  mtbAcessos.Active := False;
  mtbAcessosUsuario.Active := False;
  Action := caFree;
  viewSisGefCadastroUsuarios := nil;
end;

procedure TviewSisGefCadastroUsuarios.FormShow(Sender: TObject);
begin
  FSistem := TSistem.GetInstance;
  FConn := TConnectionMySQL.Create;
  Fusuarios := TUsuarioControl.Create;
  FAcessos := TAcessosControl.Create;
  FAtivo := 'S';
  PopularGrupos;
end;

procedure TviewSisGefCadastroUsuarios.grdUsuariosDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if mtbUsuartios.IsEmpty then Exit;
  EditarUsuario;
end;

procedure TviewSisGefCadastroUsuarios.lcbGruposPropertiesChange(Sender: TObject);
begin
  mtbAcessos.Active := False;
end;

procedure TviewSisGefCadastroUsuarios.lcbGrupoUsuarioPropertiesChange(Sender: TObject);
begin
  if lcbGrupoUsuario.ItemIndex <> -1 then
  begin
    ckbAdministrador.EditValue := 'N';
  end;
end;

procedure TviewSisGefCadastroUsuarios.ListaAcessos(iUser: integer);
var
  aParam: array of variant;
  FQuery : TFDQuery;
begin
  try
    FQuery := FConn.GetQuery;
    SetLength(aParam,1);
    if iUser = -1 then
      aParam[0] := 'TRUE'
    else
      aParam[0] := 'TRUE';
    FQuery := FConn.GetQuery;
    FQuery := FAcessos.LocalizarView(aParam);
    mtbAcessos.Active := False;
    if not FQuery.IsEmpty then
    begin
      mtbAcessos.Data := FQuery.Data;
    end;
    if not mtbAcessos.IsEmpty then
    begin
      PopulaAcessos(iUser);
      ConsisteAcessos;
      gridAcessosDBTableView1.ViewData.Expand(True);
    end;
  finally
    FQuery.Connection.Connected := False;
  end;

end;

procedure TviewSisGefCadastroUsuarios.NovoGrupo;
var
  sGrupo : String;
begin
  if not Assigned(viewSisGeFNomeGrupo) then
  begin
    viewSisGeFNomeGrupo := TviewSisGeFNomeGrupo.Create(Application);
  end;
  try
    if viewSisGeFNomeGrupo.ShowModal = mrCancel then
      Exit;
    sGrupo := viewSisGeFNomeGrupo.txeGrupo.Text;
    if ProcuraNomeGrupo(sGrupo) then
    begin
      Application.MessageBox('Nome de Grupo já cadastrado!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end
    else
    begin
      if not mtbGrupos.Active then mtbGrupos.Active := True;

      mtbGrupos.Insert;
      mtbGruposcod_usuario.AsInteger := -1;
      mtbGruposnom_usuario.AsString := sGrupo;
      mtbGrupos.Post;
//      lcbGrupoUsuario.Refresh;
      lcbGrupos.EditValue := -1;
      ListaAcessos(mtbGruposcod_usuario.AsInteger);
    end;
  finally
    FreeAndNil(viewSisGeFNomeGrupo);
  end;
end;

procedure TviewSisGefCadastroUsuarios.NovoUsuario;
begin
  FAcao := tacIncluir;
  FUsuarios.ClearFields;
  FUsuarios.Usuarios.Acao := FAcao;
  lgpTabbed.ItemIndex := 1;
end;

procedure TviewSisGefCadastroUsuarios.Pesquisar;
var
  aParam: array of variant;
  sParam, sCPF: string;
  FCommon: TUtils;
  FQuery : TFDQuery;
begin
  try
    FCommon := TUtils.Create;
    FQuery := FConn.GetQuery;
    if cboParametros.Text = 'Todos' then
    begin
      sParam := 'True';
    end
    else if cboParametros.Text = 'ID' then
    begin
      if FCommon.ENumero(txeValor.Text) then
      begin
        sParam := 'cod_usuario = ' + txeValor.Text;
      end
      else
      begin
        Application.MessageBox('Valor informado não é um número válido!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
        Exit;
      end;
    end
    else if cboParametros.Text = 'Nome' then
    begin
      sParam := 'nom_usuario like ' + QuotedStr('%' + txeValor.Text + '%');
    end
    else if cboParametros.Text = 'Login' then
    begin
      sParam := 'des_login like ' + QuotedStr('%' + txeValor.Text + '%');
    end
    else if cboParametros.Text = 'E-Mail' then
    begin
      sParam := 'des_email like ' + QuotedStr('%' + txeValor.Text + '%');
    end
    else if cboParametros.Text = 'CPF' then
    begin
      sCPF := FCommon.DesmontaCPFCNPJ(txeValor.Text);
      sCPF := FCommon.FormataCPF(sCPF);
      sParam := 'num_cpf_cnpj =  ' + QuotedStr(sCPF);
    end;
    if cboStatus.ItemIndex = 0 then
      FAtivo := 'A'
    else if cboStatus.ItemIndex = 2 then
      FAtivo := 'N'
    else
      FAtivo := 'S';
    SetLength(aParam,2);
    aParam[0] := 'FILTRO';
    aParam[1] := sParam + ' AND cod_grupo >= 0' ;
    if FAtivo <> 'A' then
      aParam[1] := aParam[1] + ' AND DOM_ATIVO = ' + QuotedStr(FAtivo);
    if mtbUsuartios.Active then mtbUsuartios.Active := False;
    FQuery := FConn.GetQuery;
    FQuery := FUsuarios.Localizar(aParam);
    if not FQuery.IsEmpty then
    begin
      mtbUsuartios.Data := FQuery.Data;
    end;
  finally
    FQuery.Connection.Connected := False;
    FCommon.Free;
  end;
end;

procedure TviewSisGefCadastroUsuarios.PopulaAcessos(iID: integer);
var
  aParam: array of variant;
  FQuery : TFDQuery;
begin
  try
    FQuery := FConn.GetQuery;
    SetLength(aParam,2);
    aParam[0] := 'FILTRO';
    aParam[1] := 'cod_usuario = ' + iID.ToString;
    if mtbAcessosUsuario.Active then mtbAcessosUsuario.Active := False;
    FQuery := FConn.GetQuery;
    FQuery := FAcessos.Localizar(aParam);
    if not FQuery.IsEmpty then
    begin
      mtbAcessosUsuario.Data := FQuery.Data;
    end;
  finally
    FQuery.Connection.Connected := False;
  end;
end;

procedure TviewSisGefCadastroUsuarios.PopularGrupos;
var
  aParam: array of variant;
  FQuery : TFDQuery;
begin
  try
    FAtivo := 'A';
    FQuery := FConn.GetQuery;
    SetLength(aParam,3);
    aParam[0] := 'APOIO';
    aParam[1] := 'cod_usuario, nom_usuario';
    if FAtivo <> 'A' then
      aParam[2] := ' WHERE cod_grupo = -1 AND DOM_ATIVO = ' + QuotedStr(FAtivo)
    else
      aParam[2] := ' WHERE cod_grupo = -1';
    if mtbGrupos.Active then mtbGrupos.Active := False;
    FQuery := FConn.GetQuery;
    FQuery := FUsuarios.Localizar(aParam);
    if not FQuery.IsEmpty then
    begin
      mtbGrupos.Data := FQuery.Data;
    end;
  finally
    FQuery.Connection.Connected := False;
  end;
end;

function TviewSisGefCadastroUsuarios.ProcuraNomeGrupo(sGrupo: string): boolean;
begin
  Result := False;
  if not mtbGrupos.Active then Exit;
  Result := mtbGrupos.Locate('nom_usuario', sGrupo,[]);
end;

procedure TviewSisGefCadastroUsuarios.SalvaGrupo;
begin
  if Application.MessageBox('Confirma gravar o Grupo?', 'Gravar', MB_YESNO + MB_ICONQUESTION) = mrNo then
    Exit;

  if lcbGrupos.EditValue = -1 then
  begin
    FUsuarios.Usuarios.Codigo := FUsuarios.GetID;
    FUsuarios.Usuarios.Acao := tacIncluir;
  end
  else
  begin
    FUsuarios.Usuarios.Codigo := lcbGrupos.EditValue;
    FUsuarios.Usuarios.Acao := tacAlterar;
  end;
  FUsuarios.Usuarios.Nome := lcbGrupos.Text;
  FUsuarios.Usuarios.Grupo := -1;
  FUsuarios.Usuarios.Executor := FSistem.CurrentLogin;
  FUsuarios.Usuarios.Ativo := 'S';
  FUsuarios.Usuarios.Manutencao := Now();
  if not FUsuarios.Gravar then
  begin
    Application.MessageBox('Ocorreu algum problema ao gravar o grupo!', 'Atenção', MB_OK+MB_ICONERROR);
    Exit;
  end;
  FAcessos.Acessos.Sistema := -1;
  Facessos.Acessos.Usuario := FUsuarios.Usuarios.Codigo;
  FAcessos.Acessos.Acao := tacExcluir;
  if not FAcessos.Gravar then
  begin
    Application.MessageBox('Ocorreu algum problema ao gravar os acessos(00)!', 'Atenção', MB_OK+MB_ICONERROR);
    Exit;
  end;
  if not mtbAcessos.IsEmpty then mtbAcessos.First;
  FAcessos.Acessos.Acao := tacIncluir;
  while not mtbAcessos.Eof do
  begin
    if mtbAcessosdom_acesso.AsInteger = 1 then
    begin
      FAcessos.Acessos.Sistema := mtbAcessoscod_sistema.AsInteger;
      FAcessos.Acessos.Modulo := mtbAcessoscod_modulo.AsInteger;
      FAcessos.Acessos.Menu := mtbAcessoscod_menu.AsInteger;
      FAcessos.Acessos.Usuario := FUsuarios.Usuarios.Codigo;
      if not FAcessos.Gravar then
      begin
        Application.MessageBox('Ocorreu algum problema ao gravar os acessos(01)!', 'Atenção', MB_OK+MB_ICONERROR);
        Exit;
      end;
    end;
    mtbAcessos.Next;
  end;
  PopularGrupos;
  lcbGrupos.EditValue := FUsuarios.Usuarios.Codigo;
  ListaAcessos(lcbGrupos.EditValue);
  Application.MessageBox('Grupo gravado com sucesso.', 'Gravar', MB_OK + MB_ICONINFORMATION);
end;

procedure TviewSisGefCadastroUsuarios.SalvaUsuario;
begin
  if bteSenha.Text = '' then
  begin
    Application.MessageBox('Informe uma senha!', 'Atenção', MB_OK+MB_ICONWARNING);
    Exit;
  end;
  if bteSenha.Text <> bteConfirmarSenha.Text then
  begin
    Application.MessageBox('Senha não confere com a confirmação!', 'Atenção', MB_OK+MB_ICONWARNING);
    Exit;
  end;
  SetupFieldsTable;
  if not FUsuarios.ValidaCampos then
    Exit;
  if Application.MessageBox('Confirma gravar os dados do usuário?', 'Gravar', MB_YESNO + MB_ICONQUESTION) = mrNo then
    Exit;
  if FUsuarios.Gravar then
  begin
    Application.MessageBox('Usuário gravado com sucesso.', 'Gravar', MB_OK + MB_ICONINFORMATION);
    Pesquisar;
    lgpTabbed.ItemIndex := 0;
  end;
end;

procedure TviewSisGefCadastroUsuarios.SelecaoTodosAcessos(iTag: integer);
begin
  if not mtbAcessos.Active then Exit;
  if mtbAcessos.IsEmpty then Exit;
  mtbAcessos.First;
  while not mtbAcessos.eof do
  begin
    mtbAcessos.Edit;
    mtbAcessosdom_acesso.AsInteger := iTag;
    mtbAcessos.Post;
    mtbAcessos.Next;
  end;
  mtbAcessos.First;
end;

procedure TviewSisGefCadastroUsuarios.SetupFieldsForm;
begin
  speCodigo.Value := FUsuarios.Usuarios.Codigo;
  txeNome.Text := FUsuarios.Usuarios.Nome;
  mskCPF.Text := FUsuarios.Usuarios.CPF;
  txeLogin.Text := FUsuarios.Usuarios.Login;
  txeEMail.Text := FUsuarios.Usuarios.EMail;
  bteSenha.Text := FUsuarios.Usuarios.Senha;
  bteConfirmarSenha.Text := FUsuarios.Usuarios.Senha;
  lcbGrupoUsuario.EditValue := FUsuarios.Usuarios.Grupo;
  ckbAdministrador.EditValue := FUsuarios.Usuarios.Privilegio;
  cbxNivel.ItemIndex := FUsuarios.Usuarios.Nivel;
  ckbSenhaExpira.EditValue := FUsuarios.Usuarios.Expira;
  speDiasExpira.Value := FUsuarios.Usuarios.DiasExpira;
  ckbPrimeiroAcesso.EditValue := FUsuarios.Usuarios.PrimeiroAcesso;
  ckbStatus.EditValue := FUsuarios.Usuarios.Ativo;
end;

procedure TviewSisGefCadastroUsuarios.SetupFieldsTable;
begin
  if FAcao = tacIncluir then
    FUsuarios.Usuarios.Codigo := FUsuarios.GetID
  else
    FUsuarios.Usuarios.Codigo := speCodigo.Value;
  FUsuarios.Usuarios.Nome := txeNome.Text;
  FUsuarios.Usuarios.CPF := mskCPF.Text;
  FUsuarios.Usuarios.Login := txeLogin.Text;
  FUsuarios.Usuarios.EMail := txeEMail.Text;
  FUsuarios.Usuarios.Senha := bteSenha.Text;
  if lcbGrupoUsuario.Text = '' then
    FUsuarios.Usuarios.Grupo := 0
  else
    FUsuarios.Usuarios.Grupo := lcbGrupoUsuario.EditValue;
  FUsuarios.Usuarios.Privilegio := ckbAdministrador.EditValue;
  FUsuarios.Usuarios.Nivel := cbxNivel.ItemIndex;
  FUsuarios.Usuarios.Expira := ckbSenhaExpira.EditValue;
  FUsuarios.Usuarios.DiasExpira := speDiasExpira.Value;
  FUsuarios.Usuarios.PrimeiroAcesso := ckbPrimeiroAcesso.EditValue;
  FUsuarios.Usuarios.Ativo := ckbStatus.EditValue;
  FUsuarios.Usuarios.Executor := FSistem.CurrentLogin;
  FUsuarios.Usuarios.Manutencao := Now();
end;

end.

