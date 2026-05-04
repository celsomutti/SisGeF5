unit View.SisGeFUsersRegister;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, Vcl.Menus, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons,
  System.Actions, Vcl.ActnList, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
  Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.StorageBin, cxCheckBox, Control.Usuarios, Common.Utils,
  cxDBEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxSpinEdit, Common.ENum, service.sistem;

type
  TviewCadastroUsuarios = class(TForm)
    lcMainGroup_Root: TdxLayoutGroup;
    lcMain: TdxLayoutControl;
    lgpContainer: TdxLayoutGroup;
    lgpFooter: TdxLayoutGroup;
    lgpSearch: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    aclMain: TActionList;
    lgpMenu: TdxLayoutGroup;
    cxButton2: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    actNovo: TAction;
    actEditar: TAction;
    actExportar: TAction;
    actRetornar: TAction;
    actGravar: TAction;
    actSair: TAction;
    cxButton3: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    dxLayoutSeparatorItem3: TdxLayoutSeparatorItem;
    btePesquisa: TcxButtonEdit;
    dxLayoutItem5: TdxLayoutItem;
    actPesquisar: TAction;
    actLimparPesquisa: TAction;
    lgpGrid: TdxLayoutGroup;
    gridUsuariosDBTableView1: TcxGridDBTableView;
    gridUsuariosLevel1: TcxGridLevel;
    gridUsuarios: TcxGrid;
    dxLayoutItem6: TdxLayoutItem;
    mtbUsuarios: TFDMemTable;
    mtbUsuariosCOD_USUARIO: TIntegerField;
    mtbUsuariosNOM_USUARIO: TStringField;
    mtbUsuariosDES_LOGIN: TStringField;
    mtbUsuariosDES_EMAIL: TStringField;
    mtbUsuariosCOD_GRUPO: TIntegerField;
    mtbUsuariosNOM_GRUPO: TStringField;
    mtbUsuariosDOM_PRIVILEGIO: TStringField;
    mtbUsuariosDOM_EXPIRA: TStringField;
    mtbUsuariosQTD_DIAS_EXPIRA: TIntegerField;
    mtbUsuariosDOM_PRIMEIRO_ACESSO: TStringField;
    mtbUsuariosDOM_ATIVO: TStringField;
    mtbUsuariosDAT_SENHA: TDateField;
    mtbUsuariosCOD_NIVEL: TIntegerField;
    mtbUsuariosNOM_EXECUTOR: TStringField;
    mtbUsuariosNUM_CPF_CNPJ: TStringField;
    mtbUsuariosDAT_MANUTENCAO: TSQLTimeStampField;
    dsUsuarios: TDataSource;
    gridUsuariosDBTableView1COD_USUARIO: TcxGridDBColumn;
    gridUsuariosDBTableView1NOM_USUARIO: TcxGridDBColumn;
    gridUsuariosDBTableView1DES_LOGIN: TcxGridDBColumn;
    gridUsuariosDBTableView1DES_EMAIL: TcxGridDBColumn;
    gridUsuariosDBTableView1COD_GRUPO: TcxGridDBColumn;
    gridUsuariosDBTableView1NOM_GRUPO: TcxGridDBColumn;
    gridUsuariosDBTableView1DOM_PRIVILEGIO: TcxGridDBColumn;
    gridUsuariosDBTableView1DOM_EXPIRA: TcxGridDBColumn;
    gridUsuariosDBTableView1QTD_DIAS_EXPIRA: TcxGridDBColumn;
    gridUsuariosDBTableView1DOM_PRIMEIRO_ACESSO: TcxGridDBColumn;
    gridUsuariosDBTableView1DOM_ATIVO: TcxGridDBColumn;
    gridUsuariosDBTableView1DAT_SENHA: TcxGridDBColumn;
    gridUsuariosDBTableView1COD_NIVEL: TcxGridDBColumn;
    gridUsuariosDBTableView1NOM_EXECUTOR: TcxGridDBColumn;
    gridUsuariosDBTableView1NUM_CPF_CNPJ: TcxGridDBColumn;
    gridUsuariosDBTableView1DAT_MANUTENCAO: TcxGridDBColumn;
    lgpCadastro: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dbID: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    dbNome: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    dbCPF: TcxDBMaskEdit;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dbEmail: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    dbLogin: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutSeparatorItem4: TdxLayoutSeparatorItem;
    dbAdministrador: TcxDBCheckBox;
    dxLayoutItem14: TdxLayoutItem;
    dbPrimeiroAcesso: TcxDBCheckBox;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    mtbGrupos: TFDMemTable;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    dsGrupos: TDataSource;
    dbGrupo: TcxDBLookupComboBox;
    dxLayoutItem17: TdxLayoutItem;
    dbSenhaExpira: TcxDBCheckBox;
    dxLayoutItem18: TdxLayoutItem;
    dbDiasExpira: TcxDBSpinEdit;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dbStatus: TcxDBCheckBox;
    dxLayoutItem20: TdxLayoutItem;
    cboNivel: TcxComboBox;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    cxButton5: TcxButton;
    dxLayoutItem13: TdxLayoutItem;
    cxButton6: TcxButton;
    dxLayoutItem16: TdxLayoutItem;
    actResetarSenha: TAction;
    cxButton7: TcxButton;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutSeparatorItem5: TdxLayoutSeparatorItem;
    procedure actPesquisarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSairExecute(Sender: TObject);
    procedure actLimparPesquisaExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure dbStatusPropertiesChange(Sender: TObject);
    procedure dbAdministradorPropertiesChange(Sender: TObject);
    procedure actRetornarExecute(Sender: TObject);
    procedure gridUsuariosDBTableView1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actResetarSenhaExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mtbUsuariosAfterInsert(DataSet: TDataSet);
    procedure mtbUsuariosAfterEdit(DataSet: TDataSet);
    procedure mtbUsuariosAfterCancel(DataSet: TDataSet);
    procedure actExportarExecute(Sender: TObject);
  private

    FAction : TAcao;
    FSistem : TSistem;

    procedure ExecSearch(sQuery: string);

    procedure Novo;
    procedure Editar;
    procedure Retornar;
    procedure ResetSenha;
    procedure PopulaGrupos;
    procedure Gravar;
    procedure Exportar;

    function CustomSearchStr(sParam: string): string;
  public
    { Public declarations }
  end;

var
  viewCadastroUsuarios: TviewCadastroUsuarios;

implementation

{$R *.dfm}

uses Data.SisGeF;

{ TviewCadastroUsuarios }

procedure TviewCadastroUsuarios.actEditarExecute(Sender: TObject);
begin
  Editar;
end;

procedure TviewCadastroUsuarios.actExportarExecute(Sender: TObject);
begin
  Exportar;
end;

procedure TviewCadastroUsuarios.actGravarExecute(Sender: TObject);
begin
  Gravar;
end;

procedure TviewCadastroUsuarios.actLimparPesquisaExecute(Sender: TObject);
begin
  btePesquisa.Clear;
end;

procedure TviewCadastroUsuarios.actNovoExecute(Sender: TObject);
begin
  Novo;
end;

procedure TviewCadastroUsuarios.actPesquisarExecute(Sender: TObject);
begin
  ExecSearch(CustomSearchStr(btePesquisa.Text));
end;

procedure TviewCadastroUsuarios.actResetarSenhaExecute(Sender: TObject);
begin
  ResetSenha;
end;

procedure TviewCadastroUsuarios.actRetornarExecute(Sender: TObject);
begin
  Retornar;
end;

procedure TviewCadastroUsuarios.actSairExecute(Sender: TObject);
begin
  Self.Close;
end;

function TviewCadastroUsuarios.CustomSearchStr(sParam: string): string;
var
  utils : TUtils;
  i : integer;
  sType, sField, sQuery, sQueryPadrao, sQueryReturn : string;
  date : TDateTime;
begin
  utils := TUtils.Create;
  sQuery := '';
  sQueryPadrao := '';
  sQueryReturn := '';
  Result := '';
  try
    if not sParam.IsEmpty then
    begin
      for i := 0 to gridUsuariosDBTableView1.ColumnCount - 1 do
      begin
        if gridUsuariosDBTableView1.Columns[i].Visible then
        begin
          sType := gridUsuariosDBTableView1.Columns[i].DataBinding.ValueType;
          sField := gridUsuariosDBTableView1.Columns[i].DataBinding.FieldName;
          if sType = 'String' then
          begin
            if not sQuery.IsEmpty then
              sQuery := sQuery + ' or '
            else
              sQuery := sQuery + '(';
            sQuery := sQuery + sField + ' like ' +  QuotedStr('%' + sParam + '%')
          end
          else if sType = 'DateTime' then
          begin
            if TryStrToDate(sParam, date) then
            begin
              if not sQuery.IsEmpty then
              sQuery := sQuery + ' or '
            else
              sQuery := sQuery + '(';
              sQuery := sQuery + sField + ' like ' +  QuotedStr(FormatDateTime('yyyy-mm-dd', date));
            end;
          end
          else
          begin
            if utils.ENumero(sParam) then
            begin
              if not sQuery.IsEmpty then
                sQuery := sQuery + ' or '
              else
                sQuery := sQuery + '(';
              sQuery := sQuery + sField + ' like ' +  sParam;
            end;
          end;
        end;
      end;
    end;
    if not sQuery.IsEmpty then
    sQuery := sQuery + ')';
    if sQueryPadrao.IsEmpty then
      sQueryPadrao := sQueryPadrao + '(';
    sQueryPadrao := sQueryPadrao + ' COD_GRUPO >= 0';

    if not sQueryPadrao.IsEmpty then
    begin
      sQueryPadrao := sQueryPadrao + ')';
      if not sQuery.IsEmpty then
        sQueryReturn := sQuery + ' and ' + sQueryPadrao
      else
        sQueryReturn := sQueryPadrao;
    end
    else
    begin
      sQueryReturn := sQuery;
    end;

    Result := sQueryReturn;
  finally
    utils.Free;
  end;
end;

procedure TviewCadastroUsuarios.dbAdministradorPropertiesChange(Sender: TObject);
begin
  if dbAdministrador.Checked then
    cboNivel.ItemIndex := 0
  else
    cboNivel.ItemIndex := 1;
end;

procedure TviewCadastroUsuarios.dbStatusPropertiesChange(Sender: TObject);
begin
  if dbStatus.Checked then
    dbStatus.Caption := 'ATIVO'
  else
    dbStatus.Caption := 'INATIVO';
end;

procedure TviewCadastroUsuarios.Editar;
begin
  if gridUsuariosDBTableView1.DataController.RowCount = 0 then
    Exit;
  cboNivel.ItemIndex := mtbUsuariosCOD_NIVEL.AsInteger;
  actResetarSenha.Enabled := True;
  lgpContainer.ItemIndex := 1;
  dsUsuarios.Edit;
end;

procedure TviewCadastroUsuarios.ExecSearch(sQuery: string);
var
  cadastro : TUsuarioControl;
  aParam : Array of String;
begin
  cadastro := TUsuarioControl.Create;
  SetLength(aParam, 3);

  try
     aParam[0] := '*';
     aParam[1] := 'view_usuarios';
     aParam[2] := sQuery;

     if mtbUsuarios.Active then mtbUsuarios.Active := False;


     if cadastro.CustomSearch(aParam) then
     begin
       mtbUsuarios.Data := cadastro.Usuarios.Query.Data;
     end;
     cadastro.Usuarios.Query.Close;
     cadastro.Usuarios.Query.Connection.Close;
  finally
    Finalize(aParam);
    cadastro.Free;
  end;
end;

procedure TviewCadastroUsuarios.Exportar;
var
  FUtil : TUtils;
  sMensagem: string;
begin
  FUtil := TUtils.Create;
  try
    if mtbUsuarios.IsEmpty then
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

      FUtil.ExportarDados(gridUsuarios,Data_Sisgef.SaveDialog.FileName);
    end;
  finally
    FUtil.Free;
  end;
end;

procedure TviewCadastroUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  mtbUsuarios.Active := False;
  viewCadastroUsuarios := Nil;
end;

procedure TviewCadastroUsuarios.FormCreate(Sender: TObject);
begin
  FSistem := TSistem.GetInstance;
  FAction := tacIndefinido;
end;

procedure TviewCadastroUsuarios.FormShow(Sender: TObject);
begin
  btePesquisa.SetFocus;
  PopulaGrupos;
end;

procedure TviewCadastroUsuarios.Gravar;
var
  FCadastro : TUsuarioControl;
begin

  if (mtbUsuarios.State = dsInsert) or (mtbUsuarios.State = dsEdit) then mtbUsuarios.Post;
  if Application.MessageBox('Confirma gravar os dados deste usuário ?', 'Gravar', MB_YESNO + MB_ICONQUESTION) = mrNo then
    Exit;
  FCadastro := TUsuarioControl.Create;
  try
    FCadastro.Usuarios.Acao := FAction;
    FCadastro.Usuarios.Codigo := mtbUsuariosCOD_USUARIO.AsInteger;
    FCadastro.Usuarios.Nome := mtbUsuariosNOM_USUARIO.AsString;
    FCadastro.Usuarios.CPF := mtbUsuariosNUM_CPF_CNPJ.AsString;
    FCadastro.Usuarios.Login := mtbUsuariosDES_LOGIN.AsString;
    FCadastro.Usuarios.EMail := mtbUsuariosDES_EMAIL.AsString;
    if FAction = tacIncluir then
    begin
      FCadastro.Usuarios.Codigo:= FCadastro.GetID;
      mtbUsuarios.Edit;
      mtbUsuariosCOD_USUARIO.AsInteger := Fcadastro.Usuarios.Codigo;
      mtbUsuarios.Post;
      FCadastro.Usuarios.Senha := mtbUsuariosDES_LOGIN.AsString;
      FCadastro.Usuarios.PrimeiroAcesso := 'S';
      FCadastro.Usuarios.DataSenha := Now();
    end;
    if dbGrupo.Text = '' then
      FCadastro.Usuarios.Grupo := 0
    else
      FCadastro.Usuarios.Grupo := mtbUsuariosCOD_GRUPO.AsInteger;
    FCadastro.Usuarios.Privilegio := mtbUsuariosDOM_PRIVILEGIO.AsString;
    FCadastro.Usuarios.Nivel := cboNivel.ItemIndex;
    FCadastro.Usuarios.Expira := mtbUsuariosDOM_EXPIRA.AsString;
    FCadastro.Usuarios.DiasExpira := mtbUsuariosQTD_DIAS_EXPIRA.AsInteger;
    FCadastro.Usuarios.Ativo := mtbUsuariosDOM_ATIVO.AsString;
    FCadastro.Usuarios.Executor := FSistem.CurrentLogin;
    FCadastro.Usuarios.Manutencao := Now();
    if FCadastro.Gravar then
    begin
      Application.MessageBox('Dados do usuário gravados com sucesso!', 'Atenção', MB_OK + MB_ICONINFORMATION);
      FAction := tacIndefinido;
      lgpContainer.ItemIndex := 0;
    end
    else
    begin
      Application.MessageBox('Ocorreu um erro ao se tentar gravar os dados do usuário!', 'Atenção', MB_OK + MB_ICONERROR);
    end;
  finally
    Fcadastro.Free;
  end;
end;

procedure TviewCadastroUsuarios.gridUsuariosDBTableView1DblClick(Sender: TObject);
begin
  Editar;
end;

procedure TviewCadastroUsuarios.mtbUsuariosAfterCancel(DataSet: TDataSet);
begin
  FAction := tacIndefinido;
end;

procedure TviewCadastroUsuarios.mtbUsuariosAfterEdit(DataSet: TDataSet);
begin
  FAction := tacAlterar;
end;

procedure TviewCadastroUsuarios.mtbUsuariosAfterInsert(DataSet: TDataSet);
begin
  FAction := tacIncluir;
end;

procedure TviewCadastroUsuarios.Novo;
begin
  lgpContainer.ItemIndex := 1;
  actResetarSenha.Enabled := False;
  mtbUsuarios.Insert;
  mtbUsuariosDOM_PRIVILEGIO.AsString := 'N';
  mtbUsuariosDOM_EXPIRA.AsString := 'N';
  mtbUsuariosDOM_PRIMEIRO_ACESSO.AsString := 'S';
  mtbUsuariosDOM_ATIVO.AsString := 'S';
end;

procedure TviewCadastroUsuarios.PopulaGrupos;
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

procedure TviewCadastroUsuarios.ResetSenha;
var
  FCadastro : TUsuarioControl;
begin
  if Application.MessageBox('Confirma reiniciar a senha deste usuário ?', 'Reiniciar Senha', MB_YESNO + MB_ICONQUESTION) = mrNo then
    Exit;
  FCadastro := TUsuarioControl.Create;
  try
    FCadastro.Usuarios.Codigo := mtbUsuariosCOD_USUARIO.AsInteger;
    FCadastro.Usuarios.Senha := mtbUsuariosDES_LOGIN.AsString;
    FCadastro.Usuarios.PrimeiroAcesso := 'S';
    FCadastro.Usuarios.DataSenha := Now();
    FCadastro.Usuarios.Executor := Fsistem.CurrentLogin;
    FCadastro.Usuarios.Manutencao := Now();
    if FCadastro.AlteraSenha(FCadastro.Usuarios) then
    begin
      Application.MessageBox('Senha reiniciada com sucesso!', 'Atenção', MB_OK + MB_ICONINFORMATION);
    end
    else
    begin
      Application.MessageBox('Ocorreu um problema ao se tentar reiniciar a senha!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;

  finally
    FCAdastro.Free;
  end;
end;

procedure TviewCadastroUsuarios.Retornar;
begin
  if (mtbUsuarios.State = dsInsert) or (mtbUsuarios.State = dsEdit) then
  begin
    if Application.MessageBox('Confirma cancelar a operaçãoe retornar?', 'Retornar/Cancelar', MB_YESNO + MB_ICONQUESTION) = mrNo then
    begin
     Exit;
    end
    else
    begin
      mtbUsuarios.Cancel;
    end;
  end;
  lgpContainer.ItemIndex := 0;
end;

end.
