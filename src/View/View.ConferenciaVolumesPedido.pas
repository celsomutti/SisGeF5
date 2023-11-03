unit View.ConferenciaVolumesPedido;

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
  dxLayoutcxEditAdapters, cxLabel, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxTextEdit, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, System.Actions, Vcl.ActnList, cxCheckBox, cxMaskEdit, System.StrUtils;

type
  Tview_ConferenciaVolumesPedido = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxLabel1: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    ds: TDataSource;
    txtLeitura: TcxTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    tvVolumes: TcxGridDBTableView;
    lvVolumes: TcxGridLevel;
    grdVolumes: TcxGrid;
    dxLayoutItem3: TdxLayoutItem;
    aclConferencia: TActionList;
    actCancelar: TAction;
    tvVolumesdom_ok: TcxGridDBColumn;
    tvVolumesnum_nossonumero: TcxGridDBColumn;
    tvVolumesnum_volume: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure txtLeituraPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function RetornaNNVolume(sLeitura: String; iCliente: Integer): String;
    procedure LocalizaVolume(sValor: String);
    procedure FechaForm;
  public
    { Public declarations }
    sNN: String;
    iCliente: Integer;
  end;

var
  view_ConferenciaVolumesPedido: Tview_ConferenciaVolumesPedido;
  iConta : Integer;

implementation

{$R *.dfm}

uses Data.SisGeF, View.Aviso, Common.Utils, TFO.Barras;

{ Tview_ConferenciaVolumesPedido }

procedure Tview_ConferenciaVolumesPedido.FechaForm;
begin
  ModalResult := mrOk;
end;

procedure Tview_ConferenciaVolumesPedido.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  begin
    Key := #0;
    if grdVolumes.IsFocused then Exit;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;
end;

procedure Tview_ConferenciaVolumesPedido.FormShow(Sender: TObject);
begin
  iConta := 0;
end;

procedure Tview_ConferenciaVolumesPedido.LocalizaVolume(sValor: String);
var
  iVolumes : Integer;
  iVolume: Integer;
  lValores: TStringList;
  sNumero : String;
  sValores: String;
begin
  sValores := RetornaNNVolume(sValor,iCliente);
  lValores := TStringList.Create;
  lValores.StrictDelimiter := True;
  lValores.Delimiter := ';';
  lValores.DelimitedText := sValores;
  sNumero := FormatFloat('0', StrToFloatDef(lValores[0], 0));
  iVolume := StrToIntDef(lValores[1],1);
  if sNumero <> sNN then
  begin
    Application.MessageBox('Pedido diferente da conferência!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    txtLeitura.SetFocus;
    Exit;
  end;
  iVolumes := Data_Sisgef.mtbConferenciaPedido.RecordCount;
  if not Data_Sisgef.mtbConferenciaPedido.IsEmpty then Data_Sisgef.mtbConferenciaPedido.First;
  while not Data_Sisgef.mtbConferenciaPedido.Eof do
  begin
    if Data_Sisgef.mtbConferenciaPedidonum_volume.AsInteger = iVolume then
    begin
      if Data_Sisgef.mtbConferenciaPedidodom_ok.AsInteger = 0 then
      begin
        Data_Sisgef.mtbConferenciaPedido.Edit;
        Data_Sisgef.mtbConferenciaPedidodom_ok.AsInteger := 1;
        Data_Sisgef.mtbConferenciaPedido.Post;
        iConta := iConta + 1;
      end;
    end;
    Data_Sisgef.mtbConferenciaPedido.Next;
  end;
  txtLeitura.SetFocus;
  if iVolumes = Iconta then FechaForm;
end;

function Tview_ConferenciaVolumesPedido.RetornaNNVolume(sLeitura: String; iCliente: Integer): String;
var
  sNN: String;
  barra : TBarrTFO;
  iVolume: Integer;
  sVolume: String;
begin
  sNN := '';
  iVolume := 0;
  sVolume := '';
  if iCliente = 1 then
  begin
    if TUtils.ENumero(sLeitura) then
    begin
      sNN := FormatFloat('00000000000000',StrToFloat(sLeitura));
      if Length(sNN) > 11 then
      begin
        sNN := FormatFloat('0', StrToFloatDef(LeftStr(sLeitura,11),0));
        sVolume := ';' + RightStr(sLeitura,3) + ';';
      end;
    end
    else
    begin
      barra := TBarrTFO.Create;
      if barra.RetornaNN(sLeitura) then
      begin
        sNN := barra.NossoNumero;
        iVolume := barra.Volumes;
        sVolume := ';' + iVolume.ToString + ';';
      end;
      barra.Free;
    end;
  end
  else if icliente = 2 then
  begin
    sNN := Copy(sLeitura,2,11);
  end
  else if icliente = 3 then
  begin
    sNN := Copy(sLeitura,23,12);
  end;
  Result := Trim(sNN + sVolume);
end;

procedure Tview_ConferenciaVolumesPedido.txtLeituraPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  if DisplayValue <> '' then LocalizaVolume(DisplayValue);
  Displayvalue := '';
end;

end.
