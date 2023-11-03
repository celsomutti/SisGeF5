unit DAO.PlanilhaRespostaCTNC;

interface

uses Generics.Collections, System.Classes, System.SysUtils, Forms, Windows, Model.PlanilhaRespostaCTNC;

type
  TPlanilhaRespostaCTNCDAO = class
  public
    function GetPlanilha(sFile: String): TObjectList<TPlanilhaRespostaCTNC>;
  end;

implementation

{ TPlanilhaRespostaCTNCDAO }

function TPlanilhaRespostaCTNCDAO.GetPlanilha(sFile: String): TObjectList<TPlanilhaRespostaCTNC>;
var
  ArquivoCSV: TextFile;
  sLinha: String;
  sDetalhe: TStringList;
  respostas : TObjectList<TPlanilhaRespostaCTNC>;
  i : Integer;
begin
  try
    respostas := TObjectList<TPlanilhaRespostaCTNC>.Create;
    if not FileExists(sFile) then
    begin
      Application.MessageBox(PChar('Arquivo ' + sFile + ' não foi encontrado!'), 'Atenção', MB_ICONWARNING + MB_OK);
      Exit;
    end;
    AssignFile(ArquivoCSV, sFile);
    if sFile.IsEmpty then Exit;
    sDetalhe := TStringList.Create;
    sDetalhe.StrictDelimiter := True;
    sDetalhe.Delimiter := ';';
    Reset(ArquivoCSV);
    Readln(ArquivoCSV, sLinha);
    sDetalhe.DelimitedText := sLinha;
    i := 0;
    if sDetalhe[0] <> 'RESPOSTAS PARA ENTREGA' then
    begin
      Application.MessageBox('Arquivo informado não foi identificado como a Planilha de de Respostas de CTNC!',
                             'Atenção', MB_ICONWARNING + MB_OK);
      Exit;
    end;
    while not Eoln(ArquivoCSV) do
    begin
      Readln(ArquivoCSV, sLinha);
      sDetalhe.DelimitedText := sLinha;
      if sDetalhe[0] = '0' then
      begin
        respostas.Add(TPlanilhaRespostaCTNC.Create);
        i := respostas.Count - 1;
        respostas[i].Flag := sDetalhe[0];
        respostas[i].Data := sDetalhe[1];
        respostas[i].NN := sDetalhe[2];
        respostas[i].Resposta := sDetalhe[3];
        respostas[i].CodigoEmbarcador := sDetalhe[4];
        respostas[i].NomeEmbarcador := sDetalhe[5];
        respostas[i].Pedido := sDetalhe[6];
        respostas[i].Consumidor := sDetalhe[7];
        respostas[i].Telefone := sDetalhe[8];
        respostas[i].Atribuicao := sDetalhe[9];
        respostas[i].Entregador := sDetalhe[10];
        respostas[i].Previsao := sDetalhe[11];
        respostas[i].Leitura := sDetalhe[12];
        respostas[i].Usuario := sDetalhe[13];
        respostas[i].Sequencia := sDetalhe[14];
        respostas[i].Cidade := sDetalhe[15];
      end;
    end;
    Result := respostas;
  finally
    CloseFile(ArquivoCSV);
  end;
end;

end.
