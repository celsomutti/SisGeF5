unit RoB.ExtratoExpressas;

interface

uses Control.Parametros, Common.ENum, Common.Utils, Control.Sistema, Control.Entregas, FireDAC.Comp.Client, System.SysUtils,
System.DateUtils, FireDAC.Comp.Dataset, Control.ExtraviosMultas, Control.Lancamentos, Control.FechamentoExpressas, Forms,
Winapi.Windows, Control.ExtratosExpressas, Control.Bases, Control.EntregadoresExpressas;

type
  TRoBExtratoExpressas = class
  public
    function StartFechamento(iAno, iMes, iQuinzena, iCliente: Integer; bFlag, bData: Boolean): Boolean;
    function ProcessaFechamento(iAno, iMes, iQuinzena, iCliente: Integer; bFlag, bData: Boolean): Boolean;
    function ProcessaExtrato(iAno, iMes, iQuinzena, iCliente: Integer; bFlag, bData: Boolean): Boolean;
    procedure PopulaFechamento(fdQuery: TFDQuery);
  private
    sNumeroExtrato : String;
    procedure MontaPeriodo(iAno, iMes, iQuinzena: Integer);
  end;

var
  dtDataInicial: TDate;
  dtDataFinal: TDate;
  dtDataPagamento: TDate;

implementation

uses Data.SisGeF, Global.Parametros, View.FechamentoExpressas;

{ TRoBExtratoExpressas }

function TRoBExtratoExpressas.StartFechamento(iAno, iMes, iQuinzena, iCliente: Integer; bFlag, bData: Boolean): Boolean;
var
  fechamento : TFechamentoExpressasControl;
  aParam: Array of variant;
  fdQuery: TFDQuery;
  bResult: Boolean;
begin
  try
    Result := False;
    bResult := False;
    MontaPeriodo(iAno,iMes,iQuinzena);
    fdQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    fechamento := TFechamentoExpressasControl.Create;
    SetLength(aParam,3);
    aParam[0] := dtDataInicial;
    aParam[1] := dtDataFinal;
    aParam[2] := 0;
    fdQuery := fechamento.RetornaFechamento(aParam);
    Finalize(aParam);
    if not fdQuery.IsEmpty then
    begin
      if Application.MessageBox('Fechamento já encerrado. Deseja visualizar?', 'Atenção', MB_YESNO + MB_ICONQUESTION) = IDYES then
      begin
        PopulaFechamento(fdQuery);
        bResult := True;
      end
      else
      begin
        bResult := False;
        Exit;
      end;
    end
    else
    begin
      fdQuery.Close;
      SetLength(aParam,3);
      aParam[0] := dtDataInicial;
      aParam[1] := dtDataFinal;
      aParam[2] := iCliente;
      fdQuery := fechamento.RetornaFechamento(aParam);
      Finalize(aParam);
      if not fdQuery.IsEmpty then
      begin
        if Application.MessageBox('Fechamento já encerrado. Deseja visualizar?', 'Atenção', MB_YESNO + MB_ICONQUESTION) = IDYES then
        begin
          PopulaFechamento(fdQuery);
          bResult := True;
        end
        else
        begin
          bResult := False;
          Exit;
        end;
      end
      else
      begin
        bResult := ProcessaFechamento(iAno, iMes, iQuinzena, iCliente, bFlag, bData);
      end;
    end;
    Result := bResult;
  finally
    fdQuery.Free;
    fechamento.Free;
  end;
end;

procedure TRoBExtratoExpressas.PopulaFechamento(fdQuery: TFDQuery);
begin
  if Data_Sisgef.mtbFechamentoExpressas.Active then Data_Sisgef.mtbFechamentoExpressas.Close;
  Data_Sisgef.mtbFechamentoExpressas.Open;
  Data_Sisgef.mtbFechamentoExpressas.CopyDataSet(fdQuery,[coRestart,coAppend]);
  fdQuery.Close;
  if not Data_Sisgef.mtbFechamentoExpressa.IsEmpty then
  begin
    view_FechamentoExpressas.actExtrato.Enabled := True;
  end;
  view_FechamentoExpressas.cxLabel2.Caption := 'Período de ' + FormatDateTime('dd/mm/yyyy', dtDataInicial) + ' até ' +
                                            FormatDateTime('dd/mm/yyyy', dtDataFinal) + ' - FECHADO';
  view_FechamentoExpressas.cxLabel2.Refresh;
end;

function TRoBExtratoExpressas.ProcessaExtrato(iAno, iMes, iQuinzena, iCliente: Integer; bFlag, bData: Boolean): Boolean;
var
  fdQuery : TFDQuery;
  fdQuery1: TFDQuery;
  entregas : TEntregasControl;
  extrato : TExtratosExpressasControl;
  extravios : TExtraviosMultasControl;
  lancamentos : TLancamentosControl;
  agentes: TBasesControl;
  entregadores: TEntregadoresExpressasControl;
  iAgente: Integer;
  iEntregador: Integer;
  sAgente: String;
  sEntregador: String;
  sLocate: String;
  aParam: Array of variant;
begin
  try
    Result := False;
    MontaPeriodo(iAno,iMes,iQuinzena);
    fdQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    entregas := TEntregasControl.Create;
    extrato := TExtratosExpressasControl.Create;
    extravios := TExtraviosMultasControl.Create;
    lancamentos := TLancamentosControl.Create;
    agentes := TBasesControl.Create;
    entregadores := TEntregadoresExpressasControl.Create;
    if iCliente <> 0 then
    begin
      SetLength(aParam,4);
      aParam[0] := 'CLIENTE';
      aParam[1] := dtDataInicial;
      aParam[2] := dtDataFinal;
      aParam[3] := iCliente;
    end
    else
    begin
      SetLength(aParam,3);
      aParam[0] := 'DATA';
      aParam[1] := dtDataInicial;
      aParam[2] := dtDataFinal;
    end;
    fdQuery := extrato.Localizar(aParam);
    Finalize(aParam);
    if NOT fdQuery.IsEmpty then
    begin
      Application.MessageBox('Extrato já fechado!', 'Atenção', MB_OK + MB_ICONHAND);
      Exit;
    end;
    if fdQuery.Active then fdQuery.Close;
    SetLength(aParam,5);
    aParam[0] := dtDataInicial;
    aParam[1] := dtDataFinal;
    aParam[2] := iCliente;
    aParam[3] := bFlag;
    aParam[4] := bData;
    fdQuery := entregas.EntregasExtratoNew(aParam);
    Finalize(aParam);
    if Data_Sisgef.mtbExtratoExpressas.Active then Data_Sisgef.mtbExtratoExpressas.Close;
    Data_Sisgef.mtbExtratoExpressas.Open;
    if fdQuery.IsEmpty then
    begin
      Application.MessageBox('Período / Cliente não encontrado no banco de dados!', 'Atenção', MB_OK + MB_ICONHAND);
      Data_Sisgef.mtbExtratoExpressas.Close;
      Exit;
    end;
    fdQuery.First;
    while not fdQuery.Eof do
    begin
      Data_Sisgef.mtbExtratoExpressas.Insert;
      Data_Sisgef.mtbExtratoExpressasID_EXTRATO.AsInteger := 0;
      Data_Sisgef.mtbExtratoExpressasCOD_AGENTE.AsInteger := fdQuery.FieldByName('cod_agente').AsInteger;
      Data_Sisgef.mtbExtratoExpressasNOM_AGENTE.AsString := fdQuery.FieldByName('nom_agente').AsString;
      Data_Sisgef.mtbExtratoExpressasCOD_ENTREGADOR.AsInteger := fdQuery.FieldByName('cod_entregador').AsInteger;
      Data_Sisgef.mtbExtratoExpressasNOM_ENTREGADOR.AsString := fdQuery.FieldByName('nom_entregador').AsString;
      Data_Sisgef.mtbExtratoExpressasDAT_INICIO.AsDateTime := dtDataInicial;
      Data_Sisgef.mtbExtratoExpressasDAT_FINAL.AsDateTime := dtDataFinal;
      Data_Sisgef.mtbExtratoExpressasVAL_PERCENTUAL_SLA.AsFloat := fdQuery.FieldByName('val_percentual_sla').AsFloat;
      Data_Sisgef.mtbExtratoExpressasDAT_PAGAMENTO.AsDateTime := dtDataPagamento;
      Data_Sisgef.mtbExtratoExpressasQTD_VOLUMES.AsInteger := fdQuery.FieldByName('qtd_volumes').AsInteger;
      Data_Sisgef.mtbExtratoExpressasQTD_ENTREGAS.AsInteger := fdQuery.FieldByName('qtd_entregas').AsInteger;
      Data_Sisgef.mtbExtratoExpressasQTD_ITENS_ATRASO.AsInteger := fdQuery.FieldByName('qtd_itens_atraso').AsInteger;
      Data_Sisgef.mtbExtratoExpressasQTD_VOLUMES_EXTRA.AsFloat := fdQuery.FieldByName('qtd_volumes_extra').AsFloat;
      Data_Sisgef.mtbExtratoExpressasVAL_VERBA.AsFloat := fdQuery.FieldByName('val_verba').AsFloat;
      Data_Sisgef.mtbExtratoExpressas.Post;
      fdQuery.Next;
    end;
    fdQuery.Close;

    //popula os extravios dos entregadores

    SetLength(aParam,1);
    aParam[0] := 2;
    fdQuery := extravios.ExtraviosExtrato(aParam);
    Finalize(aParam);
    if not fdQuery.IsEmpty then
    begin
      fdQuery.First;
      while not fdQuery.Eof do
      begin
        sLocate := 'cod_entregador = ' + fdQuery.FieldByName('cod_entregador').AsString;
        if Data_Sisgef.mtbFechamentoExpressas.LocateEx(sLocate,[]) then
        begin
          Data_Sisgef.mtbExtratoExpressas.Edit;
          Data_Sisgef.mtbExtratoExpressasVAL_EXTRAVIOS.AsFloat := (0 - fdQuery.FieldByName('val_total').AsFloat);
          Data_Sisgef.mtbExtratoExpressas.Post
        end
        else
        begin
          Data_Sisgef.mtbExtratoExpressas.Insert;
          Data_Sisgef.mtbExtratoExpressasID_EXTRATO.AsInteger := 0;
          Data_Sisgef.mtbExtratoExpressasCOD_AGENTE.AsInteger := fdQuery.FieldByName('cod_agente').AsInteger;
          Data_Sisgef.mtbExtratoExpressasNOM_AGENTE.AsString := fdQuery.FieldByName('nom_agente').AsString;
          Data_Sisgef.mtbExtratoExpressasCOD_ENTREGADOR.AsInteger := fdQuery.FieldByName('cod_entregador').AsInteger;
          Data_Sisgef.mtbExtratoExpressasNOM_ENTREGADOR.AsString := fdQuery.FieldByName('nom_fantasia').AsString;
          Data_Sisgef.mtbExtratoExpressasDAT_INICIO.AsDateTime := dtDataInicial;
          Data_Sisgef.mtbExtratoExpressasDAT_FINAL.AsDateTime := dtDataFinal;
          Data_Sisgef.mtbExtratoExpressasDAT_PAGAMENTO.AsDateTime := dtDataPagamento;
          Data_Sisgef.mtbExtratoExpressasQTD_VOLUMES.AsInteger := 0;
          Data_Sisgef.mtbExtratoExpressasQTD_ENTREGAS.AsInteger := 0;
          Data_Sisgef.mtbExtratoExpressasQTD_ITENS_ATRASO.AsInteger := 0;
          Data_Sisgef.mtbExtratoExpressasQTD_VOLUMES_EXTRA.AsFloat := 0;
          Data_Sisgef.mtbExtratoExpressasVAL_VERBA.AsFloat := 0;
          Data_Sisgef.mtbExtratoExpressasVAL_EXTRAVIOS.AsFloat := (0 - fdQuery.FieldByName('val_total').AsFloat);
          Data_Sisgef.mtbExtratoExpressas.Post;
        end;
        fdQuery.Next;
      end;
      fdQuery.Close;
    end;

    // popula créditos e débitos de entregadores

    lancamentos := TLancamentosControl.Create;
    agentes := TBasesControl.Create;
    entregadores := TEntregadoresExpressasControl.Create;
    SetLength(aParam,2);
    aParam[0] := 2;
    aParam[1] := dtDataFinal;
    fdQuery := lancamentos.ExtratoLancamentos(aParam);
    fdQuery1 := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    Finalize(aParam);
    if not fdQuery.IsEmpty then
    begin
      fdQuery.First;
      while not fdQuery.Eof do
      begin
        iAgente := 0;
        iEntregador := 0;
        SetLength(aParam,2);
        aParam[0] := 'CADASTRO';
        aParam[1] := fdquery.FieldByName('cod_entregador').AsInteger;
        fdQuery1 := entregadores.Localizar(aParam);
        Finalize(aParam);
        if not fdQuery1.IsEmpty then
        begin
          iAgente := fdQuery1.FieldByName('cod_agente').AsInteger;
          iEntregador := fdQuery1.FieldByName('cod_entregador').AsInteger;
          sEntregador := fdQuery1.FieldByName('nom_fantasia').AsString;
        end;
        fdQuery1.Close;
        SetLength(aParam,2);
        aParam[0] := 'CODIGO';
        aParam[1] := iAgente;
        fdQuery1 := agentes.Localizar(aParam);
        Finalize(aParam);
        if not fdQuery1.IsEmpty then
        begin
          sAgente := fdQuery1.FieldByName('nom_fantasia').AsString;
        end;
        fdQuery1.Close;
        sLocate := 'cod_entregador = ' + iEntregador.ToString;
        if Data_Sisgef.mtbExtratoExpressas.LocateEx(sLocate,[]) then
        begin
          Data_Sisgef.mtbExtratoExpressas.Edit;
          if fdquery.FieldByName('des_tipo').AsString = 'CREDITO' then
          begin
            Data_Sisgef.mtbExtratoExpressasval_creditos.AsFloat := fdQuery.FieldByName('val_total').AsFloat;
          end
          else if fdquery.FieldByName('des_tipo').AsString = 'DEBITO' then
          begin
            Data_Sisgef.mtbExtratoExpressasval_debitos.AsFloat := (0 - fdQuery.FieldByName('val_total').AsFloat);
          end;
          Data_Sisgef.mtbExtratoExpressas.Post
        end
        else
        begin
          Data_Sisgef.mtbExtratoExpressas.Insert;
          Data_Sisgef.mtbExtratoExpressasID_EXTRATO.AsInteger := 0;
          Data_Sisgef.mtbExtratoExpressasCOD_AGENTE.AsInteger := iAgente;
          Data_Sisgef.mtbExtratoExpressasNOM_AGENTE.AsString := sAgente;
          Data_Sisgef.mtbExtratoExpressasCOD_ENTREGADOR.AsInteger := iEntregador;
          Data_Sisgef.mtbExtratoExpressasNOM_ENTREGADOR.AsString := sEntregador;
          Data_Sisgef.mtbExtratoExpressasDAT_INICIO.AsDateTime := dtDataInicial;
          Data_Sisgef.mtbExtratoExpressasDAT_FINAL.AsDateTime := dtDataFinal;
          Data_Sisgef.mtbExtratoExpressasDAT_PAGAMENTO.AsDateTime := dtDataPagamento;
          Data_Sisgef.mtbExtratoExpressasQTD_VOLUMES.AsInteger := 0;
          Data_Sisgef.mtbExtratoExpressasQTD_ENTREGAS.AsInteger := 0;
          Data_Sisgef.mtbExtratoExpressasQTD_ITENS_ATRASO.AsInteger := 0;
          Data_Sisgef.mtbExtratoExpressasQTD_VOLUMES_EXTRA.AsFloat := 0;
          Data_Sisgef.mtbExtratoExpressasVAL_VERBA.AsFloat := 0;
        end;
        fdQuery.Next;
      end;
      fdQuery.Close;
    end;
    Result := True;
  finally
    fdQuery.Free;
    fdQuery1.Free;
    extrato.Free;
    extravios.Free;
    lancamentos.Free;
    agentes.Free;
    entregadores.Free;
  end;
end;

//processa o fechamento quando não existir

function TRoBExtratoExpressas.ProcessaFechamento(iAno, iMes, iQuinzena, iCliente: Integer; bFlag, bData: Boolean): Boolean;
var
  agentes: TBasesControl;
  entregadores: TEntregadoresExpressasControl;

  fdQuery: TFDQuery;
  sLocate: String;
  iAgente: Integer;
  iEntregador: Integer;
  iCodigo: Integer;
  iTipo: Integer;
  sTipo: String;
  aParam: Array of variant;
  sBanco: String;
  sAgencia: String;
  sConta: String;
  sCPF: String;
  sFavorecido: String;
begin
  try
    Result := False;
    fdQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    agentes := TBasesControl.Create;
    entregadores := TEntregadoresExpressasControl.Create;
    if not Data_Sisgef.mtbExtratoExpressas.Active then Exit;
    if Data_Sisgef.mtbExtratoExpressas.IsEmpty then Exit;
    if Data_Sisgef.mtbFechamentoExpressas.Active then Data_Sisgef.mtbFechamentoExpressas.Close;
    Data_Sisgef.mtbFechamentoExpressas.Open;
    iTipo := 0;
    sTipo := '';
    iCodigo := 0;
    Data_Sisgef.mtbExtratoExpressas.First;
    while Data_Sisgef.mtbExtratoExpressas.Eof do
    begin
      iAgente := Data_Sisgef.mtbExtratoExpressasCOD_AGENTE.AsInteger;
      iEntregador := Data_Sisgef.mtbExtratoExpressasCOD_ENTREGADOR.AsInteger;
      sBanco :='';
      sAgencia :='';
      sConta :='';
      sCPF :='';
      sFavorecido := '';
      SetLength(aParam,2);
      aParam[0] := 'CODIGO';
      aParam[1] := iAgente;
      fdQuery := agentes.Localizar(aParam);
      Finalize(aParam);
      if not fdQuery.IsEmpty then
      begin
        sTipo := fdQuery.FieldByName('DES_FORMA_PAGAMENTO').AsString;
        sBanco := fdQuery.FieldByName('cod_banco').AsString;
        sAgencia := fdQuery.FieldByName('cod_agencia').AsString;
        sConta := fdQuery.FieldByName('num_conta').AsString;
        sFavorecido :=  fdQuery.FieldByName('nom_favorecido').AsString;
        sCPF := fdQuery.FieldByName('num_cpf_cnpj_favorecido').AsString;
      end
      else
      begin
        sTipo := 'NENHUMA';
      end;
      fdQuery.Close;
      if sTipo <> 'NENHUMA' then
      begin
        iTipo := 1;
        iCodigo := iAgente;

      end
      else
      begin
        iTipo := 2;
        iCodigo := iEntregador;
      end;
      sLocate := 'cod_expressa;cod_tipo_expressa';
      if Data_Sisgef.mtbFechamentoExpressas.LocateEx(sLocate,[iCodigo,iTipo],[], nil) then
      begin
        Data_Sisgef.mtbFechamentoExpressas.Edit;
        Data_Sisgef.mtbFechamentoExpressascod_expressa.AsInteger := iCodigo;
        Data_Sisgef.mtbFechamentoExpressascod_tipo_expressa.AsInteger := iTipo;
        Data_Sisgef.mtbFechamentoExpressasval_performance.AsFloat := 0;
        Data_Sisgef.mtbFechamentoExpressasqtd_volumes.AsInteger := Data_Sisgef.mtbFechamentoExpressasqtd_volumes.AsInteger +
                                                                fdQuery.FieldByName('qtd_volumes').AsInteger;
        Data_Sisgef.mtbFechamentoExpressasqtd_entregas.AsInteger := Data_Sisgef.mtbFechamentoExpressasqtd_entregas.AsInteger +
                                                                 fdQuery.FieldByName('qtd_entregas').AsInteger;
        Data_Sisgef.mtbFechamentoExpressasqtd_atraso.AsInteger := Data_Sisgef.mtbFechamentoExpressasqtd_atraso.AsInteger +
                                                                     fdQuery.FieldByName('qtd_itens_atraso').AsInteger;
        Data_Sisgef.mtbFechamentoExpressasqtd_volumes_extra.AsFloat := Data_Sisgef.mtbFechamentoExpressasqtd_volumes_extra.AsFloat +
                                                                    fdQuery.FieldByName('qtd_volumes_extra').AsFloat;
        Data_Sisgef.mtbFechamentoExpressasval_volume_extra.AsFloat := Data_Sisgef.mtbFechamentoExpressasval_volume_extra.AsFloat +
                                                                    fdQuery.FieldByName('val_volumes_extra').AsFloat;
        Data_Sisgef.mtbFechamentoExpressasval_producao.AsFloat := Data_Sisgef.mtbFechamentoExpressasval_producao.AsFloat +
                                                            fdQuery.FieldByName('val_producao').AsFloat;
        if iTipo = 1 then
        begin
          Data_Sisgef.mtbFechamentoExpressasnom_expressa.AsString := fdQuery.FieldByName('nom_agente').AsString;
        end
        else
        begin
          Data_Sisgef.mtbFechamentoExpressasnom_expressa.AsString := fdQuery.FieldByName('nom_entregador').AsString;
        end;
        Data_Sisgef.mtbFechamentoExpressasnom_banco.AsFloat := fdQuery.FieldByName('val_producao').AsString;
        Data_Sisgef.mtbFechamentoExpressasdes_tipo_conta.AsFloat := fdQuery.FieldByName('val_producao').AsString;
        Data_Sisgef.mtbFechamentoExpressasnum_agencia.AsFloat := fdQuery.FieldByName('val_producao').AsString;
        Data_Sisgef.mtbFechamentoExpressasnum_conta.AsFloat := fdQuery.FieldByName('val_producao').AsString;
        Data_Sisgef.mtbFechamentoExpressasnom_favorecido.AsFloat := fdQuery.FieldByName('val_producao').AsString;
        Data_Sisgef.mtbFechamentoExpressasnum_cpf_cnpj.AsFloat := fdQuery.FieldByName('val_producao').AsString;
        Data_Sisgef.mtbFechamentoExpressasqtd_pfp.AsInteger := Data_Sisgef.mtbFechamentoExpressasqtd_pfp.AsInteger +
                                                                     fdQuery.FieldByName('qtd_atraso').AsInteger;
        Data_Sisgef.mtbFechamentoExpressasval_ticket_medio.AsFloat := fdQuery.FieldByName('val_producao').AsFloat;
        Data_Sisgef.mtbFechamentoExpressasval_total_ticket.AsFloat := Data_Sisgef.mtbFechamentoExpressasval_total_ticket.AsFloat +
                                                                      fdQuery.FieldByName('val_producao').AsFloat;
        Data_Sisgef.mtbFechamentoExpressasval_extravios.AsFloat := Data_Sisgef.mtbFechamentoExpressasval_extravios.AsFloat +
                                                                      fdQuery.FieldByName('val_producao').AsFloat;
        Data_Sisgef.mtbFechamentoExpressasval_debitos.AsFloat := Data_Sisgef.mtbFechamentoExpressasval_debitos.AsFloat +
                                                                fdQuery.FieldByName('val_producao').AsFloat;
        Data_Sisgef.mtbFechamentoExpressasval_creditos.AsFloat := Data_Sisgef.mtbFechamentoExpressasval_creditos.AsFloat +
                                                                fdQuery.FieldByName('val_producao').AsFloat;
        Data_Sisgef.mtbFechamentoExpressasval_total.AsFloat := Data_Sisgef.mtbFechamentoExpressasval_total.AsFloat +
                                                                      fdQuery.FieldByName('val_producao').AsFloat;


        Data_Sisgef.mtbFechamentoExpressas.Post;
      end
      else
      begin
        Data_Sisgef.mtbFechamentoExpressas.Edit;
        Data_Sisgef.mtbFechamentoExpressascod_expressa.AsInteger := fdQuery.FieldByName('cod_tipo_expressa').AsInteger;
        Data_Sisgef.mtbFechamentoExpressascod_tipo_expressa.AsInteger := fdQuery.FieldByName('cod_tipo_expressa').AsInteger;
        Data_Sisgef.mtbFechamentoExpressasval_performance.AsFloat := fdQuery.FieldByName('val_percentual_sla').AsFloat;
        Data_Sisgef.mtbFechamentoExpressasqtd_volumes.AsInteger := Data_Sisgef.mtbFechamentoExpressasqtd_volumes.AsInteger +
                                                                fdQuery.FieldByName('qtd_volumes').AsInteger;
        Data_Sisgef.mtbFechamentoExpressasqtd_entregas.AsInteger := Data_Sisgef.mtbFechamentoExpressasqtd_entregas.AsInteger +
                                                                 fdQuery.FieldByName('qtd_entregas').AsInteger;
        Data_Sisgef.mtbFechamentoExpressasqtd_atraso.AsInteger := Data_Sisgef.mtbFechamentoExpressasqtd_atraso.AsInteger +
                                                                     fdQuery.FieldByName('qtd_atraso').AsInteger;
        Data_Sisgef.mtbFechamentoExpressasqtd_volumes_extra.AsFloat := Data_Sisgef.mtbFechamentoExpressasqtd_volumes_extra.AsFloat +
                                                                    fdQuery.FieldByName('qtd_extra').AsFloat;
        Data_Sisgef.mtbFechamentoExpressasval_volume_extra.AsFloat := Data_Sisgef.mtbFechamentoExpressasval_volume_extra.AsFloat +
                                                                    fdQuery.FieldByName('val_volumes_extra').AsFloat;
        Data_Sisgef.mtbFechamentoExpressasval_producao.AsFloat := Data_Sisgef.mtbFechamentoExpressasval_producao.AsFloat +
                                                            fdQuery.FieldByName('val_producao').AsFloat;
        Data_Sisgef.mtbFechamentoExpressasval_producao.AsFloat := fdQuery.FieldByName('val_producao').AsFloat;
        Data_Sisgef.mtbFechamentoExpressasnom_expressa.AsFloat := fdQuery.FieldByName('val_producao').AsString;
        Data_Sisgef.mtbFechamentoExpressasnom_banco.AsFloat := fdQuery.FieldByName('val_producao').AsString;
        Data_Sisgef.mtbFechamentoExpressasdes_tipo_conta.AsFloat := fdQuery.FieldByName('val_producao').AsString;
        Data_Sisgef.mtbFechamentoExpressasnum_agencia.AsFloat := fdQuery.FieldByName('val_producao').AsString;
        Data_Sisgef.mtbFechamentoExpressasnum_conta.AsFloat := fdQuery.FieldByName('val_producao').AsString;
        Data_Sisgef.mtbFechamentoExpressasnom_favorecido.AsFloat := fdQuery.FieldByName('val_producao').AsString;
        Data_Sisgef.mtbFechamentoExpressasnum_cpf_cnpj.AsFloat := fdQuery.FieldByName('val_producao').AsString;
        Data_Sisgef.mtbFechamentoExpressasqtd_pfp.AsInteger := Data_Sisgef.mtbFechamentoExpressasqtd_pfp.AsInteger +
                                                                     fdQuery.FieldByName('qtd_atraso').AsInteger;
        Data_Sisgef.mtbFechamentoExpressasval_ticket_medio.AsFloat := fdQuery.FieldByName('val_producao').AsFloat;
        Data_Sisgef.mtbFechamentoExpressasval_total_ticket.AsFloat := Data_Sisgef.mtbFechamentoExpressasval_total_ticket.AsFloat +
                                                                      fdQuery.FieldByName('val_producao').AsFloat;
        Data_Sisgef.mtbFechamentoExpressasval_extravios.AsFloat := Data_Sisgef.mtbFechamentoExpressasval_extravios.AsFloat +
                                                                      fdQuery.FieldByName('val_producao').AsFloat;
        Data_Sisgef.mtbFechamentoExpressasval_debitos.AsFloat := Data_Sisgef.mtbFechamentoExpressasval_debitos.AsFloat +
                                                                fdQuery.FieldByName('val_producao').AsFloat;
        Data_Sisgef.mtbFechamentoExpressasval_creditos.AsFloat := Data_Sisgef.mtbFechamentoExpressasval_creditos.AsFloat +
                                                                fdQuery.FieldByName('val_producao').AsFloat;
        Data_Sisgef.mtbFechamentoExpressasval_total.AsFloat := Data_Sisgef.mtbFechamentoExpressasval_total.AsFloat +
                                                                      fdQuery.FieldByName('val_producao').AsFloat;


        Data_Sisgef.mtbFechamentoExpressas.Post;
      end;

    end;
  finally
    fdQuery.Free;
    agentes.Free;
    entregadores.Free;
  end;
end;

procedure TRoBExtratoExpressas.MontaPeriodo(iAno, iMes, iQuinzena: Integer);
var
  parametros : TParametrosControl;
  FDQuery: TFDQuery;
  pParam: Array of variant;
  iDiaInicio, iDiaFinal, iMesData, iAnoData: Integer;
  sData: String;
  datData, datBase: TDate;
begin
  try
    FDquery := TSistemaControl.GetInstance().Conexao.ReturnQuery;
    parametros := TParametrosControl.Create();
    SetLength(pParam,2);

    iAnoData := iAno;
    pParam[0] := 'QUINZENA';
    pParam[1] := iQuinzena;
    FDQuery := parametros.Localizar(pParam);
    Finalize(pParam);
    if not FDQuery.IsEmpty then
    begin
      iDiaInicio := FDQuery.FieldByName('dia_inicio_quinzena').AsInteger;
      iDiaFinal := FDQuery.FieldByName('dia_final_quinzena').AsInteger;
    end
    else
    begin
      if iQuinzena = 1 then
      begin
        iDiaInicio := 1;
        iDiaFinal := 15;
      end
      else
      begin
        iDiaInicio := 16;
        sData := '01/' + FormatFloat('00', iMes) + '/' + IntToStr(iAnoData);
        iDiaFinal := DaysInMonth(StrToDate(sData));
      end;
    end;
    if iDiaInicio > iDiaFinal then
    begin
      if iMes = 1 then
      begin
        iMesData := 12;
        iAnoData := iAnoData - 1;
        sData := FormatFloat('00', iDiaInicio) + '/' + FormatFloat('00', iMesData) + '/' + FormatFloat('0000', iAnoData);
      end
      else
      begin
        iMesData := iMes - 1;
        iAnoData := iAno;
        sData := FormatFloat('00', iDiaInicio) + '/' + FormatFloat('00', iMesData) + '/' + FormatFloat('0000', iAnoData);
      end;
      dtDataInicial := StrToDate(sData);
      iMesData := iMes;
      iAnoData := iAno;
      sData := FormatFloat('00', iDiaFinal) + '/' + FormatFloat('00', iMesData) + '/' + FormatFloat('0000', iAnoData);
      dtDataFinal := StrToDate(sData);
    end
    else
    begin
      iMesData := iMes;
      iAnoData := iAno;
      sData := FormatFloat('00', iDiaInicio) + '/' + FormatFloat('00', iMesData) + '/' + FormatFloat('0000', iAnoData);
      dtDataInicial := StrToDate(sData);
      iMesData := iMes;
      iAnoData := iAno;
      sData := FormatFloat('00', iDiaFinal) + '/' + FormatFloat('00', iMesData) + '/' + FormatFloat('0000', iAnoData);
      dtDataFinal := StrToDate(sData);
    end;
    FDQuery.Close;
  finally
    FDQuery.Free;
    parametros.Free;
  end;
end;

end.
