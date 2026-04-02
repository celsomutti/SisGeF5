unit Thread.SisGeFImportSheetConfrontations;

interface

uses
  System.Classes, service.connectionMySQL, Common.Utils, Controller.SisGeFCadastroContratados, System.SysUtils,
  services.SisGeFSheetConfrontations, Common.ENum, Controller.SisGeFContratadosRH, System.StrUtils,
  service.sistem, Control.Acareacao, FireDAC.Comp.Client;

type
  Thread_ImportConfrontations = class(TThread)
  private
    FObs                  : string;
    FTotalGravados        : integer;
    FTotalRegistros       : integer;
    FDescricao            : string;
    FCliente              : integer;
    FTotalInconsistencias : integer;
    FEntregador           : integer;
    FCancelar             : boolean;
    FAgente               : integer;
    FLoja                 : boolean;
    FLog                  : string;
    FProgresso            : double;
    FArquivo              : string;
    FTMS                  : integer;
    FTipo                 : integer;
    FData                 : tdate;
    FProcesso             : boolean;
    FSystem               : TSistem;

    procedure UpdateLOG(sMensagem: String);
    procedure ProcessSPXXPRESS;
    function ReturnDateMySQL(sDate: string): string;
    function ReturnCodeDriver(sDriver: string): integer;
    function ReturnCodeBase(iCod: integer): integer;
    Function ReturnValue(sValue: string): double;
  protected
    procedure Execute; override;
  public
    property Arquivo              : string  read FArquivo               write FArquivo;
    property Processo             : boolean read FProcesso              write FProcesso;
    property Log                  : string  read FLog                   write FLog;
    property Progresso            : double  read FProgresso             write FProgresso;
    property TotalRegistros       : integer read FTotalRegistros        write FTotalRegistros;
    property TotalGravados        : integer read FTotalGravados         write FTotalGravados;
    property TotalInconsistencias : integer read FTotalInconsistencias  write FTotalInconsistencias;
    property Cliente              : integer read FCliente               write FCliente;
    property Cancelar             : boolean read FCancelar              write FCancelar;
    property Tipo                 : integer read FTipo                  write FTipo;
    property Loja                 : boolean read FLoja                  write FLoja;
    property Descricao            : string  read FDescricao             write FDescricao;
    property Agente               : integer read FAgente                write FAgente;
    property Entregador           : integer read FEntregador            write FEntregador;
    property Data                 : tdate   read FData                  write FData;
    property Obs                  : string  read FObs                   write FObs;
    property TMS                  : integer read FTMS                   write FTMS;

  end;

implementation

{ 
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure Thread_ImportConfrontations.UpdateCaption;
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

{ Thread_ImportConfrontations }

procedure Thread_ImportConfrontations.Execute;
var
  sMensagem : string;
begin
    FSystem := TSistem.GetInstance;
    case FTMS of
      5 : ProcessSPXXPRESS;
      else
        begin
          sMensagem := '>> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) +
                       ' - Rotina não implementada para este Cliente! Processamento cancelado.';
          UpdateLOG(sMensagem);
          FCancelar := True;
      end;
    end;

end;

procedure Thread_ImportConfrontations.ProcessSPXXPRESS;
var
  FPlanilha             : TSheetConfrontations;
  iTipo, i, iPos        : integer;
  sOperacao, sMensagem  : string;
  dPeso                 : double;
  FUtil                 : TUtils;
  sDatas, sObs          : string;
  sParam                : array of string;
  vParam                : array of variant;
  FAcareacoes           : TAcareacaoControl;
  FEntregadores         : TCadastroContratadosController;
  FQuery                : TFDQuery;
begin
  FUtil := TUtils.Create;
  try
    try
      FProcesso   := True;
      FCancelar   := False;
      FPlanilha   := TSheetConfrontations.Create;
      FAcareacoes := TAcareacaoControl.Create;
      sMensagem := '>> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' - Preparando a importação. Aguarde...';
      UpdateLog(sMensagem);
      FPlanilha.FileName := FArquivo;
      if not FPLanilha.GetSheet() then
      begin
        UpdateLOG(FPlanilha.Mensagem);
        FCancelar := True;
        Exit;
      end;
      sMensagem := '>> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' - Iniciando a importação do arquivo ' + FArquivo +
                '. Aguarde...';
      UpdateLog(sMensagem);
      iPos := 0;
      FTotalRegistros := FPlanilha.Planilha.Count;
      FTotalGravados := 0;
      FTotalInconsistencias := 0;
      FProgresso := 0;
      for i := 0 to FTotalRegistros - 1 do
      begin
        SetLength(vParam,3);
        vParam := ['FILTRO', ' ID_ACAREACAO = "' + FPlanilha.Planilha[i].IdTicket +
                   '" and NUM_NOSSONUMERO = "' +FPlanilha.Planilha[i].SPXTN + '"'];
        FQuery := FAcareacoes.Localizar(vParam);
        if FQuery.IsEmpty then
          FAcareacoes.Acareacoes.Acao := tacIncluir
        else
        begin
          FAcareacoes.Acareacoes.Sequencia := FQuery.FieldByName('SEQ_ACAREACAO').AsInteger;
          FAcareacoes.Acareacoes.Acao := tacAlterar;
        end;
        Finalize(vParam);
        FQuery.Connection.Close;
        FAcareacoes.Acareacoes.Id := FPlanilha.Planilha[i].IdTicket;
        FAcareacoes.Acareacoes.Data := StrToDateDef(Copy(FPlanilha.Planilha[i].CreatedTime,1,10), Now());
        FAcareacoes.Acareacoes.Nossonumero := FPlanilha.Planilha[i].SPXTN;
        FAcareacoes.Acareacoes.Entregador := ReturnCodeDriver(FPlanilha.Planilha[i].Driver);
        FAcareacoes.Acareacoes.Base := ReturnCodeBase(FAcareacoes.Acareacoes.Entregador);
        FAcareacoes.Acareacoes.Motivo := 'NÃO RECEBIMENTO';
        FAcareacoes.Acareacoes.Extravio := ReturnValue(FPlanilha.Planilha[i].Value);
        FAcareacoes.Acareacoes.Multa := 0;
        FAcareacoes.Acareacoes.Obs := 'Assignment Task ID ' + FPlanilha.Planilha[i].Assignment + ', ' + Chr(13) +
                                      'Assignee ' + FPlanilha.Planilha[i].Assignee;
        FAcareacoes.Acareacoes.Apuracao := FPlanilha.Planilha[i].Rejection;
        FAcareacoes.Acareacoes.Resultado := FPlanilha.Planilha[i].Status;
        FAcareacoes.Acareacoes.Finalizar := False;
        FAcareacoes.Acareacoes.Executor := FSystem.CurrentLogin;
        FAcareacoes.Acareacoes.Manutencao := Now();
        FAcareacoes.Acareacoes.DataRetorno := StrToDateTimeDef(FPlanilha.Planilha[i].SLA + ':00', Now() + 2);
        FAcareacoes.Acareacoes.Unidade := FPlanilha.Planilha[i].Station;
        if FAcareacoes.GravarImportacao then
        begin
          Inc(FTotalGravados,1)
        end
        else
        begin
          sMensagem := FAcareacoes.Mensagem;
          UpdateLog(sMensagem);
          Inc(FTotalInconsistencias,1);
        end;
        iPos := i;
        FProgresso := (iPos / (FTotalRegistros - 1)) * 100;
        if Self.Terminated then Abort;
      end;
      FProcesso := False;
    Except on E: Exception do
      begin
        sMensagem := '>> ** ERROR SPXXPRESS**' + Chr(13) + 'Classe: ' + E.ClassName + chr(13) + 'Mensagem: ' + E.Message;
        UpdateLog(sMensagem);
        FProcesso := False;
        FCancelar := True;
      end;
    end;
  finally
    FPlanilha.Free;
    FAcareacoes.Free;
    FUtil.Free;
  end;
end;

function Thread_ImportConfrontations.ReturnCodeBase(iCod: integer): integer;
var
  FCadastro : TContratadosRHController;
  sParam: array of string;
begin
  Result := 0;
  FCadastro := TContratadosRHController.Create;
  SetLength(sParam,2);
  try
    sParam := ['CONTRATADO', iCod.ToString];
    if FCadastro.Search(sParam) then
    begin
      if FCadastro.FRH.SetupRecords then
        Result := FCadastro.FRH.ARecord.id_departamento;
    end;
  finally
    Finalize(sParam);
    FCadastro.Free;
  end;
end;

function Thread_ImportConfrontations.ReturnCodeDriver(sDriver: string): integer;
var
  sCod : String;
  iPos : integer;
begin
  Result := 0;
  iPos := Pos(']', sDriver);
  sCod := Copy(sDriver,2,iPos - 2);
  Result := StrToIntDef(sCod, 0);
end;

function Thread_ImportConfrontations.ReturnDateMySQL(sDate: string): string;
var
  sDat : string;
begin
  Result := EmptyStr;
  sDat := Copy(sDate,7,4) + '-' + Copy(sDate,4,2) + '-' + Copy(sDate,1,2) + ' ' + Copy(sDate, 12,4) + ':00';
  Result := sDat;
end;

function Thread_ImportConfrontations.ReturnValue(sValue: string): double;
var
  dVal: double;
  sVal: string;
begin
  Result := 0;
  dVal := 0;
  sVal := EmptyStr;
  sVal := ReplaceStr(sValue, '.', ',');
  dVal := StrToFloatDef(sVal,0);
  Result := dVal;
end;

procedure Thread_ImportConfrontations.UpdateLOG(sMensagem: String);
begin
  if FLog <> '' then
  begin
    FLog := FLog + #13;
  end;
  FLog := FLog + sMensagem;
end;

end.
