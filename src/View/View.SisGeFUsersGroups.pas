unit View.SisGeFUsersGroups;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Actions, Vcl.ActnList, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, service.connectionMySQL, Control.Usuarios, Common.ENum,
  service.sistem, Common.Utils, Control.Acessos, cxCheckBox;

type
  TviewUsersGroup = class(TForm)
    layContainerGroup_Root: TdxLayoutGroup;
    layContainer: TdxLayoutControl;
    lgpMenuSearch: TdxLayoutGroup;
    mtbGrupos: TFDMemTable;
    dsGrupos: TDataSource;
    lcbGrupo: TcxLookupComboBox;
    dxLayoutItem1: TdxLayoutItem;
    aclUsuarios: TActionList;
    actExportar: TAction;
    actSair: TAction;
    actNovoGrupo: TAction;
    actGravarGrupo: TAction;
    actListarAcessos: TAction;
    actCancelarGrupo: TAction;
    actSelecionarTudo: TAction;
    actLimparRegistros: TAction;
    cxButton1: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    dsAcessos: TDataSource;
    mtbAcessos: TFDMemTable;
    mtbAcessosdom_acesso: TIntegerField;
    mtbAcessoscod_sistema: TIntegerField;
    mtbAcessosdes_sistema: TStringField;
    mtbAcessoscod_modulo: TIntegerField;
    mtbAcessosdes_modulo: TStringField;
    mtbAcessoscod_menu: TIntegerField;
    mtbAcessosdes_menu: TStringField;
    dxLayoutGroup1: TdxLayoutGroup;
    cxButton3: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    dxLayoutGroup2: TdxLayoutGroup;
    cxButton5: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    cxButton6: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    cxButton7: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    gridGruposDBTableView1: TcxGridDBTableView;
    gridGruposLevel1: TcxGridLevel;
    gridGrupos: TcxGrid;
    dxLayoutItem9: TdxLayoutItem;
    gridGruposDBTableView1dom_acesso: TcxGridDBColumn;
    gridGruposDBTableView1cod_sistema: TcxGridDBColumn;
    gridGruposDBTableView1des_sistema: TcxGridDBColumn;
    gridGruposDBTableView1cod_modulo: TcxGridDBColumn;
    gridGruposDBTableView1des_modulo: TcxGridDBColumn;
    gridGruposDBTableView1cod_menu: TcxGridDBColumn;
    gridGruposDBTableView1des_menu: TcxGridDBColumn;
    mtbAcessosUsuario: TFDMemTable;
    mtbAcessosUsuariocod_menu: TIntegerField;
    mtbAcessosUsuariocod_usuario: TIntegerField;
    mtbGruposcod_usuario: TIntegerField;
    mtbGruposnom_usuario: TStringField;
    mtbGruposcod_grupo: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure actExportarExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure actNovoGrupoExecute(Sender: TObject);
    procedure actGravarGrupoExecute(Sender: TObject);
    procedure actListarAcessosExecute(Sender: TObject);
    procedure actCancelarGrupoExecute(Sender: TObject);
    procedure actSelecionarTudoExecute(Sender: TObject);
    procedure actLimparRegistrosExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lcbGrupoPropertiesChange(Sender: TObject);
  private
    FSistem : Tsistem;
    FAcessos : TAcessosControl;

    procedure PopulaAcessos(iID: integer);
    procedure ListaAcessos(iUser: integer);
    procedure SelecaoTodosAcessos(iTag: integer);
    procedure SalvaGrupo;
    procedure ClearGrupos;
    procedure NovoGrupo;
    procedure ConsisteAcessos;
    procedure PopulaGrupos;
    procedure Exportar;
    procedure CloseTables;

    function ProcuraNomeGrupo(sGrupo: string): boolean;
  public
    { Public declarations }
  end;

var
  viewUsersGroup: TviewUsersGroup;

implementation

{$R *.dfm}

uses Data.SisGeF, View.SisGeFNomeGrupo;

{ TviewUsersGroup }

procedure TviewUsersGroup.actCancelarGrupoExecute(Sender: TObject);
begin
  ClearGrupos;
end;

procedure TviewUsersGroup.actExportarExecute(Sender: TObject);
begin
  Exportar;
end;

procedure TviewUsersGroup.actGravarGrupoExecute(Sender: TObject);
begin
  SalvaGrupo;
end;

procedure TviewUsersGroup.actLimparRegistrosExecute(Sender: TObject);
begin
  SelecaoTodosAcessos(0);
end;

procedure TviewUsersGroup.actListarAcessosExecute(Sender: TObject);
begin
  ListaAcessos(lcbGrupo.EditValue);
end;

procedure TviewUsersGroup.actNovoGrupoExecute(Sender: TObject);
begin
  NovoGrupo;
end;

procedure TviewUsersGroup.actSairExecute(Sender: TObject);
begin
  Close;
end;

procedure TviewUsersGroup.actSelecionarTudoExecute(Sender: TObject);
begin
  SelecaoTodosAcessos(1);
end;

procedure TviewUsersGroup.ClearGrupos;
begin
  lcbGrupo.ItemIndex := -1;
  mtbAcessos.Active := False;
end;

procedure TviewUsersGroup.CloseTables;
begin
  mtbAcessos.Active := False;
  mtbAcessosUsuario.Active := False;
end;

procedure TviewUsersGroup.ConsisteAcessos;
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

procedure TviewUsersGroup.Exportar;
var
  FUtil : TUtils;
  sMensagem: string;
begin
  FUtil := TUtils.Create;
  try
    if mtbGrupos.IsEmpty then
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

      FUtil.ExportarDados(gridGrupos,Data_Sisgef.SaveDialog.FileName);
    end;
  finally
    FUtil.Free;
  end;
end;

procedure TviewUsersGroup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  mtbGrupos.Active := False;
  mtbAcessos.Active := False;
  mtbAcessosUsuario.Active := False;
  Action := caFree;
  viewUsersGroup := Nil;
end;

procedure TviewUsersGroup.FormCreate(Sender: TObject);
begin
  FSistem := TSistem.GetInstance;
end;

procedure TviewUsersGroup.FormShow(Sender: TObject);
begin
  PopulaGrupos;
end;

procedure TviewUsersGroup.lcbGrupoPropertiesChange(Sender: TObject);
begin
  CloseTables;
end;

procedure TviewUsersGroup.ListaAcessos(iUser: integer);
var
  aParam: array of variant;
  FQuery : TFDQuery;
begin
  FAcessos := TAcessosControl.Create;
  try
    SetLength(aParam,1);
    if iUser = -1 then
      aParam[0] := 'TRUE'
    else
      aParam[0] := 'TRUE';
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
      gridGruposDBTableView1.ViewData.Expand(True);
    end;
  finally
    FAcessos.Free;
    FQuery.Connection.Connected := False;
    FQuery.Free;
  end;
end;

procedure TviewUsersGroup.NovoGrupo;
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
      mtbGruposcod_grupo.AsInteger := -1;
      mtbGrupos.Post;
//      lcbGrupoUsuario.Refresh;
      lcbGrupo.EditValue := -1;
      ListaAcessos(mtbGruposcod_usuario.AsInteger);
    end;
  finally
    FreeAndNil(viewSisGeFNomeGrupo);
  end;
end;

procedure TviewUsersGroup.PopulaAcessos(iID: integer);
var
  cadastro : TAcessosControl;
  aParam : Array of String;
begin
  cadastro := TAcessosControl.Create;
  SetLength(aParam, 3);

  try
     aParam[0] := 'cod_menu, cod_usuario';
     aParam[1] := 'usuarios_acessos';
     aParam[2] := 'cod_usuario = ' + iID.ToString;

     if mtbAcessosUsuario.Active then mtbAcessosUsuario.Active := False;

     mtbAcessosUsuario.Data := cadastro.CustomSearch(aParam);
  finally
    Finalize(aParam);
    cadastro.Free;
  end;
end;

procedure TviewUsersGroup.PopulaGrupos;
var
  cadastro : TUsuarioControl;
  aParam : Array of String;
begin
  cadastro := TUsuarioControl.Create;
  SetLength(aParam, 3);

  try
     aParam[0] := '*';
     aParam[1] := 'view_gruposusuarios';
     aParam[2] := 'COD_GRUPO = -1';

     if mtbGrupos.Active then mtbGrupos.Active := False;

     if cadastro.CustomSearch(aParam) then
     begin
       mtbGrupos.Data := cadastro.Usuarios.Query.Data;
     end;
     cadastro.Usuarios.Query.Close;
     cadastro.Usuarios.Query.Connection.Close;
  finally
    Finalize(aParam);
    cadastro.Free;
  end;
end;

function TviewUsersGroup.ProcuraNomeGrupo(sGrupo: string): boolean;
begin
  Result := False;
  if not mtbGrupos.Active then Exit;
  Result := mtbGrupos.Locate('nom_usuario', sGrupo,[]);
end;

procedure TviewUsersGroup.SalvaGrupo;
var
  Fusuarios : TUsuarioControl;
  FAcessos : TAcessosControl;
begin
  Fusuarios := TUsuarioControl.Create;
  FAcessos := TAcessosControl.Create;
  if Application.MessageBox('Confirma gravar o Grupo?', 'Gravar', MB_YESNO + MB_ICONQUESTION) = mrNo then
    Exit;
  if lcbGrupo.EditValue = -1 then
  begin
    FUsuarios.Usuarios.Codigo := FUsuarios.GetID;
    FUsuarios.Usuarios.Acao := tacIncluir;
  end
  else
  begin
    FUsuarios.Usuarios.Codigo := lcbGrupo.EditValue;
    FUsuarios.Usuarios.Acao := tacAlterar;
  end;
  FUsuarios.Usuarios.Nome := lcbGrupo.Text;
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
  PopulaGrupos;
  lcbGrupo.EditValue := FUsuarios.Usuarios.Codigo;
  ListaAcessos(lcbGrupo.EditValue);
  FUsuarios.Free;
  FAcessos.Free;
  Application.MessageBox('Grupo gravado com sucesso.', 'Gravar', MB_OK + MB_ICONINFORMATION);
end;

procedure TviewUsersGroup.SelecaoTodosAcessos(iTag: integer);
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

end.
