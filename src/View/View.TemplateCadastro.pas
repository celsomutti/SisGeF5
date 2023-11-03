unit View.TemplateCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, Common.ENum, Common.Utils, Global.Parametros;

type
  Tview_TemplateCadastro = class(TForm)
    layoutControlPadraoGroup_Root: TdxLayoutGroup;
    layoutControlPadrao: TdxLayoutControl;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  view_TemplateCadastro: Tview_TemplateCadastro;

implementation

{$R *.dfm}

uses Data.SisGeF;

end.
