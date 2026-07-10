unit view.sisgefCadastroCandidatos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit,
  cxMaskEdit, cxButtonEdit, System.Actions, Vcl.ActnList, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TviewCadastroCandidatos = class(TForm)
    lrgRoot: TdxLayoutGroup;
    lcRoot: TdxLayoutControl;
    lgpFooter: TdxLayoutGroup;
    lgpContainer: TdxLayoutGroup;
    lgpPesquisa: TdxLayoutGroup;
    lgpCadastro: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    parametro: TcxButtonEdit;
    dxLayoutItem1: TdxLayoutItem;
    aclCadastro: TActionList;
    actCadastroPesquisar: TAction;
    actCadastroLimpar: TAction;
    cxButton1: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    cxButton2: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    actCadastroSair: TAction;
    procedure actCadastroLimparExecute(Sender: TObject);
    procedure actCadastroSairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  viewCadastroCandidatos: TviewCadastroCandidatos;

implementation

{$R *.dfm}

uses Data.SisGeF;

procedure TviewCadastroCandidatos.actCadastroLimparExecute(Sender: TObject);
begin
  parametro.Clear;
  parametro.SetFocus;
end;

procedure TviewCadastroCandidatos.actCadastroSairExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TviewCadastroCandidatos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  viewCadastroCandidatos := Nil;
end;

end.
