unit View.SisGeFVehicleRegistrationDetail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Common.ENum, Common.Utils, Controller.APICEP, Controller.APICNPJ,
  Controller.SisGeFVehiclesRegistration, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit,
  cxGroupBox, cxRadioGroup, cxMaskEdit, cxDropDownEdit, cxImageComboBox, Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, cxButtonEdit,
  dxLayoutControlAdapters, Vcl.StdCtrls, cxCheckBox, System.Actions, Vcl.ActnList, Vcl.Menus, cxButtons, cxLabel;

type
  Tview_SisGeFVehiclesRegistrationDetail = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    pessoa: TcxImageComboBox;
    dxLayoutItem2: TdxLayoutItem;
    cpf: TcxMaskEdit;
    dxLayoutItem3: TdxLayoutItem;
    nome: TcxTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    nascimento: TcxDateEdit;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    pai: TcxTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    mae: TcxTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    rgie: TcxTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    ufrg: TcxComboBox;
    dxLayoutItem8: TdxLayoutItem;
    emissao: TcxDateEdit;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    cxButtonEdit1: TcxButtonEdit;
    dxLayoutItem10: TdxLayoutItem;
    endereco: TcxTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    bairro: TcxTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    cidade: TcxTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    ufendereco: TcxComboBox;
    dxLayoutItem14: TdxLayoutItem;
    descricao1: TcxTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    telefone1: TcxMaskEdit;
    dxLayoutItem16: TdxLayoutItem;
    descricao2: TcxTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    telefone2: TcxMaskEdit;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    marca: TComboBox;
    dxLayoutItem19: TdxLayoutItem;
    modelo: TcxTextEdit;
    dxLayoutItem20: TdxLayoutItem;
    placa: TcxTextEdit;
    dxLayoutItem21: TdxLayoutItem;
    cidadePlaca: TcxTextEdit;
    dxLayoutItem22: TdxLayoutItem;
    ufplaca: TcxComboBox;
    dxLayoutItem23: TdxLayoutItem;
    ano: TcxMaskEdit;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    renavan: TcxTextEdit;
    dxLayoutItem25: TdxLayoutItem;
    chassis: TcxTextEdit;
    dxLayoutItem26: TdxLayoutItem;
    tipo: TcxComboBox;
    dxLayoutItem27: TdxLayoutItem;
    cor: TcxTextEdit;
    dxLayoutItem28: TdxLayoutItem;
    licenciamento: TcxMaskEdit;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutGroup10: TdxLayoutGroup;
    rastreador: TcxCheckBox;
    dxLayoutItem30: TdxLayoutItem;
    cxCheckBox1: TcxCheckBox;
    dxLayoutItem31: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    actionListVeiculos: TActionList;
    actionOK: TAction;
    actionCancel: TAction;
    cxButton1: TcxButton;
    dxLayoutItem32: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem33: TdxLayoutItem;
    labelOperation: TcxLabel;
    dxLayoutItem34: TdxLayoutItem;
    labelMessage: TcxLabel;
    dxLayoutItem35: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }

    procedure StartForm;
  public
    { Public declarations }
  end;

var
  view_SisGeFVehiclesRegistrationDetail: Tview_SisGeFVehiclesRegistrationDetail;
  FVehicle : TControllerSisGeFVehiclesRegistration;
  FCEP: TAPICEPController;
  FCNPJ: TAPICNPJController;

implementation

{$R *.dfm}

uses Data.SisGeF;

{ Tview_SisGeFVehiclesRegistrationDetail }

procedure Tview_SisGeFVehiclesRegistrationDetail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FVehicle.Free;
  Action := caFree;
  view_SisGeFVehiclesRegistrationDetail := nil;
end;

procedure Tview_SisGeFVehiclesRegistrationDetail.FormShow(Sender: TObject);
begin
  StartForm;
end;

procedure Tview_SisGeFVehiclesRegistrationDetail.StartForm;
begin
  FVehicle := TControllerSisGeFVehiclesRegistration.Create;
end;

end.
