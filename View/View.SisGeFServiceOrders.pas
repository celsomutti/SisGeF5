unit View.SisGeFServiceOrders;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  cxTextEdit, cxMaskEdit, cxButtonEdit, System.Actions, Vcl.ActnList, Vcl.ComCtrls, dxCore, cxDateUtils, cxDropDownEdit, cxCalendar,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Data.DB, cxSpinEdit, cxTimeEdit;

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
    actionSrarchVeichle: TAction;
    actionSearchRoadMap: TAction;
    dxLayoutGroup10: TdxLayoutGroup;
    kmInicial: TcxMaskEdit;
    dxLayoutItem11: TdxLayoutItem;
    horaSaida: TcxTimeEdit;
    dxLayoutItem12: TdxLayoutItem;
    cxMaskEdit1: TcxMaskEdit;
    dxLayoutItem13: TdxLayoutItem;
    horaRetorno: TcxTimeEdit;
    dxLayoutItem14: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  view_SisGeFServiceOrders: Tview_SisGeFServiceOrders;

implementation

{$R *.dfm}

uses Data.SisGeF;

end.
