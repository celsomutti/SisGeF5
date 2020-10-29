unit Thread.ImportarPlanilhaEntradaDIRECT;

interface

uses
  System.Classes, Dialogs, Windows, Forms, SysUtils, Messages, Controls, System.DateUtils, System.StrUtils,
  Generics.Collections, Model.PlanilhaEntradaDIRECT,
  Control.DestinosTransportes,
  Control.EntregadoresExpressas, Control.Entregas, Control.PlanilhaEntradaDIRECT, Control.Sistema,
  FireDAC.Comp.Client, Common.ENum;


type
  Thread_ImportarPlanilhaEntradaDIRECT = class(TThread)
  private
    { Private declarations }
    destinos : TDestinosTransportesControl;
    entregas: TEntregasControl;
    planilha : TPlanilhaEntradaDIRECTControl;
    planilhas : TObjectList<TPlanilhaEntradaDIRECT>;
    entregadores : TEntregadoresExpressasControl;
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
    procedure SetupClass(FDQuery: TFDQuery);
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

procedure Thread_ImportarPlanilhaEntradaDIRECT.Execute;
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
  planilha := TPlanilhaEntradaDIRECTControl.Create;
  planilhas := TObjectList<TPlanilhaEntradaDIRECT>.Create;
  destinos := TDestinosTransportesControl.Create;
  entregadores := TEntregadoresExpressasControl.Create;

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
          aParam[1] := planilhas[i].Remessa;
          FDQuery := entregas.Localizar(aParam);
          Finalize(aParam);
          if FDQuery.IsEmpty then
          begin
            SetLength(aParam,2);
            aParam[0] := 'FANTASIA';
            aParam[1] := planilhas[i].UltimoMotorista;
            FDQuery1 := entregadores.Localizar(aParam);
            entregas.Entregas.Entregador := 1;
            if not FDQuery1.IsEmpty then
            begin
              entregas.Entregas.Distribuidor := FDQuery1.FieldByName('COD_AGENTE').AsInteger;
              entregas.Entregas.Entregador := FDQuery1.FieldByName('COD_ENTREGADOR').AsInteger;
            end
            else
            begin
              entregas.Entregas.Distribuidor := 1;
              entregas.Entregas.Entregador := 781;
            end;
            Finalize(aParam);
            FDQuery1.Close;
            entregas.Entregas.Cliente := planilhas[i].CodigoEmbarcador;
            FDQuery1.Close;
            entregas.Entregas.NN := planilhas[i].Remessa;
            entregas.Entregas.NF := planilhas[I].NF;
            entregas.Entregas.Consumidor := planilhas[I].NomeConsumidor;
            entregas.Entregas.Retorno := planilhas[i].Chave;
            entregas.Entregas.Endereco := '';
            entregas.Entregas.Complemento := '';
            entregas.Entregas.Bairro := planilhas[I].Bairro;
            entregas.Entregas.Cidade := planilhas[I].Municipio;
            entregas.Entregas.Cep := planilhas[I].CEP;
            entregas.Entregas.Telefone := '';
            entregas.Entregas.Expedicao := planilhas[I].DataRegistro;
            entregas.Entregas.Previsao := planilhas[I].DataChegadaLM + 1;
            entregas.Entregas.Status := 909;
            entregas.Entregas.Baixa := 0;
            entregas.Entregas.Entrega  := 0;
            entregas.Entregas.Baixado := 'N';
            entregas.Entregas.Atraso := 0;
            entregas.Entregas.VerbaEntregador := 0;
            entregas.Entregas.VerbaFranquia := 0;
            if planilhas[i].PesoCubado > planilhas[i].PesoNominal then
            begin
              entregas.Entregas.PesoReal := planilhas[I].PesoCubado;
            end
            else
            begin
              entregas.Entregas.PesoReal := planilhas[I].PesoNominal;
            end;
            entregas.Entregas.PesoCobrado := planilhas[I].PesoNominal;
            entregas.Entregas.Volumes := planilhas[I].Volumes;
            entregas.Entregas.VolumesExtra := 0;
            entregas.Entregas.ValorVolumes := 0;
            entregas.Entregas.Container := '0';
            entregas.Entregas.ValorProduto := planilhas[I].Valor;
            entregas.Entregas.Atribuicao := 0;
            entregas.Entregas.Altura := 0;
            entregas.Entregas.Largura := 0;
            entregas.Entregas.Comprimento := 0;
            entregas.Entregas.Rastreio := '> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' inserido por importação por ' +
                                          Global.Parametros.pUser_Name;
            entregas.Entregas.Pedido := planilhas[I].Pedido;
            entregas.Entregas.CodCliente := iCodigoCliente;
            entregas.Entregas.Acao := tacIncluir;
            if not entregas.Gravar then
            begin
              sMensagem := 'Erro ao Incluir os dados da Remessa ' + entregas.Entregas.NN + ' !';
              Synchronize(AtualizaLog);
            end;
          end
          else
          begin
            SetupClass(FDQuery);
            entregas.Entregas.Status := 909;
            entregas.Entregas.Rastreio := entregas.Entregas.Rastreio + #13 +
                                          '> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' atualizado por importação por ' +
                                          Global.Parametros.pUser_Name;
            entregas.Entregas.Acao := tacAlterar;
            if not entregas.Gravar then
            begin
              sMensagem := 'Erro ao alterar os dados da Remessa ' + entregas.Entregas.NN + ' !';
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
    entregadores.Free;
  end;
end;

procedure Thread_ImportarPlanilhaEntradaDIRECT.IniciaProcesso;
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

procedure Thread_ImportarPlanilhaEntradaDIRECT.SetupClass(FDQuery: TFDQuery);
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

procedure Thread_ImportarPlanilhaEntradaDIRECT.AtualizaLog;
begin
  view_ImportarPedidos.memLOG.Lines.Add(sMensagem);
  view_ImportarPedidos.memLOG.Lines.Add('');
  iLinha := view_ImportarPedidos.memLOG.Lines.Count - 1;
  view_ImportarPedidos.memLOG.Refresh;
end;

procedure Thread_ImportarPlanilhaEntradaDIRECT.AtualizaProgress;
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

procedure Thread_ImportarPlanilhaEntradaDIRECT.TerminaProcesso;
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
