unit Thread.SisGeFOMIECP;

interface

uses
  System.Classes, System.SysUtils;

type
  TThread_SisGeFOMIECP = class(TThread)
  private
    FAbortProcess: boolean;
    FMensagem: string;
    FInProcess: boolean;
    FEmpresa: integer;
    FTipoExtrato: integer;
    procedure ExecuteCreateWorkscheet;
  public
    property InProcess: boolean read FInProcess write FInProcess; // True = Em processo, False = Processo terminado
    property AbortProcess: boolean read FAbortProcess write FAbortProcess; // True = Processo abortado, False = Processo normal
    property Mensagem: string read FMensagem write FMensagem; // mensagem de processamento
    property Empresa: integer read FEmpresa write FEmpresa; // código da empresa pagadora
    property TipoExtrato: integer read FTipoExtrato write FTipoExtrato; // tipo de extrato (0=TODOS,1=EXPRESSAS,2=PERIÓDICOS,3=SERVIÇOS)
  protected
    procedure Execute; override;
  end;

implementation

{ 
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);  

  and UpdateCaption could look like,

    procedure TThread_SisGeFOMIECP.UpdateCaption;
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

{ TThread_SisGeFOMIECP }

procedure TThread_SisGeFOMIECP.Execute;
begin
  FInProcess := True;
  FAbortProcess := False;
  ExecuteCreateWorkscheet;
end;

procedure TThread_SisGeFOMIECP.ExecuteCreateWorkscheet;
var
  FUtils : Common.Utils.TUtils;
  sTitulo, FCPFCNPJ, sObs, sObsOld : String;
  FValor: Double;
begin
  FUtils := Common.Utils.TUtils.Create;
  with Data_Sisgef do
  begin
    memTableOMIE.Active := False;
    memTableOMIE.Active := True;
    FValor := 0;
    while not memTableCreditWorksheet.Eof do
    begin
      FCPFCNPJ := memTableCreditWorksheetnum_cpf_cnpj.AsString;
      if memTableOMIE.Locate('num_CNPJ_CPF_titular', FCPFCNPJ,[]) then
      begin
        FValor :=  memTableOMIEval_bruto.AsCurrency;
        FValor := FValor + memTableCreditWorksheetval_total.AsFloat;
        sObsOld := memTableCreditWorksheetdes_observation.asString;
        if Pos(sObs, sObsOld) = 0 then
          sObsOld := sObsOld + #13 + sObs;
        memTableCreditWorksheet.Edit;
        memTableOMIEval_bruto.AsFloat := FValor;
        memTableOMIEdes_observacoes.AsString := sObsOld;
        memTableCreditWorksheet.Post;
      end
      else
      begin
        sTitulo := FUtils.ExpressStatementNumber(0,memTableCreditWorksheetdat_credito.AsDateTime,memTableCreditWorksheetcod_cadastro.AsInteger,'');
        sObsOld := memTableCreditWorksheetdes_observation.asString;
        memTableOMIE.Insert;
        memTableOMIEcod_integracao.AsString := sTitulo;
        memTableOMIEnom_fornecedor.AsString := memTableCreditWorksheetnom_favorecido.AsString;
        memTableOMIEdes_categoria.AsString := 'Pagamento de Terceiros';
        memTableOMIEnom_conta_corrente.AsString := 'Itau Unibanco';
        memTableOMIEval_bruto.AsCurrency := memTableCreditWorksheetval_total.AsFloat;
        memTableOMIEdat_registro.AsDateTime := Now();
        memTableOMIEdat_vencimento.AsDateTime := memTableCreditWorksheetdat_credito.AsDateTime;
        memTableOMIEdes_observacoes.AsString := sObsOld;
        memTableOMIEdes_forma_pagamento.AsString := 'Transferência Bancária';
        memTableOMIEnom_banco_transferencia.AsString := Copy(Format('%.3d', [StrToIntDef(memTableCreditWorksheetcod_banco.AsString,0)]) +
          ' - ' + memTableCreditWorksheetnom_banco.AsString, 0, 40);                                             ;
        memTableOMIEnum_agencia_transferencia.AsString := memTableCreditWorksheetnum_agencia.AsString;
        memTableOMIEnum_conta_transferencia.AsString := memTableCreditWorksheetnum_conta.AsString;
        memTableOMIEnum_CNPJ_CPF_titular.AsString := memTableCreditWorksheetnum_cpf_cnpj.AsString;
        memTableOMIEnom_titular.AsString := memTableCreditWorksheetnom_favorecido.AsString;
        memTableOMIEdes_finalidade_transferencia.AsString := 'Crédito em Conta';

        memTableOMIE.Post;
      end;
      memTableCreditWorksheet.Next;
    end;
  end;
  FUtils.Free;
  FInProcess := False;
end;

end.
