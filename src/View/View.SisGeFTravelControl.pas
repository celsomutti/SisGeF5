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
  cxButtonEdit, cxSpinEdit, cxMemo, cxImageComboBox, System.DateUtils;

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
    Shape1: TShape;
    LayoutLine: TdxLayoutItem;
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
    ButtonEndTravel: TcxButton;
    LayoutButtonEndTravel: TdxLayoutItem;
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
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionExitPageExecute(Sender: TObject);
    procedure actionPriorPageExecute(Sender: TObject);
    procedure actionSearchExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actionExportExecute(Sender: TObject);
    procedure LayoutBodyTabChanged(Sender: TObject);
  private
    { Private declarations }
    procedure BuildPageLabel;
    procedure ClosePage;
    procedure BuildInitialList;
    procedure SearchPeriod;
    procedure ExportGrid;
    procedure ClearForm;
  public
    { Public declarations }
  end;

var
  PageTravelControl: TPageTravelControl;

implementation

{$R *.dfm}

uses Data.SisGeF, Controller.SisGeFConsumptionInputs,
  Controller.SisGeFDestinationTravel, Controller.SisGeFFuelSupplies,
  Controller.SisGeFTravelControl, Controller.SisGeFVehiclesRegistration,
  Services.SisGeFDAORoutines, Common.Utils;

{ TPageTravelControl }

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
  Action := caFree;
  PageTravelControl := Nil;
end;

procedure TPageTravelControl.FormCreate(Sender: TObject);
begin
  BuildPageLabel;
end;

procedure TPageTravelControl.FormShow(Sender: TObject);
begin
  BuildInitialList;
end;

procedure TPageTravelControl.LayoutBodyTabChanged(Sender: TObject);
begin
  if LayoutBody.ItemIndex = 1 then
  begin
    DateEditTravelDate.SetFocus;
  end;
end;

procedure TPageTravelControl.SearchPeriod;
var
  FTravelList: TServicesDAORoutines;
  sSentence: string;
  aParam: array of variant;
begin
  try
    if dateEditInicial.Date > dateEditFinalDate.Date then
    begin
      MessageDlg('Data inicial menor que data final. Verifique.', mtWarning, [mbOK], 0);
      dateEditInicial.SetFocus;
      Exit;
    end;
    FTravelList := TServicesDAORoutines.Create;
    sSentence := 'select * from view_listTravel where dat_transporte between ' +
      QuotedStr(FormatDateTime('yyyy-mm-dd', dateEditInicial.Date)) + ' and ' +
      QuotedStr(FormatDateTime('yyyy-mm-dd', dateEditFinalDate.Date));
    aParam := ['SQL', sSentence];
    memTableTravels.Active := False;
    if FTravelList.ExecSentence(aParam) then
    begin
      memTableTravels.CopyDataSet(FTravelList.Query);
      FTravelList.Query.Connection.Connected := False;
    end;
  finally
    FTravelList.Free;
  end;
end;

end.
