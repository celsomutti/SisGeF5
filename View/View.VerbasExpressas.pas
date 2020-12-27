unit View.VerbasExpressas;

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
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxBarBuiltInMenu, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  cxButtons, cxPC, cxLabel, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxTextEdit, cxDBLookupComboBox, cxSpinEdit, cxCalendar, cxCurrencyEdit, cxMaskEdit, cxBlobEdit,
  Control.TiposVerbasExpressas, Control.VerbasExpressas, cxGridExportLink, ShellAPI, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  Control.Sistema, Common.ENum, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  Tview_Verbas_Expressas = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxLabel1: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    aclVerbas: TActionList;
    cxButton1: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    actFechar: TAction;
    mtbverbas: TFDMemTable;
    dsVerbas: TDataSource;
    tvVerbas: TcxGridDBTableView;
    lvVerbas: TcxGridLevel;
    grdVerbas: TcxGrid;
    dxLayoutItem2: TdxLayoutItem;
    mtbTipos: TFDMemTable;
    dsTipos: TDataSource;
    mtbTiposcod_tipo: TIntegerField;
    mtbTiposdes_tipo: TStringField;
    mtbTiposdes_colunas: TStringField;
    tvVerbasid_verba: TcxGridDBColumn;
    tvVerbascod_tipo: TcxGridDBColumn;
    tvVerbasdat_vigencia: TcxGridDBColumn;
    tvVerbasval_verba: TcxGridDBColumn;
    tvVerbasval_performance: TcxGridDBColumn;
    tvVerbasnum_cep_inicial: TcxGridDBColumn;
    tvVerbasnum_cep_final: TcxGridDBColumn;
    tvVerbasqtd_peso_inicial: TcxGridDBColumn;
    tvVerbasqtd_peso_final: TcxGridDBColumn;
    SaveDialog: TSaveDialog;
    lcbTipoVerba: TcxLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    actPesquisar: TAction;
    lcbClientes: TcxLookupComboBox;
    dxLayoutItem6: TdxLayoutItem;
    dsCliente: TDataSource;
    tvVerbasid_grupo: TcxGridDBColumn;
    mtbverbasid_verba: TIntegerField;
    mtbverbascod_cliente: TIntegerField;
    mtbverbascod_tipo: TIntegerField;
    mtbverbasid_grupo: TIntegerField;
    mtbverbasdat_vigencia: TDateField;
    mtbverbasnum_cep_inicial: TStringField;
    mtbverbasnum_cep_final: TStringField;
    mtbverbasval_verba: TSingleField;
    mtbverbasval_performance: TSingleField;
    mtbverbascod_roteiro: TIntegerField;
    tvVerbascod_roteiro: TcxGridDBColumn;
    mtbverbasqtd_peso_inicial: TSingleField;
    mtbverbasqtd_peso_final: TSingleField;
    procedure actFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure tvVerbasNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure lcbTipoVerbaPropertiesChange(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure mtbverbasAfterInsert(DataSet: TDataSet);
    procedure mtbverbasBeforeDelete(DataSet: TDataSet);
    procedure mtbverbasAfterDelete(DataSet: TDataSet);
    procedure mtbverbasBeforeInsert(DataSet: TDataSet);
    procedure mtbverbasAfterCancel(DataSet: TDataSet);
    procedure mtbverbasBeforePost(DataSet: TDataSet);
    procedure mtbverbasBeforeEdit(DataSet: TDataSet);
    procedure mtbverbasAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure SetupClass;
    procedure ExportaDados;
    procedure PopulaVerbas(iTipo: Integer; iCliente: Integer);
    procedure PopulaTipos;
    procedure PreparaGrade(iTipo: Integer);
    procedure PopulaClientes;
    procedure PesquisaVerba;
    function ValidaPesquisa(): Boolean;
  public
    { Public declarations }
  end;

var
  view_Verbas_Expressas: Tview_Verbas_Expressas;
  FTipos : TTiposVerbasExpressasControl;
  FVerbas : TVerbasExpressasControl;
  bFlag: Boolean;

implementation

{$R *.dfm}

uses Data.SisGeF, Global.Parametros;

procedure Tview_Verbas_Expressas.actFecharExecute(Sender: TObject);
begin
  Perform(WM_CLOSE, 0, 0);
end;

procedure Tview_Verbas_Expressas.actPesquisarExecute(Sender: TObject);
begin
 PesquisaVerba;
end;

procedure Tview_Verbas_Expressas.ExportaDados;
var
  FileExt, sFile: String;
begin
  if not (mtbverbas.Active) then
  begin
    Exit;
  end;
  if mtbverbas.IsEmpty then
  begin
    Exit;
  end;
  sFile := '';
  SaveDialog.FileName := sFile;
  SaveDialog.Filter := '';
  SaveDialog.Filter := 'Excel (*.xls) |*.xls|XML (*.xml) |*.xml|Arquivo Texto (*.txt) |*.txt|Página Web (*.html)|*.html';
  SaveDialog.Title := 'Exportar Dados';
  SaveDialog.DefaultExt := 'xls';
  if SaveDialog.Execute then
  begin
    if FileExists(SaveDialog.FileName) then
    begin
      if Application.MessageBox(PChar('Arquivo ' + SaveDialog.FileName + ' já existe! Sobrepor ?'), 'Atenção', MB_YESNO + MB_ICONQUESTION)  = IDNO then
      begin
        Exit;
      end;
    end;
    FileExt := LowerCase(ExtractFileExt(SaveDialog.FileName));
    if FileExt = '.xls' then
      ExportGridToExcel(SaveDialog.FileName, grdVerbas, False, True, False)
    else if FileExt = '.xml' then
      ExportGridToXML(SaveDialog.FileName, grdVerbas, False)
    else if FileExt = '.txt' then
      ExportGridToText(SaveDialog.FileName, grdVerbas, False)
    else if FileExt = '.html' then
      ExportGridToHTML(SaveDialog.FileName, grdVerbas, False);
    ShellExecute(Handle, 'open', pchar(SaveDialog.FileName), nil, nil, SW_SHOW);
  end;
end;

procedure Tview_Verbas_Expressas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FVerbas.Free;
  mtbverbas.Close;
  Action := caFree;
  view_Verbas_Expressas := nil;
end;

procedure Tview_Verbas_Expressas.FormCreate(Sender: TObject);
begin
  FVerbas := TVerbasExpressasControl.Create;
end;

procedure Tview_Verbas_Expressas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  begin
    if grdVerbas.IsFocused then
    begin
      key := #0;
      Exit;
    end;
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;
end;

procedure Tview_Verbas_Expressas.FormShow(Sender: TObject);
begin
  bFlag := False;
  PopulaTipos;
  PopulaClientes;
end;

procedure Tview_Verbas_Expressas.lcbTipoVerbaPropertiesChange(Sender: TObject);
begin
  if mtbverbas.Active then mtbverbas.Close;
  PreparaGrade(lcbTipoVerba.EditValue);
end;

procedure Tview_Verbas_Expressas.mtbverbasAfterCancel(DataSet: TDataSet);
begin
  FVerbas.Verbas.Acao := tacIndefinido;
end;

procedure Tview_Verbas_Expressas.mtbverbasAfterDelete(DataSet: TDataSet);
begin
  if not FVerbas.Gravar then
  begin
    Application.MessageBox('Erro ao tentar excluir a verba!', 'Erro!', MB_OK + MB_ICONERROR);
    PopulaVerbas(lcbTipoVerba.EditValue, lcbClientes.EditValue);
  end;
end;

procedure Tview_Verbas_Expressas.mtbverbasAfterInsert(DataSet: TDataSet);
begin
  if bFLag then Exit;
  mtbverbasid_verba.AsInteger:= 0;
end;

procedure Tview_Verbas_Expressas.mtbverbasAfterPost(DataSet: TDataSet);
begin
  if not FVerbas.Gravar then
  begin
    Application.MessageBox('Erro ao tentar gravar a verba!', 'Erro!', MB_OK + MB_ICONERROR);
  end;
  PopulaVerbas(lcbTipoVerba.EditValue, lcbClientes.EditValue);
end;

procedure Tview_Verbas_Expressas.mtbverbasBeforeDelete(DataSet: TDataSet);
begin
  FVerbas.Verbas.Acao := tacExcluir;
  SetupClass;
end;

procedure Tview_Verbas_Expressas.mtbverbasBeforeEdit(DataSet: TDataSet);
begin
  FVerbas.Verbas.Acao := tacAlterar;
end;

procedure Tview_Verbas_Expressas.mtbverbasBeforeInsert(DataSet: TDataSet);
begin
  FVerbas.Verbas.Acao := tacIncluir;
end;

procedure Tview_Verbas_Expressas.mtbverbasBeforePost(DataSet: TDataSet);
begin
  if bFLag then Exit;

  if Application.MessageBox('Confirma gravar os dados?','Gravar', MB_YESNO+ MB_ICONQUESTION) = IDNO then
  begin
    Abort;
    Exit;
  end;
  mtbverbascod_tipo.AsInteger := lcbTipoVerba.EditValue;
  SetupClass;
end;

procedure Tview_Verbas_Expressas.PesquisaVerba;
var
  iTipo: Integer;
  iCliente : Integer;
begin
  if not ValidaPesquisa() then Exit;
  
  iTipo := lcbTipoVerba.EditValue;
  iCliente := lcbClientes.EditValue;
  PopulaVerbas(iTipo, iCliente);
end;

procedure Tview_Verbas_Expressas.PopulaClientes;
begin
if Data_Sisgef.mtbClientesEmpresa.Active then Data_Sisgef.mtbClientesEmpresa.Close;
  Data_Sisgef.mtbClientesEmpresa.Open;
  Data_Sisgef.mtbClientesEmpresa.Insert;
  Data_Sisgef.mtbClientesEmpresadom_check.AsInteger := 0;
  Data_Sisgef.mtbClientesEmpresacod_cliente.AsInteger := 1;
  Data_Sisgef.mtbClientesEmpresanom_cliente.AsString := 'TRANSFOLHA';
  Data_Sisgef.mtbClientesEmpresa.Post;
  Data_Sisgef.mtbClientesEmpresa.Insert;
  Data_Sisgef.mtbClientesEmpresadom_check.AsInteger := 0;
  Data_Sisgef.mtbClientesEmpresacod_cliente.AsInteger := 2;
  Data_Sisgef.mtbClientesEmpresanom_cliente.AsString := 'CARRIERS';
  Data_Sisgef.mtbClientesEmpresa.Post;
  Data_Sisgef.mtbClientesEmpresa.Insert;
  Data_Sisgef.mtbClientesEmpresadom_check.AsInteger := 0;
  Data_Sisgef.mtbClientesEmpresacod_cliente.AsInteger := 3;
  Data_Sisgef.mtbClientesEmpresanom_cliente.AsString := 'SPLOG';
  Data_Sisgef.mtbClientesEmpresa.Post;
  Data_Sisgef.mtbClientesEmpresa.Insert;
  Data_Sisgef.mtbClientesEmpresadom_check.AsInteger := 0;
  Data_Sisgef.mtbClientesEmpresacod_cliente.AsInteger := 4;
  Data_Sisgef.mtbClientesEmpresanom_cliente.AsString := 'DIRECT';
  Data_Sisgef.mtbClientesEmpresa.Post;
  Data_Sisgef.mtbClientesEmpresa.Insert;
  Data_Sisgef.mtbClientesEmpresadom_check.AsInteger := 0;
  Data_Sisgef.mtbClientesEmpresacod_cliente.AsInteger := 5;
  Data_Sisgef.mtbClientesEmpresanom_cliente.AsString := 'RODOÊ';
  Data_Sisgef.mtbClientesEmpresa.Post;
  Data_Sisgef.mtbClientesEmpresa.First;
end;

procedure Tview_Verbas_Expressas.PopulaTipos;
var
  FDQuery: TFDQuery;
  aParam: array of Variant;
begin
  try
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    FTipos := TTiposVerbasExpressasControl.Create;
    SetLength(aParam,3);
    aParam[0] := 'APOIO';
    aParam[1] := '*';
    aParam[2] := '';
    FDQuery := FTipos.Localizar(aParam);
    Finalize(aParam);
    if mtbTipos.Active then mtbTipos.Close;
    if not FDQuery.IsEmpty then
    begin
      mtbTipos.FetchOptions.Mode := fmAll;
      mtbTipos.Data := FDQuery.Data;
    end;
  finally
    FTipos.Free;
    FDQuery.Free
  end;
end;

procedure Tview_Verbas_Expressas.PopulaVerbas(iTipo: Integer; iCliente: Integer);
var
  FDQuery: TFDQuery;
  aParam: array of variant;
begin
  try
    bFlag := False;
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    SetLength(aParam,3);
    aParam[0] := 'TIPOCLIENTE';
    aParam[1] := iTipo;
    aParam[2] := iCliente;
    FDQuery := FVerbas.Localizar(aParam);
    Finalize(aParam);
    if mtbverbas.Active then mtbverbas.Close;
    if not FDQuery.IsEmpty then
    begin
       bFlag := True;
      mtbverbas.FetchOptions.Mode := fmAll;
      mtbverbas.Data := FDQuery.Data;
      //mtbverbas.Open;
      //mtbverbas.CopyDataSet(fdQuery, [coRestart, coAppend]);
      bFlag := False;
    end
    else
    begin
      mtbverbas.Open;
    end;
  finally
    FDQuery.Free;
  end;
end;

procedure Tview_Verbas_Expressas.PreparaGrade(iTipo: Integer);
var
  FDQuery: TFDQuery;
  aParam: array of variant;
  sColunas: String;
  lColunas: TStringlist;
  i: Integer;
begin
  try
    lColunas := TStringList.Create;
    lColunas.StrictDelimiter := True;
    lColunas.Delimiter := ';';
    sColunas := '';
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    FTipos := TTiposVerbasExpressasControl.Create;
    SetLength(aParam,2);
    aParam[0] := 'CODIGO';
    aParam[1] := iTipo;
    FDQuery := FTipos.Localizar(aParam);
    Finalize(aParam);
    if not FDQuery.IsEmpty then sColunas := FDQuery.FieldByName('des_colunas').AsString;
    if Trim(sColunas).IsEmpty then Exit;
    lColunas.DelimitedText := sColunas;
    for i := 3 to tvVerbas.ColumnCount - 1 do
    begin
      tvVerbas.Columns[i].Visible := False;
    end;
    for i := 0 to lColunas.Count - 1 do
    begin
      tvVerbas.Columns[StrToIntDef(lColunas[i], 0)].Visible := True;
    end;
  finally
    FTipos.Free;
    FDQuery.Free;
  end;
end;


procedure Tview_Verbas_Expressas.SetupClass;
begin
  FVerbas.Verbas.ID := mtbverbasid_verba.AsInteger;
  FVerbas.Verbas.Tipo := mtbverbascod_tipo.AsInteger;
  FVErbas.Verbas.Cliente := lcbClientes.EditValue;
  FVerbas.Verbas.Grupo := mtbverbasid_grupo.AsInteger;
  FVerbas.Verbas.Vigencia := mtbverbasdat_vigencia.AsDateTime;
  FVerbas.Verbas.Verba := mtbverbasval_verba.AsFloat;
  FVerbas.Verbas.Performance := mtbverbasval_performance.AsFloat;
  FVerbas.Verbas.CEPInicial := mtbverbasnum_cep_inicial.AsString;
  FVerbas.Verbas.CEPFinal := mtbverbasnum_cep_final.AsString;
  FVerbas.Verbas.PesoInicial := mtbverbasqtd_peso_inicial.AsFloat;
  FVerbas.Verbas.PesoFinal := mtbverbasqtd_peso_final.AsFloat;
end;

procedure Tview_Verbas_Expressas.tvVerbasNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  case AButtonIndex of
    16: ExportaDados;
  end;
end;

function Tview_Verbas_Expressas.ValidaPesquisa: Boolean;
begin
  Result := False;
  if lcbTipoVerba.Text = '' then
  begin
    Application.MessageBox('Informe o tipo de verba.', 'Atenção', MB_OK + MB_ICONWARNING);
    lcbTipoVerba.SetFocus;
    Exit;
  end;
  if lcbClientes.Text = '' then
  begin
    Application.MessageBox('Informe o cliente.', 'Atenção', MB_OK + MB_ICONWARNING);
    lcbClientes.SetFocus;
    Exit;
  end;
  Result := True;
end;

end.
