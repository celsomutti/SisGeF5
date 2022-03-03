unit View.ImportacaoPlanilhaExtravios;

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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxClasses, dxLayoutContainer, dxLayoutControl, Vcl.Menus, dxLayoutControlAdapters,
  Vcl.StdCtrls, cxButtons, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxLabel, System.Actions, Vcl.ActnList, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxButtonEdit, Control.EntregadoresExpressas,
  FireDAC.Comp.Client, Control.Sistema, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxCurrencyEdit, cxProgressBar,
  Control.ExtraviosMultas, Control.Entregas, Common.ENum, cxMemo, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox,
  cxRadioGroup, Thread.SisGeFImportMisplacement, Vcl.ExtCtrls;

type
  Tview_ImportacaoPlanilhaExtravios = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    cxLabel1: TcxLabel;
    dxLayoutItem2: TdxLayoutItem;
    aclImportarExtravio: TActionList;
    actFechar: TAction;
    datEvento: TcxDateEdit;
    dxLayoutItem3: TdxLayoutItem;
    cboDescricaoExtravio: TcxComboBox;
    dxLayoutItem4: TdxLayoutItem;
    edtCodigoEntregador: TcxButtonEdit;
    dxLayoutItem5: TdxLayoutItem;
    txtNomeEntregador: TcxTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    actImportar: TAction;
    cxButton2: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    dsImportacao: TDataSource;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    edtArquivo: TcxButtonEdit;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    OpenDialog: TOpenDialog;
    pbImportacao: TcxProgressBar;
    dxLayoutItem9: TdxLayoutItem;
    actAbrirArquivo: TAction;
    memObs: TcxMemo;
    dxLayoutItem10: TdxLayoutItem;
    cliente: TcxLookupComboBox;
    dxLayoutItem11: TdxLayoutItem;
    dsClientes: TDataSource;
    tipo: TcxRadioGroup;
    dxLayoutItem12: TdxLayoutItem;
    Timer: TTimer;
    procedure edtCodigoEntregadorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtCodigoEntregadorPropertiesChange(Sender: TObject);
    procedure edtCodigoEntregadorPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure actImportarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actFecharExecute(Sender: TObject);
    procedure actAbrirArquivoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure LocalizaEntregadores;
    procedure LimpaCampos;
    function NomeEntregador(iCodigo: Integer): String;
    procedure Modo(iTipo: Integer);
    procedure Importar;
    procedure UpdateDashboard;
    procedure AbrirArquivo;
    function ValidaImportacao(): Boolean;
  public
    { Public declarations }
  end;

var
  view_ImportacaoPlanilhaExtravios: Tview_ImportacaoPlanilhaExtravios;
  FEntregadores : TEntregadoresExpressasControl;
  iBase: Integer;
  FExtravios : TExtraviosMultasControl;
  FEntregas : TEntregasControl;
  capa : Thread_ImportMisplacement;
implementation

{$R *.dfm}

uses Data.SisGeF, View.PesquisarPessoas, Common.Utils, Global.Parametros;

{ Tview_ImportacaoPlanilhaExtravios }

procedure Tview_ImportacaoPlanilhaExtravios.AbrirArquivo;
begin
  if OpenDialog.Execute then
  begin
    edtArquivo.Text := OpenDialog.FileName;
  end;
end;

procedure Tview_ImportacaoPlanilhaExtravios.actAbrirArquivoExecute(Sender: TObject);
begin
  AbrirArquivo;
end;

procedure Tview_ImportacaoPlanilhaExtravios.actFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_ImportacaoPlanilhaExtravios.actImportarExecute(Sender: TObject);
begin
  if not ValidaImportacao() then Exit;

  if Application.MessageBox('Confirma a importação?', 'Importar', MB_YESNO + MB_ICONQUESTION) = IDNO then
  begin
    Exit;
  end;

  Modo(1);
  Importar;

end;

procedure Tview_ImportacaoPlanilhaExtravios.edtCodigoEntregadorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  LocalizaEntregadores;
end;

procedure Tview_ImportacaoPlanilhaExtravios.edtCodigoEntregadorPropertiesChange(Sender: TObject);
begin
  txtNomeEntregador.Clear;
end;

procedure Tview_ImportacaoPlanilhaExtravios.edtCodigoEntregadorPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  txtNomeEntregador.Text := NomeEntregador(DisplayValue);
end;

procedure Tview_ImportacaoPlanilhaExtravios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  view_ImportacaoPlanilhaExtravios := nil;
end;

procedure Tview_ImportacaoPlanilhaExtravios.FormShow(Sender: TObject);
begin
  Modo(0);
end;

procedure Tview_ImportacaoPlanilhaExtravios.Importar;
begin
  capa := Thread_ImportMisplacement.Create(True);
  capa.Arquivo := edtArquivo.Text;
  capa.Cliente := cliente.EditValue;
  capa.Data := datEvento.Date;
  capa.Descricao := cboDescricaoExtravio.Text;
  capa.Agente := iBase;
  capa.Entregador := edtCodigoEntregador.EditValue;
  capa.Obs := memObs.Text;
  actImportar.Enabled := False;
  actAbrirArquivo.Enabled := False;
  capa.Priority := tpNormal;
  Timer.Enabled := True;
  capa.Start;
end;

procedure Tview_ImportacaoPlanilhaExtravios.LimpaCampos;
begin
  edtArquivo.Clear;
  datEvento.Clear;
  cboDescricaoExtravio.ItemIndex := -1;
  edtCodigoEntregador.EditValue := 0;
  pbImportacao.Position := 0;
  memObs.Clear;
  if Data_Sisgef.mtbImportacaoExtravios.Active then Data_Sisgef.mtbImportacaoExtravios.Close;
end;

procedure Tview_ImportacaoPlanilhaExtravios.LocalizaEntregadores;
var
  aParam: array of Variant;
  FDQuery : TFDQuery;
begin
  try
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    FEntregadores := TEntregadoresExpressasControl.Create;
    SetLength(aParam,3);
    aParam[0] := 'APOIO';
    aParam[1] := 'COD_ENTREGADOR as Código, NOM_FANTASIA as Nome, COD_AGENTE as Base';
    aparam[2] := ' WHERE COD_CADASTRO <> 0';
    FDQuery := FEntregadores.Localizar(aParam);
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
    View_PesquisarPessoas.Caption := View_PesquisarPessoas.Caption + ' de Entregadores';
    if View_PesquisarPessoas.ShowModal = mrOk then
    begin
      edtCodigoEntregador.EditValue := View_PesquisarPessoas.qryPesquisa.Fields[1].AsInteger;
      txtNomeEntregador.Text := View_PesquisarPessoas.qryPesquisa.Fields[2].AsString;
      iBase := View_PesquisarPessoas.qryPesquisa.Fields[3].AsInteger;
    end;
  finally
    FDQuery.Free;
    FEntregadores.Free;
    FreeAndNil(View_PesquisarPessoas);
  end;
end;

procedure Tview_ImportacaoPlanilhaExtravios.Modo(iTipo: Integer);
begin
  if iTipo = 0 then
  begin
    dxLayoutItem9.Visible := False;
    actImportar.Enabled := True;
  end
  else
  begin
    dxLayoutItem9.Visible := True;
    actImportar.Enabled := False;
  end;
end;

function Tview_ImportacaoPlanilhaExtravios.ValidaImportacao: Boolean;
begin
  Result := False;
  if edtArquivo.Text = '' then
  begin
    Application.MessageBox('Informe o arquivo da planilha!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  if not FileExists(edtArquivo.Text) then
  begin
    Application.MessageBox('Arquivo informado não existe!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  if datEvento.Date = 0 then
  begin
    Application.MessageBox('Informe a data do evento!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  if cboDescricaoExtravio.Text = '' then
  begin
    Application.MessageBox('Informe a descrição ou motivo do extravio!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  if tipo.ItemIndex = -1 then
  begin
    Application.MessageBox('Selecione o tipo de extravio!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  if cliente.EditValue = 0 then
  begin
    Application.MessageBox('Informe o cliente!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  if StrToIntDef(edtCodigoEntregador.Text,0) = 0 then
  begin
    Application.MessageBox('Informe o código do entregador!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  Result := True;
end;

function Tview_ImportacaoPlanilhaExtravios.NomeEntregador(iCodigo: Integer): String;
var
  aParam: array of Variant;
  FDQuery : TFDQuery;
begin
  try
    Result := 'NONE';
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    FEntregadores := TEntregadoresExpressasControl.Create;
    SetLength(aParam,3);
    aParam[0] := 'ENTREGADOR';
    aParam[1] := iCodigo;
    FDQuery := FEntregadores.Localizar(aParam);
    Finalize(aParam);
    if not FDQuery.IsEmpty then
    begin
      iBase := FDQuery.FieldByName('COD_AGENTE').AsInteger;
      Result := FDQuery.FieldByName('NOM_FANTASIA').AsString;
    end;
    FDQuery.Close;
    FEntregadores.Free;
  finally
    FDQuery.Free;
  end;
end;

procedure Tview_ImportacaoPlanilhaExtravios.UpdateDashboard;
begin
if not capa.Processo then
  begin
    Timer.Enabled := False;
    actAbrirArquivo.Enabled := True;
    actImportar.Enabled := False;
    pbImportacao.Position := capa.Progresso;
    if Capa.Cancelar then
      Application.MessageBox('Importação Cancelada!', 'Atenção', MB_OK + MB_ICONEXCLAMATION)
    else
      Application.MessageBox('Importação concluída!', 'Atenção', MB_OK + MB_ICONINFORMATION);
    edtArquivo.Text := '';
    pbImportacao.Position := 0;
  end
  else
  begin
    pbImportacao.Position := capa.Progresso;
  end;
end;

end.
