unit Thread._201010_importar_pedidos_direct;

interface

uses
  System.Classes, Dialogs, Windows, Forms, SysUtils, Messages, Controls, System.DateUtils, System.StrUtils, Generics.Collections,
  Model.PlanilhaEntradaDIRECT, Control.Entregas, Control.PlanilhaEntradaDIRECT, Control.Sistema, FireDAC.Comp.Client, Common.ENum,
  FireDAC.Comp.DataSet, Data.DB, Control.ControleAWB;

type
  Tthread_201010_importar_pedidos_direct = class(TThread)
  private
    { Private declarations }
    FEntregas: TEntregasControl;
    FPlanilha : TPlanilhaEntradaDIRECTControl;
    FPlanilhasCSV : TObjectList<TPlanilhaEntradaDIRECT>;
    FControleAWB: TControleAWBControl;
    sMensagem: String;
    FdPos: Double;
    iLinha : Integer;
    iPosition: Integer;
    fdEntregas: TFDQuery;
    fdEntregasInsert: TFDQuery;
    fdEntregasUpdate: TFDQuery;
    fdControleAWB: TFDQuery;
    iCountInsert : Integer;
    iCountUpdate : Integer;
    iCountAWB: Integer;
  protected
    procedure Execute; override;
    procedure UpdateLog;
    procedure UpdateProgress;
    procedure TerminateProcess;
    procedure BeginProcesso;
    procedure SetupClassUpdate(FDQuery: TFDQuery);
    procedure SetupClassInsert(i: Integer);
    procedure SetupQueryInsert();
    procedure SetupQueryUpdate();
    procedure SaveInsert(iCount: Integer);
    procedure SaveUpdate(iCount: Integer);
    procedure SaveAWB(iCount: Integer);
    procedure SetupQueryAWB(sRemessa: String; sAWB1: String; sAWB2: String; sCEP: String; sOperacao: String; iTipo: Integer; dPeso: Double);
  public
    FFile: String;
    iCodigoCliente: Integer;
    bCancel : Boolean;
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
            'COD_CLIENTE_EMPRESA) ' +
            'VALUES ' +
            '(:NUM_NOSSONUMERO, :COD_AGENTE, :COD_ENTREGADOR, :COD_CLIENTE, :NUM_NF, :NOM_CONSUMIDOR, :DES_ENDERECO, ' +
            ':DES_COMPLEMENTO, :DES_BAIRRO, :NOM_CIDADE, :NUM_CEP, :NUM_TELEFONE, :DAT_EXPEDICAO, :DAT_PREV_DISTRIBUICAO, ' +
            ':QTD_VOLUMES, :DAT_ATRIBUICAO, :DAT_BAIXA, :DOM_BAIXADO, :DAT_PAGAMENTO, :DOM_PAGO, :DOM_FECHADO, :COD_STATUS, ' +
            ':DAT_ENTREGA, :QTD_PESO_REAL, :QTD_PESO_FRANQUIA, :VAL_VERBA_FRANQUIA, :VAL_ADVALOREM, :VAL_PAGO_FRANQUIA, ' +
            ':VAL_VERBA_ENTREGADOR, :NUM_EXTRATO, :QTD_DIAS_ATRASO, :QTD_VOLUMES_EXTRA, :VAL_VOLUMES_EXTRA, :QTD_PESO_COBRADO, ' +
            ':DES_TIPO_PESO, :DAT_RECEBIDO, :DOM_RECEBIDO, :NUM_CTRC, :NUM_MANIFESTO, :DES_RASTREIO, :NUM_LOTE_REMESSA, ' +
            ':DES_RETORNO, :DAT_CREDITO, :DOM_CREDITO, :NUM_CONTAINER, :VAL_PRODUTO, :QTD_ALTURA, :QTD_LARGURA, :QTD_COMPRIMENTO, ' +
            ':COD_FEEDBACK, :DAT_FEEDBACK, :DOM_CONFERIDO, :NUM_PEDIDO, :COD_CLIENTE_EMPRESA);';

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
            'NUM_PEDIDO = :NUM_PEDIDO, COD_CLIENTE_EMPRESA = :COD_CLIENTE_EMPRESA ' +
            'WHERE ' +
            'NUM_NOSSONUMERO = :NUM_NOSSONUMERO;';
    SQLAWB = 'insert into expressas_controle_awb (id_awb, num_remessa, cod_awb1, cod_awb2, num_cep, cod_operacao, cod_tipo, qtd_peso)' +
             'values ' +
             '(:id_awb, :num_remessa, :cod_awb1, :cod_awb2, :num_cep, :cod_operacao, :cod_tipo, :qtd_peso);';

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
  sMensagem := FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' tratando os dados da planilha. Aguarde...';
  UpdateLog;
end;

procedure Tthread_201010_importar_pedidos_direct.Execute;
var
  aParam: Array of variant;
  iPos : Integer;
  iTotal: Integer;
  fdQuery: TFDQuery;
  sCEP: String;
  sOperacao: String;
  dPeso: Double;
  iTipo: Integer;
begin
  { Place thread code here }
  try
    try
      Synchronize(BeginProcesso);
      FEntregas := TEntregasControl.Create;
      FPlanilha := TPlanilhaEntradaDIRECTControl.Create;
      FControleAWB := TControleAWBControl.Create;
      FPlanilhasCSV := TObjectList<TPlanilhaEntradaDIRECT>.Create;
      Screen.Cursor := crHourGlass;
      FPlanilhasCSV := FPlanilha.GetPlanilha(FFile);
      Screen.Cursor := crDefault;
      sMensagem := FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' importando os dados. Aguarde...';
      Synchronize(UpdateLog);
      iCountInsert := 0;
      iCountUpdate := 0;
      iCountAWB := 0;
      if FPlanilhasCSV.Count > 0 then
      begin
        iPos := 0;
        FdPos := 0;
        iTotal := FPlanilhasCSV.Count;
        fdEntregas := TSistemaControl.GetInstance.Conexao.ReturnQuery;
        fdEntregasInsert := TSistemaControl.GetInstance.Conexao.ReturnQuery;
        fdEntregasUpdate := TSistemaControl.GetInstance.Conexao.ReturnQuery;
        fdControleAWB := TSistemaControl.GetInstance.Conexao.ReturnQuery;
        fdQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
        fdEntregasInsert.SQL.Text := SQLINSERT;
        fdEntregasUpdate.SQL.Text := SQLUPDATE;
        fdControleAWB.SQL.Text := SQLAWB;
        for iPos := 0 to Pred(iTotal) do
        begin
          SetLength(aParam,2);
          aParam[0] := 'NN';
          aParam[1] := Trim(FPlanilhasCSV[iPos].Remessa);
          fdEntregas := FEntregas.Localizar(aParam);
          Finalize(aParam);
          if fdEntregas.IsEmpty then
          begin
            SetupClassInsert(iPos);
            Inc(iCountInsert);
            FEntregas.Entregas.Status := 909;
            FEntregas.Entregas.Rastreio := '> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' importado por ' +
                                          Global.Parametros.pUser_Name;
            SetupQueryInsert;
          end
          else
          begin
            SetupClassUpdate(fdEntregas);
            Inc(iCountUpdate);
            FEntregas.Entregas.Status := 909;
            FEntregas.Entregas.Rastreio := FEntregas.Entregas.Rastreio + #13 +
                                          '> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' atualizado por importação por ' +
                                          Global.Parametros.pUser_Name;
            SetupQueryUpdate;
          end;
          fdEntregas.Close;
          sOperacao := '';
          dPeso := 0;
          iTipo := 1;
          if Pos('- TD -', FPlanilhasCSV[iPos].Operacao) > 0 then
          begin
            sOperacao := 'TD';
          end
          else
          begin
            iTipo := 2;
            sOperacao := 'TC';
          end;
          if FPlanilhasCSV[iPos].PesoCubado > FPlanilhasCSV[iPos].PesoNominal then
          begin
            dPeso := FPlanilhasCSV[iPos].PesoCubado;
          end
          else
          begin
            dPeso := FPlanilhasCSV[iPos].PesoNominal;
          end;
          SetLength(aParam, 3);
          aParam[0] := 'REMESSAAWB1';
          aParam[1] := FPlanilhasCSV[iPos].Remessa;
          aParam[2] := FPlanilhasCSV[iPos].AWB1;
          fdQuery := FControleAWB.Localizar(aParam);
          Finalize(aParam);


          if fdQuery.IsEmpty then
          begin
            Inc(iCountAWB);
            sCEP := ReplaceStr(FPlanilhasCSV[iPos].CEP,'-','');
            SetupQueryAWB(FPlanilhasCSV[iPos].Remessa, FPlanilhasCSV[iPos].AWB1, FPlanilhasCSV[iPos].AWB2, sCEP, sOperacao, iTipo, dPeso);
          end;
          iPosition := iPos + 1;
          FdPos := (iPosition / iTotal) * 100;
          if not(Self.Terminated) then
          begin
            Synchronize(UpdateProgress);
          end
          else
          begin
            Abort;
          end;
          fdEntregas.Close;
        end;

        sMensagem := FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' salvando no banco de dados. Aguarde...';
        Synchronize(UpdateLog);
        Synchronize(procedure begin Screen.Cursor := crHourGlass end);
        if iCountInsert > 0 then SaveInsert(iCountInsert);
        if iCountUpdate > 0 then SaveUpdate(iCountUpdate);
        if iCountAWB > 0 then SaveAWB(iCountAWB);

        fdEntregasInsert.Connection.Close;
        fdEntregasUpdate.Connection.Close;
        fdControleAWB.Connection.Close;
        fdEntregasInsert.Free;
        fdEntregasUpdate.Free;
        fdControleAWB.Free;

        Synchronize(procedure begin Screen.Cursor := crDefault end);
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
      Synchronize(UpdateLog);
      Application.MessageBox('Importação cancelada!', 'Importação de Entregas', MB_OK + MB_ICONWARNING);
    end
    else
    begin
      sMensagem := FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' importação concluída com sucesso';
      Synchronize(UpdateLog);
      Application.MessageBox('Importação concluída com sucesso!', 'Importação de Entregas', MB_OK + MB_ICONINFORMATION);
    end;
    Synchronize(TerminateProcess);
    FEntregas.Free;
    FPlanilha.Free;
    FPlanilhasCSV.Free;
    FControleAWB.Free;
    fdEntregas.Free;
  end;
end;

procedure Tthread_201010_importar_pedidos_direct.SaveAWB(iCount: Integer);
begin
  fdControleAWB.Execute(iCount,0);
end;

procedure Tthread_201010_importar_pedidos_direct.SaveInsert(iCount: Integer);
begin
  fdEntregasInsert.Execute(iCount, 0);
end;

procedure Tthread_201010_importar_pedidos_direct.SaveUpdate(iCount: Integer);
begin
  fdEntregasUpdate.Execute(iCount, 0);
end;

procedure Tthread_201010_importar_pedidos_direct.SetupClassInsert(i: Integer);
begin
  FEntregas.Entregas.NN := FPlanilhasCSV[i].Remessa;
  FEntregas.Entregas.Distribuidor := 0;
  FEntregas.Entregas.Entregador := 0;
  FEntregas.Entregas.Cliente := FPlanilhasCSV[i].CodigoEmbarcador;
  FEntregas.Entregas.NF := FPlanilhasCSV[i].NF;
  FEntregas.Entregas.Consumidor := FPlanilhasCSV[i].NomeConsumidor;
  FEntregas.Entregas.Endereco := '';
  FEntregas.Entregas.Complemento := '';
  FEntregas.Entregas.Bairro := FPlanilhasCSV[i].Bairro;
  FEntregas.Entregas.Cidade := FPlanilhasCSV[i].Municipio;
  FEntregas.Entregas.Cep := FPlanilhasCSV[i].CEP;
  FEntregas.Entregas.Telefone := '';
  FEntregas.Entregas.Expedicao := FPlanilhasCSV[i].DataRegistro;
  FEntregas.Entregas.Previsao := IncDay(FPlanilhasCSV[i].DataChegadaLM, 1);
  FEntregas.Entregas.Volumes := FPlanilhasCSV[i].Volumes;
  FEntregas.Entregas.Atribuicao := StrToDate('30/12/1899');
  FEntregas.Entregas.Baixa := StrToDate('30/12/1899');
  FEntregas.Entregas.Baixado := 'N';
  FEntregas.Entregas.Pagamento := StrToDate('30/12/1899');
  FEntregas.Entregas.Pago := 'N';
  FEntregas.Entregas.Fechado := 'N';
  FEntregas.Entregas.Status := 0;
  FEntregas.Entregas.Entrega := StrToDate('30/12/1899');
  if FPlanilhasCSV[i].PesoCubado > FPlanilhasCSV[i].PesoNominal then
  begin
    FEntregas.Entregas.PesoReal := FPlanilhasCSV[i].PesoCubado;
    FEntregas.Entregas.TipoPeso := 'CUBADO';
  end
  else
  begin
    FEntregas.Entregas.PesoReal := FPlanilhasCSV[i].PesoNominal;
    FEntregas.Entregas.TipoPeso := 'NOMINAL';
  end;
  FEntregas.Entregas.PesoFranquia := 0;
  FEntregas.Entregas.Advalorem := 0;
  FEntregas.Entregas.PagoFranquia := 0;
  FEntregas.Entregas.VerbaEntregador := 0;
  FEntregas.Entregas.Extrato := '0';
  FEntregas.Entregas.Atraso := 0;
  FEntregas.Entregas.VolumesExtra := 0;
  FEntregas.Entregas.ValorVolumes := 0;
  FEntregas.Entregas.PesoCobrado := FPlanilhasCSV[i].PesoNominal;
  FEntregas.Entregas.Recebimento := StrToDate('30/12/1899');
  FEntregas.Entregas.Recebido := 'N';
  FEntregas.Entregas.CTRC := 0;
  FEntregas.Entregas.Manifesto := 0;
  FEntregas.Entregas.Rastreio := '';
  FEntregas.Entregas.VerbaFranquia := 0;
  FEntregas.Entregas.Lote := 0;
  FEntregas.Entregas.Retorno := FPlanilhasCSV[i].Chave;
  FEntregas.Entregas.Credito := StrToDate('30/12/1899');;
  FEntregas.Entregas.Creditado := 'N';
  FEntregas.Entregas.Container := '0';
  FEntregas.Entregas.ValorProduto := FPlanilhasCSV[i].Valor;
  FEntregas.Entregas.Altura := 0;
  FEntregas.Entregas.Largura := 0;
  FEntregas.Entregas.Comprimento := 0;
  FEntregas.Entregas.CodigoFeedback := 0;
  FEntregas.Entregas.DataFeedback := StrToDate('30/12/1899');
  FEntregas.Entregas.Conferido := 0;
  FEntregas.Entregas.Pedido := FPlanilhasCSV[i].Pedido;
  FEntregas.Entregas.CodCliente := iCodigoCliente;
end;

procedure Tthread_201010_importar_pedidos_direct.SetupClassUpdate(FDQuery: TFDQuery);
begin
  FEntregas.Entregas.NN := FDQuery.FieldByName('NUM_NOSSONUMERO').AsString;
  FEntregas.Entregas.Distribuidor := FDQuery.FieldByName('COD_AGENTE').AsInteger;
  FEntregas.Entregas.Entregador := FDQuery.FieldByName('COD_ENTREGADOR').AsInteger;
  FEntregas.Entregas.Cliente := FDQuery.FieldByName('COD_CLIENTE').AsInteger;
  FEntregas.Entregas.NF := FDQuery.FieldByName('NUM_NF').AsString;
  FEntregas.Entregas.Consumidor := FDQuery.FieldByName('NOM_CONSUMIDOR').AsString;
  FEntregas.Entregas.Endereco := FDQuery.FieldByName('DES_ENDERECO').AsString;
  FEntregas.Entregas.Complemento := FDQuery.FieldByName('DES_COMPLEMENTO').AsString;
  FEntregas.Entregas.Bairro := FDQuery.FieldByName('DES_BAIRRO').AsString;
  FEntregas.Entregas.Cidade := FDQuery.FieldByName('NOM_CIDADE').AsString;
  FEntregas.Entregas.Cep := FDQuery.FieldByName('NUM_CEP').AsString;
  FEntregas.Entregas.Telefone := FDQuery.FieldByName('NUM_TELEFONE').AsString;
  FEntregas.Entregas.Expedicao := FDQuery.FieldByName('DAT_EXPEDICAO').AsDateTime;
  FEntregas.Entregas.Previsao := FDQuery.FieldByName('DAT_PREV_DISTRIBUICAO').AsDateTime;
  FEntregas.Entregas.Volumes := FDQuery.FieldByName('QTD_VOLUMES').AsInteger;
  FEntregas.Entregas.Atribuicao := FDQuery.FieldByName('DAT_ATRIBUICAO').AsDateTime;
  FEntregas.Entregas.Baixa := FDQuery.FieldByName('DAT_BAIXA').AsDateTime;
  FEntregas.Entregas.Baixado := FDQuery.FieldByName('DOM_BAIXADO').AsString;
  FEntregas.Entregas.Pagamento := FDQuery.FieldByName('DAT_PAGAMENTO').AsDateTime;
  FEntregas.Entregas.Pago := FDQuery.FieldByName('DOM_PAGO').AsString;
  FEntregas.Entregas.Fechado := FDQuery.FieldByName('DOM_FECHADO').AsString;
  FEntregas.Entregas.Status := FDQuery.FieldByName('COD_STATUS').AsInteger;
  FEntregas.Entregas.Entrega := FDQuery.FieldByName('DAT_ENTREGA').AsDateTime;
  FEntregas.Entregas.PesoReal := FDQuery.FieldByName('QTD_PESO_REAL').AsFloat;
  FEntregas.Entregas.PesoFranquia := FDQuery.FieldByName('QTD_PESO_FRANQUIA').AsFloat;
  FEntregas.Entregas.VerbaFranquia := FDQuery.FieldByName('VAL_VERBA_FRANQUIA').AsFloat;
  FEntregas.Entregas.Advalorem := FDQuery.FieldByName('VAL_ADVALOREM').AsFloat;
  FEntregas.Entregas.PagoFranquia := FDQuery.FieldByName('VAL_PAGO_FRANQUIA').AsFloat;
  FEntregas.Entregas.VerbaEntregador := FDQuery.FieldByName('VAL_VERBA_ENTREGADOR').AsFloat;
  FEntregas.Entregas.Extrato := FDQuery.FieldByName('NUM_EXTRATO').AsString;
  FEntregas.Entregas.Atraso := FDQuery.FieldByName('QTD_DIAS_ATRASO').AsInteger;
  FEntregas.Entregas.VolumesExtra := FDQuery.FieldByName('QTD_VOLUMES_EXTRA').AsFloat;
  FEntregas.Entregas.ValorVolumes := FDQuery.FieldByName('VAL_VOLUMES_EXTRA').AsFloat;
  FEntregas.Entregas.PesoCobrado := FDQuery.FieldByName('QTD_PESO_COBRADO').AsFloat;
  FEntregas.Entregas.TipoPeso := FDQuery.FieldByName('DES_TIPO_PESO').AsString;
  FEntregas.Entregas.Recebimento := FDQuery.FieldByName('DAT_RECEBIDO').AsDateTime;
  FEntregas.Entregas.Recebido := FDQuery.FieldByName('DOM_RECEBIDO').AsString;
  FEntregas.Entregas.CTRC := FDQuery.FieldByName('NUM_CTRC').AsInteger;
  FEntregas.Entregas.Manifesto := FDQuery.FieldByName('NUM_MANIFESTO').AsInteger;
  FEntregas.Entregas.Rastreio := FDQuery.FieldByName('DES_RASTREIO').AsString;
  FEntregas.Entregas.VerbaFranquia := FDQuery.FieldByName('VAL_VERBA_FRANQUIA').AsFloat;
  FEntregas.Entregas.Lote := FDQuery.FieldByName('NUM_LOTE_REMESSA').AsInteger;
  FEntregas.Entregas.Retorno := FDQuery.FieldByName('DES_RETORNO').AsString;
  FEntregas.Entregas.Credito := FDQuery.FieldByName('DAT_CREDITO').AsDateTime;
  FEntregas.Entregas.Creditado := FDQuery.FieldByName('DOM_CREDITO').AsString;
  FEntregas.Entregas.Container := FDQuery.FieldByName('NUM_CONTAINER').AsString;
  FEntregas.Entregas.ValorProduto := FDQuery.FieldByName('VAL_PRODUTO').AsFloat;
  FEntregas.Entregas.Altura := FDQuery.FieldByName('QTD_ALTURA').AsInteger;
  FEntregas.Entregas.Largura := FDQuery.FieldByName('QTD_LARGURA').AsInteger;
  FEntregas.Entregas.Comprimento := FDQuery.FieldByName('QTD_COMPRIMENTO').AsInteger;
  FEntregas.Entregas.CodigoFeedback := FDQuery.FieldByName('COD_FEEDBACK').AsInteger;
  FEntregas.Entregas.DataFeedback := FDQuery.FieldByName('DAT_FEEDBACK').AsDateTime;
  FEntregas.Entregas.Conferido := FDQuery.FieldByName('DOM_CONFERIDO').AsInteger;
  FEntregas.Entregas.Pedido := FDQuery.FieldByName('NUM_PEDIDO').AsString;
  FEntregas.Entregas.CodCliente := FDQuery.FieldByName('COD_CLIENTE_EMPRESA').AsInteger;
end;

procedure Tthread_201010_importar_pedidos_direct.SetupQueryInsert;
begin
  fdEntregasInsert.Params.ArraySize := iCountInsert;
  fdEntregasInsert.ParamByName('NUM_NOSSONUMERO').AsStrings[Pred(iCountInsert)]:= FEntregas.Entregas.NN;
  fdEntregasInsert.ParamByName('COD_AGENTE').AsIntegers[Pred(iCountInsert)]:= FEntregas.Entregas.Distribuidor;
  fdEntregasInsert.ParamByName('COD_ENTREGADOR').AsIntegers[Pred(iCountInsert)] := FEntregas.Entregas.Entregador;
  fdEntregasInsert.ParamByName('COD_CLIENTE').AsIntegers[Pred(iCountInsert)] := FEntregas.Entregas.Cliente;
  fdEntregasInsert.ParamByName('NUM_NF').AsStrings[Pred(iCountInsert)] := FEntregas.Entregas.NF;
  fdEntregasInsert.ParamByName('NOM_CONSUMIDOR').AsStrings[Pred(iCountInsert)] := FEntregas.Entregas.Consumidor;
  fdEntregasInsert.ParamByName('DES_ENDERECO').AsStrings[Pred(iCountInsert)] := FEntregas.Entregas.Endereco;
  fdEntregasInsert.ParamByName('DES_COMPLEMENTO').AsStrings[Pred(iCountInsert)] := FEntregas.Entregas.Complemento;
  fdEntregasInsert.ParamByName('DES_BAIRRO').AsStrings[Pred(iCountInsert)] := FEntregas.Entregas.Bairro;
  fdEntregasInsert.ParamByName('NOM_CIDADE').AsStrings[Pred(iCountInsert)] := FEntregas.Entregas.Cidade;
  fdEntregasInsert.ParamByName('NUM_CEP').AsStrings[Pred(iCountInsert)] := FEntregas.Entregas.Cep;
  fdEntregasInsert.ParamByName('NUM_TELEFONE').AsStrings[Pred(iCountInsert)] := FEntregas.Entregas.Telefone;
  fdEntregasInsert.ParamByName('DAT_EXPEDICAO').AsDateTimes[Pred(iCountInsert)] := FEntregas.Entregas.Expedicao;
  fdEntregasInsert.ParamByName('DAT_PREV_DISTRIBUICAO').AsDateTimes[Pred(iCountInsert)] := FEntregas.Entregas.Previsao;
  fdEntregasInsert.ParamByName('QTD_VOLUMES').AsIntegers[Pred(iCountInsert)] := FEntregas.Entregas.Volumes;
  fdEntregasInsert.ParamByName('DAT_ATRIBUICAO').AsDateTimes[Pred(iCountInsert)] := FEntregas.Entregas.Atribuicao;
  fdEntregasInsert.ParamByName('DAT_BAIXA').AsDates[Pred(iCountInsert)] := FEntregas.Entregas.Baixa;
  fdEntregasInsert.ParamByName('DOM_BAIXADO').AsStrings[Pred(iCountInsert)] := FEntregas.Entregas.Baixado;
  fdEntregasInsert.ParamByName('DAT_PAGAMENTO').AsDates[Pred(iCountInsert)] := FEntregas.Entregas.Pagamento;
  fdEntregasInsert.ParamByName('DOM_PAGO').AsStrings[Pred(iCountInsert)] := FEntregas.Entregas.Pago;
  fdEntregasInsert.ParamByName('DOM_FECHADO').AsStrings[Pred(iCountInsert)] := FEntregas.Entregas.Fechado;
  fdEntregasInsert.ParamByName('COD_STATUS').AsIntegers[Pred(iCountInsert)] := FEntregas.Entregas.Status;
  fdEntregasInsert.ParamByName('DAT_ENTREGA').AsDates[Pred(iCountInsert)] := FEntregas.Entregas.Entrega;
  fdEntregasInsert.ParamByName('QTD_PESO_REAL').AsFloats[Pred(iCountInsert)] := FEntregas.Entregas.PesoReal;
  fdEntregasInsert.ParamByName('QTD_PESO_FRANQUIA').AsFloats[Pred(iCountInsert)] := FEntregas.Entregas.PesoFranquia;
  fdEntregasInsert.ParamByName('VAL_VERBA_FRANQUIA').AsFloats[Pred(iCountInsert)] := FEntregas.Entregas.VerbaFranquia;
  fdEntregasInsert.ParamByName('VAL_ADVALOREM').AsFloats[Pred(iCountInsert)] := FEntregas.Entregas.Advalorem;
  fdEntregasInsert.ParamByName('VAL_PAGO_FRANQUIA').AsFloats[Pred(iCountInsert)] := FEntregas.Entregas.PagoFranquia;
  fdEntregasInsert.ParamByName('VAL_VERBA_ENTREGADOR').AsFloats[Pred(iCountInsert)] := FEntregas.Entregas.VerbaEntregador;
  fdEntregasInsert.ParamByName('NUM_EXTRATO').AsStrings[Pred(iCountInsert)] := FEntregas.Entregas.Extrato;
  fdEntregasInsert.ParamByName('QTD_DIAS_ATRASO').AsIntegers[Pred(iCountInsert)] := FEntregas.Entregas.Atraso;
  fdEntregasInsert.ParamByName('QTD_VOLUMES_EXTRA').AsFloats[Pred(iCountInsert)] := FEntregas.Entregas.VolumesExtra;
  fdEntregasInsert.ParamByName('VAL_VOLUMES_EXTRA').AsFloats[Pred(iCountInsert)] := FEntregas.Entregas.ValorVolumes;
  fdEntregasInsert.ParamByName('QTD_PESO_COBRADO').AsFloats[Pred(iCountInsert)] := FEntregas.Entregas.PesoCobrado;
  fdEntregasInsert.ParamByName('DES_TIPO_PESO').AsStrings[Pred(iCountInsert)] := FEntregas.Entregas.TipoPeso;
  fdEntregasInsert.ParamByName('DAT_RECEBIDO').AsDates[Pred(iCountInsert)] := FEntregas.Entregas.Recebimento;
  fdEntregasInsert.ParamByName('DOM_RECEBIDO').AsStrings[Pred(iCountInsert)] := FEntregas.Entregas.Recebido;
  fdEntregasInsert.ParamByName('NUM_CTRC').AsIntegers[Pred(iCountInsert)] := FEntregas.Entregas.CTRC;
  fdEntregasInsert.ParamByName('NUM_MANIFESTO').AsIntegers[Pred(iCountInsert)] := FEntregas.Entregas.Manifesto;
  fdEntregasInsert.ParamByName('DES_RASTREIO').AsStrings[Pred(iCountInsert)] := FEntregas.Entregas.Rastreio;
  fdEntregasInsert.ParamByName('VAL_VERBA_FRANQUIA').AsFloats[Pred(iCountInsert)] := FEntregas.Entregas.VerbaFranquia;
  fdEntregasInsert.ParamByName('NUM_LOTE_REMESSA').AsIntegers[Pred(iCountInsert)] := FEntregas.Entregas.Lote;
  fdEntregasInsert.ParamByName('DES_RETORNO').AsStrings[Pred(iCountInsert)] := FEntregas.Entregas.Retorno;
  fdEntregasInsert.ParamByName('DAT_CREDITO').AsDateTimes[Pred(iCountInsert)] := FEntregas.Entregas.Credito;
  fdEntregasInsert.ParamByName('DOM_CREDITO').AsStrings[Pred(iCountInsert)] := FEntregas.Entregas.Creditado;
  fdEntregasInsert.ParamByName('NUM_CONTAINER').AsStrings[Pred(iCountInsert)] := FEntregas.Entregas.Container;
  fdEntregasInsert.ParamByName('VAL_PRODUTO').AsFloats[Pred(iCountInsert)] := FEntregas.Entregas.ValorProduto;
  fdEntregasInsert.ParamByName('QTD_ALTURA').AsIntegers[Pred(iCountInsert)] := FEntregas.Entregas.Altura;
  fdEntregasInsert.ParamByName('QTD_LARGURA').AsIntegers[Pred(iCountInsert)] := FEntregas.Entregas.Largura;
  fdEntregasInsert.ParamByName('QTD_COMPRIMENTO').AsIntegers[Pred(iCountInsert)] := FEntregas.Entregas.Comprimento;
  fdEntregasInsert.ParamByName('COD_FEEDBACK').AsIntegers[Pred(iCountInsert)] := FEntregas.Entregas.CodigoFeedback;
  fdEntregasInsert.ParamByName('DAT_FEEDBACK').AsDateTimes[Pred(iCountInsert)] := FEntregas.Entregas.DataFeedback;
  fdEntregasInsert.ParamByName('DOM_CONFERIDO').AsIntegers[Pred(iCountInsert)] := FEntregas.Entregas.Conferido;
  fdEntregasInsert.ParamByName('NUM_PEDIDO').AsStrings[Pred(iCountInsert)] := FEntregas.Entregas.Pedido;
  fdEntregasInsert.ParamByName('COD_CLIENTE_EMPRESA').AsIntegers[Pred(iCountInsert)] := FEntregas.Entregas.CodCliente;
end;

procedure Tthread_201010_importar_pedidos_direct.SetupQueryUpdate;
begin
  fdEntregasUpdate.Params.ArraySize := iCountUpdate;
  fdEntregasUpdate.ParamByName('NUM_NOSSONUMERO').AsStrings[Pred(iCountUpdate)]:= FEntregas.Entregas.NN;
  fdEntregasUpdate.ParamByName('COD_AGENTE').AsIntegers[Pred(iCountUpdate)]:= FEntregas.Entregas.Distribuidor;
  fdEntregasUpdate.ParamByName('COD_ENTREGADOR').AsIntegers[Pred(iCountUpdate)] := FEntregas.Entregas.Entregador;
  fdEntregasUpdate.ParamByName('COD_CLIENTE').AsIntegers[Pred(iCountUpdate)] := FEntregas.Entregas.Cliente;
  fdEntregasUpdate.ParamByName('NUM_NF').AsStrings[Pred(iCountUpdate)] := FEntregas.Entregas.NF;
  fdEntregasUpdate.ParamByName('NOM_CONSUMIDOR').AsStrings[Pred(iCountUpdate)] := FEntregas.Entregas.Consumidor;
  fdEntregasUpdate.ParamByName('DES_ENDERECO').AsStrings[Pred(iCountUpdate)] := FEntregas.Entregas.Endereco;
  fdEntregasUpdate.ParamByName('DES_COMPLEMENTO').AsStrings[Pred(iCountUpdate)] := FEntregas.Entregas.Complemento;
  fdEntregasUpdate.ParamByName('DES_BAIRRO').AsStrings[Pred(iCountUpdate)] := FEntregas.Entregas.Bairro;
  fdEntregasUpdate.ParamByName('NOM_CIDADE').AsStrings[Pred(iCountUpdate)] := FEntregas.Entregas.Cidade;
  fdEntregasUpdate.ParamByName('NUM_CEP').AsStrings[Pred(iCountUpdate)] := FEntregas.Entregas.Cep;
  fdEntregasUpdate.ParamByName('NUM_TELEFONE').AsStrings[Pred(iCountUpdate)] := FEntregas.Entregas.Telefone;
  fdEntregasUpdate.ParamByName('DAT_EXPEDICAO').AsDateTimes[Pred(iCountUpdate)] := FEntregas.Entregas.Expedicao;
  fdEntregasUpdate.ParamByName('DAT_PREV_DISTRIBUICAO').AsDateTimes[Pred(iCountUpdate)] := FEntregas.Entregas.Previsao;
  fdEntregasUpdate.ParamByName('QTD_VOLUMES').AsIntegers[Pred(iCountUpdate)] := FEntregas.Entregas.Volumes;
  fdEntregasUpdate.ParamByName('DAT_ATRIBUICAO').AsDateTimes[Pred(iCountUpdate)] := FEntregas.Entregas.Atribuicao;
  fdEntregasUpdate.ParamByName('DAT_BAIXA').AsDates[Pred(iCountUpdate)] := FEntregas.Entregas.Baixa;
  fdEntregasUpdate.ParamByName('DOM_BAIXADO').AsStrings[Pred(iCountUpdate)] := FEntregas.Entregas.Baixado;
  fdEntregasUpdate.ParamByName('DAT_PAGAMENTO').AsDates[Pred(iCountUpdate)] := FEntregas.Entregas.Pagamento;
  fdEntregasUpdate.ParamByName('DOM_PAGO').AsStrings[Pred(iCountUpdate)] := FEntregas.Entregas.Pago;
  fdEntregasUpdate.ParamByName('DOM_FECHADO').AsStrings[Pred(iCountUpdate)] := FEntregas.Entregas.Fechado;
  fdEntregasUpdate.ParamByName('COD_STATUS').AsIntegers[Pred(iCountUpdate)] := FEntregas.Entregas.Status;
  fdEntregasUpdate.ParamByName('DAT_ENTREGA').AsDates[Pred(iCountUpdate)] := FEntregas.Entregas.Entrega;
  fdEntregasUpdate.ParamByName('QTD_PESO_REAL').AsFloats[Pred(iCountUpdate)] := FEntregas.Entregas.PesoReal;
  fdEntregasUpdate.ParamByName('QTD_PESO_FRANQUIA').AsFloats[Pred(iCountUpdate)] := FEntregas.Entregas.PesoFranquia;
  fdEntregasUpdate.ParamByName('VAL_VERBA_FRANQUIA').AsFloats[Pred(iCountUpdate)] := FEntregas.Entregas.VerbaFranquia;
  fdEntregasUpdate.ParamByName('VAL_ADVALOREM').AsFloats[Pred(iCountUpdate)] := FEntregas.Entregas.Advalorem;
  fdEntregasUpdate.ParamByName('VAL_PAGO_FRANQUIA').AsFloats[Pred(iCountUpdate)] := FEntregas.Entregas.PagoFranquia;
  fdEntregasUpdate.ParamByName('VAL_VERBA_ENTREGADOR').AsFloats[Pred(iCountUpdate)] := FEntregas.Entregas.VerbaEntregador;
  fdEntregasUpdate.ParamByName('NUM_EXTRATO').AsStrings[Pred(iCountUpdate)] := FEntregas.Entregas.Extrato;
  fdEntregasUpdate.ParamByName('QTD_DIAS_ATRASO').AsIntegers[Pred(iCountUpdate)] := FEntregas.Entregas.Atraso;
  fdEntregasUpdate.ParamByName('QTD_VOLUMES_EXTRA').AsFloats[Pred(iCountUpdate)] := FEntregas.Entregas.VolumesExtra;
  fdEntregasUpdate.ParamByName('VAL_VOLUMES_EXTRA').AsFloats[Pred(iCountUpdate)] := FEntregas.Entregas.ValorVolumes;
  fdEntregasUpdate.ParamByName('QTD_PESO_COBRADO').AsFloats[Pred(iCountUpdate)] := FEntregas.Entregas.PesoCobrado;
  fdEntregasUpdate.ParamByName('DES_TIPO_PESO').AsStrings[Pred(iCountUpdate)] := FEntregas.Entregas.TipoPeso;
  fdEntregasUpdate.ParamByName('DAT_RECEBIDO').AsDates[Pred(iCountUpdate)] := FEntregas.Entregas.Recebimento;
  fdEntregasUpdate.ParamByName('DOM_RECEBIDO').AsStrings[Pred(iCountUpdate)] := FEntregas.Entregas.Recebido;
  fdEntregasUpdate.ParamByName('NUM_CTRC').AsIntegers[Pred(iCountUpdate)] := FEntregas.Entregas.CTRC;
  fdEntregasUpdate.ParamByName('NUM_MANIFESTO').AsIntegers[Pred(iCountUpdate)] := FEntregas.Entregas.Manifesto;
  fdEntregasUpdate.ParamByName('DES_RASTREIO').AsStrings[Pred(iCountUpdate)] := FEntregas.Entregas.Rastreio;
  fdEntregasUpdate.ParamByName('VAL_VERBA_FRANQUIA').AsFloats[Pred(iCountUpdate)] := FEntregas.Entregas.VerbaFranquia;
  fdEntregasUpdate.ParamByName('NUM_LOTE_REMESSA').AsIntegers[Pred(iCountUpdate)] := FEntregas.Entregas.Lote;
  fdEntregasUpdate.ParamByName('DES_RETORNO').AsStrings[Pred(iCountUpdate)] := FEntregas.Entregas.Retorno;
  fdEntregasUpdate.ParamByName('DAT_CREDITO').AsDateTimes[Pred(iCountUpdate)] := FEntregas.Entregas.Credito;
  fdEntregasUpdate.ParamByName('DOM_CREDITO').AsStrings[Pred(iCountUpdate)] := FEntregas.Entregas.Creditado;
  fdEntregasUpdate.ParamByName('NUM_CONTAINER').AsStrings[Pred(iCountUpdate)] := FEntregas.Entregas.Container;
  fdEntregasUpdate.ParamByName('VAL_PRODUTO').AsFloats[Pred(iCountUpdate)] := FEntregas.Entregas.ValorProduto;
  fdEntregasUpdate.ParamByName('QTD_ALTURA').AsIntegers[Pred(iCountUpdate)] := FEntregas.Entregas.Altura;
  fdEntregasUpdate.ParamByName('QTD_LARGURA').AsIntegers[Pred(iCountUpdate)] := FEntregas.Entregas.Largura;
  fdEntregasUpdate.ParamByName('QTD_COMPRIMENTO').AsIntegers[Pred(iCountUpdate)] := FEntregas.Entregas.Comprimento;
  fdEntregasUpdate.ParamByName('COD_FEEDBACK').AsIntegers[Pred(iCountUpdate)] := FEntregas.Entregas.CodigoFeedback;
  fdEntregasUpdate.ParamByName('DAT_FEEDBACK').AsDateTimes[Pred(iCountUpdate)] := FEntregas.Entregas.DataFeedback;
  fdEntregasUpdate.ParamByName('DOM_CONFERIDO').AsIntegers[Pred(iCountUpdate)] := FEntregas.Entregas.Conferido;
  fdEntregasUpdate.ParamByName('NUM_PEDIDO').AsStrings[Pred(iCountUpdate)] := FEntregas.Entregas.Pedido;
  fdEntregasUpdate.ParamByName('COD_CLIENTE_EMPRESA').AsIntegers[Pred(iCountUpdate)] := FEntregas.Entregas.CodCliente;
end;

procedure Tthread_201010_importar_pedidos_direct.SetupQueryAWB(sRemessa, sAWB1, sAWB2, sCEP, sOperacao: String; iTipo: Integer; dPeso: Double);
begin
  fdControleAWB.Params.ArraySize := iCountAWB;
  fdControleAWB.ParamByName('id_awb').AsIntegers[Pred(iCountAWB)] := 0;
  fdControleAWB.ParamByName('num_remessa').AsStrings[Pred(iCountAWB)] := sRemessa;
  fdControleAWB.ParamByName('cod_awb1').AsStrings[Pred(iCountAWB)] := sAWB1;
  fdControleAWB.ParamByName('cod_awb2').AsStrings[Pred(iCountAWB)] := sAWB2;
  fdControleAWB.ParamByName('num_cep').AsStrings[Pred(iCountAWB)] := sCEP;
  fdControleAWB.ParamByName('cod_operacao').AsStrings[Pred(iCountAWB)] := sOperacao;
  fdControleAWB.ParamByName('cod_tipo').AsIntegers[Pred(iCountAWB)] := iTipo;
  fdControleAWB.ParamByName('qtd_peso').AsFloats[Pred(iCountAWB)] := dPeso;
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
  view_ImportarPedidos.pbImportacao.Properties.Text := FormatFloat('0.00%',FdPos) +
                                                       ' - (' + IntToStr(iPosition) + ' registros processados)';
  view_ImportarPedidos.pbImportacao.Refresh;
  //view_ImportarPedidos.memLOG.Lines[iLinha] := ' >>> ' + IntToStr(iLinha) + ' registros processados';
  //view_ImportarPedidos.memLOG.Refresh;
  if not(view_ImportarPedidos.actCancelar.Visible) then
  begin
    view_ImportarPedidos.actCancelar.Visible := True;
    view_ImportarPedidos.actFechar.Enabled := False;
    view_ImportarPedidos.actImportar.Enabled := False;
  end;
end;

end.
