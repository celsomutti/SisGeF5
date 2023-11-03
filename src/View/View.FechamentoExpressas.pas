unit View.FechamentoExpressas;

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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, dxLayoutControlAdapters, Vcl.Menus, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, cxButtons, System.DateUtils, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxImageComboBox, cxCurrencyEdit, cxCheckBox, dxToggleSwitch, dxActivityIndicator;

type
  Tview_FechamentoExpressas = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxLabel1: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    cboAnos: TcxComboBox;
    dxLayoutItem2: TdxLayoutItem;
    cboMes: TcxComboBox;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cboQuinzena: TcxComboBox;
    dxLayoutItem4: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    aclExtratoExpressas: TActionList;
    actPesquisar: TAction;
    cbocliente: TcxComboBox;
    dxLayoutItem6: TdxLayoutItem;
    tvExtrato: TcxGridDBTableView;
    lvExtrato: TcxGridLevel;
    grdExtrato: TcxGrid;
    dxLayoutItem7: TdxLayoutItem;
    tvExtratocod_expressa: TcxGridDBColumn;
    tvExtratoqtd_volumes: TcxGridDBColumn;
    tvExtratoqtd_entregas: TcxGridDBColumn;
    tvExtratoqtd_volumes_extra: TcxGridDBColumn;
    tvExtratoqtd_atraso: TcxGridDBColumn;
    tvExtratoval_producao: TcxGridDBColumn;
    tvExtratoval_performance: TcxGridDBColumn;
    tvExtratoval_total_ticket: TcxGridDBColumn;
    tvExtratocod_tipo_expressa: TcxGridDBColumn;
    tvExtratoval_ticket_medio: TcxGridDBColumn;
    tvExtratoval_extravios: TcxGridDBColumn;
    tvExtratoval_debitos: TcxGridDBColumn;
    tvExtratoval_creditos: TcxGridDBColumn;
    tvExtratoval_total: TcxGridDBColumn;
    tvExtratonom_expressa: TcxGridDBColumn;
    dsExtrato: TDataSource;
    chkExpandir: TcxCheckBox;
    dxLayoutItem8: TdxLayoutItem;
    cxLabel2: TcxLabel;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    tvExtratodes_banco: TcxGridDBColumn;
    tvExtratodes_tipo_conta: TcxGridDBColumn;
    tvExtratonum_agencia: TcxGridDBColumn;
    tvExtratonum_conta: TcxGridDBColumn;
    tvExtratonom_favorecido: TcxGridDBColumn;
    tvExtratonum_cpf_cnpj: TcxGridDBColumn;
    actFechar: TAction;
    cxButton2: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    tvExtratoqtd_pfp: TcxGridDBColumn;
    chkAnteriores: TcxCheckBox;
    dxLayoutItem11: TdxLayoutItem;
    chkVolumeExtra: TcxCheckBox;
    dxLayoutItem12: TdxLayoutItem;
    actExtrato: TAction;
    cxButton3: TcxButton;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    procedure actPesquisarExecute(Sender: TObject);
    procedure cxCheckBox1PropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cboAnosPropertiesChange(Sender: TObject);
    procedure cboMesPropertiesChange(Sender: TObject);
    procedure cboQuinzenaPropertiesChange(Sender: TObject);
    procedure cboclientePropertiesChange(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure actExtratoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function ValidaProcesso(): Boolean;
    procedure ProcessaExtrato;
    procedure FechaBanco;
    function ExtratoExpressas(iAno, iMes, iQuinzena, iCliente: Integer; bFlag, bData: Boolean): Boolean;
    procedure Start;
  public
    { Public declarations }
  end;

var
  view_FechamentoExpressas: Tview_FechamentoExpressas;

implementation

{$R *.dfm}

uses Data.SisGeF, View.ExtratoExpressas;

{ Tview_ExtratoExpressas }

procedure Tview_FechamentoExpressas.actExtratoExecute(Sender: TObject);
begin
  if ExtratoExpressas(StrToInt(cboAnos.Text), cboMes.ItemIndex, cboQuinzena.ItemIndex, cbocliente.ItemIndex, chkVolumeExtra.Checked, chkAnteriores.Checked) then
  begin
    if not Assigned(view_ExtratoExpressas) then
    begin
      view_ExtratoExpressas := Tview_ExtratoExpressas.Create(Application);
    end;
    view_ExtratoExpressas.Show;
  end;
end;

procedure Tview_FechamentoExpressas.actFecharExecute(Sender: TObject);
begin
  Perform(WM_CLOSE, 0, 0);
end;

procedure Tview_FechamentoExpressas.actPesquisarExecute(Sender: TObject);
begin
  ProcessaExtrato;
end;

procedure Tview_FechamentoExpressas.cboAnosPropertiesChange(Sender: TObject);
begin
  FechaBanco;
end;

procedure Tview_FechamentoExpressas.cboclientePropertiesChange(Sender: TObject);
begin
  FechaBanco;
end;

procedure Tview_FechamentoExpressas.cboMesPropertiesChange(Sender: TObject);
begin
  FechaBanco;
end;

procedure Tview_FechamentoExpressas.cboQuinzenaPropertiesChange(Sender: TObject);
begin
  FechaBanco;
end;

procedure Tview_FechamentoExpressas.cxCheckBox1PropertiesChange(Sender: TObject);
begin
  if chkExpandir.Checked then
  begin
    tvExtrato.ViewData.Expand(True);
  end
  else
  begin
    tvExtrato.ViewData.Collapse(True);
  end;
end;

function Tview_FechamentoExpressas.ExtratoExpressas(iAno, iMes, iQuinzena, iCliente: Integer; bFlag, bData: Boolean): Boolean;
var
  robExtrato: TRoBExtratoExpressas;
begin
  try
    Result := False;
    robExtrato := TRoBExtratoExpressas.Create;
    Result := robExtrato.ProcessaExtrato(iAno, iMes, iQuinzena, iCliente, bFlag, bData);
  finally
    robExtrato.Free;
  end;
end;

procedure Tview_FechamentoExpressas.FechaBanco;
begin
  if Data_Sisgef.mtbFechamentoExpressas.Active then Data_Sisgef.mtbFechamentoExpressas.Close;
  cxLabel2.Caption :='';
  cxLabel2.Refresh;
end;

procedure Tview_FechamentoExpressas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FechaBanco;
  Action := caFree;
  view_FechamentoExpressas := nil;
end;

procedure Tview_FechamentoExpressas.FormShow(Sender: TObject);
begin
  Start;
end;

procedure Tview_FechamentoExpressas.ProcessaExtrato;
var
  robExtrato: TRoBExtratoExpressas;
  iAno, iMes, iQuinzena, iCliente: Integer;
begin
  try
    robExtrato := TRoBExtratoExpressas.Create;
    chkExpandir.Checked := False;
    cxLabel2.Caption := 'Processando. Aguarde ...';
    cxLabel2.Refresh;
    if not ValidaProcesso() then Exit;
    iAno := StrToIntDef(cboAnos.Text, YearOf(Now));
    iMes := cboMes.ItemIndex;
    iQuinzena := cboQuinzena.ItemIndex;
    iCliente := cboCliente.ItemIndex;
    if not robExtrato.StartFechamento(iAno, iMes, iQuinzena, iCliente, chkVolumeExtra.Checked, chkAnteriores.Checked) then
    begin
      Application.MessageBox('Fechamento não foi executado!', 'Atenção', MB_OK + MB_ICONHAND);
      FechaBanco;
      Exit;
      cxLabel2.Caption := '';
      cxLabel2.Refresh;
    end;
    actExtrato.Enabled := not Data_Sisgef.mtbFechamentoExpressas.IsEmpty;
    chkExpandir.Checked := True;
  finally
    robExtrato.Free;
  end;
end;

procedure Tview_FechamentoExpressas.Start;
var
  dtData : TDate;
begin
  dtData := IncDay(Now,-30);
  cboAnos.Text := IntToStr(YearOf(dtData));
  cboMes.ItemIndex := MonthOf(dtData);
end;

function Tview_FechamentoExpressas.ValidaProcesso: Boolean;
begin
  Result := False;
  if cboAnos.ItemIndex <= 0 then
  begin
    Application.MessageBox('Selecione o ano do extrato!', 'Atenção', MB_OK + MB_ICONHAND);
    cboAnos.SetFocus;
    Exit;
  end;
  if cboMes.ItemIndex <= 0 then
  begin
    Application.MessageBox('Selecione o mês do extrato!', 'Atenção', MB_OK + MB_ICONHAND);
    cboMes.SetFocus;
    Exit;
  end;
  if cboQuinzena.ItemIndex <= 0 then
  begin
    Application.MessageBox('Selecione a quinzena do extrato!', 'Atenção', MB_OK + MB_ICONHAND);
    cboQuinzena.SetFocus;
    Exit;
  end;
  if cboCliente.ItemIndex < 0 then
  begin
    Application.MessageBox('Selecione o Cliente do extrato!', 'Atenção', MB_OK + MB_ICONHAND);
    cboCliente.SetFocus;
    Exit;
  end;
  if Application.MessageBox('Confirma o processo de fechamento de expressas?', 'Fechamento', MB_YESNO + MB_ICONQUESTION) = IDNO then
  begin
    Exit;
  end;
  Result := True;
end;

end.
