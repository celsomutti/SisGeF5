unit Thread._ImportarBaixasTFO;

interface

uses
  System.Classes, Common.ENum, Control.EntregadoresExpressas, Control.Entregas, Dialogs, Windows, Forms, SysUtils, Messages,
  Controls, FireDAC.Comp.Client, Control.Sistema, System.DateUtils, Control.Bases, Control.VerbasExpressas;

type
  Thread_ImportarBaixasTFO = class(TThread)
  private
    { Private declarations }
    entregas: TEntregasControl;
    entregadores : TEntregadoresExpressasControl;
    bases: TBasesControl;
    verbas : TVerbasExpressasControl;
    sMensagem: String;
    FdPos: Double;
    bCancel : Boolean;
    dPos: Double;
    iPos : Integer;
    iLinha : Integer;
    iTotal : Integer;
  protected
    procedure Execute; override;
    procedure AtualizaLog;
    procedure AtualizaProgress;
    procedure TerminaProcesso;
    procedure IniciaProcesso;
  public
    FFile: String;
  end;

implementation

{ 
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);  

  and UpdateCaption could look like,

    procedure Thread_ImportarBaixasTFO.UpdateCaption;
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

uses Data.SisGeF, View.ImportarBaixasTFO, Common.Utils, Global.Parametros;

{ Thread_ImportarBaixasTFO }

procedure Thread_ImportarBaixasTFO.AtualizaLog;
begin
  view_ImportarBaixasTFO.memLOG.Lines.Add(sMensagem);
  view_ImportarBaixasTFO.memLOG.Lines.Add('');
  iLinha := view_ImportarBaixasTFO.memLOG.Lines.Count - 1;
  view_ImportarBaixasTFO.memLOG.Refresh;
end;

procedure Thread_ImportarBaixasTFO.AtualizaProgress;
begin
  view_ImportarBaixasTFO.pbImportacao.Position := FdPos;
  view_ImportarBaixasTFO.pbImportacao.Properties.Text := FormatFloat('0.00%',FdPos);
  view_ImportarBaixasTFO.pbImportacao.Refresh;
  view_ImportarBaixasTFO.memLOG.Lines[iLinha] := ' >>> ' + IntToStr(iPos) + ' registros processados';
  view_ImportarBaixasTFO.memLOG.Refresh;
  if not(view_ImportarBaixasTFO.actCancelar.Visible) then
  begin
    view_ImportarBaixasTFO.actCancelar.Visible := True;
    view_ImportarBaixasTFO.actFechar.Enabled := False;
    view_ImportarBaixasTFO.actImportar.Enabled := False;
  end;
end;

procedure Thread_ImportarBaixasTFO.Execute;
var
  aParam: array of Variant;
  FDQuery : TFDQuery;
  FDQuery1 : TFDQuery;
  FDVerba : TFDQUery;
  iAgente : Integer;
  iEntregador : Integer;
  dVerba: Double;
  dVerbaTabela: Double;
  iGrupo: Integer;
  sCEP : String;
  sNome : String;
begin
  { Place thread code here }
  try
    try

      entregas := TEntregasControl.Create;
      entregadores := TEntregadoresExpressasControl.Create;
      bases := TBasesControl.Create;
      verbas := TVerbasExpressasControl.Create;
      Data_Sisgef.FDBDataSetWriter.DataSet := Data_Sisgef.mtbBaixasTFO;
      Data_Sisgef.FDBTextReader.FileName := FFile;
      Data_Sisgef.FDBTextReader.DataDef.WithFieldNames := True;
      Data_Sisgef.FDBatchMove.GuessFormat;
      Data_SisGeF.FDBatchMove.Mappings.AddAll;
      Data_Sisgef.FDBatchMove.Execute;
      iAgente := 1;
      iEntregador := 781;
      if Data_Sisgef.mtbBaixasTFO.Active then
      begin
        if Data_Sisgef.mtbBaixasTFO.Fields.Count <> 19 then
        begin
          Application.MessageBox('Arquivo informado não é de Planilha de Baixas da TFO !', 'Atenção', MB_OK + MB_ICONASTERISK);
          Abort;
        end;
        iTotal := Data_Sisgef.mtbBaixasTFO.RecordCount;
        Synchronize(IniciaProcesso);
        Data_Sisgef.mtbBaixasTFO.First;
        iPos := 0;
        dPos := 0;
        dVerba := 0;
        dVerbaTabela := 0;
        sCEP := '';
        sNome := '';
        while not Data_Sisgef.mtbBaixasTFO.Eof do
        begin
          iGrupo := 1;
          if Common.Utils.TUtils.ENumero(Data_Sisgef.mtbBaixasTFO.Fields[0].AsString) then
          begin
            FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
            SetLength(aParam,2);
            aParam[0] := 'NN';
            aParam[1] := IntToStr(Data_Sisgef.mtbBaixasTFO.Fields[0].AsInteger);
            FDQuery := entregas.Localizar(aParam);
            Finalize(aParam);
            if not FDQuery.IsEmpty then
            begin
              dVerba := 0;
              FDQuery1 := TSistemaControl.GetInstance.Conexao.ReturnQuery;
              SetLength(aParam,2);
              aParam[0] := 'ENTREGADOR';
              aParam[1] := Data_Sisgef.mtbBaixasTFO.Fields[6].AsString;
              FDQuery1 := entregadores.Localizar(aParam);
              Finalize(aParam);
              if not FDQuery1.IsEmpty then
              begin
                iAgente := FDQuery1.FieldByName('COD_AGENTE').AsInteger;
                iEntregador := FDQuery1.FieldByName('COD_ENTREGADOR').AsInteger;
                dVerba := FDQuery1.FieldByName('VAL_VERBA').AsFloat;
                sNome := FDQuery1.FieldByName('NOM_FANTASIA').AsString;
                if Pos('PESADO',sNome) > 0 then iGrupo := 2;
              end
              else
              begin
                sMensagem := 'Entregador ' + Data_Sisgef.mtbBaixasTFO.Fields[7].AsString + '-' +
                             Data_Sisgef.mtbBaixasTFO.Fields[8].AsString + ', do pedido ' +
                             Data_Sisgef.mtbBaixasTFO.Fields[0].AsString + ', não cadastrado no banco de dados!';
                Synchronize(AtualizaLog);
              end;
              FDQuery1.Free;
              if dVerba = 0 then
              begin
                FDQuery1 := TSistemaControl.GetInstance.Conexao.ReturnQuery;
                SetLength(aParam,2);
                aParam[0] := 'CODIGO';
                aParam[1] := iAgente;
                FDQuery1 := bases.Localizar(aParam);
                Finalize(aParam);
                if not FDQuery1.IsEmpty then
                begin
                  dVerba := FDQuery1.FieldByName('VAL_VERBA').AsFloat;
                end;
                FDQuery1.Free;
              end;
              if dVerba = 0 then
              begin
                if iGrupo = 1 then
                begin
                  SetLength(aParam,7);
                  aParam[0] := 'CEPPESO';
                  aParam[1] := 5;
                  aParam[2] := FDQuery.FieldByName('COD_CLIENTE_EMPRESA').AsInteger;
                  aParam[3] := iGrupo;
                  aParam[4] := StrToDateTime(Data_Sisgef.mtbBaixasTFO.Fields[11].AsString);
                  aParam[5] := FDQuery.FieldByName('NUM_CEP').Value;
                  aParam[6] := Trunc(1000 * StrToFloatDef(Data_Sisgef.mtbBaixasTFO.Fields[17].AsString,0));
                end
                else
                begin
                  SetLength(aParam,6);
                  aParam[0] := 'FIXACEP';
                  aParam[1] := 2;
                  aParam[2] := FDQuery.FieldByName('COD_CLIENTE_EMPRESA').AsInteger;
                  aParam[3] := iGrupo;
                  aParam[4] := StrToDateTime(Data_Sisgef.mtbBaixasTFO.Fields[11].AsString);
                  aParam[5] := FDQuery.FieldByName('NUM_CEP').Value;
                end;
                FDVerba := TSistemaControl.GetInstance.Conexao.ReturnQuery;
                FDVerba := verbas.Localizar(aParam);
                Finalize(aParam);
                if not FDVerba.IsEmpty then
                begin
                  FDVerba.First;
                  dVerbaTabela := FDVerba.FieldByName('VAL_VERBA').AsFloat;
                end;
                FDVerba.Free;
                if dVerbaTabela > 0 then dVerba := dVerbaTabela;
              end;
              if dVerba = 0 then
              begin
                sMensagem := 'Verba não encontrada para o entregador ' + sNome  + ', pedido  ' +
                             Data_Sisgef.mtbBaixasTFO.Fields[0].AsString +  ' !';
                Synchronize(AtualizaLog);
              end;
              entregas.Entregas.NN := FDQuery.FieldByName('NUM_NOSSONUMERO').AsString;
              entregas.Entregas.Distribuidor:= iAgente;
              entregas.Entregas.Entregador:= iEntregador;
              entregas.Entregas.Cliente:= FDQuery.FieldByName('COD_CLIENTE').AsInteger;
              entregas.Entregas.NF:= FDQuery.FieldByName('NUM_NF').Value;
              entregas.Entregas.Consumidor:= FDQuery.FieldByName('NOM_CONSUMIDOR').Value;
              entregas.Entregas.Endereco:= FDQuery.FieldByName('DES_ENDERECO').Value;
              entregas.Entregas.Complemento:= FDQuery.FieldByName('DES_COMPLEMENTO').Value;
              entregas.Entregas.Bairro:= FDQuery.FieldByName('DES_BAIRRO').Value;
              entregas.Entregas.Cidade:= FDQuery.FieldByName('NOM_CIDADE').Value;
              entregas.Entregas.CEP:= FDQuery.FieldByName('NUM_CEP').Value;
              entregas.Entregas.Telefone:= FDQuery.FieldByName('NUM_TELEFONE').Value;
              entregas.Entregas.Expedicao:= FDQuery.FieldByName('DAT_EXPEDICAO').Value;
              entregas.Entregas.Previsao:= FDQuery.FieldByName('DAT_PREV_DISTRIBUICAO').Value;
              entregas.Entregas.Volumes:= FDQuery.FieldByName('QTD_VOLUMES').Value;
              entregas.Entregas.Atribuicao:= FDQuery.FieldByName('DAT_ATRIBUICAO').Value;
              entregas.Entregas.Baixa:= StrToDateTime(Data_Sisgef.mtbBaixasTFO.Fields[11].AsString);
              entregas.Entregas.Baixado:= 'S';
              entregas.Entregas.Pagamento:= FDQuery.FieldByName('DAT_PAGAMENTO').Value;
              entregas.Entregas.Pago:= FDQuery.FieldByName('DOM_PAGO').Value;
              entregas.Entregas.Fechado:= FDQuery.FieldByName('DOM_FECHADO').Value;
              entregas.Entregas.Status:= FDQuery.FieldByName('COD_STATUS').Value;
              entregas.Entregas.Entrega:= StrToDateTime(Data_Sisgef.mtbBaixasTFO.Fields[1].AsString);
              entregas.Entregas.PesoReal:= FDQuery.FieldByName('QTD_PESO_REAL').Value;
              entregas.Entregas.PesoFranquia:= FDQuery.FieldByName('QTD_PESO_FRANQUIA').Value;
              entregas.Entregas.VerbaFranquia:= FDQuery.FieldByName('VAL_VERBA_FRANQUIA').Value;
              entregas.Entregas.Advalorem:= FDQuery.FieldByName('VAL_ADVALOREM').Value;
              entregas.Entregas.PagoFranquia:= FDQuery.FieldByName('VAL_PAGO_FRANQUIA').Value;
              entregas.Entregas.VerbaEntregador := dVerba;
              entregas.Entregas.Extrato:= FDQuery.FieldByName('NUM_EXTRATO').Value;
              if entregas.Entregas.Previsao < entregas.Entregas.Entrega then
              begin
                entregas.Entregas.Atraso := DaysBetween(entregas.Entregas.Previsao,entregas.Entregas.Entrega)
              end
              else
              begin
                entregas.Entregas.Atraso := 0;
              end;
              entregas.Entregas.VolumesExtra:= FDQuery.FieldByName('QTD_VOLUMES_EXTRA').Value;
              entregas.Entregas.ValorVolumes:= FDQuery.FieldByName('VAL_VOLUMES_EXTRA').Value;
              entregas.Entregas.PesoCobrado:= StrToFloatDef(Data_Sisgef.mtbBaixasTFO.Fields[17].AsString,0);
              entregas.Entregas.TipoPeso:= Data_Sisgef.mtbBaixasTFO.Fields[18].AsString;
              entregas.Entregas.Recebimento:= FDQuery.FieldByName('DAT_RECEBIDO').Value;
              entregas.Entregas.Recebido:= FDQuery.FieldByName('DOM_RECEBIDO').Value;
              entregas.Entregas.CTRC:= FDQuery.FieldByName('NUM_CTRC').Value;
              entregas.Entregas.Manifesto:= FDQuery.FieldByName('NUM_MANIFESTO').Value;
              entregas.Entregas.Rastreio:= FDQuery.FieldByName('DES_RASTREIO').Value;
              entregas.Entregas.Rastreio := entregas.Entregas.Rastreio + #13 +
                                            '> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' baixado por importação por ' +
                                            Global.Parametros.pUser_Name;
              entregas.Entregas.Lote:= FDQuery.FieldByName('NUM_LOTE_REMESSA').Value;
              entregas.Entregas.Retorno:= FDQuery.FieldByName('DES_RETORNO').Value;
              entregas.Entregas.Credito:= FDQuery.FieldByName('DAT_CREDITO').Value;
              entregas.Entregas.Creditado:= FDQuery.FieldByName('DOM_CREDITO').Value;
              entregas.Entregas.Container:= FDQuery.FieldByName('NUM_CONTAINER').Value;
              entregas.Entregas.ValorProduto:= FDQuery.FieldByName('VAL_PRODUTO').Value;
              entregas.Entregas.Altura:= FDQuery.FieldByName('QTD_ALTURA').Value;
              entregas.Entregas.Largura:= FDQuery.FieldByName('QTD_LARGURA').Value;
              entregas.Entregas.Comprimento:= FDQuery.FieldByName('QTD_COMPRIMENTO').Value;
              entregas.Entregas.CodigoFeedback:= FDQuery.FieldByName('COD_FEEDBACK').Value;
              entregas.Entregas.DataFeedback:= FDQuery.FieldByName('DAT_FEEDBACK').Value;
              entregas.Entregas.Conferido:= FDQuery.FieldByName('DOM_CONFERIDO').Value;
              entregas.Entregas.Pedido:= Data_Sisgef.mtbBaixasTFO.Fields[13].AsString;
              entregas.Entregas.CodCliente:= FDQuery.FieldByName('COD_CLIENTE_EMPRESA').AsInteger;
              if Copy(Data_Sisgef.mtbBaixasTFO.Fields[10].AsString, 1, 7) = 'FRANQUE' then
              begin
                entregas.Entregas.CodigoFeedback := 101;
                entregas.Entregas.DataFeedback := StrToDateTimeDef(Data_Sisgef.mtbBaixasTFO.Fields[11].AsString,0);
              end;
              if entregas.Entregas.PesoCobrado > 25 then
              begin
                entregas.Entregas.VerbaEntregador := 15;
              end;
              if entregas.Entregas.Fechado <> 'S' then
              begin
                entregas.Entregas.Acao := tacAlterar;
                if not entregas.Gravar then
                begin
                  sMensagem := 'Erro ao baixar o pedido ' + Data_Sisgef.mtbBaixasTFO.Fields[0].AsString +  ' !';
                  Synchronize(AtualizaLog);
                end;
              end;
            end
            else
            begin
              sMensagem := 'Pedido ' + Data_Sisgef.mtbBaixasTFO.Fields[0].AsString + ', não encontrado no banco de dados!';
              Synchronize(AtualizaLog);
            end;
            FDQuery.Free;
          end;
          Data_Sisgef.mtbBaixasTFO.Next;
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
          Application.MessageBox(PChar('Classe: ' + E.ClassName + chr(13) +'Mensagem: ' + E.Message),'Erro', MB_OK + MB_ICONERROR);
          bCancel := True;
        end;
    end;
  finally
    if bCancel then
    begin
      sMensagem := FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) +' importação cancelada ...';
      Synchronize(AtualizaLog);
      Application.MessageBox('Importação cancelada!','Importação de Baixas', MB_OK + MB_ICONWARNING);
    end
    else
    begin
      sMensagem := FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) +' importação concluída com sucesso';
      Synchronize(AtualizaLog);
      Application.MessageBox('Importação concluída com sucesso!','Importação de baixas', MB_OK + MB_ICONINFORMATION);
    end;
    Synchronize(TerminaProcesso);
    entregas.Free;
    entregadores.Free;
    Data_Sisgef.FDBatchMove.Mappings.Clear;
    Data_Sisgef.FDBTextReader.DataDef.Fields.Clear;
    Data_Sisgef.mtbBaixasTFO.Edit;
    Data_Sisgef.mtbBaixasTFO.ClearFields;
    Data_Sisgef.mtbBaixasTFO.Close;
  end;
end;

procedure Thread_ImportarBaixasTFO.IniciaProcesso;
begin
  bCancel := False;
  view_ImportarBaixasTFO.actCancelar.Enabled := True;
  view_ImportarBaixasTFO.actFechar.Enabled := False;
  view_ImportarBaixasTFO.actImportar.Enabled := False;
  view_ImportarBaixasTFO.actAbrir.Enabled := False;
  view_ImportarBaixasTFO.dxLayoutItem7.Visible := True;
  sMensagem := FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' iniciando importação de ' + IntToStr(iTotal) +
                              ' registros do arquivo' + FFile;
  AtualizaLog;
end;

procedure Thread_ImportarBaixasTFO.TerminaProcesso;
begin
  view_ImportarBaixasTFO.actCancelar.Enabled := False;
  view_ImportarBaixasTFO.actFechar.Enabled := True;
  view_ImportarBaixasTFO.actImportar.Enabled := True;
  view_ImportarBaixasTFO.actAbrir.Enabled := True;
  view_ImportarBaixasTFO.edtArquivo.Clear;
  view_ImportarBaixasTFO.pbImportacao.Position := 0;
  view_ImportarBaixasTFO.pbImportacao.Clear;
  view_ImportarBaixasTFO.dxLayoutItem7.Visible := False;
end;

end.
