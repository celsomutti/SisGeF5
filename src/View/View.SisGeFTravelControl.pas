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
  Services.SisGeFDAORoutines, Common.Utils, Control.Cadastro, Control.Bases, dxBarBuiltInMenu, cxGridCustomPopupMenu,
  cxGridPopupMenu;

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
    ButtonCancelTravel: TcxButton;
    LayoutButtonCancelTravel: TdxLayoutItem;
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
    GridTravelDestinationsDBTableView1cod_destino: TcxGridDBColumn;
    GridTravelDestinationsDBTableView1des_destino: TcxGridDBColumn;
    GridTravelDestinationsDBTableView1cod_agente: TcxGridDBColumn;
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
    ComboBoxStatus: TcxComboBox;
    LayoutComboBoxStatus: TdxLayoutItem;
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
    cxGridPopupMenu1: TcxGridPopupMenu;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionExitPageExecute(Sender: TObject);
    procedure actionPriorPageExecute(Sender: TObject);
    procedure actionSearchExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actionExportExecute(Sender: TObject);
    procedure LayoutBodyTabChanged(Sender: TObject);
    procedure actionEditTravelExecute(Sender: TObject);
    procedure gridTravelsDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
      AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    procedure BuildPageLabel;
    procedure ClosePage;
    procedure BuildInitialList;
    procedure SearchPeriod;
    procedure ExportGrid;
    procedure ClearForm;
    procedure SetupFormFields(FTravel: TControllerTravelControl);
    procedure SearchTravel;
    procedure PoputateDestinations(iId: integer);
    procedure PoputateFuelSuplies(iId: integer);
    procedure PoputateTravelInputs(iId: integer);
    procedure PopulateInputs;
    procedure CloseMemTable;
    function GetNameTaker(): string;
    function GetDriverName(): string;
  public
    { Public declarations }
  end;

var
  PageTravelControl: TPageTravelControl;

implementation

{$R *.dfm}

uses Data.SisGeF;

{ TPageTravelControl }

procedure TPageTravelControl.actionEditTravelExecute(Sender: TObject);
begin
  if memTableTravels.IsEmpty then
    Exit;
  SearchTravel;
end;

procedure TPageTravelControl.actionExitPageExecute(Sender: TObject);
begin
  ClosePage;
end;

procedure TPageTravelControl.actionExportExecute(Sender: TObject);
begin
  ExportGrid;
end;

procedure TPageTravelControl.actionPriorPageExecute(Sender: TObject);
begin
  ClearForm;
  LayoutBody.ItemIndex := 0;
end;

procedure TPageTravelControl.actionSearchExecute(Sender: TObject);
begin
  SearchPeriod;
end;

procedure TPageTravelControl.BuildInitialList;
begin
  dateEditInicial.Date :=  IncDay(Now,-15);
  dateEditFinalDate.Date := IncDay(Now,-1);
  SearchPeriod;
end;

procedure TPageTravelControl.BuildPageLabel;
begin
  LabelPageTitle.Caption := Self.Caption;
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
  ButtonEditTavelVehicle.EditValue := 0;
  CurrencyEditTravelInitialKM.Value := 0;
  TimeEditTravelDepartureTime.EditValue := 0;
  MemTableTravelDestination.Active := False;
  MemTableTravelDestination.Active := True;
  MemTableFuelSupplies.Active := False;
  MemTableFuelSupplies.Active := True;
  MemTableInputs.Active := False;
  MemTableInputs.Active := True;
  MemoObs.Clear;
  ComboBoxStatus.EditValue := 0;
  CurrencyEditFinalKM.Value := 0;
  TimeEditreturnTime.EditValue := 0;
  CurrencyEditTotalKM.Value := 0;
end;

procedure TPageTravelControl.CloseMemTable;
begin
  memTableTravels.Active := false;
  MemTableFuelSupplies.Active := false;
  MemTableTravelInputs.Active := false;
  MemTableTravelDestination.Active := false;
  MemTableInputs.Active := false;
end;

procedure TPageTravelControl.ClosePage;
begin
  Self.Close;
end;

procedure TPageTravelControl.ExportGrid;
var
  fnUtil : Common.Utils.TUtils;
  sMensagem: String;
begin
  try

    if memTableTravels.IsEmpty then
      Exit;

    fnUtil := Common.Utils.TUtils.Create;

    if gridTravelsDBTableView1.ViewData.RowCount = 0 then Exit;

    if Data_Sisgef.SaveDialog.Execute() then
    begin
      if FileExists(Data_Sisgef.SaveDialog.FileName) then
      begin
        sMensagem := 'Arquivo ' + Data_Sisgef.SaveDialog.FileName + ' já existe! Sobrepor ?';
        if Application.MessageBox(PChar(sMensagem), 'Sobrepor', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit
      end;

      fnUtil.ExportarDados(gridTravels,Data_Sisgef.SaveDialog.FileName);

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
  BuildInitialList;
end;

function TPageTravelControl.GetDriverName: string;
var
  FCadastro : TCadastroControl;
begin
  FCadastro := TCadastroControl.Create;
  Result := '';
  try
    Result := FCadastro.GetField('des_razao_social','cod_cadastro',ButtonEditTravelDriverCode.Text);
  finally
    FCadastro.Free;
  end;
end;

function TPageTravelControl.GetNameTaker: string;
var
  FService : TServicesDAORoutines;
  aParam : array of variant;
  sQuery: string;
begin
  FService := TServicesDAORoutines.Create;
  Result := '';
  try
    FService.TableName := '';
    FService.CRUDSentence := '';
    sQuery := 'select nom_cliente from view_listClientsCompat where cod_cliente = ' +  ButtonEdittravelCodeTaker.Text;
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

procedure TPageTravelControl.gridTravelsDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  actionEditTravelExecute(Sender);
end;

procedure TPageTravelControl.LayoutBodyTabChanged(Sender: TObject);
begin
  if LayoutBody.ItemIndex = 1 then
  begin
    DateEditTravelDate.SetFocus;
  end;
end;

procedure TPageTravelControl.PopulateInputs;
var
  FInputs : TServicesDAORoutines;
  sSentence: string;
  aParam: array of variant;
begin
  FInputs := TServicesDAORoutines.Create;
  try
    sSentence := 'select * from tbinsumostransportes';
    aParam := ['SQL', sSentence];
    MemTableInputs.Active := false;
    if FInputs.ExecSentence(aParam) then
    begin
      MemTableInputs.CopyDataSet(FInputs.Query);
      FInputs.Query.Connection.Connected := false;
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
  FDestinations : TControllerDestinationTravel;
  sSentence: string;
  aParam: array of variant;
begin
  FDestinations := TControllerDestinationTravel.Create;
  try
    sSentence := 'select * from trs_destinos where id_controle = '  + iId.ToString;
    aParam := ['SQL', sSentence];
    memTableTravelDestination.Active := false;
    if FDestinations.Search(aParam) then
    begin
      memTableTravelDestination.CopyDataSet(FDestinations.Destination.Query);
      FDestinations.Destination.Query.Connection.Connected := false;
      if not memTableTravelDestination.IsEmpty then
        memTableTravelDestination.First;
    end
    else
      memTableTravelDestination.Active := True;
  finally
    Finalize(aParam);
    FDestinations.Free;
  end;
end;

procedure TPageTravelControl.PoputateFuelSuplies(iId: integer);
var
  FFuel : TControllerFuelSupplies;
  sSentence: string;
  aParam: array of variant;
begin
  FFuel := TControllerFuelSupplies.Create;
  try
    sSentence := 'select * from tbabastecimento where id_controle = '  + iId.ToString;
    aParam := ['SQL', sSentence];
    MemTableFuelSupplies.Active := false;
    if FFuel.Search(aParam) then
    begin
      MemTableFuelSupplies.CopyDataSet(FFuel.FuelSuplies.Query);
      FFuel.FuelSuplies.Query.Connection.Connected := false;
      if not MemTableFuelSupplies.IsEmpty then
        MemTableFuelSupplies.First;
    end
    else
      MemTableFuelSupplies.Active := true;
  finally
    Finalize(aParam);
    FFuel.Free;
  end;
end;

procedure TPageTravelControl.PoputateTravelInputs(iId: integer);
var
  FInputs : TControllerConsumptionInputs;
  sSentence: string;
  aParam: array of variant;
begin
  FInputs := TControllerConsumptionInputs.Create;
  try
    sSentence := 'select * from tbconsumoinsumos where id_controle = '  + iId.ToString;
    aParam := ['SQL', sSentence];
    MemTableTravelInputs.Active := false;
    if FInputs.Search(aParam) then
    begin
      MemTableTravelInputs.CopyDataSet(FInputs.Inputs.Query);
      FInputs.Inputs.Query.Connection.Connected := false;
      if not MemTableTravelInputs.IsEmpty then
        MemTableFuelSupplies.First;
    end
    else
      MemTableTravelInputs.Active := true;
  finally
    Finalize(aParam);
    FInputs.Free;
  end;
end;

procedure TPageTravelControl.SearchPeriod;
var
  FTravel: TServicesDAORoutines;
  sSentence: string;
  aParam: array of variant;
begin
  try
    FTravel := TServicesDAORoutines.Create;
    sSentence := 'select * from view_listTravel where dat_transporte between ' +
      QuotedStr(FormatDateTime('yyyy-mm-dd', dateEditInicial.Date)) + ' and ' +
      QuotedStr(FormatDateTime('yyyy-mm-dd', dateEditFinalDate.Date));
    aParam := ['SQL', sSentence];
    memTableTravels.Active := False;
    if FTravel.ExecSentence(aParam) then
    begin
      memTableTravels.CopyDataSet(FTravel.Query);
      FTravel.Query.Connection.Connected := False;
    end;
  finally
    Finalize(aParam);
    FTravel.Free;
  end;
end;

procedure TPageTravelControl.SearchTravel;
var
  FTravelList: TControllerTravelControl;
  sSentence: string;
  aParam: array of variant;
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
        LayoutBody.ItemIndex := 1;
      end;
      FTravelList.Travel.Query.Connection.Connected := False;
    end;
  finally
    Finalize(aParam);
    FTravelList.Free;
  end;
end;

procedure TPageTravelControl.SetupFormFields(FTravel : TControllerTravelControl);
begin
  maskEditTravelID.EditValue := FTravel.Travel.ID;
  DateEditTravelDate.EditValue := FTravel.Travel.Data;
  ComboBoxTravelOperation.Text := FTravel.Travel.Operacao;
  ButtonEdittravelCodeTaker.EditValue := FTravel.Travel.Cliente;
  TextEditTravelNameTaker.Text := GetNameTaker;
  ButtonEditTravelDriverCode.EditValue := FTravel.Travel.Motorista;
  TextEditTravelDriverName.Text := GetDriverName;
  ButtonEditTavelVehicle.EditValue := FTravel.Travel.PlacaVeiculo;
  CurrencyEditTravelInitialKM.Value := FTravel.Travel.KMSaida;
  TimeEditTravelDepartureTime.EditValue := FTravel.Travel.HoraSaida;
  PoputateDestinations(FTravel.Travel.ID);
  PoputateFuelSuplies(FTravel.Travel.ID);
  PoputateTravelInputs(FTravel.Travel.ID);
  MemoObs.Text := FTravel.Travel.Observacao;
  ComboBoxStatus.ItemIndex := FTravel.Travel.Status;
  CurrencyEditFinalKM.Value := FTravel.Travel.KMRetorno;
  TimeEditreturnTime.EditValue := FTravel.Travel.HoraRetorno;
  CurrencyEditTotalKM.Value := FTravel.Travel.KMRodado;
end;

end.
