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
  Controller.SisGeFOrderServices, cxCheckBox, Controller.SisGeFVehiclesRegistration, Control.Cadastro;

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
    actionShutDownOS: TAction;
    cxButton8: TcxButton;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutGroup14: TdxLayoutGroup;
    OSEncerrada: TcxCheckBox;
    dxLayoutItem24: TdxLayoutItem;
    procedure actionCloseFormExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionSearchOSExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure memTableServicesCalcFields(DataSet: TDataSet);
    procedure tipoOSPropertiesChange(Sender: TObject);
    procedure actionNewOSExecute(Sender: TObject);
    procedure actionShutDownOSExecute(Sender: TObject);
    procedure OSEncerradaPropertiesChange(Sender: TObject);
    procedure actionCancelExecute(Sender: TObject);
    procedure numeroOSPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure actionEditOSExecute(Sender: TObject);
    procedure actionDeleteOSExecute(Sender: TObject);
  private
    procedure StartForm;
    function LocateOSByNumber(iNumber: integer): boolean;
    procedure MountGrid(iOSNumber: integer; sDescription: string);
    function UnMountGrid(): string;
    procedure ClearFieldsForm;
    procedure PopulateFieldsForm;
    procedure Mode;
    procedure NewOS;
    procedure CancelOperation;
    procedure EditOs;
    procedure DeleteOS;
    procedure SetupClass;
    procedure ShutDownOS;
    procedure SearchVehicles;
    function VehicleCodeByBoard(sBoard: string): Integer;
    function VehicleBoardByCode(iCode: integer): String;
    function LocateVehicleDescription(sBoard: string): String;
    procedure SearchPerson;
    function LocatePerson(iCode: integer): string;
  public
    { Public declarations }
  end;

var
  view_SisGeFServiceOrders: Tview_SisGeFServiceOrders;
  FAcao: Tacao;
  FOS : TSisGeFOrderServicesController;

implementation

{$R *.dfm}

uses Data.SisGeF, Global.Parametros, View.SisGeFGeneralSearch, View.PesquisarPessoas;

{ Tview_SisGeFServiceOrders }

procedure Tview_SisGeFServiceOrders.actionCancelExecute(Sender: TObject);
begin
  CancelOperation;
end;

procedure Tview_SisGeFServiceOrders.actionCloseFormExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_SisGeFServiceOrders.actionDeleteOSExecute(Sender: TObject);
begin
  DeleteOS;
end;

procedure Tview_SisGeFServiceOrders.actionEditOSExecute(Sender: TObject);
begin
  EditOS;
end;

procedure Tview_SisGeFServiceOrders.actionNewOSExecute(Sender: TObject);
begin
  NewOS;
end;

procedure Tview_SisGeFServiceOrders.actionSearchOSExecute(Sender: TObject);
begin
  if LocateOSByNumber(StrToIntDef(numeroOS.Text, 0)) then
    PopulateFieldsForm;
end;

procedure Tview_SisGeFServiceOrders.actionShutDownOSExecute(Sender: TObject);
begin
  ShutDownOS;
end;

procedure Tview_SisGeFServiceOrders.CancelOperation;
begin
  FAcao := tacIndefinido;
  ClearFieldsForm;
  Mode;
  numeroOS.SetFocus;
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
  OSEncerrada.Checked := False;
end;

procedure Tview_SisGeFServiceOrders.DeleteOS;
begin
  if MessageDlg('Confirma a exclusão desta OS ?', mtConfirmation, [mbOK,mbCancel], 0) = mrCancel then
    Exit;
  FAcao := tacExcluir;
  if not FOS.Save() then
  begin
    MessageDlg('Ocorreu um problema ao tentar excluir esta OS!', mtWarning, [mbCancel], 0);
    Exit;
  end;
  ClearFieldsForm;
  FAcao := tacIndefinido;
  Mode;
  numeroOS.SetFocus;
end;

procedure Tview_SisGeFServiceOrders.EditOs;
begin
  FAcao := tacAlterar;
  Mode;
  dataOs.SetFocus;
end;

procedure Tview_SisGeFServiceOrders.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FOS.Free;
  memTableServices.Active := False;
  Action := caFree;
  view_SisGeFServiceOrders := nil;
end;

procedure Tview_SisGeFServiceOrders.FormShow(Sender: TObject);
begin
  StartForm;
end;

procedure Tview_SisGeFServiceOrders.NewOS;
begin
  FAcao := tacIncluir;
  Mode;
  dataOs.Date := Now();
  dataOs.SetFocus;
end;

procedure Tview_SisGeFServiceOrders.numeroOSPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  if actionSearchOS.Enabled then
  begin
    if LocateOSByNumber(DisplayValue) then
    PopulateFieldsForm;
  end;
end;

function Tview_SisGeFServiceOrders.LocateOSByNumber(iNumber: integer): boolean;
var
  aParam : array of variant;
begin
  try
    Result := False;
    SetLength(aParam, 2);
    aParam := ['OS', iNumber];
    if not FOS.Search(aParam) then
    begin
      MessageDlg('Número de OS não encontrada !', mtWarning, [mbCancel], 0);
      Exit;
    end;
    if not FOS.SetupClass then
      Exit;
    FAcao := tacPesquisa;
    Mode;
    Result := True;
  finally
    Finalize(aParam);
  end;
end;

function Tview_SisGeFServiceOrders.LocatePerson(iCode: integer): string;
var
  cadastro : TCadastroControl;
  sRetorno: String;
begin
  try
    Result := '';
    sRetorno := '';
    cadastro := TCadastroControl.Create;
    if iCode <> 0 then
    begin
      sRetorno := cadastro.GetField('DES_RAZAO_SOCIAL', 'COD_CADASTRO', iCode.ToString);
    end;
    if sRetorno.IsEmpty then
    begin
      MessageDlg('Cadastro não encontrado!', mtWarning, [mbCancel], 0);
      sRetorno := 'NONE';
    end;
    Result := sRetorno;
  finally
    cadastro.free;
  end;
end;

function Tview_SisGeFServiceOrders.LocateVehicleDescription(sBoard: string): String;
var
  FVeiculo : TControllerSisGeFVehiclesRegistration;
  sRetorno: String;
  sFields, sWhere: string;
  aParam: Array of variant;
begin
  try
    Result := '';
    sRetorno := '';
    sFields := 'select cod_veiculo, des_placa, des_marca, des_modelo, des_tipo, des_cor' ;
    sWhere := ' where des_placa = ' + QuotedStr(sBoard);
    FVeiculo := TControllerSisGeFVehiclesRegistration.Create;
    SetLength(aParam, 3);
    aParam := ['APOIO', sFields, sWhere];
    if FVeiculo.Search(aParam) then
    begin
      if FVeiculo.SetupClass() then
      begin
        sRetorno := FVeiculo.Veiculos.MarcaVeiculo + '/' + FVeiculo.Veiculos.ModeloVeiculo;
      end;
    end;
    if sRetorno.IsEmpty then
    begin
      MessageDlg('FVeiculo não encontrado!', mtWarning, [mbCancel], 0);
      sRetorno := 'NONE';
    end;
    Result := sRetorno;
  finally
    FVeiculo.Veiculos.Query.Connection.Connected := false;
    FVeiculo.free;
  end;
end;

procedure Tview_SisGeFServiceOrders.memTableServicesCalcFields(DataSet: TDataSet);
begin
  memTableServicesval_total.AsFloat := memTableServicesqtd_item.AsFloat * memTableServicesval_unitario.AsFloat;
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
    actionShutDownOS.Enabled := False;
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
    actionShutDownOS.Enabled := False;
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
    actionShutDownOS.Enabled := False;
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
    if FOS.OS.ClosureFlag = 1 then
    begin
      actionEditOS.Enabled := False;
      actionDeleteOS.Enabled := False;
      actionShutDownOS.Enabled := False;
    end
    else
    begin
      actionEditOS.Enabled := True;
      actionDeleteOS.Enabled := True;
      actionShutDownOS.Enabled := True;
    end;
    actionCancel.Enabled := True;
    actionLocateOS.Enabled := True;
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
  end;

end;

procedure Tview_SisGeFServiceOrders.MountGrid(iOSNumber: integer; sDescription: string);
var
  lDetalhe: TStringList;
  i, iTotalLine, iTotalIndex, iStep, iIndex, iItem: integer;
  sDescricao : String;
  aLine: array of variant;
begin
  lDetalhe := TStringList.Create;
  SetLength(aLine,4);
  lDetalhe.StrictDelimiter := True;
  lDetalhe.Delimiter := '|';
  lDetalhe.DelimitedText := sDescription;
  iTotalIndex := Pred(lDetalhe.Count);
  memTableServices.Active := False;
  memTableServices.Active := True;
  if iOSNumber < 44473 then
  begin
    iTotalLine := 3;
    iStep := 2;
  end
  else
  begin
    iTotalLine := 4;
    iStep := 3;
  end;
  iIndex := -1;
  iItem := 1;
  for i := 0 to iTotalIndex  do
  begin
    if iIndex < iStep then
    begin
      Inc(iIndex,1);
    end
    else
    begin
      iIndex := 0;
      memTableServices.Insert;
      memTableServicesdes_servico.Value := aLine[1];
      memTableServicesqtd_item.Value := aLine[2];
      memTableServicesval_unitario.Value := aLine[3];
      memTableServices.Post;
    end;
    if iTotalLine = 3 then
    begin
      aLine[2] := 1;
      case iIndex of
        0 : aLine[iIndex] := iItem;
        1 : aLine[iIndex] := lDetalhe[i];
        2 : aLine[3] := StrToFloatDef(lDetalhe[i], 0);
      end;
    end
    else
    begin
      case iIndex of
        0 : aLine[iIndex] := iItem;
        1 : aLine[iIndex] := lDetalhe[i];
        2 : aLine[iIndex] := StrToFloatDef(lDetalhe[i], 0);
        3 : aLine[iIndex] := StrToFloatDef(lDetalhe[i], 0);
      end;
    end;
    Inc(iItem,1);
  end;
  Finalize(aLine);
end;

procedure Tview_SisGeFServiceOrders.OSEncerradaPropertiesChange(Sender: TObject);
begin
  if OSEncerrada.Checked then
    OSEncerrada.Caption := 'ENCERRADA'
  else
    OSEncerrada.Caption := 'NÃO ENCERRADA';
end;

procedure Tview_SisGeFServiceOrders.PopulateFieldsForm;
begin
  numeroOS.EditValue := FOS.OS.OSNumber;
  dataOS.Date := FOS.OS.OSDate;
  tipoOS.ItemIndex := FOS.OS.ServiceOrderTypeCode;
  cliente.EditValue := FOS.OS.ClientCode;
  codigoMotorista.EditValue := FOS.OS.DeliveryManCode;
  roteiro.Text := FOS.OS.RouteDescription;
  kmInicial.EditValue := FOS.OS.InitialMileage;
  horaSaida.EditValue := FOS.OS.DepartureTime;
  kmFinal.EditValue := FOS.OS.FinalMileage;
  horaRetorno.EditValue := FOS.OS.ReturnTime;
  OSEncerrada.EditValue := FOS.OS.ClosureFlag;
  MountGrid(FOS.OS.OSNumber, FOS.OS.ServiceDescription);
end;

procedure Tview_SisGeFServiceOrders.SearchPerson;
var
  sSQL: String;
  sWhere: String;
begin
  try
    sSQL := '';
    sWhere := '';
    if not Assigned(View_PesquisarPessoas) then
    begin
      View_PesquisarPessoas := TView_PesquisarPessoas.Create(Application);
    end;
    View_PesquisarPessoas.dxLayoutItem1.Visible := True;
    View_PesquisarPessoas.dxLayoutItem2.Visible := True;
    sSQL := 'select COD_CADASTRO as "Código", DES_RAZAO_SOCIAL as Nome, NUM_IE as "CNPJ / CPF", NUM_CNPJ as "CNPJ / CPF" ' +
            'from tbentregadores ';
    sWhere := 'where COD_CADASTRO like paraN or DES_RAZAO_SOCIAL like "%param%" or NUM_IE like "%param%" or ' +
              'NUM_CNPJ like "%param%"';
    View_PesquisarPessoas.sSQL := sSQL;
    View_PesquisarPessoas.sWhere := sWhere;
    View_PesquisarPessoas.bOpen := False;
    View_PesquisarPessoas.Caption := 'Pesquisa de Tabelas de Verbas';
    if View_PesquisarPessoas.ShowModal = mrOK then
    begin
      codigoMotorista.EditValue := View_PesquisarPessoas.qryPesquisa.Fields[1].AsString;
      nomeMotorista.Text := View_PesquisarPessoas.qryPesquisa.Fields[2].AsString;
    end;
  finally
    View_PesquisarPessoas.qryPesquisa.Close;
    View_PesquisarPessoas.tvPesquisa.ClearItems;
    FreeAndNil(View_PesquisarPessoas);
  end;
end;

procedure Tview_SisGeFServiceOrders.SearchVehicles;
var
  sQuery, sDescricao: string;
begin
  sQuery := 'select cod_veiculo as "Código", des_placa as Placa, des_marca as Marca, des_modelo as Modelo, des_tipo as Tipo, ' +
             'des_cor as Cor from viewlistaveiculos' ;

  if not Assigned(view_SisGefGeneralSearch) then
    view_SisGefGeneralSearch := Tview_SisGefGeneralSearch.Create(Application);
  view_SisGefGeneralSearch.sSQL := sQuery;
  view_SisGefGeneralSearch.bOpen := True;
  if view_SisGefGeneralSearch.ShowModal = mrOk then
  begin
    placaVeiculo.Text := view_SisGefGeneralSearch.memTablePesquisa.Fields[1].AsString;
    sDescricao := view_SisGefGeneralSearch.memTablePesquisa.Fields[2].AsString + '/' +
                  view_SisGefGeneralSearch.memTablePesquisa.Fields[3].AsString;
    descricaoVeiculo.Text := sDescricao;
  end;
  FreeAndNil(view_SisGefGeneralSearch);
end;

procedure Tview_SisGeFServiceOrders.SetupClass;
begin
  FOS.OS.OSNumber := numeroOS.EditValue;
  FOS.OS.OSDate := dataOS.Date;
  FOS.OS.ServiceOrderTypeCode := tipoOS.ItemIndex;
  FOS.OS.ClientCode := cliente.EditValue;
  FOS.OS.DeliveryManCode := codigoMotorista.EditValue;
  FOS.OS.RouteDescription := roteiro.Text;
  FOS.OS.InitialMileage := kmInicial.EditValue;
  FOS.OS.DepartureTime := horaSaida.EditValue;
  FOS.OS.FinalMileage := kmFinal.EditValue;
  FOS.OS.ReturnTime := horaRetorno.EditValue;
  FOS.OS.ClosureFlag := OSEncerrada.EditValue;
  FOS.OS.ServiceValue := gridOSDBTableView1.DataController.Summary.FooterSummaryValues[1];
  FOS.OS.ServiceDescription := UnMountGrid();
end;

procedure Tview_SisGeFServiceOrders.ShutDownOS;
begin
  if MessageDlg('Confirma encerrar esta OS ?', mtConfirmation, [mbOK, mbCancel], 0) = mrCancel then
    Exit;

  FOS.OS.Action := tacAlterar;
  FOS.OS.ClosureFlag := 1;
  FOS.OS.ExecutorName := Global.Parametros.pUser_Name;
  FOS.OS.MaintenanceDate := Now();
  if not FOS.Save() then
    MessageDlg('Ocorreu um problema ao tentar encerrar esta OS!', mtWarning, [mbCancel],0)
  else
  begin
    MessageDlg('OS encerrada!', mtInformation, [mbOK],0);
    OSEncerrada.EditValue := FOS.OS.ClosureFlag;
  end;
  Mode;
end;

procedure Tview_SisGeFServiceOrders.StartForm;
begin
  FOS := TSisGeFOrderServicesController.Create;
  FAcao := tacIndefinido;
  Mode;
  Data_Sisgef.PopulaClientesEmpresa;
  numeroOs.SetFocus;
end;

procedure Tview_SisGeFServiceOrders.tipoOSPropertiesChange(Sender: TObject);
begin
  dxLayoutItem5.Visible := (tipoOS.ItemIndex = 2);
end;

function Tview_SisGeFServiceOrders.UnMountGrid(): string;
var
  lItens : TStringList;
begin
  Result := '';
  if (memTableServices.IsEmpty) or (memTableServices.Active = False) then
    Exit;
  lItens := TStringList.Create;
  memTableServices.First;
  while not memTableServices.EoF do
  begin
    Litens.Add(
      memTableServicesnum_item.AsString + '|' +
      memTableServicesdes_servico.AsString + '|' +
      memTableServicesqtd_item.AsString + '|' +
      memTableServicesval_unitario.AsString + '|'
    );
    memTableServices.Next;
  end;
  Result := LItens.Text;
end;

function Tview_SisGeFServiceOrders.VehicleBoardByCode(iCode: integer): String;
var
  FVeiculo: TControllerSisGeFVehiclesRegistration;
  sBoard: string;
begin
  try
    Result := '';
    FVeiculo := TControllerSisGeFVehiclesRegistration.Create;
    sBoard := FVeiculo.GetField('des_placa','cod_veiculo',iCode.ToString);
    Result := sBoard;
  finally
    FVeiculo.Free;
  end;
end;

function Tview_SisGeFServiceOrders.VehicleCodeByBoard(sBoard: string): Integer;
var
  FVeiculo: TControllerSisGeFVehiclesRegistration;
  iCode: Integer;
begin
  try
    Result := 0;
    FVeiculo := TControllerSisGeFVehiclesRegistration.Create;
    iCode := StrToIntDef(FVeiculo.GetField('cod_veiculo','des_placa',sBoard),0);
    Result := iCode;
  finally
    FVeiculo.Free;
  end;
end;

end.
