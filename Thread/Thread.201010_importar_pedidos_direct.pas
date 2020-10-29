unit Thread_201010_importar_pedidos_direct;

interface

uses
  System.Classes, Dialogs, Windows, Forms, SysUtils, Messages, Controls, System.DateUtils, System.StrUtils, Generics.Collections,
  Model.PlanilhaEntradaDIRECT, Control.Entregas, Control.PlanilhaEntradaDIRECT, Control.Sistema, FireDAC.Comp.Client, Common.ENum;

type
  Tthread_201010_importar_pedidos_direct = class(TThread)
  private
    { Private declarations }
    FEntregas: TEntregasControl;
    FPlanilha : TPlanilhaEntradaDIRECTControl;
    FPlanilhasCSV : TObjectList<TPlanilhaEntradaDIRECT>;
    sMensagem: String;
    FdPos: Double;
    bCancel : Boolean;
    iPos : Integer;
    iLinha : Integer;
    iTotal: Integer;
    fdEntregasInsert: TFDQuery;
    fdEntregasUpdate: TFDQuery;
  protected
    procedure Execute; override;
    procedure UpdateLog;
    procedure UpdateProgress;
    procedure TerminateProcess;
    procedure BeginProcesso;
    procedure SetupClassUpdate(FDQuery: TFDQuery);
    procedure SetupClassInsert(i: Integer);
  public
    FFile: String;
    iCodigoCliente: Integer;
  end;
  const
    TABLENAME = 'tbentregas';
    SQLINSERT = 'INSERT INTO ' + TABLENAME +
            '(NUM_NOSSONUMERO, COD_AGENTE, COD_ENTREGADOR, COD_CLIENTE, NUM_NF, NOM_CONSUMIDOR, DES_ENDERECO, DES_COMPLEMENTO, ' +
            'DES_BAIRRO, NOM_CIDADE, NUM_CEP, NUM_TELEFONE, DAT_EXPEDICAO, DAT_PREV_DISTRIBUICAO, QTD_VOLUMES, DAT_ATRIBUICAO, ' +
            'DAT_BAIXA, DOM_BAIXADO, DAT_PAGAMENTO, DOM_PAGO, DOM_FECHADO, COD_STATUS, DAT_ENTREGA, QTD_PESO_REAL, ' +
            'QTD_PESO_FRANQUIA, VAL_VERBA_FRANQUIA, VAL_ADVALOREM, VAL_PAGO_FRANQUIA, VAL_VERBA_ENTREGADOR, NUM_EXTRATO, ' +
            'QTD_DIAS_ATRASO, QTD_VOLUMES_EXTRA, VAL_VOLUMES_EXTRA, QTD_PESO_COBRADO, DES_TIPO_PESO, DAT_RECEBIDO, DOM_RECEBIDO, ' +
            'NUM_CTRC, NUM_MANIFESTO, DES_RASTREIO, NUM_LOTE_REMESSA, DES_RETORNO, DAT_CREDITO, DOM_CREDITO, NUM_CONTAINER, ' +
            'VAL_PRODUTO, QTD_ALTURA, QTD_LARGURA, QTD_COMPRIMENTO, COD_FEEDBACK, DAT_FEEDBACK, DOM_CONFERIDO, NUM_PEDIDO, ' +
            'COD_CLIENTE_EMPRESA, COD_AWB1) ' +
            'VALUES ' +
            '(:NUM_NOSSONUMERO, :COD_AGENTE, :COD_ENTREGADOR, :COD_CLIENTE, :NUM_NF, :NOM_CONSUMIDOR, :DES_ENDERECO, ' +
            ':DES_COMPLEMENTO, :DES_BAIRRO, :NOM_CIDADE, :NUM_CEP, :NUM_TELEFONE, :DAT_EXPEDICAO, :DAT_PREV_DISTRIBUICAO, ' +
            ':QTD_VOLUMES, :DAT_ATRIBUICAO, :DAT_BAIXA, :DOM_BAIXADO, :DAT_PAGAMENTO, :DOM_PAGO, :DOM_FECHADO, :COD_STATUS, ' +
            ':DAT_ENTREGA, :QTD_PESO_REAL, :QTD_PESO_FRANQUIA, :VAL_VERBA_FRANQUIA, :VAL_ADVALOREM, :VAL_PAGO_FRANQUIA, ' +
            ':VAL_VERBA_ENTREGADOR, :NUM_EXTRATO, :QTD_DIAS_ATRASO, :QTD_VOLUMES_EXTRA, :VAL_VOLUMES_EXTRA, :QTD_PESO_COBRADO, ' +
            ':DES_TIPO_PESO, :DAT_RECEBIDO, :DOM_RECEBIDO, :NUM_CTRC, :NUM_MANIFESTO, :DES_RASTREIO, :NUM_LOTE_REMESSA, ' +
            ':DES_RETORNO, :DAT_CREDITO, :DOM_CREDITO, :NUM_CONTAINER, :VAL_PRODUTO, :QTD_ALTURA, :QTD_LARGURA, :QTD_COMPRIMENTO, ' +
            ':COD_FEEDBACK, :DAT_FEEDBACK, :DOM_CONFERIDO, :NUM_PEDIDO, :COD_CLIENTE_EMPRESA, :COD_AWB1);';

    SQLUPDATE = 'UPDATE ' + TABLENAME + ' ' +
            'SET ' +
            'COD_AGENTE = :COD_AGENTE, COD_ENTREGADOR = :COD_ENTREGADOR, ' +
            'COD_CLIENTE = :COD_CLIENTE, NUM_NF = :NUM_NF, NOM_CONSUMIDOR = :NOM_CONSUMIDOR, DES_ENDERECO = :DES_ENDERECO, ' +
            'DES_COMPLEMENTO = :DES_COMPLEMENTO, DES_BAIRRO = :DES_BAIRRO, NOM_CIDADE = :NOM_CIDADE, NUM_CEP = :NUM_CEP, ' +
            'NUM_TELEFONE = :NUM_TELEFONE, DAT_EXPEDICAO = :DAT_EXPEDICAO, DAT_PREV_DISTRIBUICAO = :DAT_PREV_DISTRIBUICAO, ' +
            'QTD_VOLUMES = :QTD_VOLUMES, DAT_ATRIBUICAO = :DAT_ATRIBUICAO, DAT_BAIXA = :DAT_BAIXA, DOM_BAIXADO = :DOM_BAIXADO, ' +
            'DAT_PAGAMENTO = :DAT_PAGAMENTO, DOM_PAGO = :DOM_PAGO, DOM_FECHADO = :DOM_FECHADO, COD_STATUS = :COD_STATUS, ' +
            'DAT_ENTREGA = :DAT_ENTREGA, QTD_PESO_REAL = :QTD_PESO_REAL, QTD_PESO_FRANQUIA = :QTD_PESO_FRANQUIA, ' +
            'VAL_VERBA_FRANQUIA = :VAL_VERBA_FRANQUIA, VAL_ADVALOREM = :VAL_ADVALOREM, VAL_PAGO_FRANQUIA = :VAL_PAGO_FRANQUIA, ' +
            'VAL_VERBA_ENTREGADOR = :VAL_VERBA_ENTREGADOR, NUM_EXTRATO = :NUM_EXTRATO, QTD_DIAS_ATRASO = :QTD_DIAS_ATRASO, ' +
            'QTD_VOLUMES_EXTRA = :QTD_VOLUMES_EXTRA, VAL_VOLUMES_EXTRA = :VAL_VOLUMES_EXTRA, QTD_PESO_COBRADO = :QTD_PESO_COBRADO, ' +
            'DES_TIPO_PESO = :DES_TIPO_PESO, DAT_RECEBIDO = :DAT_RECEBIDO, DOM_RECEBIDO = :DOM_RECEBIDO, NUM_CTRC = :NUM_CTRC, ' +
            'NUM_MANIFESTO = :NUM_MANIFESTO, DES_RASTREIO = :DES_RASTREIO, NUM_LOTE_REMESSA = :NUM_LOTE_REMESSA, ' +
            'DES_RETORNO = :DES_RETORNO, DAT_CREDITO = :DAT_CREDITO, DOM_CREDITO = :DOM_CREDITO, NUM_CONTAINER = :NUM_CONTAINER, ' +
            'VAL_PRODUTO = :VAL_PRODUTO, QTD_ALTURA = :QTD_ALTURA, QTD_LARGURA = :QTD_LARGURA, QTD_COMPRIMENTO = :QTD_COMPRIMENTO, ' +
            'COD_FEEDBACK = :COD_FEEDBACK, DAT_FEEDBACK = :DAT_FEEDBACK, DOM_CONFERIDO = :DOM_CONFERIDO, ' +
            'NUM_PEDIDO = :NUM_PEDIDO, COD_CLIENTE_EMPRESA = :COD_CLIENTE_EMPRESA, COD_AWB1 = :COD_AWB1 ' +
            'WHERE ' +
            'NUM_NOSSONUMERO = :NUM_NOSSONUMERO;';

implementation

{ 
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);  

  and UpdateCaption could look like,

    procedure Tthread_201010_importar_pedidos_direct.UpdateCaption;
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

{ Tthread_201010_importar_pedidos_direct }

uses Common.Utils, Global.Parametros, View.ImportarPedidos;

procedure Tthread_201010_importar_pedidos_direct.BeginProcesso;
begin
  bCancel := False;
  view_ImportarPedidos.actCancelar.Enabled := True;
  view_ImportarPedidos.actFechar.Enabled := False;
  view_ImportarPedidos.actImportar.Enabled := False;
  view_ImportarPedidos.actAbrirArquivo.Enabled := False;
  view_ImportarPedidos.dxLayoutItem8.Visible := True;
  sMensagem := FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' iniciando importação do arquivo ' + FFile;
  UpdateLog;
end;

procedure Tthread_201010_importar_pedidos_direct.Execute;
begin
  { Place thread code here }
  try
    try
      Synchronize(BeginProcesso);

      FEntregas := TEntregasControl.Create;
      FPlanilha := TPlanilhaEntradaDIRECTControl.Create;
      FPlanilhasCSV := TObjectList<TPlanilhaEntradaDIRECT>.Create;
      FPlanilhasCSV := FPlanilha.GetPlanilha(FFile);

      if FPlanilhasCSV.Count > 0 then
      begin
        iPos := 0;
        FdPos := 0;
        iTotal := FPlanilhasCSV.Count;
        fdEntregasInsert := TSistemaControl.GetInstance.Conexao.ReturnQuery;;

      end;
    Except
      on E: Exception do
        begin
          Application.MessageBox(PChar('Classe: ' + E.ClassName + chr(13) + 'Mensagem: ' + E.Message), 'Erro', MB_OK + MB_ICONERROR);
          bCancel := True;
        end;
    end;
  finally

  end;
end;

procedure Tthread_201010_importar_pedidos_direct.SetupClassInsert(i: Integer);
begin
  FEntregas.Entregas.Distribuidor := 0;
  FEntregas.Entregas.Entregador := 0;
  FEntregas.Entregas.Cliente := FPlanilhasCSV[i].CodigoEmbarcador;
  FEntregas.Entregas.NN := FPlanilhasCSV[i].Remessa;
  FEntregas.Entregas.NF := FPlanilhasCSV[i].NF;
  FEntregas.Entregas.Consumidor := FPlanilhasCSV[i].NomeConsumidor;
  FEntregas.Entregas.Retorno := FPlanilhasCSV[i].Chave;
  FEntregas.Entregas.Endereco := '';
  FEntregas.Entregas.Complemento := '';
  FEntregas.Entregas.Bairro := FPlanilhasCSV[i].Bairro;
  FEntregas.Entregas.Cidade := FPlanilhasCSV[i].Municipio;
  FEntregas.Entregas.Cep := FPlanilhasCSV[i].CEP;
  FEntregas.Entregas.Telefone := '';
  FEntregas.Entregas.Expedicao := FPlanilhasCSV[i].DataRegistro;
  FEntregas.Entregas.Previsao := FPlanilhasCSV[i].DataChegadaLM + 1;
  FEntregas.Entregas.Status := 909;
  FEntregas.Entregas.Baixa := 0;
  FEntregas.Entregas.Entrega  := 0;
  FEntregas.Entregas.Baixado := 'N';
  FEntregas.Entregas.Atraso := 0;
  FEntregas.Entregas.VerbaEntregador := 0;
  FEntregas.Entregas.VerbaFranquia := 0;
  if FPlanilhasCSV[i].PesoCubado > FPlanilhasCSV[i].PesoNominal then
  begin
    FEntregas.Entregas.PesoReal := FPlanilhasCSV[i].PesoCubado;
  end
  else
  begin
    FEntregas.Entregas.PesoReal := FPlanilhasCSV[i].PesoNominal;
  end;
  FEntregas.Entregas.PesoCobrado := FPlanilhasCSV[i].PesoNominal;
  FEntregas.Entregas.Volumes := FPlanilhasCSV[i].Volumes;
  FEntregas.Entregas.VolumesExtra := 0;
  FEntregas.Entregas.ValorVolumes := 0;
  FEntregas.Entregas.Container := '0';
  FEntregas.Entregas.ValorProduto := FPlanilhasCSV[i].Valor;
  FEntregas.Entregas.Atribuicao := 0;
  FEntregas.Entregas.Altura := 0;
  FEntregas.Entregas.Largura := 0;
  FEntregas.Entregas.Comprimento := 0;
  FEntregas.Entregas.Rastreio := '> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' inserido por importação por ' +
                                Global.Parametros.pUser_Name;
  FEntregas.Entregas.Pedido := FPlanilhasCSV[i].Pedido;
  FEntregas.Entregas.CodCliente := iCodigoCliente;
  FEntregas.Entregas.AWB1 := FPlanilhasCSV[i].AWB1;
end;

procedure Tthread_201010_importar_pedidos_direct.SetupClassUpdate(FDQuery: TFDQuery);
begin
  FEntregas.Entregas.Distribuidor := FDQuery.FieldByName('COD_AGENTE').AsInteger;
  FEntregas.Entregas.Entregador := FDQuery.FieldByName('COD_ENTREGADOR').AsInteger;
  FEntregas.Entregas.NN := FDQuery.FieldByName('NUM_NOSSONUMERO').AsString;
  FEntregas.Entregas.NF := FDQuery.FieldByName('NUM_NF').AsString;
  FEntregas.Entregas.Cliente := FDQuery.FieldByName('COD_CLIENTE').AsInteger;
  FEntregas.Entregas.Consumidor := FDQuery.FieldByName('NOM_CONSUMIDOR').AsString;
  FEntregas.Entregas.Endereco := FDQuery.FieldByName('DES_ENDERECO').AsString;
  FEntregas.Entregas.Complemento := FDQuery.FieldByName('DES_COMPLEMENTO').AsString;
  FEntregas.Entregas.Bairro := FDQuery.FieldByName('DES_BAIRRO').AsString;
  FEntregas.Entregas.Cidade :=  FDQuery.FieldByName('NOM_CIDADE').AsString;
  FEntregas.Entregas.Cep := FDQuery.FieldByName('NUM_CEP').AsString;
  FEntregas.Entregas.Telefone := FDQuery.FieldByName('NUM_TELEFONE').AsString ;
  FEntregas.Entregas.Expedicao := FDQuery.FieldByName('DAT_EXPEDICAO').AsDateTime;
  FEntregas.Entregas.Previsao := FDQuery.FieldByName('DAT_PREV_DISTRIBUICAO').AsDateTime;
  FEntregas.Entregas.Status := FDQuery.FieldByName('COD_STATUS').AsInteger;
  FEntregas.Entregas.Baixado := FDQuery.FieldByName('DOM_BAIXADO').AsString;
  FEntregas.Entregas.VerbaEntregador := FDQuery.FieldByName('VAL_VERBA_ENTREGADOR').AsFloat;
  FEntregas.Entregas.VerbaFranquia := FDQuery.FieldByName('VAL_VERBA_FRANQUIA').AsFloat;
  FEntregas.Entregas.PesoReal := FDQuery.FieldByName('QTD_PESO_REAL').AsFloat;
  FEntregas.Entregas.PesoCobrado := FDQuery.FieldByName('QTD_PESO_COBRADO').AsFloat;
  FEntregas.Entregas.Volumes := FDQuery.FieldByName('QTD_VOLUMES').AsInteger;
  FEntregas.Entregas.VolumesExtra := FDQuery.FieldByName('QTD_VOLUMES_EXTRA').AsFloat;
  FEntregas.Entregas.ValorVolumes := FDQuery.FieldByName('VAL_VOLUMES_EXTRA').AsFloat;
  FEntregas.Entregas.Atraso := FDQuery.FieldByName('QTD_DIAS_ATRASO').AsInteger;
  FEntregas.Entregas.Container := FDQuery.FieldByName('NUM_CONTAINER').AsString;
  FEntregas.Entregas.ValorProduto := FDQuery.FieldByName('VAL_PRODUTO').AsFloat;
  FEntregas.Entregas.Atribuicao := FDQuery.FieldByName('DAT_ATRIBUICAO').AsDateTime;
  FEntregas.Entregas.Altura := FDQuery.FieldByName('QTD_ALTURA').AsInteger;
  FEntregas.Entregas.Largura := FDQuery.FieldByName('QTD_LARGURA').AsInteger;
  FEntregas.Entregas.Comprimento := FDQuery.FieldByName('QTD_COMPRIMENTO').AsInteger;
  FEntregas.Entregas.Rastreio := FDQuery.FieldByName('DES_RASTREIO').AsString;
  FEntregas.Entregas.Pedido := FDQuery.FieldByName('NUM_PEDIDO').AsString;
  FEntregas.Entregas.Retorno := FDQuery.FieldByName('DES_RETORNO').AsString;
  FEntregas.Entregas.CodCliente := FDQuery.FieldByName('COD_CLIENTE_EMPRESA').AsInteger;
  FEntregas.Entregas.AWB1 := FDQuery.FieldByName('COD_AWB1').AsString;
end;

procedure Tthread_201010_importar_pedidos_direct.TerminateProcess;
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

procedure Tthread_201010_importar_pedidos_direct.UpdateLog;
begin
  view_ImportarPedidos.memLOG.Lines.Add(sMensagem);
  view_ImportarPedidos.memLOG.Lines.Add('');
  iLinha := view_ImportarPedidos.memLOG.Lines.Count - 1;
  view_ImportarPedidos.memLOG.Refresh;
end;

procedure Tthread_201010_importar_pedidos_direct.UpdateProgress;
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

end.
