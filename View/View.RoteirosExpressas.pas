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
  Control.RoteirosExpressas, Common.Utils, cxCurrencyEdit, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  Tview_RoteirosExpressas = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxLabel1: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    cboCliente: TcxComboBox;
    dxLayoutItem2: TdxLayoutItem;
    aclRoteirosExpressas: TActionList;
    actPesquisarRoteiros: TAction;
    actImportarRoteiros: TAction;
    actGravarRoteiros: TAction;
    actCancelar: TAction;
    actFechar: TAction;
    cxButton1: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxButton2: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
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
    cxButton3: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxButton5: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    pbProcesso: TcxProgressBar;
    lyiProgresso: TdxLayoutItem;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    lblAviso: TcxLabel;
    dxLayoutItem9: TdxLayoutItem;
    tvRoteiroscod_leve: TcxGridDBColumn;
    tvRoteiroscod_pesado: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actFecharExecute(Sender: TObject);
    procedure actPesquisarRoteirosExecute(Sender: TObject);
    procedure actImportarRoteirosExecute(Sender: TObject);
    procedure tvRoteirosNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure actGravarRoteirosExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
  private
    { Private declarations }
    procedure PopulateRoteiros();
    procedure ExportData();
    procedure ImportData();
    procedure SaveData();
    procedure Cancelar();
  public
    { Public declarations }
  end;

var
  view_RoteirosExpressas: Tview_RoteirosExpressas;

implementation

{$R *.dfm}

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
if Application.MessageBox('Confirma a gravação no banco de dados?','Gravar',MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    case cboCliente.ItemIndex of
      0 : Application.MessageBox('Selecione um cliente!','Atenção',MB_OK + MB_ICONWARNING);
      4 : SaveData;
    else
      Application.MessageBox('Rotina não implementada!','Atenção',MB_OK + MB_ICONWARNING);
    end;
  end;
end;

procedure Tview_RoteirosExpressas.actImportarRoteirosExecute(Sender: TObject);
begin
  case cboCliente.ItemIndex of
    0 : Application.MessageBox('Selecione um cliente!','Atenção',MB_OK + MB_ICONWARNING);
    4 : ImportData;
  else
    Application.MessageBox('Rotina não implementada!','Atenção',MB_OK + MB_ICONWARNING);
  end;
end;

procedure Tview_RoteirosExpressas.actPesquisarRoteirosExecute(Sender: TObject);
begin
  case cboCliente.ItemIndex of
    0 : Application.MessageBox('Selecione um cliente!','Atenção',MB_OK + MB_ICONWARNING);
    4 : PopulateRoteiros;
  else
    Application.MessageBox('Rotina não implementada!','Atenção',MB_OK + MB_ICONWARNING);
  end;
end;

procedure Tview_RoteirosExpressas.Cancelar;
begin
  Data_Sisgef.mtbRoteirosExpressas.Close;
  actGravarRoteiros.Enabled := False;
  actCancelar.Enabled := False;
  cboCliente.ItemIndex := 0;
  cboCliente.SetFocus;
end;

procedure Tview_RoteirosExpressas.ExportData;
begin
  SaveDialog.Filter := '';
  SaveDialog.Filter := 'Excel (*.xls) |*.xls|XML (*.xml) |*.xml|Arquivo Texto (*.txt) |*.txt|Página Web (*.html)|*.html';
  SaveDialog.Title := 'Exportar Dados';
  SaveDialog.DefaultExt := 'xls';
  if view_RoteirosExpressas.SaveDialog.Execute then
  begin
    TUtils.ExportarDados(view_RoteirosExpressas.grdRoteiros, view_RoteirosExpressas.SaveDialog.FileName);
  end;
end;

procedure Tview_RoteirosExpressas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Data_Sisgef.mtbRoteirosExpressas.Active then Data_Sisgef.mtbRoteirosExpressas.Close;
  action := caFree;
  view_RoteirosExpressas := nil;
end;

procedure Tview_RoteirosExpressas.ImportData;
var
  FRoteiros : TRoteirosExpressasControl;
begin
  try
    FRoteiros := TRoteirosExpressasControl.Create;
    if cboCliente.ItemIndex <= 0 then
    begin
      Application.MessageBox('Informe o cliente!', 'Atenção!', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if Application.MessageBox('Confirma a importação da planilha?','Importar',MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;
    if OpenDialog.Execute then
    begin
      if not FileExists(OpenDialog.FileName) then
      begin
        Application.MessageBox('Arquivo não encontrado!', 'Atenção',MB_OK + MB_ICONWARNING);
        Exit;
      end
      else
      begin
        FRoteiros.ImportRoteiros(OpenDialog.FileName,cboCliente.ItemIndex);
      end;
    end;
  finally
    FRoteiros.Free;
  end;
end;

procedure Tview_RoteirosExpressas.PopulateRoteiros;
var
  FRoteiros : TRoteirosExpressasControl;
begin
  try
     if cboCliente.ItemIndex <= 0 then
    begin
      Application.MessageBox('Informe o cliente!', 'Atenção!', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    FRoteiros := TRoteirosExpressasControl.Create;
    if not FRoteiros.PopulateRoteiros(cboCliente.ItemIndex) then
    begin
      Application.MessageBox('Roteiros não encontrados no banco de dados!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
      actGravarRoteiros.Enabled := False;
      actCancelar.Enabled := False;
    end
    else
    begin
      actGravarRoteiros.Enabled := True;
      actCancelar.Enabled := True;
    end;
  finally
    Froteiros.Free;
  end;
end;

procedure Tview_RoteirosExpressas.SaveData;
var
  FRoteiros : TRoteirosExpressasControl;
begin
  try
    lblAviso.Caption := 'Gravando no banco de dados. Aguarde ...';
    lblAviso.Refresh;
    if not Data_Sisgef.mtbRoteirosExpressas.Active then Exit;
    if Data_Sisgef.mtbRoteirosExpressas.IsEmpty then Exit;

    FRoteiros := TRoteirosExpressasControl.Create;
    FRoteiros.DeleteCliente(cboCliente.ItemIndex);
    if not FRoteiros.SaveData then
    begin
      Application.MessageBox('Ocorreu um problema ao salvar as informações no banco de dados!','Atenção',MB_OK + MB_ICONERROR);
    end
    else
    begin
      Application.MessageBox('Roteiro gravado no banco de dados!','Atenção',MB_OK + MB_ICONINFORMATION);
    end;
  finally
    FRoteiros.Free;
    lblAviso.Caption := '';
    lblAviso.Refresh;
  end;
end;

procedure Tview_RoteirosExpressas.tvRoteirosNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  case AButtonIndex of
    16: ExportData;
  end;
end;

end.
