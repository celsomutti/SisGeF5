unit View.SisGeFExtractSO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  System.Actions, Vcl.ActnList, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCustomListBox, cxMCListBox, dxLayoutControlAdapters,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Common.Utils, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tview_SisGeFExtractSO = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    cxLabel1: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    actionListExtractSO: TActionList;
    actionGroupsPanel: TAction;
    actionExpandGroup: TAction;
    actionRetractGroup: TAction;
    actionCloseForm: TAction;
    actionProcessExtract: TAction;
    actionClosedExtract: TAction;
    actionExportGrid: TAction;
    dxLayoutGroup3: TdxLayoutGroup;
    tipoOS: TcxComboBox;
    dxLayoutItem2: TdxLayoutItem;
    situacaoExtrato: TcxComboBox;
    dxLayoutItem3: TdxLayoutItem;
    layoutGroupClientes: TdxLayoutGroup;
    listaClientes: TcxMCListBox;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    layoutGroupTerceirizados: TdxLayoutGroup;
    listaTerceiros: TcxMCListBox;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    actionIncludeClients: TAction;
    actionDeleteClients: TAction;
    actionClearClientsList: TAction;
    actionIncludeOutsourced: TAction;
    actionDeleteOutsourced: TAction;
    actionClearOutsourcedList: TAction;
    cxButton1: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutItem9: TdxLayoutItem;
    cxButton5: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    cxButton6: TcxButton;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dataInicial: TcxDateEdit;
    dxLayoutItem12: TdxLayoutItem;
    dataFinal: TcxDateEdit;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutGroup7: TdxLayoutGroup;
    cxButton7: TcxButton;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    cxButton8: TcxButton;
    dxLayoutItem15: TdxLayoutItem;
    cxButton9: TcxButton;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    cxButton10: TcxButton;
    dxLayoutItem17: TdxLayoutItem;
    cxButton11: TcxButton;
    dxLayoutItem18: TdxLayoutItem;
    cxButton12: TcxButton;
    dxLayoutItem19: TdxLayoutItem;
    cxButton14: TcxButton;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    gridExtractSODBTableView1: TcxGridDBTableView;
    gridExtractSOLevel1: TcxGridLevel;
    gridExtractSO: TcxGrid;
    dxLayoutItem21: TdxLayoutItem;
    dsExtract: TDataSource;
    gridExtractSODBTableView1num_os: TcxGridDBColumn;
    gridExtractSODBTableView1data_os: TcxGridDBColumn;
    gridExtractSODBTableView1cod_cadastro: TcxGridDBColumn;
    gridExtractSODBTableView1nom_cadastro: TcxGridDBColumn;
    gridExtractSODBTableView1des_servico: TcxGridDBColumn;
    gridExtractSODBTableView1qtd_servico: TcxGridDBColumn;
    gridExtractSODBTableView1val_unitario: TcxGridDBColumn;
    gridExtractSODBTableView1val_servico: TcxGridDBColumn;
    gridExtractSODBTableView1des_placa: TcxGridDBColumn;
    procedure actionCloseFormExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tipoOSPropertiesChange(Sender: TObject);
    procedure actionGroupsPanelExecute(Sender: TObject);
    procedure actionExpandGroupExecute(Sender: TObject);
    procedure actionRetractGroupExecute(Sender: TObject);
    procedure actionExportGridExecute(Sender: TObject);
    procedure actionIncludeClientsExecute(Sender: TObject);
    procedure actionDeleteClientsExecute(Sender: TObject);
    procedure actionClearClientsListExecute(Sender: TObject);
    procedure actionIncludeOutsourcedExecute(Sender: TObject);
    procedure actionDeleteOutsourcedExecute(Sender: TObject);
    procedure actionClearOutsourcedListExecute(Sender: TObject);
    procedure situacaoExtratoPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    procedure ExportGrid;
    procedure AddPersons;
    procedure ExcludePersons;
    procedure ClearPersons;
    procedure AddClients;
    procedure ExcludeClients;
    procedure ClearClients;
    function VaidateExtract(): boolean;
  public
    { Public declarations }
  end;

var
  view_SisGeFExtractSO: Tview_SisGeFExtractSO;

implementation

{$R *.dfm}

uses Data.SisGeF, Global.Parametros, View.PesquisaClientes, View.PesquisarPessoas;

procedure Tview_SisGeFExtractSO.actionClearClientsListExecute(Sender: TObject);
begin
  ClearClients;
end;

procedure Tview_SisGeFExtractSO.actionClearOutsourcedListExecute(Sender: TObject);
begin
  ClearPersons;
end;

procedure Tview_SisGeFExtractSO.actionCloseFormExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_SisGeFExtractSO.actionDeleteClientsExecute(Sender: TObject);
begin
  ExcludeClients;
end;

procedure Tview_SisGeFExtractSO.actionDeleteOutsourcedExecute(Sender: TObject);
begin
  ExcludePersons;
end;

procedure Tview_SisGeFExtractSO.actionExpandGroupExecute(Sender: TObject);
begin
  gridExtractSODBTableView1.ViewData.Expand(True);
end;

procedure Tview_SisGeFExtractSO.actionExportGridExecute(Sender: TObject);
begin
  ExportGrid;
end;

procedure Tview_SisGeFExtractSO.actionGroupsPanelExecute(Sender: TObject);
begin
  gridExtractSODBTableView1.OptionsView.GroupByBox := (not gridExtractSODBTableView1.OptionsView.GroupByBox);
end;

procedure Tview_SisGeFExtractSO.actionIncludeClientsExecute(Sender: TObject);
begin
  AddClients;
end;

procedure Tview_SisGeFExtractSO.actionIncludeOutsourcedExecute(Sender: TObject);
begin
  AddPersons;
end;

procedure Tview_SisGeFExtractSO.actionRetractGroupExecute(Sender: TObject);
begin
  gridExtractSODBTableView1.ViewData.Collapse(True);
end;

procedure Tview_SisGeFExtractSO.AddClients;
var
  FCode, FName, FItem: string;
begin
    if not Assigned(view_PesquisaClientes) then
  begin
    view_PesquisaClientes := Tview_PesquisaClientes.Create(Application);
  end;
  FItem := '';
  if view_PesquisaClientes.ShowModal = mrOk then
  begin
    if not view_PesquisaClientes.fdPesquisa.IsEmpty then
    begin
      FCode := view_PesquisaClientes.fdPesquisacod_cliente.AsString;
      FName := view_PesquisaClientes.fdPesquisanom_fantasia.AsString;
      FItem := Fcode + ';' + FName;
      if listaClientes.Items.IndexOf(FItem) <> -1 then
        Exit;
      listaClientes.Items.Add(FItem);
    end;
  end;
  view_PesquisaClientes.fdPesquisa.Connection.Connected := False;
  FreeAndNil(view_PesquisaClientes);
end;

procedure Tview_SisGeFExtractSO.ExcludeClients;
begin
  if listaClientes.Items.Count = 0 then
    Exit;
  listaClientes.DeleteSelected;
end;

procedure Tview_SisGeFExtractSO.ExcludePersons;
begin
  if listaClientes.Items.Count = 0 then
    Exit;
  listaTerceiros.DeleteSelected;
end;

procedure Tview_SisGeFExtractSO.ExportGrid;
var
  fnUtil : Common.Utils.TUtils;
  sMensagem: String;
begin
  try
    fnUtil := Common.Utils.TUtils.Create;

    if gridExtractSODBTableView1.ViewData.RowCount = 0 then Exit;

    if Data_Sisgef.SaveDialog.Execute() then
    begin
      if FileExists(Data_Sisgef.SaveDialog.FileName) then
      begin
        sMensagem := 'Arquivo ' + Data_Sisgef.SaveDialog.FileName + ' já existe! Sobrepor ?';
        if Application.MessageBox(PChar(sMensagem), 'Sobrepor', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit
      end;

      fnUtil.ExportarDados(gridExtractSO,Data_Sisgef.SaveDialog.FileName);

    end;
  finally
    fnUtil.Free;
  end;
end;

procedure Tview_SisGeFExtractSO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  view_SisGeFExtractSO := nil;
end;

procedure Tview_SisGeFExtractSO.situacaoExtratoPropertiesChange(Sender: TObject);
begin
  actionClosedExtract.Enabled := (situacaoExtrato.ItemIndex = 1);
end;

procedure Tview_SisGeFExtractSO.AddPersons;
var
  sSQL: String;
  sWhere: String;
  FCode, FName, FItem: string;
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
      FCode := View_PesquisarPessoas.qryPesquisa.Fields[1].AsString;
      FName := View_PesquisarPessoas.qryPesquisa.Fields[2].AsString;
      FItem := Fcode + ';' + FName;
      if listaTerceiros.Items.IndexOf(FItem) <> -1 then
        Exit;
      listaTerceiros.Items.Add(FItem);
    end;
  finally
    View_PesquisarPessoas.qryPesquisa.Close;
    View_PesquisarPessoas.tvPesquisa.ClearItems;
    FreeAndNil(View_PesquisarPessoas);
  end;
end;

procedure Tview_SisGeFExtractSO.ClearClients;
begin
  listaClientes.Items.Clear;
end;

procedure Tview_SisGeFExtractSO.ClearPersons;
begin
  listaTerceiros.Items.Clear;
end;

procedure Tview_SisGeFExtractSO.tipoOSPropertiesChange(Sender: TObject);
begin
  if tipoOs.ItemIndex = 1 then
  begin
    layoutGroupClientes.Visible := False;
    layoutGroupTerceirizados.Visible := True;
  end
  else if tipoOs.ItemIndex = 2 then
  begin
    layoutGroupClientes.Visible := True;
    layoutGroupTerceirizados.Visible := False;
  end
  else
    begin
    layoutGroupClientes.Visible := False;
    layoutGroupTerceirizados.Visible := False;
  end;
end;

function Tview_SisGeFExtractSO.VaidateExtract: boolean;
begin

end;

end.
