unit Common.SisGeFFunctions;

interface

uses System.Classes, System.SysUtils;

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
    ENTREGAENGLOBA = 'Código;N.º pedido;N.º do cliente;Romaneio do cliente;Notas fiscais;Serviço;Sub-serviço;Data pedido;' +
                     'Data confirmação;Data expedicao;Data recebimento base;Data última rota;Data prevista;' +
                     'Data prevista sem insucessos;Data entrega/finalização;No prazo;Informação no prazo;No prazo base;' +
                     'Data primeira ocorrência;Data última ocorrência;Última ocorrência;Primeiro motivo de insucesso;' +
                     'Último motivo de insucesso;Data do último motivo de insucesso;Situação;Remetente;Cidade do remetente;' +
                     'Estado do remetente;Base destino;Empresa;Destinatário;Endereço;N.º;Complemento;Bairro;Cidade;' +
                     'Tipo de região;CEP;Estado;Telefone 1;Edição;Qtde. itens;Qtde. volumes;Peso transportadora;Peso real;' +
                     'Peso cubado;Peso taxado;Valor pedido;Produtos;Último motorista;Último romaneio da rota;Último manifesto;' +
                     'Alíquota ICMS;Alíquota ISS;Taxa coleta;Taxa entrega;Taxa despacho;Taxa despacho;Ademe;Pedágio;' +
                     'Taxa COD;TAS;TDA;TDE;Taxa rest. Trânsito TRT;Acréscimos;Descontos;Taxa emergencial;Valor manuseio';
    ENTREGASIMEXPRESS = 'Nr Rota;Rota;idMotorista;Motorista;Ordem Rota;NomeTransportadora;Embarcador;Destinatario;idPedido;' +
                        'Nr Entrega;Nr Nota Fiscal;Numero Pedido;Tipo Operacao;Qtde Volumes;Valor a Cobrar;Obs Entrega;' +
                        'Id Viagem;Data Entrega;Data Ocorrencia;Ocorrencia;Id Remessa;Endereco;Bairro;Municipio;CEP;' +
                        'Situacao Entrega;Peso Total;Valor Produtos;Tentativa;Data Coleta;Data Viagem;Tipo de Baixa;Id Volume;' +
                        'Situacao;Observacao;NomeBase;Latitude;Longitude;Id Pedido;';
    ENTREGASTFO = 'AGENTE;DESCRIÇÃO;NOSSO NÚMERO;CLIENTE;NOTA;CONSUMIDOR;AOS CUIDADOS;LOGRADOURO;COMPLEMENTO;BAIRRO;CIDADE;' +
                  'CEP;TELEFONE;EXPEDIÇÃO;PREV.DISTRIBUIÇÃO;STATUS;DESCRIÇÃO;ENTREGADOR;Nº DO CONTAINER;VALOR PRODUTO;' +
                  'VALOR DA VERBA;ALTURA;LARGURA;COMPRIMENTO;PESO;NUM.VOL';
    BAIXAPLANCK = 'Numero Viagem;Data Atualização;Documento;Motorista;Base;Pedido;Remessa;Nota Fiscal;Municipio;CEP;Volumes;' +
                  'Tipo;Data_Registro;Valor_Total;Peso_Aferido;Peso_Cubado;Peso_Nominal;Peso_CTE;Operação;Região';
    BAIXASTFO = 'NOSSO NÚMERO;DT.ENTREGA;HORA ENTREGA;RECEBEDOR;GRAU RELAC;DOCUMENTO;CÓD. ENTREGADOR;ENTREGADOR;' +
                'DATA ÚLTIMA ATRIBUIÇÃO;OBSERVAÇÃO;USUÁRIO;DT.TRANSF/DIGITAÇÃO;CLIENTE;PEDIDO;PREVISÃO DISTRIBUIÇÃO;' +
                'CÓD.AGENTE;DESCRIÇÃO AGENTE;PESO COBRADO (KG);TIPO PESO';
    TRACKINGPLANCK = 'REMESSA;REME;CID/EST;CEP;DATA;HORA;AGENDADA;PEDIDO;SÉRIE;NOTA FISCAL;DANFE;COD;Responsável;' +
                     'PRODUTO;OCORRÊNCIA;PESO;QTD. DE VOLUMES;VALOR NOTA;CÓDIGO DO PRODUTO/ DESCRIÇÃO;DT STATUS;STATUS;' +
                     'UNID. ULT. STATUS;RECEBEDOR;IDENTIFICAÇÃO;DOCUMENTO;DT BAIXA;QTDE OCORRÊNCIAS;FATURADO;UNID. ENTREGA;' +
                     'TIPO ENTREGA;ROTA;UNID. COLETA;ENDEREÇO;BAIRRO;NUMERO;DESTINATÁRIO;E-MAIL;FONE CLIENTE;FONE CLIENTE;' +
                     'FONE CLIENTE;OBS. ENTREGA;INFORMACAO ADICIONAL;Nº SACA;DT AGENDADO;DT RE-AGENDADA;Passou no Sorter;;;;';
    LOJAPLANCK = 'Numero Viagem;Data Atualização;Documento;Motorista;Base;Pedido;Remessa;Nota Fiscal;Municipio;CEP;Volumes;' +
                 'Tipo;Data_Registro;Valor_Total;Peso_Aferido;Peso_Cubado;Peso_Nominal;Peso_CTE;Operação;Região;LOJA';


implementation

{ TSisGeFFunctions }

function TSisGeFFunctions.NoRotine: boolean;
begin
  FMensagem := 'Validação inexistente!';
  Result := False;
end;

function TSisGeFFunctions.ValidadeFile(iTipo, iCliente: integer; sArquivo: string): boolean;
begin
  Result := False;
  if iTipo = 1 then
  begin
    case icliente of
      1 : Result := Result := ValidateTFOEntregas(sArquivo);
      2 : Result := ValidateSIMExpressEntregas(sArquivo);
      3 : Result := NoRotine; {Result := ValidadeSPLOGEntregas(sArquivo)}
      4 : Result := ValidatePlanckEntregas(sArquivo);
      6 : Result := ValidateENGLOBAEntregas(sArquivo);
      5 : Result := ValidateSIMExpressEntregas(sArquivo);
      7 : Result := ValidateSIMExpressEntregas(sArquivo);
      8 : Result := ValidateENGLOBAEntregas(sArquivo);
      else
        Result := NoRotine;
    end;
  end
  else if iTipo = 2 then
  begin
    case iCliente of
      1 : Result := ValidateTFOBaixas(sArquivo);
      4 : Result := ValidatePlanckBaixas(sArquivo);
      else
        Result := NoRotine;
    end;
  end
  else if iTipo = 3 then
  begin
    Result := ValidatePlanckTracking(sArquivo);
  end
  else if iTipo = 4 then
  begin
    Result := ValidatePlanckLojas(sArquivo);
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
    if Trim(sLinha) <> ENTREGAENGLOBA then
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
    if Trim(sLinha) <> BAIXAPLANCK then
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
    if Trim(sLinha) <> ENTREGAPLANCK then
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
    if Trim(sLinha) <> LOJAPLANCK then
    begin
      FMensagem := 'Arquivo informado não foi identificado como a Planilha de Lojas gerada no Planck!';
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
    sDetalhe.DelimitedText := sLinha;
    if Trim(sLinha) <> TRACKINGPLANCK then
    begin
      FMensagem := 'Arquivo informado não foi identificado como a Planilha de Tracking da Direct!';
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
