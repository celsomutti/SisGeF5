unit Thread._201020_importar_baixas_tfo;

interface

uses
  System.Classes, Dialogs, Windows, Forms, SysUtils, Messages, Controls, System.DateUtils, System.StrUtils, Generics.Collections,
  Control.Entregas, Control.Sistema, FireDAC.Comp.Client, Common.ENum, Model.PlanilhaBaixasTFO,
  FireDAC.Comp.DataSet, Data.DB, Control.VerbasExpressas, Control.Bases, Control.EntregadoresExpressas, Control.PlanilhaBaixasTFO;

type
  Tthread_201020_importar_baixas_tfo = class(TThread)
  private
    { Private declarations }
    FEntregas: TEntregasControl;
    FPlanilha : TPlanilhaBaixasTFOControl;
    FPlanilhasCSV : TObjectList<TPlanilhaBaixasTFO>;
    fdEntregas: TFDQuery;
    fdEntregasInsert: TFDQuery;
    fdEntregasUpdate: TFDQuery;
    iCountInsert : Integer;
    iCountUpdate : Integer;
    fAcao : TAcao;
  protected
    procedure Execute; override;
    procedure UpdateLog(sMensagem: String);
    procedure UpdateProgress(dPosition: Double);
    procedure TerminateProcess;
    procedure BeginProcesso;
    procedure SetupClassUpdate(FDQuery: TFDQuery);
    procedure SetupClassInsert(i: Integer);
    procedure SetupQueryInsert();
    procedure SetupQueryUpdate();
    procedure SaveInsert(iCount: Integer);
    procedure SaveUpdate(iCount: Integer);
    function SetTabelaAgente(iAgente: integer): TStringList;
    function SetTabelaEntregador(iEntregador: integer): TStringList;
    function SetAgenteEntregador(iEntregador: integer): TStringList;
    function RetornaVerba(vParam: array of variant): double;
  public
    FFile: String;
    iCodigoCliente: Integer;
    bCancel : Boolean;
    bProcess: Boolean;
    dPositionRegister: double;
    sLog: String;
    sAlerta: String;
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

implementation

{
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure Tthread_201020_importar_baixas_tfo.UpdateCaption;
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

{ Tthread_201020_importar_baixas_tfo }

uses Common.Utils, Global.Parametros;

procedure Tthread_201020_importar_baixas_tfo.BeginProcesso;
var
  sMensagem: String;
begin
  sLog := '';
  bCancel := False;
  bProcess := True;
  sMensagem := '';
  sMensagem := ' >> ' +  FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + ' > iniciando importação do arquivo ' + FFile;
  UpdateLog(sMensagem);
  sMensagem := '>> ' +  FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + ' > tratando os dados da planilha. Aguarde...';
  UpdateLog(sMensagem);
end;

procedure Tthread_201020_importar_baixas_tfo.Execute;
var
  aParam: Array of variant;
  iPos : Integer;
  iTotal, iRoteiro: Integer;
  sCEP: String;
  sMensagem: String;
  dPos, dPerformance: double;
  slParam: TStringList;
  dVerba, dVerbaTabela : Double;
  bProcess: Boolean;
  iTabela, iFaixa, iAgente: Integer;
begin
  { Place thread code here }
  try
    try
      BeginProcesso;
      sMensagem := '';
      sAlerta := '';
      dPerformance := 100;
      iRoteiro := 0;
      slParam := TStringList.Create;
      FEntregas := TEntregasControl.Create;
      FPlanilha := TPlanilhaBaixasTFOControl.Create;
      FPlanilhasCSV := TObjectList<TPlanilhaBaixasTFO>.Create;
      if FPlanilha.GetPlanilha(FFile) then
      begin
        FPlanilhasCSV := FPlanilha.Planilha.Planilha;
      end
      else
      begin
        sMensagem := '>> ' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + ' ' + FPlanilha.Planilha.MensagemProcesso;
        UpdateLog(sMensagem);
        TerminateProcess;
        Exit;
      end;

      sMensagem := '>> ' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + ' > importando os dados. Aguarde...';
      UpdateLog(sMensagem);
      iCountInsert := 0;
      iCountUpdate := 0;
      if FPlanilhasCSV.Count > 0 then
      begin
        iPos := 0;
        dPos := 0;
        iTotal := FPlanilhasCSV.Count;
        fdEntregas := TSistemaControl.GetInstance.Conexao.ReturnQuery;
        fdEntregasInsert := TSistemaControl.GetInstance.Conexao.ReturnQuery;
        fdEntregasUpdate := TSistemaControl.GetInstance.Conexao.ReturnQuery;

        for iPos := 0 to Pred(iTotal) do
        begin
          fdEntregasInsert.SQL.Text := SQLINSERT;
          fdEntregasUpdate.SQL.Text := SQLUPDATE;
          SetLength(aParam,2);
          aParam[0] := 'NN';
          aParam[1] := Trim(FPlanilhasCSV[iPos].NNRemessa);
          fdEntregas := FEntregas.Localizar(aParam);
          Finalize(aParam);
          if fdEntregas.IsEmpty then
          begin
            sMensagem := '>> ' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now()) + ' > NN/Remessa ' + FPlanilhasCSV[iPos].NNRemessa +
                         ' não encontrada no banco de dados! Incluindo os dados do arquivo de baixa.';
            UpdateLog(sMensagem);
            FAcao := tacIndefinido;
          end
          else
          begin
            SetupClassUpdate(fdEntregas);
            Inc(iCountUpdate);
            FEntregas.Entregas.Status := 909;
            FEntregas.Entregas.Rastreio := FEntregas.Entregas.Rastreio + #13 +
                                          '>> ' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now()) + '> importação de baixa por ' +
                                          Global.Parametros.pUser_Name;
            FEntregas.Entregas.Baixa := FPlanilhasCSV[iPos].DataDigitacao;
            FEntregas.Entregas.Baixado := 'S';
            FEntregas.Entregas.Entrega := FPlanilhasCSV[iPos].DataEntrega;
            FEntregas.Entregas.Entregador := FPlanilhasCSV[iPos].CodigoEntregador;
            if FPlanilhasCSV[iPos].DataEntrega < FPlanilhasCSV[iPos].DataDigitacao then
            begin
              FEntregas.Entregas.Atraso := DaysBetween(FPlanilhasCSV[iPos].DataDigitacao, FPlanilhasCSV[iPos].DataEntrega);
            end;
            FEntregas.Entregas.PesoCobrado := FPlanilhasCSV[iPos].PesoCobrado;

            iTabela := 0;
            iFaixa := 0;
            dVerba := 0;
            dVerbaTabela := 0;
            iAgente := 0;

            slParam := SetTabelaEntregador(FEntregas.Entregas.Entregador);
            if StrToIntDef(slParam[0], 0) = 0 then
            begin
              if StrToFloatDef(slParam[2], 0) > 0 then
              begin
                dVerba := StrToFloatDef(slParam[2], 0);
              end
            end
            else
            begin
              iTabela := StrToIntDef(slParam[0],0);
              iFaixa := StrToIntDef(slParam[1], 0);
              dVerba := StrToFloatDef(slParam[2], 0);
            end;

            iAgente := StrToIntDef(slParam[1], 0);

            FEntregas.Entregas.Distribuidor := StrToIntDef(slParam[1], 3);

            if dVerba = 0 then
            begin
              slParam := SetTabelaAgente(FEntregas.Entregas.Distribuidor);
              if StrToIntDef(slParam[0], 0) = 0 then
              begin
                if StrToFloatDef(slParam[2], 0) > 0 then
                begin
                  dVerba := StrToFloatDef(slParam[2], 0);
                end
              end
              else
              begin
                iTabela := StrToIntDef(slParam[0],0);
                iFaixa := StrToIntDef(slParam[1], 0);
                dVerba := StrToFloatDef(slParam[2], 0);
              end;
            end;

            if dVerba = 0 then
            begin
              if iTabela > 0 then
              begin
                SetLength(aParam,8);
                aParam := [FEntregas.Entregas.CodCliente, iTabela,  iFaixa,
                          FormatDateTime('yyyy-mm-dd', FEntregas.Entregas.Baixa), dPerformance, FEntregas.Entregas.CEP,
                          FEntregas.Entregas.PesoCobrado, iRoteiro];
                dVerbaTabela := RetornaVerba(aParam);
                Finalize(aParam);
              end;

              if dVerbaTabela <> 0 Then
              begin
                dVerba := dVerbaTabela;
              end;
            end;

            if dVerba = 0 then
            begin
              sMensagem := '>> ' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + ' > verba não encontrada para a remessa / NN ' +
                            FPlanilhasCSV[iPos].NNRemessa + ' !';
              UpdateLog(sMensagem);
            end;

            FEntregas.Entregas.VerbaEntregador := dVerba;

            FAcao := tacAlterar;
          end;


          if FAcao =  tacIncluir then
          begin
            SetupQueryInsert;
          end
          else if FAcao =  tacAlterar then
          begin
            SetupQueryUpdate;
          end;

          fdEntregas.Close;

          dPos := ((iPos + 1) / iTotal) * 100;

          if not(Self.Terminated) then
          begin
            UpdateProgress(dPos);
          end
          else
          begin
            sAlerta := 'Importação cancelada !';
            Abort;
          end;
          fdEntregas.Close;
        end;

        sMensagem := '>> ' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + ' > salvando no banco de dados. Aguarde...';
        UpdateLog(sMensagem);
        if iCountInsert > 0 then SaveInsert(iCountInsert);
        if iCountUpdate > 0 then SaveUpdate(iCountUpdate);

        fdEntregasInsert.Connection.Close;
        fdEntregasUpdate.Connection.Close;
        fdEntregasInsert.Free;
        fdEntregasUpdate.Free;
        sMensagem := '>>> '  + FormatDateTime('dddd/mm/yyyy hh:mm:ss', Now()) + ' > Importação concluída';
        UpdateLog(sMensagem);
        sAlerta := 'Importação concluída.';
      end;
      Sleep(1000);
      TerminateProcess;
    Except
      on E: Exception do
        begin
          UpdateLog('>>> Classe: ' + E.ClassName + chr(13) + 'Mensagem: ' + E.Message);
          bCancel := True;
        end;
    end;
  finally
    if bCancel then
    begin
      sMensagem := '>>> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' > importação cancelada ...';
      UpdateLog(sMensagem);
      bProcess := False;
    end
    else
    begin
      sMensagem := '>>> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' > importação concluída com sucesso';
      UpdateLog(sMensagem);
    end;
    TerminateProcess;
    bProcess := False;
    FEntregas.Free;
    FPlanilha.Free;
    FPlanilhasCSV.Free;
    fdEntregas.Free;
  end;
end;

function Tthread_201020_importar_baixas_tfo.RetornaVerba(vParam: array of variant): double;
var
  FVerbas : TVerbasExpressasControl;
  aParam: Array of variant;
  dVerba: Double;
begin
  try
    dVerba := 0;
    FVerbas := TVerbasExpressasControl.Create;
    dVerba := FVerbas.RetornaVerba(vParam);
    Result := dVerba;
  finally
    FVerbas.Free;
  end;
end;

procedure Tthread_201020_importar_baixas_tfo.SaveInsert(iCount: Integer);
begin
  fdEntregasInsert.Execute(iCount, 0);
end;

procedure Tthread_201020_importar_baixas_tfo.SaveUpdate(iCount: Integer);
begin
  fdEntregasUpdate.Execute(iCount, 0);
end;

function Tthread_201020_importar_baixas_tfo.SetAgenteEntregador(iEntregador: integer): TStringList;
var
  FEntregadores: TEntregadoresExpressasControl;
  fdQuery: TFDQuery;
  aParam : array of variant;
  iAgente: Integer;
  slParam : TStringList;
begin
  try
    iAgente := 0;
    FEntregadores := TEntregadoresExpressasControl.Create;
    slParam := TStringList.Create;
    fdQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    setLength(aParam,2);
    aParam := ['ENTREGADOR', iEntregador];
    fdQuery := FEntregadores.Localizar(aParam);
    Finalize(aParam);
    if not fdQuery.isEmpty then
    begin
      iAgente := fdQuery.FieldByName('cod_agente').asInteger;
    end;
    slParam.Add(iAgente.toString);
    slParam.Add(iEntregador.toString);
    Result := slParam;
  finally
    fdQuery.Close;
    fdQuery.Connection.cLOSE;
    fdQuery.Free;
    FEntregadores.Free;
  end;
end;

function Tthread_201020_importar_baixas_tfo.SetTabelaAgente(iAgente: integer): TStringList;
var
  FBases: TBasesControl;
  fdQuery: TFDQuery;
  slParam : TStringList;
  dVerba: Double;
  iTabela, iFaixa: Integer;
  aParam: Array of variant;
begin
  try
    dVerba := 0;
    iTabela := 0;
    iFaixa := 0;
    slParam := TStringList.Create;
    FBases := TBasesControl.Create;
    fdQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    setLength(aParam,2);
    aParam := ['CODIGO', iAgente];
    fdQuery := FBases.Localizar(aParam);
    Finalize(aParam);
    if not fdQuery.isEmpty then
    begin
      iTabela := fdQuery.FieldByName('cod_centro_custo').asInteger;
      iFaixa := fdQuery.FieldByName('cod_grupo').asInteger;
      dVerba := fdQuery.FieldByName('val_verba').asFloat;
    end;

    slParam.Add(iTabela.toString);
    slParam.Add(iFaixa.toString);
    slParam.Add(dVerba.toString);

    Result := slParam;
  finally
    fdQuery.Close;
    fdQuery.Connection.cLOSE;
    fdQuery.Free;
    FBases.Free;
  end;
end;

function Tthread_201020_importar_baixas_tfo.SetTabelaEntregador(iEntregador: integer): TStringList;
var
  FEntregadores: TEntregadoresExpressasControl;
  fdQuery: TFDQuery;
  aParam : array of variant;
  dVerba: Double;
  iTabela, iFaixa, iAgente: Integer;
  slParam : TStringList;
begin
  try
    dVerba := 0;
    iTabela := 0;
    iFaixa := 0;
    iAgente := 0;
    FEntregadores := TEntregadoresExpressasControl.Create;
    slParam := TStringList.Create;
    fdQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    setLength(aParam,2);
    aParam := ['ENTREGADOR', iEntregador];
    fdQuery := FEntregadores.Localizar(aParam);
    Finalize(aParam);
    if not fdQuery.isEmpty then
    begin
      iTabela := fdQuery.FieldByName('cod_tabela').asInteger;
      iFaixa := fdQuery.FieldByName('cod_grupo').asInteger;
      dVerba := fdQuery.FieldByName('val_verba').asFloat;
      iAgente := fdQuery.FieldByName('cod_agente').asInteger;
    end;
    slParam.Add(iTabela.toString);
    slParam.Add(iFaixa.toString);
    slParam.Add(dVerba.toString);
    slParam.Add(iAgente.toString);
    Result := slParam;
  finally
    fdQuery.Close;
    fdQuery.Connection.cLOSE;
    fdQuery.Free;
    FEntregadores.Free;
  end;
end;

procedure Tthread_201020_importar_baixas_tfo.SetupClassInsert(i: Integer);
begin
  FEntregas.Entregas.NN := FPlanilhasCSV[i].NNRemessa;
  FEntregas.Entregas.Distribuidor := 0;
  FEntregas.Entregas.Entregador := 0;
  FEntregas.Entregas.Cliente := FPlanilhasCSV[i].CodigoClienteTFO;
  FEntregas.Entregas.NF := '';
  FEntregas.Entregas.Consumidor := 'NONE';
  FEntregas.Entregas.Endereco := '';
  FEntregas.Entregas.Complemento := '';
  FEntregas.Entregas.Bairro := '';
  FEntregas.Entregas.Cidade := '';
  FEntregas.Entregas.Cep :='';
  FEntregas.Entregas.Telefone := '';
  FEntregas.Entregas.Expedicao := StrToDate('30/12/1899');
  FEntregas.Entregas.Previsao := FPlanilhasCSV[i].DataPrevisaoEntrega;
  FEntregas.Entregas.Volumes := 1;
  FEntregas.Entregas.Atribuicao := StrToDate('30/12/1899');
  FEntregas.Entregas.Baixa := FPlanilhasCSV[i].DataDigitacao;
  FEntregas.Entregas.Baixado := 'S';
  FEntregas.Entregas.Pagamento := StrToDate('30/12/1899');
  FEntregas.Entregas.Pago := 'N';
  FEntregas.Entregas.Fechado := 'N';
  FEntregas.Entregas.Status := 0;
  FEntregas.Entregas.Entrega := FPlanilhasCSV[i].DataEntrega;
  FEntregas.Entregas.PesoReal := FPlanilhasCSV[i].PesoCobrado;;
  FEntregas.Entregas.TipoPeso := FPlanilhasCSV[i].DescricaoTipoPeso;
  FEntregas.Entregas.PesoFranquia := 0;
  FEntregas.Entregas.Advalorem := 0;
  FEntregas.Entregas.PagoFranquia := 0;
  FEntregas.Entregas.VerbaEntregador := 0;
  FEntregas.Entregas.Extrato := '0';
  FEntregas.Entregas.Atraso := 0;
  FEntregas.Entregas.VolumesExtra := 0;
  FEntregas.Entregas.ValorVolumes := 0;
  FEntregas.Entregas.PesoCobrado := 0;
  FEntregas.Entregas.Recebimento := StrToDate('30/12/1899');
  FEntregas.Entregas.Recebido := 'N';
  FEntregas.Entregas.CTRC := 0;
  FEntregas.Entregas.Manifesto := 0;
  FEntregas.Entregas.Rastreio := '';
  FEntregas.Entregas.VerbaFranquia := 0;
  FEntregas.Entregas.Lote := 0;
  FEntregas.Entregas.Retorno := '';
  FEntregas.Entregas.Credito := StrToDate('30/12/1899');;
  FEntregas.Entregas.Creditado := 'N';
  FEntregas.Entregas.Container := '';
  FEntregas.Entregas.ValorProduto := 0;
  FEntregas.Entregas.Altura := 0;
  FEntregas.Entregas.Largura := 0;
  FEntregas.Entregas.Comprimento := 0;
  FEntregas.Entregas.CodigoFeedback := 0;
  FEntregas.Entregas.DataFeedback := StrToDate('30/12/1899');
  FEntregas.Entregas.Conferido := 0;
  FEntregas.Entregas.Pedido := '0';
  FEntregas.Entregas.CodCliente := iCodigoCliente;
end;

procedure Tthread_201020_importar_baixas_tfo.SetupClassUpdate(FDQuery: TFDQuery);
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

procedure Tthread_201020_importar_baixas_tfo.SetupQueryInsert;
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

procedure Tthread_201020_importar_baixas_tfo.SetupQueryUpdate;
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

procedure Tthread_201020_importar_baixas_tfo.TerminateProcess;
begin
  bProcess := False;
end;

procedure Tthread_201020_importar_baixas_tfo.UpdateLog(sMensagem: String);
begin
  if sLog <> '' then
  begin
    sLog := sLog + #13;
  end;
  sLog := sLog + sMensagem;
end;

procedure Tthread_201020_importar_baixas_tfo.UpdateProgress(dPosition: double);
begin
  dPositionRegister := dPosition;
end;

end.
