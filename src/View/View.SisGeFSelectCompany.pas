unit View.SisGeFSelectCompany;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, Controller.CRMEmpresas, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Actions, Vcl.ActnList, dxLayoutControlAdapters,
  Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  Tview_SisGeFSelectCompany = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    memTableCompany: TFDMemTable;
    memTableCompanycod_empresa: TIntegerField;
    memTableCompanynom_fantasia: TStringField;
    dsCompany: TDataSource;
    actionListCompany: TActionList;
    cxButton1: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    actionOK: TAction;
    actionCancel: TAction;
    company: TcxLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    procedure actionCancelExecute(Sender: TObject);
    procedure actionOKExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure PopulateCompany;
  public
    { Public declarations }
  end;

var
  view_SisGeFSelectCompany: Tview_SisGeFSelectCompany;

implementation

{$R *.dfm}

uses Data.SisGeF;

procedure Tview_SisGeFSelectCompany.actionCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tview_SisGeFSelectCompany.actionOKExecute(Sender: TObject);
begin
  if company.Text = '' then
  begin
    MessageDlg('Selecione uma empresa!', mtWarning, [mbCancel], 0);
    Exit;
  end;
  ModalResult := mrOk;
end;

procedure Tview_SisGeFSelectCompany.FormShow(Sender: TObject);
begin
  PopulateCompany;
end;

procedure Tview_SisGeFSelectCompany.PopulateCompany;
var
  FCompany : TCRMEmpresasController;
  AParam : array of variant;
begin
  try
    FCompany := TCRMEmpresasController.Create;
    SetLength(aParam, 3);
    aParam := ['APOIO', '*', ''];
    if FCompany.Localizar(aParam) then
    begin
      memTableCompany.Active := False;
      memTableCompany.Active := True;
      memTableCompany.CopyDataSet(FCompany.Empresas.Query, [coAppend]);
      if not memTableCompany.IsEmpty then memTableCompany.First;
    end;
  finally
    FCompany.Empresas.Query.Connection.Connected := False;
    FCompany.Free;
  end;
end;

end.
