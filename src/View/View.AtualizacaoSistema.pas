unit View.AtualizacaoSistema;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, cxClasses,
  dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel, dxLayoutControlAdapters, Vcl.Menus, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdFTP, Vcl.StdCtrls, cxButtons, cxProgressBar, IdException, IniFiles, ShellAPI, WinInet,
  cxCustomListBox, cxListBox;

type
  Tview_AtualizacaoSistema = class(TForm)
    cxProgressBar1: TcxProgressBar;
    IdFTP1: TIdFTP;
    cxButton1: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxButton2: TcxButton;
    cxLabel3: TcxLabel;
    procedure IdFTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode; AWorkCountMax: Int64);
    procedure IdFTP1Work(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FnTamanhoTotal: integer;
  public
    { Public declarations }
    function ObterDiretorioDoExecutavel: string;
    function ConectarAoServidorFTP: boolean;
    function ObterNumeroVersaoLocal: integer;
    function ObterNumeroVersaoFTP: integer;
    function VerificarExisteConexaoComInternet: boolean;
    procedure BaixarAtualizacao;
    procedure DescompactarAtualizacao;
    procedure AtualizarNumeroVersao;
  end;

var
  view_AtualizacaoSistema: Tview_AtualizacaoSistema;
  bytesToTransfer: integer;

implementation

{$R *.dfm}

uses Data.SisGeF;

{ Tview_AtualizacaoSistema }

procedure Tview_AtualizacaoSistema.AtualizarNumeroVersao;
var
  oArquivoLocal, oArquivoFTP: TIniFile;
  sNumeroNovaVersao: string;
begin
  // abre os dois arquivos INI
  oArquivoFTP := TIniFile.Create(ObterDiretorioDoExecutavel + 'VersaoFTP.ini');
  oArquivoLocal := TIniFile.Create(ObterDiretorioDoExecutavel + 'VersaoLocal.ini');
  try
    // obtém o número da nova versão no arquivo "VersaoFTP.ini"...
    sNumeroNovaVersao := oArquivoFTP.ReadString('VersaoFTP', 'Numero', EmptyStr);

    // ... e grava este número no arquivo "VersaoLocal.ini"
    oArquivoLocal.WriteString('VersaoLocal', 'Numero', sNumeroNovaVersao);
  finally
    FreeAndNil(oArquivoFTP);
    FreeAndNil(oArquivoLocal);
  end;
end;

procedure Tview_AtualizacaoSistema.BaixarAtualizacao;
begin
  try
    // deleta o arquivo "Atualizacao.rar", caso exista,
    // evitando erro de arquivo já existente
    if FileExists(ObterDiretorioDoExecutavel + 'Atualizacao.rar') then
      DeleteFile(ObterDiretorioDoExecutavel + 'Atualizacao.rar');

    // obtém o tamanho da atualização e preenche a variável "FnTamanhoTotal"
    FnTamanhoTotal := IdFTP1.Size('Download/SisGeF5/Atualizacao.rar');

    // faz o download do arquivo "Atualizacao.rar"
    IdFTP1.Get('Download/SisGeF5/Atualizacao.rar',
      ObterDiretorioDoExecutavel + 'Atualizacao.rar', True, True);
  except
    On E:Exception do
    begin
      // ignora a exceção "Connection Closed Gracefully"
      if E is EIdConnClosedGracefully then
        Exit;

      ShowMessage('Erro ao baixar a atualização: ' + E.Message);

      // interrompe a atualização
      Abort;
    end;
  end;
end;

function Tview_AtualizacaoSistema.ConectarAoServidorFTP: boolean;
begin
// desconecta, caso tenha sido conectado anteriormente
  if IdFTP1.Connected then
    IdFTP1.Disconnect;
  try
    IdFTP1.Connect;
    result := True;
  except
    On E:Exception do
    begin
      ShowMessage('Erro ao acessar o servidor de atualização: ' + E.Message);
      result := False;
    end;
  end;
end;

procedure Tview_AtualizacaoSistema.cxButton1Click(Sender: TObject);
begin
  WINEXEC('SysUpdate.exe',SW_Show);
  Application.Terminate;
end;

procedure Tview_AtualizacaoSistema.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure Tview_AtualizacaoSistema.DescompactarAtualizacao;
var
  sNomeArquivoAtualizacao: string;
begin
  // deleta o backup anterior, ou melhor, da versão anterior,
  // evitando erro de arquivo já existente
  if FileExists(ObterDiretorioDoExecutavel + 'SisGeF5_Backup.exe') then
    DeleteFile(ObterDiretorioDoExecutavel + 'SisGeF5_Backup.exe');

  // Renomeia o executável atual (desatualizado) para "Sistema_Backup.exe"
  RenameFile(ObterDiretorioDoExecutavel + 'SisGeF5.exe',
    ObterDiretorioDoExecutavel + 'SisGeF5_Backup.exe');

  // armazena o nome do arquivo de atualização em uma variável
  sNomeArquivoAtualizacao := ObterDiretorioDoExecutavel + 'Atualizacao.rar';

  // executa a linha de comando do 7-Zip para descompactar o arquivo baixado
  ShellExecute(0, nil, '7z',  PWideChar(' x -aoa ' +
    sNomeArquivoAtualizacao + ' -o' + ObterDiretorioDoExecutavel), '', SW_SHOW);
end;

procedure Tview_AtualizacaoSistema.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  view_AtualizacaoSistema := nil;
end;

procedure Tview_AtualizacaoSistema.FormShow(Sender: TObject);
var
  nNumeroVersaoLocal, nNumeroVersaoFTP: integer;
  sMensagem: string;
begin
  if not VerificarExisteConexaoComInternet then
  begin
    Close;
    Exit;
  end;
  if not ConectarAoServidorFTP then
  begin
    Close;
    Exit;
  end;

  nNumeroVersaoLocal := ObterNumeroVersaoLocal;
  nNumeroVersaoFTP := ObterNumeroVersaoFTP;

  if nNumeroVersaoLocal = nNumeroVersaoFTP then
  begin
    Close;
    Exit;
  end;

  sMensagem := 'Existe uma atualização do sistema disponível. Clique em Atualizar para proceder com a atualização ou Sair para não atualizar.';
  cxLabel3.Caption := sMensagem;
end;

procedure Tview_AtualizacaoSistema.IdFTP1Work(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
var
  nTamanhoTotal, nTransmitidos, nPorcentagem: real;
begin
  if FnTamanhoTotal = 0 then
    Exit;

  Application.ProcessMessages;

  // obtém o tamanho total do arquivo em bytes
  nTamanhoTotal := FnTamanhoTotal div 1024;

  // obtém a quantidade de bytes já baixados
  nTransmitidos := AWorkCount div 1024;

  // calcula a porcentagem de download
  nPorcentagem := (nTransmitidos * 100) / nTamanhoTotal;

  // atualiza o componente TLabel com a porcentagem
   cxLabel1.Caption := Format('%s KB',
    [FormatFloat('##,###,##0', nTransmitidos)]);

  // atualiza a barra de preenchimento do componente TProgressBar
  //cxProgressBar1.Position := AWorkCount div 1024;
  cxProgressBar1.Position := nPorcentagem;
end;

procedure Tview_AtualizacaoSistema.IdFTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin

  cxProgressBar1.Properties.Max := FnTamanhoTotal div 1024;
end;

function Tview_AtualizacaoSistema.ObterDiretorioDoExecutavel: string;
begin
  result := ExtractFilePath(Application.ExeName);
end;

function Tview_AtualizacaoSistema.ObterNumeroVersaoFTP: integer;
var
  sNumeroVersao: string;
  oArquivoINI: TIniFile;
begin
  // deleta o arquivo "VersaoFTP.ini" do computador, caso exista,
  // evitando erro de arquivo já existente
  if FileExists(ObterDiretorioDoExecutavel + 'versionFTP.ini') then
    DeleteFile(ObterDiretorioDoExecutavel + 'versionFTP.ini');

  // baixa o arquivo "VersaoFTP.ini" para o computador
  IdFTP1.Get('Download/SisGeF5/versionFTP.ini', ObterDiretorioDoExecutavel + 'versionFTP.ini', True, True);

  // abre o arquivo "VersaoFTP.ini"
  oArquivoINI := TIniFile.Create(ObterDiretorioDoExecutavel + 'versionFTP.ini');
  try
    // lê o número da versão
    sNumeroVersao := oArquivoINI.ReadString('version', 'number', EmptyStr);

    // retira os pontos (exemplo: de "1.0.1" para "101")
    sNumeroVersao := StringReplace(sNumeroVersao, '.', EmptyStr, [rfReplaceAll]);

    // converte o número da versão para número
    result := StrToIntDef(sNumeroVersao, 0);
  finally
    FreeAndNil(oArquivoINI);
  end;
end;

function Tview_AtualizacaoSistema.ObterNumeroVersaoLocal: integer;
var
  sNumeroVersao: string;
  oArquivoINI: TIniFile;
begin
  // abre o arquivo "VersaoLocal.ini"
  oArquivoINI := TIniFile.Create(ObterDiretorioDoExecutavel + 'VersionLocal.ini');
  try
    // lê o número da versão
    sNumeroVersao := oArquivoINI.ReadString('version', 'number', EmptyStr);

    // retira os pontos (exemplo: de "1.0.0" para "100")
    sNumeroVersao := StringReplace(sNumeroVersao, '.', EmptyStr, [rfReplaceAll]);

    // converte o número da versão para número
    result := StrToIntDef(sNumeroVersao, 0);
  finally
    FreeAndNil(oArquivoINI);
  end;
end;

function Tview_AtualizacaoSistema.VerificarExisteConexaoComInternet: boolean;
var
  nFlags: Cardinal;
begin
  result := InternetGetConnectedState(@nFlags, 0);
end;

end.
