unit Thread.ExtratoExpressas;

interface

uses
  System.Classes, Common.ENum, Common.Utils, Control.Bases, Control.Cadastro, Control.EntregadoresExpressas, Control.Entregas,
  Control.ExtraviosMultas, Control.Lancamentos, Control.Parametros, System.SysUtils, FireDAC.Comp.DataSet,
  System.DateUtils;

type
  TTHead_ExtratoExpressas = class(TThread)
  private
    procedure StartProcess;
    procedure StopProcess;
    procedure UpdateLOG(sText: String);
  protected
    procedure Execute; override;
  public
    bVolumeExtra: Boolean;
    bProcessaAnteriores: Boolean;
    dtDataInicial: TDate;
    dtDataFinal: TDate;
    sListaClientes: String;
    sListaBases: String;
    iAno: Integer;
    iMes: Integer;
    iQuinzena: Integer;
  end;

implementation

{ 
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);  

  and UpdateCaption could look like,

    procedure TTHead_ExtratoExpressas.UpdateCaption;
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

uses Data.SisGeF, Global.Parametros;

{ TTHead_ExtratoExpressas }

procedure TTHead_ExtratoExpressas.Execute;
var
  FEntregas: TEntregasControl;
  FLancamentos : TLancamentosControl;
  FExtravios: TExtraviosMultasControl;
  FEntregadores : TEntregadoresExpressasControl;
  aParam, pParam: array of variant;
  sExtrato, sUniqueKey, sLocate: String;
  dtData1: TDate;
  bFlagGrava: Boolean;
  iDias, iAgente, iEntregador, iClienteEmpresa: Integer;
begin
  try
    try

      {processa o extrato}

      Synchronize(StartProcess);

      FEntregas := TEntregasControl.Create;
      if Data_Sisgef.mtbExtratosExpressas.Active then
      begin
        Data_Sisgef.mtbExtratosExpressas.Close;
      end;
      SetLength(aParam,9);
      aParam[0] := bVolumeExtra;
      aParam[1] := bProcessaAnteriores;
      aParam[2] := dtDataInicial;
      aParam[3] := dtDataFinal;
      aParam[4] := sListaClientes;
      aParam[5] := sListaBases;
      aParam[6] := iAno;
      aParam[7] := iMes;
      aParam[8] := iQuinzena;
      if FEntregas.EntregasExtratoEntregadores(aParam) then
      begin
        Data_Sisgef.mtbExtratosExpressas.Open;
        Data_Sisgef.mtbExtratosExpressas.CopyDataSet(FEntregas.Entregas.Query,[coRestart, coAppend]);
        Data_Sisgef.mtbExtratosExpressas.First;
      end
      else
      begin
        Global.Parametros.psMessage := 'Não existem informações de entregas neste período!';
        UpdateLog(Global.Parametros.psMessage);
        Global.Parametros.pbProcess := False;
      end;
      Finalize(aParam);
      Fentregas.Entregas.Query.Close;
      Fentregas.Entregas.Query.Connection.Close;
      if not Global.Parametros.pbProcess then
      begin
        Exit;
      end;
      sUniqueKey := Common.Utils.TUtils.GenerateUniqueKey('exp');
      while not Data_Sisgef.mtbExtratosExpressas.Eof do
      begin
        if StrToIntDef(Data_Sisgef.mtbExtratosExpressasnum_extrato.AsString,0) = 0 then
        begin
          dtData1 := StrToDate('31/12/1899');
          iDias := DaysBetween(dtData1,dtDataFinal);
          sExtrato := IntToStr(iDias) + IntToStr(Data_Sisgef.mtbExtratosExpressascod_base.AsInteger) +
                                      IntToStr(Data_Sisgef.mtbExtratosExpressascod_entregador.AsInteger);
          Data_Sisgef.mtbExtratosExpressas.Edit;
          Data_Sisgef.mtbExtratosExpressasdat_inicio.AsDateTime := dtDataInicial;
          Data_Sisgef.mtbExtratosExpressasdat_final.AsDateTime := dtDataFinal;
          Data_Sisgef.mtbExtratosExpressasnum_extrato.AsString := sExtrato;
          Data_Sisgef.mtbExtratosExpressasdes_unique_key.AsString := sUniqueKey;
          Data_Sisgef.mtbExtratosExpressas.Post;
        end;
        Data_Sisgef.mtbExtratosExpressas.Next;
      end;
      Data_Sisgef.mtbExtratosExpressas.First;

      {processa os lançamentos}

      FLancamentos := TLancamentosControl.Create;
      SetLength(aParam,2);
      aParam := [dtDataFinal,'S'];
      if FLancamentos.ExtratoLancamentosEntregador(aParam) then
      begin
        FLancamentos.Lancamentos.Query.First;
        FEntregadores := TEntregadoresExpressasControl.Create;
        while not FLancamentos.Lancamentos.Query.Eof do
        begin
          SetLength(pParam,2);
          pParam :=['CADASTRO', FLancamentos.Lancamentos.Query.FieldByName('cod_entregador').AsInteger];
          if FEntregadores.LocalizarExato(pParam) then
          begin
            iAgente := FEntregadores.Entregadores.Agente;
            iEntregador := FEntregadores.Entregadores.Entregador;
            iClienteEmpresa := FEntregadores.Entregadores.Cliente;
            bFlagGrava := True;
            if not sListaClientes.IsEmpty then
            begin
              if Pos(iClienteEmpresa.ToString,sListaClientes) = 0 then
              begin
                bFlagGrava := False;
              end;
            end;
            if bFlagGrava then
            begin
            if not sListaBases.IsEmpty then
              begin
                if Pos(iAgente.ToString,sListaBases) = 0 then
                begin
                  bFlagGrava := False;
                end;
              end;
            end;
            Finalize(pParam);
            if bFlagGrava then
            begin
              sLocate := 'cod_entregador = ' + iEntregador.ToString;
              if Data_Sisgef.mtbExtratosExpressas.LocateEx(sLocate,[]) then
              begin
                Data_Sisgef.mtbExtratosExpressas.Edit;
                if FLancamentos.Lancamentos.Query.FieldByName('des_tipo').AsString = 'CREDITO' then
                begin
                  Data_Sisgef.mtbExtratosExpressasval_creditos.AsFloat := FLancamentos.Lancamentos.Query.FieldByName('val_total').AsFloat;
                end
                else if FLancamentos.Lancamentos.Query.FieldByName('des_tipo').AsString = 'DEBITO' then
                begin
                  Data_Sisgef.mtbExtratosExpressasval_debitos.AsFloat := (0 - FLancamentos.Lancamentos.Query.FieldByName('val_total').AsFloat);
                end;
                Data_Sisgef.mtbExtratosExpressas.Post
              end
              else
              begin
                sExtrato := '0';
                dtData1 := StrToDate('31/12/1899');
                iDias := DaysBetween(dtData1, dtDataFinal);
                sExtrato := IntToStr(iDias) + IntToStr(iAgente) +
                                            IntToStr(iEntregador);
                Data_Sisgef.mtbExtratosExpressas.Insert;
                Data_Sisgef.mtbExtratosExpressasdat_inicio.AsDateTime := dtDataInicial;
                Data_Sisgef.mtbExtratosExpressasdat_final.AsDateTime := dtDataFinal;
                Data_Sisgef.mtbExtratosExpressascod_base.AsInteger := iAgente;
                Data_Sisgef.mtbExtratosExpressascod_entregador.AsInteger := iEntregador;
                Data_Sisgef.mtbExtratosExpressasnum_extrato.AsString := sExtrato;
                Data_Sisgef.mtbExtratosExpressasval_verba.AsFloat := 0;
                Data_Sisgef.mtbExtratosExpressasqtd_volumes_extra.AsFloat := 0;
                Data_Sisgef.mtbExtratosExpressasqtd_entregas.AsInteger := 0;
                Data_Sisgef.mtbExtratosExpressasqtd_atraso.AsInteger := 0;
                Data_Sisgef.mtbExtratosExpressasval_performance.AsFloat := 0;
                if FLancamentos.Lancamentos.Query.FieldByName('des_tipo').AsString = 'CREDITO' then
                begin
                  Data_Sisgef.mtbExtratosExpressasval_creditos.AsFloat := FLancamentos.Lancamentos.Query.FieldByName('val_total').AsFloat;
                  Data_Sisgef.mtbExtratosExpressasval_debitos.AsFloat := 0;
                end
                else if FLancamentos.Lancamentos.Query.FieldByName('des_tipo').AsString = 'DEBITO' then
                begin
                  Data_Sisgef.mtbExtratosExpressasval_creditos.AsFloat := 0;
                  Data_Sisgef.mtbExtratosExpressasval_debitos.AsFloat := (0 - FLancamentos.Lancamentos.Query.FieldByName('val_total').AsFloat);
                end;
                Data_Sisgef.mtbExtratosExpressasval_extravios.AsFloat := 0;
                Data_Sisgef.mtbExtratosExpressasid_extrato.AsInteger := 0;
                Data_Sisgef.mtbExtratosExpressasnum_ano.AsInteger := iAno;
                Data_Sisgef.mtbExtratosExpressasnum_mes.AsInteger := iMes;
                Data_Sisgef.mtbExtratosExpressasnum_quinzena.AsInteger := iQuinzena;
                Data_Sisgef.mtbExtratosExpressasqtd_volumes.AsInteger := 0;
                Data_Sisgef.mtbExtratosExpressasval_total_empresa.AsFloat := 0;
                Data_Sisgef.mtbExtratosExpressasdes_unique_key.AsString := sUniqueKey;
                Data_Sisgef.mtbExtratosExpressascod_cliente.AsInteger := iClienteEmpresa;
                Data_Sisgef.mtbExtratosExpressas.Post;
              end;
            end;
          end;
        end;
        Finalize(aParam);
        FEntregadores.Free;
      end;

      {processa os extravios}

      FExtravios := TExtraviosMultasControl.Create;
      if FExtravios.ExtraviosExtratoEntregadores() then
      begin
        FExtravios.Extravios.Query.First;
        FEntregadores := TEntregadoresExpressasControl.Create;
        while not FLancamentos.Lancamentos.Query.Eof do
        begin
          SetLength(pParam,2);
          pParam :=['ENTREGADOR', FExtravios.Extravios.Query.FieldByName('cod_entregador').AsInteger];
          if FEntregadores.LocalizarExato(aParam) then
          begin
            iAgente := FEntregadores.Entregadores.Agente;
            iEntregador := FEntregadores.Entregadores.Entregador;
            iClienteEmpresa := FEntregadores.Entregadores.Cliente;
            bFlagGrava := True;
            if not sListaClientes.IsEmpty then
            begin
              if Pos(iClienteEmpresa.ToString,sListaClientes) = 0 then
              begin
                bFlagGrava := False;
              end;
            end;
            if bFlagGrava then
            begin
            if not sListaBases.IsEmpty then
              begin
                if Pos(iAgente.ToString,sListaBases) = 0 then
                begin
                  bFlagGrava := False;
                end;
              end;
            end;
            if bFlagGrava then
            begin
              sLocate := 'cod_entregador = ' + iEntregador.ToString;
              if Data_Sisgef.mtbExtratosExpressas.LocateEx(sLocate,[]) then
              begin
                Data_Sisgef.mtbExtratosExpressas.Edit;
                Data_Sisgef.mtbExtratosExpressasval_debitos.AsFloat := (0 - FExtravios.Extravios.Query.FieldByName('val_total').AsFloat);
                Data_Sisgef.mtbExtratosExpressas.Post
              end
              else
              begin
                sExtrato := '0';
                dtData1 := StrToDate('31/12/1899');
                iDias := DaysBetween(dtData1, dtDataFinal);
                sExtrato := IntToStr(iDias) + IntToStr(iAgente) +
                                            IntToStr(iEntregador);
                Data_Sisgef.mtbExtratosExpressas.Insert;
                Data_Sisgef.mtbExtratosExpressasdat_inicio.AsDateTime := dtDataInicial;
                Data_Sisgef.mtbExtratosExpressasdat_final.AsDateTime := dtDataFinal;
                Data_Sisgef.mtbExtratosExpressascod_base.AsInteger := iAgente;
                Data_Sisgef.mtbExtratosExpressascod_entregador.AsInteger := iEntregador;
                Data_Sisgef.mtbExtratosExpressasnum_extrato.AsString := sExtrato;
                Data_Sisgef.mtbExtratosExpressasval_verba.AsFloat := 0;
                Data_Sisgef.mtbExtratosExpressasqtd_volumes_extra.AsFloat := 0;
                Data_Sisgef.mtbExtratosExpressasqtd_entregas.AsInteger := 0;
                Data_Sisgef.mtbExtratosExpressasqtd_atraso.AsInteger := 0;
                Data_Sisgef.mtbExtratosExpressasval_performance.AsFloat := 0;
                Data_Sisgef.mtbExtratosExpressasval_debitos.AsFloat := 0;
                Data_Sisgef.mtbExtratosExpressasval_creditos.AsFloat := 0;
                Data_Sisgef.mtbExtratosExpressasval_extravios.AsFloat := (0 - FExtravios.Extravios.Query.FieldByName('val_total').AsFloat);
                Data_Sisgef.mtbExtratosExpressasid_extrato.AsInteger := 0;
                Data_Sisgef.mtbExtratosExpressasnum_ano.AsInteger := iAno;
                Data_Sisgef.mtbExtratosExpressasnum_mes.AsInteger := iMes;
                Data_Sisgef.mtbExtratosExpressasnum_quinzena.AsInteger := iQuinzena;
                Data_Sisgef.mtbExtratosExpressasqtd_volumes.AsInteger := 0;
                Data_Sisgef.mtbExtratosExpressasval_total_empresa.AsFloat := 0;
                Data_Sisgef.mtbExtratosExpressasdes_unique_key.AsString := sUniqueKey;
                Data_Sisgef.mtbExtratosExpressascod_cliente.AsInteger := iClienteEmpresa;
                Data_Sisgef.mtbExtratosExpressas.Post;
              end;
            end;
          end;
        end;
      end;

      Synchronize(StopProcess);
      Global.Parametros.psMessage := 'Processo concluído. ' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now);
      Synchronize(UpdateLog(Global.Parametros.psMessage));
    Except on E: Exception do
      begin
        Global.Parametros.psMessage := '** ERROR **' + Chr(13) + 'Classe: ' + E.ClassName + chr(13) + 'Mensagem: ' + E.Message;
        UpdateLog(Global.Parametros.psMessage);
        Global.Parametros.pbProcess := False;
      end;
    end;
  finally
    FEntregas.Free;
  end;
end;

procedure TTHead_ExtratoExpressas.StartProcess;
begin
  Global.Parametros.pdPos := 0;
  Global.Parametros.psMessage := '';
  Global.Parametros.psLOG := '';
  Global.Parametros.pbProcess := True;
end;

procedure TTHead_ExtratoExpressas.StopProcess;
begin
  Global.Parametros.pbProcess := False;
end;

procedure TTHead_ExtratoExpressas.UpdateLOG(sText: String);
begin
  if Global.Parametros.psLOG <> '' then
  begin
    Global.Parametros.psLOG := Global.Parametros.psLOG + #13;
  end;
  Global.Parametros.psLOG := Global.Parametros.psLOG + sText;
end;

end.
