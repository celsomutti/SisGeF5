unit View.SisGeFExtractedExpress;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, cxCustomListBox, cxMCListBox, dxLayoutControlAdapters,
  Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  Tview_SisGeFExtractedExpress = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    tipoExtrato: TcxComboBox;
    dxLayoutItem1: TdxLayoutItem;
    tipoPeriodo: TcxComboBox;
    dxLayoutItem2: TdxLayoutItem;
    layoutGroupMain: TdxLayoutGroup;
    layoutGroupParameters: TdxLayoutGroup;
    layoutGroupExtract: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    layoutGroupCustomized: TdxLayoutGroup;
    layoutGroupParameterized: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dataInicialPeriodo: TcxDateEdit;
    dxLayoutItem3: TdxLayoutItem;
    dataFinalPeriodo: TcxDateEdit;
    dxLayoutItem4: TdxLayoutItem;
    anoPeriodo: TcxComboBox;
    dxLayoutItem5: TdxLayoutItem;
    mesPeriodo: TcxComboBox;
    dxLayoutItem6: TdxLayoutItem;
    periodoParametrizado: TcxComboBox;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    situacaoExtrato: TcxComboBox;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    listaClientes: TcxMCListBox;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    listaBases: TcxMCListBox;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutGroup10: TdxLayoutGroup;
    cxButton3: TcxButton;
    dxLayoutItem13: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    listaEntregadores: TcxMCListBox;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutGroup12: TdxLayoutGroup;
    cxButton5: TcxButton;
    dxLayoutItem16: TdxLayoutItem;
    cxButton6: TcxButton;
    dxLayoutItem17: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  view_SisGeFExtractedExpress: Tview_SisGeFExtractedExpress;

implementation

{$R *.dfm}

uses Data.SisGeF;

end.
