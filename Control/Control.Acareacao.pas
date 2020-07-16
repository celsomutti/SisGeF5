unit Control.Acareacao;

interface

uses Model.Acareacoes, System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum;

type
  TAcareacaoControl = class

  private

    FAcareacoes: TAcareacoes;

  public

    constructor Create;
    destructor Destroy; override;

    function Gravar: Boolean;
    function Finalizar: Boolean;
    function Localizar(aParam: array of variant): TFDQuery;
    function GetId(): Integer;
    function ValidaCampos(): Boolean;
    function ValidaFinalizar(): Boolean;
    function ValidaExclusao(): Boolean;


    property Acareacoes: TAcareacoes read FAcareacoes write FAcareacoes;

  end;

implementation

{ TAcareacaoControl }

constructor TAcareacaoControl.Create;
begin
  FAcareacoes := TAcareacoes.Create;
end;

destructor TAcareacaoControl.Destroy;
begin
  FAcareacoes.Free;
  inherited;
end;

function TAcareacaoControl.Finalizar: Boolean;
begin
  Result := False;
  if not ValidaFinalizar then Exit;
  Result := FAcareacoes.Gravar;
end;

function TAcareacaoControl.GetId: Integer;
begin
  Result := FAcareacoes.GetID;
end;

function TAcareacaoControl.Gravar: Boolean;
begin
  Result := False;
  if FAcareacoes.Acao = Common.ENum.tacExcluir then
  begin
    if not ValidaExclusao() then Exit;
  end
  else
  begin
    if not ValidaCampos then Exit;
  end;
  Result := FAcareacoes.Gravar;
end;

function TAcareacaoControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FAcareacoes.Localizar(aParam);
end;

function TAcareacaoControl.ValidaCampos: Boolean;
begin
  Result := False;
  if FAcareacoes.Id.IsEmpty then
  begin
    Application.MessageBox('Informe o #ID da acareação.', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if FAcareacoes.Nossonumero.IsEmpty then
  begin
    Application.MessageBox('Informe o Nosso Número.', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if FAcareacoes.Acao = Common.ENum.tacIncluir  then
  begin
    if FAcareacoes.AcareacaoExiste() then
    begin
      Application.MessageBox('Existe uma acareação cadastrada com este #ID e Nosso Número!', 'Atenção', MB_OK + MB_ICONWARNING);
      Exit;
    end;
  end;
  if (DateTimeToStr(FAcareacoes.Data).IsEmpty) or (FAcareacoes.Data = 0) then
  begin
    Application.MessageBox('Informe a data da acareação.', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if (DateTimeToStr(FAcareacoes.DataRetorno).IsEmpty) or (FAcareacoes.DataRetorno = 0) then
  begin
    Application.MessageBox('Informe a data do retorno da acareação.', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if (DateTimeToStr(FAcareacoes.DataEntrega).IsEmpty) or (FAcareacoes.DataEntrega = 0) then
  begin
    Application.MessageBox('Informe a data da entrega.', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if FAcareacoes.Entregador = 0 then
  begin
    Application.MessageBox('Informe o Entregador.', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if FAcareacoes.Base = 0 then
  begin
    Application.MessageBox('Informe a Base.', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if FAcareacoes.Motivo.IsEmpty then
  begin
    Application.MessageBox('Informe o motivo da acareação.', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if FAcareacoes.Tratativa.IsEmpty then
  begin
    Application.MessageBox('Informe a tratativa da acareação.', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if FAcareacoes.Envio.IsEmpty then
  begin
    Application.MessageBox('Informe se a correspondência foi enviada.', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  Result := True;
end;


function TAcareacaoControl.ValidaExclusao: Boolean;
begin
  Result := False;
  if FAcareacoes.Finalizar then
  begin
    Application.MessageBox('Acareação já finalizada. Não pode ser excluída.', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  Result := True;
end;

function TAcareacaoControl.ValidaFinalizar: Boolean;
begin
  Result := False;
  if FAcareacoes.Apuracao.IsEmpty then
  begin
    Application.MessageBox('Informe a apuração da acareação.', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if FAcareacoes.Resultado.IsEmpty then
  begin
    Application.MessageBox('Informe o resultado da acareação.', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if FAcareacoes.Entregador = 0 then
  begin
    Application.MessageBox('Informe o Entregador.', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if FAcareacoes.Base = 0 then
  begin
    Application.MessageBox('Informe a Base.', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if FAcareacoes.Extravio = 0 then
  begin
    if (Copy(FAcareacoes.Resultado, 0, 2) = '02') or (Copy(FAcareacoes.Resultado, 0, 2) = '03') then
      begin
        Application.MessageBox('Informe o valor do extravio.', 'Atenção', MB_OK + MB_ICONWARNING);
        Exit;
      end;
  end
  else
  begin
    if Copy(FAcareacoes.Resultado, 0, 2) = '04' then
      begin
        FAcareacoes.Extravio := 0;
      end;
  end;
  if FAcareacoes.Multa = 0 then
  begin
    if (Copy(FAcareacoes.Resultado, 0, 2) = '03') or (Copy(FAcareacoes.Resultado, 0, 2) = '04') then
      begin
        Application.MessageBox('Informe o valor da multa.', 'Atenção', MB_OK + MB_ICONWARNING);
        Exit;
      end;
  end
  else
  begin
    if Copy(FAcareacoes.Resultado, 0, 2) = '02' then
      begin
        Application.MessageBox('Valor de multa não deve ser informado para deste resultado.', 'Atenção', MB_OK + MB_ICONWARNING);
        Exit;
      end;
  end;
  if FAcareacoes.Envio.IsEmpty then
  begin
    Application.MessageBox('Informe a situação do envio da correspondência.', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if FAcareacoes.Retorno.IsEmpty then
  begin
    Application.MessageBox('Informe o tipo de retorno da correspondência.', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  Result := True;
end;

end.
