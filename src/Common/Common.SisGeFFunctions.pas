unit Common.SisGeFFunctions;

interface

uses System.Classes, System.SysUtils, System.StrUtils;

type TSisGeFFunctions = class
  private
    FMensagem: string;

    function ValidatePlanckEntregas(sArquivo: string): boolean;
    function ValidateENGLOBAEntregas(sArquivo: string): boolean;
    function ValidateSIMExpressEntregas(sArquivo: string): boolean;
    function ValidateTFOEntregas(sArquivo: string): boolean;
    function ValidateTFOBaixas(sArquivo: string): boolean;
    function ValidatePlanckBaixas(sArquivo: string): boolean;
    function ValidatePlanckTracking(sArquivo: string): boolean;
    function ValidatePlanckLojas(sArquivo: string): boolean;
  public
    function ValidadeFile(iTipo, iCliente: integer; sArquivo: string): boolean;
    function NoRotine(): boolean;

    property Mensagem: string read FMensagem write FMensagem;
end;

  const

    ENTREGAPLANCK = 'REMESSA;PEDIDO;DATA_REGISTRO;HORA_REGISTRO;COD_EMBARCADOR;CLIENTE_EMBARCADOR;DESTINATARIO;MUNICIPIO;UF;' +
                   'CEP;BAIRRO;SITUACAO;DATA_ALTERACAO;HORA_ALTERACAO;QTDVOLUMES;TIPO;PACKING_LIST;NOTA_FISCAL;SERIE;EMISSAO;' +
                   'VALOR_TOTAL;CHAVE;OPERACAO;TOMADOR_NOME;TOMADOR_CNPJ;BASE;BASE_SIGLA;PESO_CUBADO;PESO_NOMINAL;' +
                   'VOLUME_TOTAL_REMESSA;VOLUME_TOTAL_REMESSA_INFORMADO;ULTIMO_MOTIVO_OCORRENCIA;QTDE_OCORRENCIA;' +
                   'DATA_AGENDAMENTO;DEVOLUCAO;ULTIMA_VIAGEM;ULTIMO_MOTORISTA;DESCRICAO_PRODUTO;AWB 1;AWB 2;' +
                   'DATA CHEGADA;HORA CHEGADA;DATA CHEGADA LM;HORA CHEGADA LM;LOCALIZACAO ATUAL';
    ENTREGAENGLOBA = 'ï»¿CÃ³digo;N.Âº pedido;N.Âº do cliente;Romaneio do cliente;Notas fiscais;ServiÃ§o;Sub-serviÃ§o;' +
                     'Data pedido;Data confirmaÃ§Ã£o;Data expedicao;Data recebimento base;Data Ãºltima rota;Data prevista;' +
                     'Data prevista sem insucessos;Data entrega/finalizaÃ§Ã£o;No prazo;InformaÃ§Ã£o no prazo;No prazo base;' +
                     'Data primeira ocorrÃªncia;Data Ãºltima ocorrÃªncia;Ãšltima ocorrÃªncia;Primeiro motivo de insucesso;' +
                     'Ãšltimo motivo de insucesso;Data do Ãºltimo motivo de insucesso;SituaÃ§Ã£o;Remetente;Cidade do remetente;' +
                     'Estado do remetente;Base destino;Empresa;DestinatÃ¡rio;EndereÃ§o;N.Âº;Complemento;Bairro;Cidade;' +
                     'Tipo de regiÃ£o;CEP;Estado;Telefone 1;EdiÃ§Ã£o;Qtde. itens;Qtde. volumes;Peso transportadora;Peso real;' +
                     'Peso cubado;Peso taxado;Valor pedido;Produtos;Ãšltimo motorista;Ãšltimo romaneio da rota;' +
                     'Ãšltimo manifesto;AlÃ'#$00AD'quota ICMS;AlÃ'#$00AD'quota ISS;Taxa coleta;Taxa entrega;Taxa despacho;' +
                     'Taxa despacho;Ademe;PedÃ¡gio;Taxa COD;TAS;TDA;TDE;Taxa rest. TrÃ¢nsito TRT;AcrÃ©scimos;Descontos;' +
                     'Taxa emergencial;Valor manuseio';
    ENTREGASIMEXPRESS = 'Nr Rota;Rota;idMotorista;Motorista;Ordem Rota;NomeTransportadora;Embarcador;Destinatario;idPedido;' +
                        'Nr Entrega;Nr Nota Fiscal;Numero Pedido;Tipo Operacao;Qtde Volumes;Valor a Cobrar;Obs Entrega;' +
                        'Id Viagem;Data Entrega;Data Ocorrencia;Ocorrencia;Id Remessa;Endereco;Bairro;Municipio;CEP;' +
                        'Situacao Entrega;Peso Total;Valor Produtos;Tentativa;Data Coleta;Data Viagem;Tipo de Baixa;Id Volume;' +
                        'Situacao;Observacao;NomeBase;Latitude;Longitude;Id Pedido;';
    ENTREGASTFO = 'AGENTE;DESCRIÇÃO;NOSSO NÚMERO;CLIENTE;NOTA;CONSUMIDOR;AOS CUIDADOS;LOGRADOURO;COMPLEMENTO;BAIRRO;CIDADE;' +
                  'CEP;TELEFONE;EXPEDIÇÃO;PREV.DISTRIBUIÇÃO;STATUS;DESCRIÇÃO;ENTREGADOR;Nº DO CONTAINER;VALOR PRODUTO;' +
                  'VALOR DA VERBA;ALTURA;LARGURA;COMPRIMENTO;PESO;NUM.VOL';
    BAIXAPLANCK = 'ï»¿Numero Viagem;Data AtualizaÃ§Ã£o;Documento;Motorista;Base;Pedido;Remessa;Nota Fiscal;Municipio;CEP;' +
                  'Volumes;Tipo;Data_Registro;Valor_Total;Peso_Aferido;Peso_Cubado;Peso_Nominal;Peso_CTE;OperaÃ§Ã£o;RegiÃ£o';
    BAIXASTFO = 'NOSSO NÚMERO;DT.ENTREGA;HORA ENTREGA;RECEBEDOR;GRAU RELAC;DOCUMENTO;CÓD. ENTREGADOR;ENTREGADOR;' +
                'DATA ÚLTIMA ATRIBUIÇÃO;OBSERVAÇÃO;USUÁRIO;DT.TRANSF/DIGITAÇÃO;CLIENTE;PEDIDO;PREVISÃO DISTRIBUIÇÃO;' +
                'CÓD.AGENTE;DESCRIÇÃO AGENTE;PESO COBRADO (KG);TIPO PESO';
    TRACKINGPLANCK = 'REMESSA;REME;CID/EST;CEP;DATA;HORA;AGENDADA;PEDIDO;SÃ‰RIE;NOTA FISCAL;DANFE;COD;ResponsÃ¡vel;PRODUTO;' +
                     'OCORRÃŠNCIA;PESO;QTD. DE VOLUMES;VALOR NOTA;CÃ“DIGO DO PRODUTO/ DESCRIÃ‡ÃƒO;DT STATUS;STATUS;' +
                     'UNID. ULT. STATUS;RECEBEDOR;IDENTIFICAÃ‡ÃƒO;DOCUMENTO;DT BAIXA;QTDE OCORRÃŠNCIAS;FATURADO;UNID. ENTREGA;' +
                     'TIPO ENTREGA;ROTA;UNID. COLETA;ENDEREÃ‡O;BAIRRO;NUMERO;DESTINATÃ'#$0081'RIO;E-MAIL;FONE CLIENTE;' +
                     'FONE CLIENTE;FONE CLIENTE;OBS. ENTREGA;INFORMACAO ADICIONAL;NÂº SACA;DT AGENDADO;DT RE-AGENDADA;' +
                     'Passou no Sorter;;;;';
    LOJAPLANCK = 'ï»¿Numero Viagem;Data AtualizaÃ§Ã£o;Documento;Motorista;Base;Pedido;Remessa;Nota Fiscal;Municipio;CEP;' +
                 'Volumes;Tipo;Data_Registro;Valor_Total;Peso_Aferido;Peso_Cubado;Peso_Nominal;Peso_CTE;OperaÃ§Ã£o;RegiÃ£o;LOJA';

implementation

{ TSisGeFFunctions }

function TSisGeFFunctions.NoRotine: boolean;
begin
  FMensagem := 'Validação inexistente!';
  Result := False;
end;

function TSisGeFFunctions.ValidadeFile(iTipo, iCliente: integer; sArquivo: string): boolean;
var
  FileExt : string;
begin
  Result := False;
  FileExt := LowerCase(ExtractFileExt(sArquivo));
  if iCliente <> 5 then
  begin
    if FileExt <> '.csv' then
    begin
      FMensagem := 'Selecione apenas arquivos de planilhas no formato CSV (Delimitados por ponto e vírgula, *.csv).';
      Exit;
    end;
  end
  else
  begin
    if (FileExt <> '.xls') and (FileExt <> '.xlsx') then
    begin
      FMensagem := 'Selecione apenas arquivos de planilhas no formato XLS ou XLSX.';
      Exit;
    end;
  if iTipo = 1 then
  begin
    case icliente of
      1 : Result := ValidatePlanckEntregas(sArquivo);
      2 : Result := ValidateENGLOBAEntregas(sArquivo);
      3 : Result := ValidateSIMExpressEntregas(sArquivo);
      4 : Result := ValidateTFOEntregas(sArquivo);
      5 : Result := True;
      else
        Result := NoRotine;
    end;
//      1 : Result := ValidateTFOEntregas(sArquivo);
//      2 : Result := ValidateSIMExpressEntregas(sArquivo);
//      3 : Result := NoRotine; {Result := ValidadeSPLOGEntregas(sArquivo)}
//      4 : Result := ValidatePlanckEntregas(sArquivo);
//      6 : Result := ValidateENGLOBAEntregas(sArquivo);
//      5 : Result := ValidateSIMExpressEntregas(sArquivo);
//      7 : Result := ValidateSIMExpressEntregas(sArquivo);
//      8..9999 : Result := ValidateENGLOBAEntregas(sArquivo);
//      else
//        Result := NoRotine;
//    end;

  end
  else if iTipo = 2 then
  begin
    case iCliente of
      1 : Result := ValidatePlanckBaixas(sArquivo);
      4 : Result := ValidateTFOBaixas(sArquivo);
      else
        Result := NoRotine;
    end;
  end
  else if iTipo = 3 then
  begin
    if icliente = 1 then
      Result := ValidatePlanckTracking(sArquivo)
    else
      Result := NoRotine;
  end
  else if iTipo = 4 then
  begin
    if iCliente = 1 then
      Result := ValidatePlanckLojas(sArquivo)
    else
    Result := NoRotine;
  end;
  end;
end;

function TSisGeFFunctions.ValidateENGLOBAEntregas(sArquivo: string): boolean;
var
  ArquivoCSV: TextFile;
  sLinha: String;
  sDetalhe: TStringList;
begin
  try
    Result := False;
    if not FileExists(sArquivo) then
    begin
      FMensagem := 'Arquivo ' + sArquivo + ' não encontrado para validação!';
      Exit;
    end;
    if sArquivo.IsEmpty then
    begin
      FMensagem := 'Arquivo não foi informado para validação!';
      Exit;
    end;
    AssignFile(ArquivoCSV, sArquivo);
    sDetalhe := TStringList.Create;
    sDetalhe.StrictDelimiter := True;
    sDetalhe.Delimiter := ';';
    Reset(ArquivoCSV);
    Readln(ArquivoCSV, sLinha);
    sDetalhe.DelimitedText := sLinha;
    if sDetalhe.Count = 69 then
    begin
      If Pos('Taxa coleta;Taxa entrega;Taxa despacho;Taxa despacho;Ademe;', sLinha) = 0 then
      begin
        FMensagem := 'Arquivo informado não foi identificado como a Planilha de Entrada gerada no ENGLOBA!';
        Exit;
      end;
    end
    else
    begin
      FMensagem := 'Arquivo informado não foi identificado como a Planilha de Entrada gerada no ENGLOBA!';
      Exit;
    end;
    Result := True;
  finally
    CloseFile(ArquivoCSV);
  end;
end;

function TSisGeFFunctions.ValidatePlanckBaixas(sArquivo: string): boolean;
var
  ArquivoCSV: TextFile;
  sLinha: String;
  sDetalhe: TStringList;
begin
  try
    Result := False;
    if not FileExists(sArquivo) then
    begin
      FMensagem := 'Arquivo ' + sArquivo + ' não encontrado para validação!';
      Exit;
    end;
    if sArquivo.IsEmpty then
    begin
      FMensagem := 'Arquivo não foi informado para validação!';
      Exit;
    end;
    AssignFile(ArquivoCSV, sArquivo);
    sDetalhe := TStringList.Create;
    sDetalhe.StrictDelimiter := True;
    sDetalhe.Delimiter := ';';
    Reset(ArquivoCSV);
    Readln(ArquivoCSV, sLinha);
    sDetalhe.DelimitedText := sLinha;
    if sDetalhe.Count = 20 then
    begin
      if Pos('Documento;Motorista;Base;Pedido;Remessa;Nota Fiscal', sLinha) = 0 then
      begin
        FMensagem := 'Arquivo informado não foi identificado como a Planilha de Baixas gerada no Planck!';
        Exit;
      end
    end
    else
    begin
      FMensagem := 'Arquivo informado não foi identificado como a Planilha de Baixas gerada no Planck!';
      Exit;
    end;
    Result := True;
  finally
    CloseFile(ArquivoCSV);
  end;
end;

function TSisGeFFunctions.ValidatePlanckEntregas(sArquivo: string): boolean;
var
  ArquivoCSV: TextFile;
  sLinha: String;
  sDetalhe: TStringList;
begin
  try
    Result := False;
    if not FileExists(sArquivo) then
    begin
      FMensagem := 'Arquivo ' + sArquivo + ' não encontrado para validação!';
      Exit;
    end;
    if sArquivo.IsEmpty then
    begin
      FMensagem := 'Arquivo não foi informado para validação!';
      Exit;
    end;
    AssignFile(ArquivoCSV, sArquivo);
    sDetalhe := TStringList.Create;
    sDetalhe.StrictDelimiter := True;
    sDetalhe.Delimiter := ';';
    Reset(ArquivoCSV);
    Readln(ArquivoCSV, sLinha);
    sDetalhe.DelimitedText := sLinha;
    sLinha := ReplaceStr(sLinha,'"','');
    if sDetalhe.Count = 45 then
    begin
      if Pos('REMESSA;PEDIDO;DATA_REGISTRO;HORA_REGISTRO;COD_EMBARCADOR;CLIENTE_EMBARCADOR;', sLinha) = 0 then
      begin
        FMensagem := 'Arquivo informado não foi identificado como a Planilha de Entrada gerada no Planck!';
        Exit;
      end
    end
    else
    begin
      FMensagem := 'Arquivo informado não foi identificado como a Planilha de Entrada gerada no Planck!';
      Exit;
    end;
    Result := True;
  finally
    CloseFile(ArquivoCSV);
  end;
end;

function TSisGeFFunctions.ValidatePlanckLojas(sArquivo: string): boolean;
var
  ArquivoCSV: TextFile;
  sLinha: String;
  sDetalhe: TStringList;
begin
  try
    Result := False;
    if not FileExists(sArquivo) then
    begin
      FMensagem := 'Arquivo ' + sArquivo + ' não encontrado para validação!';
      Exit;
    end;
    if sArquivo.IsEmpty then
    begin
      FMensagem := 'Arquivo não foi informado para validação!';
      Exit;
    end;
    AssignFile(ArquivoCSV, sArquivo);
    sDetalhe := TStringList.Create;
    sDetalhe.StrictDelimiter := True;
    sDetalhe.Delimiter := ';';
    Reset(ArquivoCSV);
    Readln(ArquivoCSV, sLinha);
    sDetalhe.DelimitedText := sLinha;
    if sDetalhe.Count = 21 then
    begin
      if Pos(';LOJA', sLinha) = 0 then
      begin
        FMensagem := 'Arquivo informado não foi identificado como a Planilha de Baixas LOJAS gerada no Planck!';
        Exit;
      end
    end
    else
    begin
      FMensagem := 'Arquivo informado não foi identificado como a Planilha de Baixas LOJAS gerada no Planck!';
      Exit;
    end;
    Result := True;
  finally
    CloseFile(ArquivoCSV);
  end;
end;

function TSisGeFFunctions.ValidatePlanckTracking(sArquivo: string): boolean;
var
  ArquivoCSV: TextFile;
  sLinha: String;
  sDetalhe: TStringList;
begin
  try
    Result := False;
    if not FileExists(sArquivo) then
    begin
      FMensagem := 'Arquivo ' + sArquivo + ' não encontrado para validação!';
      Exit;
    end;
    if sArquivo.IsEmpty then
    begin
      FMensagem := 'Arquivo não foi informado para validação!';
      Exit;
    end;
    AssignFile(ArquivoCSV, sArquivo);
    sDetalhe := TStringList.Create;
    sDetalhe.StrictDelimiter := True;
    sDetalhe.Delimiter := ';';
    Reset(ArquivoCSV);
    Readln(ArquivoCSV, sLinha);
    Readln(ArquivoCSV, sLinha);
    Readln(ArquivoCSV, sLinha);
    Readln(ArquivoCSV, sLinha);
    sDetalhe.DelimitedText := sLinha;
    if sDetalhe.Count = 50 then
    begin
      if Pos('REMESSA;REME;CID/EST;CEP;DATA;HORA;AGENDADA;PEDIDO;', sLinha) = 0 then
      begin
        FMensagem := 'Arquivo informado não foi identificado como a Planilha de Tracking gerada no Planck!';
        Exit;
      end
    end
    else
    begin
      FMensagem := 'Arquivo informado não foi identificado como a Planilha de Tracking gerada no Planck!';
      Exit;
    end;
    Result := True;
  finally
    CloseFile(ArquivoCSV);
  end;
end;

function TSisGeFFunctions.ValidateSIMExpressEntregas(sArquivo: string): boolean;
var
  ArquivoCSV: TextFile;
  sLinha: String;
  sDetalhe: TStringList;
begin
  try
    Result := False;
    if not FileExists(sArquivo) then
    begin
      FMensagem := 'Arquivo ' + sArquivo + ' não encontrado para validação!';
      Exit;
    end;
    if sArquivo.IsEmpty then
    begin
      FMensagem := 'Arquivo não foi informado para validação!';
      Exit;
    end;
    AssignFile(ArquivoCSV, sArquivo);
    sDetalhe := TStringList.Create;
    sDetalhe.StrictDelimiter := True;
    sDetalhe.Delimiter := ';';
    Reset(ArquivoCSV);
    Readln(ArquivoCSV, sLinha);
    sDetalhe.DelimitedText := sLinha;
    if Trim(sLinha) <> ENTREGASIMEXPRESS then
    begin
      FMensagem := 'Arquivo informado não foi identificado como a Planilha de Entrada gerada no SIM Express!';
      Exit;
    end;
    Result := True;
  finally
    CloseFile(ArquivoCSV);
  end;
end;

function TSisGeFFunctions.ValidateTFOBaixas(sArquivo: string): boolean;
var
  ArquivoCSV: TextFile;
  sLinha: String;
  sDetalhe: TStringList;
begin
  try
    Result := False;
    if not FileExists(sArquivo) then
    begin
      FMensagem := 'Arquivo ' + sArquivo + ' não encontrado para validação!';
      Exit;
    end;
    if sArquivo.IsEmpty then
    begin
      FMensagem := 'Arquivo não foi informado para validação!';
      Exit;
    end;
    AssignFile(ArquivoCSV, sArquivo);
    sDetalhe := TStringList.Create;
    sDetalhe.StrictDelimiter := True;
    sDetalhe.Delimiter := ';';
    Reset(ArquivoCSV);
    Readln(ArquivoCSV, sLinha);
    Readln(ArquivoCSV, sLinha);
    Readln(ArquivoCSV, sLinha);
    sDetalhe.DelimitedText := sLinha;
    if Trim(sLinha) <> BAIXASTFO then
    begin
      FMensagem := 'Arquivo informado não foi identificado como a Planilha de Baixas gerada no STD Client!';
      Exit;
    end;
    Result := True;
  finally
    CloseFile(ArquivoCSV);
  end;
end;

function TSisGeFFunctions.ValidateTFOEntregas(sArquivo: string): boolean;
var
  ArquivoCSV: TextFile;
  sLinha: String;
  sDetalhe: TStringList;
begin
  try
    Result := False;
    if not FileExists(sArquivo) then
    begin
      FMensagem := 'Arquivo ' + sArquivo + ' não encontrado para validação!';
      Exit;
    end;
    if sArquivo.IsEmpty then
    begin
      FMensagem := 'Arquivo não foi informado para validação!';
      Exit;
    end;
    AssignFile(ArquivoCSV, sArquivo);
    sDetalhe := TStringList.Create;
    sDetalhe.StrictDelimiter := True;
    sDetalhe.Delimiter := ';';
    Reset(ArquivoCSV);
    Readln(ArquivoCSV, sLinha);
    Readln(ArquivoCSV, sLinha);
    Readln(ArquivoCSV, sLinha);
    Readln(ArquivoCSV, sLinha);
    sDetalhe.DelimitedText := sLinha;
    if Trim(sLinha) <> ENTREGASTFO then
    begin
      FMensagem := 'Arquivo informado não foi identificado como a Planilha de Entrada gerada no STD Client!';
      Exit;
    end;
    Result := True;
  finally
    CloseFile(ArquivoCSV);
  end;
end;

end.
