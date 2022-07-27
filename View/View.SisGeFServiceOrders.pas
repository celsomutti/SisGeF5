unit View.SisGeFServiceOrders;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  cxTextEdit, cxMaskEdit, cxButtonEdit, System.Actions, Vcl.ActnList, Vcl.ComCtrls, dxCore, cxDateUtils, cxDropDownEdit, cxCalendar,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Data.DB, cxSpinEdit, cxTimeEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxCurrencyEdit, dxLayoutControlAdapters, Vcl.Menus, Vcl.Buttons, Vcl.StdCtrls, cxButtons, Common.ENum,
  Controller.SisGeFOrderServices;

type
  Tview_SisGeFServiceOrders = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    cxLabel1: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    numeroOS: TcxButtonEdit;
    dxLayoutItem2: TdxLayoutItem;
    actionListOS: TActionList;
    actionSearchOS: TAction;
    dxLayoutGroup5: TdxLayoutGroup;
    dataOS: TcxDateEdit;
    dxLayoutItem3: TdxLayoutItem;
    tipoOS: TcxComboBox;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    cliente: TcxLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    dsClientes: TDataSource;
    dxLayoutGroup7: TdxLayoutGroup;
    codigoMotorista: TcxButtonEdit;
    dxLayoutItem6: TdxLayoutItem;
    actionSearchDriver: TAction;
    nomeMotorista: TcxTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    placaVeiculo: TcxButtonEdit;
    dxLayoutItem8: TdxLayoutItem;
    descricaoVeiculo: TcxTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    roteiro: TcxButtonEdit;
    dxLayoutItem10: TdxLayoutItem;
    actionSearchVeichle: TAction;
    actionSearchRoadMap: TAction;
    dxLayoutGroup10: TdxLayoutGroup;
    kmInicial: TcxMaskEdit;
    dxLayoutItem11: TdxLayoutItem;
    horaSaida: TcxTimeEdit;
    dxLayoutItem12: TdxLayoutItem;
    kmFinal: TcxMaskEdit;
    dxLayoutItem13: TdxLayoutItem;
    horaRetorno: TcxTimeEdit;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    gridOSDBTableView1: TcxGridDBTableView;
    gridOSLevel1: TcxGridLevel;
    gridOS: TcxGrid;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutGroup12: TdxLayoutGroup;
    memTableServices: TFDMemTable;
    dsService: TDataSource;
    memTableServicesnum_item: TAutoIncField;
    memTableServicesdes_servico: TStringField;
    memTableServicesqtd_item: TFloatField;
    memTableServicesval_unitario: TFloatField;
    memTableServicesval_total: TFloatField;
    gridOSDBTableView1num_item: TcxGridDBColumn;
    gridOSDBTableView1des_servico: TcxGridDBColumn;
    gridOSDBTableView1qtd_item: TcxGridDBColumn;
    gridOSDBTableView1val_unitario: TcxGridDBColumn;
    gridOSDBTableView1val_total: TcxGridDBColumn;
    dxLayoutGroup13: TdxLayoutGroup;
    actionNewOS: TAction;
    actionEditOS: TAction;
    actionDeleteOS: TAction;
    actionLocateOS: TAction;
    actionSaveOS: TAction;
    actionCloseForm: TAction;
    cxButton1: TcxButton;
    dxLayoutItem16: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem17: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutItem19: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutItem20: TdxLayoutItem;
    cxButton5: TcxButton;
    dxLayoutItem21: TdxLayoutItem;
    cxButton6: TcxButton;
    dxLayoutItem22: TdxLayoutItem;
    actionCancel: TAction;
    cxButton7: TcxButton;
    dxLayoutItem18: TdxLayoutItem;
    procedure actionCloseFormExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionSearchOSExecute(Sender: TObject);
  private
    procedure StartForm;
    function LocateOSByNumber(iNumber: integer): boolean;
    procedure ClearFieldsForm;
    procedure PopulateFieldsForm;
    procedure Mode;
  public
    { Public declarations }
  end;

var
  view_SisGeFServiceOrders: Tview_SisGeFServiceOrders;
  FAcao: Tacao;
  FOS : TSisGeFOrderServicesController;

implementation

{$R *.dfm}

uses Data.SisGeF;

{ Tview_SisGeFServiceOrders }

procedure Tview_SisGeFServiceOrders.actionCloseFormExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_SisGeFServiceOrders.actionSearchOSExecute(Sender: TObject);
begin

  if LocateOSByNumber(StrToIntDef(numeroOS.Text, 0)) then
    PopulateFieldsForm;
end;

procedure Tview_SisGeFServiceOrders.ClearFieldsForm;
begin
  numeroOS.EditValue := 0;
  dataOS.Clear;
  tipoOS.ItemIndex := 2;
  cliente.ItemIndex := -1;
  codigoMotorista.EditValue := 0;
  placaVeiculo.Clear;
  roteiro.Clear;
  kmInicial.EditValue := 0;
  horaSaida.Clear;
  kmFinal.EditValue := 0;
  horaRetorno.Clear;
  memTableServices.Active := False;
end;

procedure Tview_SisGeFServiceOrders.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  memTableServices.Active := False;
  Action := caFree;
  view_SisGeFServiceOrders := nil;
end;

function Tview_SisGeFServiceOrders.LocateOSByNumber(iNumber: integer): boolean;
var
  aParam : array of variant;
begin
  try
    Result := False;
    FOS := TSisGeFOrderServicesController.Create;
    SetLength(aParam, 2);
    aParam := ['OS', iNumber];
    if not FOS.Search(aParam) then
    begin
      Exit;
    end;
    Result := True;
  finally
    Finalize(aParam);
    FOS.Free;
  end;
end;

procedure Tview_SisGeFServiceOrders.Mode;
begin
  if FAcao = tacIndefinido then
  begin
    actionNewOS.Enabled := True;
    actionEditOS.Enabled := False;
    actionCancel.Enabled := False;
    actionLocateOS.Enabled := True;
    actionDeleteOS.Enabled := False;
    actionSaveOS.Enabled := False;
    actionSearchOS.Enabled := True;
    actionSearchDriver.Enabled := False;
    actionSearchVeichle.Enabled := False;
    actionSearchRoadMap.Enabled := False;
    numeroOS.Properties.ReadOnly := False;
    dataOS.Properties.ReadOnly := True;
    tipoOS.Properties.ReadOnly := True;
    cliente.Properties.ReadOnly := True;
    codigoMotorista.Properties.ReadOnly := True;
    placaVeiculo.Properties.ReadOnly := True;
    roteiro.Properties.ReadOnly := True;
    kmInicial.Properties.ReadOnly := True;
    horaSaida.Properties.ReadOnly := True;
    kmFinal.Properties.ReadOnly := True;
    horaRetorno.Properties.ReadOnly := True;
    gridOSDBTableView1.OptionsData.Inserting := False;
    gridOSDBTableView1.OptionsData.Editing := False;
    gridOSDBTableView1.OptionsData.Deleting := False;
  end
  else if FAcao = tacIncluir then
  begin
    actionNewOS.Enabled := False;
    actionEditOS.Enabled := False;
    actionCancel.Enabled := True;
    actionLocateOS.Enabled := False;
    actionDeleteOS.Enabled := False;
    actionSaveOS.Enabled := True;
    actionSearchOS.Enabled := False;
    actionSearchDriver.Enabled := True;
    actionSearchVeichle.Enabled := True;
    actionSearchRoadMap.Enabled := True;
    numeroOS.Properties.ReadOnly := True;
    dataOS.Properties.ReadOnly := False;
    tipoOS.Properties.ReadOnly := False;
    cliente.Properties.ReadOnly := False;
    codigoMotorista.Properties.ReadOnly := False;
    placaVeiculo.Properties.ReadOnly := False;
    roteiro.Properties.ReadOnly := False;
    kmInicial.Properties.ReadOnly := False;
    horaSaida.Properties.ReadOnly := False;
    kmFinal.Properties.ReadOnly := False;
    horaRetorno.Properties.ReadOnly := False;
    gridOSDBTableView1.OptionsData.Inserting := True;
    gridOSDBTableView1.OptionsData.Editing := True;
    gridOSDBTableView1.OptionsData.Deleting := True;
  end
  else if FAcao = tacAlterar then
  begin
    actionNewOS.Enabled := False;
    actionEditOS.Enabled := False;
    actionCancel.Enabled := True;
    actionLocateOS.Enabled := False;
    actionDeleteOS.Enabled := False;
    actionSaveOS.Enabled := True;
    actionSearchOS.Enabled := False;
    actionSearchDriver.Enabled := True;
    actionSearchVeichle.Enabled := True;
    actionSearchRoadMap.Enabled := True;
    numeroOS.Properties.ReadOnly := True;
    dataOS.Properties.ReadOnly := False;
    tipoOS.Properties.ReadOnly := False;
    cliente.Properties.ReadOnly := False;
    codigoMotorista.Properties.ReadOnly := False;
    placaVeiculo.Properties.ReadOnly := False;
    roteiro.Properties.ReadOnly := False;
    kmInicial.Properties.ReadOnly := False;
    horaSaida.Properties.ReadOnly := False;
    kmFinal.Properties.ReadOnly := False;
    horaRetorno.Properties.ReadOnly := False;
    gridOSDBTableView1.OptionsData.Inserting := True;
    gridOSDBTableView1.OptionsData.Editing := True;
    gridOSDBTableView1.OptionsData.Deleting := True;
  end
  else if FAcao = tacPesquisa then
  begin
    actionNewOS.Enabled := True;
    actionEditOS.Enabled := True;
    actionCancel.Enabled := True;
    actionLocateOS.Enabled := True;
    actionDeleteOS.Enabled := True;
    actionSaveOS.Enabled := False;
    actionSearchOS.Enabled := False;
    actionSearchDriver.Enabled := False;
    actionSearchVeichle.Enabled := False;
    actionSearchRoadMap.Enabled := False;
    numeroOS.Properties.ReadOnly := True;
    dataOS.Properties.ReadOnly := True;
    tipoOS.Properties.ReadOnly := True;
    cliente.Properties.ReadOnly := True;
    codigoMotorista.Properties.ReadOnly := True;
    placaVeiculo.Properties.ReadOnly := True;
    roteiro.Properties.ReadOnly := True;
    kmInicial.Properties.ReadOnly := True;
    horaSaida.Properties.ReadOnly := True;
    kmFinal.Properties.ReadOnly := True;
    horaRetorno.Properties.ReadOnly := True;
    gridOSDBTableView1.OptionsData.Inserting := False;
    gridOSDBTableView1.OptionsData.Editing := False;
    gridOSDBTableView1.OptionsData.Deleting := False;
  end;

end;

procedure Tview_SisGeFServiceOrders.PopulateFieldsForm;
var
  lDetalhe: TStringList;
  i: integer;
  sDescricao : String;
begin
  lDetalhe := TStringList.Create;
  lDetalhe.StrictDelimiter := True;
  lDetalhe.Delimiter := '|';
  sDescricao := FOS.OS.ServiceDescription;
  lDetalhe.DelimitedText := sDescricao;
end;

procedure Tview_SisGeFServiceOrders.StartForm;
begin
  FAcao := tacIndefinido;
  Mode;
end;

end.
