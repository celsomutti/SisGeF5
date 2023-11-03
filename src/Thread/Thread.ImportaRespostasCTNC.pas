unit Thread.ImportaRespostasCTNC;

interface

uses
  System.Classes, Dialogs, Windows, Forms, SysUtils, Messages, Controls, System.DateUtils, System.StrUtils,   Generics.Collections,
  Control.Sistema, FireDAC.Comp.Client, Common.ENum, Control.PlanilhaRespostaCTNC, Control.ContatosBases, Control.Entregas,
  Model.PlanilhaRespostaCTNC, Control.CCEPDistribuidor;

type
  Thread_ImportaRespostasCTNC = class(TThread)
  private
    { Private declarations }
    bCancel: Boolean;
    sMensagem: String;
    FdPos: Double;
    iPos : Integer;
    iLinha : Integer;
    contatos : TContatosBasesControls;
    entregas: TEntregasControl;
    ccep: TCCEPDistribuidorControl;
    planilha : TPlanilhaRespostaCTNCControl;
    planilhas : TObjectList<TPlanilhaRespostaCTNC>;
    iAgente : Integer;
  protected
    procedure Execute; override;
    procedure IniciaProcesso;
    procedure AtualizaProgress;
    procedure TerminaProcesso;
    procedure AtualizaLOG;
  public
    FFile: String;
  end;

implementation

{ 
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);  

  and UpdateCaption could look like,

    procedure THRead_ImportaRespostasCTNC.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; 
    
    or 
    
    Synchronize( 
      procedure 
      begin
        Form1.Caption := 'Updated in thread via an anonymous method' 
      end
      )
    );
    
  where an anonymous method is passed.
  
  Similarly, the developer can call the Queue method with similar parameters as
  above, instead passing another TThread class as the first parameter, putting
  the calling thread in a queue with the other thread.
    
}

uses Common.Utils, Global.Parametros, View.EnvioRespostaCTNC, Data.SisGeF;

{ THRead_ImportaRespostasCTNC }

procedure Thread_ImportaRespostasCTNC.AtualizaLOG;
begin
  view_EnvioRespostaCTNC.memLOG.Lines.Add(sMensagem);
  view_EnvioRespostaCTNC.memLOG.Lines.Add('');
  iLinha := view_EnvioRespostaCTNC.memLOG.Lines.Count - 1;
  view_EnvioRespostaCTNC.memLOG.Refresh;
end;

procedure Thread_ImportaRespostasCTNC.AtualizaProgress;
begin
  view_EnvioRespostaCTNC.pbImportacao.Position := FdPos;
  view_EnvioRespostaCTNC.pbImportacao.Properties.Text := FormatFloat('0.00%',FdPos);
  view_EnvioRespostaCTNC.pbImportacao.Refresh;
  view_EnvioRespostaCTNC.memLOG.Lines[iLinha] := ' >>> ' + IntToStr(iPos) + ' registros processados';
  view_EnvioRespostaCTNC.memLOG.Refresh;
end;

procedure Thread_ImportaRespostasCTNC.Execute;
var
  Contador, I, LinhasTotal, iRet: Integer;
  Linha, campo, codigo, sMess, sData: String;
  d: Real;
  aParam: array of Variant;
  iTotal : Integer;
  sCCEP: String;
  sEMail: String;
  FDQuery : TFDQuery;
begin
  { Place thread code here }

  Synchronize(IniciaProcesso);

  contatos := TContatosBasesControls.Create;
  entregas := TEntregasControl.Create;
  planilha := TPlanilhaRespostaCTNCControl.Create;
  planilhas := TObjectList<TPlanilhaRespostaCTNC>.Create;
  ccep := TCCEPDistribuidorControl.Create;
try
    try

      // Carregando o arquivo ...

      planilhas := planilha.GetPlanilha(FFile);

      if planilhas.Count > 0 then
      begin
        iPos := 0;
        FdPos := 0;
        iTotal := planilhas.Count;
        if Data_Sisgef.mtbRespostas.Active then Data_Sisgef.mtbRespostas.Close;
        Data_Sisgef.mtbRespostas.Open;

        for I := 0 to planilhas.Count - 1 do
        begin
          if planilhas[i].Flag = '0' then
          begin
            Data_Sisgef.mtbRespostas.Insert;
            Data_Sisgef.mtbRespostasdom_flag.AsString := planilhas[i].Flag;
            Data_Sisgef.mtbRespostasdat_retorno.AsString := planilhas[i].Data;
            Data_Sisgef.mtbRespostasnum_nossonumero.AsString := planilhas[i].NN;
            Data_Sisgef.mtbRespostasdes_resposta.AsString := planilhas[i].Resposta;
            Data_Sisgef.mtbRespostascod_embarcador.AsString := planilhas[i].CodigoEmbarcador;
            Data_Sisgef.mtbRespostasnom_embarcador.AsString := planilhas[i].NomeEmbarcador;
            Data_Sisgef.mtbRespostasnum_pedido.AsString := planilhas[i].Pedido;
            Data_Sisgef.mtbRespostasnom_consumidor.AsString := planilhas[i].Consumidor;
            Data_Sisgef.mtbRespostasnum_telefone.AsString := planilhas[i].Telefone;
            Data_Sisgef.mtbRespostasdat_atribuicao.AsString := planilhas[i].Atribuicao;
            Data_Sisgef.mtbRespostasnom_entregador.AsString := planilhas[i].Entregador;
            Data_Sisgef.mtbRespostasdat_previsao.AsString := planilhas[i].Previsao;
            Data_Sisgef.mtbRespostasdat_leitura.AsString := planilhas[i].Leitura;
            Data_Sisgef.mtbRespostasnom_usuario.AsString := planilhas[i].Usuario;
            Data_Sisgef.mtbRespostasnum_sequencia.AsString := planilhas[i].Sequencia;
            Data_Sisgef.mtbRespostasnom_cidade.AsString := planilhas[i].Cidade;
            SetLength(aParam,2);
            aParam[0] := 'NN';
            aParam[1] := planilhas[i].NN;
            FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery();
            FDQuery := entregas.Localizar(aParam);
            Finalize(aParam);
            if not FDQuery.IsEmpty then
            begin
              sCCEP := Copy(FDQuery.FieldByName('num_cep').AsString,1,3);
            end
            else
            begin
              sCCEP := '';
            end;
            FDquery.Close;
            if not sCCEP.IsEmpty then
            begin
              SetLength(aParam,2);
              aParam[0] := 'CCEP';
              aParam[1] := sCCEP;
              FDQuery := ccep.Localizar(aParam);
              Finalize(aParam);
              sEmail := '';
              iAgente := 0;
              if not FDQuery.IsEmpty then
              begin
                iAgente := FDQuery.FieldByName('cod_agente').AsInteger;
              end;
              FDQuery.Close;
              if iAgente > 0 then
              begin
                SetLength(aParam,2);
                aParam[0] := 'AGENTE';
                aParam[1] := iAgente;
                FDQuery := contatos.Localizar(aParam);
                if not FDQuery.IsEmpty then FDQuery.First;
                while not FDQuery.Eof do
                begin
                  if FDQuery.FieldByName('des_email').AsString <> '' then
                  begin
                    sEMail := sEmail + FDQuery.FieldByName('des_email').AsString + ';';
                  end;
                  FDQuery.Next;
                end;
                FDQuery.Close;
              end;
            end;
            Data_Sisgef.mtbRespostasdes_email.AsString := sEmail;
            Data_Sisgef.mtbRespostas.Post;
          end;
          iPos := iPos + 1;
          FdPos := (iPos / iTotal) * 100;
          if not(Self.Terminated) then
          begin
            Synchronize(AtualizaProgress);
          end
          else
          begin
            Abort;
          end;
        end;
      end;
    Except
      on E: Exception do
        begin
          Application.MessageBox(PChar('Classe: ' + E.ClassName + chr(13) + 'Mensagem: ' + E.Message), 'Erro', MB_OK + MB_ICONERROR);
          bCancel := True;
        end;
    end;
  finally

  if bCancel then
    begin
      sMensagem := FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' importação cancelada ...';
      Synchronize(AtualizaLog);
      Application.MessageBox('Importação cancelada!', 'Importação de Entregas', MB_OK + MB_ICONWARNING);
    end
    else
    begin
      sMensagem := FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' importação concluída com sucesso';
      Synchronize(AtualizaLog);
      Application.MessageBox('Importação concluída com sucesso!', 'Importação de Respostas', MB_OK + MB_ICONINFORMATION);
    end;
    Synchronize(TerminaProcesso);
    entregas.Free;
    planilha.Free;
    planilhas.Free;
    contatos.Free;
    if FDQuery.Active then FDQuery.Close;
    FDQuery.Connection.Close;
    FDQuery.Free;
  end;

end;

procedure Thread_ImportaRespostasCTNC.IniciaProcesso;
begin
  bCancel := False;
  view_EnvioRespostaCTNC.actFechar.Enabled := False;
  view_EnvioRespostaCTNC.actImportar.Enabled := False;
  view_EnvioRespostaCTNC.actAbrir.Enabled := False;
  view_EnvioRespostaCTNC.dxLayoutItem7.Visible := True;
  sMensagem := FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' iniciando importação do arquivo ' + FFile + ' aguarde...';
  AtualizaLOG;
end;

procedure Thread_ImportaRespostasCTNC.TerminaProcesso;
begin
  view_EnvioRespostaCTNC.actFechar.Enabled := True;
  view_EnvioRespostaCTNC.actImportar.Enabled := True;
  view_EnvioRespostaCTNC.actAbrir.Enabled := True;
  view_EnvioRespostaCTNC.edtArquivo.Clear;
  view_EnvioRespostaCTNC.pbImportacao.Position := 0;
  view_EnvioRespostaCTNC.pbImportacao.Clear;
  view_EnvioRespostaCTNC.dxLayoutItem7.Visible := False;
  if not Data_Sisgef.mtbRespostas.IsEmpty then
  begin
    view_EnvioRespostaCTNC.actEnviar.Enabled := True;
  end
  else
  begin
    view_EnvioRespostaCTNC.actEnviar.Enabled := False;
  end;

end;

end.
