unit Thread.ConsolidaExtratoExpressa;

interface

uses
  System.Classes, Control.Bases, Control.EntregadoresExpressas, Control.Cadastro, System.SysUtils, Forms, Windows, System.Variants,
  Control.Bancos, Control.FechamentoExpressas;

type
  TThread_ConsolidaExtratoExpressa = class(TThread)
  public
    FbGravar: Boolean;
  private
    { Private declarations }
    FBases : TBasesControl;
    FCadastro: TCadastroControl;
    FEntregadores: TEntregadoresExpressasControl;
    FBancos: TBancosControl;
    iConta: Integer;
  protected
    procedure Execute; override;
    procedure StartProc;
    procedure FinalizeProc;
    procedure UpdateCount;
    procedure ShowForm;
    procedure SalvaConsolidacao();
  end;

implementation

{
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure Thread_ConsolidaExtratoExpressa.UpdateCaption;
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

uses Data.SisGeF, View.ConsolidacaoExpressas, View.ExtratoExpressas;

{ Thread_ConsolidaExtratoExpressa }

procedure TThread_ConsolidaExtratoExpressa.Execute;
var
  bCancel : Boolean;
  iTipo, iCodigo, iEntregador: Integer;
  sForma, sBanco, sAgencia, sConta, sTipoConta, sFavorecido, sCPFCNPJ, sCadastro, sNome, sNomeBanco: String;

begin
  { Place thread code here }
  try
    try
      Synchronize(StartProc);
      FBases := TBasesControl.Create;
      FCadastro := TCadastroControl.Create;
      FEntregadores := TEntregadoresExpressasControl.Create;
      FBancos := TBancosControl.Create;
      if not Data_Sisgef.mtbExtratosExpressas.IsEmpty then Data_Sisgef.mtbExtratosExpressas.First;
      if not Data_Sisgef.mtbFechamentoExpressas.Active then Data_Sisgef.mtbFechamentoExpressas.Close;
      Data_Sisgef.mtbFechamentoExpressas.Open;
      while not Data_Sisgef.mtbExtratosExpressas.Eof do
      begin
        iTipo := 0;
        iCodigo := 0;
        iEntregador := 0;
        sNome := '';
        sForma := '';
        sBanco := '';
        sNomeBanco := '';
        sAgencia := '';
        sConta := '';
        sTipoConta := '';
        sFavorecido := '';
        sCPFCNPJ := '';
        sCadastro := '';

        sForma := FBases.GetField('des_forma_pagamento','cod_agente', Data_Sisgef.mtbExtratosExpressascod_base.AsString);

        if sForma.IsEmpty then sForma := 'NENHUMA';

        if sForma <> 'NENHUMA' then
        begin
          iTipo := 1;
          iCodigo := Data_Sisgef.mtbExtratosExpressascod_base.AsInteger;
          sNome :=  FBases.GetField('nom_fantasia','cod_agente', iCodigo.ToString);
          sBanco := FBases.GetField('cod_banco','cod_agente', iCodigo.ToString);
          sNomeBanco := FBancos.GetField('nom_banco','cod_banco',QuotedStr(sBanco));
          sAgencia := FBases.GetField('cod_agencia','cod_agente', iCodigo.ToString);
          sConta := FBases.GetField('num_conta','cod_agente', iCodigo.ToString);
          sTipoConta := FBases.GetField('des_tipo_conta','cod_agente', iCodigo.ToString);
          sFavorecido := FBases.GetField('nom_favorecido','cod_agente', iCodigo.ToString);
          sCPFCNPJ := FBases.GetField('num_cpf_cnpj_favorecido','cod_agente', iCodigo.ToString);
        end
        else
        begin

          sCadastro := FEntregadores.GetField('cod_cadastro', 'cod_entregador', Data_Sisgef.mtbExtratosExpressascod_entregador.AsString);
          sNome := FEntregadores.GetField('nom_fantasia', 'cod_entregador', Data_Sisgef.mtbExtratosExpressascod_entregador.AsString);

          sForma := FCadastro.GetField('des_forma_pagamento','cod_cadastro', sCadastro);

          if sForma.IsEmpty then sForma := 'NENHUMA';

          if sForma <> 'NENHUMA' then
          begin
            iTipo := 2;
            iCodigo := Data_Sisgef.mtbExtratosExpressascod_entregador.AsInteger;
            sBanco := FCadastro.GetField('cod_banco','cod_cadastro', sCadastro);
            sNomeBanco := FBancos.GetField('nom_banco','cod_banco',QuotedStr(sBanco));
            sAgencia := FCadastro.GetField('cod_agencia','cod_cadastro', sCadastro);
            sConta := FCadastro.GetField('num_conta','cod_cadastro', sCadastro);
            sTipoConta := FCadastro.GetField('des_tipo_conta','cod_cadastro', sCadastro);
            sFavorecido := FCadastro.GetField('nom_favorecido','cod_cadastro', sCadastro);
            sCPFCNPJ := FCadastro.GetField('num_cpf_cnpj_favorecido','cod_cadastro', sCadastro);
          end;
        end;

        if Data_Sisgef.mtbFechamentoExpressas.LocateEx('cod_expressa;cod_tipo_expressa', VarArrayOf([iCodigo, iTipo]), []) then
        begin
          Data_Sisgef.mtbFechamentoExpressas.Edit;
          Data_Sisgef.mtbFechamentoExpressasqtd_volumes.AsInteger := Data_Sisgef.mtbFechamentoExpressasqtd_volumes.AsInteger +
                                                                     Data_Sisgef.mtbExtratosExpressasqtd_volumes.AsInteger;
          Data_Sisgef.mtbFechamentoExpressasqtd_entregas.AsInteger := Data_Sisgef.mtbFechamentoExpressasqtd_entregas.AsInteger +
                                                                      Data_Sisgef.mtbExtratosExpressasqtd_entregas.AsInteger;
          Data_Sisgef.mtbFechamentoExpressasqtd_volumes_extra.AsFloat := Data_Sisgef.mtbFechamentoExpressasqtd_volumes_extra.AsFloat +
                                                                         Data_Sisgef.mtbExtratosExpressasqtd_volumes_extra.AsFloat;
          Data_Sisgef.mtbFechamentoExpressasqtd_atraso.AsInteger := Data_Sisgef.mtbFechamentoExpressasqtd_atraso.AsInteger +
                                                                    Data_Sisgef.mtbExtratosExpressasqtd_atraso.AsInteger;
          Data_Sisgef.mtbFechamentoExpressasval_producao.AsFloat := Data_Sisgef.mtbFechamentoExpressasval_producao.AsFloat +
                                                                    Data_Sisgef.mtbExtratosExpressasval_producao.AsFloat;
          Data_Sisgef.mtbFechamentoExpressasval_total_ticket.AsFloat := Data_Sisgef.mtbFechamentoExpressasval_total_ticket.AsFloat +
                                                                        Data_Sisgef.mtbExtratosExpressasval_total_empresa.AsFloat;
          Data_Sisgef.mtbFechamentoExpressasval_extravios.AsFloat := Data_Sisgef.mtbFechamentoExpressasval_extravios.AsFloat +
                                                                     Data_Sisgef.mtbExtratosExpressasval_extravios.AsFloat;
          Data_Sisgef.mtbFechamentoExpressasval_debitos.AsFloat := Data_Sisgef.mtbFechamentoExpressasval_debitos.AsFloat +
                                                                   Data_Sisgef.mtbExtratosExpressasval_debitos.AsFloat;
          Data_Sisgef.mtbFechamentoExpressasval_creditos.AsFloat := Data_Sisgef.mtbFechamentoExpressasval_creditos.AsFloat +
                                                                    Data_Sisgef.mtbExtratosExpressasval_creditos.AsFloat;
          Data_Sisgef.mtbFechamentoExpressasval_total.AsFloat := Data_Sisgef.mtbFechamentoExpressasval_total.AsFloat +
                                                                 Data_Sisgef.mtbExtratosExpressasval_total_expressa.AsFloat;
          Data_Sisgef.mtbFechamentoExpressasval_volume_extra.AsFloat := Data_Sisgef.mtbFechamentoExpressasval_volume_extra.AsFloat +
                                                                        Data_Sisgef.mtbExtratosExpressasval_volumes_extra.AsFloat;
          Data_Sisgef.mtbFechamentoExpressas.Post;
        end
        else
        begin
          Data_Sisgef.mtbFechamentoExpressas.Insert;
          Data_Sisgef.mtbFechamentoExpressasdat_inicio.AsDateTime := Data_Sisgef.mtbExtratosExpressasdat_inicio.AsDateTime;
          Data_Sisgef.mtbFechamentoExpressasdat_fim.AsDateTime := Data_Sisgef.mtbExtratosExpressasdat_final.AsDateTime;
          Data_Sisgef.mtbFechamentoExpressasqtd_volumes.AsInteger := Data_Sisgef.mtbExtratosExpressasqtd_volumes.AsInteger;
          Data_Sisgef.mtbFechamentoExpressasqtd_entregas.AsInteger := Data_Sisgef.mtbExtratosExpressasqtd_entregas.AsInteger;
          Data_Sisgef.mtbFechamentoExpressasqtd_volumes_extra.AsFloat := Data_Sisgef.mtbExtratosExpressasqtd_volumes_extra.AsFloat;
          Data_Sisgef.mtbFechamentoExpressasqtd_atraso.AsInteger := Data_Sisgef.mtbExtratosExpressasqtd_atraso.AsInteger;
          Data_Sisgef.mtbFechamentoExpressasval_producao.AsFloat := Data_Sisgef.mtbExtratosExpressasval_producao.AsFloat;
          Data_Sisgef.mtbFechamentoExpressasval_total_ticket.AsFloat := Data_Sisgef.mtbExtratosExpressasval_total_empresa.AsFloat;
          Data_Sisgef.mtbFechamentoExpressasval_extravios.AsFloat := Data_Sisgef.mtbExtratosExpressasval_extravios.AsFloat;
          Data_Sisgef.mtbFechamentoExpressasval_debitos.AsFloat := Data_Sisgef.mtbExtratosExpressasval_debitos.AsFloat;
          Data_Sisgef.mtbFechamentoExpressasval_creditos.AsFloat := Data_Sisgef.mtbExtratosExpressasval_creditos.AsFloat;
          Data_Sisgef.mtbFechamentoExpressascod_tipo_expressa.AsInteger := iTipo;
          Data_Sisgef.mtbFechamentoExpressasnom_expressa.AsString := sNome;
          Data_Sisgef.mtbFechamentoExpressasval_total.AsFloat := Data_Sisgef.mtbExtratosExpressasval_total_expressa.AsFloat;
          Data_Sisgef.mtbFechamentoExpressasnom_banco.AsString := sNomeBanco;
          Data_Sisgef.mtbFechamentoExpressasnum_agencia.AsString := sAgencia;
          Data_Sisgef.mtbFechamentoExpressasnum_conta.AsString := sConta;
          Data_Sisgef.mtbFechamentoExpressasnom_favorecido.AsString := sFavorecido;
          Data_Sisgef.mtbFechamentoExpressasnum_cpf_cnpj.AsString := sCPFCNPJ;
          Data_Sisgef.mtbFechamentoExpressasdes_tipo_conta.AsString := sTipoConta;
          Data_Sisgef.mtbFechamentoExpressasqtd_pfp.AsInteger := 0;
          Data_Sisgef.mtbFechamentoExpressasval_volume_extra.AsFloat := Data_Sisgef.mtbExtratosExpressasval_volumes_extra.AsFloat;
          Data_Sisgef.mtbFechamentoExpressascod_expressa.AsInteger := iCodigo;
          Data_Sisgef.mtbFechamentoExpressasdes_unique_key.AsString := Data_Sisgef.mtbExtratosExpressasdes_unique_key.AsString;
          Data_Sisgef.mtbFechamentoExpressasdat_credito.AsDateTime := Data_Sisgef.mtbExtratosExpressasdat_credito.AsDateTime;
          Data_Sisgef.mtbFechamentoExpressasdom_boleto.AsInteger := 0;
          Data_Sisgef.mtbFechamentoExpressasnum_extrato.AsString := Data_Sisgef.mtbExtratosExpressasnum_extrato.AsString;
          Data_Sisgef.mtbFechamentoExpressas.Post;
        end;
        iConta := Data_Sisgef.mtbExtratosExpressas.RecNo;
        Synchronize(UpdateCount);
        Data_Sisgef.mtbExtratosExpressas.Next;
      end;
      if not Data_Sisgef.mtbFechamentoExpressas.IsEmpty then Data_Sisgef.mtbFechamentoExpressas.First;
      while not Data_Sisgef.mtbFechamentoExpressas.Eof do
      begin
        if Data_Sisgef.mtbFechamentoExpressasval_total.AsFloat <= 0 then
        begin
          Data_Sisgef.mtbFechamentoExpressas.Delete;
        end;
        if not Data_Sisgef.mtbFechamentoExpressas.Eof then Data_Sisgef.mtbFechamentoExpressas.Next;
      end;
      if not Data_Sisgef.mtbFechamentoExpressas.IsEmpty then Data_Sisgef.mtbFechamentoExpressas.First;
    Except
      on E: Exception do
        begin
          Application.MessageBox(PChar('Classe: ' + E.ClassName + chr(13) + 'Mensagem: ' + E.Message), 'Erro', MB_OK + MB_ICONERROR);
          bCancel := True;
        end;
    end;
    Synchronize(FinalizeProc);
  finally
    if bCancel then
    begin
      Application.MessageBox('Processo Cancelado!', 'Consolidação do extrato', MB_OK + MB_ICONWARNING);
    end
    else
    begin
      if FbGravar then
      begin
        Synchronize(ShowForm);
      end
      else
      begin
        Synchronize(SalvaConsolidacao);
      end;
    end;
    FBases.Free;
    FEntregadores.Free;
    FCadastro.Free;
  end;
end;

procedure TThread_ConsolidaExtratoExpressa.FinalizeProc;
begin
  view_ExtratoExpressas.dsExtrato.Enabled := True;
  view_ExtratoExpressas.dxLayoutItem19.Visible := False;
  if FbGravar then
  begin
    view_ExtratoExpressas.actProcessar.Enabled := True;
    view_ExtratoExpressas.actEncerrarExtrato.Enabled := True;
    view_ExtratoExpressas.actAlterarCliente.Enabled := True;
    view_ExtratoExpressas.actVisualizarParamatros.Enabled:= True;
  end;
  view_ExtratoExpressas.actFechar.Enabled := True;
  view_ExtratoExpressas.tvExtrato.ViewData.Expand(True);
end;

procedure TThread_ConsolidaExtratoExpressa.SalvaConsolidacao;
var
  FFechamento : TFechamentoExpressasControl;
begin
  try
    FFechamento := TFechamentoExpressasControl.Create;
    if not FFechamento.SaveDB(Data_Sisgef.mtbFechamentoExpressas) then
    begin
      Application.MessageBox('Consolidação NÃO foi gravada no banco de dados!', 'Atenção', MB_OK + MB_ICONWARNING);
    end
    else
    begin
      Application.MessageBox('Consolidação gravada no banco de dados!', 'Gravação', MB_OK + MB_ICONINFORMATION);
    end;
  finally
    FFechamento.Free;
  end;
end;

procedure TThread_ConsolidaExtratoExpressa.ShowForm;
begin
  if not Assigned(view_ConsolidacaoExpressas) then
  begin
    view_ConsolidacaoExpressas := Tview_ConsolidacaoExpressas.Create(Application);
  end;
  view_ConsolidacaoExpressas.Show;
end;

procedure TThread_ConsolidaExtratoExpressa.StartProc;
begin
  view_ExtratoExpressas.dsExtrato.Enabled := False;
  view_ExtratoExpressas.actProcessar.Enabled := False;
  view_ExtratoExpressas.actEncerrarExtrato.Enabled := False;
  view_ExtratoExpressas.actAlterarCliente.Enabled := False;
  view_ExtratoExpressas.actVisualizarParamatros.Enabled:= False;
  if  FbGravar then
  begin
    view_ExtratoExpressas.actFechar.Enabled := False;
  end;
end;

procedure TThread_ConsolidaExtratoExpressa.UpdateCount;
begin
  if not view_ExtratoExpressas.dxLayoutItem19.Visible then view_ExtratoExpressas.dxLayoutItem19.Visible := True;

  view_ExtratoExpressas.cxLabel2.Caption := iConta.ToString;
  view_ExtratoExpressas.cxLabel2.Refresh;
end;

end.
