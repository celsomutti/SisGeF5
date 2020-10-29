unit Common.EMail;

interface

uses IdIOHandler, SysUtils, Classes, Dialogs, IdSMTP, IdSSLOpenSSL, IdMessage, IdText, IdAttachmentFile,
     IdExplicitTLSClientServerBase;

type
  TEnviarEmail = class(TObject)
  private
    FDeEMail: String;
    FUsuarioEmail: String;
    FAssuntoEmail: String;
    FCorpoEmail: String;
    FAnexos: TStrings;
    FParaEmail: String;
    FAutoResposta: Boolean;
    FAnexoMIME: Integer;
    FCCLista: String;
    FDeNome: String;
    FSenhaEmail: String;
    FHost: String;
    FPorta: Integer;
    FCorpoMIME: Integer;
    FBCCLista: String;

  protected
    { protected declarations }
  public
    { public declarations }
    property Host: String read FHost write FHost;
    property Porta: Integer read FPorta write FPorta;
    property UsuarioEmail: String read FUsuarioEmail write FUsuarioEmail;
    property SenhaEmail: String read FSenhaEmail write FSenhaEmail;
    property DeNome: String read FDeNome write FDeNome;
    property DeEMail: String read FDeEMail write FDeEMail;
    property ParaEmail: String read FParaEmail write FParaEmail;
    property AssuntoEmail: String read FAssuntoEmail write FAssuntoEmail;
    property CorpoEmail: String read FCorpoEmail write FCorpoEmail;
    property CCLista: String read FCCLista write FCCLista;
    property BCCLista: String read FBCCLista write FBCCLista;
    property CorpoMIME: Integer read FCorpoMIME write FCorpoMIME;
    property AnexoMIME: Integer read FAnexoMIME write FAnexoMIME;
    property AutoResposta: Boolean read FAutoResposta write FAutoResposta;
    property Anexos: TStrings read FAnexos write FAnexos;
    function EnviarEmail(): Boolean;
    function EmailTipoMIME(iTipoMIME: Integer): String;
  published
    { published declarations }
  end;


implementation

{ TEnviarEmail }

uses Common.Utils;

// ———————————————————-
// Função que Retorna o Tipo MIME para Cabeçalho do Email:
// ———————————————————-

function TEnviarEmail.EmailTipoMIME(iTipoMIME: Integer): String;
begin
  case iTipoMIME of
    0:
      result := 'text/plain';
    1:
      result := 'text/html';
    2:
      result := 'text/richtext';
    3:
      result := 'text/x-aiff';
    4:
      result := 'audio/basic';
    5:
      result := 'audio/wav';
    6:
      result := 'image/gif';
    7:
      result := 'image/jpeg';
    8:
      result := 'image/pjpeg';
    9:
      result := 'image/tiff';
    10:
      result := 'image/x-png';
    11:
      result := 'image/x-xbitmap';
    12:
      result := 'image/bmp';
    13:
      result := 'image/x-jg';
    14:
      result := 'image/x-emf';
    15:
      result := 'image/x-wmf';
    16:
      result := 'video/avi';
    17:
      result := 'video/mpeg';
    18:
      result := 'application/postscript';
    19:
      result := 'application/base64';
    20:
      result := 'application/macbinhex40';
    21:
      result := 'application/pdf'; // arquivos PDF !!!
    22:
      result := 'application/x-compressed';
    23:
      result := 'application/x-zip-compressed';
    24:
      result := 'application/x-gzip-compressed';
    25:
      result := 'application/java';
    26:
      result := 'application/x-msdownload';
    27:
      result := 'application/octet-stream'; // arquivos .dat !!!!
    28:
      result := 'multipart/mixed';
    29:
      result := 'multipart/relative';
    30:
      result := 'multipart/digest';
    31:
      result := 'multipart/alternative';
    32:
      result := 'multipart/related';
    33:
      result := 'multipart/report';
    34:
      result := 'multipart/signed';
    35:
      result := 'multipart/encrypted';
  end;
end;

function TEnviarEmail.EnviarEmail: Boolean;
var
  IdSSLIOHandlerSocket: TIdSSLIOHandlerSocketOpenSSL;
  IdSMTP: TIdSMTP;
  IdMessage: TIdMessage;
  IdText: TIdText;
  i: Integer;
begin
  // instanciação dos objetos

  IdSMTP := TIdSMTP.Create();
  IdMessage := TIdMessage.Create();
  IdSSLIOHandlerSocket := TIdSSLIOHandlerSocketOpenSSL.Create();
  try
    Result := False;
    if FPorta <> 587 then
    begin
      // Configuração do protocolo SSL (TIdSSLIOHandlerSocketOpenSSL)
      IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv2;
      IdSSLIOHandlerSocket.SSLOptions.Mode := sslmClient;

      // Configuração do servidor SMTP (TIdSMTP)
      IdSMTP.IOHandler := IdSSLIOHandlerSocket;
      IdSMTP.UseTLS := utUseImplicitTLS;
    end;
    IdSMTP.AuthType := satDefault;
    IdSMTP.Port := FPorta;
    IdSMTP.Host := FHost;
    IdSMTP.Username := FUsuarioEmail;
    IdSMTP.Password := FSenhaEmail;

    // Configuração da mensagem (TIdMessage)
    IdMessage.From.Address := FDeEMail;
    IdMessage.CCList.EMailAddresses := FCCLista;
    IdMessage.From.Name := FDeNome;
    IdMessage.ReplyTo.EMailAddresses := IdMessage.From.Address;
    IdMessage.Recipients.Add.Text := FParaEmail;
    IdMessage.Subject := FAssuntoEmail;
    IdMessage.Encoding := meMIME;

    // Configuração do corpo do email (TIdText)
    IdText := TIdText.Create(IdMessage.MessageParts);
    IdText.Body.Add(FCorpoEmail);
    IdText.ContentType := 'text/plain; charset=iso-8859-1';

    // Opcional - Anexo da mensagem (TIdAttachmentFile)
    for i := 0 to Pred(FAnexos.Count) do
    begin
      if FileExists(FAnexos.Strings[i]) then
      begin
        try
          TIdAttachmentFile.Create(IdMessage.MessageParts, FAnexos.Strings[i]);
        except
        end;
      end;
    end;

    // Conexão e autenticação
    try
      IdSMTP.Connect;
      IdSMTP.Authenticate;
      except
      on E:Exception do
      begin
        MessageDlg('Erro na conexão ou autenticação: ' +
        E.Message, mtWarning, [mbOK], 0);
        Exit;
      end;
    end;

    // Envio da mensagem
    try
      IdSMTP.Send(IdMessage);
      Result := True;
    except
    On E:Exception do
    begin
      MessageDlg('Erro ao enviar a mensagem: ' +
      E.Message, mtWarning, [mbOK], 0);
    end;
end;
finally
  // desconecta do servidor
  IdSMTP.Disconnect;
  // liberação da DLL
  UnLoadOpenSSLLibrary;
  // liberação dos objetos da memória
  FreeAndNil(IdMessage);
  FreeAndNil(IdSSLIOHandlerSocket);
  FreeAndNil(IdSMTP);
end;
end;


end.
