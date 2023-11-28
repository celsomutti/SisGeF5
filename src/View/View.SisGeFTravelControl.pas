unit View.SisGeFTravelControl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, System.Actions,
  Vcl.ActnList, Vcl.ExtCtrls, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxCurrencyEdit, cxTimeEdit, cxDBLookupComboBox,
  cxButtonEdit, cxSpinEdit, cxMemo, cxImageComboBox, System.DateUtils,
  Controller.SisGeFConsumptionInputs,
  Controller.SisGeFDestinationTravel, Controller.SisGeFFuelSupplies,
  Controller.SisGeFTravelControl, Controller.SisGeFVehiclesRegistration,
  Services.SisGeFDAORoutines, Common.Utils, Control.Cadastro, Control.Bases,
  dxBarBuiltInMenu, cxGridCustomPopupMenu,
  cxGridPopupMenu, Common.ENum, cxCalc, cxCheckBox;

type
  TPageTravelControl = class(TForm)
    LayoutContainerGroup_Root: TdxLayoutGroup;
    LayoutContainer: TdxLayoutControl;
    LayoutHeader: TdxLayoutGroup;
    LabelPageTitle: TcxLabel;
    LayoutPageTitle: TdxLayoutItem;
    ButtonExit: TcxButton;
    LayoutButtonExit: TdxLayoutItem;
    actionList: TActionList;
    actionExitPage: TAction;
    actionNewTravel: TAction;
    actionExport: TAction;
    LayoutFilter: TdxLayoutGroup;
    dateEditInicial: TcxDateEdit;
    LayoutInitialDate: TdxLayoutItem;
    LayoutBody: TdxLayoutGroup;
    LayoutGrid: TdxLayoutGroup;
    LayoutEdit: TdxLayoutGroup;
    dateEditFinalDate: TcxDateEdit;
    LayoutFinalDate: TdxLayoutItem;
    actionSearch: TAction;
    ButtonSearch: TcxButton;
    LayoutButtonSearch: TdxLayoutItem;
    gridTravelsDBTableView1: TcxGridDBTableView;
    gridTravelsLevel1: TcxGridLevel;
    gridTravels: TcxGrid;
    LayoutTravelGrid: TdxLayoutItem;
    LayoutOptions: TdxLayoutGroup;
    ButtonNewTravel: TcxButton;
    LayoutButtonNewTravel: TdxLayoutItem;
    ButtonExportation: TcxButton;
    LayoutButtonExport: TdxLayoutItem;
    memTableTravels: TFDMemTable;
    dataSourceTravels: TDataSource;
    memTableTravelsid_controle: TIntegerField;
    memTableTravelsdat_transporte: TDateField;
    memTableTravelsdes_operacao: TStringField;
    memTableTravelsdes_placa: TStringField;
    memTableTravelsnom_motorista: TStringField;
    memTableTravelsqtd_km_saida: TFloatField;
    memTableTravelshor_saida: TTimeField;
    memTableTravelsqtd_km_retorno: TFloatField;
    memTableTravelshor_retorno: TTimeField;
    memTableTravelsqtd_km_rodado: TFloatField;
    memTableTravelscod_status: TIntegerField;
    gridTravelsDBTableView1id_controle: TcxGridDBColumn;
    gridTravelsDBTableView1dat_transporte: TcxGridDBColumn;
    gridTravelsDBTableView1des_operacao: TcxGridDBColumn;
    gridTravelsDBTableView1des_placa: TcxGridDBColumn;
    gridTravelsDBTableView1nom_motorista: TcxGridDBColumn;
    gridTravelsDBTableView1qtd_km_saida: TcxGridDBColumn;
    gridTravelsDBTableView1hor_saida: TcxGridDBColumn;
    gridTravelsDBTableView1qtd_km_retorno: TcxGridDBColumn;
    gridTravelsDBTableView1hor_retorno: TcxGridDBColumn;
    gridTravelsDBTableView1qtd_km_rodado: TcxGridDBColumn;
    gridTravelsDBTableView1cod_status: TcxGridDBColumn;
    actionEditTravel: TAction;
    ButtonEditTravel: TcxButton;
    LayoutIButtonEditTravel: TdxLayoutItem;
    actionCancelTravel: TAction;
    actionEndTravel: TAction;
    LayoutEdit1: TdxLayoutGroup;
    maskEditTravelID: TcxMaskEdit;
    LayoutTravelID: TdxLayoutItem;
    DateEditTravelDate: TcxDateEdit;
    LayoutTravelDate: TdxLayoutItem;
    ComboBoxTravelOperation: TcxComboBox;
    LayoutTravelOperation: TdxLayoutItem;
    ButtonEdittravelCodeTaker: TcxButtonEdit;
    LayoutTravelCodeTaker: TdxLayoutItem;
    TextEditTravelNameTaker: TcxTextEdit;
    LayoutTravelNameTaker: TdxLayoutItem;
    LayoutEdit2: TdxLayoutGroup;
    ButtonEditTravelDriverCode: TcxButtonEdit;
    LayoutTravelDriverCode: TdxLayoutItem;
    TextEditTravelDriverName: TcxTextEdit;
    LayoutTravelDriverName: TdxLayoutItem;
    ButtonEditTavelVehicle: TcxButtonEdit;
    LayouttravelVehicle: TdxLayoutItem;
    CurrencyEditTravelInitialKM: TcxCurrencyEdit;
    LayoutTravelInitialKM: TdxLayoutItem;
    TimeEditTravelDepartureTime: TcxTimeEdit;
    LayoutTravelDepartureTime: TdxLayoutItem;
    LayoutGroupEditGrids: TdxLayoutGroup;
    LayoutGridDestinations: TdxLayoutGroup;
    GridTravelDestinationsDBTableView1: TcxGridDBTableView;
    GridTravelDestinationsLevel1: TcxGridLevel;
    GridTravelDestinations: TcxGrid;
    LayoutITravelDestinations: TdxLayoutItem;
    LayoutTravelFuelSupplies: TdxLayoutGroup;
    LayoutTravelInputs: TdxLayoutGroup;
    MemTableTravelDestination: TFDMemTable;
    MemTableTravelDestinationcod_destino: TIntegerField;
    MemTableTravelDestinationdes_destino: TStringField;
    MemTableTravelDestinationcod_agente: TIntegerField;
    dataSourceTravelDestinations: TDataSource;
    GridTravelDestinationsDBTableView1cod_destino1: TcxGridDBColumn;
    GridTravelDestinationsDBTableView1des_destino1: TcxGridDBColumn;
    GridTravelDestinationsDBTableView1cod_agente1: TcxGridDBColumn;
    MemTableTravelInputs: TFDMemTable;
    MemTableTravelInputsid_consumo: TIntegerField;
    MemTableTravelInputsid_insumo: TIntegerField;
    MemTableTravelInputsid_controle: TIntegerField;
    MemTableTravelInputsqtd_km_consumo: TFloatField;
    DataSourceTravelInputs: TDataSource;
    MemTableFuelSupplies: TFDMemTable;
    MemTableFuelSuppliesnum_cupom: TStringField;
    MemTableFuelSuppliesqtd_abastecimento: TFloatField;
    MemTableFuelSuppliesval_unitario: TFloatField;
    MemTableFuelSuppliesval_total: TFloatField;
    DataSourceFuelSupplies: TDataSource;
    GridFuelSuppliesDBTableView1: TcxGridDBTableView;
    GridFuelSuppliesLevel1: TcxGridLevel;
    GridFuelSupplies: TcxGrid;
    LayoutFuelSupplies: TdxLayoutItem;
    GridFuelSuppliesDBTableView1num_cupom: TcxGridDBColumn;
    GridFuelSuppliesDBTableView1qtd_abastecimento: TcxGridDBColumn;
    GridFuelSuppliesDBTableView1val_unitario: TcxGridDBColumn;
    GridFuelSuppliesDBTableView1val_total: TcxGridDBColumn;
    GridInputsDBTableView1: TcxGridDBTableView;
    GridInputsLevel1: TcxGridLevel;
    GridInputs: TcxGrid;
    LayoutInputs: TdxLayoutItem;
    GridInputsDBTableView1id_consumo: TcxGridDBColumn;
    GridInputsDBTableView1id_insumo: TcxGridDBColumn;
    GridInputsDBTableView1id_controle: TcxGridDBColumn;
    GridInputsDBTableView1qtd_km_consumo: TcxGridDBColumn;
    MemTableTravelInputsqtd_consumo: TFloatField;
    GridInputsDBTableView1qtd_consumo: TcxGridDBColumn;
    MemTableInputs: TFDMemTable;
    MemTableInputsid_insumo: TIntegerField;
    MemTableInputsdes_insumo: TStringField;
    DataSourceInputs: TDataSource;
    LayoutGroupEdit: TdxLayoutGroup;
    LayoutEditFinal: TdxLayoutGroup;
    LayoutMemo: TdxLayoutGroup;
    MemoObs: TcxMemo;
    LayoutMemoObs: TdxLayoutItem;
    LayoutOptionsFinal: TdxLayoutGroup;
    LayoutDataFinal: TdxLayoutGroup;
    CurrencyEditFinalKM: TcxCurrencyEdit;
    LayoutCurrencyEditFinalKM: TdxLayoutItem;
    TimeEditreturnTime: TcxTimeEdit;
    LayoutReturnTime: TdxLayoutItem;
    LayoutButtons: TdxLayoutGroup;
    actionPriorPage: TAction;
    actionSaveTravel: TAction;
    ButtonReturn: TcxButton;
    LayoutButtonReturn: TdxLayoutItem;
    ButtonSaveTravel: TcxButton;
    LayoutButtonSaveTravel: TdxLayoutItem;
    ButtonFinalizeTravel: TcxButton;
    LayoutButtonFinalizeTravel: TdxLayoutItem;
    CurrencyEditTotalKM: TcxCurrencyEdit;
    LayoutTotalKM: TdxLayoutItem;
    ImageComboBox1Status: TcxImageComboBox;
    LayoutImageComboStatus: TdxLayoutItem;
    actionSearchTaker: TAction;
    actionSearchDrivers: TAction;
    actionSearchVehicles: TAction;
    actionSearchBases: TAction;
    ButtonCancelTravel: TcxButton;
    LayoutButtonCancelTravel: TdxLayoutItem;
    MemTableTravelDestinationnum_destination: TAutoIncField;
    GridTravelDestinationsDBTableView1num_destination: TcxGridDBColumn;
    ImageComboBoxFilterStatus: TcxImageComboBox;
    LayoutFilterStatus: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionExitPageExecute(Sender: TObject);
    procedure actionPriorPageExecute(Sender: TObject);
    procedure actionSearchExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actionExportExecute(Sender: TObject);
    procedure LayoutBodyTabChanged(Sender: TObject);
    procedure actionEditTravelExecute(Sender: TObject);
    procedure gridTravelsDBTableView1CellDblClick
      (Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure actionSearchTakerExecute(Sender: TObject);
    procedure actionSearchDriversExecute(Sender: TObject);
    procedure actionSearchVehiclesExecute(Sender: TObject);
    procedure actionSearchBasesExecute(Sender: TObject);
    procedure actionNewTravelExecute(Sender: TObject);
    procedure actionSaveTravelExecute(Sender: TObject);
    procedure ButtonEdittravelCodeTakerPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure ButtonEditTravelDriverCodePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure ButtonEditTravelDriverCodePropertiesChange(Sender: TObject);
    procedure ButtonEdittravelCodeTakerPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    FAction: TAcao;
    procedure BuildPageLabel;
    procedure ClosePage;
    procedure BuildInitialList;
    procedure SearchPeriod;
    procedure ExportGrid;
    procedure ClearForm;
    procedure SetupFormFields(FTravel: TControllerTravelControl);
    procedure SetupClassFields();
    procedure SearchTravel;
    procedure PoputateDestinations(iId: integer);
    procedure PoputateFuelSuplies(iId: integer);
    procedure PoputateTravelInputs(iId: integer);
    procedure PopulateInputs;
    procedure CloseMemTable;
    function GetNameTaker(iId: integer): string;
    function GetDriverName(iId: integer): string;
    procedure SearchTaker;
    procedure SearchDriver;
    procedure SearchVEhicle;
    procedure SearchBase;
    procedure InsertTravel;
    procedure EditTravel;
    procedure Save;
    procedure SaveDestinations;
    procedure SaveFuelSuplies;
    procedure SaveTravelInputs;
    procedure Mode;
  public
    { Public declarations }
  end;

var
  PageTravelControl: TPageTravelControl;
  aParam: array of Variant;

implementation

{$R *.dfm}

uses Data.SisGeF, View.SisGeFGeneralSearch;

{ TPageTravelControl }

procedure TPageTravelControl.actionEditTravelExecute(Sender: TObject);
begin
  EditTravel;
end;

procedure TPageTravelControl.actionExitPageExecute(Sender: TObject);
begin
  ClosePage;
end;

procedure TPageTravelControl.actionExportExecute(Sender: TObject);
begin
  ExportGrid;
end;

procedure TPageTravelControl.actionNewTravelExecute(Sender: TObject);
begin
  InsertTravel;
end;

procedure TPageTravelControl.actionPriorPageExecute(Sender: TObject);
begin
  FAction := tacIndefinido;
  ClearForm;
  LayoutBody.ItemIndex := 0;
end;

procedure TPageTravelControl.actionSaveTravelExecute(Sender: TObject);
begin
  Save;
end;

procedure TPageTravelControl.actionSearchBasesExecute(Sender: TObject);
begin
  SearchBase;
end;

procedure TPageTravelControl.actionSearchDriversExecute(Sender: TObject);
begin
  SearchDriver;
end;

procedure TPageTravelControl.actionSearchExecute(Sender: TObject);
begin
  SearchPeriod;
end;

procedure TPageTravelControl.actionSearchTakerExecute(Sender: TObject);
begin
  SearchTaker;
end;

procedure TPageTravelControl.actionSearchVehiclesExecute(Sender: TObject);
begin
  SearchVEhicle
end;

procedure TPageTravelControl.BuildInitialList;
begin
  dateEditInicial.Date := IncDay(Now, -15);
  dateEditFinalDate.Date := Now;
  SearchPeriod;
end;

procedure TPageTravelControl.BuildPageLabel;
begin
  LabelPageTitle.Caption := Self.Caption;
end;

procedure TPageTravelControl.ButtonEdittravelCodeTakerPropertiesChange
  (Sender: TObject);
begin
  TextEditTravelNameTaker.Clear;
end;

procedure TPageTravelControl.ButtonEdittravelCodeTakerPropertiesValidate
  (Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  if DisplayValue = '' then
  begin
    DisplayValue := 0;
    Exit;
  end;
  TextEditTravelNameTaker.Text := GetNameTaker(DisplayValue);
  if TextEditTravelNameTaker.Text = '' then
  begin
    ErrorText := 'Cliente / Tomador não encontrado.';
    Error := True;
  end;
end;

procedure TPageTravelControl.ButtonEditTravelDriverCodePropertiesChange
  (Sender: TObject);
begin
  TextEditTravelDriverName.Clear;
end;

procedure TPageTravelControl.ButtonEditTravelDriverCodePropertiesValidate
  (Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  if DisplayValue = '' then
  begin
    DisplayValue := 0;
    Exit;
  end;
  TextEditTravelDriverName.Text := GetDriverName(DisplayValue);
  TextEditTravelDriverName.Refresh;
  if TextEditTravelDriverName.Text = '' then
  begin
    ErrorText := 'Motorista não encontrado.';
    Error := True;
  end;
end;

procedure TPageTravelControl.ClearForm;
begin
  maskEditTravelID.EditValue := 0;
  DateEditTravelDate.EditValue := 0;
  ComboBoxTravelOperation.ItemIndex := 0;
  ButtonEdittravelCodeTaker.EditValue := 0;
  TextEditTravelNameTaker.Text := '';
  ButtonEditTravelDriverCode.EditValue := 0;
  TextEditTravelDriverName.Text := '';
  ButtonEditTavelVehicle.EditValue := '';
  CurrencyEditTravelInitialKM.Value := 0;
  TimeEditTravelDepartureTime.EditValue := 0;
  MemTableTravelDestination.Active := False;
  MemTableTravelDestination.Active := True;
  MemTableFuelSupplies.Active := False;
  MemTableFuelSupplies.Active := True;
  MemTableTravelInputs.Active := False;
  MemTableTravelInputs.Active := True;
  MemoObs.Clear;
  ImageComboBox1Status.EditValue := 0;
  CurrencyEditFinalKM.Value := 0;
  TimeEditreturnTime.EditValue := 0;
  CurrencyEditTotalKM.Value := 0;
end;

procedure TPageTravelControl.CloseMemTable;
begin
  memTableTravels.Active := False;
  MemTableFuelSupplies.Active := False;
  MemTableTravelInputs.Active := False;
  MemTableTravelDestination.Active := False;
  MemTableInputs.Active := False;
end;

procedure TPageTravelControl.ClosePage;
begin
  Self.Close;
end;

procedure TPageTravelControl.EditTravel;
begin
  if memTableTravels.IsEmpty then
    Exit;
  FAction := tacAlterar;
  SearchTravel;
end;

procedure TPageTravelControl.ExportGrid;
var
  fnUtil: Common.Utils.TUtils;
  sMensagem: String;
begin
  try

    if memTableTravels.IsEmpty then
      Exit;

    fnUtil := Common.Utils.TUtils.Create;

    if gridTravelsDBTableView1.ViewData.RowCount = 0 then
      Exit;

    if Data_Sisgef.SaveDialog.Execute() then
    begin
      if FileExists(Data_Sisgef.SaveDialog.FileName) then
      begin
        sMensagem := 'Arquivo ' + Data_Sisgef.SaveDialog.FileName +
          ' já existe! Sobrepor ?';
        if Application.MessageBox(PChar(sMensagem), 'Sobrepor',
          MB_YESNO + MB_ICONQUESTION) = IDNO then
          Exit
      end;

      fnUtil.ExportarDados(gridTravels, Data_Sisgef.SaveDialog.FileName);

    end;
  finally
    fnUtil.Free;
  end;
end;

procedure TPageTravelControl.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CloseMemTable;
  Action := caFree;
  PageTravelControl := Nil;
end;

procedure TPageTravelControl.FormCreate(Sender: TObject);
begin
  BuildPageLabel;
  PopulateInputs;
end;

procedure TPageTravelControl.FormShow(Sender: TObject);
begin
  FAction := tacIndefinido;
  BuildInitialList;
end;

function TPageTravelControl.GetDriverName(iId: integer): string;
var
  FCadastro: TCadastroControl;
begin
  FCadastro := TCadastroControl.Create;
  Result := '';
  try
    Result := FCadastro.GetField('des_razao_social', 'cod_cadastro',
      iId.ToString);
  finally
    FCadastro.Free;
  end;
end;

function TPageTravelControl.GetNameTaker(iId: integer): string;
var
  FService: TServicesDAORoutines;
  aParam: array of Variant;
  sQuery: string;
begin
  FService := TServicesDAORoutines.Create;
  Result := '';
  try
    FService.TableName := '';
    FService.CRUDSentence := '';
    sQuery := 'select nom_cliente from view_listClientsCompat where cod_cliente = '
      + iId.ToString;
    aParam := ['SQL', sQuery];
    if FService.ExecSentence(aParam) then
      Result := FService.Query.FieldByName('nom_cliente').AsString
    else
      Result := '';
  finally
    Finalize(aParam);
    FService.Free;
  end;
end;

procedure TPageTravelControl.gridTravelsDBTableView1CellDblClick
  (Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  actionEditTravelExecute(Sender);
end;

procedure TPageTravelControl.InsertTravel;
begin
  ClearForm;
  FAction := tacIncluir;
  Mode;
  LayoutBody.ItemIndex := 1;
  DateEditTravelDate.Date := Now;
  DateEditTravelDate.SetFocus;
end;

procedure TPageTravelControl.LayoutBodyTabChanged(Sender: TObject);
begin
  if LayoutBody.ItemIndex = 1 then
  begin
    DateEditTravelDate.SetFocus;
  end;
end;

procedure TPageTravelControl.Mode;
begin
  if FAction = tacIndefinido then
  begin
    MemTableTravelDestination.UpdateOptions.ReadOnly := True;
    MemTableFuelSupplies.UpdateOptions.ReadOnly := True;
    MemTableTravelInputs.UpdateOptions.ReadOnly := True;
    actionCancelTravel.Enabled := False;
    actionEndTravel.Enabled := False;
    actionSaveTravel.Enabled := False;
    DateEditTravelDate.Properties.ReadOnly := True;
    ComboBoxTravelOperation.Properties.ReadOnly := True;
    ButtonEdittravelCodeTaker.Properties.ReadOnly := True;
    ButtonEditTravelDriverCode.Properties.ReadOnly := True;
    ButtonEditTavelVehicle.Properties.ReadOnly := True;
    CurrencyEditTravelInitialKM.Properties.ReadOnly := True;
    TimeEditTravelDepartureTime.Properties.ReadOnly := True;
    MemoObs.Properties.ReadOnly := True;
    CurrencyEditFinalKM.Properties.ReadOnly := True;
    TimeEditreturnTime.Properties.ReadOnly := True;
  end;
  if FAction = tacAlterar then
  begin
    MemTableTravelDestination.UpdateOptions.ReadOnly := false;
    MemTableFuelSupplies.UpdateOptions.ReadOnly := false;
    MemTableTravelInputs.UpdateOptions.ReadOnly := false;
    actionCancelTravel.Enabled := true;
    actionEndTravel.Enabled := true;
    actionSaveTravel.Enabled := True;
    DateEditTravelDate.Properties.ReadOnly := false;
    ComboBoxTravelOperation.Properties.ReadOnly := false;
    ButtonEdittravelCodeTaker.Properties.ReadOnly := false;
    ButtonEditTravelDriverCode.Properties.ReadOnly := false;
    ButtonEditTavelVehicle.Properties.ReadOnly := false;
    CurrencyEditTravelInitialKM.Properties.ReadOnly := false;
    TimeEditTravelDepartureTime.Properties.ReadOnly := false;
    MemoObs.Properties.ReadOnly := false;
    CurrencyEditFinalKM.Properties.ReadOnly := false;
    TimeEditreturnTime.Properties.ReadOnly := false;
  end;

end;

procedure TPageTravelControl.PopulateInputs;
var
  FInputs: TServicesDAORoutines;
  sSentence: string;
  aParam: array of Variant;
begin
  FInputs := TServicesDAORoutines.Create;
  try
    sSentence := 'select * from tbinsumostransportes';
    aParam := ['SQL', sSentence];
    MemTableInputs.Active := False;
    if FInputs.ExecSentence(aParam) then
    begin
      MemTableInputs.CopyDataSet(FInputs.Query);
      FInputs.Query.Connection.Connected := False;
      if not MemTableInputs.IsEmpty then
        MemTableInputs.First;
    end
    else
      MemTableInputs.Active := True;
  finally
    Finalize(aParam);
    FInputs.Free;
  end;
end;

procedure TPageTravelControl.PoputateDestinations(iId: integer);
var
  FDestinations: TControllerDestinationTravel;
  sSentence: string;
  aParam: array of Variant;
begin
  FDestinations := TControllerDestinationTravel.Create;
  try
    sSentence := 'select * from trs_destinos where id_controle = ' +
      iId.ToString;
    aParam := ['SQL', sSentence];
    MemTableTravelDestination.Active := False;
    if FDestinations.Search(aParam) then
    begin
      MemTableTravelDestination.CopyDataSet(FDestinations.Destination.Query);
      FDestinations.Destination.Query.Connection.Connected := False;
      if not MemTableTravelDestination.IsEmpty then
        MemTableTravelDestination.First;
    end
    else
      MemTableTravelDestination.Active := True;
  finally
    Finalize(aParam);
    FDestinations.Free;
  end;
end;

procedure TPageTravelControl.PoputateFuelSuplies(iId: integer);
var
  FFuel: TControllerFuelSupplies;
  sSentence: string;
  aParam: array of Variant;
begin
  FFuel := TControllerFuelSupplies.Create;
  try
    sSentence := 'select * from tbabastecimento where id_controle = ' +
      iId.ToString;
    aParam := ['SQL', sSentence];
    MemTableFuelSupplies.Active := False;
    if FFuel.Search(aParam) then
    begin
      MemTableFuelSupplies.CopyDataSet(FFuel.FuelSuplies.Query);
      FFuel.FuelSuplies.Query.Connection.Connected := False;
      if not MemTableFuelSupplies.IsEmpty then
        MemTableFuelSupplies.First;
    end
    else
      MemTableFuelSupplies.Active := True;
  finally
    Finalize(aParam);
    FFuel.Free;
  end;
end;

procedure TPageTravelControl.PoputateTravelInputs(iId: integer);
var
  FInputs: TControllerConsumptionInputs;
  sSentence: string;
  aParam: array of Variant;
begin
  FInputs := TControllerConsumptionInputs.Create;
  try
    sSentence := 'select * from tbconsumoinsumos where id_controle = ' +
      iId.ToString;
    aParam := ['SQL', sSentence];
    MemTableTravelInputs.Active := False;
    if FInputs.Search(aParam) then
    begin
      MemTableTravelInputs.CopyDataSet(FInputs.Inputs.Query);
      FInputs.Inputs.Query.Connection.Connected := False;
      if not MemTableTravelInputs.IsEmpty then
        MemTableFuelSupplies.First;
    end
    else
      MemTableTravelInputs.Active := True;
  finally
    Finalize(aParam);
    FInputs.Free;
  end;
end;

procedure TPageTravelControl.Save;
var
  FTravel: TControllerTravelControl;
begin
  FTravel := TControllerTravelControl.Create;
  try
    SetupClassFields;
    FTravel.Travel.Acao := FAction;
    FTravel.SetupFieldsData(aParam);
    if not FTravel.ValidateData then
    begin
      MessageDlg(FTravel.Travel.Mensagem, mtWarning, [mbOK], 0);
      Exit;
    end;
    if MessageDlg('Confirma gravar os dados?', mtConfirmation, [mbYes, mbNo], 0)
      = mrNo then
      Exit;
    FTravel.Travel.Acao := FAction;
    if FTravel.Save then
    begin
      if FAction = tacIncluir then
        maskEditTravelID.EditValue := FTravel.Travel.ID;
      SaveDestinations;
      SaveFuelSuplies;
      SaveTravelInputs;
      MessageDlg('Dados gravados com sucesso.', mtInformation, [mbOK], 0);
      SearchPeriod;
    end;
  finally
    FTravel.Free;
  end;
end;

procedure TPageTravelControl.SaveDestinations;
var
  FDestinations: TControllerDestinationTravel;
  aParam: array of variant;
begin
  FDestinations := TControllerDestinationTravel.Create;
  try
    if MemTableTravelDestination.IsEmpty then
      Exit;
    SetLength(aParam, 5);
    if FAction = tacAlterar then
    begin
      aParam[0] := -1;
      aParam[1] := '';
      aParam[2] := 0;
      aParam[3] := '';
      aParam[4] := maskEditTravelID.EditValue;
      FDestinations.SetupFieldsData(aParam);
      FDestinations.Destination.Acao := tacExcluir;
      FDestinations.Save;
    end;
    FDestinations.Destination.Acao := tacIncluir;
    MemTableTravelDestination.First;
    while not MemTableTravelDestination.Eof do
    begin
      aParam[0] := 0;
      aParam[1] := MemTableTravelDestinationdes_destino.AsString;
      aParam[2] := MemTableTravelDestinationcod_agente.AsInteger;
      aParam[3] := FormatDateTime('dd/mm/aaaa hh:mm:ss', Now);
      aParam[4] := maskEditTravelID.EditValue;
      FDestinations.SetupFieldsData(aParam);
      if not FDestinations.Save then
      begin
        MessageDlg('Erro ao gravar o destino!', mtError, [mbOK], 0);
        Exit;
      end;
      MemTableTravelDestination.Next;
    end;
    MemTableTravelDestination.First;
  finally
    Finalize(aParam);
    FDestinations.Free;
  end;
end;

procedure TPageTravelControl.SaveFuelSuplies;
var
  FFuel: TControllerFuelSupplies;
begin
  FFuel := TControllerFuelSupplies.Create;
  try
    if MemTableFuelSupplies.IsEmpty then
      Exit;
    FFuel.FuelSuplies.Viagem := maskEditTravelID.EditValue;
    FFuel.FuelSuplies.Acao := tacExcluir;
    FFuel.Save;
    FFuel.FuelSuplies.Acao := tacIncluir;
    MemTableFuelSupplies.First;
    while not MemTableFuelSupplies.Eof do
    begin
      FFuel.FuelSuplies.Cupom := MemTableFuelSuppliesnum_cupom.AsString;
      FFuel.FuelSuplies.Entregador := ButtonEditTravelDriverCode.EditValue;
      FFuel.FuelSuplies.Placa := ButtonEditTavelVehicle.Text;
      FFuel.FuelSuplies.Data := DateEditTravelDate.Date;
      FFuel.FuelSuplies.Produto := 'COMBUSTIVEL';
      FFuel.FuelSuplies.Quantidade :=
        MemTableFuelSuppliesqtd_abastecimento.AsFloat;
      FFuel.FuelSuplies.ValorUnitario :=
        MemTableFuelSuppliesval_unitario.AsFloat;
      FFuel.FuelSuplies.ValorTotal := MemTableFuelSuppliesval_total.AsFloat;
      FFuel.FuelSuplies.DataManutencao := Now;
      if not FFuel.Save then
      begin
        MessageDlg('Erro ao gravar o abastecimento!', mtError, [mbOK], 0);
        Exit;
      end;
      MemTableFuelSupplies.Next;
    end;
    MemTableFuelSupplies.First;
  finally
    FFuel.Free;
  end;
end;

procedure TPageTravelControl.SaveTravelInputs;
var
  FInputs: TControllerConsumptionInputs;
begin
  FInputs := TControllerConsumptionInputs.Create;
  try
    if MemTableTravelInputs.IsEmpty then
      Exit;
    FInputs.Inputs.Viagem := maskEditTravelID.EditValue;
    FInputs.Inputs.Acao := tacExcluir;
    FInputs.Save;
    FInputs.Inputs.Acao := tacIncluir;
    MemTableTravelInputs.First;
    while not MemTableTravelInputs.Eof do
    begin
      FInputs.Inputs.IDInsumo := MemTableTravelInputsid_insumo.AsInteger;
      FInputs.Inputs.PlacaVeiculo := ButtonEditTavelVehicle.Text;
      FInputs.Inputs.Log := FormatDateTime('dd/mm/aaaa hh:mm:ss', Now);
      FInputs.Inputs.KMConsumo := MemTableTravelInputsqtd_km_consumo.AsFloat;
      FInputs.Inputs.Data := DateEditTravelDate.Date;
      if not FInputs.Save then
      begin
        MessageDlg('Erro ao gravar os insumos!', mtError, [mbOK], 0);
        Exit;
      end;
      MemTableTravelInputs.Next;
    end;
    MemTableTravelInputs.First;
  finally
    FInputs.Free;
  end;
end;

procedure TPageTravelControl.SearchBase;
var
  sQuery, sName: string;
  iId: integer;
begin
  sQuery := 'select cod_agente as "Código", nom_fantasia as Nome from tbagentes ';

  if not Assigned(view_SisGefGeneralSearch) then
    view_SisGefGeneralSearch := Tview_SisGefGeneralSearch.Create(Application);
  view_SisGefGeneralSearch.sSQL := sQuery;
  view_SisGefGeneralSearch.bOpen := True;
  if view_SisGefGeneralSearch.ShowModal = mrOk then
  begin
    iId := view_SisGefGeneralSearch.memTablePesquisa.Fields[0].Value;
    sName := view_SisGefGeneralSearch.memTablePesquisa.Fields[1].Value;
    if (MemTableTravelDestination.State = dsEdit) or
      (MemTableTravelDestination.State = dsInsert) then
    begin
      MemTableTravelDestinationdes_destino.Value := sName;
      MemTableTravelDestinationcod_agente.Value := iId;
    end;
  end;
  FreeAndNil(view_SisGefGeneralSearch);
end;

procedure TPageTravelControl.SearchDriver;
var
  sQuery, sName: string;
  iId: integer;
begin
  sQuery := 'select cod_cadastro as "Código", des_razao_social as Nome from tbentregadores ';

  if not Assigned(view_SisGefGeneralSearch) then
    view_SisGefGeneralSearch := Tview_SisGefGeneralSearch.Create(Application);
  view_SisGefGeneralSearch.sSQL := sQuery;
  view_SisGefGeneralSearch.bOpen := True;
  if view_SisGefGeneralSearch.ShowModal = mrOk then
  begin
    iId := view_SisGefGeneralSearch.memTablePesquisa.Fields[0].Value;
    sName := GetDriverName(iId);
    ButtonEditTravelDriverCode.EditValue := iId;
    TextEditTravelDriverName.Text := sName;
  end;
  FreeAndNil(view_SisGefGeneralSearch);
end;

procedure TPageTravelControl.SearchPeriod;
var
  FTravel: TServicesDAORoutines;
  sSentence: string;
  aParam: array of Variant;
begin
  try
    FTravel := TServicesDAORoutines.Create;
    sSentence := 'select * from view_listTravel where dat_transporte between ' +
      QuotedStr(FormatDateTime('yyyy-mm-dd', dateEditInicial.Date)) + ' and ' +
      QuotedStr(FormatDateTime('yyyy-mm-dd', dateEditFinalDate.Date));
    if ImageComboBoxFilterStatus.EditValue >= 0 then
    begin
      sSentence := sSentence  + ' and cod_status = ' + VartoStr(ImageComboBoxFilterStatus.EditValue);
    end;
    sSentence := sSentence + ' order by id_controle desc';
    aParam := ['SQL', sSentence];
    memTableTravels.Active := False;
    if FTravel.ExecSentence(aParam) then
    begin
      memTableTravels.CopyDataSet(FTravel.Query);
      if not memTableTravels.IsEmpty then
        memTableTravels.First;
      FTravel.Query.Connection.Connected := False;
    end;
  finally
    Finalize(aParam);
    FTravel.Free;
  end;
end;

procedure TPageTravelControl.SearchTaker;
var
  sQuery, sName: string;
  iId: integer;
begin
  sQuery := 'select cod_cliente as "Código", nom_cliente as Nome from view_listclientscompat ';

  if not Assigned(view_SisGefGeneralSearch) then
    view_SisGefGeneralSearch := Tview_SisGefGeneralSearch.Create(Application);
  view_SisGefGeneralSearch.sSQL := sQuery;
  view_SisGefGeneralSearch.bOpen := True;
  if view_SisGefGeneralSearch.ShowModal = mrOk then
  begin
    iId := view_SisGefGeneralSearch.memTablePesquisa.Fields[0].Value;
    sName := GetNameTaker(iId);
    ButtonEdittravelCodeTaker.EditValue := iId;
    TextEditTravelNameTaker.Text := sName;
  end;
  FreeAndNil(view_SisGefGeneralSearch);
end;

procedure TPageTravelControl.SearchTravel;
var
  FTravelList: TControllerTravelControl;
  sSentence: string;
  aParam: array of Variant;
begin
  try
    FTravelList := TControllerTravelControl.Create;
    sSentence := 'id_controle = ' + memTableTravelsid_controle.AsString;
    aParam := ['FILTRO', sSentence];
    if FTravelList.Search(aParam) then
    begin
      if FTravelList.SetupFieldsClass then
      begin
        SetupFormFields(FTravelList);
        if FTravelList.Travel.Status <> 0 then
        begin
          FAction := tacIndefinido;
          Mode;
        end;
        LayoutBody.ItemIndex := 1;
      end;
      FTravelList.Travel.Query.Connection.Connected := False;
    end;
  finally
    Finalize(aParam);
    FTravelList.Free;
  end;
end;

procedure TPageTravelControl.SearchVEhicle;
var
  sQuery, sPlaca: string;
begin
  sQuery := 'select des_placa as Placa, des_marca as Marca,des_modelo as Modelo from tbveiculos ';

  if not Assigned(view_SisGefGeneralSearch) then
    view_SisGefGeneralSearch := Tview_SisGefGeneralSearch.Create(Application);
  view_SisGefGeneralSearch.sSQL := sQuery;
  view_SisGefGeneralSearch.bOpen := True;
  if view_SisGefGeneralSearch.ShowModal = mrOk then
  begin
    sPlaca := view_SisGefGeneralSearch.memTablePesquisa.Fields[0].Value;
    ButtonEditTavelVehicle.EditValue := sPlaca;
  end;
  FreeAndNil(view_SisGefGeneralSearch);
end;

procedure TPageTravelControl.SetupClassFields;
begin
  SetLength(aParam, 17);
  aParam[0] := maskEditTravelID.EditValue;
  aParam[1] := '';
  aParam[2] := DateEditTravelDate.EditValue;
  aParam[3] := ButtonEdittravelCodeTaker.EditValue;
  aParam[4] := ComboBoxTravelOperation.Text;
  aParam[5] := ButtonEditTavelVehicle.EditValue;
  aParam[6] := ButtonEditTravelDriverCode.EditValue;
  aParam[7] := CurrencyEditTravelInitialKM.Value;
  aParam[8] := TimeEditTravelDepartureTime.EditValue;
  aParam[9] := CurrencyEditFinalKM.Value;
  aParam[10] := TimeEditreturnTime.EditValue;
  aParam[11] := CurrencyEditTotalKM.Value;
  aParam[12] := ComboBoxTravelOperation.Text;
  aParam[13] := MemoObs.Text;
  aParam[14] := 0;
  aParam[15] := ImageComboBox1Status.EditValue;
  aParam[16] := '';
end;

procedure TPageTravelControl.SetupFormFields(FTravel: TControllerTravelControl);
begin
  maskEditTravelID.EditValue := FTravel.Travel.ID;
  DateEditTravelDate.EditValue := FTravel.Travel.Data;
  ComboBoxTravelOperation.Text := FTravel.Travel.Operacao;
  ButtonEdittravelCodeTaker.EditValue := FTravel.Travel.Cliente;
  TextEditTravelNameTaker.Text := GetNameTaker(FTravel.Travel.Cliente);
  ButtonEditTravelDriverCode.EditValue := FTravel.Travel.Motorista;
  TextEditTravelDriverName.Text := GetDriverName(FTravel.Travel.Motorista);
  ButtonEditTavelVehicle.EditValue := FTravel.Travel.PlacaVeiculo;
  CurrencyEditTravelInitialKM.Value := FTravel.Travel.KMSaida;
  TimeEditTravelDepartureTime.EditValue := FTravel.Travel.HoraSaida;
  PoputateDestinations(FTravel.Travel.ID);
  PoputateFuelSuplies(FTravel.Travel.ID);
  PoputateTravelInputs(FTravel.Travel.ID);
  MemoObs.Text := FTravel.Travel.Observacao;
  ImageComboBox1Status.EditValue := FTravel.Travel.Status;
  CurrencyEditFinalKM.Value := FTravel.Travel.KMRetorno;
  TimeEditreturnTime.EditValue := FTravel.Travel.HoraRetorno;
  CurrencyEditTotalKM.Value := FTravel.Travel.KMRodado;
end;

end.
