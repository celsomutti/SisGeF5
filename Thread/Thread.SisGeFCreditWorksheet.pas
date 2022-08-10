unit Thread.SisGeFCreditWorksheet;

interface

uses
  System.Classes, Control.Bancos, Control.Bases, Control.Cadastro, Control.EntregadoresExpressas, DAO.Conexao,
  FireDAC.Comp.DataSet, System.SysUtils;

type
  TThead_SisGefCreditWorksheet = class(TThread)
  private
    FConnection : TConexao;
    FTipoPlanilha: integer;
    FSituacao: integer;
    FAbortProcess: boolean;
    FInProcess: boolean;
    FMensagem: string;
    FDateCredit: TDate;
    FTypeProcess: integer;
    procedure ExecuteGeneralProcess;
    procedure ExecuteGenerateCreditWorksheetExpress; // gera planilha de crédito de expressas
    procedure ExecuteClearCreditWorksheetExpress; // exclui planilhas do banco de dados para novas planilhas
    procedure ExecuteSaveCreditWorksheetExress; // salva a planilha no banco de dados;
    procedure ExecuteListCreditWorksheetExpress; // recupera a planilha salva no banco de dados;
  protected
    procedure Execute; override;
  public
    property Situacao: integer read FSituacao write FSituacao;  // 1 = novo, 2 = salvo
    property TipoPlanilha: integer read FTipoPlanilha write FTipoPlanilha; // 0 = Todas, 1 = Expresssas, 2 = Jornal, 3 = Serviços
    property InProcess: boolean read FInProcess write FInProcess; // True = Em processo, False = Processo terminado
    property AbortProcess: boolean read FAbortProcess write FAbortProcess; // True = Processo abortado, False = Processo normal
    property Mensagem: string read FMensagem write FMensagem; // mensagem de processamento
    property DateCredit: TDate read FDateCredit write FDateCredit; // data do crédito
    property TypeProcess: integer read FTypeProcess write FTypeProcess;
  end;

implementation

{
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure TThead_SisGefCreditWorksheet.UpdateCaption;
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

uses Data.SisGeF, Common.Utils;

{ TThead_SisGefCreditWorksheet }

procedure TThead_SisGefCreditWorksheet.Execute;
begin
  FInProcess := True;
  FAbortProcess := False;
  if FTypeProcess = 1 then
  begin
    if FSituacao = 1 then
    begin
      case FTipoPlanilha of
        0 : ExecuteGeneralProcess;
        1 : ExecuteGenerateCreditWorksheetExpress;
        else
          begin
            FMensagem := 'Opção não implementada.';
            FAbortProcess := True;
          end;
      end;
    end
    else if FSituacao = 2 then
    begin
      begin
        ExecuteListCreditWorksheetExpress;
      end;
    end;
  end
  else if FTypeProcess = 2 then
  begin
    ExecuteClearCreditWorksheetExpress;
    ExecuteSaveCreditWorksheetExress;
  end;
  FInProcess := False;
end;

procedure TThead_SisGefCreditWorksheet.ExecuteClearCreditWorksheetExpress;
var
  aParam : array of variant;
begin
  try
    FConnection := TConexao.Create;
    with Data_Sisgef do
    begin
      storedProcCreditWhorsheet.Active := False;
      storedProcCreditWhorsheet.Filtered := False;
      storedProcCreditWhorsheet.Filter := '';
      storedProcCreditWhorsheet.Connection := FConnection.GetConn;
      storedProcCreditWhorsheet.storedProcName := 'sp_clear_credit_worksheet';
      storedProcCreditWhorsheet.SchemaName := 'bderpsisgef';
      storedProcCreditWhorsheet.Prepare;
      storedProcCreditWhorsheet.ParamByName('pcod_tipo_extrato').AsInteger := FTipoPlanilha;
      storedProcCreditWhorsheet.ParamByName('pdat_credito').AsDate := FDateCredit;
      storedProcCreditWhorsheet.ExecProc;
      storedProcCreditWhorsheet.Connection.Connected := False;
    end;
  finally
    FConnection.Free;
  end;
end;

procedure TThead_SisGefCreditWorksheet.ExecuteGeneralProcess;
begin
  ExecuteGenerateCreditWorksheetExpress;
end;

procedure TThead_SisGefCreditWorksheet.ExecuteGenerateCreditWorksheetExpress;
var
  FBases : TBasesControl;
  FBancos : TBancosControl;
  FEntregadores : TEntregadoresExpressasControl;
  FCadastro : TCadastroControl;
  FUtils : Common.Utils.TUtils;
  sForma, sModalidade, sBanco, sNomeBanco, sAgencia, sConta, sCnpjCpf, sFavorecido, sTipoConta, sNome, sExtrato,
  sNomeForma, sObs, sObsOld: String;
  FBaseCode, FDeliveryCode, FRegisterCode, iBimer: integer;
  aTypeExtract : array of string;
  aParam : array of variant;
begin
  try
    FConnection := TConexao.Create;
    FBases := TBasesControl.Create;
    FBancos := TBancosControl.Create;
    FEntregadores := TEntregadoresExpressasControl.Create;
    FCadastro := TCadastroControl.Create;
    FUtils := Common.Utils.TUtils.Create;
    SetLength(aTypeExtract,4);
    aTypeExtract := ['TODOS', 'EXPRESSAS', 'PERIÓDICOS', 'SERVIÇOS'];
    with Data_Sisgef do
    begin
      if memTableExtracts.Active then memTableExtracts.Active := False;
      storedProcListExtractExpress.Active := False;
      storedProcListExtractExpress.Filtered := False;
      storedProcListExtractExpress.Filter := '';
      storedProcListExtractExpress.Connection := FConnection.GetConn;
      storedProcListExtractExpress.storedProcName := 'sp_list_express_extract_by_date_credit';
      storedProcListExtractExpress.SchemaName := 'bderpsisgef';
      storedProcListExtractExpress.Prepare;
      storedProcListExtractExpress.ParamByName('pDateCredit').AsDate := FDateCredit;
      storedProcListExtractExpress.Active := True;
      memTableExtracts.Active := True;
      memTableExtracts.CopyDataSet(storedProcListExtractExpress, [coAppend]);
      storedProcListExtractExpress.Connection.Connected := False;
      if memTableExtracts.IsEmpty then
      begin
        FMensagem := 'Nenhum registro de extrato encontrado!';
        FAbortProcess := True;
        Exit;
      end;

      if memTableCreditWorksheet.Active then memTableCreditWorksheet.Active := False;
      memTableCreditWorksheet.Active := True;
      memTableExtracts.First;
      while not memTableExtracts.Eof do
      begin
        FBaseCode := memTableExtractscod_base.AsInteger;
        FDeliveryCode := memTableExtractscod_entregador.AsInteger;
        FRegisterCode := 0;
        sForma := '0';
        sNome := '';
        sFavorecido := '';
        sBanco := '';
        sAgencia := '';
        sConta := '';
        sCnpjCpf := '';
        sBanco := '0';
        iBimer := 0;
        sObs := '';
        sObsOld := '';
        SetLength(aParam, 2);
        aParam := ['ENTREGADOR', FDeliveryCode];
        if FEntregadores.LocalizarExato(aParam) then
        begin
          FRegisterCode := FEntregadores.Entregadores.Cadastro;
        end;
        Finalize(aParam);
        SetLength(aParam, 2);
        aParam := ['CADASTRO', FRegisterCode];
        if FCadastro.Localizar(aParam) then
        begin
          FCadastro.SetupModel(FCadastro.Cadastro.Query);
          FCadastro.Cadastro.Query.Connection.Connected := False;
          if (FCadastro.Cadastro.FormaPagamento <> 'NENHUMA') and (FCadastro.Cadastro.FormaPagamento <> '') then
          begin
            if Pos(FCadastro.Cadastro.FormaPagamento,'OBB PLUS,TED/DOC') > 0 then
              sForma := '000009'
            else if Pos(FCadastro.Cadastro.FormaPagamento,'DEPÓSITO/TRANSFERÊNCIA') > 0 then
              sForma := '000011'
            else if Pos(FCadastro.Cadastro.FormaPagamento,'DINHEIRO') > 0 then
              sForma := '000005';
            if sForma <> '0' then
            begin
              sNome := FCadastro.Cadastro.Nome;
              sFavorecido := FCadastro.Cadastro.NomeFavorecido;
              sBanco := FCadastro.Cadastro.Banco;
              sAgencia := FCadastro.Cadastro.AgenciaConta;
              sConta := FCadastro.Cadastro.NumeroConta;
              sCnpjCpf := FCadastro.Cadastro.CPFCNPJFavorecido;
              sTipoConta := FCadastro.Cadastro.TipoConta;
              iBimer := FCadastro.Cadastro.CentroCusto;
              sNomeForma := FCadastro.Cadastro.FormaPagamento;
            end;
          end;
        end;
        Finalize(aParam);
        if sForma = '0' then
        begin
          SetLength(aParam, 2);
          aParam := ['CODIGO', FBaseCode];
          if FBases.LocalizarExato(aParam) then
          begin
            if FBases.Bases.FormaPagamento <> 'NENHUMA' then
            begin
              if Pos(FBases.Bases.FormaPagamento,'OBB PLUS,TED/DOC') > 0 then
                sForma := '000009'
              else if Pos(FBases.Bases.FormaPagamento,'DEPÓSITO/TRANSFERÊNCIA') > 0 then
                sForma := '000011'
              else if Pos(FCadastro.Cadastro.FormaPagamento,'DINHEIRO') > 0 then
                sForma := '000005';
              if sForma <> '0' then
              begin
                sNome := FBases.Bases.RazaoSocial;
                sFavorecido := FBases.Bases.NomeFavorecido;
                sBanco := FBases.Bases.CodigoBanco;
                sAgencia := FBases.Bases.NumeroAgente;
                sConta := FBases.Bases.NumeroConta;
                sCnpjCpf := FBases.Bases.CNPJCPFFavorecido;
                sTipoConta := FBases.Bases.TipoConta;
                iBimer := FBases.Bases.CentroCusto;
                sNomeForma := FBases.Bases.FormaPagamento;
              end;
            end;
          end;
          Finalize(aParam);
        end;
        if sTipoConta = 'CONTA POUPANÇA' then
          sModalidade := FBancos.GetField('cod_modalidade_cp',sBanco,'cod_banco')
        else
          sModalidade := FBancos.GetField('cod_modalidade',sBanco,'cod_banco');
        sNomeBanco := FBancos.GetField('nom_banco',sBanco,'cod_banco');
        sObs := aTypeExtract[FTipoPlanilha] + ' - período de ' + memTableExtractsdat_inicio.AsString + ' e ' +
                memTableExtractsdat_final.AsString;
        if memTableCreditWorksheet.Locate('num_cpf_cnpj', sCnpjCpf, [])  then
        begin
          sObsOld := memTableCreditWorksheetdes_observation.asString;
          if Pos(sObs, sObsOld) = 0 then
            sObsOld := sObsOld + #13 + sObs;
          memTableCreditWorksheet.Edit;
          memTableCreditWorksheetdes_observation.asString := sObsOld;
          memTableCreditWorksheetval_total.asFloat := memTableCreditWorksheetval_total.asFloat +
                                                     memTableExtractsval_total_expressa.AsFloat;
          memTableCreditWorksheet.Post;
        end
        else
        begin
          sExtrato := FUtils.ExpressStatementNumber(memTableExtractsdat_inicio.AsDateTime, memTableExtractsdat_final.AsDateTime,
          iBimer, '');
          memTableCreditWorksheet.Insert;
          memTableCreditWorksheetid_registro.AsInteger := 0;
          memTableCreditWorksheetcod_tipo_extrato.AsInteger := 1;
          memTableCreditWorksheetcod_cadastro.AsInteger := iBimer;
          memTableCreditWorksheetnom_cadastro.AsString := sNome;
          memTableCreditWorksheetcod_banco.AsString := sBanco;
          memTableCreditWorksheetnom_banco.AsString := sNomeBanco;
          memTableCreditWorksheetdes_tipo_conta.AsString := sTipoConta;
          memTableCreditWorksheetnum_agencia.AsString := sAgencia;
          memTableCreditWorksheetnum_conta.AsString := sConta;
          memTableCreditWorksheetnom_favorecido.AsString := sFavorecido;
          memTableCreditWorksheetnum_cpf_cnpj.AsString := sCnpjCpf;
          memTableCreditWorksheetval_total.AsFloat := memTableExtractsval_total_expressa.AsFloat;
          memTableCreditWorksheetdes_unique_key.AsString := memTableExtractsdes_unique_key.AsString;
          memTableCreditWorksheetdat_credito.AsDateTime := FDateCredit;
          memTableCreditWorksheetnum_extrato.AsString := sExtrato;
          memTableCreditWorksheetcod_forma_pagamento.AsString := sForma;
          memTableCreditWorksheetdes_forma_pagamento.AsString := sNomeForma;
          memTableCreditWorksheetcod_modalidade_pagamento.AsString := sModalidade;
          memTableCreditWorksheetdom_bloqueio.AsInteger := 0;
          memTableCreditWorksheetdes_observation.AsString := sObs;
          memTableCreditWorksheet.Post;
        end;
        memTableExtracts.Next;
      end;
      memTableExtracts.Active := False;
    end;
  finally
    FBases.Free;
    FBancos.Free;
    FEntregadores.Free;
    FCadastro.Free;
    FUtils.Free;
    FConnection.Free;
  end;
end;

procedure TThead_SisGefCreditWorksheet.ExecuteListCreditWorksheetExpress;
var
  FConnection : TConexao;
  i: integer;
  FFiltro : String;
begin
  FInProcess := True;
  FAbortProcess := False;
  FConnection := Tconexao.Create;
  with Data_Sisgef do
  begin
    memTableCreditWorksheet.Active := False;
    FFiltro := '';
    storedProcCreditWhorsheet.Active := False;
    storedProcCreditWhorsheet.Filtered := False;
    storedProcCreditWhorsheet.Filter := '';
    storedProcCreditWhorsheet.Connection := FConnection.GetConn;
    storedProcCreditWhorsheet.storedProcName := 'sp_list_credit_worksheet';
    storedProcCreditWhorsheet.SchemaName := 'bderpsisgef';
    storedProcCreditWhorsheet.Prepare;
    storedProcCreditWhorsheet.ParamByName('pdat_credito').AsDate := FDateCredit;
    if FTipoPlanilha <> 0 then
    begin
      FFiltro := 'cod_tipo_extrato = ' + FTipoPlanilha.ToString;
    end;
    if FFiltro <> '' then
    begin
      storedProcCreditWhorsheet.Filter := FFiltro;
      storedProcCreditWhorsheet.Filtered := True;
    end;
    storedProcCreditWhorsheet.Active := True;
    memTableCreditWorksheet.Active := True;
    memTableCreditWorksheet.CopyDataSet(storedProcCreditWhorsheet, [coAppend]);
    storedProcCreditWhorsheet.Connection.Connected := False;
    if not memTableCreditWorksheet.IsEmpty then
    begin
      memTableCreditWorksheet.First;
    end
    else
    begin
      FMensagem := 'Nenhum registro encontrado!';
      FAbortProcess := True;
    end;
  end;
  FInProcess := False;
end;

procedure TThead_SisGefCreditWorksheet.ExecuteSaveCreditWorksheetExress;
var
  sParamName : string;
  i : integer;
  FUtils : Common.Utils.TUtils;
  FConnection : TConexao;
begin
  FUtils := Common.Utils.TUtils.Create;
  FInProcess := True;
  FAbortProcess := False;
  FConnection := TConexao.Create;
  with Data_Sisgef do
  begin
    if not memTableCreditWorksheet.IsEmpty then memTableCreditWorksheet.First;
    storedProcCreditWhorsheet.Active := False;
    storedProcCreditWhorsheet.Filtered := False;
    storedProcCreditWhorsheet.Filter := '';
    storedProcCreditWhorsheet.Connection := FConnection.GetConn;
    while not memTableCreditWorksheet.Eof do
    begin
      storedProcCreditWhorsheet.storedProcName := 'sp_insert_credit_worksheet_express';
      storedProcCreditWhorsheet.SchemaName := 'bderpsisgef';
      storedProcCreditWhorsheet.Prepare;
      for i := 0 to Pred(memTableCreditWorksheet.FieldCount) do
      begin
        if Pos(memTableCreditWorksheet.Fields[i].FieldName, 'id_registro') = 0 then
        begin
          sParamName := 'p' + memTableCreditWorksheet.Fields[i].FieldName;
          storedProcCreditWhorsheet.ParamByName(sParamName).Value := memTableCreditWorksheet.Fields[i].Value;
        end;
      end;
      storedProcCreditWhorsheet.ExecProc;
      memTableCreditWorksheet.Next;
    end;
    storedProcCreditWhorsheet.Connection.Connected := False;
    FInProcess := False;
  end;
  FInProcess := False;
end;

end.
