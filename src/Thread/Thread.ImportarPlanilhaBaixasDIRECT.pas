unit Thread.ImportarPlanilhaBaixasDIRECT;

interface

uses
  System.Classes, Dialogs, Windows, Forms, SysUtils, Messages, Controls, System.DateUtils, System.StrUtils,
  Generics.Collections, Control.EntregadoresExpressas, Control.Entregas, Control.Sistema,
  FireDAC.Comp.Client, Common.ENum, Model.PlanilhaBaixasDIRECT, Control.PlanilhaBaixasDIRECT, Control.Bases, Control.VerbasExpressas,
  Control.RoteirosExpressas, Control.ControleAWB;


type
  Thread_ImportarPlanilhaBaixasDIRECT = class(TThread)
  private
    { Private declarations }
    entregas: TEntregasControl;
    planilha : TPlanilhaBaixasDIRECTControl;
    planilhas : TObjectList<TPlanilhaBaixasDIRECT>;
    entregadores : TEntregadoresExpressasControl;
    bases: TBasesControl;
    verbas : TVerbasExpressasControl;
    roteiros : TRoteirosExpressasControl;
    awb: TControleAWBControl;
    sMensagem: String;
    FdPos: Double;
    bCancel : Boolean;
    iPos : Integer;
    iLinha : Integer;
    dVerba: Double;
  protected
    procedure Execute; override;
    procedure AtualizaLog;
    procedure AtualizaProgress;
    procedure TerminaProcesso;
    procedure IniciaProcesso;
    procedure SetupClass(FDQuery: TFDQuery);
  public
    FFile: String;
    iCodigoCliente: Integer;
    bLoja: boolean;
  end;

implementation

{
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

  Synchronize(UpdateCaption);

  and UpdateCaption could look like,

  procedure Thread_ImportarPlanilhaEntradaEntregas.UpdateCaption;
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

{ Thread_ImportarPlanilhaEntradaEntregas }

uses Common.Utils, Global.Parametros, View.ImportarBaixasTFO;

procedure Thread_ImportarPlanilhaBaixasDIRECT.Execute;
var
  Contador, I, LinhasTotal, iRet, iTipo: Integer;
  Linha, campo, codigo, sMess, sData: String;
  d: Real;
  aParam: array of Variant;
  iTotal : Integer;
  iCodCliente : Integer;
  FDQuery : TFDQuery;
  FDQuery1 : TFDQuery;
  FDVerba : TFDQuery;
  FDRoteiro: TFDQuery;
  FDAWB: TFDQuery;
  dVerbaTabela: Double;
  iGrupo: Integer;
  sCEP : String;
  sNome : String;
  sOperacao: String;
  iRoteiro : Integer;
  bGravar: Boolean;
  dtData: TDate;
  dPeso: Double;
  aTipoTabela: Array of String;
begin

  Synchronize(IniciaProcesso);
  planilha := TPlanilhaBaixasDIRECTControl.Create;
  planilhas := TObjectList<TPlanilhaBaixasDIRECT>.Create;
  entregadores := TEntregadoresExpressasControl.Create;
  bases := TBasesControl.Create;
  roteiros := TRoteirosExpressasControl.Create;
  verbas := TVerbasExpressasControl.Create;
  awb := TControleAWBControl.Create;
  try

    try

      // Carregando o arquivo ...

      if planilha.GetPlanilha(FFile) then
      begin
        planilhas := planilha.Planilha.Planilha;
      end
      else
      begin
        sMensagem := '>> ' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + ' ' + planilha.Planilha.MensagemProcesso;
        AtualizaLog;
        Exit;
      end;

      SetLength(aTipoTabela, 7);
      aTipoTabela := ['FIXA','FIXACEP','FIXAPESO','SLA','CEPPESO','ROTEIROPESO','ROTEIROFIXA'];

      //se a planilha de baixas foi carregada inicia o processo de importação

      if planilhas.Count > 0 then
      begin
        // inicia-se as variaveis e querys
        iPos := 0;
        FdPos := 0;
        iTotal := planilhas.Count;
        FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
        FDQuery1 := TSistemaControl.GetInstance.Conexao.ReturnQuery;


        //lê todos os registros da planilha em memória

        for I := 0 to planilhas.Count - 1 do
        begin
          iGrupo := 0;
          dVerbaTabela := 0;
          sCEP := '';
          sNome := '';
          sOperacao := '';

          // localiza a entrega no banco de dados

          entregas := TEntregasControl.Create;
          SetLength(aParam,2);
          aParam[0] := 'NN';
          aParam[1] := planilhas[i].Remessa;
          FDQuery := entregas.Localizar(aParam);
          Finalize(aParam);
          bGravar := False;

          //se a entrega não existir, verifica se é uma reversa. Se for, gera um registro de entrega
          // e avisa ao usuário, se não for reversa, apenas avisa o usuário

          if FDQuery.IsEmpty then
          begin
            if UpperCase(planilhas[i].Tipo) = 'REVERSA' then
            begin
              bGravar := True;
              entregas.Entregas.Acao := tacIncluir;
              entregas.Entregas.NN := planilhas[i].Remessa;
              entregas.Entregas.Consumidor := UpperCase(planilhas[i].Tipo);
              entregas.Entregas.CEP := planilhas[i].CEP;
              entregas.Entregas.Volumes := planilhas[i].Volumes;
              sCEP := planilhas[i].CEP;
              entregas.Entregas.CodCliente := iCodigoCliente;
              if planilhas[i].PesoCubado > planilhas[i].PesoNominal then
              begin
                entregas.Entregas.PesoReal := planilhas[i].PesoCubado;
              end
              else
              begin
                entregas.Entregas.PesoReal := planilhas[i].PesoNominal;
              end;
              dPeso := entregas.Entregas.PesoReal;
            end
            else
            begin
              bGravar := False;
            end;
            sMensagem := 'Remessa ' + planilhas[i].Remessa + ' não localizada no banco de dados!';
            Synchronize(AtualizaLog);
          end
          else
          begin
            SetupClass(FDQuery);
            entregas.Entregas.CodCliente := iCodigoCliente;
            sCEP := entregas.Entregas.CEP;
            entregas.Entregas.Acao := tacAlterar;
            bGravar := True;
            dPeso := entregas.Entregas.PesoReal;
          end;

          if bGravar then
          begin

            //procura a remessa no controle de AWB e verifica o tipo da entrega pela operação (TD ou TC)

            sOperacao := 'TD';
            SetLength(aParam,2);
            aParam[0] := 'REMESSA';
            aParam[1] := planilhas[i].Remessa;
            FDAWB := TSistemaControl.GetInstance.Conexao.ReturnQuery;
            FDAWB := awb.Localizar(aParam);
            Finalize(aParam);
            if not FDAWB.IsEmpty then
            begin
              sOperacao := FDAWB.FieldByName('cod_operacao').AsString;
            end;
            FDAWB.Free;

            //rotina a ser implementada quando a tabela de verbas por CEP e Roteiro for definida

            {iTipo := 0;
            iRoteiro := 0;
            SetLength(aParam,3);
            aParam[0] := 'CEP';
            aParam[1] := sCEP;
            aParam[2] := iCodigoCliente;
            FDRoteiro := TSistemaControl.GetInstance.Conexao.ReturnQuery;
            FDRoteiro := roteiros.Localizar(aParam);
            if not FDRoteiro.IsEmpty then
            begin
              iTipo := FDRoteiro.FieldByName('cod_tipo').asInteger;
              if iTipo = 3 then
              begin
                iRoteiro := FDRoteiro.FieldByName('cod_leve').asInteger;
              end
              else if iTipo = 2 then
              begin
                if entregas.Entregas.PesoReal <= 30 then
                begin
                  if sOperacao = 'TD' then
                  begin
                    iTipo := 3;
                    iRoteiro := FDRoteiro.FieldByName('cod_leve').asInteger;
                  end;
                end
                else
                begin
                  iRoteiro := FDRoteiro.FieldByName('cod_pesado').asInteger;
                end;
              end;
            end;
            FDRoteiro.Free;}

            //apanha o código da base, entregador e verba fixa do cadastro de entregadores

            SetLength(aParam,2);
            aParam[0] := 'CHAVE';
            aParam[1] := planilhas[i].Documento;
            FDQuery1 := entregadores.Localizar(aParam);
            dVerba := 0;
            if not FDQuery1.IsEmpty then
            begin
              entregas.Entregas.Distribuidor := FDQuery1.FieldByName('COD_AGENTE').AsInteger;
              entregas.Entregas.Entregador := FDQuery1.FieldByName('COD_ENTREGADOR').AsInteger;
              dVerba := FDQuery1.FieldByName('VAL_VERBA').AsFloat;
              sNome := FDQuery1.FieldByName('NOM_FANTASIA').AsString;
            end
            else
            begin
              sMensagem := 'Entregador da Remessa '  + planilhas[i].Remessa + ' (' + planilhas[i].Motorista  +  ') não encontrado!';
              Synchronize(AtualizaLog);
              entregas.Entregas.Distribuidor := 1;
              entregas.Entregas.Entregador := 781;
              sNome := '';
              dVerba := 0;
            end;
            Finalize(aParam);
            FDQuery1.Close;

            //apanha a verba da base se a verba fixa do entregador for igual a zero

            if dVerba = 0 then
            begin
              dVerba := StrToFloatDef(bases.GetField('val_verba', 'cod_agente', entregas.Entregas.Distribuidor.ToString), 0);
              iGrupo := StrToIntDef(bases.GetField('cod_grupo', 'cod_agente', entregas.Entregas.Distribuidor.ToString), 0);
            end;

            //se a verba continua zerada, apanha da tabela de verbas

            if dVerba = 0 then
            begin
              //#1 provisóriamente, pela cabeça de cep da remessa identificamos o tipo de verba (3 mista ou 2 pesado)

              entregas.Entregas.PesoCobrado := planilhas[i].PesoNominal;
              if planilhas[i].PesoCubado > planilhas[i].PesoNominal then
              begin
                entregas.Entregas.PesoReal := planilhas[i].PesoCubado;
              end
              else
              begin
                entregas.Entregas.PesoReal := planilhas[i].PesoNominal;
              end;

              dPeso := entregas.Entregas.PesoReal;

              //#1


              if dPeso <= 30 then
              begin
                if sOperacao = 'TC' then
                begin
                  iTipo := 2;
                end
                else
                begin
                  iTipo := 1;
                end;
              end
              else
              begin
                iTipo := 2;
              end;

              if Pos(LeftStr(sCEP,3), '213,226,227') > 0 then
              begin
                iTipo := 2; //pesado
              end;

              // se o entregador for tipo PESADO altera para tipo de verba pesado

              if Pos('PESADO', sNome) > 0 then
              begin
                iTipo := 2;
              end;

              if iGrupo = 0 then iGrupo := 2;


              dtData := planilhas[i].DataAtualizacao;
              SetLength(aParam,6);

              aParam[0] := aTipoTabela[Pred(iGrupo)];
              aParam[1] := iGrupo; // esse parâmetro será informado pelo cadastro do entregador futuramente
              aParam[2] := entregas.Entregas.CodCliente;
              aParam[3] := iTipo;
              aParam[4] := dtData;
              aParam[5] := sCEP;
              FDVerba := TSistemaControl.GetInstance.Conexao.ReturnQuery;
              FDVerba := verbas.Localizar(aParam);
              Finalize(aParam);
              if not FDVerba.IsEmpty then
              begin
                dVerbaTabela := verbas.Verbas.Verba;
              end;
              FDVerba.Free;

              if dVerbaTabela > 0 then dVerba := dVerbaTabela;
            end;

            // atualiza a remessa com os dados da baixa se ela ainda não foi fechada (extrato)

            if entregas.Entregas.Fechado <> 'S' then
            begin
              entregas.Entregas.Status := 909;
              entregas.Entregas.Baixa := planilhas[i].DataAtualizacao;
              entregas.Entregas.Entrega  := planilhas[i].DataAtualizacao;
              entregas.Entregas.Baixado := 'S';
              entregas.Entregas.VerbaEntregador := dVerba;
              if entregas.Entregas.Previsao < entregas.Entregas.Entrega then
              begin
                entregas.Entregas.Atraso := DaysBetween(entregas.Entregas.Previsao,entregas.Entregas.Entrega);
              end
              else
              begin
                entregas.Entregas.Atraso := 0;
              end;
              entregas.Entregas.Rastreio := entregas.Entregas.Rastreio + #13 +
                                            '> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' baixada por importação por ' +
                                            Global.Parametros.pUser_Name;

              // avisa se a remessa está sem verba

              if dVerba = 0 then
              begin
                sMensagem := 'Verba não encontrada para a remessa ' + entregas.Entregas.NN + ' do entregador ' +
                             entregas.Entregas.Entregador.ToString + ' !';
                Synchronize(AtualizaLog);
              end
              else
              begin
                if bLoja then
                begin
                  if Trim(planilhas[i].Loja) = 'S' then
                  begin
                    dVerba := dVerba / 2;
                    entregas.Entregas.Status := 9889;
                  end;
                end;
              end;

              if not entregas.Gravar then
              begin
                sMensagem := 'Erro ao baixar a Remessa ' + entregas.Entregas.NN + ' !';
                Synchronize(AtualizaLog);
              end;
            end;
          end;
          entregas.Free;
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
      Application.MessageBox('Importação concluída com sucesso!', 'Importação de Entregas', MB_OK + MB_ICONINFORMATION);
    end;
    Synchronize(TerminaProcesso);
    planilha.Free;
    planilhas.Free;
    entregadores.Free;
    verbas.Free;
    roteiros.Free;
    awb.Free;
  end;
end;

procedure Thread_ImportarPlanilhaBaixasDIRECT.IniciaProcesso;
begin
  bCancel := False;
  view_ImportarBaixasTFO.actCancelar.Enabled := True;
  view_ImportarBaixasTFO.actFechar.Enabled := False;
  view_ImportarBaixasTFO.actImportar.Enabled := False;
  view_ImportarBaixasTFO.actAbrir.Enabled := False;
  view_ImportarBaixasTFO.dxLayoutItem7.Visible := True;
  sMensagem := FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' iniciando importação do arquivo ' + FFile;
  AtualizaLog;
end;

procedure Thread_ImportarPlanilhaBaixasDIRECT.SetupClass(FDQuery: TFDQuery);
begin
  entregas.Entregas.Distribuidor := FDQuery.FieldByName('COD_AGENTE').AsInteger;
  entregas.Entregas.Entregador := FDQuery.FieldByName('COD_ENTREGADOR').AsInteger;
  entregas.Entregas.NN := FDQuery.FieldByName('NUM_NOSSONUMERO').AsString;
  entregas.Entregas.NF := FDQuery.FieldByName('NUM_NF').AsString;
  entregas.Entregas.Cliente := FDQuery.FieldByName('COD_CLIENTE').AsInteger;
  entregas.Entregas.Consumidor := FDQuery.FieldByName('NOM_CONSUMIDOR').AsString;
  entregas.Entregas.Endereco := FDQuery.FieldByName('DES_ENDERECO').AsString;
  entregas.Entregas.Complemento := FDQuery.FieldByName('DES_COMPLEMENTO').AsString;
  entregas.Entregas.Bairro := FDQuery.FieldByName('DES_BAIRRO').AsString;
  entregas.Entregas.Cidade :=  FDQuery.FieldByName('NOM_CIDADE').AsString;
  entregas.Entregas.Cep := FDQuery.FieldByName('NUM_CEP').AsString;
  entregas.Entregas.Telefone := FDQuery.FieldByName('NUM_TELEFONE').AsString ;
  entregas.Entregas.Expedicao := FDQuery.FieldByName('DAT_EXPEDICAO').AsDateTime;
  entregas.Entregas.Previsao := FDQuery.FieldByName('DAT_PREV_DISTRIBUICAO').AsDateTime;
  entregas.Entregas.Status := FDQuery.FieldByName('COD_STATUS').AsInteger;
  entregas.Entregas.Baixado := FDQuery.FieldByName('DOM_BAIXADO').AsString;
  entregas.Entregas.VerbaEntregador := FDQuery.FieldByName('VAL_VERBA_ENTREGADOR').AsFloat;
  entregas.Entregas.VerbaFranquia := FDQuery.FieldByName('VAL_VERBA_FRANQUIA').AsFloat;
  entregas.Entregas.PesoReal := FDQuery.FieldByName('QTD_PESO_REAL').AsFloat;
  entregas.Entregas.PesoCobrado := FDQuery.FieldByName('QTD_PESO_COBRADO').AsFloat;
  entregas.Entregas.Volumes := FDQuery.FieldByName('QTD_VOLUMES').AsInteger;
  entregas.Entregas.VolumesExtra := FDQuery.FieldByName('QTD_VOLUMES_EXTRA').AsFloat;
  entregas.Entregas.ValorVolumes := FDQuery.FieldByName('VAL_VOLUMES_EXTRA').AsFloat;
  entregas.Entregas.Atraso := FDQuery.FieldByName('QTD_DIAS_ATRASO').AsInteger;
  entregas.Entregas.Container := FDQuery.FieldByName('NUM_CONTAINER').AsString;
  entregas.Entregas.ValorProduto := FDQuery.FieldByName('VAL_PRODUTO').AsFloat;
  entregas.Entregas.Atribuicao := FDQuery.FieldByName('DAT_ATRIBUICAO').AsDateTime;
  entregas.Entregas.Altura := FDQuery.FieldByName('QTD_ALTURA').AsInteger;
  entregas.Entregas.Largura := FDQuery.FieldByName('QTD_LARGURA').AsInteger;
  entregas.Entregas.Comprimento := FDQuery.FieldByName('QTD_COMPRIMENTO').AsInteger;
  entregas.Entregas.Rastreio := FDQuery.FieldByName('DES_RASTREIO').AsString;
  entregas.Entregas.Pedido := FDQuery.FieldByName('NUM_PEDIDO').AsString;
  entregas.Entregas.Retorno := FDQuery.FieldByName('DES_RETORNO').AsString;
  entregas.Entregas.CodCliente := FDQuery.FieldByName('COD_CLIENTE_EMPRESA').AsInteger;
end;

procedure Thread_ImportarPlanilhaBaixasDIRECT.AtualizaLog;
begin
  view_ImportarBaixasTFO.memLOG.Lines.Add(sMensagem);
  view_ImportarBaixasTFO.memLOG.Lines.Add('');
  iLinha := view_ImportarBaixasTFO.memLOG.Lines.Count - 1;
  view_ImportarBaixasTFO.memLOG.Refresh;
end;

procedure Thread_ImportarPlanilhaBaixasDIRECT.AtualizaProgress;
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

procedure Thread_ImportarPlanilhaBaixasDIRECT.TerminaProcesso;
begin
  view_ImportarBaixasTFO.actCancelar.Enabled := False;
  view_ImportarBaixasTFO.actFechar.Enabled := True;
  view_ImportarBaixasTFO.actImportar.Enabled := True;
  view_ImportarBaixasTFO.actAbrir.Enabled := True;
  view_ImportarBaixasTFO.edtArquivo.Clear;
  view_ImportarBaixasTFO.pbImportacao.Position := 0;
  view_ImportarBaixasTFO.pbImportacao.Clear;
  view_ImportarBaixasTFO.dxLayoutItem7.Visible := False;
  view_ImportarBaixasTFO.cboCliente.ItemIndex := 0;
end;

end.
