unit THread.SisGeFProcessExtractSO;

interface

uses
  System.Classes, DAO.Conexao, FireDAC.Comp.Client, FireDAC.Comp.DataSet, System.SysUtils;

type
  TTHread_SisGeFProcessExtractSO = class(TThread)
  private
    FEndDate: TDate;
    FAbortProcess: boolean;
    FFiltro: String;
    FStartDate: TDate;
    FMensagem: string;
    FTipo: integer;
    FInProcess: boolean;
    FSituacao: String;
    { Private declarations }
    procedure ExecuteProcessExtractSOByInstallment;
    procedure ExecuteProcessExtractSOByConsumption;
  protected
    procedure Execute; override;
  public
    property Filtro : String read FFiltro write FFiltro;
    property Tipo: integer read FTipo write FTipo;
    property InProcess: boolean read FInProcess;
    property StartDate: TDate read FStartDate write FStartDate;
    property EndDate: TDate read FEndDate write FEndDate;
    property Situacao: String  read FSituacao write FSituacao;
    property Mensagem: string read FMensagem write FMensagem;
    property AbortProcess: boolean read FAbortProcess write FAbortProcess;
  end;

implementation

{ 
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);  

  and UpdateCaption could look like,

    procedure TTHread_SisGeFProcessExtractSO.UpdateCaption;
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

{ TTHread_SisGeFProcessExtractSO }

procedure TTHread_SisGeFProcessExtractSO.Execute;
begin
  case FTipo of
    1 : ExecuteProcessExtractSOByConsumption;
    2 : ExecuteProcessExtractSOByInstallment;
  end;
end;

procedure TTHread_SisGeFProcessExtractSO.ExecuteProcessExtractSOByConsumption;
var
  FConnection : TConexao;
  FQuery : TFDQuery;
  lDetalhe: TStringList;
  i, iTotalLine, iTotalIndex, iStep, iIndex, iItem: integer;
  sDescricao : String;
  aLine: array of variant;
begin
  FInProcess := True;
  FAbortProcess := False;
  FConnection := Tconexao.Create;
  with Data_Sisgef do
  begin
    storedProcExtractExpress.Active := False;
    storedProcExtractExpress.Filtered := False;
    storedProcExtractExpress.Filter := '';
    storedProcExtractExpress.Connection := FConnection.GetConn;
    storedProcExtractSO.storedProcName := 'sp_extractso_by_consumption';
    storedProcExtractSO.SchemaName := 'bderpsisgef';
    storedProcExtractSO.Prepare;
    storedProcExtractSO.ParamByName('pdateinitial').AsDate := FStartDate;
    storedProcExtractSO.ParamByName('pdatefinal').AsDate := FEndDate;
    storedProcExtractSO.ParamByName('pTypeExtract').AsInteger := FTipo;
    storedProcExtractSO.ParamByName('psituation').AsString := FSituacao;
    if FFiltro <> '' then
    begin
      storedProcExtractSO.Filter := FFiltro;
      storedProcExtractSO.Filtered := True;
    end;
    storedProcExtractSO.Active := True;
    memTableExtractSO.Active := True;
//    memTableExtractSO.CopyDataSet(storedProcExtractSO, [coAppend]);

    if not storedProcExtractSO.Eof then
      storedProcExtractSO.First;

    while not storedProcExtractSO.Eof do
    begin
      lDetalhe := TStringList.Create;
      SetLength(aLine,4);
      lDetalhe.StrictDelimiter := True;
      lDetalhe.Delimiter := '|';
      lDetalhe.DelimitedText := storedProcExtractSO.FieldByName('des_servico').AsString;
      iTotalIndex := Pred(lDetalhe.Count);
      Data_Sisgef.memTableExtractSO.Active := False;
      Data_Sisgef.memTableExtractSO.Active := True;
      if storedProcExtractSO.FieldByName('num_os').AsInteger < 44473 then
      begin
        iTotalLine := 3;
        iStep := 2;
      end
      else
      begin
        iTotalLine := 4;
        iStep := 3;
      end;
      iIndex := -1;
      iItem := 1;
      for i := 0 to iTotalIndex  do
      begin
        if iIndex < iStep then
        begin
          Inc(iIndex,1);
        end
        else
        begin
          iIndex := 0;
          Data_Sisgef.memTableExtractSO.Insert;
          Data_Sisgef.memTableExtractSOnum_os.AsInteger := storedProcExtractSO.FieldByName('num_os').AsInteger;
          Data_Sisgef.memTableExtractSOdata_os.AsDateTime := storedProcExtractSO.FieldByName('DAT_OS').AsDateTime;
          Data_Sisgef.memTableExtractSOdes_rota.AsString := storedProcExtractSO.FieldByName('des_rota').AsString;
          Data_Sisgef.memTableExtractSOcod_cadastro.AsInteger := storedProcExtractSO.FieldByName('cod_cadastro').AsInteger;
          Data_Sisgef.memTableExtractSOnom_cadastro.AsString := storedProcExtractSO.FieldByName('nom_cadastro').AsString;
          Data_Sisgef.memTableExtractSOdes_servico.Value := aLine[1];
          Data_Sisgef.memTableExtractSOqtd_servico.Value := aLine[2];
          Data_Sisgef.memTableExtractSOval_unitario.Value := aLine[3];
          Data_Sisgef.memTableExtractSOdes_placa.AsString := storedProcExtractSO.FieldByName('des_placa').AsString;
          Data_Sisgef.memTableExtractSO.Post;
        end;
        if iTotalLine = 3 then
        begin
          aLine[2] := 1;
          case iIndex of
            0 : aLine[iIndex] := iItem;
            1 : aLine[iIndex] := lDetalhe[i];
            2 : aLine[3] := StrToFloatDef(lDetalhe[i], 0);
          end;
        end
        else
        begin
          case iIndex of
            0 : aLine[iIndex] := iItem;
            1 : aLine[iIndex] := lDetalhe[i];
            2 : aLine[iIndex] := StrToFloatDef(lDetalhe[i], 0);
            3 : aLine[iIndex] := StrToFloatDef(lDetalhe[i], 0);
          end;
        end;
        Inc(iItem,1);
      end;
      storedProcExtractSO.Next;
    end;
    Finalize(aLine);
    storedProcExtractSO.Connection.Connected := False;
    if not Data_Sisgef.memTableExtractSO.IsEmpty then
    begin
      Data_Sisgef.memTableExtractSO.First;
    end
    else
    begin
      FMensagem := 'Nenhum registro encontrado!';
      FAbortProcess := True;
      FInProcess := False;
      Exit;
    end;
  end;
  FInProcess := False;
end;

procedure TTHread_SisGeFProcessExtractSO.ExecuteProcessExtractSOByInstallment;
var
  FConnection : TConexao;
  FQuery : TFDQuery;
  lDetalhe: TStringList;
  i, iTotalLine, iTotalIndex, iStep, iIndex, iItem: integer;
  sDescricao : String;
  aLine: array of variant;
begin
  FInProcess := True;
  FAbortProcess := False;
  FConnection := Tconexao.Create;
  with Data_Sisgef do
  begin
    storedProcExtractExpress.Active := False;
    storedProcExtractExpress.Filtered := False;
    storedProcExtractExpress.Filter := '';
    storedProcExtractExpress.Connection := FConnection.GetConn;
    storedProcExtractSO.storedProcName := 'sp_extractso_by_installment';
    storedProcExtractSO.SchemaName := 'bderpsisgef';
    storedProcExtractSO.Prepare;
    storedProcExtractSO.ParamByName('pdateinitial').AsDate := FStartDate;
    storedProcExtractSO.ParamByName('pdatefinal').AsDate := FEndDate;
    storedProcExtractSO.ParamByName('pTypeExtract').AsInteger := FTipo;
    storedProcExtractSO.ParamByName('psituation').AsString := FSituacao;
    if FFiltro <> '' then
    begin
      storedProcExtractSO.Filter := FFiltro;
      storedProcExtractSO.Filtered := True;
    end;
    storedProcExtractSO.Active := True;
    memTableExtractSO.Active := True;
//    memTableExtractSO.CopyDataSet(storedProcExtractSO, [coAppend]);



    if not storedProcExtractSO.Eof then
      storedProcExtractSO.First;
    Data_Sisgef.memTableExtractSO.Active := False;
    Data_Sisgef.memTableExtractSO.Active := True;
    while not storedProcExtractSO.Eof do
    begin
      lDetalhe := TStringList.Create;
      SetLength(aLine,4);
      lDetalhe.StrictDelimiter := True;
      lDetalhe.Delimiter := '|';
      lDetalhe.DelimitedText := storedProcExtractSO.FieldByName('des_servico').AsString;
      iTotalIndex := Pred(lDetalhe.Count);
      if storedProcExtractSO.FieldByName('num_os').AsInteger < 44473 then
      begin
        iTotalLine := 3;
        iStep := 2;
      end
      else
      begin
        iTotalLine := 4;
        iStep := 3;
      end;
      iIndex := -1;
      iItem := 1;
      for i := 0 to iTotalIndex  do
      begin
        if iIndex < iStep then
        begin
          Inc(iIndex,1);
        end
        else
        begin
          iIndex := 0;
          Data_Sisgef.memTableExtractSO.Insert;
          Data_Sisgef.memTableExtractSOnum_os.AsInteger := storedProcExtractSO.FieldByName('num_os').AsInteger;
          Data_Sisgef.memTableExtractSOdata_os.AsDateTime := storedProcExtractSO.FieldByName('DAT_OS').AsDateTime;
          Data_Sisgef.memTableExtractSOdes_rota.AsString := storedProcExtractSO.FieldByName('des_rota').AsString;
          Data_Sisgef.memTableExtractSOcod_cadastro.AsInteger := storedProcExtractSO.FieldByName('cod_cadastro').AsInteger;
          Data_Sisgef.memTableExtractSOnom_cadastro.AsString := storedProcExtractSO.FieldByName('nom_cadastro').AsString;
          Data_Sisgef.memTableExtractSOdes_servico.Value := aLine[1];
          Data_Sisgef.memTableExtractSOqtd_servico.Value := aLine[2];
          Data_Sisgef.memTableExtractSOval_unitario.Value := aLine[3];
          Data_Sisgef.memTableExtractSOdes_placa.AsString := storedProcExtractSO.FieldByName('des_placa').AsString;
          Data_Sisgef.memTableExtractSO.Post;
        end;
        if iTotalLine = 3 then
        begin
          aLine[2] := 1;
          case iIndex of
            0 : aLine[iIndex] := iItem;
            1 : aLine[iIndex] := lDetalhe[i];
            2 : aLine[3] := StrToFloatDef(lDetalhe[i], 0);
          end;
        end
        else
        begin
          case iIndex of
            0 : aLine[iIndex] := iItem;
            1 : aLine[iIndex] := lDetalhe[i];
            2 : aLine[iIndex] := StrToFloatDef(lDetalhe[i], 0);
            3 : aLine[iIndex] := StrToFloatDef(lDetalhe[i], 0);
          end;
        end;
        Inc(iItem,1);
      end;
      storedProcExtractSO.Next;
    end;
    Finalize(aLine);

    storedProcExtractSO.Connection.Connected := False;
    if not memTableExtractSO.IsEmpty then
    begin
      memTableExtractSO.First;
    end
    else
    begin
      FMensagem := 'Nenhum registro encontrado!';
      FAbortProcess := True;
      FInProcess := False;
      Exit;
    end;
  end;
  FInProcess := False;
end;

end.
