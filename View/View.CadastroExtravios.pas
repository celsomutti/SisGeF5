unit View.CadastroExtravios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Control.ExtraviosMultas, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit, cxLabel, cxGroupBox, cxMaskEdit, cxDropDownEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, cxButtonEdit, cxCurrencyEdit, Vcl.StdCtrls, cxClasses, dxGaugeCustomScale,
  dxGaugeQuantitativeScale, dxGaugeCircularScale, dxGaugeControl, Vcl.ExtCtrls, System.Actions, Vcl.ActnList, Vcl.Menus, cxButtons,
  cxProgressBar;

type
  Tview_CadastroExtravios = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cod_extravio: TcxTextEdit;
    cxLabel2: TcxLabel;
    cod_tipo: TcxComboBox;
    cxLabel3: TcxLabel;
    des_extravio: TcxComboBox;
    cxLabel4: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxLabel5: TcxLabel;
    cod_entregador: TcxButtonEdit;
    nom_entregador: TcxTextEdit;
    cxGroupBox2: TcxGroupBox;
    cxLabel6: TcxLabel;
    val_produto: TcxCurrencyEdit;
    cxLabel7: TcxLabel;
    val_multa: TcxCurrencyEdit;
    cxLabel8: TcxLabel;
    val_verba: TcxCurrencyEdit;
    cxLabel9: TcxLabel;
    val_total: TcxCurrencyEdit;
    cxGroupBox3: TcxGroupBox;
    cxLabel10: TcxLabel;
    des_envio_correspondencia: TcxComboBox;
    cxLabel11: TcxLabel;
    des_retorno_correspondencia: TcxComboBox;
    des_observacoes: TMemo;
    cxLabel12: TcxLabel;
    cxGroupBox4: TcxGroupBox;
    des_situacao: TcxLabel;
    dom_restricao: TcxLabel;
    cxGroupBox5: TcxGroupBox;
    cxLabel14: TcxLabel;
    des_produto: TcxTextEdit;
    cxLabel15: TcxLabel;
    seq_acareacao: TcxTextEdit;
    num_extrato: TcxTextEdit;
    cxLabel16: TcxLabel;
    panelFooter: TPanel;
    actionListExtravios: TActionList;
    actionFinalizar: TAction;
    actionGravar: TAction;
    actionCancelar: TAction;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    val_percentual_pago: TcxProgressBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  view_CadastroExtravios: Tview_CadastroExtravios;

implementation

{$R *.dfm}

uses Data.SisGeF;

end.
