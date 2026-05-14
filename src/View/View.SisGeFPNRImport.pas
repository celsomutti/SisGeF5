unit View.SisGeFPNRImport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit,
  cxMaskEdit, cxButtonEdit, System.Actions, Vcl.ActnList, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxProgressBar,
  cxMemo, Control.Acareacao, services.SisGeFSheetConfrontations;

type
  TviewPNRImport = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    bteArquivo: TcxButtonEdit;
    dxLayoutItem1: TdxLayoutItem;
    aclImport: TActionList;
    actProcurarArquivo: TAction;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    actImportarArquivo: TAction;
    cxButton1: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    progressBar: TcxProgressBar;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    memoLog: TcxMemo;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    acSair: TAction;
    cxButton2: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    openDialog: TOpenDialog;
    procedure acSairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FMensagem : String;
    function Import(FFileName: string): boolean;
  public
    { Public declarations }
  end;

var
  viewPNRImport: TviewPNRImport;

implementation

{$R *.dfm}

uses Data.SisGeF;

procedure TviewPNRImport.acSairExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TviewPNRImport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  viewPNRImport := nil;
end;

function TviewPNRImport.Import(FFileName: string): boolean;
var
  acareacao : TAcareacaoControl;
  FPlanilha : TSheetConfrontations;
  aParam: array of Variant;
  i, iTotal, iCurrent: integer;
  FProgress : integer;

begin
  Result := False;
  acareacao := TAcareacaoControl.Create;
  FPlanilha := TSheetConfrontations.Create;
  iTotal := 0;
  iCurrent := 0;
  FProgress := 0;
  iTotal := FPlanilha.Planilha.Count;
  memoLog.Clear;
  try
    FMensagem := '>> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' - Iniciando a importação do arquivo ' + FFileName +
                '. Aguarde...';
    memoLog.Lines.Add(FMensagem);
    for i := 0 to Pred(iTotal) do
    begin
      iCurrent := i;
      Sleep(1000);
      FProgress := Trunc((iTotal / iCurrent) * 100);
      progressBar.Position := FProgress;
      Application.ProcessMessages;
    end;
    Result := True;
  finally
    FPlanilha.Free;
    acareacao.Free;
  end;
end;


end.
