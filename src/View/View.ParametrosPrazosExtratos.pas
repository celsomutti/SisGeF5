unit View.ParametrosPrazosExtratos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxMaskEdit, cxImageComboBox,
  cxSpinEdit, dxLayoutControlAdapters, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxButtons,
  Control.FinanceiroPrazosExtratos, Common.ENum;

type
  Tview_ParametrosPrazosExtratos = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    labelTitle: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    gridParametrosDBTableView1: TcxGridDBTableView;
    gridParametrosLevel1: TcxGridLevel;
    gridParametros: TcxGrid;
    dxLayoutItem2: TdxLayoutItem;
    memTableParametros: TFDMemTable;
    memTableParametrosid_registro: TIntegerField;
    memTableParametroscod_tipo_extrato: TSmallintField;
    memTableParametrosnum_quinzena: TSmallintField;
    memTableParametrosnum_dia_inicio: TSmallintField;
    memTableParametrosnum_dia_final: TSmallintField;
    memTableParametrosnum_dia_pagamento: TSmallintField;
    memTableParametrosqtd_dias_prazo_pagamento: TSmallintField;
    dsParametros: TDataSource;
    gridParametrosDBTableView1id_registro: TcxGridDBColumn;
    gridParametrosDBTableView1cod_tipo_extrato: TcxGridDBColumn;
    gridParametrosDBTableView1num_quinzena: TcxGridDBColumn;
    gridParametrosDBTableView1num_dia_inicio: TcxGridDBColumn;
    gridParametrosDBTableView1num_dia_final: TcxGridDBColumn;
    gridParametrosDBTableView1num_dia_pagamento: TcxGridDBColumn;
    gridParametrosDBTableView1qtd_dias_prazo_pagamento: TcxGridDBColumn;
    dxLayoutGroup3: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    actionListPrametros: TActionList;
    actionFechar: TAction;
    cxButton2: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    procedure actionFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure memTableParametrosBeforeEdit(DataSet: TDataSet);
    procedure memTableParametrosBeforeInsert(DataSet: TDataSet);
    procedure memTableParametrosBeforeDelete(DataSet: TDataSet);
    procedure memTableParametrosAfterPost(DataSet: TDataSet);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
    procedure PopulateData;
    function IncludeData(): Boolean;
    function UpdateData(): Boolean;
    function DeleteData(): Boolean;
    function ValidateData(): Boolean;
    procedure SetupClass();

  public
    { Public declarations }
  end;

var
  view_ParametrosPrazosExtratos: Tview_ParametrosPrazosExtratos;
  FPrazos : TFinanceiroPrazosExtratosControl;
  FAcao: TAcao;

implementation

{$R *.dfm}

uses Data.SisGeF;

procedure Tview_ParametrosPrazosExtratos.actionFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_ParametrosPrazosExtratos.cxButton2Click(Sender: TObject);
var
  aParam: array of variant;
begin
  SetLength(aParam,3);
  aParam := ['TIPOQUINZENA',2,2];
  if FPrazos.Search(aParam) then
  begin
    FPrazos.SetupSelf(FPrazos.Prazos.Query);
    if FPrazos.MountPeriod(2021,5) then
      Beep;
  end;
end;

function Tview_ParametrosPrazosExtratos.DeleteData: Boolean;
begin
  Result := False;
  SetupClass();
  Result := FPrazos.Save();
end;

procedure Tview_ParametrosPrazosExtratos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FPrazos.Free;
  Action := caFree;
  view_ParametrosPrazosExtratos := nil;
end;

procedure Tview_ParametrosPrazosExtratos.FormShow(Sender: TObject);
begin
  labelTitle.Caption := Self.Caption;
  FPrazos := TFinanceiroPrazosExtratosControl.Create;
  PopulateData;
end;

function Tview_ParametrosPrazosExtratos.IncludeData: Boolean;
begin
  Result := False;
  SetupClass();
  if not ValidateData() then
    Exit;
  Result := FPrazos.Save();
end;

procedure Tview_ParametrosPrazosExtratos.memTableParametrosAfterPost(DataSet: TDataSet);
begin
  if memTableParametros.Tag = -1 then
    Exit;
  if FAcao = tacIncluir then
  begin
    if not IncludeData then
      Abort;
  end
  else  if FAcao = tacAlterar then
  begin
    if not UpdateData then
      Abort;
  end
  else  if FAcao = tacExcluir then
  begin
    if not DeleteData then
      Abort;
  end
  else
    Application.MessageBox('Alteração gravada.', 'Gravar', MB_OK + MB_ICONINFORMATION);
end;

procedure Tview_ParametrosPrazosExtratos.memTableParametrosBeforeDelete(DataSet: TDataSet);
begin
  FAcao := tacExcluir;
end;

procedure Tview_ParametrosPrazosExtratos.memTableParametrosBeforeEdit(DataSet: TDataSet);
begin
  FAcao := tacAlterar;
end;

procedure Tview_ParametrosPrazosExtratos.memTableParametrosBeforeInsert(DataSet: TDataSet);
begin
  FAcao := tacIncluir;
end;

procedure Tview_ParametrosPrazosExtratos.PopulateData;
var
  aParam: array of variant;
begin
  SetLength(aParam, 2);
  aParam := ['FILTRO',''];
  memTableParametros.Active := False;
  memTableParametros.Tag := -1;

  if FPrazos.Search(aParam) then
  begin
    memTableParametros.Data := FPrazos.Prazos.Query.Data;
    FPrazos.Prazos.Query.Active := False;
    FPrazos.Prazos.Query.Connection.Connected := False;
  end
  else
  begin
    memTableParametros.Active := True;
  end;
  Finalize(aParam);
  memTableParametros.Tag := 0;
end;

procedure Tview_ParametrosPrazosExtratos.SetupClass();
begin
  FPrazos.Prazos.ID := memTableParametrosid_registro.AsInteger;
  FPrazos.Prazos.Tipo := memTableParametroscod_tipo_extrato.AsInteger;
  FPrazos.Prazos.Quinzena := memTableParametrosnum_quinzena.AsInteger;
  FPrazos.Prazos.DiaInicio := memTableParametrosnum_dia_inicio.AsInteger;
  FPrazos.Prazos.DiaFinal := memTableParametrosnum_dia_final.AsInteger;
  FPrazos.Prazos.DiaPagamento := memTableParametrosnum_dia_pagamento.AsInteger;
  FPrazos.Prazos.DiasPrazoPagamento := memTableParametrosqtd_dias_prazo_pagamento.AsInteger;
  FPrazos.Prazos.Acao := FAcao;
end;

function Tview_ParametrosPrazosExtratos.UpdateData: Boolean;
begin
  Result := False;
  SetupClass();
  if not ValidateData() then
    Exit;
  Result := FPrazos.Save();
end;

function Tview_ParametrosPrazosExtratos.ValidateData: Boolean;
var
  aParam : array of Variant;
  sFiltro: String;
begin
  Result := False;
  if FPrazos.Prazos.Tipo = 0 then
  begin
    Application.MessageBox('Informe o tipo de extrato!', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if FPrazos.Prazos.Quinzena = 0 then
  begin
    Application.MessageBox('Informe o número da quinzena!', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if FPrazos.Prazos.DiaInicio = 0 then
  begin
    Application.MessageBox('Informe o dia de início do período do extrato!', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if FPrazos.Prazos.DiaFinal = 0 then
  begin
    Application.MessageBox('Informe o dia de término do período do extrato!', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if FPrazos.Prazos.DiaPagamento = 0 then
  begin
    Application.MessageBox('Informe o dia de pagamento desse período do extrato!', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if FPrazos.Prazos.DiasPrazoPagamento = 0 then
  begin
    Application.MessageBox('Informe a quantidade de dias de prazo para pagamento a partida da data base!', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if FPrazos.Prazos.Acao = tacIncluir then
  begin
    SetLength(aParam, 5);
    aParam := ['EXISTE', FPrazos.Prazos.Tipo, FPrazos.Prazos.Quinzena, FPrazos.Prazos.DiaInicio, FPrazos.Prazos.DiaFinal];
    if FPrazos.Prazos.Search(aParam) then
    begin
      Application.MessageBox('Parâmetro já cadastrado!', 'Atenção', MB_OK + MB_ICONWARNING);
      FPrazos.Prazos.Query.Active := False;
      FPrazos.Prazos.Query.Connection.Connected := False;
      Finalize(aParam);
      Exit;
    end;
  end;
  Finalize(aParam);
  Result := True;
end;

end.
