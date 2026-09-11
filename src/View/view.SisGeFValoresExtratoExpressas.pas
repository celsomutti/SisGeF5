unit view.SisGeFValoresExtratoExpressas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, cxClasses,
  dxLayoutContainer, dxLayoutControl, System.Actions, Vcl.ActnList, Vcl.Menus, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, dxLayoutcxEditAdapters,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, cxButtonEdit;

type
  TviewValoresExtratosExpressas = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    aclValores: TActionList;
    actNovo: TAction;
    actEditar: TAction;
    actExcluir: TAction;
    actVoltar: TAction;
    actExportar: TAction;
    actGravar: TAction;
    actEncerrar: TAction;
    actReabrir: TAction;
    actPesquisar: TAction;
    cxButton1: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    cxButton3: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    actSair: TAction;
    dxLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    tipoParametro: TcxComboBox;
    dxLayoutItem4: TdxLayoutItem;
    dataInicial: TcxDateEdit;
    dxLayoutItem5: TdxLayoutItem;
    dataFinal: TcxDateEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxButtonEdit1: TcxButtonEdit;
    dxLayoutItem7: TdxLayoutItem;
    nomeMotorista: TcxTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutSeparatorItem3: TdxLayoutSeparatorItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  viewValoresExtratosExpressas: TviewValoresExtratosExpressas;

implementation

{$R *.dfm}

uses Data.SisGeF;

end.
