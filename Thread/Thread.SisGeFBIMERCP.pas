unit Thread.SisGeFBIMERCP;

interface

uses
  System.Classes, System.SysUtils;

type
  TThread_SisGeFBIMERCP = class(TThread)
  private
    FAbortProcess: boolean;
    FMensagem: string;
    FInProcess: boolean;
    FEmpresa: integer;
    procedure ExecuteCreateWorkscheet;
    property InProcess: boolean read FInProcess write FInProcess; // True = Em processo, False = Processo terminado
    property AbortProcess: boolean read FAbortProcess write FAbortProcess; // True = Processo abortado, False = Processo normal
    property Mensagem: string read FMensagem write FMensagem; // mensagem de processamento
    property Empresa: integer read FEmpresa write FEmpresa; // código da empresa pagadora
  protected
    procedure Execute; override;
  end;

implementation

{ 
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);  

  and UpdateCaption could look like,

    procedure TThread_SisGeFBIMERCP.UpdateCaption;
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

{ TThread_SisGeFBIMERCP }

procedure TThread_SisGeFBIMERCP.Execute;
begin
  FInProcess := True;
  FAbortProcess := False;
  ExecuteCreateWorkscheet;
end;

procedure TThread_SisGeFBIMERCP.ExecuteCreateWorkscheet;
var
  FUtils : Common.Utils.TUtils;
  sTitulo : String;
begin
  FUtils := Common.Utils.TUtils.Create;
  with Data_Sisgef do
  begin
    memTableBIMERCP.Active := False;
    memTableBIMERCP.Active := True;
    while not memTableCreditWorksheet.Eof do
    begin
      sTitulo := FUtils.ExpressStatementNumber(0,memTableCreditWorksheetdat_credito.AsDateTime,memTableCreditWorksheetcod_cadastro.AsInteger,'');
      memTableBIMERCP.Insert;
      memTableBIMERCPCampoEmpresa.AsString := '00003';
      memTableBIMERCPCampoCodigoPessoa.AsString := Format('%.6d', [memTableCreditWorksheetcod_cadastro.AsInteger]);
      memTableBIMERCPCampoNomeTitulo.AsString := memTableCreditWorksheetnom_favorecido.AsString;
      memTableBIMERCPCampoCNPJCPFPessoa.AsString := FUtils.DesmontaCPFCNPJ(memTableCreditWorksheetnum_cpf_cnpj.AsString);
      memTableBIMERCPCampoNumeroTitulo.AsString := sTitulo;
      memTableBIMERCPCampoNaturezaLancamento.AsString := '000010';
      memTableBIMERCPCampoFormaPagamento.AsString := memTableCreditWorksheetcod_forma_pagamento.AsString;
      memTableBIMERCPCampoAgencia.AsString := memTableCreditWorksheetnum_agencia.AsString;
      memTableBIMERCPCampoConta.AsString := memTableCreditWorksheetnum_conta.AsString;
      memTableBIMERCPCampoBanco.AsString := Format('%.3d', [StrToIntDef(memTableCreditWorksheetcod_banco.AsString,0)]);
      memTableBIMERCPCampoValorTitulo.AsString := FormatFloat( '###0.00' , memTableCreditWorksheetval_total.AsFloat);
      memTableBIMERCPCampoDtEmissao.AsString := FormatDateTime('dd/mm/yyyy', Now);
      memTableBIMERCPCampoDtVencimento.AsString := FormatDateTime('dd/mm/yyyy', memTableCreditWorksheetdat_credito.AsDateTime);
      memTableBIMERCPCampoModalidade.AsString := memTableCreditWorksheetcod_modalidade_pagamento.AsString;
      memTableBIMERCP.Post;
      memTableCreditWorksheet.Next;
    end;
  end;
  FUtils.Free;
end;

end.
