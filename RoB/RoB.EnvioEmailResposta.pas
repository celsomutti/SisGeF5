unit RoB.EnvioEmailResposta;

interface

uses System.Classes, Common.EMail, SysTem.SysUtils;

type
  TEnvioEmailRespostasRoB = class
  public
    function EnviaEmailsRespostas(): Boolean;
  end;

implementation

uses Data.SisGeF, Global.Parametros, View.EnvioRespostaCTNC;

{ TEnvioEmailRespostasRoB }

function TEnvioEmailRespostasRoB.EnviaEmailsRespostas: Boolean;
var
  iIndex : Integer;
  i: Integer;
  sTexto: String;
  lDestinatarios: TStringList;
  eMail : TEnviarEmail;
  sEmail: String;
  y: Integer;
begin
  try
    Result := False;
    lDestinatarios := TStringList.Create;
    lDestinatarios.StrictDelimiter := True;
    lDestinatarios.Delimiter := ';';
    eMail := TEnviarEmail.Create;
    eMail.Host := 'smtp.uhserver.com';
    eMail.DeEMail := 'sistema@rjsmart.com.br';
    eMail.DeNome := 'Gerenciador de Franquia';
    eMail.UsuarioEmail := 'sistema@rjsmart.com.br';
    eMail.SenhaEmail := 'a1b2c3';
    eMail.ParaEmail := '';
    eMail.Porta := 587;
    eMail.CCLista := Global.Parametros.pEmailUsuario;
    eMail.Anexos := view_EnvioRespostaCTNC.lAnexos.Items;
    if not Data_Sisgef.mtbRespostas.Active then Exit;
    if Data_Sisgef.mtbRespostas.IsEmpty then
    begin
      Data_Sisgef.mtbRespostas.Close;
      Exit;
    end;
    iIndex := 0;
    Data_Sisgef.mtbRespostas.First;
    view_EnvioRespostaCTNC.LOG('clear');
    view_EnvioRespostaCTNC.LOG('Enviando ' + Data_Sisgef.mtbRespostas.RecordCount.ToString + ' E-Mail(s)');
    i := 0;
    while not Data_Sisgef.mtbRespostas.Eof do
    begin
      Inc(i,1);
      eMail.AssuntoEmail := 'Resposta CTNC NN ' + Data_Sisgef.mtbRespostasnum_nossonumero.AsString;
      sTexto := 'Caro(s) ' + #13 + #13;
      sTexto := sTexto + 'Segue resposta do CTNC referente ao NN: ' +  Data_Sisgef.mtbRespostasnum_nossonumero.AsString + #13 + #13;
      sTexto := sTexto + 'Cliente: ' +  Data_Sisgef.mtbRespostasnom_embarcador.AsString + #13;
      sTexto := sTexto + 'Nome do Consumidor: ' +  Data_Sisgef.mtbRespostasnom_consumidor.AsString + #13;
      sTexto := sTexto + 'Telefone: ' +  Data_Sisgef.mtbRespostasnum_telefone.AsString + #13;
      sTexto := sTexto + #13;
      sTexto := sTexto + 'Data da resposta: ' +  Data_Sisgef.mtbRespostasdat_retorno.AsString + #13;
      sTexto := sTexto + 'Resposta: ' +  Data_Sisgef.mtbRespostasdes_resposta.AsString + #13;
      sTexto := sTexto + #13;
      sTexto := sTexto + #13;
      sTexto := sTexto + 'Franquia Transfolha Rio de Janeiro';

      //sPara := Data_Sisgef.mtbRespostasdes_email.AsString;

      lDestinatarios.DelimitedText := Data_Sisgef.mtbRespostasdes_email.AsString;

      for y := 0 to lDestinatarios.Count - 1 do
      begin
        eMail.ParaEmail := lDestinatarios[y];
        if not eMail.ParaEmail.IsEmpty then
        begin
          view_EnvioRespostaCTNC.LOG(i.ToString + ' - Enviando para o(s) endereço(s) ' + eMail.ParaEmail +
                                     ' referente ao NN ' + Data_Sisgef.mtbRespostasnum_nossonumero.AsString);
          eMail.CorpoEmail := sTexto;
          if eMail.EnviarEmail() then
          begin
            view_EnvioRespostaCTNC.LOG('Envio para ' + eMail.ParaEmail + ' referente ao NN ' +
                                        Data_Sisgef.mtbRespostasnum_nossonumero.AsString + ' OK!');
            view_EnvioRespostaCTNC.LOG(' ');
          end
          else
          begin
            view_EnvioRespostaCTNC.LOG('Erro ao enviar para ' + eMail.ParaEmail + ' referente ao NN ' +
                                        Data_Sisgef.mtbRespostasnum_nossonumero.AsString);
            view_EnvioRespostaCTNC.LOG(' ');
          end;
        end;
      end;
      Data_Sisgef.mtbRespostas.Next;
    end;
    Result := True;
  finally
    eMail.Free;
    if Data_Sisgef.mtbRespostas.Active then Data_Sisgef.mtbRespostas.Close;
  end;
end;

end.
