unit Thread.PrintRunsImport;

interface

uses
  System.Classes, System.DateUtils, System.SysUtils, Controller.SisGeFTiragens, Common.ENum, System.StrUtils, Common.Utils;

type
  TThread_PrintRunsImport = class(TThread)
  private
    FTotalRegistros: Integer;
    FTotalInconsistencias: Integer;
    FTotalGravados: Integer;
    FCancelar: Boolean;
    FLog: String;
    FProgresso: Double;
    FArquivo: String;
    FProcesso: Boolean;
    sMensagem: String;
    aParam: Array of variant;
    iPos : Integer;
    FTiragens : TControllerSisGeFTiragens;
    FUltimaData: string;
    procedure UpdateLOG(sMensagem: String);
    procedure ImportPrintRuns;
    function ReturnDate(): String;
  protected
    procedure Execute; override;
  public
    property Arquivo: String read FArquivo write FArquivo;
    property Processo: Boolean read FProcesso write FProcesso;
    property Log: String read FLog write FLog;
    property Progresso: Double read FProgresso write FProgresso;
    property TotalRegistros: Integer read FTotalRegistros write FTotalRegistros;
    property TotalGravados: Integer read FTotalGravados write FTotalGravados;
    property TotalInconsistencias: Integer read FTotalInconsistencias write FTotalInconsistencias;
    property UltimaData: string read FUltimaData write FUltimaData;
    property Cancelar: Boolean read FCancelar write FCancelar;
  end;

implementation

{ 
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);  

  and UpdateCaption could look like,

    procedure TThread_PrintRunsImport.UpdateCaption;
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

uses Data.SisGeF;

{ TThread_PrintRunsImport }

procedure TThread_PrintRunsImport.Execute;
begin
  ImportPrintRuns;
end;

procedure TThread_PrintRunsImport.ImportPrintRuns;
var
  sData: string;
  FUtils : Common.Utils.TUtils;
begin
  try
    try
      FProcesso := True;
      FCancelar := False;
      FTiragens := TControllerSisGeFTiragens.Create;
      FUtils := Common.Utils.TUtils.Create;
      sMensagem := '>> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' - Preparando a importação. Aguarde...';
      UpdateLog(sMensagem);
      if not Data_Sisgef.ImportPrintRuns(FArquivo) then
      begin
        UpdateLOG('Erro ao importar a planilha!');
        FCancelar := True;
        Exit;
      end;
      sMensagem := '>> ' + FormatDateTime('yyyy/mm/dd hh:mm:ss', Now) + ' - Iniciando a importação do arquivo ' + FArquivo +
                '. Aguarde...';
      UpdateLog(sMensagem);
      iPos := 0;
      FTotalRegistros := Data_Sisgef.memTableImport.RecordCount;
      FTotalGravados := 0;
      FTotalInconsistencias := 0;
      FProgresso := 0;
      Data_Sisgef.memTableImport.First;
      sData := ReturnDate;
      if not FUtils.DataOk(sData) then
      begin
        sMensagem := 'Data inválida!';
        UpdateLog(sMensagem);
        FProcesso := False;
        FCancelar := True;
        Abort;
      end;
      if StrToDate(sData) > (StrToDate(UltimaData) + 1) then
      begin
        sMensagem := 'Arquivo com data de tiragem maior que a esperada!';
        UpdateLog(sMensagem);
        FProcesso := False;
        FCancelar := True;
        Abort;
      end;
      Inc(IPOS,1);
      while not Data_Sisgef.memTableImport.Eof do
      begin
        if Data_Sisgef.memTableImport.Fields.Fields[0].AsString <> 'TOTAIS' then
        begin
          SetLength(aParam, 3);
          aParam := ['TIRAGEM', StrToDateTime(sData), Data_Sisgef.memTableImport.Fields.Fields[0].AsString];
          if not FTiragens.Search(aParam) then
          begin
            FTiragens.Tiragens.Acao := tacIncluir;
            FTiragens.Tiragens.ID := 0;
          end
          else
          begin
            FTiragens.Tiragens.Acao := tacAlterar;
            FTiragens.SetupClass;
          end;
          Finalize(aParam);
          FTiragens.Tiragens.ID := FTiragens.Tiragens.ID;
          FTiragens.Tiragens.Data := StrToDateTime(sData);
          FTiragens.Tiragens.Roteiro := Data_Sisgef.memTableImport.Fields.Fields[0].AsString;
          FTiragens.Tiragens.Entregador := 0;
          FTiragens.Tiragens.Produto := 'FSP';
          FTiragens.Tiragens.Tiragem := Data_Sisgef.memTableImport.Fields.Fields[2].AsInteger;
          if not FTiragens.Save() then
          begin
            sMensagem := '>> ' + FormatDateTime('yyyy-mm-dd hh:mm:ss', Now) + ' - Erro ao gravar a tiragem -  ' +
                         Data_Sisgef.memTableImport.Fields.Fields[0].AsString + ' !';
            UpdateLog(sMensagem);
            Inc(FTotalInconsistencias,1);
          end
          else
          begin
            Inc(FTotalGravados,1);
          end;
        end
        else
        begin
          Inc(FTotalInconsistencias,1);
        end;
        Data_Sisgef.memTableImport.Next;
        Inc(IPOS,1);
        FProgresso := (iPos / FTotalRegistros) * 100;
        if Self.Terminated then Abort;
      end;
      FProcesso := False;
    Except on E: Exception do
      begin
        sMensagem := '>> ** ERROR TIRAGEM **' + Chr(13) + 'Classe: ' + E.ClassName + chr(13) + 'Mensagem: ' + E.Message;
        UpdateLog(sMensagem);
        FProcesso := False;
        FCancelar := True;
      end;
    end;
  finally
    Data_Sisgef.memTableImport.Active := False;
    FTiragens.Free;
    FUtils.Free;
  end;
end;

function TThread_PrintRunsImport.ReturnDate: String;
var
  sf : TStringList;
  sl : TStringList;
  sDate : String;
begin
  Result := '';
  sf := TStringList.Create;
  sl := TStringList.Create;
  sl.Delimiter := ';';
  sl.StrictDelimiter := True;
  sf.LoadFromFile(FArquivo);
  sl.DelimitedText := sf[0];
  sDate := RightStr(sl[2], 10);
  Result := sDate;
end;

procedure TThread_PrintRunsImport.UpdateLOG(sMensagem: String);
begin
  if FLog <> '' then
  begin
    FLog := FLog + #13;
  end;
  FLog := FLog + sMensagem;
end;

end.
