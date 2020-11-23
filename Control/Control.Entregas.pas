unit Control.Entregas;

interface

uses Model.Entregas, System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum;

type
  TEntregasControl = class
  private
    FEntregas : TEntregas;
  public
    constructor Create;
    destructor Destroy; override;

    function Gravar: Boolean;
    function Localizar(aParam: array of variant): TFDQuery;
    function LocalizarExata(aParam: array of variant): Boolean;
    function ValidaCampos(): Boolean;
    function ValidaExclusao(): Boolean;
    function Previas(aParam: array of variant): TFDQuery;
    function EntregasExtrato(aParam: Array of variant): TFDQuery;
    function EncerraEntregas(aParam: array of variant): Boolean;
    function GetField(sField: String; sKey: String; sKeyValue: String): String;
    function GetAReceber(iEntregador: Integer): TFDQuery;

    property Entregas: TEntregas read FEntregas write FEntregas;

  end;

implementation

{ TEntregasControl }

constructor TEntregasControl.Create;
begin
  FEntregas := TEntregas.Create;
end;

destructor TEntregasControl.Destroy;
begin
  FEntregas.Free;
  inherited;
end;

function TEntregasControl.EncerraEntregas(aParam: array of variant): Boolean;
begin
  Result := FEntregas.EncerraEntregas(aParam)
end;

function TEntregasControl.EntregasExtrato(aParam: array of variant): TFDQuery;
begin
  Result := FEntregas.EntregasExtrato(aParam);
end;

function TEntregasControl.GetAReceber(iEntregador: Integer): TFDQuery;
begin
  Result := Fentregas.GetAReceber(iEntregador);
end;

function TEntregasControl.GetField(sField, sKey, sKeyValue: String): String;
begin
  Result := FEntregas.GetField(sField, sKey, sKeyValue);
end;

function TEntregasControl.Gravar: Boolean;
begin
  Result := False;
  if FEntregas.Acao = Common.ENum.tacExcluir then
  begin
    if not ValidaExclusao() then Exit;
  end;
  //if not ValidaCampos then Exit;
  Result := FEntregas.Gravar;
end;

function TEntregasControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FEntregas.Localizar(aParam);
end;

function TEntregasControl.LocalizarExata(aParam: array of variant): Boolean;
begin
  Result := FEntregas.LocalizarExata(aParam);
end;

function TEntregasControl.Previas(aParam: array of variant): TFDQuery;
begin
  Result := FEntregas.Previas(aParam);
end;

function TEntregasControl.ValidaCampos: Boolean;
begin
  Result := False;
  if FEntregas.NN.IsEmpty then
  begin
    Application.MessageBox('Informe o Nosso Número da entrega.', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end
  else
  begin
    if FEntregas.Acao = Common.ENum.tacIncluir then
    begin
      if FEntregas.ExisteNN(FEntregas.NN) then
        begin
          Application.MessageBox('Nosso Número já cadastrado.', PChar(FEntregas.NN), MB_OK + MB_ICONWARNING);
          Exit;
        end;
    end
  end;
  if FEntregas.NF.IsEmpty then
  begin
    Application.MessageBox('Número da nota fiscal náo pode ser vazio!.', PChar(FEntregas.NN), MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if FEntregas.Consumidor.IsEmpty then
  begin
    Application.MessageBox('Nome do concumidor náo pode ser vazio!.', PChar(FEntregas.NN), MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if FEntregas.Endereco.IsEmpty then
  begin
    Application.MessageBox('Endereço do consumuidor náo pode ser vazio!', PChar(FEntregas.NN), MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if FEntregas.Bairro.IsEmpty then
  begin
    Application.MessageBox('Bairro do endereço do consumuidor náo pode ser vazio!', PChar(FEntregas.NN), MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if (DateTimeToStr(FEntregas.Expedicao).IsEmpty) or (FEntregas.Expedicao = 0) then
  begin
    Application.MessageBox('Data da expedição inválida.', PChar(FEntregas.NN), MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if (DateTimeToStr(FEntregas.Previsao).IsEmpty) or (FEntregas.Previsao = 0) then
  begin
    Application.MessageBox('Data da previsão de entrega inválida!', PChar(FEntregas.NN), MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if FEntregas.Volumes = 0 then
  begin
    Application.MessageBox('Quantidade de volumes não pode ser zero!', PChar(FEntregas.NN), MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if FEntregas.PesoReal = 0 then
  begin
    Application.MessageBox('Peso do(s) volume(s) não pode(m) ser zero!', PChar(FEntregas.NN), MB_OK + MB_ICONWARNING);
    Exit;
  end;
  Result := True;
end;

function TEntregasControl.ValidaExclusao: Boolean;
begin
  Result := False;
  if FEntregas.CodigoFeedback <> 0 then
  begin
    Application.MessageBox('Entrega já processada pelo Feedback! Impossível excluir', PChar(FEntregas.NN), MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if FEntregas.Lote <> 0 then
  begin
    Application.MessageBox('Entrega em Lote de Atribuição! Impossível excluir', PChar(FEntregas.NN), MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if (FEntregas.Bairro = 'N') or (FEntregas.Bairro.IsEmpty) then
  begin
    Application.MessageBox('Entrega já baixada! Impossível excluir', PChar(FEntregas.NN), MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if (FEntregas.Pago = 'N') or (FEntregas.Bairro.IsEmpty) then
  begin
    Application.MessageBox('Entrega já paga! Impossível excluir', PChar(FEntregas.NN), MB_OK + MB_ICONWARNING);
    Exit;
  end;
  Result := True;
end;

end.
