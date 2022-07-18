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
    procedure ExecuteGeneralProcess;
    procedure ExecuteGenerateCreditWorksheetExpress; // gera planilha de crédito de expressas
  protected
    procedure Execute; override;
  public
    property Situacao: integer read FSituacao write FSituacao;  // 1 = novo, 2 = salvo
    property TipoPlanilha: integer read FTipoPlanilha write FTipoPlanilha; // 0 = Todas, 1 = Expresssas, 2 = Jornal, 3 = Serviços
    property InProcess: boolean read FInProcess write FInProcess; // True = Em processo, False = Processo terminado
    property AbortProcess: boolean read FAbortProcess write FAbortProcess; // True = Processo abortado, False = Processo normal
    property Mensagem: string read FMensagem write FMensagem; // mensagem de processamento
    property DateCredit: TDate read FDateCredit write FDateCredit; // data do crédito
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
      FMensagem := 'Opção não implementada.';
      FAbortProcess := True;
    end;
  end;
  FInProcess := False;
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
  sForma, sModalidade, sBanco, sNomeBanco, sAgencia, sConta, sCnpjCpf, sFavorecido, sTipoConta, sNome, sExtrato, sNomeForma: String;
  FBaseCode, FDeliveryCode, FRegisterCode, iBimer: integer;
  aParam : array of variant;
begin
  try
    FConnection := TConexao.Create;
    FBases := TBasesControl.Create;
    FBancos := TBancosControl.Create;
    FEntregadores := TEntregadoresExpressasControl.Create;
    FCadastro := TCadastroControl.Create;
    FUtils := Common.Utils.TUtils.Create;
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
        if sTipoConta = 'POUPANÇA' then
          sModalidade := FBancos.GetField('cod_modalidade_cp',sBanco,'cod_banco')
        else
          sModalidade := FBancos.GetField('cod_modalidade',sBanco,'cod_banco');
        sNomeBanco := FBancos.GetField('nom_banco',sBanco,'cod_banco');
        if memTableCreditWorksheet.Locate('num_cpf_cnpj', sCnpjCpf, [])  then
        begin
          memTableCreditWorksheet.Edit;
          memTableCreditWorksheetval_total.asFloat := memTableCreditWorksheetval_total.asFloat +
                                                     memTableExtractsval_total_expressa.AsFloat;
          memTableCreditWorksheet.Post;
        end
        else
        begin
          if memTableExtractsval_total_expressa.AsFloat > 0 then
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
            memTableCreditWorksheetdes_forma_pagamento.AsString := sNomeForma;
            memTableCreditWorksheetdom_bloqueio.AsInteger := 0;
            memTableCreditWorksheet.Post;
          end;
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

end.
