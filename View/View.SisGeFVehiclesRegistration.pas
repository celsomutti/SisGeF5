unit View.SisGeFVehiclesRegistration;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Controller.SisGeFVehiclesRegistration, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Actions, Vcl.ActnList, dxBar, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  cxMaskEdit, cxDropDownEdit, cxTextEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Common.Utils, Common.ENum, DAO.Conexao;

type
  Tview_SisGeFVehiclesRegistration = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    memTableListaVeiculos: TFDMemTable;
    memTableListaVeiculosCOD_VEICULO: TIntegerField;
    memTableListaVeiculosNUM_CNPJ: TStringField;
    memTableListaVeiculosNOM_PROPRIETARIO: TStringField;
    memTableListaVeiculosNUM_RG: TStringField;
    memTableListaVeiculosCOD_ENTREGADOR: TIntegerField;
    memTableListaVeiculosDES_RAZAO_SOCIAL: TStringField;
    memTableListaVeiculosDES_MARCA: TStringField;
    memTableListaVeiculosDES_MODELO: TStringField;
    memTableListaVeiculosDES_PLACA: TStringField;
    memTableListaVeiculosDES_TIPO: TStringField;
    memTableListaVeiculosNUM_CHASSIS: TStringField;
    memTableListaVeiculosDES_ANO: TStringField;
    memTableListaVeiculosDES_COR: TStringField;
    memTableListaVeiculosNUM_RENAVAN: TStringField;
    memTableListaVeiculosANO_EXERCICIO_CLRV: TStringField;
    actionListVeiculos: TActionList;
    actionNew: TAction;
    actionSearch: TAction;
    actionEdit: TAction;
    actionCancel: TAction;
    actionSave: TAction;
    actionClose: TAction;
    barManager: TdxBarManager;
    barManagerBar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxLayoutGroup1: TdxLayoutGroup;
    parametro: TcxTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    campos: TcxComboBox;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    gridVeiculosDBTableView1: TcxGridDBTableView;
    gridVeiculosLevel1: TcxGridLevel;
    gridVeiculos: TcxGrid;
    dxLayoutItem3: TdxLayoutItem;
    dsVeiculos: TDataSource;
    gridVeiculosDBTableView1COD_VEICULO: TcxGridDBColumn;
    gridVeiculosDBTableView1NUM_CNPJ: TcxGridDBColumn;
    gridVeiculosDBTableView1NOM_PROPRIETARIO: TcxGridDBColumn;
    gridVeiculosDBTableView1NUM_RG: TcxGridDBColumn;
    gridVeiculosDBTableView1COD_ENTREGADOR: TcxGridDBColumn;
    gridVeiculosDBTableView1DES_RAZAO_SOCIAL: TcxGridDBColumn;
    gridVeiculosDBTableView1DES_MARCA: TcxGridDBColumn;
    gridVeiculosDBTableView1DES_MODELO: TcxGridDBColumn;
    gridVeiculosDBTableView1DES_PLACA: TcxGridDBColumn;
    gridVeiculosDBTableView1DES_TIPO: TcxGridDBColumn;
    gridVeiculosDBTableView1NUM_CHASSIS: TcxGridDBColumn;
    gridVeiculosDBTableView1DES_ANO: TcxGridDBColumn;
    gridVeiculosDBTableView1DES_COR: TcxGridDBColumn;
    gridVeiculosDBTableView1NUM_RENAVAN: TcxGridDBColumn;
    gridVeiculosDBTableView1ANO_EXERCICIO_CLRV: TcxGridDBColumn;
    actionExpand: TAction;
    actionRetract: TAction;
    actionGroupPanel: TAction;
    actionExport: TAction;
    dxBarLargeButton7: TdxBarLargeButton;
    procedure actionCloseExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure actionSearchExecute(Sender: TObject);
    procedure actionCancelExecute(Sender: TObject);
  private
    { Private declarations }
    procedure Mode;
    procedure Search(sFilter: string);
    procedure CancelOperation;
    procedure StartForm;
    procedure EndingForm;
    function FormulateFilter(sText: string): string;
  public
    { Public declarations }
    FView: String;
  end;

var
  view_SisGeFVehiclesRegistration: Tview_SisGeFVehiclesRegistration;
  FAcao: TAcao;

implementation

{$R *.dfm}

uses Data.SisGeF;

procedure Tview_SisGeFVehiclesRegistration.actionCancelExecute(Sender: TObject);
begin
  CancelOperation;
end;

procedure Tview_SisGeFVehiclesRegistration.actionCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_SisGeFVehiclesRegistration.actionSearchExecute(Sender: TObject);
begin
  Search(FormulateFilter(parametro.Text));
end;

procedure Tview_SisGeFVehiclesRegistration.CancelOperation;
begin
  parametro.Clear;
  memTableListaVeiculos.Active := False;
  FAcao := tacIndefinido;
  Mode;
end;

procedure Tview_SisGeFVehiclesRegistration.EndingForm;
begin
  memTableListaVeiculos.Active := False;
end;

procedure Tview_SisGeFVehiclesRegistration.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EndingForm;
  Action := caFree;
  view_SisGeFVehiclesRegistration := nil;
end;

procedure Tview_SisGeFVehiclesRegistration.FormShow(Sender: TObject);
begin
  StartForm;
end;

function Tview_SisGeFVehiclesRegistration.FormulateFilter(sText: string): string;
var
  sMensagem: String;
  sFiltro: String;
  fFuncoes : Common.Utils.TUtils;
begin
  Result := '';
  sFiltro := '';
  fFuncoes := Common.Utils.TUtils.Create;
  if sText = '' then
  begin
    sMensagem := 'O campo de texto a pesquisar não foi preenchido!. ' +
    'Caso deseje visualizar todos os registros clique OK, porém, esse processo pode ser lento.';
    if Application.MessageBox(PChar(sMensagem), 'Atenção!', MB_OKCANCEL + MB_ICONWARNING) = IDCANCEL then
    begin
      sFiltro := 'NONE';
    end;
  end
  else
  begin
    if campos.ItemIndex = 0 then
    begin
      sFiltro := 'nom_proprietario like ' + QuotedStr('%' + sText + '%') +
                 ' or des_razao_social like ' + QuotedStr('%' + sText + '%') + ' or num_cnpj like ' + QuotedStr('%' + sText + '%') +
                 ' or des_marca like ' + QuotedStr('%' + sText + '%') + ' or des_modelo like ' + QuotedStr('%' + sText + '%') +
                 ' or des_placa like ' + QuotedStr('%' + sText + '%') + ' or des_tipo like ' + QuotedStr('%' + sText + '%') +
                 ' or num_chassis like ' + QuotedStr('%' + sText + '%');
      if fFuncoes.ENumero(sText) then
      begin
        if sText <> '' then
        begin
          sFiltro := sFiltro + ' or ';
        end;
        sFiltro := sFiltro + 'cod_veiculo like ' + sText  + ' or cod_entregador like ' + sText + ' or num_renavan like ' + sText;
      end;
    end
    else if campos.ItemIndex = 1 then
    begin
      sFiltro := 'cod_veiculo like ' + QuotedStr('%' +  sText + '%');
    end
    else if campos.ItemIndex = 2 then
    begin
      sFiltro := 'num_cnpj like ' + QuotedStr('%' + sText + '%');
    end
    else if campos.ItemIndex = 3 then
    begin
      sFiltro := 'nom_proprietario like ' + QuotedStr('%' + sText + '%');
    end
    else if campos.ItemIndex = 4 then
    begin
      sFiltro := 'des_placa like ' + QuotedStr('%' + sText + '%');
    end
    else if campos.ItemIndex = 5 then
    begin
      sFiltro := 'num_chassis like ' + QuotedStr('%' + sText + '%');
    end
    else if campos.ItemIndex = 6 then
    begin
      sFiltro := 'num_renavan like ' + QuotedStr('%' + sText + '%');
    end;
  end;
  fFuncoes.Free;
  Result := sFiltro;
end;

procedure Tview_SisGeFVehiclesRegistration.Mode;
begin
  if FAcao = tacIndefinido then
  begin
    actionNew.Enabled := True;
    actionSearch.Enabled := True;
    actionEdit.Enabled := False;
    actionCancel.Enabled := False;
    actionSave.Enabled := False;
    actionClose.Enabled := True;
  end
  else if FAcao = tacIncluir then
  begin
    actionNew.Enabled := False;
    actionsearch.Enabled := False;
    actionEdit.Enabled := False;
    actionCancel.Enabled := True;
    actionSave.Enabled := True;
    actionClose.Enabled := False;
  end
  else if FAcao = tacAlterar then
  begin
    actionNew.Enabled := False;
    actionsearch.Enabled := False;
    actionEdit.Enabled := False;
    actionCancel.Enabled := True;
    actionSave.Enabled := True;
    actionClose.Enabled := False;
  end
  else if FAcao = tacPesquisa then
  begin
    actionNew.Enabled := True;
    actionSearch.Enabled := True;
    actionEdit.Enabled := True;
    actionCancel.Enabled := True;
    actionSave.Enabled := True;
    actionClose.Enabled := True;
  end;
end;

procedure Tview_SisGeFVehiclesRegistration.Search(sFilter: string);
var
  FConnection : TConexao;
  fQuery : TFDQuery;
begin
  if sFilter = 'NONE' then
  begin
    Exit;
  end;
  FConnection := TConexao.Create;
  FQuery := FConnection.ReturnQuery;
  if memTableListaVeiculos.Active then
  begin
    memTableListaVeiculos.Close;
  end;
  fQuery.SQL.Clear;
  fQuery.SQL.Text := 'select * from ' + FView;
  if not sFilter.IsEmpty then
  begin
    fQuery.SQL.Add('where ' + sFilter);
  end;
  fQuery.Open();
  if not fQuery.IsEmpty then
  begin
    memTableListaVeiculos.Data := fQuery.Data;
    gridVeiculos.SetFocus;
    FAcao := tacPesquisa;
    Mode;
  end;
  FConnection.Free;
  fQuery.Free;
end;

procedure Tview_SisGeFVehiclesRegistration.StartForm;
begin
  FView := 'viewlistaveiculos';
  FAcao := tacIndefinido;
  Mode;
end;

end.
