unit View.SisaGeFAttachDocuments;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Winapi.ShlObj, cxShellCommon, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  cxContainer, cxEdit, cxListView, cxShellListView,
  System.Actions, Vcl.ActnList, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdFTP, service.sistem, cxCustomListBox,
  cxCheckListBox, IdFTPList, Vcl.FileCtrl;

type
  Tview_SisgeFAttachDocuments = class(TForm)
    Panel1: TPanel;
    actionListAttach: TActionList;
    actionClose: TAction;
    cxButton1: TcxButton;
    actionAttach: TAction;
    OpenDialog: TOpenDialog;
    cxButton2: TcxButton;
    IdFTPDocs: TIdFTP;
    actionDownload: TAction;
    cxButton3: TcxButton;
    chkListFolder: TcxCheckListBox;
    actionDelete: TAction;
    cxButton4: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionCloseExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actionAttachExecute(Sender: TObject);
    procedure actionDownloadExecute(Sender: TObject);
    procedure actionDeleteExecute(Sender: TObject);
  private
    { Private declarations }
    FSistema: TSistem;
    FPasta: string;

    procedure StartForm;
    procedure Attach;
    procedure ListFolder;

    function CheckFolder(): boolean;
    function CreateFolder(): boolean;
    function DownloadFTP(): boolean;
    function DeleteFTP(): boolean;
  public
    { Public declarations }
    property Pasta: string read FPasta write FPasta;
  end;

var
  view_SisgeFAttachDocuments: Tview_SisgeFAttachDocuments;

implementation

{$R *.dfm}

uses Data.SisGeF, Global.Parametros;

procedure Tview_SisgeFAttachDocuments.actionAttachExecute(Sender: TObject);
begin
  Attach;
end;

procedure Tview_SisgeFAttachDocuments.actionCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_SisgeFAttachDocuments.actionDeleteExecute(Sender: TObject);
begin
  if Application.MessageBox('Confirma excluir o(s) arquivo(s) selecionado(s)?','Excluir', MB_YESNO + MB_ICONQUESTION) = mrNo then
    Exit;
  if DeleteFTP then
    ShowMessage('Exclusão Concluída.')
  else
    ShowMessage('Nenhuma exclusão foi realizada!')
end;

procedure Tview_SisgeFAttachDocuments.actionDownloadExecute(Sender: TObject);
begin
  if DownloadFTP then
    ShowMessage('Download Concluído.')
  else
    ShowMessage('Nenhum download foi realizado!')
end;

procedure Tview_SisgeFAttachDocuments.Attach;
var
  sOrigem: String;
  sDestino: String;
  sArquivo: String;
begin
  if OpenDialog.Execute then
  begin
    sArquivo := ExtractFileName(OpenDialog.FileName);
    sOrigem := OpenDialog.FileName;
    sDestino := FSistema.FTPFolder + FPasta + '/' + sArquivo;
    try
      try
        if not IdFTPDocs.Connected then
          IdFTPDocs.Connect;
        IdFTPDocs.Put(sOrigem, sDestino, False);
        ListFolder;;
      except
        on E: Exception do
          ShowMessage('Erro: ' + E.Message);
      end;
    finally
      if IdFTPDocs.Connected then
        IdFTPDocs.Disconnect;
    end;
  end;
end;

function Tview_SisgeFAttachDocuments.CheckFolder(): boolean;
var
  i: integer;
begin
  Result := False;
  try
    try
      if not IdFTPDocs.Connected then
        IdFTPDocs.Connect;
      FSistema.FTPFolder := IdFTPDocs.RetrieveCurrentDir + '/docs/';
      IdFTPDocs.ChangeDir(FSistema.FTPFolder);
      IdFTPDocs.List(nil);
      for i := 0 to IdFTPDocs.DirectoryListing.Count - 1 do
      begin
        // Verifica se o item é um diretório e ignora as pastas '.' e '..'
        if (IdFTPDocs.DirectoryListing.Items[i].ItemType = TIdDirItemType.
          ditDirectory) and (IdFTPDocs.DirectoryListing.Items[i].FileName <>
          '.') and (IdFTPDocs.DirectoryListing.Items[i].FileName <> '..') then
        begin
          if IdFTPDocs.DirectoryListing.Items[i].FileName = FPasta then
            Result := True;
        end;
      end;
    except
      Result := False;
      Exit;
    end;
  finally
    if IdFTPDocs.Connected then
      IdFTPDocs.Disconnect;
  end;
end;

function Tview_SisgeFAttachDocuments.CreateFolder: boolean;
begin
  Result := False;
  try
    try
      if not IdFTPDocs.Connected then
        IdFTPDocs.Connect;
      IdFTPDocs.ChangeDir(FSistema.FTPFolder);
      IdFTPDocs.MakeDir(FPasta);
      Result := True;
    except
      on E: Exception do
        ShowMessage('Erro ao criar pasta: ' + E.Message);
    end;
  finally
    if IdFTPDocs.Connected then
      IdFTPDocs.Disconnect;
  end;
end;

function Tview_SisgeFAttachDocuments.DeleteFTP: boolean;
var
  i, iInc : integer;
begin
  Result := False;
  iInc := 0;
  try
    if not IdFTPDocs.Connected then
      IdFTPDocs.Connect;
    IdFTPDocs.ChangeDir(FSistema.FTPFolder + FPasta);
    for i := 0 to chkListFolder.Items.Count - 1 do
    begin
      if chkListFolder.Items[i].Checked then
      begin
        IdFTPDocs.Delete(chkListFolder.Items[i].Text);
        Inc(iInc);
      end;
    end;
    ListFolder;
    if iInc > 0 then
      Result := True;
  finally
    if IdFTPDocs.Connected then
      IdFTPDocs.Disconnect;
  end;
end;

function Tview_SisgeFAttachDocuments.DownloadFTP: boolean;
var
  sPasta, sArquivoRemoto, sArquivoDestino: string;
  i, iInc: integer;
begin
  Result := False;
  try
    if not IdFTPDocs.Connected then
      IdFTPDocs.Connect;
    if not SelectDirectory('Selecione uma pasta', '', sPasta) then
      Exit;
    if chkListFolder.Count = 0 then
      Exit;
    IdFTPDocs.ChangeDir(FSistema.FTPFolder + FPasta);
    iInc := 0;
    for i := 0 to chkListFolder.Count - 1 do
    begin
      if chkListFolder.Items[i].Checked then
      begin
        sArquivoRemoto := chkListFolder.Items[i].Text;
        sArquivoDestino := sPasta + '/' + chkListFolder.Items[i].Text;
        IdFTPDocs.Get(sArquivoRemoto, sArquivoDestino, True, False);
        Inc(iInc)
      end;
    end;
    if iInc > 0 then
      Result := True;
  finally
    if IdFTPDocs.Connected then
      IdFTPDocs.Disconnect;
  end;
end;

procedure Tview_SisgeFAttachDocuments.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  IdFTPDocs.Free;
  Action := caFree;
  view_SisgeFAttachDocuments := nil;
end;

procedure Tview_SisgeFAttachDocuments.FormShow(Sender: TObject);
begin
  StartForm;
end;

procedure Tview_SisgeFAttachDocuments.ListFolder;
var
  i: integer;
begin
  if not IdFTPDocs.Connected then
    IdFTPDocs.Connect;
  IdFTPDocs.ChangeDir(FSistema.FTPFolder + FPasta);
  IdFTPDocs.List(nil);
  chkListFolder.Clear;
  for i := 0 to IdFTPDocs.DirectoryListing.Count - 1 do
  begin
    if (IdFTPDocs.DirectoryListing.Items[i].ItemType = TIdDirItemType.ditFile)
      and (IdFTPDocs.DirectoryListing.Items[i].FileName <> '.') and
      (IdFTPDocs.DirectoryListing.Items[i].FileName <> '..') then
    begin
      chkListFolder.AddItem(IdFTPDocs.DirectoryListing.Items[i].FileName);
    end;
  end;
end;

procedure Tview_SisgeFAttachDocuments.StartForm;
begin
  FSistema := TSistem.GetInstance;
  IdFTPDocs.Host := FSistema.FTPHost;
  IdFTPDocs.Username := FSistema.FTPUser;
  IdFTPDocs.Password := FSistema.FTPPassword;
  IdFTPDocs.Port := StrToIntDef(FSistema.FTPPort, 21);
  if not CheckFolder() then
  begin
    if not CreateFolder() then
    begin
      Exit;
    end;
  end;
  ListFolder;
end;

end.
