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
  Common.Utils, service.sistem, service.connectionMySQL, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

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
    txeSenha: TcxTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    ckbSenhaExpira: TcxCheckBox;
    dxLayoutItem18: TdxLayoutItem;
    txeConfirmacaoSenha: TcxTextEdit;
    dxLayoutItem19: TdxLayoutItem;
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
    mtbAcessoscod_user: TIntegerField;
    mtbAcessoscod_sistema: TIntegerField;
    mtbAcessosdes_sistema: TStringField;
    mtbAcessoscod_modulo: TIntegerField;
    mtbAcessosdes_modulo: TStringField;
    mtbAcessoscod_menu: TIntegerField;
    mtbAcessosdes_menu: TStringField;
    mtbAcessosdom_acesso: TBooleanField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSairExecute(Sender: TObject);
    procedure actPesquisaExecute(Sender: TObject);
    procedure actExportarExecute(Sender: TObject);
    procedure ckbStatusPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    FConn : TConnectionMySQL;
    FUsuarios : TUsuarioControl;
    Fsistem : TSistem;
    procedure Pesquisar;
    procedure Exportar;
    procedure PopularGrupos;
  public
    { Public declarations }
  end;

var
  viewSisGefCadastroUsuarios: TviewSisGefCadastroUsuarios;

implementation

{$R *.dfm}

procedure TviewSisGefCadastroUsuarios.actExportarExecute(Sender: TObject);
begin
  Exportar;
end;

procedure TviewSisGefCadastroUsuarios.actPesquisaExecute(Sender: TObject);
begin
  Pesquisar;
end;

procedure TviewSisGefCadastroUsuarios.actSairExecute(Sender: TObject);
begin
  Close;
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
  FConn.Free;
  mtbUsuartios.Active := False;
  Action := caFree;
  viewSisGefCadastroUsuarios := nil;
end;

procedure TviewSisGefCadastroUsuarios.FormShow(Sender: TObject);
begin
  FSistem := TSistem.GetInstance;
  FConn := TConnectionMySQL.Create;
  Fusuarios := TUsuarioControl.Create;
  PopularGrupos;
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
    SetLength(aParam,2);
    aParam[0] := 'FILTRO';
    aParam[1] := sParam + ' AND cod_grupo >= 0' ;
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

procedure TviewSisGefCadastroUsuarios.PopularGrupos;
var
  aParam: array of variant;
  FQuery : TFDQuery;
begin
  try
    FQuery := FConn.GetQuery;
    SetLength(aParam,3);
    aParam[0] := 'APOIO';
    aParam[1] := 'cod_usuario, nom_usuario';
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

end.

