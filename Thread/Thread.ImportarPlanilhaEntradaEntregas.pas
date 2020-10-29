unit Thread.ImportarPlanilhaEntradaEntregas;

interface

uses
  System.Classes, Dialogs, Windows, Forms, SysUtils, Messages, Controls, System.DateUtils, System.StrUtils,
  Generics.Collections, Control.Entregas, Control.PlanilhaEntradaEntregas, Control.EntregadoresExpressas,
  Control.DestinosTransportes, FireDAC.Comp.Client, Control.Sistema, Model.PlanilhaEntradaEntregas;

type
  Thread_ImportarPlanilhaEntradaEntregas = class(TThread)
  private
    { Private declarations }
    destinos : TDestinosTransportesControl;
    entregas: TEntregasControl;
    planilha : TPlanilhasEntradasEntregasControl;
    planilhas : TObjectList<TPlanilhaEntradaEntregas>;
    sMensagem: String;
    FdPos: Double;
    iLinha: Integer;
    iPos : Integer;
    iTotal : Integer;
  protected
    procedure Execute; override;
    procedure AtualizaLog;
    procedure AtualizaProgress;
    procedure TerminaProcesso;
    procedure IniciaProcesso;
  public
    FFile: String;
    bCancel : Boolean;
    iCodigoCliente : Integer;
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

uses Common.Utils, Global.Parametros, Common.ENum, View.ImportarPedidos;

procedure Thread_ImportarPlanilhaEntradaEntregas.Execute;
var
  Contador, I, LinhasTotal, iRet: Integer;
  Linha, campo, codigo, sMess, sData: String;
  d: Real;
  aParam: array of Variant;
  FDQuery : TFDQuery;
  FDQuery1 : TFDQuery;
begin

  try
    try
      entregas := TEntregasControl.Create;
      planilha := TPlanilhasEntradasEntregasControl.Create;
      planilhas := TObjectList<TPlanilhaEntradaEntregas>.Create;
      destinos := TDestinosTransportesControl.Create;

      // Carregando o arquivo ...

      planilhas := planilha.GetPlanilha(FFile);

      if planilhas.Count > 0 then
      begin
        iPos := 0;
        FdPos := 0;
        iTotal := planilhas.Count;
        Synchronize(IniciaProcesso);
        for I := 0 to planilhas.Count - 1 do
        begin
          FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
          SetLength(aParam,2);
          aParam[0] := 'NN';
          aParam[1] := planilhas[i].NossoNumero;
          FDQuery := entregas.Localizar(aParam);
          Finalize(aParam);
          if FDQuery.IsEmpty then
          begin
            entregas.Entregas.Distribuidor := 0;
            entregas.Entregas.Entregador := 0;
            entregas.Entregas.NN := planilhas[I].NossoNumero;
            entregas.Entregas.Cliente := StrToInt(planilhas[I].CodigoCliente);
            entregas.Entregas.NF := planilhas[I].NumeroNF;
            entregas.Entregas.Consumidor := planilhas[I].NomeConsumidor;
            entregas.Entregas.Endereco := planilhas[I].Logradouro;
            entregas.Entregas.Complemento := Copy(Trim(planilhas[I].Complemento) + ' ' + Trim(planilhas[I].AosCuidados), 1,70);
            entregas.Entregas.Bairro := planilhas[I].Bairro;
            entregas.Entregas.Cidade := planilhas[I].Cidade;
            entregas.Entregas.Cep := planilhas[I].CEP;
            entregas.Entregas.Telefone := Copy(planilhas[I].Telefone, 1, 30);
            entregas.Entregas.Expedicao := StrToDate(planilhas[I].Expedicao);
            entregas.Entregas.Previsao := StrToDate(planilhas[I].Previsao);
            entregas.Entregas.Status := StrToInt(planilhas[I].Status);
            entregas.Entregas.Baixado := 'N';
            planilhas[I].ValorVerba := ReplaceStr(planilhas[I].ValorVerba, 'R$ ', '');
            entregas.Entregas.VerbaFranquia := StrToFloatDef(planilhas[I].ValorVerba,0);
            planilhas[I].Peso := ReplaceStr(planilhas[I].Peso, ' KG', '');
            planilhas[I].Peso := ReplaceStr(planilhas[I].Peso, '.', ',');
            entregas.Entregas.PesoReal := StrToFloatDef(planilhas[I].Peso,0);
            entregas.Entregas.Volumes := StrToInt(planilhas[I].Volume);
            entregas.Entregas.VolumesExtra := 0;
            entregas.Entregas.ValorVolumes := 0;
            entregas.Entregas.Atraso := 0;
            entregas.Entregas.Container := planilhas[I].Container;
            planilhas[I].ValorProuto := ReplaceStr(planilhas[I].ValorProuto, 'R$ ', '');
            planilhas[I].ValorProuto := ReplaceStr(planilhas[I].ValorProuto, '.', '');
            entregas.Entregas.ValorProduto := StrToFloatDef(planilhas[I].ValorProuto,0);
            entregas.Entregas.Altura := StrToIntDef(planilhas[I].Altura, 0);
            entregas.Entregas.Largura := StrToIntDef(planilhas[I].Largura, 0);
            entregas.Entregas.Comprimento := StrToIntDef(planilhas[I].Comprimento, 0);
            entregas.Entregas.Rastreio := '> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' importado por ' +
                                          Global.Parametros.pUser_Name;
            entregas.Entregas.CodCliente := iCodigoCliente;
            entregas.Entregas.Acao := tacIncluir;
            if not entregas.Gravar then
            begin
              sMensagem := 'Erro ao Incluir os dados do NN ' + entregas.Entregas.NN + ' !';
              Synchronize(AtualizaLog);
            end;
            FDQuery.Connection.Close;
            FDQuery.Free;
            FDQuery1 := TSistemaControl.GetInstance.Conexao.ReturnQuery;
            SetLength(aParam,2);
            aParam[0] := 'CODIGO';
            aParam[1] := StrToIntDef(planilhas[I].CodigoDestino, 0);
            FDQuery1 := destinos.Localizar(aParam);
            Finalize(aParam);
            if FDQuery1.IsEmpty then
            begin
              FDQuery1.Connection.Close;
              FDQuery1.Free;
              destinos.Destinos.Destino := StrToIntDef(planilhas[I].CodigoDestino, 0);
              destinos.Destinos.Descricao := planilhas[I].NomeDestino;
              destinos.Destinos.Log := '> ' + FormatDateTime('yyyy-mm-dd hh:mm:ss', Now()) + ' incluso por ' +
                                       Global.Parametros.pUser_Name;
              if not destinos.gravar then
              begin
                sMensagem := 'Erro ao incluir o destino ' + destinos.Destinos.Descricao +  ' !';
                Synchronize(AtualizaLog);
              end;
            end
            else
            begin
              FDQuery1.Connection.Close;
              FDQuery1.Free;
            end;
          end
          else
          begin
            FDQuery.Connection.Close;
            FDQuery.Free;
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
    destinos.Free;
    planilhas.Free;
  end;
end;

procedure Thread_ImportarPlanilhaEntradaEntregas.IniciaProcesso;
begin
  bCancel := False;
  view_ImportarPedidos.actCancelar.Enabled := True;
  view_ImportarPedidos.actFechar.Enabled := False;
  view_ImportarPedidos.actImportar.Enabled := False;
  view_ImportarPedidos.actAbrirArquivo.Enabled := False;
  view_ImportarPedidos.dxLayoutItem8.Visible := True;
  sMensagem := FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' iniciando importação de ' + iTotal.ToString +
                              ' registros do arquivo ' + FFile;
  AtualizaLog;
end;

procedure Thread_ImportarPlanilhaEntradaEntregas.AtualizaLog;
begin
  view_ImportarPedidos.memLOG.Lines.Add(sMensagem);
  view_ImportarPedidos.memLOG.Lines.Add('');
  iLinha := view_ImportarPedidos.memLOG.Lines.Count - 1;
  view_ImportarPedidos.memLOG.Refresh;
end;

procedure Thread_ImportarPlanilhaEntradaEntregas.AtualizaProgress;
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

procedure Thread_ImportarPlanilhaEntradaEntregas.TerminaProcesso;
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
