unit Thread.ImportarPlanilhaEntradaSPLOG;

interface

uses
  System.Classes, Dialogs, Windows, Forms, SysUtils, Messages, Controls, System.DateUtils, System.StrUtils,
  Generics.Collections, Model.PlanilhaEntradaCarriers,
  Control.Clientes, Control.DestinosTransportes, Control.Entregas, Control.Sistema,
  FireDAC.Comp.Client, Common.ENum, Control.PlanilhaEntradaSPLOG, Model.PlanilhaEntradasSPLOG;


type
  Thread_ImportarPlanilhaEntradaSPLOG = class(TThread)
  private
    { Private declarations }
    destinos : TDestinosTransportesControl;
    entregas: TEntregasControl;
    planilha : TPlanilhaEntradaSPLOGControl;
    planilhas : TObjectList<TPlanilhaEntradaSPLOG>;
    clientes : TClientesControl;
    sMensagem: String;
    FdPos: Double;
    bCancel : Boolean;
    iPos : Integer;
    iLinha : Integer;
  protected
    procedure Execute; override;
    procedure AtualizaLog;
    procedure AtualizaProgress;
    procedure TerminaProcesso;
    procedure IniciaProcesso;
    procedure SetupEntregas(FDQuery: TFDQuery);
  public
    FFile: String;
    iCodigoCliente: Integer;
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

uses Common.Utils, Global.Parametros, View.ImportarPedidos;

procedure Thread_ImportarPlanilhaEntradaSPLOG.Execute;
var
  Contador, I, LinhasTotal, iRet: Integer;
  Linha, campo, codigo, sMess, sData: String;
  d: Real;
  aParam: array of Variant;
  iTotal : Integer;
  iCodCliente : Integer;
  FDQuery : TFDQuery;
  FDQuery1 : TFDQuery;
begin

  Synchronize(IniciaProcesso);

  entregas := TEntregasControl.Create;
  planilha := TPlanilhaEntradaSPLOGControl.Create;
  planilhas := TObjectList<TPlanilhaEntradaSPLOG>.Create;
  destinos := TDestinosTransportesControl.Create;

  try

    try

      // Carregando o arquivo ...

      planilhas := planilha.GetPlanilha(FFile);

      if planilhas.Count > 0 then
      begin
        iPos := 0;
        FdPos := 0;
        iTotal := planilhas.Count;
        FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
        FDQuery1 := TSistemaControl.GetInstance.Conexao.ReturnQuery;
        for I := 0 to planilhas.Count - 1 do
        begin
          SetLength(aParam,2);
          aParam[0] := 'NN';
          planilhas[i].CTe := TUtils.ReplaceStr(planilhas[i].CTe,' ','');
          aParam[1] := Trim(planilhas[i].CTe);
          FDQuery := entregas.Localizar(aParam);
          Finalize(aParam);
          if FDQuery.IsEmpty then
          begin
            entregas.Entregas.Distribuidor := 0;
            entregas.Entregas.Entregador := 0;
            clientes := TClientesControl.Create;
            entregas.Entregas.Cliente := 0;
            SetLength(aParam,2);
            aParam[0] := 'NOME';
            aParam[1] := '%' + Trim(planilhas[i].NomeRemetente) + '%';
            FDQuery1 := clientes.Localizar(aParam);
            if not FDQuery1.IsEmpty then
            begin
              FDQuery1.First;
              entregas.Entregas.Cliente := FDQuery1.FieldByName('COD_CLIENTE').AsInteger;
            end
            else
            begin
              sMensagem := 'Embarcador ' + Trim(planilhas[i].NomeRemetente) + ' do NN ' + entregas.Entregas.NN + ' não cadastrado!';
              Synchronize(AtualizaLog);
            end;
            FDQuery1.Close;
            clientes.Free;
            entregas.Entregas.NN := Trim(planilhas[I].CTe);
            entregas.Entregas.NF := planilhas[I].NF;
            entregas.Entregas.Consumidor := planilhas[I].NomeDestinatario;
            entregas.Entregas.Endereco := planilhas[I].EnderecoEntrega;
            entregas.Entregas.Complemento := '';
            entregas.Entregas.Bairro := '';
            entregas.Entregas.Cidade := planilhas[I].CidadeEntrega;
            planilhas[I].CEPEntrega := TUtils.ReplaceStr(planilhas[I].CEPEntrega,'-','');
            entregas.Entregas.Cep := planilhas[I].CEPEntrega;
            entregas.Entregas.Telefone := '';
            entregas.Entregas.Expedicao := StrToDate(planilhas[I].Emissao);
            entregas.Entregas.Previsao :=StrToDate(planilhas[I].DataPrevisaoEntrega);
            entregas.Entregas.Status := StrToIntDef(planilhas[i].CodigoUltimaOcorrencia,0);
            if (entregas.Entregas.Status = 1) or (entregas.Entregas.Status = 52) then
            begin
              if entregas.Entregas.Status = 1 then
              begin
                entregas.Entregas.CodigoFeedback := 111;
                entregas.Entregas.DataFeedback := StrToDateTimeDef(planilhas[i].DataInclusaoUltimaOcorrencia,0);
              end;
              entregas.Entregas.Baixa := StrToDateTimeDef(planilhas[i].DataInclusaoUltimaOcorrencia,0);
              entregas.Entregas.Baixado := 'S';
              entregas.Entregas.Entrega := StrToDateTimeDef(planilhas[i].DataEntregaRealizada,0);
              if entregas.Entregas.Previsao < entregas.Entregas.Entrega then
              begin
                entregas.Entregas.Atraso := DaysBetween(entregas.Entregas.Entrega,entregas.Entregas.Previsao);
              end
              else
              begin
                entregas.Entregas.Atraso := 0;
              end;
            end
            else
            begin
              entregas.Entregas.Baixa := 0;
              entregas.Entregas.Entrega := 0;
              entregas.Entregas.Baixado := 'N';
              entregas.Entregas.Atraso := 0;
            end;
            entregas.Entregas.VerbaEntregador := 0;
            entregas.Entregas.VerbaFranquia := 0;
            planilhas[I].PesoReal := TUtils.ReplaceStr(planilhas[I].PesoReal,'.','');
            entregas.Entregas.PesoReal := StrToFloatDef(planilhas[I].PesoReal,0);
            planilhas[I].PesoNF := TUtils.ReplaceStr(planilhas[I].PesoNF,'.','');
            entregas.Entregas.PesoCobrado := StrToFloatDef(planilhas[I].PesoNF,0);
            entregas.Entregas.Volumes := StrToInt(planilhas[I].Volumes);
            entregas.Entregas.VolumesExtra := 0;
            entregas.Entregas.ValorVolumes := 0;
            entregas.Entregas.Container := '0';
            planilhas[I].ValorMercadoria := TUtils.ReplaceStr(planilhas[I].ValorMercadoria,'.','');
            entregas.Entregas.ValorProduto := StrToFloatDef(planilhas[I].ValorMercadoria,0);
            entregas.Entregas.Atribuicao := 0;
            entregas.Entregas.Altura := 0;
            entregas.Entregas.Largura := 0;
            entregas.Entregas.Comprimento := 0;
            entregas.Entregas.Rastreio := '> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' importado por ' +
                                          Global.Parametros.pUser_Name;
            entregas.Entregas.Pedido := planilhas[I].Pedido;
            entregas.Entregas.CodCliente := iCodigoCliente;
            entregas.Entregas.Retorno := planilhas[I].DANFE;
            entregas.Entregas.Acao := tacIncluir;
            if not entregas.Gravar then
            begin
              sMensagem := 'Erro ao Incluir os dados do NN ' + entregas.Entregas.NN + ' !';
              Synchronize(AtualizaLog);
            end;
          end
          else
          begin
            SetupEntregas(FDQuery);
            entregas.Entregas.Status := StrToIntDef(planilhas[i].CodigoUltimaOcorrencia,0);
            if (entregas.Entregas.Status = 1) or (entregas.Entregas.Status = 52) then
            begin
              if entregas.Entregas.Status = 1 then
              begin
                entregas.Entregas.CodigoFeedback := 111;
                entregas.Entregas.DataFeedback := StrToDateTimeDef(planilhas[i].DataInclusaoUltimaOcorrencia,0);
              end;
              entregas.Entregas.Baixa := StrToDateTimeDef(planilhas[i].DataInclusaoUltimaOcorrencia,0);
              entregas.Entregas.Baixado := 'S';
              entregas.Entregas.Entrega := StrToDateTimeDef(planilhas[i].DataEntregaRealizada,0);
              if entregas.Entregas.Previsao < entregas.Entregas.Entrega then
              begin
                entregas.Entregas.Atraso := DaysBetween(entregas.Entregas.Previsao,entregas.Entregas.Entrega);
              end
              else
              begin
                entregas.Entregas.Atraso := 0;
              end;
            end
            else
            begin
              entregas.Entregas.Baixa := 0;
              entregas.Entregas.Entrega := 0;
              entregas.Entregas.Baixado := 'N';
              entregas.Entregas.Atraso := 0;
            end;
            entregas.Entregas.Rastreio := entregas.Entregas.Rastreio +
                                          #13 + '> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now()) +
                                          ' atualizado por importação por ' + Global.Parametros.pUser_Name;
            entregas.Entregas.Acao := tacAlterar;
            if not entregas.Gravar then
            begin
              sMensagem := 'Erro ao Alterar os dados do NN ' + entregas.Entregas.NN + ' !';
              Synchronize(AtualizaLog);
            end;
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
      Application.MessageBox('Importação concluída com sucesso!', 'Importação de Entregas', MB_OK + MB_ICONINFORMATION);
    end;
    Synchronize(TerminaProcesso);
    entregas.Free;
    planilha.Free;
    planilhas.Free;
    destinos.Free;
  end;
end;

procedure Thread_ImportarPlanilhaEntradaSPLOG.IniciaProcesso;
begin
  bCancel := False;
  view_ImportarPedidos.actCancelar.Enabled := True;
  view_ImportarPedidos.actFechar.Enabled := False;
  view_ImportarPedidos.actImportar.Enabled := False;
  view_ImportarPedidos.actAbrirArquivo.Enabled := False;
  view_ImportarPedidos.dxLayoutItem8.Visible := True;
  sMensagem := FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' iniciando importação do arquivo ' + FFile;
  AtualizaLog;
end;

procedure Thread_ImportarPlanilhaEntradaSPLOG.SetupEntregas(FDQuery: TFDQuery);
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
  entregas.Entregas.CodCliente := FDQuery.FieldByName('COD_CLIENTE_EMPRESA').AsInteger;
end;

procedure Thread_ImportarPlanilhaEntradaSPLOG.AtualizaLog;
begin
  view_ImportarPedidos.memLOG.Lines.Add(sMensagem);
  view_ImportarPedidos.memLOG.Lines.Add('');
  iLinha := view_ImportarPedidos.memLOG.Lines.Count - 1;
  view_ImportarPedidos.memLOG.Refresh;
end;

procedure Thread_ImportarPlanilhaEntradaSPLOG.AtualizaProgress;
begin
  view_ImportarPedidos.pbImportacao.Position := FdPos;
  view_ImportarPedidos.pbImportacao.Properties.Text := FormatFloat('0.00%',FdPos);
  view_ImportarPedidos.pbImportacao.Refresh;
  view_ImportarPedidos.memLOG.Lines[iLinha] := ' >>> ' + IntToStr(iPos) + ' registros processados';
  view_ImportarPedidos.memLOG.Refresh;
  if not(view_ImportarPedidos.actCancelar.Visible) then
  begin
    view_ImportarPedidos.actCancelar.Visible := True;
    view_ImportarPedidos.actFechar.Enabled := False;
    view_ImportarPedidos.actImportar.Enabled := False;
  end;
end;

procedure Thread_ImportarPlanilhaEntradaSPLOG.TerminaProcesso;
begin
  view_ImportarPedidos.actCancelar.Enabled := False;
  view_ImportarPedidos.actFechar.Enabled := True;
  view_ImportarPedidos.actImportar.Enabled := True;
  view_ImportarPedidos.actAbrirArquivo.Enabled := True;
  view_ImportarPedidos.edtArquivo.Clear;
  view_ImportarPedidos.pbImportacao.Position := 0;
  view_ImportarPedidos.pbImportacao.Clear;
  view_ImportarPedidos.dxLayoutItem8.Visible := False;
  view_ImportarPedidos.cboCliente.ItemIndex := 0;
end;

end.
