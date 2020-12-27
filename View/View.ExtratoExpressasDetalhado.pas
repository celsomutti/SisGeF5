unit View.ExtratoExpressasDetalhado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.ExtratoExpressas, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxCurrencyEdit, cxTextEdit,
  cxCheckBox, cxMaskEdit, dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControlAdapters, System.Actions, Vcl.ActnList,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxDropDownEdit,
  Vcl.StdCtrls, cxButtons, dxStatusBar, cxLabel, dxLayoutControl, Control.Bases, Control.EntregadoresExpressas;

type
  Tview_ExtratoExpressasDetalhado = class(Tview_ExtratoExpressas)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  view_ExtratoExpressasDetalhado: Tview_ExtratoExpressasDetalhado;

implementation

{$R *.dfm}

uses Data.SisGeF;

end.
