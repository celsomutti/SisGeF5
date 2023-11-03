unit Thread.AnaliseRoteiroExpressas;

interface

uses
  System.Classes, System.SysUtils, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Control.PlanilhaEntradaDIRECT,
  Control.RoteirosExpressas;

type

  Thread_AnaliseRoteirosExpressas = class(TThread)
  private
    FPlanilha : TPlanilhaEntradaDIRECTControl;
    FArquivo: String;
    FProcesso: Boolean;
    FLog: String;
    FTotalRegistros: Integer;
    FProgresso: Double;
    FCancelar: Boolean;
    FMemTab: TFDMemTable;
    FMemTabEntregas: TFDMemTable;
    FMemTabResumo: TFDMemTable;
    FMensagemSistema: String;
    FCliente: Integer;
    procedure UpdateEntregas(i: integer);
    procedure UpdateLOG(sMensagem: String);
    { Private declarations }
  protected
    procedure Execute; override;
  public
    property Arquivo: String read FArquivo write FArquivo;
    property Processo: Boolean read FProcesso write FProcesso;
    property Log: String read FLog write FLog;
    property Progresso: Double read FProgresso write FProgresso;
    property TotalRegistros: Integer read FTotalRegistros write FTotalRegistros;
    property Cliente: Integer read FCliente write FCliente;
    property Cancelar: Boolean read FCancelar write FCancelar;
    property MemTabResumo: TFDMemTable read FMemTabResumo write FMemTabResumo;
    property MemTabEntregas: TFDMemTable read FMemTabEntregas write FMemTabEntregas;
    property MensagemSistema: String read FMensagemSistema write FMensagemSistema;
  end;

implementation

{
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);  

  and UpdateCaption could look like,

    procedure Thread_CapaDirect.UpdateCaption;
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

uses Common.ENum;

{ Thread_AnaliseRoteirosExpressas }

procedure Thread_AnaliseRoteirosExpressas.Execute;
var
  aParam : Array of variant;
  iPos, i, iTipo: Integer;
  sMensagem, sCodigoRoteiro, sNomeRoteiro, sFiltro: String;
  FRoteiro : TRoteirosExpressasControl;
  fdQuery : TFDQuery;
begin
  { Place thread code here }
  try
    FProcesso := True;
    FCancelar := False;
    FPlanilha := TPlanilhaEntradaDIRECTControl.Create;
    FRoteiro := TRoteirosExpressasControl.Create;
    if FPLanilha.GetPlanilha(FArquivo) then
    begin
      iPos := 0;
      FTotalRegistros := FPlanilha.Planilha.Planilha.Count;
      FProgresso := 0;
      for i := 0 to Pred(FTotalRegistros) do
      begin
        if (FPlanilha.Planilha.Planilha[i].Tipo = 'ENTREGA') and (Copy(FPlanilha.Planilha.Planilha[i].Devolucao, 1,1) = 'N') then
        begin
          sFiltro := 'num_cep_inicial = ' + QuotedStr(Copy(FPlanilha.Planilha.Planilha[i].CEP,1,5)) +
          ' and cod_cliente = ' + FCliente.ToString;
          if FPlanilha.Planilha.Planilha[i].PesoNominal > 30 then
          begin
//            sFiltro := 'num_cep_inicial <= ' + QuotedStr(FPlanilha.Planilha.Planilha[i].CEP) +
//            ' and num_cep_final >= ' + QuotedStr(FPlanilha.Planilha.Planilha[i].CEP) +
//            ' and cod_cliente = ' + FCliente.ToString;
            sFiltro := sFiltro + ' and (cod_tipo = 2 or cod_tipo = 3)'
          end
          else
          begin
//            sFiltro := 'num_cep_inicial = ' + QuotedStr(Copy(FPlanilha.Planilha.Planilha[i].CEP,1,5)) +
//            ' and cod_cliente = ' + FCliente.ToString;
            sFiltro := sFiltro + ' and (cod_tipo = 1 or cod_tipo = 3)';
          end;
          SetLength(aParam,4);
          aParam := ['FILTRO', sFiltro];
          fdQuery := FRoteiro.Localizar(aParam);
          if fdQuery.IsEmpty then
          begin
            UpdateEntregas(i);
            fdQuery.Close;
          end
          else
          begin
           if FRoteiro.SetupModel(fdQuery) then
           begin
            fdQuery.Close;
            sCodigoRoteiro := FRoteiro.Roteiros.CCEP5;
            sNomeRoteiro := FRoteiro.Roteiros.Descricao;
            if sCodigoRoteiro = '000' then
            begin
              UpdateEntregas(i);
            end
            else
            begin
              if MemTabResumo.Locate('cod_roteiro', sCodigoRoteiro,[]) then
              begin
                 MemTabResumo.Edit;
                 if FPlanilha.Planilha.Planilha[i].PesoNominal <= 30 then
                 begin
                   MemTabResumo.FieldByName('qtd_volumes_leves').AsInteger := MemTabResumo.FieldByName('qtd_volumes_leves').AsInteger +
                   FPlanilha.Planilha.Planilha[i].Volumes;
                   MemTabResumo.FieldByName('qtd_remessas_leves').AsInteger:= MemTabResumo.FieldByName('qtd_remessas_leves').AsInteger + 1;
                   MemTabResumo.FieldByName('val_pgr_leves').AsFloat := MemTabResumo.FieldByName('val_pgr_leves').AsFloat +
                   FPlanilha.Planilha.Planilha[i].Valor;
                 end
                 else
                 begin
                   MemTabResumo.FieldByName('qtd_volumes_pesado').AsInteger := MemTabResumo.FieldByName('qtd_volumes_pesado').AsInteger +
                   FPlanilha.Planilha.Planilha[i].Volumes;
                   MemTabResumo.FieldByName('qtd_remessas_pesado').AsInteger:= MemTabResumo.FieldByName('qtd_remessas_pesado').AsInteger + 1;
                   MemTabResumo.FieldByName('val_pgr_pesado').AsFloat := MemTabResumo.FieldByName('val_pgr_pesado').AsFloat +
                   FPlanilha.Planilha.Planilha[i].Valor;
                 end;
                 MemTabResumo.FieldByName('val_total_pgr').AsFloat := MemTabResumo.FieldByName('val_total_pgr').AsFloat +
                 FPlanilha.Planilha.Planilha[i].Valor;
                 MemTabResumo.Post;
              end
              else
              begin
                 MemTabResumo.Insert;
                 MemTabResumo.FieldByName('cod_roteiro').AsString := sCodigoRoteiro;
                 MemTabResumo.FieldByName('des_roteiro').AsString := sNomeRoteiro;
                 if FPlanilha.Planilha.Planilha[i].PesoNominal <= 30 then
                 begin
                   MemTabResumo.FieldByName('qtd_volumes_leves').AsInteger := MemTabResumo.FieldByName('qtd_volumes_leves').AsInteger +
                   FPlanilha.Planilha.Planilha[i].Volumes + 0;
                   MemTabResumo.FieldByName('qtd_remessas_leves').AsInteger:= MemTabResumo.FieldByName('qtd_remessas_leves').AsInteger + 1;
                   MemTabResumo.FieldByName('val_pgr_leves').AsFloat := MemTabResumo.FieldByName('val_pgr_leves').AsFloat +
                   FPlanilha.Planilha.Planilha[i].Valor;
                 end
                 else
                 begin
                   MemTabResumo.FieldByName('qtd_volumes_pesado').AsInteger := MemTabResumo.FieldByName('qtd_volumes_pesado').AsInteger +
                   FPlanilha.Planilha.Planilha[i].Volumes + 0;
                   MemTabResumo.FieldByName('qtd_remessas_pesado').AsInteger:= MemTabResumo.FieldByName('qtd_remessas_pesado').AsInteger + 1;
                   MemTabResumo.FieldByName('val_pgr_pesado').AsFloat := MemTabResumo.FieldByName('val_pgr_pesado').AsFloat +
                   FPlanilha.Planilha.Planilha[i].Valor;
                 end;
                 MemTabResumo.FieldByName('val_total_pgr').AsFloat := MemTabResumo.FieldByName('val_total_pgr').AsFloat +
                 FPlanilha.Planilha.Planilha[i].Valor;
                 MemTabResumo.Post;
              end;
            end;
           end;
          end;
          Finalize(aParam);
          iPos := i;
          FProgresso := (iPos / FTotalRegistros) * 100;
          if Self.Terminated then Abort;
        end;
      end;
      fdQuery.Free;
      FProcesso := False;
    end
    else
    begin
      UpdateLOG(FPlanilha.Planilha.Mensagem);
    end;
  Except on E: Exception do
    begin
      sMensagem := '** ERROR **' + 'Classe:' + E.ClassName + chr(13) + 'Mensagem:' + E.Message;
      UpdateLOG(sMensagem);
      FProcesso := False;
    end;
  end;
end;

procedure Thread_AnaliseRoteirosExpressas.UpdateEntregas(i: integer);
var
  sTipo: String;
begin
  MemTabEntregas.Insert;
  MemTabEntregas.FieldByName('num_nossonumero').AsString := FPlanilha.Planilha.Planilha[i].Remessa;
  MemTabEntregas.FieldByName('num_nf').AsString := FPlanilha.Planilha.Planilha[i].NF;
  MemTabEntregas.FieldByName('nom_consumidor').AsString := FPlanilha.Planilha.Planilha[i].NomeConsumidor;
  MemTabEntregas.FieldByName('des_bairro').AsString := FPlanilha.Planilha.Planilha[i].Bairro;
  MemTabEntregas.FieldByName('nom_cidade').AsString := FPlanilha.Planilha.Planilha[i].Municipio;
  MemTabEntregas.FieldByName('num_cep').AsString := FPlanilha.Planilha.Planilha[i].CEP;
  MemTabEntregas.FieldByName('qtd_peso_real').AsFloat := FPlanilha.Planilha.Planilha[i].PesoNominal;
  MemTabEntregas.FieldByName('qtd_peso_franquia').AsFloat := 0;
  MemTabEntregas.FieldByName('qtd_peso_cobrado').AsFloat := FPlanilha.Planilha.Planilha[i].PesoCubado;
  if FPlanilha.Planilha.Planilha[i].PesoNominal <= 30 then
    sTipo := 'LEVE'
  else
    sTipo := 'PESADO';
  MemTabEntregas.FieldByName('des_tipo_peso').AsString := sTipo;
  MemTabEntregas.FieldByName('val_produto').AsFloat := FPlanilha.Planilha.Planilha[i].Valor;
  MemTabEntregas.FieldByName('qtd_altura').AsInteger := 0;
  MemTabEntregas.FieldByName('qtd_largura').AsInteger := 0;
  MemTabEntregas.FieldByName('qtd_comprimento').AsInteger := 0;
  MemTabEntregas.FieldByName('qtd_volumes').AsInteger := FPlanilha.Planilha.Planilha[i].Volumes;
  MemTabEntregas.FieldByName('num_pedido').AsString := FPlanilha.Planilha.Planilha[i].Pedido;
  MemTabEntregas.Post;
end;

procedure Thread_AnaliseRoteirosExpressas.UpdateLOG(sMensagem: String);
begin
  FMensagemSistema := sMensagem;
end;

end.
