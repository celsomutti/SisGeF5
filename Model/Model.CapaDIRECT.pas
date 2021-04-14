unit Model.CapaDIRECT;

interface

uses Generics.Collections, System.Classes, System.SysUtils;

type
  TCapaDirect = class
  private
    FNumeroFatura: Integer;
    FVolumeInformado: Double;
    FVolumeTotal: Double;
    FMotorista: String;
    FDocumentoFornecedor: String;
    FEnderecoEntrega: String;
    FCEP3: String;
    FPedido: String;
    FDocumentoTomador: String;
    FNomeComponente: String;
    FKGM3: Double;
    FNotaFiscal: String;
    FNomeRemetente: String;
    FVolumes: Integer;
    FDataFinanceiro: TDate;
    FUnidadeMedida: String;
    FNomeFornecedor: String;
    FPercentualAdvalorem: Double;
    FDataCriacaoRemessa: TDate;
    FNomeBase: String;
    FValorNF: Double;
    FRemessa: String;
    FValorAdvalorem: Double;
    FValorPagar: Double;
    FCEPColeta: String;
    FQuantidade: Integer;
    FNumeroViagem: Integer;
    FCEPEntrega: String;
    FMunicipioColeta: String;
    FTomador: String;
    FMunicipioEntrega: String;
    FPercentualParada: Double;
    FNorteadorPeso: String;
    FPlanilha: TObjectList<TCapaDirect>;
    FMensagem: String;
  public
    property NumeroFatura: Integer read FNumeroFatura write FNumeroFatura;
    property NumeroViagem: Integer read FNumeroViagem write FNumeroViagem;
    property DataFinanceiro: TDate read FDataFinanceiro write FDataFinanceiro;
    property Motorista: String read FMotorista write FMotorista;
    property NomeBase: String read FNomeBase write FNomeBase;
    property Remessa: String read FRemessa write FRemessa;
    property Pedido: String read FPedido write FPedido;
    property NotaFiscal: String read FNotaFiscal write FNotaFiscal;
    property MunicipioColeta: String read FMunicipioColeta write FMunicipioColeta;
    property CEPColeta: String read FCEPColeta write FCEPColeta;
    property EnderecoEntrega: String read FEnderecoEntrega write FEnderecoEntrega;
    property MunicipioEntrega: String read FMunicipioEntrega write FMunicipioEntrega;
    property CEPEntrega: String read FCEPEntrega write FCEPEntrega;
    property CEP3: String read FCEP3 write FCEP3;
    property Quantidade: Integer read FQuantidade write FQuantidade;
    property Volumes: Integer read FVolumes write FVolumes;
    property VolumeTotal: Double read FVolumeTotal write FVolumeTotal;
    property VolumeInformado: Double read FVolumeInformado write FVolumeInformado;
    property NomeComponente: String read FNomeComponente write FNomeComponente;
    property DataCriacaoRemessa: TDate read FDataCriacaoRemessa write FDataCriacaoRemessa;
    property ValorNF: Double read FValorNF write FValorNF;
    property NorteadorPeso: String read FNorteadorPeso write FNorteadorPeso;
    property ValorPagar: Double read FValorPagar write FValorPagar;
    property KGM3: Double read FKGM3 write FKGM3;
    property UnidadeMedida: String read FUnidadeMedida write FUnidadeMedida;
    property NomeFornecedor: String read FNomeFornecedor write FNomeFornecedor;
    property DocumentoFornecedor: String read FDocumentoFornecedor write FDocumentoFornecedor;
    property Tomador: String read FTomador write FTomador;
    property DocumentoTomador: String read FDocumentoTomador write FDocumentoTomador;
    property PercentualAdvalorem: Double read FPercentualAdvalorem write FPercentualAdvalorem;
    property ValorAdvalorem: Double read FValorAdvalorem write FValorAdvalorem;
    property NomeRemetente: String read FNomeRemetente write FNomeRemetente;
    property PercentualParada: Double read FPercentualParada write FPercentualParada;


    property Planilha: TObjectList<TCapaDirect> read FPlanilha write FPlanilha;
    property Mensagem: String read FMensagem write FMensagem;
    function GetPlanilha(sFile: String): Boolean;
  end;

implementation

{ TCapaDirect }

function TCapaDirect.GetPlanilha(sFile: String): Boolean;
var
  ArquivoCSV: TextFile;
  sLinha: String;
  sDetalhe: TStringList;
  i : Integer;
  sValor : String;
begin
  try
    Result := False;
    FPlanilha := TObjectList<TCapaDirect>.Create;
    AssignFile(ArquivoCSV, sFile);
    if sFile.IsEmpty then Exit;
    sDetalhe := TStringList.Create;
    sDetalhe.StrictDelimiter := True;
    sDetalhe.Delimiter := ';';
    Reset(ArquivoCSV);
    Readln(ArquivoCSV, sLinha);
    sDetalhe.DelimitedText := sLinha + ';';
    if Pos('Numero da Fatura',sLinha) = 0 then
    begin
      FMensagem := 'Arquivo informado não foi identificado como a Planilha de Entrada da DIRECT!';
      Exit;
    end;
    i := 0;
    while not Eoln(ArquivoCSV) do
    begin
      Readln(ArquivoCSV, sLinha);
      sDetalhe.DelimitedText := sLinha + ';';
      if StrToIntDef(sDetalhe[0], 0) > 0 then
      begin
        sValor := '0';
        FPlanilha.Add(TCapaDirect.Create);
        i := FPlanilha.Count - 1;
        FPlanilha[i].NumeroFatura := StrToIntDef(sDetalhe[0],0);
        FPlanilha[i].NumeroViagem :=  StrToIntDef(sDetalhe[1], 0);
        FPlanilha[i].DataFinanceiro := StrToDateDef(sDetalhe[2], 0);
        FPlanilha[i].Motorista := sDetalhe[3];
        FPlanilha[i].NomeBase := sDetalhe[4];
        FPlanilha[i].Remessa := sDetalhe[5];
        FPlanilha[i].Pedido := sDetalhe[6];
        FPlanilha[i].NotaFiscal := sDetalhe[7];
        FPlanilha[i].MunicipioColeta := sDetalhe[8];
        FPlanilha[i].CEPColeta := sDetalhe[9];
        FPlanilha[i].EnderecoEntrega := sDetalhe[10];
        FPlanilha[i].MunicipioEntrega := sDetalhe[11];
        FPlanilha[i].CEPEntrega := sDetalhe[12];
        FPlanilha[i].CEP3 :=  Copy(sDetalhe[12],1,3);
        FPlanilha[i].Quantidade := 1;
        FPlanilha[i].Volumes := StrToIntDef(sDetalhe[13],1);
        FPlanilha[i].VolumeTotal := StrToFloatDef(sDetalhe[14], 0);
        FPlanilha[i].VolumeInformado := StrToFloatDef(sDetalhe[15], 0);
        FPlanilha[i].NomeComponente := sDetalhe[16];
        FPlanilha[i].DataCriacaoRemessa :=  StrToDateDef(sDetalhe[17], 0);
        sValor := StringReplace(sDetalhe[18], '.', ',', [rfReplaceAll, rfIgnoreCase]);
        FPlanilha[i].ValorNF := StrToFloatDef(sValor, 0);
        FPlanilha[i].NorteadorPeso := sDetalhe[19];
        sValor := StringReplace(sDetalhe[20], '.', ',', [rfReplaceAll, rfIgnoreCase]);
        FPlanilha[i].ValorPagar := StrToFloatDef(sValor, 0);
        sValor := StringReplace(sDetalhe[21], '.', ',', [rfReplaceAll, rfIgnoreCase]);
        FPlanilha[i].KGM3 := StrToFloatDef(sValor, 0);
        FPlanilha[i].UnidadeMedida := sDetalhe[22];
        FPlanilha[i].NomeFornecedor := sDetalhe[23];
        FPlanilha[i].DocumentoFornecedor := sDetalhe[24];
        FPlanilha[i].Tomador := sDetalhe[25];
        FPlanilha[i].DocumentoTomador := sDetalhe[26];
        sValor := StringReplace(sDetalhe[27], '.', ',', [rfReplaceAll, rfIgnoreCase]);
        FPlanilha[i].PercentualAdvalorem := StrToFloatDef(sValor, 0);
        sValor := StringReplace(sDetalhe[28], '.', ',', [rfReplaceAll, rfIgnoreCase]);
        FPlanilha[i].ValorAdvalorem := StrToIntDef(sValor, 0);
        FPlanilha[i].NomeRemetente := sDetalhe[29];
        sValor := StringReplace(sDetalhe[30], '.', ',', [rfReplaceAll, rfIgnoreCase]);
        FPlanilha[i].PercentualParada := StrToIntDef(sValor, 0);
      end;
    end;
    if FPlanilha.Count = 0 then
    begin
      FMensagem := 'Nenhuma informação foi importada da planilha!';
      Exit;
    end;
    Result := True;
  finally
    CloseFile(ArquivoCSV);
  end;
end;

end.
