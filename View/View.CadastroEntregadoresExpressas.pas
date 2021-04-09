unit View.CadastroEntregadoresExpressas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxCheckBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  Tview_CadastroEntregadoresExpressas = class(TForm)
    layoutControlPadraoGroup_Root: TdxLayoutGroup;
    layoutControlPadrao: TdxLayoutControl;
    maskEditID: TcxMaskEdit;
    layoutItemID: TdxLayoutItem;
    maskEditCodigo: TcxMaskEdit;
    layoutItemCodigo: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    textEditNomeEntregador: TcxTextEdit;
    layoutItemNomeEntregador: TdxLayoutItem;
    textEditNomePessoa: TcxTextEdit;
    layoutItemNomePessoa: TdxLayoutItem;
    buttonEditCodigoPessoa: TcxButtonEdit;
    layoutItemCodigoPessoa: TdxLayoutItem;
    buttonEditCodigoBase: TcxButtonEdit;
    layoutItemCodigoBase: TdxLayoutItem;
    textEditNomeBase: TcxTextEdit;
    layoutItemNomeBase: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    textEditCodigoERP: TcxTextEdit;
    layoutItemCodigoERP: TdxLayoutItem;
    checkBoxAtivo: TcxCheckBox;
    layoutItemAtivo: TdxLayoutItem;
    lookupComboBoxCliente: TcxLookupComboBox;
    layoutItemClientes: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure StartForm;
  end;

var
  view_CadastroEntregadoresExpressas: Tview_CadastroEntregadoresExpressas;

implementation

{$R *.dfm}

uses Data.SisGeF;

{ Tview_CadastroEntregadoresExpressas }

procedure Tview_CadastroEntregadoresExpressas.StartForm;
begin
  // função

end;

end.
